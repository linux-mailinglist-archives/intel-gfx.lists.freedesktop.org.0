Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE607561EC3
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 17:07:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1863F11AFC0;
	Thu, 30 Jun 2022 15:07:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EB7611AFC0
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 15:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656601650; x=1688137650;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=V+nt7VagnYg5GeCC2d4Cai8nCyvTUFl1Wll+UrShvh8=;
 b=djX1ijlOS1EJi6uvg97ibbNt79+N3Au1Miw/PmJUpu2CqCYuGQ7XXxiR
 fUg6LUdOdemRO1Lq40CxK02gW1IjHvTZhDK/fLJxKPeWzWSZ5oQcRM2OS
 LcOawm8/785IUrl6i0bAuUpV26KPXYZephHdwSjpk4brovEvmsVjIctiO
 RiblqnEmc5XG5Gcw5CLkL4ypV3/SoUF0pyvK8LaXj08AwMtitxzM1o40I
 Rdq7Eddpu1yHNhDq6DbSPoY0VhPr+SQvKdCYR43+Odg6O5p5I/f1UG0gD
 h/eOhB2fP8WYtM2hwWXxtD/Orr3BUeJPwJ/DNqSbRCgZZbXx1ma/17ET0 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10393"; a="346363745"
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="346363745"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 08:06:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,234,1650956400"; d="scan'208";a="591281353"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.161])
 by orsmga002.jf.intel.com with SMTP; 30 Jun 2022 08:06:10 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 30 Jun 2022 18:06:09 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 30 Jun 2022 18:06:00 +0300
Message-Id: <20220630150600.24611-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220630150600.24611-1-ville.syrjala@linux.intel.com>
References: <20220630150600.24611-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Nuke PCH_JSP
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

JSP is based on ICP and we don't really need to differentiate
between the two. So let's just delcare JSP to be ICP.

The only slight change here is for Wa_14011294188 which we
used to apply for JSP but now we'll only apply to MCC. This
should be fine since the issue being dealt with was introduced
in TGP and inherited into MCC. JSP being derived from ICP
should not need this workaround.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
 drivers/gpu/drm/i915/intel_pch.c                   | 3 ++-
 drivers/gpu/drm/i915/intel_pch.h                   | 4 +---
 3 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index a9cb27f1c964..589af257edeb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -1608,7 +1608,7 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
 	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
 
 	/* Wa_14011294188:ehl,jsl,tgl,rkl,adl-s */
-	if (INTEL_PCH_TYPE(dev_priv) >= PCH_JSP &&
+	if (INTEL_PCH_TYPE(dev_priv) >= PCH_TGP &&
 	    INTEL_PCH_TYPE(dev_priv) < PCH_DG1)
 		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D, 0,
 			     PCH_DPMGUNIT_CLOCK_GATE_DISABLE);
diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/intel_pch.c
index b45c504c6f03..0fec25be146a 100644
--- a/drivers/gpu/drm/i915/intel_pch.c
+++ b/drivers/gpu/drm/i915/intel_pch.c
@@ -128,7 +128,8 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
 	case INTEL_PCH_JSP_DEVICE_ID_TYPE:
 		drm_dbg_kms(&dev_priv->drm, "Found Jasper Lake PCH\n");
 		drm_WARN_ON(&dev_priv->drm, !IS_JSL_EHL(dev_priv));
-		return PCH_JSP;
+		/* JSP is ICP compatible */
+		return PCH_ICP;
 	case INTEL_PCH_ADP_DEVICE_ID_TYPE:
 	case INTEL_PCH_ADP2_DEVICE_ID_TYPE:
 	case INTEL_PCH_ADP3_DEVICE_ID_TYPE:
diff --git a/drivers/gpu/drm/i915/intel_pch.h b/drivers/gpu/drm/i915/intel_pch.h
index 07f6f5517968..7c8ce9781d1a 100644
--- a/drivers/gpu/drm/i915/intel_pch.h
+++ b/drivers/gpu/drm/i915/intel_pch.h
@@ -22,8 +22,7 @@ enum intel_pch {
 	PCH_LPT,	/* Lynxpoint/Wildcatpoint PCH */
 	PCH_SPT,        /* Sunrisepoint/Kaby Lake PCH */
 	PCH_CNP,        /* Cannon/Comet Lake PCH */
-	PCH_ICP,	/* Ice Lake PCH */
-	PCH_JSP,	/* Jasper Lake PCH */
+	PCH_ICP,	/* Ice Lake/Jasper Lake PCH */
 	PCH_TGP,	/* Tiger Lake/Mule Creek Canyon PCH */
 	PCH_ADP,	/* Alder Lake PCH */
 
@@ -67,7 +66,6 @@ enum intel_pch {
 #define HAS_PCH_DG2(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG2)
 #define HAS_PCH_ADP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_ADP)
 #define HAS_PCH_DG1(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG1)
-#define HAS_PCH_JSP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_JSP)
 #define HAS_PCH_TGP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_TGP)
 #define HAS_PCH_ICP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_ICP)
 #define HAS_PCH_CNP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_CNP)
-- 
2.35.1

