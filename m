Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD17EC0F4AC
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 17:30:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA14610E50F;
	Mon, 27 Oct 2025 16:30:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gt2BFD+b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B918710E509;
 Mon, 27 Oct 2025 16:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761582598; x=1793118598;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2qEFHxQWZLdwRsmoONmG1LRySRvh20aWgYa3den0yRU=;
 b=gt2BFD+b5i/JvoD2sgjfJKECi+RcvRQ33b0VMQAMzaaPVbPSTI0VACQG
 z2etD/KnV+dTZ41L1uQ7f6rvMMszOZOKo9D9Ue/hpQm8UCnpWFDVW3nIz
 wv25ZRpU9WmFjy56KqxgJbiZ9iyM+dOMuHVbsr2hjxVXQYU/JDjPuNtGk
 vTNeotRfvykfU56ltJ6qWfR+sziDy/Y+RP3Wg9iIG7mNVEJa2Z0mZ8yMJ
 +ypyyUv9mULIXf+72Y6zOOUD2wITDCUhp4+1czTZstfHZh+tuin3yajTJ
 u2YMXym216AGCc+aTCEV7tv9fnMIXeSC7cuNcVBkCrqgV2OtN0+Ibn8Di Q==;
X-CSE-ConnectionGUID: XvCTejlLSiqLUeQk1T0Nfg==
X-CSE-MsgGUID: tQ9jmmknSvOxqXBv5g0nmA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="81299358"
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="81299358"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 09:29:58 -0700
X-CSE-ConnectionGUID: O79nMhJdR3GK4o52X2jvmA==
X-CSE-MsgGUID: o1cI9BrtQkGk1olLPmt5QA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="184785637"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 27 Oct 2025 09:29:57 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v8 13/22] drm/i915/vrr: Configure DC balance flipline
 adjustment
Date: Mon, 27 Oct 2025 21:59:18 +0530
Message-ID: <20251027162927.2655581-14-mitulkumar.ajitkumar.golani@intel.com>
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

Configure DC Balance Flipline adjustment once after other
DC balance adjustment registers are written.

Bspec: 68935

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 2d418f45569f..97949ff782aa 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -785,6 +785,8 @@ static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
 			       VRR_DCB_FLIPLINE(crtc_state->vrr.flipline - 1));
 		intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_LIVE(cpu_transcoder),
 			       VRR_DCB_ADJ_FLIPLINE(crtc_state->vrr.flipline - 1));
+		intel_de_write(display, TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(cpu_transcoder),
+			       VRR_DCB_ADJ_FLIPLINE(crtc_state->vrr.flipline - 1));
 		intel_de_write(display, PIPEDMC_DCB_VMIN(pipe),
 			       crtc_state->vrr.dc_balance.vmin - 1);
 		intel_de_write(display, PIPEDMC_DCB_VMAX(pipe),
-- 
2.48.1

