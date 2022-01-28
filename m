Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EA0349F778
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 11:38:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B16510EFB6;
	Fri, 28 Jan 2022 10:38:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3055910EF85
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 10:38:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643366329; x=1674902329;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=QqpYxux2C41QuKXEEJQItmTfMKH7ru+7I7L5Ppb9AF4=;
 b=de8CItVCEczbjrxgNCbCheahPL88KQI7ugHYiGgCS4sdxsUw6GCmiIpG
 1gNMf7a57D9dHzS4Oa6BqhmAPwndmYcDpSSeWBsYoqLkBFrSRxOQrz53Q
 lSXN07yhQ2ozLQfLMp4HBzXmozWZnJ4uagIFRckIv0lImmpySbdTYn2UL
 MDGs2Nvki9SNIosWb/vKonAuBATYp9/KaCUEZPd6MMaxVp30hsKprTIC0
 7K8+JI6pbdLpEekK/VTNausuJEq+pQ6lzp/gePVxxuW+rBNlMzISPUZap
 I4Dy4wXX9H6D3ooO7bG9tnf4/q9WATtpEEYX8bt6j50+Ly6+74VRtdl8q w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="230674460"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="230674460"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 02:38:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="581820589"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by fmsmga008.fm.intel.com with SMTP; 28 Jan 2022 02:38:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Jan 2022 12:38:33 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 12:37:52 +0200
Message-Id: <20220128103757.22461-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
References: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 12/17] drm/i915: Fix
 intel_cpu_transcoder_has_m2_n2()
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

M2/N2 values are present for all ilk-ivb,vlv,chv (and hsw edp).
Make the code reflect that.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 1e97279ba268..67c7bbbe5c88 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3149,11 +3149,7 @@ static bool transcoder_has_m2_n2(struct drm_i915_private *dev_priv,
 	if (IS_HASWELL(dev_priv))
 		return transcoder == TRANSCODER_EDP;
 
-	/*
-	 * Strictly speaking some registers are available before
-	 * gen7, but we only support DRRS on gen7+
-	 */
-	return DISPLAY_VER(dev_priv) == 7 || IS_CHERRYVIEW(dev_priv);
+	return IS_DISPLAY_VER(dev_priv, 5, 7) || IS_CHERRYVIEW(dev_priv);
 }
 
 void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,
-- 
2.34.1

