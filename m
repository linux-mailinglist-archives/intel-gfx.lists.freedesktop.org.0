Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63526A55128
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 17:35:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E574C10EA0A;
	Thu,  6 Mar 2025 16:34:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Vk7+54Es";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDE8110EA0A
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Mar 2025 16:34:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741278898; x=1772814898;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6KtKPcFCH36xZqpggqeHdh5zMqTjJXiBbVZLfKCOCNI=;
 b=Vk7+54Es533GOArEQ/Kl/epPhp26LuYfaOlEEesHW255ROpXVQIcFdan
 kUwFSWVdHc7hzluhfR5l1RLZo5KPYooDwXRxvD5I4kgBmp4Lff9YK0acl
 6tCbOz6LVAcdKTE8+/s1IsTU9l+SbpqcPDzLXC5OeN+ipAx+k1rH9iNoK
 RF3QPvS74d5+fccgtoSBsP2lu13fQcUzPqJ+sA1+/+M2QMGqGsqJV71+O
 3kAi6Bl0hNwt+1ESo3E+Sc2GIeTkHuPEonpap/SJqykuGejTNfc2o3OU/
 TUv08EbXha1Uh3I/uG9eChNGgywgMQsCCBU2Fs6AsGci0pD3btvav104W A==;
X-CSE-ConnectionGUID: QcYRo4HNT6ClNB6hmvVRdg==
X-CSE-MsgGUID: iqXkJX3XSGaSKwzRc5Ntzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="53704367"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="53704367"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 08:34:58 -0800
X-CSE-ConnectionGUID: B4n/rRV4Qs+lYUBXLs28dg==
X-CSE-MsgGUID: 3fFAO1MOS7m3chpCRMoYhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124289084"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 06 Mar 2025 08:34:55 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Mar 2025 18:34:54 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: [PATCH v2 11/18] drm/i915: Update bw_state->active_pipes during
 readout
Date: Thu,  6 Mar 2025 18:34:13 +0200
Message-ID: <20250306163420.3961-12-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250306163420.3961-1-ville.syrjala@linux.intel.com>
References: <20250306163420.3961-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Update bw_state->active_pipes during readout.

This was completely missing from the current readout code.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 0090ee7e73a1..30e6f33d6f30 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -1431,9 +1431,15 @@ void intel_bw_update_hw_state(struct intel_display *display)
 	if (DISPLAY_VER(display) < 9)
 		return;
 
+	bw_state->active_pipes = 0;
+
 	for_each_intel_crtc(display->drm, crtc) {
 		const struct intel_crtc_state *crtc_state =
 			to_intel_crtc_state(crtc->base.state);
+		enum pipe pipe = crtc->pipe;
+
+		if (crtc_state->hw.active)
+			bw_state->active_pipes |= BIT(pipe);
 
 		intel_bw_crtc_update(bw_state, crtc_state);
 	}
-- 
2.45.3

