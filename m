Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7005A55BAFA
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jun 2022 18:10:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CCC710E7D7;
	Mon, 27 Jun 2022 16:10:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D375610E409;
 Mon, 27 Jun 2022 16:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656346226; x=1687882226;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2decjhUxTbSW1ED2NF2N8rPd/qINZGNnowKYzmSCIjQ=;
 b=NJzh5A8jKyuOn7jB3x9JBi1SG+0OQywYgCWMD9Livqn7NM/H1PHQFmws
 xZDZxbiL4wrLJYxZwaqpI4Nh6ZOLV4+mWYmio7BL3mfZ6VIi7S5Y5niDz
 +yyLisvcVbYA0QAfYl3MHVfsjVC/ubq+wJX37WLdP1UIzMO65d+992PY3
 lv46n4fgOf73z9nBHNBI/oR0Xx8RsdOA7Skj1hIua7Y8AWrs3Fd2Lel7x
 WMBCWscDzYT3MXcBH+UJ4xlBb2bRvz0D/Z330zncGm7O84HbMTEtPRYsq
 j3NO3BlfR/bm22hhCk+CCq/7Mvhvm7pL3hb45KqKofWr3SLEejoZ5LzqO A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="367797723"
X-IronPort-AV: E=Sophos;i="5.92,226,1650956400"; d="scan'208";a="367797723"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2022 09:10:26 -0700
X-IronPort-AV: E=Sophos;i="5.92,226,1650956400"; d="scan'208";a="692677381"
Received: from lnsoh-mobl2.gar.corp.intel.com (HELO mwauld-desk1.intel.com)
 ([10.213.148.178])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2022 09:10:24 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 27 Jun 2022 17:10:04 +0100
Message-Id: <20220627161004.70153-3-matthew.auld@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220627161004.70153-1-matthew.auld@intel.com>
References: <20220627161004.70153-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t 3/3] tests/i915: adapt __copy_ccs for
 discrete
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We can't explicitly control the mmap caching type for discrete, but
using mmap_device_coherent should be good enough here on such devices.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4842
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
---
 lib/intel_bufops.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/lib/intel_bufops.c b/lib/intel_bufops.c
index 05c0b0d4..c63a5760 100644
--- a/lib/intel_bufops.c
+++ b/lib/intel_bufops.c
@@ -451,11 +451,16 @@ static void __copy_ccs(struct buf_ops *bops, struct intel_buf *buf,
 	ccs_size = CCS_SIZE(gen, buf);
 	size = offset + ccs_size;
 
-	map = __gem_mmap_offset__wc(bops->fd, buf->handle, 0, size,
-				    PROT_READ | PROT_WRITE);
-	if (!map)
-		map = gem_mmap__wc(bops->fd, buf->handle, 0, size,
-				   PROT_READ | PROT_WRITE);
+	if (gem_has_lmem(bops->fd)) {
+		map = gem_mmap__device_coherent(bops->fd, buf->handle, 0, size,
+						PROT_READ | PROT_WRITE);
+	} else {
+		map = __gem_mmap_offset__wc(bops->fd, buf->handle, 0, size,
+					    PROT_READ | PROT_WRITE);
+		if (!map)
+			map = gem_mmap__wc(bops->fd, buf->handle, 0, size,
+					   PROT_READ | PROT_WRITE);
+	}
 
 	switch (dir) {
 	case CCS_LINEAR_TO_BUF:
-- 
2.36.1

