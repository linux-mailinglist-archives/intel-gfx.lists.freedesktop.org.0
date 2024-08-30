Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5469656B5
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 07:08:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AA7B10E7E1;
	Fri, 30 Aug 2024 05:08:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SJ0AaDaF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD1CE10E7E0;
 Fri, 30 Aug 2024 05:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724994518; x=1756530518;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=se4hm+XelaASNCKt5jQijYX0A75nDFCEM9KN5cHIhyk=;
 b=SJ0AaDaF0z9OSh5v1mJMXxNebGUmeSyVH76TUfwhCdBC+dJYCjitZGIw
 bezVZggESxrN90v5j/BW+E7sddR8rkDVlsORa9KbgCJVtR7SF1XwA3hAf
 1BfjYAcJN+XNDaWdyM0UhzFgOYOvNiq39Yv0RB94nSPL7otcJ1p5pKVWg
 HiqJhN11WT6nAyRkg8oYBvUGXQzg/2g9USGyAc7Icnd3ACzy+M/oj2rWk
 W3HDc9swe6AcNlXQcNC6cExWUYTva927kr6AdBmb5TM6wt4yqgZIEwxR3
 xjFdXFlxeumyt5/7C9UMUo9SBiGNKgSaQ/+7mvvIuGqPBL4K8qk5Ro+7k w==;
X-CSE-ConnectionGUID: VUKtdDNRQvCAVDXUab8mKw==
X-CSE-MsgGUID: JjHjUe1ATQSBO3XylcDQNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11179"; a="23421686"
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="23421686"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:38 -0700
X-CSE-ConnectionGUID: B4W9ofjjR2qzmoUKTSysxw==
X-CSE-MsgGUID: lu17uLZ/QeC8f+xT7T+Jvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,187,1719903600"; d="scan'208";a="94610264"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 22:08:36 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 10/19] drm/i915/dss: Use struct intel_display in dss dsc
 helpers
Date: Fri, 30 Aug 2024 10:39:40 +0530
Message-ID: <20240830050950.2528450-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
References: <20240830050950.2528450-1-ankit.k.nautiyal@intel.com>
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

Replace struct drm_i915_private with intel_display in the dss dsc
helpers.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dss.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dss.c b/drivers/gpu/drm/i915/display/intel_dss.c
index b37e9112ab77..fe55f4b1a9bf 100644
--- a/drivers/gpu/drm/i915/display/intel_dss.c
+++ b/drivers/gpu/drm/i915/display/intel_dss.c
@@ -154,17 +154,17 @@ static i915_reg_t dss_ctl2_reg(struct intel_crtc *crtc, enum transcoder cpu_tran
 
 void intel_dss_reset(const struct intel_crtc_state *old_crtc_state)
 {
+	struct intel_display *display = to_intel_display(old_crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	intel_de_write(dev_priv, dss_ctl1_reg(crtc, old_crtc_state->cpu_transcoder), 0);
-	intel_de_write(dev_priv, dss_ctl2_reg(crtc, old_crtc_state->cpu_transcoder), 0);
+	intel_de_write(display, dss_ctl1_reg(crtc, old_crtc_state->cpu_transcoder), 0);
+	intel_de_write(display, dss_ctl2_reg(crtc, old_crtc_state->cpu_transcoder), 0);
 }
 
 void intel_dss_enable_uncompressed_joiner(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 dss_ctl1_val = 0;
 
 	if (crtc_state->joiner_pipes && !crtc_state->dsc.compression_enable) {
@@ -173,7 +173,7 @@ void intel_dss_enable_uncompressed_joiner(const struct intel_crtc_state *crtc_st
 		else
 			dss_ctl1_val |= UNCOMPRESSED_JOINER_PRIMARY;
 
-		intel_de_write(dev_priv,
+		intel_de_write(display,
 			       dss_ctl1_reg(crtc, crtc_state->cpu_transcoder),
 			       dss_ctl1_val);
 	}
@@ -182,8 +182,8 @@ void intel_dss_enable_uncompressed_joiner(const struct intel_crtc_state *crtc_st
 void intel_dss_enable_compressed_joiner(const struct intel_crtc_state *crtc_state,
 					int vdsc_instances_per_pipe)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 dss_ctl1_val = 0;
 	u32 dss_ctl2_val = 0;
 
@@ -197,18 +197,18 @@ void intel_dss_enable_compressed_joiner(const struct intel_crtc_state *crtc_stat
 		if (!intel_crtc_is_joiner_secondary(crtc_state))
 			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
 	}
-	intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
-	intel_de_write(dev_priv, dss_ctl2_reg(crtc, crtc_state->cpu_transcoder), dss_ctl2_val);
+	intel_de_write(display, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
+	intel_de_write(display, dss_ctl2_reg(crtc, crtc_state->cpu_transcoder), dss_ctl2_val);
 }
 
 void intel_dss_dsc_get_config(struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 dss_ctl1, dss_ctl2;
 
-	dss_ctl1 = intel_de_read(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder));
-	dss_ctl2 = intel_de_read(dev_priv, dss_ctl2_reg(crtc, crtc_state->cpu_transcoder));
+	dss_ctl1 = intel_de_read(display, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder));
+	dss_ctl2 = intel_de_read(display, dss_ctl2_reg(crtc, crtc_state->cpu_transcoder));
 
 	crtc_state->dsc.compression_enable = dss_ctl2 & LEFT_BRANCH_VDSC_ENABLE;
 	if (!crtc_state->dsc.compression_enable)
-- 
2.45.2

