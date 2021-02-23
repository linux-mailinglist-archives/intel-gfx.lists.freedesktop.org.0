Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCD97322CCD
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Feb 2021 15:51:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1746D6E9C3;
	Tue, 23 Feb 2021 14:51:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C26566E9C3
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Feb 2021 14:51:14 +0000 (UTC)
IronPort-SDR: jYb8yHryJmHED/Mz1/Pe+B9vzVtF1zfuSMzPGYlCCi1t0XnJbhZ5pKvEuR7LP1aYJcLftfd+Jz
 /0C1UBMx1xAg==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="184118082"
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="184118082"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 06:51:14 -0800
IronPort-SDR: ndLkwveiWxYgQfgJV+cv6tHS4373ctxhobIOnv1kFDpN+K4CNyoIlBL1bNHhZpFb+w90oG83QY
 WR7okDb1/gkg==
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="403193803"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 06:51:12 -0800
Date: Tue, 23 Feb 2021 16:51:09 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20210223145109.GB991626@ideak-desk.fi.intel.com>
References: <20210222210400.940158-1-imre.deak@intel.com>
 <9312b3b5383cf8aa96f7565fd96699b8a83ad7fa.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9312b3b5383cf8aa96f7565fd96699b8a83ad7fa.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl+: Sanitize the DDI LANES/IO
 and AUX power domain names
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
Reply-To: imre.deak@intel.com
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 23, 2021 at 03:56:12PM +0200, Souza, Jose wrote:
> On Mon, 2021-02-22 at 23:04 +0200, Imre Deak wrote:
> > In Bspec the TGL TypeC ports are TC1-6, the AUX power well request flags
> > are USBC1-6/TBT1-6, so for clarity use these names in the port power
> > domain names instead of the D-I terminology (which Bspec uses only for
> > the ICL TypeC ports).
> > =

> > No functional change.
> > =

> > Cc: Souza Jose <jose.souza@intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_power.c    | 212 ++++++++----------
> >  .../drm/i915/display/intel_display_power.h    |  32 +++
> >  2 files changed, 130 insertions(+), 114 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drive=
rs/gpu/drm/i915/display/intel_display_power.c
> > index f00c1750febd..7e0eaa872350 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -2886,24 +2886,24 @@ intel_display_power_put_mask_in_set(struct drm_=
i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_PIPE_B) |			\
> >  	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
> >  	BIT_ULL(POWER_DOMAIN_PIPE_B_PANEL_FITTER) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_LANES) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_E_LANES) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_F_LANES) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_G_LANES) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_H_LANES) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_I_LANES) |	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_D) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_E) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_F) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_G) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_H) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_I) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_D_TBT) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_E_TBT) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_F_TBT) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_G_TBT) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_H_TBT) |		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_I_TBT) |		\
> > +	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC1) |	\
> > +	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC2) |	\
> > +	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC3) |	\
> > +	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC4) |	\
> > +	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC5) |	\
> > +	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC6) |	\
> > +	BIT_ULL(POWER_DOMAIN_AUX_USBC1) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUX_USBC2) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUX_USBC3) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUX_USBC4) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUX_USBC5) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUX_USBC6) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUX_TBT1) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUX_TBT2) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUX_TBT3) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUX_TBT4) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUX_TBT5) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUX_TBT6) |		\
> >  	BIT_ULL(POWER_DOMAIN_VGA) |			\
> >  	BIT_ULL(POWER_DOMAIN_AUDIO) |			\
> >  	BIT_ULL(POWER_DOMAIN_INIT))
> > @@ -2921,18 +2921,12 @@ intel_display_power_put_mask_in_set(struct drm_=
i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_AUX_C) |			\
> >  	BIT_ULL(POWER_DOMAIN_INIT))
> >  =

> > =

