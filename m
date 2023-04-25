Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 844E96EE0B4
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 12:55:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6F1110E71A;
	Tue, 25 Apr 2023 10:55:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01DBE10E715
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 10:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682420135; x=1713956135;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=pgRFr+PbyUJ5qV5yiUihPachALU+JdWVZi/C2wjWWdQ=;
 b=McQ5j9amvg7znTLu3Dy5Ydjr8CdjadFTSpnQ3Wk4ZzbeqLj+qJqRpe50
 ztnFMCpRmR3m/wUOmHu+h+WZcH5WNc98WhOu7SrGy/InoADPzJOBU8jHe
 JG7eXu5HkSSdYpe+MZqwOLyL1PcNmytDCzRpZr2FS5dFSF4O/e2ERQT1V
 FQJgMcjZ2NnyHkSjRx8eVsN+zZIKlMDaaemCkUMJIXSmSxH1OJVXsN48z
 kzoh6ewT+mnkCjt2sMj8vDlk+KENl9RUY2ij96ySsQDztuakxZnGtpKfE
 yYr/OV8iUAOYxPcs5fW9XYTO4GmP7vCkGXOVmotZejDjINaTSwhSMsSWp A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="412019671"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="412019671"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 03:55:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="687367524"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="687367524"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 25 Apr 2023 03:55:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Apr 2023 13:55:32 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Apr 2023 13:54:50 +0300
Message-Id: <20230425105450.18441-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
References: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 14/14] drm/i915/dsi: Remove weird
 has_pch_encoder asserts
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

No idea why the DSI code is feeling the need to assert that
has_pch_encoder must not be set. PCH encoders aren't even a
thing on any platform that has DSI.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 2 --
 drivers/gpu/drm/i915/display/vlv_dsi.c | 2 --
 2 files changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 3a8a4fdfbd7b..2cb9571bd327 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1245,8 +1245,6 @@ static void gen11_dsi_enable(struct intel_atomic_state *state,
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 
-	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
-
 	/* Wa_1409054076:icl,jsl,ehl */
 	icl_apply_kvmr_pipe_a_wa(encoder, crtc->pipe, true);
 
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 6ddf4d9c5e00..3813c44ad90e 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -829,8 +829,6 @@ static void bxt_dsi_enable(struct intel_atomic_state *state,
 			   const struct intel_crtc_state *crtc_state,
 			   const struct drm_connector_state *conn_state)
 {
-	drm_WARN_ON(state->base.dev, crtc_state->has_pch_encoder);
-
 	intel_crtc_vblank_on(crtc_state);
 }
 
-- 
2.39.2

