Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 504DC286AEF
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 00:36:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3AEC6E9CA;
	Wed,  7 Oct 2020 22:36:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4BC06E9CA
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Oct 2020 22:36:30 +0000 (UTC)
IronPort-SDR: nkAFA8I+X7lKsyD8rfcfS2lscoBt/m/O92lLvWkOoAaeQM7E46iE7y7cZXKLvxQcuZd4RQqi2o
 eiCcVx4Ndh0w==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="145055510"
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; d="scan'208";a="145055510"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 15:36:30 -0700
IronPort-SDR: SBaaLAg9QUw5fTo5edjrGoAS58VbByqpbAwY/hdKfXUMKfACLhs/lvdFW4z+z5t7SnG1MMteJc
 iEltAHIrvPpg==
X-IronPort-AV: E=Sophos;i="5.77,348,1596524400"; d="scan'208";a="528200777"
Received: from lewisjos-mobl3.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.51.10])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2020 15:36:30 -0700
Date: Wed, 7 Oct 2020 15:36:29 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201007223629.kor4sb54pnlnh6th@ldmartin-desk1>
X-Patchwork-Hint: ignore
References: <20201006143349.5561-1-ville.syrjala@linux.intel.com>
 <20201006143349.5561-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201006143349.5561-5-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 04/20] drm/i915: Give DDI encoders even
 better names
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

On Tue, Oct 06, 2020 at 05:33:33PM +0300, Ville Syrj=E4l=E4 wrote:
>From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
>
>Let's pimp the DDI encoder->name to reflect what the spec calls them.
>Ie. on pre-tgl DDI A-F, on tgl+ DDI A-C or DDI TC1-6.
>
>Also since each encoder is really a combination of the DDI and the PHY
>we include the PHY name as well.
>
>ICL is a bit special since it already has the two different types
>of DDIs (combo or TC) but it still calls them just DDI A-F regarless
>of the type. For that let's add an extra "(TC)" note to remind
>is which type of DDI it really is.
>
>The code is darn ugly, but not sure there's much we can do about it.
>
>Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

this also achieves one of the goals of my old series I never
completed (https://patchwork.freedesktop.org/series/71330/).
I'm ok going this direction instead.


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_ddi.c | 27 ++++++++++++++++++++++--
> 1 file changed, 25 insertions(+), 2 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i9=
15/display/intel_ddi.c
>index d1e4cb04e90d..5a30bc6a6c49 100644
>--- a/drivers/gpu/drm/i915/display/intel_ddi.c
>+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>@@ -5171,8 +5171,31 @@ void intel_ddi_init(struct drm_i915_private *dev_pr=
iv, enum port port)
>
> 	encoder =3D &dig_port->base;
>
>-	drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
>-			 DRM_MODE_ENCODER_TMDS, "DDI %c", port_name(port));
>+	if (INTEL_GEN(dev_priv) >=3D 12) {
>+		enum tc_port tc_port =3D intel_port_to_tc(dev_priv, port);
>+
>+		drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
>+				 DRM_MODE_ENCODER_TMDS,
>+				 "DDI %s%c/PHY %s%c",
>+				 port >=3D PORT_TC1 ? "TC" : "",
>+				 port >=3D PORT_TC1 ? port_name(port) : port - PORT_TC1 + '1',
>+				 tc_port !=3D TC_PORT_NONE ? "TC" : "",
>+				 tc_port !=3D TC_PORT_NONE ? phy_name(phy) : tc_port - TC_PORT_TC1 + =
'1');
>+	} else if (INTEL_GEN(dev_priv) >=3D 11) {
>+		enum tc_port tc_port =3D intel_port_to_tc(dev_priv, port);
>+
>+		drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
>+				 DRM_MODE_ENCODER_TMDS,
>+				 "DDI %c%s/PHY %s%c",
>+				 port_name(port),
>+				 port >=3D PORT_C ? " (TC)" : "",
>+				 tc_port !=3D TC_PORT_NONE ? "TC" : "",
>+				 tc_port !=3D TC_PORT_NONE ? phy_name(phy) : tc_port - TC_PORT_TC1 + =
'1');
>+	} else {
>+		drm_encoder_init(&dev_priv->drm, &encoder->base, &intel_ddi_funcs,
>+				 DRM_MODE_ENCODER_TMDS,
>+				 "DDI %c/PHY %c", port_name(port),  phy_name(phy));
>+	}
>
> 	mutex_init(&dig_port->hdcp_mutex);
> 	dig_port->num_hdcp_streams =3D 0;
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
