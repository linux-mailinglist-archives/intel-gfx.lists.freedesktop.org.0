Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A9E728B89
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Jun 2023 01:07:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62AA210E61C;
	Thu,  8 Jun 2023 23:07:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DC0D10E61A;
 Thu,  8 Jun 2023 23:07:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686265639; x=1717801639;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/4BfqoosU5KCSMdFMjRRMwCf221KOJ1Xt6Mtdl/c/Eo=;
 b=Hn4SfHDb9XqVpY/K2aGqG7c3DuIZQtMzQoKXK1H2FWBs5g4BMw9/kpKw
 KJk83z3Qm41PKQBX5EAQ+n4NVcCusCPMzW7FWXtgvXCFQ0w1O4pMvzHvl
 hHECHptqYxOPz1a+IpHGktQ6VtHMCwgiQzJCwtiY9ZpfQkmGC6WrE4c+P
 oHul4ZUBp8bgG1kE2KPSBvL3iPrY8EnueLWFe+aNpywlJMBCFOgZwnAkM
 qQwuI2ElBCcPEEPxtKJUq3kFZKG8odt0ze47uhI2tygmR2nuDdZLod/Tn
 K5DBSvi62N7Qp3E3+niLlNedVf0M90DCF4L4cY6nmg+1XRlyE+r59Skni Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="356342329"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="356342329"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 16:07:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="884371586"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="884371586"
Received: from aalteres-desk.fm.intel.com ([10.80.57.53])
 by orsmga005.jf.intel.com with ESMTP; 08 Jun 2023 16:07:17 -0700
From: Alan Previn <alan.previn.teres.alexis@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 16:07:16 -0700
Message-Id: <20230608230716.3079594-1-alan.previn.teres.alexis@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/gsc: take a wakeref for the
 proxy-init-completion check
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
Cc: dri-devel@lists.freedesktop.org,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ensure intel_gsc_uc_fw_init_done and intel_gsc_uc_fw_proxy_init
takes a wakeref before reading GSC Shim registers.

NOTE: another patch in review also adds a call from selftest to
this same function. (https://patchwork.freedesktop.org/series/117713/)
which is why i am adding the wakeref inside the callee, not the
caller.

v2: - add a helper, 'gsc_uc_get_fw_status' for both callers
      (Daniele Ceraolo)

Fixes: 99afb7cc8c44 ("drm/i915/pxp: Add ARB session creation and cleanup")
Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c | 22 ++++++++++++++--------
 1 file changed, 14 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
index f46eb17a7a98..60e9c6c9e775 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_fw.c
@@ -24,21 +24,27 @@ static bool gsc_is_in_reset(struct intel_uncore *uncore)
 	       GSC_FW_CURRENT_STATE_RESET;
 }
 
-bool intel_gsc_uc_fw_proxy_init_done(struct intel_gsc_uc *gsc)
+static u32 gsc_uc_get_fw_status(struct intel_uncore *uncore)
 {
-	struct intel_uncore *uncore = gsc_uc_to_gt(gsc)->uncore;
-	u32 fw_status = intel_uncore_read(uncore, GSC_FW_STATUS_REG);
+	intel_wakeref_t wakeref;
+	u32 fw_status = 0;
 
-	return REG_FIELD_GET(GSC_FW_CURRENT_STATE, fw_status) ==
+	with_intel_runtime_pm(uncore->rpm, wakeref)
+		fw_status = intel_uncore_read(uncore, GSC_FW_STATUS_REG);
+
+	return fw_status;
+}
+
+bool intel_gsc_uc_fw_proxy_init_done(struct intel_gsc_uc *gsc)
+{
+	return REG_FIELD_GET(GSC_FW_CURRENT_STATE,
+			     gsc_uc_get_fw_status(gsc_uc_to_gt(gsc)->uncore)) ==
 	       GSC_FW_PROXY_STATE_NORMAL;
 }
 
 bool intel_gsc_uc_fw_init_done(struct intel_gsc_uc *gsc)
 {
-	struct intel_uncore *uncore = gsc_uc_to_gt(gsc)->uncore;
-	u32 fw_status = intel_uncore_read(uncore, GSC_FW_STATUS_REG);
-
-	return fw_status & GSC_FW_INIT_COMPLETE_BIT;
+	return gsc_uc_get_fw_status(gsc_uc_to_gt(gsc)->uncore) & GSC_FW_INIT_COMPLETE_BIT;
 }
 
 static int emit_gsc_fw_load(struct i915_request *rq, struct intel_gsc_uc *gsc)

base-commit: 27187d09511e1d47dbaaf91c7332319551a8edab
-- 
2.39.0

