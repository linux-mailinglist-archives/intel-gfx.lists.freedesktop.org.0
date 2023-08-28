Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1905D78A5AA
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Aug 2023 08:21:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76D5510E20F;
	Mon, 28 Aug 2023 06:20:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C95E10E20F;
 Mon, 28 Aug 2023 06:20:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693203657; x=1724739657;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nF6FuEa9N6zZ0E5wh36MAwAjJuJPkBZvGaM2KG0WgRk=;
 b=ONWfx4HtkHo88Tc8EUarq4kipJFbMWfQtU61tMwrHLl8yMHV1GpNn8xD
 5WOHgbX7Z75ER2V6moQ5Ovdi1n+C6BinjuDXrgu8+Pvx7sOCZQc+NWig+
 EYI/7ZhxcSCCjLfTjOYRontV6qER0uQenva9lBrDgJKaFMqX1qYUd6pWc
 kFkmEcLW0wFzeplHOZFDw89yNP5Dz/9yQvfaLOTGtmMyekCeqYEjJ3jCd
 JY9DAe/c2r53MDrORJD8J3V/oZiGaTI2j6sBcKeQUcsMHd3CAQ/cAB9db
 aGeWrhEo9Xq0X4AQr09csrFpyuqfhTGu3qoy+1K1OiqbPRyHhYFdo1cSK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="438973554"
X-IronPort-AV: E=Sophos;i="6.02,206,1688454000"; d="scan'208";a="438973554"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2023 23:20:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10815"; a="861709807"
X-IronPort-AV: E=Sophos;i="6.02,206,1688454000"; d="scan'208";a="861709807"
Received: from dmocuta-mobl2.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.249.42.5])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Aug 2023 23:20:54 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org
Date: Mon, 28 Aug 2023 09:20:32 +0300
Message-Id: <20230828062035.6906-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230828062035.6906-1-vinod.govindapillai@intel.com>
References: <20230828062035.6906-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/lnl: FBC can be enabled with PSR2
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
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

FBC restriction with PSR2 can be removed from LNL onwards

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 66c8aed07bbc..d36499d7e0be 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1169,11 +1169,11 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	}
 
 	/*
-	 * Display 12+ is not supporting FBC with PSR2.
+	 * Display 12 to 14 is not supporting FBC with PSR2.
 	 * Recommendation is to keep this combination disabled
 	 * Bspec: 50422 HSD: 14010260002
 	 */
-	if (DISPLAY_VER(i915) >= 12 && crtc_state->has_psr2) {
+	if (IS_DISPLAY_VER(i915, 12, 14) && crtc_state->has_psr2) {
 		plane_state->no_fbc_reason = "PSR2 enabled";
 		return 0;
 	}
-- 
2.34.1

