Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8C3520652
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 23:01:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE2BD10F20C;
	Mon,  9 May 2022 21:01:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A150810F1E6
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 May 2022 21:01:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652130106; x=1683666106;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=EmyH7zUpNBcLRtu1eBPomsIAxrsy9jJDCH/e9KxcUZ8=;
 b=MseqYcIxpOf2GV2s3azaUobLVOgCZ7KHqgdi9DX0xYJ2KFdDBlLFWDA+
 zDBqaB5118x75D/a8V8eIt0mXk6QPbcNThRcuAc0Ave4KIWmBpGfCs3rP
 l4t5ot4dl2UAsl3m8xqsjJY5/6qOiJOIjhxt7AtPaK7Ged3yCNTF0AFll
 UgH3l484mJssG1VYaqDKsawQx+qrzXCJyNbArah6k5di8ZJe129JQ6XXk
 nP33i473b+EiQyF2LpqVrQfUXWVmM0gJsi9x5mET81jTs+7obKajenakN
 HXMCniFxyNiMZSuRcyVUq3dRuikGay0r6z05zI0SIR1JrkasS35meKEeX w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="249703596"
X-IronPort-AV: E=Sophos;i="5.91,212,1647327600"; d="scan'208";a="249703596"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 14:01:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,212,1647327600"; d="scan'208";a="519410907"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga003.jf.intel.com with ESMTP; 09 May 2022 14:01:45 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 May 2022 14:01:48 -0700
Message-Id: <20220509210151.1843173-4-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220509210151.1843173-1-alan.previn.teres.alexis@intel.com>
References: <20220509210151.1843173-1-alan.previn.teres.alexis@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [Intel-gfx 3/6] drm/i915/guc: Add a helper for log
 buffer size
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a helper to get GuC log buffer size.

Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c | 49 ++++++++++++----------
 1 file changed, 27 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index d902b40ded0e..f454d53a8bca 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -15,6 +15,32 @@
 
 static void guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log);
 
+static u32 intel_guc_log_size(struct intel_guc_log *log)
+{
+	/*
+	 *  GuC Log buffer Layout:
+	 *
+	 *  NB: Ordering must follow "enum guc_log_buffer_type".
+	 *
+	 *  +===============================+ 00B
+	 *  |      Debug state header       |
+	 *  +-------------------------------+ 32B
+	 *  |    Crash dump state header    |
+	 *  +-------------------------------+ 64B
+	 *  |     Capture state header      |
+	 *  +-------------------------------+ 96B
+	 *  |                               |
+	 *  +===============================+ PAGE_SIZE (4KB)
+	 *  |          Debug logs           |
+	 *  +===============================+ + DEBUG_SIZE
+	 *  |        Crash Dump logs        |
+	 *  +===============================+ + CRASH_SIZE
+	 *  |         Capture logs          |
+	 *  +===============================+ + CAPTURE_SIZE
+	 */
+	return PAGE_SIZE + CRASH_BUFFER_SIZE + DEBUG_BUFFER_SIZE + CAPTURE_BUFFER_SIZE;
+}
+
 /**
  * DOC: GuC firmware log
  *
@@ -464,32 +490,11 @@ int intel_guc_log_create(struct intel_guc_log *log)
 
 	GEM_BUG_ON(log->vma);
 
-	/*
-	 *  GuC Log buffer Layout
-	 * (this ordering must follow "enum guc_log_buffer_type" definition)
-	 *
-	 *  +===============================+ 00B
-	 *  |      Debug state header       |
-	 *  +-------------------------------+ 32B
-	 *  |    Crash dump state header    |
-	 *  +-------------------------------+ 64B
-	 *  |     Capture state header      |
-	 *  +-------------------------------+ 96B
-	 *  |                               |
-	 *  +===============================+ PAGE_SIZE (4KB)
-	 *  |          Debug logs           |
-	 *  +===============================+ + DEBUG_SIZE
-	 *  |        Crash Dump logs        |
-	 *  +===============================+ + CRASH_SIZE
-	 *  |         Capture logs          |
-	 *  +===============================+ + CAPTURE_SIZE
-	 */
 	if (intel_guc_capture_output_min_size_est(guc) > CAPTURE_BUFFER_SIZE)
 		DRM_WARN("GuC log buffer for state_capture maybe too small. %d < %d\n",
 			 CAPTURE_BUFFER_SIZE, intel_guc_capture_output_min_size_est(guc));
 
-	guc_log_size = PAGE_SIZE + CRASH_BUFFER_SIZE + DEBUG_BUFFER_SIZE +
-		       CAPTURE_BUFFER_SIZE;
+	guc_log_size = intel_guc_log_size(log);
 
 	vma = intel_guc_allocate_vma(guc, guc_log_size);
 	if (IS_ERR(vma)) {
-- 
2.25.1

