Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14342BEA8AD
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 18:14:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69C3A10EC73;
	Fri, 17 Oct 2025 16:14:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ThuYcWPp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAF5B10EC76;
 Fri, 17 Oct 2025 16:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760717667; x=1792253667;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=oxjW2pr4bJjdv8/nrJf6ep7Hyod/qBIXdqCmvmTJIuo=;
 b=ThuYcWPpEFP1TzsmH1PDi248C3UMJEM5f24UYdfCqpSvc1jsOHUso66T
 wUy/U4vWAgcQ+pB5GjDcbF6NmJBzxt6eBxUuS4uFPz8SKhEluCmoHuOni
 zPyicy/wG2vKjgXtAzq5zcjnTCs9BtlCfT8gLAOeqyj9WYLD/5bL17XMc
 9CrNkBA+xtUkwjo9NNOdNoLWIhS7s+l415RP8PVpkgWgLPE5vYdnTaui3
 41i6FDuoNEWWeDsbh7s0w2Tv7npsSXLQg7SFoaO36h+CRVQpODK9dtOce
 V1N8RwKS0wEa/663SfZB0wcuasEwOdOEKTrthfs6tIZvsVknI0rbszzJr A==;
X-CSE-ConnectionGUID: seIS83WJTyiXxeiCDzv6Cg==
X-CSE-MsgGUID: QlrRSkDKRX+Ii07/6MUnKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11585"; a="62142212"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="62142212"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 09:14:27 -0700
X-CSE-ConnectionGUID: kptaZloyS7a1vokNzhkivw==
X-CSE-MsgGUID: J+PeIXWeR++FBTVUou2GBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="188062852"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.129])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 09:14:25 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 1/9] drm/i915/scaler: Don't clobber plane scaler scale factors
 with pfit scale factors
Date: Fri, 17 Oct 2025 19:14:09 +0300
Message-ID: <20251017161417.4399-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251017161417.4399-1-ville.syrjala@linux.intel.com>
References: <20251017161417.4399-1-ville.syrjala@linux.intel.com>
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

When intel_atomic_setup_scaler() is called for a plane scaler
it first computes the scale factors correctly, and then (if
pfit is enabled on the pipe) it overwrites them with the pfit
scale factors.

Skip the pfit scaler stuff when intel_atomic_setup_scaler()
is called for a plane scaler (plane_state != NULL).

Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Fixes: 9217f9aaef62 ("drm/i915/scaler: Compute scaling factors for pipe scaler")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index d29efcbf2319..640c65818f8a 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -464,7 +464,7 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 		}
 	}
 
-	if (crtc_state->pch_pfit.enabled) {
+	if (!plane_state && crtc_state->pch_pfit.enabled) {
 		struct drm_rect src;
 		int max_hscale, max_vscale;
 
-- 
2.49.1