> > -#define TGL_DDI_IO_D_TC1_POWER_DOMAINS (	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_IO))
> > -#define TGL_DDI_IO_E_TC2_POWER_DOMAINS (	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_E_IO))
> > -#define TGL_DDI_IO_F_TC3_POWER_DOMAINS (	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_F_IO))
> > -#define TGL_DDI_IO_G_TC4_POWER_DOMAINS (	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_G_IO))
> > -#define TGL_DDI_IO_H_TC5_POWER_DOMAINS (	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_H_IO))
> > -#define TGL_DDI_IO_I_TC6_POWER_DOMAINS (	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_I_IO))
> > +#define TGL_DDI_IO_TC1_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_=
TC1)
> > +#define TGL_DDI_IO_TC2_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_=
TC2)
> > +#define TGL_DDI_IO_TC3_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_=
TC3)
> > +#define TGL_DDI_IO_TC4_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_=
TC4)
> > +#define TGL_DDI_IO_TC5_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_=
TC5)
> > +#define TGL_DDI_IO_TC6_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_PORT_DDI_IO_=
TC6)
> >  =

> > =

> >  #define TGL_AUX_A_IO_POWER_DOMAINS (		\
> >  	BIT_ULL(POWER_DOMAIN_AUX_IO_A) |	\
> > @@ -2941,44 +2935,34 @@ intel_display_power_put_mask_in_set(struct drm_=
i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_AUX_B))
> >  #define TGL_AUX_C_IO_POWER_DOMAINS (		\
> >  	BIT_ULL(POWER_DOMAIN_AUX_C))
> > -#define TGL_AUX_D_TC1_IO_POWER_DOMAINS (	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_D))
> > -#define TGL_AUX_E_TC2_IO_POWER_DOMAINS (	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_E))
> > -#define TGL_AUX_F_TC3_IO_POWER_DOMAINS (	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_F))
> > -#define TGL_AUX_G_TC4_IO_POWER_DOMAINS (	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_G))
> > -#define TGL_AUX_H_TC5_IO_POWER_DOMAINS (	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_H))
> > -#define TGL_AUX_I_TC6_IO_POWER_DOMAINS (	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_I))
> > -#define TGL_AUX_D_TBT1_IO_POWER_DOMAINS (	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_D_TBT))
> > -#define TGL_AUX_E_TBT2_IO_POWER_DOMAINS (	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_E_TBT))
> > -#define TGL_AUX_F_TBT3_IO_POWER_DOMAINS (	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_F_TBT))
> > -#define TGL_AUX_G_TBT4_IO_POWER_DOMAINS (	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_G_TBT))
> > -#define TGL_AUX_H_TBT5_IO_POWER_DOMAINS (	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_H_TBT))
> > -#define TGL_AUX_I_TBT6_IO_POWER_DOMAINS (	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_I_TBT))
> > +
> > +#define TGL_AUX_IO_USBC1_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC1)
> > +#define TGL_AUX_IO_USBC2_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC2)
> > +#define TGL_AUX_IO_USBC3_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC3)
> > +#define TGL_AUX_IO_USBC4_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC4)
> > +#define TGL_AUX_IO_USBC5_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC5)
> > +#define TGL_AUX_IO_USBC6_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_USBC6)
> > +
> > +#define TGL_AUX_IO_TBT1_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT1)
> > +#define TGL_AUX_IO_TBT2_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT2)
> > +#define TGL_AUX_IO_TBT3_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT3)
> > +#define TGL_AUX_IO_TBT4_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT4)
> > +#define TGL_AUX_IO_TBT5_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT5)
> > +#define TGL_AUX_IO_TBT6_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_TBT6)
> >  =

> > =

> >  #define TGL_TC_COLD_OFF_POWER_DOMAINS (		\
> > -	BIT_ULL(POWER_DOMAIN_AUX_D)	|	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_E)	|	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_F)	|	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_G)	|	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_H)	|	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_I)	|	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_D_TBT)	|	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_E_TBT)	|	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_F_TBT)	|	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_G_TBT)	|	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_H_TBT)	|	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_I_TBT)	|	\
> > +	BIT_ULL(POWER_DOMAIN_AUX_USBC1)	|	\
> > +	BIT_ULL(POWER_DOMAIN_AUX_USBC2)	|	\
> > +	BIT_ULL(POWER_DOMAIN_AUX_USBC3)	|	\
> > +	BIT_ULL(POWER_DOMAIN_AUX_USBC4)	|	\
> > +	BIT_ULL(POWER_DOMAIN_AUX_USBC5)	|	\
> > +	BIT_ULL(POWER_DOMAIN_AUX_USBC6)	|	\
> > +	BIT_ULL(POWER_DOMAIN_AUX_TBT1) |	\
> > +	BIT_ULL(POWER_DOMAIN_AUX_TBT2) |	\
> > +	BIT_ULL(POWER_DOMAIN_AUX_TBT3) |	\
> > +	BIT_ULL(POWER_DOMAIN_AUX_TBT4) |	\
> > +	BIT_ULL(POWER_DOMAIN_AUX_TBT5) |	\
> > +	BIT_ULL(POWER_DOMAIN_AUX_TBT6) |	\
> >  	BIT_ULL(POWER_DOMAIN_TC_COLD_OFF))
> >  =

