Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SKiBJLXws2nYdgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 12:10:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43FDC281F74
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 12:10:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D161310EB83;
	Fri, 13 Mar 2026 11:10:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mtb+w8Dc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5A7110EB81;
 Fri, 13 Mar 2026 11:10:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773400242; x=1804936242;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1tBicJjLyCVta+Qq+V3+nD3klb+javXD2XzHBq87q1w=;
 b=Mtb+w8DcGxl3vWe09/BAVYultKESssadACFCQFLrxdCrSWZ0LMBDd9lh
 NNJQcH1HuoQW193hMrF2wjviIXuzjlAWD1AtQ3j0/WTLTCL6QjBdY9u+G
 3kEaWD35RS/4ukge6glbWPWWSQh5kf3RJ/VfjSppIRRGIeWlTWnmauvs4
 Z1DHaZyr6G+hbm5t0rWV81SuarNlKx6UknC9B4WUOc5PioZFAZym7ycHY
 sUWguMqk+Ude2qwPisZGFnMCiSzh1Cz8H0yxq5tOwSukUVeOejEYqTbsj
 Q0WbucTJNtOIkkQZ4mJu3t06fsXULTHV21O3NYpe1Sr2vSwF3Nqh0vxFD Q==;
X-CSE-ConnectionGUID: l4xaCEYuRBuwvKsaepZIPg==
X-CSE-MsgGUID: ZR9QTlsmQKGJqxFLPIjErA==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="78396155"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="78396155"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 04:10:41 -0700
X-CSE-ConnectionGUID: kP7/IpuQRvu6JBfWhBvy6g==
X-CSE-MsgGUID: EQBNnScUT2+FE5O3bRfI5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="251649945"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.21])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 04:10:40 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 2/3] drm/i915/de: Move intel_de_wait*() into intel_de.c
Date: Fri, 13 Mar 2026 13:10:27 +0200
Message-ID: <20260313111028.25159-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260313111028.25159-1-ville.syrjala@linux.intel.com>
References: <20260313111028.25159-1-ville.syrjala@linux.intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,linux.intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 43FDC281F74
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

intel_de_wait*() end up doing quite a bit of stuff, so the one
function call overhead from them seems insignificant. Move the
implementation intel_de.c.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.c | 72 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_de.h | 99 +++++--------------------
 2 files changed, 92 insertions(+), 79 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_de.c b/drivers/gpu/drm/i915/display/intel_de.c
index 5348c1d51eb8..fce92535bd6a 100644
--- a/drivers/gpu/drm/i915/display/intel_de.c
+++ b/drivers/gpu/drm/i915/display/intel_de.c
@@ -7,6 +7,78 @@
 
 #include "intel_de.h"
 
+int intel_de_wait_us(struct intel_display *display, i915_reg_t reg,
+		     u32 mask, u32 value, unsigned int timeout_us,
+		     u32 *out_value)
+{
+	int ret;
+
+	intel_dmc_wl_get(display, reg);
+
+	ret = __intel_wait_for_register(__to_uncore(display), reg, mask,
+					value, timeout_us, 0, out_value);
+
+	intel_dmc_wl_put(display, reg);
+
+	return ret;
+}
+
+int intel_de_wait_ms(struct intel_display *display, i915_reg_t reg,
+		     u32 mask, u32 value, unsigned int timeout_ms,
+		     u32 *out_value)
+{
+	int ret;
+
+	intel_dmc_wl_get(display, reg);
+
+	ret = __intel_wait_for_register(__to_uncore(display), reg, mask,
+					value, 2, timeout_ms, out_value);
+
+	intel_dmc_wl_put(display, reg);
+
+	return ret;
+}
+
+int intel_de_wait_fw_ms(struct intel_display *display, i915_reg_t reg,
+			u32 mask, u32 value, unsigned int timeout_ms,
+			u32 *out_value)
+{
+	return __intel_wait_for_register_fw(__to_uncore(display), reg, mask,
+					    value, 2, timeout_ms, out_value);
+}
+
+int intel_de_wait_fw_us_atomic(struct intel_display *display, i915_reg_t reg,
+			       u32 mask, u32 value, unsigned int timeout_us,
+			       u32 *out_value)
+{
+	return __intel_wait_for_register_fw(__to_uncore(display), reg, mask,
+					    value, timeout_us, 0, out_value);
+}
+
+int intel_de_wait_for_set_us(struct intel_display *display, i915_reg_t reg,
+			     u32 mask, unsigned int timeout_us)
+{
+	return intel_de_wait_us(display, reg, mask, mask, timeout_us, NULL);
+}
+
+int intel_de_wait_for_clear_us(struct intel_display *display, i915_reg_t reg,
+			       u32 mask, unsigned int timeout_us)
+{
+	return intel_de_wait_us(display, reg, mask, 0, timeout_us, NULL);
+}
+
+int intel_de_wait_for_set_ms(struct intel_display *display, i915_reg_t reg,
+			     u32 mask, unsigned int timeout_ms)
+{
+	return intel_de_wait_ms(display, reg, mask, mask, timeout_ms, NULL);
+}
+
+int intel_de_wait_for_clear_ms(struct intel_display *display, i915_reg_t reg,
+			       u32 mask, unsigned int timeout_ms)
+{
+	return intel_de_wait_ms(display, reg, mask, 0, timeout_ms, NULL);
+}
+
 u8 intel_de_read8(struct intel_display *display, i915_reg_t reg)
 {
 	/* this is only used on VGA registers (possible on pre-g4x) */
diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 8ca5904ba84e..f87b84ab9d6d 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -86,85 +86,26 @@ intel_de_rmw(struct intel_display *display, i915_reg_t reg, u32 clear, u32 set)
 	return val;
 }
 
