Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D227EC48522
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 18:28:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CB1510E44A;
	Mon, 10 Nov 2025 17:28:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jX7ajej0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E281510E463;
 Mon, 10 Nov 2025 17:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762795689; x=1794331689;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QdMDImR2Fen1TBqZi0+Z1Vk0p535FXlq3aFoq1HcRjA=;
 b=jX7ajej0HDZvJdMpaHAKqGFVTv9br8WEdDHGFdTSkkto8WLrQNuQpe0L
 aLwaWgOPFJDMZu3tMpAaSLS/Z6rmpCJH9Rz5HL6gqwTlD/ivlzZCSOFCS
 hJXNycNxk3x4FZOaX75Irp380VDQldqOjL2FYo+9zcl+THQVK29ezkYoe
 8Svdanb/TIHDdM5PCH4i21WNH+ccx4LAH6qMTphbESsBkx6oAg/HGFuoY
 fymQaigqw+bKJZEgIGNOtonSeRKgOGDnmB7cDSsxOhMWhNqxXxoewdR4Y
 T7mm+EZZCrN5y9OO/IgFBj3WwdtmWwwi3BZwSgT66HtKTRguJvSXHOk66 Q==;
X-CSE-ConnectionGUID: nZr4K6zaTrK2wfPFCM8MPQ==
X-CSE-MsgGUID: QYYVCwemTwecsdjy1xMFWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="82477903"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="82477903"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:28:08 -0800
X-CSE-ConnectionGUID: KDLMeu1mTn2M+bUB85oLfQ==
X-CSE-MsgGUID: yM1OMdOBToyUbzEl+WHiRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="188477023"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.30])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:28:07 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 02/16] drm/i915/de: Have intel_de_wait() hand out the final
 register value
Date: Mon, 10 Nov 2025 19:27:41 +0200
Message-ID: <20251110172756.2132-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
References: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We currently have a bunch of places that want the final register
value after register polling. Currently those places are mostly
using intel_de_wait_custom(). That is not a function that we
want to keep around as it pretty much prevents conversion to
poll_timeout_us().

Have intel_de_wait() also return the final register value so
that some of the current users can be converted over to the
simpler interface.

Done with cocci:
@@
@@
int intel_de_wait(...
+ ,u32 *out_value
 )
{
...
__intel_wait_for_register(...,
- NULL
+ out_value
 )
...
}

@@
@@
 intel_de_wait(...
+ ,NULL
 )

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h                 | 8 ++++----
 drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c            | 4 ++--
 drivers/gpu/drm/i915/display/intel_dpio_phy.c           | 2 +-
 4 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index ea9973dbbffc..a4ad20030c09 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -116,14 +116,14 @@ __intel_de_wait_for_register_atomic_nowl(struct intel_display *display,
 
 static inline int
 intel_de_wait(struct intel_display *display, i915_reg_t reg,
-	      u32 mask, u32 value, unsigned int timeout_ms)
+	      u32 mask, u32 value, unsigned int timeout_ms, u32 *out_value)
 {
 	int ret;
 
 	intel_dmc_wl_get(display, reg);
 
 	ret = __intel_wait_for_register(__to_uncore(display), reg, mask,
-					value, 2, timeout_ms, NULL);
+					value, 2, timeout_ms, out_value);
 
 	intel_dmc_wl_put(display, reg);
 
@@ -169,14 +169,14 @@ static inline int
 intel_de_wait_for_set(struct intel_display *display, i915_reg_t reg,
 		      u32 mask, unsigned int timeout_ms)
 {
-	return intel_de_wait(display, reg, mask, mask, timeout_ms);
+	return intel_de_wait(display, reg, mask, mask, timeout_ms, NULL);
 }
 
 static inline int
 intel_de_wait_for_clear(struct intel_display *display, i915_reg_t reg,
 			u32 mask, unsigned int timeout_ms)
 {
-	return intel_de_wait(display, reg, mask, 0, timeout_ms);
+	return intel_de_wait(display, reg, mask, 0, timeout_ms, NULL);
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
index eab7019f2252..afa5d8964f0d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
@@ -1446,7 +1446,7 @@ static void assert_chv_phy_status(struct intel_display *display)
 	 * so the power state can take a while to actually change.
 	 */
 	if (intel_de_wait(display, DISPLAY_PHY_STATUS,
-			  phy_status_mask, phy_status, 10))
+			  phy_status_mask, phy_status, 10, NULL))
 		drm_err(display->drm,
 			"Unexpected PHY_STATUS 0x%08x, expected 0x%08x (PHY_CONTROL=0x%08x)\n",
 			intel_de_read(display, DISPLAY_PHY_STATUS) & phy_status_mask,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index bd757db85927..27bb2199659f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -784,7 +784,7 @@ intel_dp_mst_hdcp_stream_encryption(struct intel_connector *connector,
 	/* Wait for encryption confirmation */
 	if (intel_de_wait(display, HDCP_STATUS(display, cpu_transcoder, port),
 			  stream_enc_status, enable ? stream_enc_status : 0,
-			  HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
+			  HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS, NULL)) {
 		drm_err(display->drm, "Timed out waiting for transcoder: %s stream encryption %s\n",
 			transcoder_name(cpu_transcoder), str_enabled_disabled(enable));
 		return -ETIMEDOUT;
@@ -824,7 +824,7 @@ intel_dp_mst_hdcp2_stream_encryption(struct intel_connector *connector,
 	if (intel_de_wait(display, HDCP2_STREAM_STATUS(display, cpu_transcoder, pipe),
 			  STREAM_ENCRYPTION_STATUS,
 			  enable ? STREAM_ENCRYPTION_STATUS : 0,
-			  HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS)) {
+			  HDCP_ENCRYPT_STATUS_CHANGE_TIMEOUT_MS, NULL)) {
 		drm_err(display->drm, "Timed out waiting for transcoder: %s stream encryption %s\n",
 			transcoder_name(cpu_transcoder), str_enabled_disabled(enable));
 		return -ETIMEDOUT;
diff --git a/drivers/gpu/drm/i915/display/intel_dpio_phy.c b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
index 5df6347a420d..378f0836b5a5 100644
--- a/drivers/gpu/drm/i915/display/intel_dpio_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dpio_phy.c
@@ -1193,7 +1193,7 @@ void vlv_wait_port_ready(struct intel_encoder *encoder,
 		break;
 	}
 
-	if (intel_de_wait(display, dpll_reg, port_mask, expected_mask, 1000))
+	if (intel_de_wait(display, dpll_reg, port_mask, expected_mask, 1000, NULL))
 		drm_WARN(display->drm, 1,
 			 "timed out waiting for [ENCODER:%d:%s] port ready: got 0x%x, expected 0x%x\n",
 			 encoder->base.base.id, encoder->base.name,
-- 
2.49.1

