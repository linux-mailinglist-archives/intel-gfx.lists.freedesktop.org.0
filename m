Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8573724CE2
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 21:16:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B01F10E39B;
	Tue,  6 Jun 2023 19:16:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 17A1F10E3A9
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 19:16:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686078963; x=1717614963;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=rD3DWPnoQi+vJo2LZtVYdfCBoNRAdA7BJP6CpUIwmsE=;
 b=DCymmQTg4LTYlsyMiFgqzKx9mzSSGgDJ/Pw2MzO3cbmsvGiUXCgP0o4v
 7WUwnfdstZO3F3LoAtCF0aDOPtpu4nXU3bf83k3SKPT7HsxSin9kliGXX
 Ih5NXtq3VXmJ9Suh8CGaEfD2UUgIectFLfSzNEzNEGFYT2wc/1FmD//cZ
 UvdbxilafLeBm7RpnGa65ZQNR64W8P72SK3Vk82MGPQHJsyJG+LlMD5A8
 A8RI2a2tbrXVZC1XOH1Dh5fQy9E2i85/IeX19SWCOR0IxU8Utqz5o9b0J
 NaNZGLNsU7iNXv6io3QUBHNJ7dIx0uM6wNIVOQrMFPk6Q4e0frybYfyES A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="443146406"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="443146406"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 12:16:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="709187172"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="709187172"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 06 Jun 2023 12:16:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Jun 2023 22:16:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jun 2023 22:15:03 +0300
Message-Id: <20230606191504.18099-19-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 18/19] drm/i915/dsb: Re-instate DSB for LUT
 updates
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

With all the known issues sorted out we can start to use
DSB to load the LUTs.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index c5a9ea53a718..213063872f26 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1814,9 +1814,6 @@ void intel_color_prepare_commit(struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
 
-	/* FIXME DSB has issues loading LUTs, disable it for now */
-	return;
-
 	if (!crtc_state->hw.active ||
 	    intel_crtc_needs_modeset(crtc_state))
 		return;
-- 
2.39.3

