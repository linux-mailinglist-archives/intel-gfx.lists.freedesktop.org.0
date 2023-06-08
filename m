Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B2941728982
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 22:32:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42B7D10E087;
	Thu,  8 Jun 2023 20:32:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F23AA10E087
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 20:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686256324; x=1717792324;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o6xd0T+PuibL05okl0+5jHafyjR0qDEzshnzKQUkMTo=;
 b=LbHHZbgBis4XManxFTtyqlsIhjSr1OiekkmXtEBUwYOvJm7d5n4LLq6Z
 09zZftBbLCIPxKS1CVm4XAmHHF6m3K8JD/oqIukgDVwxANB/LOB58IV3N
 1FiXiijCU/iINmzXbj5BKkPEc/7c92HedsSWFuGllI9gDVBu4VRO9G291
 J1ijfhtRYB+llEbFOlehevkSqPIIjoRp1MxTOqdfXDZsvbzIbdr2zS9Tu
 1uifPAwmfiKr7shNL/1BEU6Pk4m/R3ZD8tWGvu0La5XvMLwaSKCm+3OOS
 F1xiFqVDt+WgACoFbT45NlLItru3/z0kQhawjFr3JZv1EBB9fSLLFydL3 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="421012725"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="421012725"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 13:31:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="710100835"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="710100835"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 08 Jun 2023 13:31:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Jun 2023 23:31:25 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 23:30:53 +0300
Message-Id: <20230608203057.23759-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230608203057.23759-1-ville.syrjala@linux.intel.com>
References: <20230608203057.23759-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 09/13] drm/i915/dsi: Do DSC/scaler disable
 earlier on icl+
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

Do the scaler disable in the spot where bspec has specfied it
for TGL+. And also move the DSC disable to match what
intel_ddi.c does.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index a33721bac5ae..ac5f30fc51bb 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1422,6 +1422,9 @@ static void gen11_dsi_post_disable(struct intel_atomic_state *state,
 	/* step2h,i,j: deconfig trancoder */
 	gen11_dsi_deconfigure_trancoder(encoder);
 
+	intel_dsc_disable(old_crtc_state);
+	skl_scaler_disable(old_crtc_state);
+
 	/* step3: disable port */
 	gen11_dsi_disable_port(encoder);
 
@@ -1429,10 +1432,6 @@ static void gen11_dsi_post_disable(struct intel_atomic_state *state,
 
 	/* step4: disable IO power */
 	gen11_dsi_disable_io_power(encoder);
-
-	intel_dsc_disable(old_crtc_state);
-
-	skl_scaler_disable(old_crtc_state);
 }
 
 static enum drm_mode_status gen11_dsi_mode_valid(struct drm_connector *connector,
-- 
2.39.3

