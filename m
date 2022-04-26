Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE52351090E
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Apr 2022 21:32:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1765F10E56B;
	Tue, 26 Apr 2022 19:32:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1951410E56B
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Apr 2022 19:32:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651001561; x=1682537561;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5/Qgdbf+ob7UY871k7Pk0GWg5ZebD7N8BP0VaeFwFOs=;
 b=chKZBiprVW0ij39Q313uRpLUNuI3hxMZRFXH78MylBWcBfNIYlXdOjji
 Qj/FLoglDDvoHDqOIEsRvnnSfVPEF/ymxUIZAKff0VYcMGqv+m7oEDYVB
 zqFVG+50zC9MMw3WNc0yjS8HfQi5iDvi/48WLNMG9J789HYXPTx1qmDvZ
 ng7PTptKidOl+7HAkGToGXfO62nGDxcnaC9WVuD7Dn1cLmVadKVMrxhEu
 Ik2N8m0Gz8v5GZTQJUXIHY9l3lkj9/C2JH11Q6db/HO4fzFBArC1mwWeJ
 0Vl45JyQsV52vsDC+RSPnkewjnknUSD5JIGtvadUhaRYdyNgmGLAKL5Qc A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10329"; a="246264366"
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="246264366"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2022 12:32:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,291,1643702400"; d="scan'208";a="617152737"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga008.fm.intel.com with SMTP; 26 Apr 2022 12:32:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Apr 2022 22:32:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 26 Apr 2022 22:32:09 +0300
Message-Id: <20220426193222.3422-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
References: <20220426193222.3422-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 05/18] drm/i915/bios: Assume panel_type==0 if
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

