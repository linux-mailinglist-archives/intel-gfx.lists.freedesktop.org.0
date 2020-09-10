Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C6D26449B
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Sep 2020 12:50:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2EB56E904;
	Thu, 10 Sep 2020 10:50:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02AE16E903
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Sep 2020 10:50:44 +0000 (UTC)
IronPort-SDR: WsB85JCFAayPST1w4YuWyKRfMPH+hnhCzhIvWa2RYItR8pjKZ3tvDvhk4z7rP0dSGHC1rU9YjL
 tGMuwzOqYrVw==
X-IronPort-AV: E=McAfee;i="6000,8403,9739"; a="146212715"
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="146212715"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2020 03:50:44 -0700
IronPort-SDR: ktpqdlfJ2cMzOfplS8ErvFCnSYe12G0N73CQIwteA+ZWSkvPEP30B0TK6cisaC3tH8roCg8nzg
 AjSXtNumZj6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,412,1592895600"; d="scan'208";a="344213126"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 10 Sep 2020 03:50:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Sep 2020 13:50:41 +0300
Date: Thu, 10 Sep 2020 13:50:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200910105041.GV6112@intel.com>
References: <20200910095227.9466-1-jani.nikula@intel.com>
 <20200910095227.9466-3-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200910095227.9466-3-jani.nikula@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: move gmbus restore to
 i915_restore_display
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

On Thu, Sep 10, 2020 at 12:52:27PM +0300, Jani Nikula wrote:
> Logically part of the display restore.
> =

> Note: This has been in place since the introduction of gmbus
> support. The gmbus code also does the resets before transfers. Is this
> really needed, or a historical accident?

I suspect we could just remove this one.

Either way, this is display stuff so the move makes sense.
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_suspend.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i=
915_suspend.c
> index 4a93247942b7..09026c4db7d0 100644
> --- a/drivers/gpu/drm/i915/i915_suspend.c
> +++ b/drivers/gpu/drm/i915/i915_suspend.c
> @@ -69,6 +69,8 @@ static void i915_restore_display(struct drm_i915_privat=
e *dev_priv)
>  		I915_WRITE(FBC_CONTROL, dev_priv->regfile.saveFBC_CONTROL);
>  =

>  	intel_vga_redisable(dev_priv);
> +
> +	intel_gmbus_reset(dev_priv);
>  }
>  =

>  int i915_save_state(struct drm_i915_private *dev_priv)
> @@ -141,7 +143,5 @@ int i915_restore_state(struct drm_i915_private *dev_p=
riv)
>  			I915_WRITE(SWF3(i), dev_priv->regfile.saveSWF3[i]);
>  	}

Sidenote: I think the ^ scratch registers are also part of the display
block, so could probably move those too. The other option would be to
try to nuke that stuff entirely since I don't think anyone knows
whether it actually does something useful.

If we do move/nuke this then I think afte my earlier
MI_ARB_STATE/CACHE_MODE_0 nuke patches i915_{save,restore}_state() actually
just become pointless wrappers for i915_{save,restore}_display().


>  =

> -	intel_gmbus_reset(dev_priv);
> -
>  	return 0;
>  }
> -- =

> 2.20.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
