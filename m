Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D517814A0C3
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 10:30:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8F866EAA0;
	Mon, 27 Jan 2020 09:30:09 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DEEB6EA9C;
 Mon, 27 Jan 2020 09:30:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 01:19:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,369,1574150400"; d="scan'208";a="222428685"
Received: from lodierna-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.22.225])
 by fmsmga007.fm.intel.com with ESMTP; 27 Jan 2020 01:19:13 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 27 Jan 2020 09:19:10 +0000
Message-Id: <20200127091910.14446-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200127091910.14446-1-tvrtko.ursulin@linux.intel.com>
References: <20200127091910.14446-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI i-g-t 2/2] tests/i915/gem_exec_parallel:Set engine
 map to default context
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sreedhar Telukuntla <sreedhar.telukuntla@intel.com>

Set the potential engine map of the parent client's default
context to the newly created DRM client's default context.
Without doing so there is a mismatch between the intended
and actual engine used by the *-fds subtests.

v2: Fix FDS flags check

Tvrtko:
v3: Use new helper gem_context_copy_engines.

Signed-off-by: Sreedhar Telukuntla <sreedhar.telukuntla@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 tests/i915/gem_exec_parallel.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/tests/i915/gem_exec_parallel.c b/tests/i915/gem_exec_parallel.c
index cfbe78070873..0d4d6c6283e0 100644
--- a/tests/i915/gem_exec_parallel.c
+++ b/tests/i915/gem_exec_parallel.c
@@ -83,10 +83,12 @@ static void *thread(void *data)
 		pthread_cond_wait(t->cond, t->mutex);
 	pthread_mutex_unlock(t->mutex);
 
-	if (t->flags & FDS)
+	if (t->flags & FDS) {
 		fd = drm_open_driver(DRIVER_INTEL);
-	else
+		gem_context_copy_engines(t->fd, 0, fd, 0);
+	} else {
 		fd = t->fd;
+	}
 
 	i = 0;
 	batch[i] = MI_STORE_DWORD_IMM | (t->gen < 6 ? 1 << 22 : 0);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
