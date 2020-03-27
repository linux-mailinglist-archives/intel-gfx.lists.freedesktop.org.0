Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62154195C38
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 18:15:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5BF56EA65;
	Fri, 27 Mar 2020 17:15:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6F866EA65
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 17:15:47 +0000 (UTC)
IronPort-SDR: I5nWFU2Lv9V9WeT+IZSTto/K+++nP/V7C5jGoIh8+I0Sdy/tPqyCycyRtbl16hDZDvOr84DKNh
 urbvxsuL8s8g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2020 10:15:47 -0700
IronPort-SDR: HczwcjzGQkBKBMOvN6Nj6fLLSG77tqjllQ4DNmM1Y6elBzg8UUKR3VsWMBunbBbjA4o6pyidJt
 pLzOva4L0pSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,313,1580803200"; d="scan'208";a="239156344"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 27 Mar 2020 10:15:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 Mar 2020 19:15:44 +0200
Date: Fri, 27 Mar 2020 19:15:44 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20200327171544.GI13686@intel.com>
References: <20200313164831.5980-1-ville.syrjala@linux.intel.com>
 <20200313164831.5980-7-ville.syrjala@linux.intel.com>
 <20200318230035.GF6675@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318230035.GF6675@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 06/13] drm/i915: Include port sync state in
 the state dump
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

On Wed, Mar 18, 2020 at 04:00:36PM -0700, Manasi Navare wrote:
> On Fri, Mar 13, 2020 at 06:48:24PM +0200, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Dump the port sync stat in intel_dump_pipe_config().
> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Reviewed-by: Manasi Navare <manasi.d.anavre@intel.com>

Pushed up to here. Thanks for the reviews so far.

> =

> Manasi
> =

> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 5c5a131db8b4..4840988dc58d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -12947,6 +12947,11 @@ static void intel_dump_pipe_config(const struc=
t intel_crtc_state *pipe_config,
> >  		    transcoder_name(pipe_config->cpu_transcoder),
> >  		    pipe_config->pipe_bpp, pipe_config->dither);
> >  =

> > +	drm_dbg_kms(&dev_priv->drm,
> > +		    "port sync: master transcoder: %s, slave transcoder bitmask =3D =
0x%x\n",
> > +		    transcoder_name(pipe_config->master_transcoder),
> > +		    pipe_config->sync_mode_slaves_mask);
> > +
> >  	if (pipe_config->has_pch_encoder)
> >  		intel_dump_m_n_config(pipe_config, "fdi",
> >  				      pipe_config->fdi_lanes,
> > -- =

> > 2.24.1
> > =


-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
