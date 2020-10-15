Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3162B28F2C4
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Oct 2020 14:58:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35FC16ECC9;
	Thu, 15 Oct 2020 12:58:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC3186ECC9
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 12:58:15 +0000 (UTC)
IronPort-SDR: bxlbZJbw62e7UJsv74ZtSXUxw9500v4W+KL3keREvXcRinO2/PZoZxaLQV5nNGKsY6xqGISR2z
 +59CqWJ52J3A==
X-IronPort-AV: E=McAfee;i="6000,8403,9774"; a="227987423"
X-IronPort-AV: E=Sophos;i="5.77,379,1596524400"; d="scan'208";a="227987423"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 05:58:14 -0700
IronPort-SDR: 0YHsyMHSEaJmp5imea9FHUzWZ8iIuzM+9Cf4GYlX7mWDAgXCtGCiBJPE5pYgQg4eRhfH9DQBjc
 ZepHsi7rjC8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,379,1596524400"; d="scan'208";a="356975194"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 15 Oct 2020 05:58:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 15 Oct 2020 15:58:11 +0300
Date: Thu, 15 Oct 2020 15:58:11 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20201015125811.GK6112@intel.com>
References: <20200716190426.17047-1-ville.syrjala@linux.intel.com>
 <20200716190426.17047-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200716190426.17047-2-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Apply WAC6entrylatency to
 kbl/cfl
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 16, 2020 at 10:04:26PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> WAC6entrylatency is trying to fix excessive rc6 entry latency caused
> by the extra delay from FBC_LLC_READ_CTRL, which is there for some
> extra sync with uncore for frame buffer caching in LLC.
> =

> Reading through the hsd the recommendation was to set the FBC_LLC_FULLY_O=
PEN
> bit to disable this extra delay entirely. This can be done whenever fb LLC
> caching is not used. The alternative suggestion was to reduce the delay to
> eg. 0x5 via updated BIOS programming instructions. But all the kbl/cfl
> machines I've seen still have the default 0xff programmed. As we never use
> fb LLC caching let's just apply the w/a to all skl derivatives to get
> consistent rc6 latencies.
> =

> I was able to measure the effect of FBC_LLC_READ_CTRL to rc6 latency
> via forcewake. Here's a graph of some of the results:
> =

>              sleep;fw_req=3D1;wait fw_ack=3D=3D1;sleep;fw_req=3D0;wait fw=
_ack=3D=3D0
>  fw_ack=3D=3D1 duration
>     160us +--------------------------------------------------------------=
--+
>           |          +          +        $$+         +          +        =
  |
>           |  $$           $    $   ******$$ **   $ $**$*  #########$$####=
##|
>     140us |-$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$*$$$$$$$$$$$$$$$$ $$$$=
$$|
>           | $                     *                       #              =
  |
>           | $                     *                       #              =
  |
>     120us |$+                     *                       #              =
+-|
>           |$                      *                       #              =
  |
>           |$                      *                  #   #               =
  |
>     100us |$+         ************########################               =
+-|
>           |$          *          *#                                      =
  |
>           |$      *****   #########                                      =
  |
>      80us |$+     *    # ####   ##                                       =
+-|
>           |$   **** ### # #                                              =
  |
>           |  ** ####                     FBC_LLC_READ_CTRL: 0x8000 ******=
* |
>      60us |-######                       FBC_LLC_READ_CTRL: 0xffff ######=
#-|
>           |##        +          +    FBC_LLC_READ_CTRL: 0x400000ff $$$$$$=
$ |
>           +--------------------------------------------------------------=
--+
>          0ms       10ms       20ms       30ms      40ms       50ms       =
60ms
>                                    sleep duration
> =

> The default FBC_LLC_READ_CTRL value of 0xff is documented to give us
> a 170usec delay. That tracks well with the knees at 0xffff->~44usec and
> 0x8000->~22usec we see in the graph.

Those should obviously say msec instead of usec.

> =

> We can see that if we sleep longer than the FBC_LLC_READ_CTRL delay
> we always observe the full (~145usec) rc6 wakeup latency. But if we sleep
> for less than the FBC_LLC_READ_CTRL delay we see a quicker fw wakeup,
> presumably due the hardware not having yet entered rc6 fully.
> The other plateaus in the graph I suspect correspond to some shallower
> internal rc states.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 0a1a95060f38..3998aa00563e 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -7197,6 +7197,10 @@ static void cfl_init_clock_gating(struct drm_i915_=
private *dev_priv)
>  	cnp_init_clock_gating(dev_priv);
>  	gen9_init_clock_gating(dev_priv);
>  =

> +	/* WAC6entrylatency:cfl */
> +	I915_WRITE(FBC_LLC_READ_CTRL, I915_READ(FBC_LLC_READ_CTRL) |
> +		   FBC_LLC_FULLY_OPEN);
> +
>  	/*
>  	 * WaFbcTurnOffFbcWatermark:cfl
>  	 * Display WA #0562: cfl
> @@ -7216,6 +7220,10 @@ static void kbl_init_clock_gating(struct drm_i915_=
private *dev_priv)
>  {
>  	gen9_init_clock_gating(dev_priv);
>  =

> +	/* WAC6entrylatency:kbl */
> +	I915_WRITE(FBC_LLC_READ_CTRL, I915_READ(FBC_LLC_READ_CTRL) |
> +		   FBC_LLC_FULLY_OPEN);
> +
>  	/* WaDisableSDEUnitClockGating:kbl */
>  	if (IS_KBL_REVID(dev_priv, 0, KBL_REVID_B0))
>  		I915_WRITE(GEN8_UCGCTL6, I915_READ(GEN8_UCGCTL6) |
> -- =

> 2.26.2

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
