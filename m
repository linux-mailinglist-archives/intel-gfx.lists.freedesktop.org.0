Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD92D1AD43D
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 03:49:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BFC86E213;
	Fri, 17 Apr 2020 01:49:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 557336E213
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 01:49:25 +0000 (UTC)
IronPort-SDR: S3w/393tNH4/rh495dJ7s+JD+bX6dJSehbqjyMwcE86bK9kX/3SUTz++32lx0dk0X9iiCxtmVY
 8aLwVfQU4hZA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2020 18:49:24 -0700
IronPort-SDR: TaW7aTC31PJySNS+GzkFWwGM9zo+3CBdnxDSjk3erUFMnrF2Cm5Ibjjh/wbmhSBc9J+4rqtXab
 vHwJvcvXyv7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,393,1580803200"; d="scan'208";a="257427132"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga006.jf.intel.com with ESMTP; 16 Apr 2020 18:49:24 -0700
Date: Thu, 16 Apr 2020 18:49:24 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200417014924.GC3075330@mdroper-desk1.amr.corp.intel.com>
References: <20200415233435.3064257-1-matthew.d.roper@intel.com>
 <643acf452d23b2bff81a9dac443f22fe17181fef.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <643acf452d23b2bff81a9dac443f22fe17181fef.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: TBT AUX should use TC
 power well ops
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 15, 2020 at 04:58:58PM -0700, Souza, Jose wrote:
> On Wed, 2020-04-15 at 16:34 -0700, Matt Roper wrote:
> > As on ICL, we want to use the Type-C aux handlers for the TBT aux
> > wells
> > to ensure the DP_AUX_CH_CTL_TBT_IO flag is set properly.
> =

> Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Thanks.  CI came back clean, so I went ahead and pushed patch #1 of the
series.


Matt

> =

> > =

> > Fixes: 656409bbaf87 ("drm/i915/tgl: Add power well support")
> > Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > Cc: Imre Deak <imre.deak@intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_power.c | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> > b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 6cc0e23ca566..03bdde19c8c9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -4147,7 +4147,7 @@ static const struct i915_power_well_desc
> > tgl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX D TBT1",
> >  		.domains =3D TGL_AUX_D_TBT1_IO_POWER_DOMAINS,
> > -		.ops =3D &hsw_power_well_ops,
> > +		.ops =3D &icl_tc_phy_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -4158,7 +4158,7 @@ static const struct i915_power_well_desc
> > tgl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX E TBT2",
> >  		.domains =3D TGL_AUX_E_TBT2_IO_POWER_DOMAINS,
> > -		.ops =3D &hsw_power_well_ops,
> > +		.ops =3D &icl_tc_phy_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -4169,7 +4169,7 @@ static const struct i915_power_well_desc
> > tgl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX F TBT3",
> >  		.domains =3D TGL_AUX_F_TBT3_IO_POWER_DOMAINS,
> > -		.ops =3D &hsw_power_well_ops,
> > +		.ops =3D &icl_tc_phy_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -4180,7 +4180,7 @@ static const struct i915_power_well_desc
> > tgl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX G TBT4",
> >  		.domains =3D TGL_AUX_G_TBT4_IO_POWER_DOMAINS,
> > -		.ops =3D &hsw_power_well_ops,
> > +		.ops =3D &icl_tc_phy_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -4191,7 +4191,7 @@ static const struct i915_power_well_desc
> > tgl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX H TBT5",
> >  		.domains =3D TGL_AUX_H_TBT5_IO_POWER_DOMAINS,
> > -		.ops =3D &hsw_power_well_ops,
> > +		.ops =3D &icl_tc_phy_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,
> > @@ -4202,7 +4202,7 @@ static const struct i915_power_well_desc
> > tgl_power_wells[] =3D {
> >  	{
> >  		.name =3D "AUX I TBT6",
> >  		.domains =3D TGL_AUX_I_TBT6_IO_POWER_DOMAINS,
> > -		.ops =3D &hsw_power_well_ops,
> > +		.ops =3D &icl_tc_phy_aux_power_well_ops,
> >  		.id =3D DISP_PW_ID_NONE,
> >  		{
> >  			.hsw.regs =3D &icl_aux_power_well_regs,

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