-static inline int
-intel_de_wait_us(struct intel_display *display, i915_reg_t reg,
-		 u32 mask, u32 value, unsigned int timeout_us,
-		 u32 *out_value)
-{
-	int ret;
-
-	intel_dmc_wl_get(display, reg);
-
-	ret = __intel_wait_for_register(__to_uncore(display), reg, mask,
-					value, timeout_us, 0, out_value);
-
-	intel_dmc_wl_put(display, reg);
-
-	return ret;
-}
-
-static inline int
-intel_de_wait_ms(struct intel_display *display, i915_reg_t reg,
-		 u32 mask, u32 value, unsigned int timeout_ms,
-		 u32 *out_value)
-{
-	int ret;
-
-	intel_dmc_wl_get(display, reg);
-
-	ret = __intel_wait_for_register(__to_uncore(display), reg, mask,
-					value, 2, timeout_ms, out_value);
-
-	intel_dmc_wl_put(display, reg);
-
-	return ret;
-}
-
-static inline int
-intel_de_wait_fw_ms(struct intel_display *display, i915_reg_t reg,
-		    u32 mask, u32 value, unsigned int timeout_ms,
-		    u32 *out_value)
-{
-	return __intel_wait_for_register_fw(__to_uncore(display), reg, mask,
-					    value, 2, timeout_ms, out_value);
-}
-
-static inline int
-intel_de_wait_fw_us_atomic(struct intel_display *display, i915_reg_t reg,
-			   u32 mask, u32 value, unsigned int timeout_us,
-			   u32 *out_value)
-{
-	return __intel_wait_for_register_fw(__to_uncore(display), reg, mask,
-					    value, timeout_us, 0, out_value);
-}
-
-static inline int
-intel_de_wait_for_set_us(struct intel_display *display, i915_reg_t reg,
-			 u32 mask, unsigned int timeout_us)
-{
-	return intel_de_wait_us(display, reg, mask, mask, timeout_us, NULL);
-}
-
-static inline int
-intel_de_wait_for_clear_us(struct intel_display *display, i915_reg_t reg,
-			   u32 mask, unsigned int timeout_us)
-{
-	return intel_de_wait_us(display, reg, mask, 0, timeout_us, NULL);
-}
-
-static inline int
-intel_de_wait_for_set_ms(struct intel_display *display, i915_reg_t reg,
-			 u32 mask, unsigned int timeout_ms)
-{
-	return intel_de_wait_ms(display, reg, mask, mask, timeout_ms, NULL);
-}
-
-static inline int
-intel_de_wait_for_clear_ms(struct intel_display *display, i915_reg_t reg,
-			   u32 mask, unsigned int timeout_ms)
-{
-	return intel_de_wait_ms(display, reg, mask, 0, timeout_ms, NULL);
-}
+int intel_de_wait_us(struct intel_display *display, i915_reg_t reg,
+		     u32 mask, u32 value, unsigned int timeout_us,
+		     u32 *out_value);
+int intel_de_wait_ms(struct intel_display *display, i915_reg_t reg,
+		     u32 mask, u32 value, unsigned int timeout_ms,
+		     u32 *out_value);
+int intel_de_wait_fw_ms(struct intel_display *display, i915_reg_t reg,
+			u32 mask, u32 value, unsigned int timeout_ms,
+			u32 *out_value);
+int intel_de_wait_fw_us_atomic(struct intel_display *display, i915_reg_t reg,
+			       u32 mask, u32 value, unsigned int timeout_us,
+			       u32 *out_value);
+int intel_de_wait_for_set_us(struct intel_display *display, i915_reg_t reg,
+			     u32 mask, unsigned int timeout_us);
+int intel_de_wait_for_clear_us(struct intel_display *display, i915_reg_t reg,
+			       u32 mask, unsigned int timeout_us);
+int intel_de_wait_for_set_ms(struct intel_display *display, i915_reg_t reg,
+			     u32 mask, unsigned int timeout_ms);
+int intel_de_wait_for_clear_ms(struct intel_display *display, i915_reg_t reg,
+			       u32 mask, unsigned int timeout_ms);
 
 /*
  * Unlocked mmio-accessors, think carefully before using these.
-- 
2.52.0

