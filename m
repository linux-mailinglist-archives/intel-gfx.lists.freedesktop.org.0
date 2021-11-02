Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D1C44308D
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Nov 2021 15:36:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E99F6FE71;
	Tue,  2 Nov 2021 14:36:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C91A6FE71
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Nov 2021 14:36:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="212030028"
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="212030028"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2021 07:36:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,203,1631602800"; d="scan'208";a="577119509"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 02 Nov 2021 07:36:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Nov 2021 16:36:36 +0200
Date: Tue, 2 Nov 2021 16:36:36 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YYFM9GpiMBH4adiS@intel.com>
References: <20211102021233.215980-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211102021233.215980-1-jose.souza@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Exit PSR when doing
 async flips
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

On Mon, Nov 01, 2021 at 07:12:33PM -0700, José Roberto de Souza wrote:
> Changing the buffer in the middle of the scanout then entering an
> period of flip idleness will cause part of the previous buffer being
> diplayed to user when PSR is enabled.
> 
> So here disabling and scheduling activation after a few milliseconds
> when async flip is enabled in the state.
> 
> The async flip check that we had in PSR compute is not executed at
> every flip so it was not doing anything useful and is also being
> dropped here.
> 
> v2:
> - scheduling the PSR work in _intel_psr_post_plane_update()
> 
> Cc: Karthik B S <karthik.b.s@intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 9d589d471e335..e1338f5b2967c 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -731,12 +731,6 @@ static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
>  		return false;
>  	}
>  
> -	if (crtc_state->uapi.async_flip) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "PSR2 sel fetch not enabled, async flip enabled\n");
> -		return false;
> -	}
> -
>  	/* Wa_14010254185 Wa_14010103792 */
>  	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
>  		drm_dbg_kms(&dev_priv->drm,
> @@ -1780,6 +1774,9 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
>  		if (psr->enabled && needs_to_disable)
>  			intel_psr_disable_locked(intel_dp);
>  
> +		if (psr->enabled && crtc_state->uapi.async_flip)
> +			intel_psr_exit(intel_dp);
> +
>  		mutex_unlock(&psr->lock);
>  	}
>  }
> @@ -1810,6 +1807,9 @@ static void _intel_psr_post_plane_update(const struct intel_atomic_state *state,
>  		if (crtc_state->crc_enabled && psr->enabled)
>  			psr_force_hw_tracking_exit(intel_dp);
>  
> +		if (psr->enabled && !psr->active && crtc_state->uapi.async_flip)
> +			schedule_work(&intel_dp->psr.work);

Dunno if there's much point on doing this for every async flip. The
expectation is more or less that more async flips will come in. So
we should probably do this only when switching back to sync flips.

> +
>  		mutex_unlock(&psr->lock);
>  	}
>  }
> -- 
> 2.33.1

-- 
Ville Syrjälä
Intel
