Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBCB6E6B88
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 19:56:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2871B10E836;
	Tue, 18 Apr 2023 17:56:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7A9010E820
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 17:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681840562; x=1713376562;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=IIktkNDiWxmRdEHsBkBXuYJ5dNrM1P8jA/xmu0nBr78=;
 b=ZudKGy85KQIwlZ7UDseizTndvRn09vJMUxdbR/nUjQehqVHv64jN0JET
 VMlfKoiko9lkuZo7NPM6iSue59vaL+Ib01pZxJkQZZQcER4nNKqHzxdjK
 gDRTvYmynsoqkjoKIkITif2vBtyrt4m466zDx9QkMJ15eayv9unVY1qd6
 wfIVDECZEJSLjqJ0ZWL6CsDSax1uCo3asVJFo3wGMRthcuShOoBjU8WQk
 +a766CHIbkqNAx/rE15RTxPVLoTGMjEHKjl3+LBPgexJvIFYIw6MBDQ3V
 Znm9Wkr3QQIKJXd0hxH9mHYFZX8pib01eG9TOCc0YthonGq1JXmlqNm11 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="334052825"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="334052825"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2023 10:55:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10684"; a="641451801"
X-IronPort-AV: E=Sophos;i="5.99,207,1677571200"; d="scan'208";a="641451801"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga003.jf.intel.com with SMTP; 18 Apr 2023 10:55:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Apr 2023 20:55:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Apr 2023 20:55:21 +0300
Message-Id: <20230418175528.13117-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
References: <20230418175528.13117-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/15] drm/i915: Drop a useless forward
 declararion
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

ilk_pfit_enable() is defined before the first use. No need
for a forwared declaration.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e9000ed15e7f..fb49d0ed61b4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -123,7 +123,6 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state);
 static void hsw_set_transconf(const struct intel_crtc_state *crtc_state);
 static void bdw_set_pipe_misc(const struct intel_crtc_state *crtc_state);
-static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state);
 
 /* returns HPLL frequency in kHz */
 int vlv_get_hpll_vco(struct drm_i915_private *dev_priv)
-- 
2.39.2

