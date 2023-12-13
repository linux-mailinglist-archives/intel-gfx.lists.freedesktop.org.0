Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 541D4810E62
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 11:25:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6C7610E783;
	Wed, 13 Dec 2023 10:25:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6316610E787
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 10:25:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702463140; x=1733999140;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=NdnuSklpMACX363at1fATTUjiTRhvBF+UMjQPtx2Klk=;
 b=dnmQPzpSr8cWVcQB+Hqx3VP1OqNPL/XXPLqFZ2Da9QzmmWNUn/UTg9Yf
 1ToX/NwifbxCKQupFQ5E3g9dth8m3Ztt7zwukhZJ5a/vqfOCB895xOsNM
 EO32q8VR/oEOgcexZUmC/kzhY4YbpFhrrrDqV4qI2Ig3QrW2tqKF2XYC1
 oUVazKRTjj0p/TzDzGdL84giTzuq0k/prQVbrn3y2f4LqiilqiYfLOyDS
 YbHD5Zo+tBqiyGHrQSPE3pqBM3kHG7uFwlacTGx+9hdPbmRqQa6C03t17
 kTHiIqc4U98uKoW/PRYt6Dm4d1DM2if7Rhvfaf/Ig56UVdvIzTAxbamrT Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="393816099"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="393816099"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 02:25:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="767161654"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="767161654"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 13 Dec 2023 02:25:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 12:25:37 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 6/9] drm/i915: Move the min/max scanline sanity check into
 intel_vblank_evade()
Date: Wed, 13 Dec 2023 12:25:16 +0200
Message-ID: <20231213102519.13500-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
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

There isn't really any reason to make the caller suffer through
checking the vblank evasion min/max scanlines. If we somehow
ended up with bogus values (which really shouldn't happen)
then just skip the actual vblank evasion loop but otherwise
plow ahead as normal.

The only "real" change is that we now get+put a vblank reference
even if the min/max values are bogus, previously we skipped
directly to the end.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 26a07b2219bf..11a6a4b0a258 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -544,6 +544,9 @@ static int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
 	DEFINE_WAIT(wait);
 	int scanline;
 
+	if (evade->min <= 0 || evade->max <= 0)
+		return 0;
+
 	for (;;) {
 		/*
 		 * prepare_to_wait() has a memory barrier, which guarantees
@@ -633,8 +636,6 @@ void intel_pipe_update_start(struct intel_atomic_state *state,
 		intel_crtc_vblank_work_init(new_crtc_state);
 
 	intel_vblank_evade_init(old_crtc_state, new_crtc_state, &evade);
-	if (evade.min <= 0 || evade.max <= 0)
-		goto irq_disable;
 
 	if (drm_WARN_ON(&dev_priv->drm, drm_crtc_vblank_get(&crtc->base)))
 		goto irq_disable;
-- 
2.41.0

