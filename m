Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D837FBA74
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 13:47:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7CB510E504;
	Tue, 28 Nov 2023 12:47:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D2CA10E504
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 12:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701175663; x=1732711663;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Xyqfi+gsOIHKPvAqvqXNZzLc3t1v5M1N/M3P57Tmks4=;
 b=ff/aq5kf296zTfgV2TPZAsFU+aoIkLrmR4gkk44dUVFLZO3pUwo3Pas1
 RgSFOZFetyzgiW0CPOEuAxyKozX1B/Okkgy6qN8aRuM2lCRYri8GR/wJh
 /KBhtmz6zS38SRfB7KLqkgx6LBt9zu69xfyGngEcIvmpWKZBSeJyxYWvv
 gOXag8oAXuswbGZU/uhLKFQad7qHoRwknE4Ikduxw3qZNt1EIsuadTIqw
 yn80IZ/usiOc4kOu/prs1QE7dtA84gl5Xqavv7LbCcWPKtQv4gYMsPWX9
 6Nw8B5yOcUbG7WJ77Kfawb24pW1JY9uS7UIYcdrI/urx8mHAAuIrZS8au A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="14477041"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="14477041"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 04:47:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="886397397"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="886397397"
Received: from mravivx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.42.57])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 04:47:38 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <ZWXfyQi89jG0ynC_@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231127145028.4899-1-ville.syrjala@linux.intel.com>
 <8734wq83uo.fsf@intel.com> <ZWXfyQi89jG0ynC_@intel.com>
Date: Tue, 28 Nov 2023 14:47:35 +0200
Message-ID: <87jzq26o48.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Skip some timing checks on
 BXT/GLK DSI transcoders
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 28 Nov 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Tue, Nov 28, 2023 at 02:22:23PM +0200, Jani Nikula wrote:
>> On Mon, 27 Nov 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >
>> > Apparently some BXT/GLK systems have DSI panels whose timings
>> > don't agree with the normal cpu transcoder hblank>=3D32 limitation.
>> > This is perhaps fine as there are no specific hblank/etc. limits
>> > listed for the BXT/GLK DSI transcoders.
>> >
>> > Move those checks out from the global intel_mode_valid() into
>> > into connector specific .mode_valid() hooks, skipping BXT/GLK
>> > DSI connectors. We'll leave the basic [hv]display/[hv]total
>> > checks in intel_mode_valid() as those seem like sensible upper
>> > limits regardless of the transcoder used.
>> >
>> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9720
>> > Fixes: 8f4b1068e7fc ("drm/i915: Check some transcoder timing minimum l=
imits")
>> > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/icl_dsi.c       |  7 +++++++
>> >  drivers/gpu/drm/i915/display/intel_crt.c     |  5 +++++
>> >  drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++++
>> >  drivers/gpu/drm/i915/display/intel_display.h |  3 +++
>> >  drivers/gpu/drm/i915/display/intel_dp.c      |  4 ++++
>> >  drivers/gpu/drm/i915/display/intel_dp_mst.c  |  4 ++++
>> >  drivers/gpu/drm/i915/display/intel_dvo.c     |  6 ++++++
>> >  drivers/gpu/drm/i915/display/intel_hdmi.c    |  4 ++++
>> >  drivers/gpu/drm/i915/display/intel_lvds.c    |  5 +++++
>> >  drivers/gpu/drm/i915/display/intel_sdvo.c    |  8 +++++++-
>> >  drivers/gpu/drm/i915/display/intel_tv.c      |  8 +++++++-
>> >  drivers/gpu/drm/i915/display/vlv_dsi.c       | 18 +++++++++++++++++-
>> >  12 files changed, 79 insertions(+), 3 deletions(-)
>> >
>> > diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/=
i915/display/icl_dsi.c
>> > index 481fcb650850..ac456a2275db 100644
>> > --- a/drivers/gpu/drm/i915/display/icl_dsi.c
>> > +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
>> > @@ -1440,6 +1440,13 @@ static void gen11_dsi_post_disable(struct intel=
_atomic_state *state,
>> >  static enum drm_mode_status gen11_dsi_mode_valid(struct drm_connector=
 *connector,
>> >  						 struct drm_display_mode *mode)
>> >  {
>> > +	struct drm_i915_private *i915 =3D to_i915(connector->dev);
>> > +	enum drm_mode_status status;
>> > +
>> > +	status =3D intel_cpu_transcoder_mode_valid(i915, mode);
>> > +	if (status !=3D MODE_OK)
>> > +		return status;
>> > +
>> >  	/* FIXME: DSC? */
>> >  	return intel_dsi_mode_valid(connector, mode);
>> >  }
>> > diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/dr=
m/i915/display/intel_crt.c
>> > index 0e33a0523a75..abaacea5c2cc 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_crt.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_crt.c
>> > @@ -348,8 +348,13 @@ intel_crt_mode_valid(struct drm_connector *connec=
tor,
>> >  	struct drm_device *dev =3D connector->dev;
>> >  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>> >  	int max_dotclk =3D dev_priv->max_dotclk_freq;
>> > +	enum drm_mode_status status;
>> >  	int max_clock;
>> >=20=20
>> > +	status =3D intel_cpu_transcoder_mode_valid(dev_priv, mode);
>> > +	if (status !=3D MODE_OK)
>> > +		return status;
>> > +
>> >  	if (mode->flags & DRM_MODE_FLAG_DBLSCAN)
>> >  		return MODE_NO_DBLESCAN;
>> >=20=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gp=
u/drm/i915/display/intel_display.c
>> > index 5cf162628b95..23b077f43614 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> > @@ -7734,6 +7734,16 @@ enum drm_mode_status intel_mode_valid(struct dr=
m_device *dev,
>> >  	    mode->vtotal > vtotal_max)
>> >  		return MODE_V_ILLEGAL;
>> >=20=20
>> > +	return MODE_OK;
>> > +}
>> > +
>> > +enum drm_mode_status intel_cpu_transcoder_mode_valid(struct drm_i915_=
private *dev_priv,
>> > +						     const struct drm_display_mode *mode)
>> > +{
>>=20
>> Overall the patch looks fine, even if it's a bit meh we have to
>> duplicate the calls so much. No way around that I guess.
>>=20
>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>>=20
>> But please explain the intel_cpu_transcoder_mode_valid() naming. I'm not
>> sure I follow.
>
> These limits (suposedly) only apply to the normal
> transcoders but not to the BXT/GLK DSI transcoders.

It's just that... some transcoder limits remain in intel_mode_valid().

>
>>=20
>>=20
>>=20
>> --=20
>> Jani Nikula, Intel

--=20
Jani Nikula, Intel
