Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3FD5161464
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2020 15:17:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 361EE6E04B;
	Mon, 17 Feb 2020 14:17:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E72C6E04B
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Feb 2020 14:17:26 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Feb 2020 06:17:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,453,1574150400"; d="scan'208";a="223837533"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 17 Feb 2020 06:17:22 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 17 Feb 2020 16:17:22 +0200
Date: Mon, 17 Feb 2020 16:17:22 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200217141722.GM13686@intel.com>
References: <20200211172532.14287-1-anshuman.gupta@intel.com>
 <20200211172532.14287-6-anshuman.gupta@intel.com>
 <20200217052227.GD11041@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200217052227.GD11041@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 5/7] drm/i915: Get first crtc instead of
 PIPE_A crtc
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 17, 2020 at 10:52:28AM +0530, Anshuman Gupta wrote:
> On 2020-02-11 at 22:55:30 +0530, Anshuman Gupta wrote:
> > intel_plane_fb_max_stride should return the max stride of
> > primary plane for first available pipe in intel device info
> > pipe_mask.
> > Similarly glk_force_audio_cdclk() should also use the first
> > available CRTC instead of pipe 'A' crtc to force the cdclk
> > changes.
> > =

> > changes since RFC:
> > - Introduced a helper to get first intel_crtc intel_get_first_crtc. [Vi=
lle]
> > v1:
> > - Used intel_get_first_crtc() instead of PIPE_A crtc in
> >   glk_force_audio_cdclk(). [Ville]
> Hi Ville,
> You had provided your RB on earlier revision
> https://patchwork.freedesktop.org/patch/351873/?series=3D72468&rev=3D2
> later u have provided the above review comment, as current
> patch fixes the above review comment.
> can i use your RB for this patch, if current patch is ok.

Yes, this patch looks ok.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> Thanks,
> Anshuman Gupta. =

> > =

> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_audio.c         | 2 +-
> >  drivers/gpu/drm/i915/display/intel_display.c       | 5 +++--
> >  drivers/gpu/drm/i915/display/intel_display_types.h | 6 ++++++
> >  3 files changed, 10 insertions(+), 3 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/d=
rm/i915/display/intel_audio.c
> > index 30fb7c887ff0..19bf206037c2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_audio.c
> > +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> > @@ -844,7 +844,7 @@ static void glk_force_audio_cdclk(struct drm_i915_p=
rivate *dev_priv,
> >  	struct intel_crtc *crtc;
> >  	int ret;
> >  =

> > -	crtc =3D intel_get_crtc_for_pipe(dev_priv, PIPE_A);
> > +	crtc =3D intel_get_first_crtc(dev_priv);
> >  	if (!crtc)
> >  		return;
> >  =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 5ba0b40fbfde..6fdaeb019fef 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -2715,9 +2715,10 @@ u32 intel_plane_fb_max_stride(struct drm_i915_pr=
ivate *dev_priv,
> >  =

> >  	/*
> >  	 * We assume the primary plane for pipe A has
> > -	 * the highest stride limits of them all.
> > +	 * the highest stride limits of them all,
> > +	 * if in case pipe A is disabled, use the first pipe from pipe_mask.
> >  	 */
> > -	crtc =3D intel_get_crtc_for_pipe(dev_priv, PIPE_A);
> > +	crtc =3D intel_get_first_crtc(dev_priv);
> >  	if (!crtc)
> >  		return 0;
> >  =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drive=
rs/gpu/drm/i915/display/intel_display_types.h
> > index d359f1636ba8..359eaa6703a8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1403,6 +1403,12 @@ vlv_pipe_to_channel(enum pipe pipe)
> >  	}
> >  }
> >  =

> > +static inline struct intel_crtc *
> > +intel_get_first_crtc(struct drm_i915_private *dev_priv)
> > +{
> > +	return to_intel_crtc(drm_crtc_from_index(&dev_priv->drm, 0));
> > +}
> > +
> >  static inline struct intel_crtc *
> >  intel_get_crtc_for_pipe(struct drm_i915_private *dev_priv, enum pipe p=
ipe)
> >  {
> > -- =

> > 2.24.0
> > =


-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
