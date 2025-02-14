Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D420FA35D7E
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 13:23:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64CBA10EC84;
	Fri, 14 Feb 2025 12:23:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kCyv3GrA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B6CC10EC7E;
 Fri, 14 Feb 2025 12:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739535781; x=1771071781;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ogbfmlWCarwvbAx72flFs/2G1i5aqD7B7ONWmFYkW6Q=;
 b=kCyv3GrAp3hB1RuCv6vhc36C3j9xucXTkwU59ysw6lswYuFU6gIEwULB
 Uvvj6Qo5c5RC3uSFwEaMkEc9CQf1OnZqU9+jQP8W6bPjBhSuVkqU92P0i
 25VhxCR47NAIQANKYA15wJihl9YZDUi9rwfASjNeG4w58o2k+fqDD48PU
 s10kI9YOEcuS1mvAm603S6OOrR8tMGIrEs1E0FLw9eeASnZGXALTKW1kn
 6k++QqZ61ddmSenF8s5jI8OLTxBubZJ8nYFoX/tB9h4VtDU11ZDr+qGcr
 zg3JN4IToS4Za6htRLFzaR3UaoA/zUJeXe+OujzpJQp0pszMCc/K0VXmZ g==;
X-CSE-ConnectionGUID: 1sG7XxU8SkSIEjbUajI9Ow==
X-CSE-MsgGUID: kkTxeljWR1eE6lGCjbRTnQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="51256029"
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="51256029"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 04:23:00 -0800
X-CSE-ConnectionGUID: xSr+PL31TRKtsR4swhDRyQ==
X-CSE-MsgGUID: j6HjF3I1T+CtgIt0buidfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="113309607"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 04:22:58 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 17/19] drm/i915/display: Use fixed rr timings in
 intel_set_transcoder_timings_lrr()
Date: Fri, 14 Feb 2025 17:41:27 +0530
Message-ID: <20250214121130.1808451-18-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
References: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
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

Update the intel_set_transcoder_timings_lrr() function to use
fixed refresh rate timings for platforms which always use
VRR timing generator.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c9d1c091b109..36e35c577caa 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2922,6 +2922,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 
 static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc_state)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
@@ -2967,6 +2968,9 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	intel_de_write(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder),
 		       VACTIVE(crtc_vdisplay - 1) |
 		       VTOTAL(crtc_vtotal - 1));
+
+	if (intel_vrr_always_use_vrr_tg(display))
+		intel_vrr_enable_fixed_rr_timings(crtc_state);
 }
 
 static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state)
-- 
2.45.2

