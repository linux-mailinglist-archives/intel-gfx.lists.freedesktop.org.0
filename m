Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE3EC0F4CA
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 17:30:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0AAD10E516;
	Mon, 27 Oct 2025 16:30:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JcAyw3vW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D298010E515;
 Mon, 27 Oct 2025 16:30:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761582617; x=1793118617;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7jYNI9FxgdNLGuwCKS0nxhuq56qF38UUWd3Krue0yBY=;
 b=JcAyw3vW4VeRzjyUDViicxmFIOGQ8RN+DexrMNqoZF4y2zcw067aCpFl
 A5dFTVjL5lMgwjcs07qmgAuB4+V13fBJ5cElAy5OWJDv/9VRa97mEw9Ho
 J6cqGPen1UYKgeyvouD4AEtvMnEKEdn+pbquV6LoS6wNjVJk047wic3h9
 uX+FUCXhONMpj/rOVgkRTdVbAVgnzJMlarg+X8zI1U3DbHvGJ4SaEgYzn
 ernp6fxfQG2v1oexh5sn55TtlqATNIPOidyl3cBsmi/tJFNL4jos8to0n
 VmvkHC/ahLTT9769prFkkizX8f+jUGbQqNIPjWQF7xQ9Sb/52pPtN1GOH w==;
X-CSE-ConnectionGUID: zVleh8EFQkGW2k6Hs0pLAQ==
X-CSE-MsgGUID: sGE8m7e8RAuLojRcS4Tvwg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="81299383"
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="81299383"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 09:30:16 -0700
X-CSE-ConnectionGUID: sSg+0lb3TD6YtAwE5/1kIA==
X-CSE-MsgGUID: Vs/pXF4mQrqlNPdhJV5vnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="184785811"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 27 Oct 2025 09:30:15 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v8 21/22] drm/i915/vrr: Enable DC Balance
Date: Mon, 27 Oct 2025 21:59:26 +0530
Message-ID: <20251027162927.2655581-22-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251027162927.2655581-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251027162927.2655581-1-mitulkumar.ajitkumar.golani@intel.com>
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

Enable DC Balance from vrr compute config and related hw flag.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 4c4dc065d3ad..d68306cdbf57 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -240,12 +240,17 @@ static
 void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state,
 				   int vmin, int vmax)
 {
+	struct intel_display *display = to_intel_display(crtc_state);
+
 	crtc_state->vrr.vmax = vmax;
 	crtc_state->vrr.vmin = vmin;
 	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
 
 	crtc_state->vrr.enable = true;
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+
+	if (HAS_VRR_DC_BALANCE(display))
+		crtc_state->vrr.dc_balance.enable = true;
 }
 
 static
@@ -815,6 +820,7 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
 		vrr_ctl |= VRR_CTL_CMRR_ENABLE;
 
 	if (crtc_state->vrr.dc_balance.enable) {
+		vrr_ctl |= VRR_CTL_DCB_ADJ_ENABLE;
 		intel_dmc_configure_dc_balance_event(display, pipe, true);
 		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder),
 			       ADAPTIVE_SYNC_COUNTER_EN);
-- 
2.48.1

