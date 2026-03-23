Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GAJeBfgSwWnVQQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 11:16:24 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E7D2EFD83
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Mar 2026 11:16:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43A4910E4C0;
	Mon, 23 Mar 2026 10:16:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FU0WVpdT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC17D10E4C0
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Mar 2026 10:16:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774260981; x=1805796981;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Ez3ssdLpPf0DF6R65GqjtuFVTmPws0XHMFKi+OoVFNk=;
 b=FU0WVpdTgh13jfWBaL1wAHBS9xUcXwVM+48XknYBEjmevRusoAJdphCt
 yDnz3Wgpv9338J968FQtFTL12dekx6H68+LM4kWew5W+KfYPKOw8B5qq1
 zwvlUs9OO8INgIQ3FmToP8Eie733hRGIkGs6lPCiKy6+GudAPzC9soLo1
 cBxgxQT1E5dJIRSnefaoARAa4LgjmkKOAqp9jlox9GVMUX4wg2JmDWPQF
 5qaHDw003ok8/vf4fUVtn9aM0fWFvOi7he3UfE6kwfkZZfZx2pKF6GJHP
 ytH7tJrqzApMr2Y044EIBjHfzzaB3H3ezfQCxPuBcYUw9gQlUPZvgXJX4 w==;
X-CSE-ConnectionGUID: GYcq8+77RDOSjnrLKoo0Qw==
X-CSE-MsgGUID: zPtn1XbqQ6mCy5wIJe7TPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11737"; a="77865058"
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="77865058"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 03:16:20 -0700
X-CSE-ConnectionGUID: 2JjStonlS7yq05sKMKNysQ==
X-CSE-MsgGUID: gpyO6aowQrWXDoP/0jDeVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,137,1770624000"; d="scan'208";a="219630576"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.55])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 03:16:20 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/2] drm/i915/uncore: Do GT FIFO checks in early sanitize and
 forcewake get
Date: Mon, 23 Mar 2026 12:16:09 +0200
Message-ID: <20260323101609.8391-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260323101609.8391-1-ville.syrjala@linux.intel.com>
References: <20260323101609.8391-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: B7E7D2EFD83
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We're mixing up the GT FIFO debug checks (overflows and such)
with RMbus unclaimed register checks. The two are quite different
things as RMbus is only relevant for display registers, and the
GT FIFO only relevant for GT registers.

Split the GT FIFO debugs out from the unclaimed register logic
and just do the checks during forcewake_get() and early init.
That is still sufficient to detect if any errors have happened.

Any errors would anyway be caused by overflowing the FIFO
rather than accessing specific registers, so trying to figure
out exactly when the error happened isn't particularly useful.
To fix such issues we'd rather have to do something to slow down
the rate at which registers are accessed (eg. increase
GT_FIFO_NUM_RESERVED_ENTRIES or something).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.c | 72 ++++++++++++++++++++---------
 1 file changed, 50 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index 5b698d4d7a7f..170e83a8c9fc 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -399,6 +399,35 @@ static void fw_domains_get_with_thread_status(struct intel_uncore *uncore,
 	__gen6_gt_wait_for_thread_c0(uncore);
 }
 
+static void
+gen6_check_for_fifo_debug(struct intel_uncore *uncore)
+{
+	u32 fifodbg;
+
+	fifodbg = __raw_uncore_read32(uncore, GTFIFODBG);
+
+	if (unlikely(fifodbg)) {
+		drm_dbg(&uncore->i915->drm, "GTFIFODBG = 0x08%x\n", fifodbg);
+		__raw_uncore_write32(uncore, GTFIFODBG, fifodbg);
+	}
+}
+
+static void
+fw_domains_get_normal_fifo(struct intel_uncore *uncore,
+			   enum forcewake_domains fw_domains)
+{
+	gen6_check_for_fifo_debug(uncore);
+	fw_domains_get_normal(uncore, fw_domains);
+}
+
+static void
+fw_domains_get_with_thread_status_fifo(struct intel_uncore *uncore,
+				       enum forcewake_domains fw_domains)
+{
+	gen6_check_for_fifo_debug(uncore);
+	fw_domains_get_with_thread_status(uncore, fw_domains);
+}
+
 static inline u32 fifo_free_entries(struct intel_uncore *uncore)
 {
 	u32 count = __raw_uncore_read32(uncore, GTFIFOCTL);
@@ -561,21 +590,6 @@ vlv_check_for_unclaimed_mmio(struct intel_uncore *uncore)
 	return true;
 }
 
