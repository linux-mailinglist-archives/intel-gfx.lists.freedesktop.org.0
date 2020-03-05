Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4697717A6CB
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 14:55:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A01B26E32C;
	Thu,  5 Mar 2020 13:55:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E060D6E32C
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 13:55:37 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 05:55:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,518,1574150400"; d="scan'208";a="275094719"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 05 Mar 2020 05:55:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 05 Mar 2020 15:55:34 +0200
Date: Thu, 5 Mar 2020 15:55:34 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20200305135534.GN13686@intel.com>
References: <20200302213807.6488-1-swati2.sharma@intel.com>
 <08c5b5fb8abcd40b86b68365f67bec851ec6c6d6.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <08c5b5fb8abcd40b86b68365f67bec851ec6c6d6.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Decrease log level
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

On Thu, Mar 05, 2020 at 08:55:31AM +0000, Lisovskiy, Stanislav wrote:
> On Tue, 2020-03-03 at 03:08 +0530, Swati Sharma wrote:
> > Converting error to debug print if sink fails to configure scrambling
> > or
> > TMDS bit clock ratio. In this case, we are timing out while disabling
> > the scrambling and setting the SCDC ratio, as there is no response
> > to the I2C SCDC write from the sink device. Error isn't due to
> > something
> > wrong done from driver side.
> > =

> > Signed-off-by: Swati Sharma <swati2.sharma@intel.com>
> > Suggested-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> =

> Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Pushed to dinq. Thanks for the patch and review.

> =

> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 284219da7df8..457ca88cd277 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -3564,8 +3564,9 @@ static void intel_enable_ddi_hdmi(struct
> > intel_encoder *encoder,
> >  	if (!intel_hdmi_handle_sink_scrambling(encoder, connector,
> >  					       crtc_state-
> > >hdmi_high_tmds_clock_ratio,
> >  					       crtc_state-
> > >hdmi_scrambling))
> > -		DRM_ERROR("[CONNECTOR:%d:%s] Failed to configure sink
> > scrambling/TMDS bit clock ratio\n",
> > -			  connector->base.id, connector->name);
> > +		DRM_DEBUG_KMS("[CONNECTOR:%d:%s] Failed to configure
> > sink "
> > +			      "scrambling/TMDS bit clock ratio\n",
> > +			       connector->base.id, connector->name);
> >  =

> >  	/* Display WA #1143: skl,kbl,cfl */
> >  	if (IS_GEN9_BC(dev_priv)) {
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
