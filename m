Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F06A9B6CD2
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2024 20:23:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 169A210E7EF;
	Wed, 30 Oct 2024 19:23:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W92Oq3Wd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42CA010E0CA
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2024 19:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730316172; x=1761852172;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=FNlTS61oeuP+rVgSex5iU7wcpaICs5crDDvfQ8lNTpE=;
 b=W92Oq3Wdwi//Y3VaY0vYwbS7YJXHfbGBhccutCm/9HJsTS1PS8Ka+oSz
 v7BIORxDLLisJXyEyXKgL+J0WUBM354e+3aMH0pK7nf0iCtKNB4PQfyiQ
 qZfD4OVD33nQJD3gDxhtTJfKKPhaU95KC0SeBt04vEB9IHEhswp4Csuaw
 s5BqXiU2fIhYS+GF5utktEspH6q/dKLxKQ1qlOsTlvUjo3EIxfez0LlG1
 0XVBazeg4aTVT/gDMc3gMBoO8NRm2Xr/hSWimhzp/SJWWEbrBivrpqAXQ
 56VBY386K44rkd/JAmJGyPkbgXjpwULVBk0ii28iLeIHF1NZSWiPsT7qe Q==;
X-CSE-ConnectionGUID: uwmmVxgwT1mBTB7iAIYKKA==
X-CSE-MsgGUID: 2AzG8GdSTXaFiUO1rQmokg==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="41435015"
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="41435015"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 12:22:46 -0700
X-CSE-ConnectionGUID: A88vYYHLTB27lf499YM7Cw==
X-CSE-MsgGUID: mwfY++7mS5KjkqTLDd1kFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,245,1725346800"; d="scan'208";a="82521976"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2024 12:22:45 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 5/5] drm/i915/adlp+/dp_mst: Align master transcoder
 disabling with spec wrt. DP2 config
Date: Wed, 30 Oct 2024 21:23:13 +0200
Message-ID: <20241030192313.4030617-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241030192313.4030617-1-imre.deak@intel.com>
References: <20241030192313.4030617-1-imre.deak@intel.com>
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

On ADLP+ during modeset disabling, disable the DP2 configuration for MST
master transcoders as required by the specification.

Bspec: 55424, 54128, 65448, 68849
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index d82bc1bf8b68f..6adbc7d0b90d9 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -3062,6 +3062,8 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 
 	intel_dp_sink_set_fec_ready(intel_dp, old_crtc_state, false);
 
+	intel_ddi_config_transcoder_dp2(old_crtc_state, false);
+
 	/*
 	 * From TGL spec: "If single stream or multi-stream master transcoder:
 	 * Configure Transcoder Clock select to direct no clock to the
-- 
2.44.2

