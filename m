Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F34FB3C2C79
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Jul 2021 03:24:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D80566EAC8;
	Sat, 10 Jul 2021 01:24:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2915C6EAC6;
 Sat, 10 Jul 2021 01:23:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10040"; a="207979491"
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; d="scan'208";a="207979491"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 18:23:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; d="scan'208";a="411439977"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga006.jf.intel.com with ESMTP; 09 Jul 2021 18:23:58 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri,  9 Jul 2021 18:20:23 -0700
Message-Id: <20210710012026.19705-14-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20210710012026.19705-1-vinay.belgaumkar@intel.com>
References: <20210710012026.19705-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/16] drm/i915/guc/slpc: Update slpc to use
 platform min/max
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SLPC requests efficient frequency by default instead of min.
It provides a flag to turn this off. Set that flag to maintain
original semantics so that tests do not fail. SLPC can also
request frequency that is much higher than the platform max,
update that as well for the same reason.

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 55 +++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 6e978f27b7a6..db575443ffb2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -109,6 +109,17 @@ static int slpc_send(struct intel_guc_slpc *slpc,
 	return intel_guc_send(guc, action, in_len);
 }
 
+static int host2guc_slpc_unset_param(struct intel_guc_slpc *slpc,
+				   u32 id)
+{
+	struct slpc_event_input data = {0};
+
+	data.header.value = SLPC_EVENT(SLPC_EVENT_PARAMETER_UNSET, 1);
+	data.args[0] = id;
+
+	return slpc_send(slpc, &data, 4);
+}
+
 static int host2guc_slpc_set_param(struct intel_guc_slpc *slpc,
 				   u32 id, u32 value)
 {
@@ -150,6 +161,20 @@ static int host2guc_slpc_query_task_state(struct intel_guc_slpc *slpc)
 	return slpc_send(slpc, &data, 4);
 }
 
+static int slpc_unset_param(struct intel_guc_slpc *slpc, u32 id)
+{
+	struct drm_i915_private *i915 = slpc_to_i915(slpc);
+
+	GEM_BUG_ON(id >= SLPC_MAX_PARAM);
+
+	if (host2guc_slpc_unset_param(slpc, id)) {
+		drm_err(&i915->drm, "Unable to unset param %x", id);
+		return -EIO;
+	}
+
+	return 0;
+}
+
 static int slpc_set_param(struct intel_guc_slpc *slpc, u32 id, u32 value)
 {
 	struct drm_i915_private *i915 = slpc_to_i915(slpc);
@@ -410,6 +435,32 @@ static int intel_guc_slpc_set_softlimits(struct intel_guc_slpc *slpc)
 	return ret;
 }
 
+static void intel_guc_slpc_ignore_eff_freq(struct intel_guc_slpc *slpc, bool ignore)
+{
+	if (ignore) {
+		/* A failure here does not affect the algorithm in a fatal way */
+		slpc_set_param(slpc,
+		   SLPC_IGNORE_EFFICIENT_FREQUENCY,
+		   ignore);
+		slpc_set_param(slpc,
+		   SLPC_PARAM_GLOBAL_MIN_GT_UNSLICE_FREQ_MHZ,
+		   slpc->min_freq);
+	} else {
+		slpc_unset_param(slpc,
+		   SLPC_IGNORE_EFFICIENT_FREQUENCY);
+		slpc_unset_param(slpc,
+		   SLPC_PARAM_GLOBAL_MIN_GT_UNSLICE_FREQ_MHZ);
+	}
+}
+
+static void intel_guc_slpc_use_fused_rp0(struct intel_guc_slpc *slpc)
+{
+	/* Force slpc to used platform rp0 */
+	slpc_set_param(slpc,
+	   SLPC_PARAM_GLOBAL_MAX_GT_UNSLICE_FREQ_MHZ,
+	   slpc->rp0_freq);
+}
+
 /*
  * intel_guc_slpc_enable() - Start SLPC
  * @slpc: pointer to intel_guc_slpc.
@@ -478,6 +529,10 @@ int intel_guc_slpc_enable(struct intel_guc_slpc *slpc)
 	slpc->min_freq = ((rp_state_cap >> 16) & 0xff) * GT_FREQUENCY_MULTIPLIER;
 	slpc->rp1_freq = ((rp_state_cap >> 8) & 0xff) * GT_FREQUENCY_MULTIPLIER;
 
+	/* Ignore efficient freq and set min/max to platform min/max */
+	intel_guc_slpc_ignore_eff_freq(slpc, true);
+	intel_guc_slpc_use_fused_rp0(slpc);
+
 	if (intel_guc_slpc_set_softlimits(slpc))
 		drm_err(&i915->drm, "Unable to set softlimits");
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