> > =

> >  #define RKL_PW_4_POWER_DOMAINS (			\
> > @@ -2994,10 +2978,10 @@ intel_display_power_put_mask_in_set(struct drm_=
i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_AUDIO) |			\
> >  	BIT_ULL(POWER_DOMAIN_VGA) |			\
> >  	BIT_ULL(POWER_DOMAIN_TRANSCODER_B) |		\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_D_LANES) |	\
> > -	BIT_ULL(POWER_DOMAIN_PORT_DDI_E_LANES) |	\
> > -	BIT_ULL(POWER_DOMAIN_AUX_D) |			\
> > -	BIT_ULL(POWER_DOMAIN_AUX_E) |			\
> > +	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC1) |	\
> > +	BIT_ULL(POWER_DOMAIN_PORT_DDI_LANES_TC2) |	\
> > +	BIT_ULL(POWER_DOMAIN_AUX_USBC1) |		\
> > +	BIT_ULL(POWER_DOMAIN_AUX_USBC2) |		\
> >  	BIT_ULL(POWER_DOMAIN_INIT))
> >  =

> > =

> >  /*
> > @@ -4145,8 +4129,8 @@ static const struct i915_power_well_desc tgl_powe=
r_wells[] =3D {
> >  		}
> >  	},
> >  	{
> > -		.name =3D "DDI D TC1 IO",
> > -		.domains =3D TGL_DDI_IO_D_TC1_POWER_DOMAINS,
> > +		.name =3D "DDI IO TC1",
> > +		.domains =3D TGL_DDI_IO_TC1_POWER_DOMAINS,
> >  		.ops =3D &hsw_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> > @@ -4155,8 +4139,8 @@ static const struct i915_power_well_desc tgl_powe=
r_wells[] =3D {
> >  		},
> >  	},
> >  	{
> > -		.name =3D "DDI E TC2 IO",
> > -		.domains =3D TGL_DDI_IO_E_TC2_POWER_DOMAINS,
> > +		.name =3D "DDI IO TC2",
> > +		.domains =3D TGL_DDI_IO_TC2_POWER_DOMAINS,
> >  		.ops =3D &hsw_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> > @@ -4165,8 +4149,8 @@ static const struct i915_power_well_desc tgl_powe=
r_wells[] =3D {
> >  		},
> >  	},
> >  	{
> > -		.name =3D "DDI F TC3 IO",
> > -		.domains =3D TGL_DDI_IO_F_TC3_POWER_DOMAINS,
> > +		.name =3D "DDI IO TC3",
> > +		.domains =3D TGL_DDI_IO_TC3_POWER_DOMAINS,
> >  		.ops =3D &hsw_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> > @@ -4175,8 +4159,8 @@ static const struct i915_power_well_desc tgl_powe=
r_wells[] =3D {
> >  		},
> >  	},
> >  	{
> > -		.name =3D "DDI G TC4 IO",
> > -		.domains =3D TGL_DDI_IO_G_TC4_POWER_DOMAINS,
> > +		.name =3D "DDI IO TC4",
> > +		.domains =3D TGL_DDI_IO_TC4_POWER_DOMAINS,
> >  		.ops =3D &hsw_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> > @@ -4185,8 +4169,8 @@ static const struct i915_power_well_desc tgl_powe=
r_wells[] =3D {
> >  		},
> >  	},
> >  	{
> > -		.name =3D "DDI H TC5 IO",
> > -		.domains =3D TGL_DDI_IO_H_TC5_POWER_DOMAINS,
> > +		.name =3D "DDI IO TC5",
> > +		.domains =3D TGL_DDI_IO_TC5_POWER_DOMAINS,
> >  		.ops =3D &hsw_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> > @@ -4195,8 +4179,8 @@ static const struct i915_power_well_desc tgl_powe=
r_wells[] =3D {
> >  		},
> >  	},
> >  	{
> > -		.name =3D "DDI I TC6 IO",
> > -		.domains =3D TGL_DDI_IO_I_TC6_POWER_DOMAINS,
> > +		.name =3D "DDI IO TC6",
> > +		.domains =3D TGL_DDI_IO_TC6_POWER_DOMAINS,
> >  		.ops =3D &hsw_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> > @@ -4241,8 +4225,8 @@ static const struct i915_power_well_desc tgl_powe=
r_wells[] =3D {
> >  		},
> >  	},
> >  	{
> > -		.name =3D "AUX D TC1",
> > -		.domains =3D TGL_AUX_D_TC1_IO_POWER_DOMAINS,
> > +		.name =3D "AUX USBC1",
> > +		.domains =3D TGL_AUX_IO_USBC1_POWER_DOMAINS,
> >  		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> > @@ -4252,8 +4236,8 @@ static const struct i915_power_well_desc tgl_powe=
r_wells[] =3D {
> >  		},
> >  	},
> >  	{
> > -		.name =3D "AUX E TC2",
> > -		.domains =3D TGL_AUX_E_TC2_IO_POWER_DOMAINS,
> > +		.name =3D "AUX USBC2",
> > +		.domains =3D TGL_AUX_IO_USBC2_POWER_DOMAINS,
> >  		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> > @@ -4263,8 +4247,8 @@ static const struct i915_power_well_desc tgl_powe=
r_wells[] =3D {
> >  		},
> >  	},
> >  	{
> > -		.name =3D "AUX F TC3",
> > -		.domains =3D TGL_AUX_F_TC3_IO_POWER_DOMAINS,
> > +		.name =3D "AUX USBC3",
> > +		.domains =3D TGL_AUX_IO_USBC3_POWER_DOMAINS,
> >  		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> > @@ -4274,8 +4258,8 @@ static const struct i915_power_well_desc tgl_powe=
r_wells[] =3D {
> >  		},
> >  	},
> >  	{
> > -		.name =3D "AUX G TC4",
> > -		.domains =3D TGL_AUX_G_TC4_IO_POWER_DOMAINS,
> > +		.name =3D "AUX USBC4",
> > +		.domains =3D TGL_AUX_IO_USBC4_POWER_DOMAINS,
> >  		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> > @@ -4285,8 +4269,8 @@ static const struct i915_power_well_desc tgl_powe=
r_wells[] =3D {
> >  		},
> >  	},
> >  	{
> > -		.name =3D "AUX H TC5",
> > -		.domains =3D TGL_AUX_H_TC5_IO_POWER_DOMAINS,
> > +		.name =3D "AUX USBC5",
> > +		.domains =3D TGL_AUX_IO_USBC5_POWER_DOMAINS,
> >  		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> > @@ -4296,8 +4280,8 @@ static const struct i915_power_well_desc tgl_powe=
r_wells[] =3D {
> >  		},
> >  	},
> >  	{
> > -		.name =3D "AUX I TC6",
> > -		.domains =3D TGL_AUX_I_TC6_IO_POWER_DOMAINS,
> > +		.name =3D "AUX USBC6",
> > +		.domains =3D TGL_AUX_IO_USBC6_POWER_DOMAINS,
> >  		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> > @@ -4307,8 +4291,8 @@ static const struct i915_power_well_desc tgl_powe=
r_wells[] =3D {
> >  		},
> >  	},
> >  	{
> > -		.name =3D "AUX D TBT1",
> > -		.domains =3D TGL_AUX_D_TBT1_IO_POWER_DOMAINS,
> > +		.name =3D "AUX TBT1",
> > +		.domains =3D TGL_AUX_IO_TBT1_POWER_DOMAINS,
> >  		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> > @@ -4318,8 +4302,8 @@ static const struct i915_power_well_desc tgl_powe=
r_wells[] =3D {
> >  		},
> >  	},
> >  	{
> > -		.name =3D "AUX E TBT2",
> > -		.domains =3D TGL_AUX_E_TBT2_IO_POWER_DOMAINS,
> > +		.name =3D "AUX TBT2",
> > +		.domains =3D TGL_AUX_IO_TBT2_POWER_DOMAINS,
> >  		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> > @@ -4329,8 +4313,8 @@ static const struct i915_power_well_desc tgl_powe=
r_wells[] =3D {
> >  		},
> >  	},
> >  	{
> > -		.name =3D "AUX F TBT3",
> > -		.domains =3D TGL_AUX_F_TBT3_IO_POWER_DOMAINS,
> > +		.name =3D "AUX TBT3",
> > +		.domains =3D TGL_AUX_IO_TBT3_POWER_DOMAINS,
> >  		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> > @@ -4340,8 +4324,8 @@ static const struct i915_power_well_desc tgl_powe=
r_wells[] =3D {
> >  		},
> >  	},
> >  	{
> > -		.name =3D "AUX G TBT4",
> > -		.domains =3D TGL_AUX_G_TBT4_IO_POWER_DOMAINS,
> > +		.name =3D "AUX TBT4",
> > +		.domains =3D TGL_AUX_IO_TBT4_POWER_DOMAINS,
> >  		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> > @@ -4351,8 +4335,8 @@ static const struct i915_power_well_desc tgl_powe=
r_wells[] =3D {
> >  		},
> >  	},
> >  	{
> > -		.name =3D "AUX H TBT5",
> > -		.domains =3D TGL_AUX_H_TBT5_IO_POWER_DOMAINS,
> > +		.name =3D "AUX TBT5",
> > +		.domains =3D TGL_AUX_IO_TBT5_POWER_DOMAINS,
> >  		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> > @@ -4362,8 +4346,8 @@ static const struct i915_power_well_desc tgl_powe=
r_wells[] =3D {
> >  		},
> >  	},
> >  	{
> > -		.name =3D "AUX I TBT6",
> > -		.domains =3D TGL_AUX_I_TBT6_IO_POWER_DOMAINS,
> > +		.name =3D "AUX TBT6",
> > +		.domains =3D TGL_AUX_IO_TBT6_POWER_DOMAINS,
> >  		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> > @@ -4471,8 +4455,8 @@ static const struct i915_power_well_desc rkl_powe=
r_wells[] =3D {
> >  		}
> >  	},
> >  	{
> > -		.name =3D "DDI D TC1 IO",
> > -		.domains =3D TGL_DDI_IO_D_TC1_POWER_DOMAINS,
> > +		.name =3D "DDI IO TC1",
> > +		.domains =3D TGL_DDI_IO_TC1_POWER_DOMAINS,
> >  		.ops =3D &hsw_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> > @@ -4481,8 +4465,8 @@ static const struct i915_power_well_desc rkl_powe=
r_wells[] =3D {
> >  		},
> >  	},
> >  	{
> > -		.name =3D "DDI E TC2 IO",
> > -		.domains =3D TGL_DDI_IO_E_TC2_POWER_DOMAINS,
> > +		.name =3D "DDI IO TC2",
> > +		.domains =3D TGL_DDI_IO_TC2_POWER_DOMAINS,
> >  		.ops =3D &hsw_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> > @@ -4511,8 +4495,8 @@ static const struct i915_power_well_desc rkl_powe=
r_wells[] =3D {
> >  		},
> >  	},
> >  	{
> > -		.name =3D "AUX D TC1",
> > -		.domains =3D TGL_AUX_D_TC1_IO_POWER_DOMAINS,
> > +		.name =3D "AUX USBC1",
> > +		.domains =3D TGL_AUX_IO_USBC1_POWER_DOMAINS,
> >  		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> > @@ -4521,8 +4505,8 @@ static const struct i915_power_well_desc rkl_powe=
r_wells[] =3D {
> >  		},
> >  	},
> >  	{
> > -		.name =3D "AUX E TC2",
> > -		.domains =3D TGL_AUX_E_TC2_IO_POWER_DOMAINS,
> > +		.name =3D "AUX USBC2",
> > +		.domains =3D TGL_AUX_IO_USBC2_POWER_DOMAINS,
> >  		.ops =3D &icl_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drive=
rs/gpu/drm/i915/display/intel_display_power.h
> > index bc30c479be53..f3ca5d5c9778 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> > @@ -41,6 +41,14 @@ enum intel_display_power_domain {
> >  	POWER_DOMAIN_PORT_DDI_G_LANES,
> >  	POWER_DOMAIN_PORT_DDI_H_LANES,
> >  	POWER_DOMAIN_PORT_DDI_I_LANES,
> > +
> > +	POWER_DOMAIN_PORT_DDI_LANES_TC1 =3D POWER_DOMAIN_PORT_DDI_D_LANES, /*=
 tgl+ */
