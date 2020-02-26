Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01558170C52
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 00:09:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 677256E27F;
	Wed, 26 Feb 2020 23:09:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B69C06E27F
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 23:09:29 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 15:09:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,489,1574150400"; d="scan'208";a="261231158"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga004.fm.intel.com with ESMTP; 26 Feb 2020 15:09:28 -0800
Date: Wed, 26 Feb 2020 15:09:28 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200226230928.GD3936367@mdroper-desk1.amr.corp.intel.com>
References: <20200220231843.3127468-1-matthew.d.roper@intel.com>
 <aedc17580c809c06bd70cb1446047fb826dadb80.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aedc17580c809c06bd70cb1446047fb826dadb80.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Allow DC5/DC6 entry while PG2
 is active
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 26, 2020 at 02:19:52PM -0800, Souza, Jose wrote:
> On Thu, 2020-02-20 at 15:18 -0800, Matt Roper wrote:
> > On gen12, we no longer need to disable DC5/DC6 when when PG2 is in
> > use
> > (which translates to cases where we're using VDSC on pipe A).
> > =

> > Bspec: 49193
> =

> Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Applied to dinq.  Thanks for the review.


Matt

> =

> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >  .../gpu/drm/i915/display/intel_display_power.c   | 16 +++++++++++---
> > --
> >  .../gpu/drm/i915/display/intel_display_power.h   |  1 +
> >  2 files changed, 12 insertions(+), 5 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> > b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 8ba68ec6dc24..1d21a850e933 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -926,10 +926,16 @@ void
> > intel_display_power_set_target_dc_state(struct drm_i915_private
> > *dev_priv,
> >  =

> >  static void assert_can_enable_dc5(struct drm_i915_private *dev_priv)
> >  {
> > -	bool pg2_enabled =3D
> > intel_display_power_well_is_enabled(dev_priv,
> > -					SKL_DISP_PW_2);
> > +	enum i915_power_well_id high_pg;
> >  =

> > -	WARN_ONCE(pg2_enabled, "PG2 not disabled to enable DC5.\n");
> > +	/* Power wells at this level and above must be disabled for DC5
> > entry */
> > +	if (INTEL_GEN(dev_priv) >=3D 12)
> > +		high_pg =3D TGL_DISP_PW_3;
> > +	else
> > +		high_pg =3D SKL_DISP_PW_2;
> > +
> > +	WARN_ONCE(intel_display_power_well_is_enabled(dev_priv,
> > high_pg),
> > +		  "Power wells above platform's DC5 limit still
> > enabled.\n");
> >  =

> >  	WARN_ONCE((intel_de_read(dev_priv, DC_STATE_EN) &
> > DC_STATE_EN_UPTO_DC5),
> >  		  "DC5 already programmed to be enabled.\n");
> > @@ -2712,7 +2718,7 @@ void intel_display_power_put(struct
> > drm_i915_private *dev_priv,
> >  	BIT_ULL(POWER_DOMAIN_INIT))
> >  =

> >  #define TGL_DISPLAY_DC_OFF_POWER_DOMAINS (		\
> > -	TGL_PW_2_POWER_DOMAINS |			\
> > +	TGL_PW_3_POWER_DOMAINS |			\
> >  	BIT_ULL(POWER_DOMAIN_MODESET) |			\
> >  	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
> >  	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
> > @@ -3908,7 +3914,7 @@ static const struct i915_power_well_desc
> > tgl_power_wells[] =3D {
> >  		.name =3D "power well 3",
> >  		.domains =3D TGL_PW_3_POWER_DOMAINS,
> >  		.ops =3D &hsw_power_well_ops,
> > -		.id =3D DISP_PW_ID_NONE,
> > +		.id =3D TGL_DISP_PW_3,
> >  		{
> >  			.hsw.regs =3D &hsw_power_well_regs,
> >  			.hsw.idx =3D ICL_PW_CTL_IDX_PW_3,
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h
> > b/drivers/gpu/drm/i915/display/intel_display_power.h
> > index 601e000ffd0d..da64a5edae7a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> > @@ -100,6 +100,7 @@ enum i915_power_well_id {
> >  	SKL_DISP_PW_MISC_IO,
> >  	SKL_DISP_PW_1,
> >  	SKL_DISP_PW_2,
> > +	TGL_DISP_PW_3,
> >  	SKL_DISP_DC_OFF,
> >  };
> >  =


-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
