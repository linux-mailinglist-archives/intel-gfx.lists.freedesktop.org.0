Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 631E9A6F436
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Mar 2025 12:34:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3F7710E545;
	Tue, 25 Mar 2025 11:34:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EmUXUnPM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C6A810E556;
 Tue, 25 Mar 2025 11:34:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742902491; x=1774438491;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xWF6RLEn+R7zaO300QbHsa8dCEQPJu6OoQbAu+O7JvQ=;
 b=EmUXUnPMEsSDSqWUGkBzqoJVkf0WF0YGrZvPGmsJS/NeMdXCd2TS9Axg
 ViUyFNDaucTQcowYy+L+Ti5XbLWAStmWDpBlAfPUnNG4DhLPK1DdX27dD
 iiQnhqIaC8khNgsFo+DEblMBAoGZCP7wqu/vBc4ZgEmLzJ+UfKUJLyU+q
 0wXxmdSSCuUfLn/UBfNStk1Y/7T0dPKCDzKgPpsmUO+Aw1sSNPBXLGCLO
 oe8GmC6RgQDpxxi5ZecLaorYcQYyRyr/z3XnWucUn5UyDAGH5ZDm+7qwA
 nR9jpoeNxREXEOpOJ82v8HtI0nSuQwyEXdJ5vjNW0/qyoJU5Qo0nFEm3l Q==;
X-CSE-ConnectionGUID: K8fqRdqfQDi7CMybrCqidQ==
X-CSE-MsgGUID: 65uTOgD8SqGkMN7J474fBQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="44266918"
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="44266918"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 04:34:51 -0700
X-CSE-ConnectionGUID: /KYSm2T8Sq6iisYMfd90mQ==
X-CSE-MsgGUID: QWX5+We8R1ydZjRnDJKCgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,274,1736841600"; d="scan'208";a="124070575"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2025 04:34:49 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 07/16] drm/i915/vrr: Set vrr.enable for VRR TG with fixed_rr
Date: Tue, 25 Mar 2025 16:52:40 +0530
Message-ID: <20250325112249.228444-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250325112249.228444-1-ankit.k.nautiyal@intel.com>
References: <20250325112249.228444-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

For platforms that enable VRR TG only for variable timings, the
VRR_CTL.VRR_ENABLE bit indicates VRR is active. For platforms that
always have VRR TG enabled, the VRR_CTL.VRR_ENABLE bit indicates VRR
is active only when not in fixed refresh rate mode.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 8ae279f132fd..8a0d27666ea7 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -632,6 +632,7 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 	struct intel_display *display = to_intel_display(crtc_state);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 trans_vrr_ctl, trans_vrr_vsync;
+	bool vrr_enable;
 
 	trans_vrr_ctl = intel_de_read(display,
 				      TRANS_VRR_CTL(display, cpu_transcoder));
@@ -675,7 +676,12 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 		}
 	}
 
-	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
+	vrr_enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
+
+	if (intel_vrr_always_use_vrr_tg(display))
+		crtc_state->vrr.enable = vrr_enable && !intel_vrr_is_fixed_rr(crtc_state);
+	else
+		crtc_state->vrr.enable = vrr_enable;
 
 	/*
 	 * #TODO: For Both VRR and CMRR the flag I915_MODE_FLAG_VRR is set for mode_flags.
-- 
2.45.2