-static bool
-gen6_check_for_fifo_debug(struct intel_uncore *uncore)
-{
-	u32 fifodbg;
-
-	fifodbg = __raw_uncore_read32(uncore, GTFIFODBG);
-
-	if (unlikely(fifodbg)) {
-		drm_dbg(&uncore->i915->drm, "GTFIFODBG = 0x08%x\n", fifodbg);
-		__raw_uncore_write32(uncore, GTFIFODBG, fifodbg);
-	}
-
-	return fifodbg;
-}
-
 static bool
 check_for_unclaimed_mmio(struct intel_uncore *uncore)
 {
@@ -592,9 +606,6 @@ check_for_unclaimed_mmio(struct intel_uncore *uncore)
 	if (intel_uncore_has_dbg_unclaimed(uncore))
 		ret |= vlv_check_for_unclaimed_mmio(uncore);
 
-	if (intel_uncore_has_fifo(uncore))
-		ret |= gen6_check_for_fifo_debug(uncore);
-
 	return ret;
 }
 
@@ -611,6 +622,9 @@ static void forcewake_early_sanitize(struct intel_uncore *uncore,
 				     GT_FIFO_CTL_RC6_POLICY_STALL);
 	}
 
+	if (intel_uncore_has_fifo(uncore))
+		gen6_check_for_fifo_debug(uncore);
+
 	iosf_mbi_punit_acquire();
 	intel_uncore_forcewake_reset(uncore);
 	if (restore_forcewake) {
@@ -2155,6 +2169,14 @@ static const struct intel_uncore_fw_get uncore_get_thread_status = {
 	.force_wake_get = fw_domains_get_with_thread_status
 };
 
+static const struct intel_uncore_fw_get uncore_get_normal_fifo = {
+	.force_wake_get = fw_domains_get_normal_fifo,
+};
+
+static const struct intel_uncore_fw_get uncore_get_thread_status_fifo = {
+	.force_wake_get = fw_domains_get_with_thread_status_fifo
+};
+
 static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
 {
 	struct drm_i915_private *i915 = uncore->i915;
@@ -2218,13 +2240,19 @@ static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
 		fw_domain_init(uncore, FW_DOMAIN_ID_MEDIA,
 			       FORCEWAKE_MEDIA_GEN9, FORCEWAKE_ACK_MEDIA_GEN9);
 	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
-		uncore->fw_get_funcs = &uncore_get_normal;
+		if (intel_uncore_has_fifo(uncore))
+			uncore->fw_get_funcs = &uncore_get_normal_fifo;
+		else
+			uncore->fw_get_funcs = &uncore_get_normal;
 		fw_domain_init(uncore, FW_DOMAIN_ID_RENDER,
 			       FORCEWAKE_VLV, FORCEWAKE_ACK_VLV);
 		fw_domain_init(uncore, FW_DOMAIN_ID_MEDIA,
 			       FORCEWAKE_MEDIA_VLV, FORCEWAKE_ACK_MEDIA_VLV);
 	} else if (IS_HASWELL(i915) || IS_BROADWELL(i915)) {
-		uncore->fw_get_funcs = &uncore_get_thread_status;
+		if (intel_uncore_has_fifo(uncore))
+			uncore->fw_get_funcs = &uncore_get_thread_status_fifo;
+		else
+			uncore->fw_get_funcs = &uncore_get_thread_status;
 		fw_domain_init(uncore, FW_DOMAIN_ID_RENDER,
 			       FORCEWAKE_MT, FORCEWAKE_ACK_HSW);
 	} else if (IS_IVYBRIDGE(i915)) {
@@ -2239,7 +2267,7 @@ static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
 		 * (correctly) interpreted by the test below as MT
 		 * forcewake being disabled.
 		 */
-		uncore->fw_get_funcs = &uncore_get_thread_status;
+		uncore->fw_get_funcs = &uncore_get_thread_status_fifo;
 
 		/* We need to init first for ECOBUS access and then
 		 * determine later if we want to reinit, in case of MT access is
@@ -2270,7 +2298,7 @@ static int intel_uncore_fw_domains_init(struct intel_uncore *uncore)
 				       FORCEWAKE, FORCEWAKE_ACK);
 		}
 	} else if (GRAPHICS_VER(i915) == 6) {
-		uncore->fw_get_funcs = &uncore_get_thread_status;
+		uncore->fw_get_funcs = &uncore_get_thread_status_fifo;
 		fw_domain_init(uncore, FW_DOMAIN_ID_RENDER,
 			       FORCEWAKE, FORCEWAKE_ACK);
 	}
-- 
2.52.0

