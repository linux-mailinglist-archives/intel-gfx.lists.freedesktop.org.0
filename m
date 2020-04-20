Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D5F01B1474
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 20:27:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB2DE6E1E2;
	Mon, 20 Apr 2020 18:27:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F298A6E1E2
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 18:27:24 +0000 (UTC)
IronPort-SDR: LsIZlqC/av84B6u9L15sHFlSF6ymxXEZEPaC6L8XOxOgn43BufMP5299Hsm/0vJvQrp82WT9Lg
 qPtUfasgchVQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 11:27:24 -0700
IronPort-SDR: n0m56/ijoF9pa6I1ludpPXSyGSQ7/f7TIktLp8ugiJEf/oEgfKOjFaETdUyqLybtUQ9Ldf3eTs
 VzLOrk4vdFLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,407,1580803200"; d="scan'208";a="273264233"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 20 Apr 2020 11:27:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Apr 2020 21:27:20 +0300
Date: Mon, 20 Apr 2020 21:27:20 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200420182720.GZ6112@intel.com>
References: <20200417134720.16654-1-ville.syrjala@linux.intel.com>
 <20200417134720.16654-2-ville.syrjala@linux.intel.com>
 <87mu761aj6.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87mu761aj6.fsf@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Move the TRANS_DDI_FUNC_CTL
 enable to a later point
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 20, 2020 at 05:45:01PM +0300, Jani Nikula wrote:
> On Fri, 17 Apr 2020, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> > No reason that I can see why we should enable TRANS_DDI_FUNC_CTL
> > before we set up the watermarks of confogiure the mbus stuff.
> > In fact reordering these seems to match the bspec sequence better,
> > and cricually will allow us to push the TRANS_DDI_FUNC_CTL enable
>       ^^^^^^^^^
> =

> The entire series is nice, but I especially like this "crucially"
> typo. It looks prezactly like a mix of crucially and critically.

Wasn't the only typo. One day I need to invest in a spell checker.

> =

> FWIW the series is Acked-by me, as Chris beat me to review. I also
> didn't spot anything obviously wrong.

Thanks for the reviews/acks. Series pushed to dinq.

> =

> BR,
> Jani.
> =

> =

> > into the encoder enable hook as a followup.
> >
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index af5b4055b38a..7a1e7b5ae84e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -7071,15 +7071,15 @@ static void hsw_crtc_enable(struct intel_atomic=
_state *state,
> >  	if (INTEL_GEN(dev_priv) >=3D 11)
> >  		icl_set_pipe_chicken(crtc);
> >  =

> > -	if (!transcoder_is_dsi(cpu_transcoder))
> > -		intel_ddi_enable_transcoder_func(new_crtc_state);
> > -
> >  	if (dev_priv->display.initial_watermarks)
> >  		dev_priv->display.initial_watermarks(state, crtc);
> >  =

> >  	if (INTEL_GEN(dev_priv) >=3D 11)
> >  		icl_pipe_mbus_enable(crtc);
> >  =

> > +	if (!transcoder_is_dsi(cpu_transcoder))
> > +		intel_ddi_enable_transcoder_func(new_crtc_state);
> > +
> >  	intel_encoders_enable(state, crtc);
> >  =

> >  	if (psl_clkgate_wa) {
> =

> -- =

> Jani Nikula, Intel Open Source Graphics Center

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
