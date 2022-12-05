Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 680A2642A21
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Dec 2022 15:11:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A03610E23A;
	Mon,  5 Dec 2022 14:11:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 408B710E237
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Dec 2022 14:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670249505; x=1701785505;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=xMZKgThoovAW6ysMTQNZqXn9aIouTk/B95aeG+0+QMM=;
 b=oIRJTrUDmkg3z1jrHljlBHQLVKQPb4fhUujddg+40b2c6Nyero4R38Ep
 2kwgz2XDKLIMdHlgBkyF50LJWS64nfzu+5xSjQciKuKObyYozwitxYoXr
 Kc1x3O1HUP4s5qCfP7cTL4o6yXBs/rxaWr/Z508r1L7S2DiqChUcidoHc
 Q6IshCAIYOglrEfKeSsI54yezAaadHI0W491lC2KQWj+jOgmKgO9Fxsuf
 g6VBlO7lmIDCuR1x/G9QP+1UtVw6qpj9r3EIfsOkmFh2New7MmvD1gz2U
 hwkDiOcPXgbr6J2yz7o6LMYdKHPKRwo0NC5e+1KoH0E9Hhu5S74hnPXL8 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="296715053"
X-IronPort-AV: E=Sophos;i="5.96,219,1665471600"; d="scan'208";a="296715053"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 06:11:45 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10551"; a="974694685"
X-IronPort-AV: E=Sophos;i="5.96,219,1665471600"; d="scan'208";a="974694685"
Received: from akramiss-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.54.203])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2022 06:11:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  5 Dec 2022 16:11:18 +0200
Message-Id: <0cc811a75982f0f5c7476cc42468a3b6b8d0e614.1670249413.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1670249413.git.jani.nikula@intel.com>
References: <cover.1670249413.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/backlight: convert DRM_DEBUG_KMS()
 to drm_dbg_kms()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix the final straggler.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_backlight.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 3599c7c8c007..8d8f9711aea8 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -866,8 +866,8 @@ static int intel_backlight_device_update_status(struct backlight_device *bd)
 
 	drm_modeset_lock(&i915->drm.mode_config.connection_mutex, NULL);
 
-	DRM_DEBUG_KMS("updating intel_backlight, brightness=%d/%d\n",
-		      bd->props.brightness, bd->props.max_brightness);
+	drm_dbg_kms(&i915->drm, "updating intel_backlight, brightness=%d/%d\n",
+		    bd->props.brightness, bd->props.max_brightness);
 	intel_panel_set_backlight(connector->base.state, bd->props.brightness,
 				  bd->props.max_brightness);
 
-- 
2.34.1

