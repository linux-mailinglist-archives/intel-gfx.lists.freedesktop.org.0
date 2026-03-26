Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iHG6D69pxWl1+AQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 18:15:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E59BC338FDA
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 18:15:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 266F210E9BC;
	Thu, 26 Mar 2026 17:15:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fBOY4eQd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F7E010E956;
 Thu, 26 Mar 2026 17:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774545324; x=1806081324;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TM2QJ5TCHrQIR/ysyBi9pAWEmQdL0KR9ybyHSbCC2+U=;
 b=fBOY4eQdxHEpUFQebKDb5Gp4F5TpClik5xEoDblcC9VtC7oLACFS7fic
 RfaIWWc5TsmnLjQdYBu5gGuQbtMga57MAwzIW3Nx3LUDOexuBijGb1uAX
 qZAdXrZYM03Vf3DzibAoGQWvhyTq3jlKIH8Ul45zfXTSGeVjMPHZpThDn
 QD/EA7CL6BG43gubyyyN+6JphyJxXWyNvpe756skEcMyILeYMnrsDPsrw
 FQGSBK0JXhEKGahwXsqmQWHIjfqAr23nmXTwnRvFR9Z/rVm1R49e1TCir
 w5Mxq3MeGLPflU3GhiRqLzy7th3WUmlTQ12ie+irz55m/XUthp+dWQywg A==;
X-CSE-ConnectionGUID: DJsRNxUUROeR2zvkSW6IUg==
X-CSE-MsgGUID: fWW0B5zPTfCYU3iZVmSDCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="75630562"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="75630562"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 10:15:21 -0700
X-CSE-ConnectionGUID: CLzuBj1lT6+BZHUu6vFXAA==
X-CSE-MsgGUID: xQhUJQszSR2IrrjPFlPOqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="262975536"
Received: from dibin-nuc7i7bnh.iind.intel.com ([10.190.239.19])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 10:15:19 -0700
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: animesh.manna@intel.com, uma.shankar@intel.com,
 suresh.kumar.kurmi@intel.com
Subject: [PATCH 04/19] drm/i915/display: Add DC3CO DC_STATE enable/disable
 support
Date: Thu, 26 Mar 2026 22:45:42 +0530
Message-ID: <20260326171557.2065632-5-dibin.moolakadan.subrahmanian@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
References: <20260326171557.2065632-1-dibin.moolakadan.subrahmanian@intel.com>
MIME-Version: 1.0
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: E59BC338FDA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add DC3CO handling to the dc_off power well sequencing and disable the
DMC wakelock when exiting DC3CO.

BSpec:75253
Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
---
 .../drm/i915/display/intel_display_power_well.c  | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index 9a948f5e2164..cb3dcd1460b2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -867,6 +867,13 @@ void gen9_set_dc_state(struct intel_display *display, u32 state)
 	power_domains->dc_state = val & mask;
 }
 
+static void xe3lpd_enable_dc3co(struct intel_display *display)
+{
+	drm_dbg_kms(display->drm, "Enabling DC3CO\n");
+	intel_dmc_wl_enable(display, DC_STATE_EN_UPTO_DC3CO);
+	gen9_set_dc_state(display, DC_STATE_EN_UPTO_DC3CO);
+}
+
 static void assert_can_enable_dc5(struct intel_display *display)
 {
 	enum i915_power_well_id high_pg;
@@ -1055,9 +1062,13 @@ void gen9_disable_dc_states(struct intel_display *display)
 	}
 
 	if (old_state == DC_STATE_EN_UPTO_DC5 ||
-	    old_state == DC_STATE_EN_UPTO_DC6)
+	    old_state == DC_STATE_EN_UPTO_DC6 ||
+	    old_state == DC_STATE_EN_UPTO_DC3CO)
 		intel_dmc_wl_disable(display);
 
+	if (old_state == DC_STATE_EN_UPTO_DC3CO)
+		return;
+
 	intel_cdclk_get_cdclk(display, &cdclk_config);
 	/* Can't read out voltage_level so can't use intel_cdclk_changed() */
 	drm_WARN_ON(display->drm,
@@ -1093,6 +1104,9 @@ static void gen9_dc_off_power_well_disable(struct intel_display *display,
 		return;
 
 	switch (power_domains->target_dc_state) {
+	case DC_STATE_EN_UPTO_DC3CO:
+		xe3lpd_enable_dc3co(display);
+		break;
 	case DC_STATE_EN_UPTO_DC6:
 		skl_enable_dc6(display);
 		break;
-- 
2.43.0

