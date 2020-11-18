Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8612B75FB
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Nov 2020 06:43:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0F676E2EF;
	Wed, 18 Nov 2020 05:43:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB3BD6E2EF
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Nov 2020 05:43:14 +0000 (UTC)
IronPort-SDR: jtAWDPXzN5jyW+nXsc/LZkJbt0Kl2JKtfvJvfMq3eTWlPyVsU/SIg9Kfj/3iLpqbC4/M6Ji0pa
 +Vfl2A62RfBA==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="189140393"
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="189140393"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 21:43:13 -0800
IronPort-SDR: CowjJxvmaDnxGawpdoa2th+3kOAGY5RnA1SN1BUGX+fRwaZYVzVWIUHnnDK0XP2Ukz8Hy4F3ML
 +UCwNANzAOiA==
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="330332111"
Received: from jalame-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.213.166.181])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 21:43:12 -0800
Date: Tue, 17 Nov 2020 21:43:12 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201118054312.b7b346zo7suwtj6v@ldmartin-desk1>
References: <20201117154028.8516-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201117154028.8516-1-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix the DDI encoder names
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 17, 2020 at 05:40:28PM +0200, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>I totally fumbled the ?: usage when generating the DDI encoder
>names. Reverse the things that need reversing, and to make it
>a bit less messy add a few macros to hide the arithmetic on the
>port enums.
>
>Cc: Jani Nikula <jani.nikula@linux.intel.com>
>Fixes: 2d709a5a624c ("drm/i915: Give DDI encoders even better names")
>Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>---
> drivers/gpu/drm/i915/display/intel_ddi.c | 9 ++++++---
> 1 file changed, 6 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index 9d80e47e9558..2de2c69db7f2 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -5295,6 +5295,9 @@ static enum hpd_pin cnl_hpd_pin(struct drm_i915_priv=
ate *dev_priv,
> 	return HPD_PORT_A + port - PORT_A;
> }
>
>+#define port_tc_name(port) ((port) - PORT_TC1 + '1')
>+#define tc_port_name(tc_port) ((tc_port) - TC_PORT_1 + '1')

hopefully we won't have more than 10 ports. Also, not sure "_name" is
accurate since it's only the string version of the number. Maybe
port_tc_to_str()/tc_port_to_str() ?

either way,

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>+
> void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
> {
> 	struct intel_digital_port *dig_port;
>@@ -5350,9 +5353,9 @@ void intel_ddi_init(struct drm_i915_private *dev_pri=
v, enum port port)
> 				 DRM_MODE_ENCODER_TMDS,
> 				 "DDI %s%c/PHY %s%c",
> 				 port >=3D PORT_TC1 ? "TC" : "",
>-				 port >=3D PORT_TC1 ? port_name(port) : port - PORT_TC1 + '1',
>+				 port >=3D PORT_TC1 ? port_tc_name(port) : port_name(port),
> 				 tc_port !=3D TC_PORT_NONE ? "TC" : "",
>-				 tc_port !=3D TC_PORT_NONE ? phy_name(phy) : tc_port - TC_PORT_1 + '1=
');
>+				 tc_port !=3D TC_PORT_NONE ? tc_port_name(tc_port) : phy_name(phy));
> 	} else if (INTEL_GEN(dev_priv) >=3D 11) {
> 		enum tc_port tc_port =3D intel_port_to_tc(dev_priv, port);
>
>@@ -5362,7 +5365,7 @@ void intel_ddi_init(struct drm_i915_private *dev_pri=
v, enum port port)
> 				 port_name(port),
> 				 port >=3D PORT_C ? " (TC)" : "",
> 				 tc_port !=3D TC_PORT_NONE ? "TC" : "",
>-				 tc_port !=3D TC_PORT_NONE ? phy_name(phy) : tc_port - TC_PORT_1 + '1=
');
>+				 tc_port !=3D TC_PORT_NONE ? tc_port_name(tc_port) : phy_name(phy));
> 	} else {
> 		drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
> 				 DRM_MODE_ENCODER_TMDS,
>-- =

>2.26.2
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