> =

> To follow others it should be POWER_DOMAIN_PORT_DDI_TC1_LANES
> =

> > +	POWER_DOMAIN_PORT_DDI_LANES_TC2,
> > +	POWER_DOMAIN_PORT_DDI_LANES_TC3,
> > +	POWER_DOMAIN_PORT_DDI_LANES_TC4,
> > +	POWER_DOMAIN_PORT_DDI_LANES_TC5,
> > +	POWER_DOMAIN_PORT_DDI_LANES_TC6,
> > +
> >  	POWER_DOMAIN_PORT_DDI_A_IO,
> >  	POWER_DOMAIN_PORT_DDI_B_IO,
> >  	POWER_DOMAIN_PORT_DDI_C_IO,
> > @@ -50,6 +58,14 @@ enum intel_display_power_domain {
> >  	POWER_DOMAIN_PORT_DDI_G_IO,
> >  	POWER_DOMAIN_PORT_DDI_H_IO,
> >  	POWER_DOMAIN_PORT_DDI_I_IO,
> > +
> > +	POWER_DOMAIN_PORT_DDI_IO_TC1 =3D POWER_DOMAIN_PORT_DDI_D_IO, /* tgl+ =
*/
> =

> Same as comment above: POWER_DOMAIN_PORT_DDI_TC1_IO
> =

> With this 2 renames, looks good to me.

I think in the end all the domain names should follow the
<domain>_<pipe/transcoder/port/aux_ch> pattern. I thought unifying the
current domain names could be done as a follow-up but adding new domains
should already follow this pattern. Does that make sense?

> Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> =

> > +	POWER_DOMAIN_PORT_DDI_IO_TC2,
> > +	POWER_DOMAIN_PORT_DDI_IO_TC3,
> > +	POWER_DOMAIN_PORT_DDI_IO_TC4,
> > +	POWER_DOMAIN_PORT_DDI_IO_TC5,
> > +	POWER_DOMAIN_PORT_DDI_IO_TC6,
> > +
> >  	POWER_DOMAIN_PORT_DSI,
> >  	POWER_DOMAIN_PORT_CRT,
> >  	POWER_DOMAIN_PORT_OTHER,
> > @@ -64,6 +80,14 @@ enum intel_display_power_domain {
> >  	POWER_DOMAIN_AUX_G,
> >  	POWER_DOMAIN_AUX_H,
> >  	POWER_DOMAIN_AUX_I,
> > +
> > +	POWER_DOMAIN_AUX_USBC1 =3D POWER_DOMAIN_AUX_D, /* tgl+ */
> > +	POWER_DOMAIN_AUX_USBC2,
> > +	POWER_DOMAIN_AUX_USBC3,
> > +	POWER_DOMAIN_AUX_USBC4,
> > +	POWER_DOMAIN_AUX_USBC5,
> > +	POWER_DOMAIN_AUX_USBC6,
> > +
> >  	POWER_DOMAIN_AUX_IO_A,
> >  	POWER_DOMAIN_AUX_C_TBT,
> >  	POWER_DOMAIN_AUX_D_TBT,
> > @@ -72,6 +96,14 @@ enum intel_display_power_domain {
> >  	POWER_DOMAIN_AUX_G_TBT,
> >  	POWER_DOMAIN_AUX_H_TBT,
> >  	POWER_DOMAIN_AUX_I_TBT,
> > +
> > +	POWER_DOMAIN_AUX_TBT1 =3D POWER_DOMAIN_AUX_D_TBT, /* tgl+ */
> > +	POWER_DOMAIN_AUX_TBT2,
> > +	POWER_DOMAIN_AUX_TBT3,
> > +	POWER_DOMAIN_AUX_TBT4,
> > +	POWER_DOMAIN_AUX_TBT5,
> > +	POWER_DOMAIN_AUX_TBT6,
> > +
> >  	POWER_DOMAIN_GMBUS,
> >  	POWER_DOMAIN_MODESET,
> >  	POWER_DOMAIN_GT_IRQ,
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
