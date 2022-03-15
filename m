Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FF44D9C2C
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 14:28:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B276A10E46D;
	Tue, 15 Mar 2022 13:28:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D270610E45E
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 13:28:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647350887; x=1678886887;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=vg6V93DiZTiSL02Y7kmO2BIJXzBH8QDzXuUNN5bE8hk=;
 b=JvK2A7ksEsurl+LOtRc81h81yJOVKlVQ4mDyS2erlchQt2l9fpAGO696
 aAb9hmcRNRbCfhUl4KefNoWctVLlVl9JJfDoKszly6puloHn2RfrsvUei
 +5EWhaCFOFw2kzCNCJKILNVsQkNjNGjZiZyoHipwFhsR2Zfi7f3gcrAzl
 6HoJUmcHbG44EIVYcjKdf938xAsA1Wu/tmzD9PIOKx8V46yoTXuOjnV2x
 aNao6xM8JcqCW/C9g8FooRForD9iRkkkJdR2Gmxpc5XHJSxEp27/YJ1Lq
 yn5/l+V9dWrTe8VWAomsWwfMycpScXleiV9HJyeCpDdH/lp1dqlcv5suy Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="236244433"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="236244433"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 06:28:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="556926889"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga008.jf.intel.com with SMTP; 15 Mar 2022 06:28:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Mar 2022 15:28:04 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Mar 2022 15:27:47 +0200
Message-Id: <20220315132752.11849-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220315132752.11849-1-ville.syrjala@linux.intel.com>
References: <20220315132752.11849-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/9] drm/i195: Determine DRRS frontbuffer_bits
 ahead of time
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

Pre-determine the frontbuffer_bits for the each pipe during
intel_drrs_enable(). Will become useful for bigjoiner use cases
soon.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_drrs.c          | 11 ++++++++++-
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index d84e82f3eab9..c94eb7d5191d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1302,6 +1302,7 @@ struct intel_crtc {
 		struct mutex mutex;
 		struct delayed_work work;
 		enum drrs_refresh_rate refresh_rate;
+		unsigned int frontbuffer_bits;
 		unsigned int busy_frontbuffer_bits;
 		enum transcoder cpu_transcoder;
 		struct intel_link_m_n m_n, m2_n2;
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index e9d622fe66b3..91aab77c495c 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -168,6 +168,13 @@ static void intel_drrs_set_state(struct intel_crtc *crtc,
 	crtc->drrs.refresh_rate = refresh_rate;
 }
 
+static unsigned int intel_drrs_frontbuffer_bits(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+
+	return INTEL_FRONTBUFFER_ALL_MASK(crtc->pipe);
+}
+
 /**
  * intel_drrs_enable - init drrs struct if supported
  * @crtc_state: A pointer to the active crtc state.
@@ -190,6 +197,7 @@ void intel_drrs_enable(const struct intel_crtc_state *crtc_state)
 	crtc->drrs.cpu_transcoder = crtc_state->cpu_transcoder;
 	crtc->drrs.m_n = crtc_state->dp_m_n;
 	crtc->drrs.m2_n2 = crtc_state->dp_m2_n2;
+	crtc->drrs.frontbuffer_bits = intel_drrs_frontbuffer_bits(crtc_state);
 	crtc->drrs.busy_frontbuffer_bits = 0;
 
 	mutex_unlock(&crtc->drrs.mutex);
@@ -216,6 +224,7 @@ void intel_drrs_disable(const struct intel_crtc_state *old_crtc_state)
 		intel_drrs_set_state(crtc, DRRS_REFRESH_RATE_HIGH);
 
 	crtc->drrs.cpu_transcoder = INVALID_TRANSCODER;
+	crtc->drrs.frontbuffer_bits = 0;
 	crtc->drrs.busy_frontbuffer_bits = 0;
 
 	mutex_unlock(&crtc->drrs.mutex);
@@ -278,7 +287,7 @@ static void intel_drrs_frontbuffer_update(struct drm_i915_private *dev_priv,
 			continue;
 		}
 
-		frontbuffer_bits = all_frontbuffer_bits & INTEL_FRONTBUFFER_ALL_MASK(crtc->pipe);
+		frontbuffer_bits = all_frontbuffer_bits & crtc->drrs.frontbuffer_bits;
 		if (invalidate)
 			crtc->drrs.busy_frontbuffer_bits |= frontbuffer_bits;
 		else
-- 
2.34.1

