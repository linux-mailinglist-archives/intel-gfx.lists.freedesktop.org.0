Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 331BF1EA593
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 16:11:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E167B6E0AB;
	Mon,  1 Jun 2020 14:11:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0736D6E0AB
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2020 14:11:36 +0000 (UTC)
IronPort-SDR: tpZKwh6cGJr6rnNWmnl3ukd0FfK9ewJ4gZ9WnwB6/DlWtWOL2rXk2Z09yEfGdw3Rb62OopEiJ7
 iINWhe8BeRZw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2020 07:11:35 -0700
IronPort-SDR: v7m78UPn8DEChwiItaInx6x52ZTOhZuNnhwCmsDPZ+ru71aSYuSWp+GbKDAzPXJInfdukqOQHs
 wZPaXUNQY+Vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,461,1583222400"; d="scan'208";a="272009343"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 01 Jun 2020 07:11:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 01 Jun 2020 17:11:32 +0300
Date: Mon, 1 Jun 2020 17:11:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200601141132.GK6112@intel.com>
References: <20200601101516.21018-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200601101516.21018-1-anshuman.gupta@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [RFC] drm/i915: lpsp with hdmi/dp outputs
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 01, 2020 at 03:45:16PM +0530, Anshuman Gupta wrote:
> Gen12 hw are failing to enable lpsp configuration due to PG3 was left on
> due to valid usgae count of POWER_DOMAIN_AUDIO.
> It is not required to get POWER_DOMAIN_AUDIO ref-count when enabling
> a crtc, it should be always i915_audio_component request to get/put
> AUDIO_POWER_DOMAIN.
> =

> Cc: stable@vger.kernel.org
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 6c3b11de2daf..f31a579d7a52 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7356,7 +7356,11 @@ static u64 get_crtc_power_domains(struct intel_crt=
c_state *crtc_state)
>  		mask |=3D BIT_ULL(intel_encoder->power_domain);
>  	}
>  =

> -	if (HAS_DDI(dev_priv) && crtc_state->has_audio)
> +	/*
> +	 * Gen12 can drive lpsp on hdmi/dp outpus, it doesn't require to
> +	 * enable AUDIO power in order to enable a crtc

Nothing requires audio power to enable a crtc. What this is saying is
that if we want audio then we must enable the audio power. If you
didn't want audio then you wouldn't have .has_audio set.

That said, looks like audio is moving into the always on well, but not
yet in tgl.

.
> +	 */
> +	if (INTEL_GEN(dev_priv) < 12 && HAS_DDI(dev_priv) && crtc_state->has_au=
dio)
>  		mask |=3D BIT_ULL(POWER_DOMAIN_AUDIO);
>  =

>  	if (crtc_state->shared_dpll)
> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
