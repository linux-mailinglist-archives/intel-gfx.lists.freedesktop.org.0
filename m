Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C3DF4F3CE7
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 19:34:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4894E10ED9D;
	Tue,  5 Apr 2022 17:34:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41BE110EDA9
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 17:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649180085; x=1680716085;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=2/AEScE7Kf70E5kOxZrXMv/RKj/eOioJa4Ri3oA3U2g=;
 b=OOow9Tj98jhdzg+3qmxIzL/bz8kspukKYFgHvcKK6g3OYvlI8Ma963mm
 9LpBAM+VgE6lxe2I6br5oqPAg/8X3ocBsiWfzX5dhEBY/HZbazTODk449
 Uw45lrWVJBBX6nvzXdxvKhpvvDBHElkhn9lgERW6I4rUpt8AwRxME615s
 0A5mLz31OTwmhHoDnMaWq0ELUQn+RJL0dJWQWwbTmSh5c2jyyYvY+CwfS
 63uhBZL5aWz6k6UNV2o5x1JuOPoka31jE3iVyWyRFj8jnVCYJLyriXG2j
 1SHIRHGK4XLVla4LjjOCnAdTsNZJNA2OzsQLx1PM9u7CDkimULbI7YvRX g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="260809974"
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="260809974"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2022 10:34:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,236,1643702400"; d="scan'208";a="651984439"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga002.fm.intel.com with SMTP; 05 Apr 2022 10:34:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Apr 2022 20:34:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Apr 2022 20:33:58 +0300
Message-Id: <20220405173410.11436-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
References: <20220405173410.11436-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 10/22] drm/i915/bios: Assume panel_type==0 if
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Just assume panel_type==0 always if the VBT gives us bogus data.
We actually already do this everywhere else except in
parse_panel_options() since we just leave i915->vbt.panel_type
zeroed. This also seems to be what Windows does.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 01e0b12e2dea..502d4c679198 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -613,13 +613,14 @@ parse_panel_options(struct drm_i915_private *i915)
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

