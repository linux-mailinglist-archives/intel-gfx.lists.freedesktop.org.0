Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 646956A1444
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 01:23:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91C8010E383;
	Fri, 24 Feb 2023 00:23:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41E8610E371
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 00:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677198204; x=1708734204;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=kAJvAfPdL1iGnoUIopHc0fChEf/F+DtbX6G4i7iA5zU=;
 b=aSqOG+2wLoHwNEL/CRfh4cGLlrN5wHv52oN/4p+SqMoxd55UZKmsM50P
 L5C8jGI5klz6aJwVwBGgyfelTGzohYqQ7+bYj+w532m467ni4CN1UQGF7
 O0UIe9HEfiDgzrLPLeAhPLmUrPr9tI2JV9K/fVQi58sn9SJ5l/7PI7fg9
 0a0JunvLmyunKl8mb7TR2FVOUZoLOFKeN2CA0fckf9u6D4scPQNzudl5u
 F8+gQ6bRMq76u+g++5c+ZkCGEamScHnVKapvAAO8jtCY15ssrus4mAyvm
 S7ogGGYTD8OTltLFf0NNXKR6fQWMkRw3eNOVzCxyrCkzT5dOHh3wML/OL Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="333366874"
X-IronPort-AV: E=Sophos;i="5.97,322,1669104000"; d="scan'208";a="333366874"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 16:23:10 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="815547945"
X-IronPort-AV: E=Sophos;i="5.97,322,1669104000"; d="scan'208";a="815547945"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 16:23:10 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Feb 2023 16:22:59 -0800
Message-Id: <20230224002300.3578985-1-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Whitelist COMMON_SLICE_CHICKEN3
 for UMD access
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A recommended tuning setting for both gen12 and Xe_HP platforms requires
that we grant userspace r/w access to the COMMON_SLICE_CHICKEN3
register.

Bspec: 73993, 73994, 31870, 68331
Cc: Dongwon Kim <dongwon.kim@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
The bspec update to add COMMON_SLICE_CHICKEN3 to the tuning guide pages
is still pending at the moment, but should be finalized shortly.

 drivers/gpu/drm/i915/gt/intel_workarounds.c | 25 ++++++++++++++++++++-
 1 file changed, 24 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 1ef9c9fa2eff..0444c715998a 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2194,6 +2194,10 @@ static void tgl_whitelist_build(struct intel_engine_cs *engine)
 
 		/* Wa_1806527549:tgl */
 		whitelist_reg(w, HIZ_CHICKEN);
+
+		/* Required by recommended tuning setting (not a workaround) */
+		whitelist_reg(w, GEN11_COMMON_SLICE_CHICKEN3);
+
 		break;
 	default:
 		break;
@@ -2227,6 +2231,9 @@ static void dg2_whitelist_build(struct intel_engine_cs *engine)
 					  RING_FORCE_TO_NONPRIV_ACCESS_RD |
 					  RING_FORCE_TO_NONPRIV_RANGE_4);
 
+		/* Required by recommended tuning setting (not a workaround) */
+		whitelist_mcr_reg(w, XEHP_COMMON_SLICE_CHICKEN3);
+
 		break;
 	case COMPUTE_CLASS:
 		/* Wa_16011157294:dg2_g10 */
@@ -2264,6 +2271,22 @@ static void pvc_whitelist_build(struct intel_engine_cs *engine)
 	blacklist_trtt(engine);
 }
 
+static void mtl_whitelist_build(struct intel_engine_cs *engine)
+{
+	struct i915_wa_list *w = &engine->whitelist;
+
+	switch (engine->class) {
+	case RENDER_CLASS:
+		/* Required by recommended tuning setting (not a workaround) */
+		whitelist_mcr_reg(w, XEHP_COMMON_SLICE_CHICKEN3);
+
+		break;
+	default:
+		break;
+	}
+
+}
+
 void intel_engine_init_whitelist(struct intel_engine_cs *engine)
 {
 	struct drm_i915_private *i915 = engine->i915;
@@ -2272,7 +2295,7 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
 	wa_init_start(w, engine->gt, "whitelist", engine->name);
 
 	if (IS_METEORLAKE(i915))
-		; /* noop; none at this time */
+		mtl_whitelist_build(engine);
 	else if (IS_PONTEVECCHIO(i915))
 		pvc_whitelist_build(engine);
 	else if (IS_DG2(i915))
-- 
2.39.1

