Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DF5278580
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Sep 2020 13:01:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AC056EC95;
	Fri, 25 Sep 2020 11:00:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 660B56E09A
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Sep 2020 11:00:58 +0000 (UTC)
IronPort-SDR: Bk4bAwGmkt/KTIBF11rWEFQK0vY4DOr1VErqqDx9aNf2z9iTR+DAjjW4AyAb8C5/0idMJT3vnb
 u5LwNTxAoZcw==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="161581386"
X-IronPort-AV: E=Sophos;i="5.77,301,1596524400"; d="scan'208";a="161581386"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2020 04:00:57 -0700
IronPort-SDR: hwJGooIskxcWJwQFN+gqcTXgvUeeR6TVnmgCgjFhg4qcv8+WFqra9LMaAJgk8VaFqeDNVE7IG3
 TV8aaVNCn5kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,301,1596524400"; d="scan'208";a="310769160"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 25 Sep 2020 04:00:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 25 Sep 2020 14:00:54 +0300
Date: Fri, 25 Sep 2020 14:00:54 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200925110054.GP6112@intel.com>
References: <20200924194810.10293-1-ville.syrjala@linux.intel.com>
 <1187052a52622a66b89267cc7573370419bcf832.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1187052a52622a66b89267cc7573370419bcf832.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Implement display WA #1142:kbl,
 cfl, cml
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

On Thu, Sep 24, 2020 at 08:43:33PM +0000, Souza, Jose wrote:
> On Thu, 2020-09-24 at 22:48 +0300, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <
> > ville.syrjala@linux.intel.com
> > >
> > =

> > Implement display w/a #1142. This supposedly fixes some underruns
> > with FBC+VTd. Bspec says we should use the same programming regardless
> > of circumstances. Apparently we should flip the magic bits before
> > turning on any planes so let's put this into the early w/as.
> > =

> > Cc: Lee Shawn C <
> > shawn.c.lee@intel.com
> > >
> > Signed-off-by: Ville Syrj=E4l=E4 <
> > ville.syrjala@linux.intel.com
> > >
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 9 +++++++++
> >  drivers/gpu/drm/i915/i915_reg.h              | 3 +++
> >  2 files changed, 12 insertions(+)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 5a9d933e425a..9d64187cfd56 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -18677,6 +18677,15 @@ static void intel_early_display_was(struct drm=
_i915_private *dev_priv)
> >  		intel_de_write(dev_priv, CHICKEN_PAR1_1,
> >  			       intel_de_read(dev_priv, CHICKEN_PAR1_1) | FORCE_ARB_IDLE_PLA=
NES);
> >  	}
> > +
> > +	if (IS_KABYLAKE(dev_priv) || IS_COFFEELAKE(dev_priv) || IS_COMETLAKE(=
dev_priv)) {
> =

> WA mentions that it is required only for KBL, but if Lee says that this h=
elps with his CML issues.

I think there's a note somewhere that says cfl+ are derived from the
last kbl, and I don't think there's are specific cfl/cml tags for w/as.

> =

> Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>

Ta.

> =

> > +		/* Display WA #1142:kbl,cfl,cml */
> > +		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
> > +			     KBL_ARB_FILL_SPARE_22, KBL_ARB_FILL_SPARE_22);
> > +		intel_de_rmw(dev_priv, CHICKEN_MISC_2,
> > +			     KBL_ARB_FILL_SPARE_13 | KBL_ARB_FILL_SPARE_14,
> > +			     KBL_ARB_FILL_SPARE_14);
> > +	}
> >  }
> >  =

> >  static void ibx_sanitize_pch_hdmi_port(struct drm_i915_private *dev_pr=
iv,
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i91=
5_reg.h
> > index d805d4da6181..3f97cc0fcbf1 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -7865,6 +7865,7 @@ enum {
> >  # define CHICKEN3_DGMG_DONE_FIX_DISABLE		(1 << 2)
> >  =

> >  #define CHICKEN_PAR1_1			_MMIO(0x42080)
> > +#define  KBL_ARB_FILL_SPARE_22		REG_BIT(22)
> >  #define  DIS_RAM_BYPASS_PSR2_MAN_TRACK	(1 << 16)
> >  #define  SKL_DE_COMPRESSED_HASH_MODE	(1 << 15)
> >  #define  DPA_MASK_VBLANK_SRD		(1 << 15)
> > @@ -7877,6 +7878,8 @@ enum {
> >  =

> >  #define CHICKEN_MISC_2		_MMIO(0x42084)
> >  #define  CNL_COMP_PWR_DOWN	(1 << 23)
> > +#define  KBL_ARB_FILL_SPARE_14	REG_BIT(14)
> > +#define  KBL_ARB_FILL_SPARE_13	REG_BIT(13)
> >  #define  GLK_CL2_PWR_DOWN	(1 << 12)
> >  #define  GLK_CL1_PWR_DOWN	(1 << 11)
> >  #define  GLK_CL0_PWR_DOWN	(1 << 10)
> > =


-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
