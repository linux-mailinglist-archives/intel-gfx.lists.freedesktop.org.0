Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 275909C0AFA
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 17:12:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9B3810E882;
	Thu,  7 Nov 2024 16:12:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DwNh+Vnq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C179010E882
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 16:12:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730995935; x=1762531935;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Vr+EC5U02SrgaLi569k1P/PpOIhSUyIEOipadTYCpC8=;
 b=DwNh+VnqnjpjdhrROSjJ+XpW5BK6AsBIUo2mVQG1sByJGPZ3eahoufj7
 zQYeeBYmwY+7ZcjmUcL4sM262skjHVZ1SqmdgVB5nrzE8lhbMadDqowrf
 NUwKO/8GnHqh1u2CcLFVYFOpeAZjputhr8kIEwBOWRqoR1d1EJHF5ezW3
 V2OCQCmIQ7TjLz2ocxXngHkNutSDudq2bPggzwW/QSu3ddMaR9vU5OWx8
 XOvrcHKfhoUsSNgCQttyp31Mao/+WwMZ+kuIyFwnBglhxNub0hqQgS7EY
 z3a2Jm+I0wv0oOuGjzbKiqMWFCW/XNr8ERyzt4sEihxZJLeT7pTQlDojq g==;
X-CSE-ConnectionGUID: JQidSwb7QaeWdstjmTxzQw==
X-CSE-MsgGUID: Qw9/l7CSRSGBrrUr/A3eOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="41443363"
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="41443363"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 08:11:54 -0800
X-CSE-ConnectionGUID: 8T1nvmt8QBeKAtAOZJbu1w==
X-CSE-MsgGUID: nUM2zxlbTmyHFsAe4XAy0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="85277876"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 Nov 2024 08:11:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 07 Nov 2024 18:11:51 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 10/10] drm/i915/crt: Nuke unused crt->connector
Date: Thu,  7 Nov 2024 18:11:23 +0200
Message-ID: <20241107161123.16269-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
References: <20241107161123.16269-1-ville.syrjala@linux.intel.com>
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

crt->connector is never used, nuke it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index b243ab51bdf0..139810ed4baa 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -73,9 +73,6 @@
 
 struct intel_crt {
 	struct intel_encoder base;
-	/* DPMS state is stored in the connector, which we need in the
-	 * encoder's enable/disable callbacks */
-	struct intel_connector *connector;
 	bool force_hotplug_required;
 	i915_reg_t adpa_reg;
 };
@@ -1067,8 +1064,6 @@ void intel_crt_init(struct intel_display *display)
 
 	ddc_pin = display->vbt.crt_ddc_pin;
 
-	crt->connector = connector;
-
 	drm_connector_init_with_ddc(display->drm, &connector->base,
 				    &intel_crt_connector_funcs,
 				    DRM_MODE_CONNECTOR_VGA,
-- 
2.45.2

