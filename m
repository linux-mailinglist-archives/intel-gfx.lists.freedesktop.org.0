Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3B73D8BCC
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jul 2021 12:32:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7B6D6E852;
	Wed, 28 Jul 2021 10:32:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01ED16E852;
 Wed, 28 Jul 2021 10:32:00 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10058"; a="212627113"
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="212627113"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 03:32:00 -0700
X-IronPort-AV: E=Sophos;i="5.84,276,1620716400"; d="scan'208";a="499179458"
Received: from sdrogers-mobl.ger.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.245.248])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2021 03:31:57 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 28 Jul 2021 11:30:37 +0100
Message-Id: <20210728103041.1669985-7-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210728103041.1669985-1-matthew.auld@intel.com>
References: <20210728103041.1669985-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2 07/11] lib/intel_bufops: update
 mmap_{read, write} for discrete
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On discrete we can no longer call get_caching or set_domain, and the
mmap mode must be FIXED.

Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Ramalingam C <ramalingam.c@intel.com>
---
 lib/intel_bufops.c | 25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/lib/intel_bufops.c b/lib/intel_bufops.c
index 3ce68663..faca4406 100644
--- a/lib/intel_bufops.c
+++ b/lib/intel_bufops.c
@@ -424,7 +424,18 @@ static void *mmap_write(int fd, struct intel_buf *buf)
 {
 	void *map = NULL;
 
-	if (is_cache_coherent(fd, buf->handle)) {
+	if (gem_has_lmem(fd)) {
+		/*
+		 * set/get_caching and set_domain are no longer supported on
+		 * discrete, also the only mmap mode supportd is FIXED.
+		 */
+		map = gem_mmap_offset__fixed(fd, buf->handle, 0,
+					     buf->surface[0].size,
+					     PROT_READ | PROT_WRITE);
+		igt_assert_eq(gem_wait(fd, buf->handle, 0), 0);
+	}
+
+	if (!map && is_cache_coherent(fd, buf->handle)) {
 		map = __gem_mmap_offset__cpu(fd, buf->handle, 0, buf->surface[0].size,
 					     PROT_READ | PROT_WRITE);
 		if (!map)
@@ -455,7 +466,17 @@ static void *mmap_read(int fd, struct intel_buf *buf)
 {
 	void *map = NULL;
 
-	if (gem_has_llc(fd) || is_cache_coherent(fd, buf->handle)) {
+	if (gem_has_lmem(fd)) {
+		/*
+		 * set/get_caching and set_domain are no longer supported on
+		 * discrete, also the only supported mmap mode is FIXED.
+		 */
+		map = gem_mmap_offset__fixed(fd, buf->handle, 0,
+					     buf->surface[0].size, PROT_READ);
+		igt_assert_eq(gem_wait(fd, buf->handle, 0), 0);
+	}
+
+	if (!map && (gem_has_llc(fd) || is_cache_coherent(fd, buf->handle))) {
 		map = __gem_mmap_offset__cpu(fd, buf->handle, 0,
 					     buf->surface[0].size, PROT_READ);
 		if (!map)
-- 
2.26.3

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
