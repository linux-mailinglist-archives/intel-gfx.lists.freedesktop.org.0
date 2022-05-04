Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFDFE51A319
	for <lists+intel-gfx@lfdr.de>; Wed,  4 May 2022 17:05:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1369010ED11;
	Wed,  4 May 2022 15:05:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD3A210ECE2
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 May 2022 15:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651676699; x=1683212699;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5/Qgdbf+ob7UY871k7Pk0GWg5ZebD7N8BP0VaeFwFOs=;
 b=QVKGfkNY/vqwi6/T+d094FdDSFrg/mY2+cmdHM5T2cO8PZtSJ3mqSNKh
 cPRjFMDTzvyxyfN/QmsczZdJbKcdTcUvKjeghcqTAL2YWN2zg6ODChoGV
 VWZ03t+/viiKELvWzjrK07pIrLw62wGCEavZi9dc/2Q3KmhnJLNE20nEZ
 Lat2BZUE8UU6PzTjPySLKlYApB+KYfQi71pWi32f3JvzY2Hs/Jcv3/s6R
 pkxDKluwRXnq/nEHY4IqJtgjmJtrUxu31gXwZO8CMZrdsl11b4LBTNOOt
 ldWr5Lt6ICXN61cR+2Lv452gKxBN8ECBpXkWojQd9r6KomRNoLOcZ1xQd A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="266634550"
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="266634550"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2022 08:04:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,198,1647327600"; d="scan'208";a="620839753"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga008.fm.intel.com with SMTP; 04 May 2022 08:04:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 May 2022 18:04:56 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 May 2022 18:04:36 +0300
Message-Id: <20220504150440.13748-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220504150440.13748-1-ville.syrjala@linux.intel.com>
References: <20220504150440.13748-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/9] drm/i915/bios: Assume panel_type==0 if
 the VBT has bogus data
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Just assume panel_type==0 always if the VBT gives us bogus data.
We actually already do this everywhere else except in
parse_panel_options() since we just leave i915->vbt.panel_type
zeroed. This also seems to be what Windows does.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index ecfce9adfbbb..53a7a16df231 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -619,13 +619,14 @@ parse_panel_options(struct drm_i915_private *i915)
 	} else {
 		if (lvds_options->panel_type > 0xf) {
 			drm_dbg_kms(&i915->drm,
-				    "Invalid VBT panel type 0x%x\n",
+				    "Invalid VBT panel type 0x%x, assuming 0\n",
 				    lvds_options->panel_type);
-			return;
+			panel_type = 0;
+		} else {
+			panel_type = lvds_options->panel_type;
+			drm_dbg_kms(&i915->drm, "Panel type: %d (VBT)\n",
+				    panel_type);
 		}
-		panel_type = lvds_options->panel_type;
-		drm_dbg_kms(&i915->drm, "Panel type: %d (VBT)\n",
-			    panel_type);
 	}
 
 	i915->vbt.panel_type = panel_type;
-- 
2.35.1

