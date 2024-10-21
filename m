Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 354B39A64AB
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 12:49:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C819710E47F;
	Mon, 21 Oct 2024 10:49:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JOAfI+lK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 854A810E47F
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2024 10:49:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729507760; x=1761043760;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NzvVfkbTqqz1GRo6Sz+qCXSw8dtKNN/6ZjxcImpMbyw=;
 b=JOAfI+lKaWvdd9GSi3V5VxnnS2vHu/8d+e4QETtX2EPojJ3yGBU3yOPe
 uaoHvYLksBz46mOKLa75/mU1tEdYQ/ox42PluAC6Kmz/JlrTnFZ8gw7dt
 hHy4UqMi9qWKKrrMTnTf4Z7v3J0whQBoERzzZE1keOcOw43QKu889n/Tq
 wH3ygHnOVaic5peZC+YRY3s5ET95s+c+kYffd8pEG6q1qZTiOJbDxNHe8
 WKzWCOoGxgs8ekuI2uxU+5VvVjLwAR93CaoIrH1aLX6MJGHMNU3DJde+j
 D1YAlZCNwIT2qTYu0RT2xPac9SR5opG6U+dcFVukp8ApuYABYSrRt7oek g==;
X-CSE-ConnectionGUID: 1gfsDfQdQTCp3mpO3EGa2g==
X-CSE-MsgGUID: ynjoCg8lRLGejbMHUl3jig==
X-IronPort-AV: E=McAfee;i="6700,10204,11231"; a="28439937"
X-IronPort-AV: E=Sophos;i="6.11,220,1725346800"; d="scan'208";a="28439937"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 03:49:20 -0700
X-CSE-ConnectionGUID: xE8Tt+C3ReGdpMANWOpJyQ==
X-CSE-MsgGUID: R4TCz/D5Sru3tRue76aH/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="84310749"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa003.jf.intel.com with ESMTP; 21 Oct 2024 03:49:19 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v3 2/3] drm/i915/dp: Set FAVT mode in DP SDP with fixed
 refresh rate
Date: Mon, 21 Oct 2024 16:20:59 +0530
Message-ID: <20241021105100.2861830-3-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20241021105100.2861830-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20241021105100.2861830-1-mitulkumar.ajitkumar.golani@intel.com>
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

While running with fixed refresh rate and VRR timing generator set FAVT
mode (Fixed Vtotal) in DP Adaptive Sync SDP to intimate the panel
about Fixed refresh rate.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7e04913bc2ff..b1f68fff524d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2785,7 +2785,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
 		as_sdp->target_rr = drm_mode_vrefresh(adjusted_mode);
 		as_sdp->target_rr_divider = true;
 	} else {
-		as_sdp->mode = DP_AS_SDP_AVT_FIXED_VTOTAL;
+		as_sdp->mode = DP_AS_SDP_AVT_DYNAMIC_VTOTAL;
 		as_sdp->vtotal = adjusted_mode->vtotal;
 		as_sdp->target_rr = 0;
 	}
-- 
2.46.0

