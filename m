Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B04F81818D
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 07:32:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA64310E406;
	Tue, 19 Dec 2023 06:32:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B915310E18E
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 06:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702967562; x=1734503562;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=brhmoIpBCASE93g/kQyua+xc5AqLZYgZty10YmZZmu0=;
 b=Nbvwy4QLqR08swCwrH1cq8onxngsVWYuV8t0UoWmjhy0GABsbUdiYdLK
 O08zFhSZuhJDuVCzrjOWp9FoT86fjk4r54rIvm6fD9unXbI9ZDKErEVoF
 Hp+fa1TjJKjasnbTqBGlwcSpTj4c8fh3RfBg3Rkmpjz6zzpXoo5Bu5O94
 czJImiQvUcbFdeVFmALUDz3LFNB41ud2VeHR/Xa9kHiX+OP/Ta7Ai1Pmi
 NSGX3UWOSO4PUS5p25MkV9P7ieVwPehNOIEXGlynjsW1EjiBJpZFiEXgy
 qyDJoSQrNOadlQcIVEwhATzs+5Tc3tvraFzVpnEk0mqecpYa/nrMHUed5 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="2466447"
X-IronPort-AV: E=Sophos;i="6.04,287,1695711600"; 
   d="scan'208";a="2466447"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 22:32:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,287,1695711600"; d="scan'208";a="17836838"
Received: from amoested-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.33.246])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 22:32:40 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/4] drm/i915/alpm: Calculate ALPM Entry check
Date: Tue, 19 Dec 2023 08:32:20 +0200
Message-Id: <20231219063221.505982-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231219063221.505982-1-jouni.hogander@intel.com>
References: <20231219063221.505982-1-jouni.hogander@intel.com>
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

ALPM Entry Check represents the number of lines needed to put the main link
to sleep and keep it in the sleep state before it can be taken out of the
SLEEP state (eDP requires the main link to be in the SLEEP state for a
minimum of 5us).

Bspec: 71477

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  3 ++
 drivers/gpu/drm/i915/display/intel_psr.c      | 28 +++++++++++++++++++
 2 files changed, 31 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 78473c99b869..f696c0f58f0a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1681,6 +1681,9 @@ struct intel_pps {
 struct alpm_parameters {
 	u8 io_wake_lines;
 	u8 fast_wake_lines;
+
+	/* LNL and beyond */
+	u8 check_entry_lines;
 };
 
 struct intel_psr {
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 8b1c2a1c7e94..df60b4fb0d65 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1102,6 +1102,28 @@ static bool _compute_psr2_sdp_prior_scanline_indication(struct intel_dp *intel_d
 	return true;
 }
 
+static bool _lnl_compute_alpm_params(struct intel_dp *intel_dp,
+				     struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
+	struct alpm_parameters *alpm_params = &intel_dp->psr.alpm_params;
+	int check_entry_lines;
+
+	/* ALPM Entry Check = 2 + CEILING( 5us /tline ) */
+	check_entry_lines = 2 +
+		intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode, 5);
+
+	if (check_entry_lines > 15)
+		return false;
+
+	if (i915->display.params.psr_safest_params)
+		check_entry_lines = 15;
+
+	alpm_params->check_entry_lines = check_entry_lines;
+
+	return true;
+}
+
 static bool _compute_alpm_params(struct intel_dp *intel_dp,
 				 struct intel_crtc_state *crtc_state)
 {
@@ -1117,6 +1139,8 @@ static bool _compute_alpm_params(struct intel_dp *intel_dp,
 		 * it is not enough -> use 45 us.
 		 */
 		fast_wake_time = 45;
+
+		/* TODO: Check how we can use ALPM_CTL fast wake extended field */
 		max_wake_lines = 12;
 	} else {
 		io_wake_time = 50;
@@ -1133,6 +1157,10 @@ static bool _compute_alpm_params(struct intel_dp *intel_dp,
 	    fast_wake_lines > max_wake_lines)
 		return false;
 
+	if (DISPLAY_VER(i915) >= 20 && !_lnl_compute_alpm_params(intel_dp,
+								 crtc_state))
+		return false;
+
 	if (i915->display.params.psr_safest_params)
 		io_wake_lines = fast_wake_lines = max_wake_lines;
 
-- 
2.34.1

