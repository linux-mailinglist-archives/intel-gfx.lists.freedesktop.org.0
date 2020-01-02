Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF46E12E9F3
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 19:28:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C98D6E12D;
	Thu,  2 Jan 2020 18:28:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DA726E12D
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jan 2020 18:28:46 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jan 2020 10:28:45 -0800
X-IronPort-AV: E=Sophos;i="5.69,387,1571727600"; d="scan'208";a="209859272"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.150])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jan 2020 10:28:45 -0800
Date: Thu, 2 Jan 2020 10:28:45 -0800
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Message-ID: <20200102182845.GB11904@intel.com>
References: <20191231140007.31728-1-kai.vehmanen@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191231140007.31728-1-kai.vehmanen@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Limit audio CDCLK>=2*BCLK
 constraint back to GLK only
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 31, 2019 at 04:00:07PM +0200, Kai Vehmanen wrote:
> Revert changes done in commit f6ec9483091f ("drm/i915: extend audio
> CDCLK>=2*BCLK constraint to more platforms"). Audio drivers
> communicate with i915 over HDA bus multiple times during system
> boot-up and each of these transactions result in matching
> get_power/put_power calls to i915, and depending on the platform,
> a modeset change causing visible flicker.
> 
> GLK is the only platform with minimum CDCLK significantly lower
> than BCLK, and thus for GLK setting a higher CDCLK is mandatory.
> 
> For other platforms, minimum CDCLK is close but below 2*BCLK
> (e.g. on ICL, CDCLK=176.4kHz with BCLK=96kHz). Spec-wise the constraint
> should be set, but in practise no communication errors have been
> reported and the downside if set is the flicker observed at boot-time.
> 
> Revert to old behaviour until better mechanism to manage
> probe-time clocks is available.
> 
> The full CDCLK>=2*BCLK constraint is still enforced at pipe
> enable time in intel_crtc_compute_min_cdclk().
> 
> Bugzilla: https://gitlab.freedesktop.org/drm/intel/issues/913
> Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> ---
> 
> Notes:
>     v2: d'oh, change put_power() as well
> 
>  drivers/gpu/drm/i915/display/intel_audio.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
> index 27710098d056..e406719a6716 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -856,7 +856,7 @@ static unsigned long i915_audio_component_get_power(struct device *kdev)
>  		}
>  
>  		/* Force CDCLK to 2*BCLK as long as we need audio powered. */
> -		if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
> +		if (IS_GEMINILAKE(dev_priv))

I believe for correctness we should at least say this is for display_10 but
since we don't have display gen defined probably the right thing to do here
is to at least replace this per:

IS_GEN(dev_priv, 10) || IS_GEMINILAKE(dev_priv)

>  			glk_force_audio_cdclk(dev_priv, true);
>  
>  		if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
> @@ -875,7 +875,7 @@ static void i915_audio_component_put_power(struct device *kdev,
>  
>  	/* Stop forcing CDCLK to 2*BCLK if no need for audio to be powered. */
>  	if (--dev_priv->audio_power_refcount == 0)
> -		if (INTEL_GEN(dev_priv) >= 10 || IS_GEMINILAKE(dev_priv))
> +		if (IS_GEMINILAKE(dev_priv))
>  			glk_force_audio_cdclk(dev_priv, false);
>  
>  	intel_display_power_put(dev_priv, POWER_DOMAIN_AUDIO, cookie);
> -- 
> 2.17.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
