Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D6A442237
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Nov 2021 22:02:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71E476E1A3;
	Mon,  1 Nov 2021 21:02:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67FF689D4F
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Nov 2021 21:02:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="211169912"
X-IronPort-AV: E=Sophos;i="5.87,200,1631602800"; d="scan'208";a="211169912"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 13:36:54 -0700
X-IronPort-AV: E=Sophos;i="5.87,200,1631602800"; d="scan'208";a="500202884"
Received: from mthooks-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.255.35.24])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 13:36:53 -0700
Date: Mon, 1 Nov 2021 16:36:52 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <YYBP5Al2nbUMLPFP@intel.com>
References: <20211030001801.237548-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211030001801.237548-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Exit PSR when doing async
 flips
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

On Fri, Oct 29, 2021 at 05:18:01PM -0700, José Roberto de Souza wrote:
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
> Cc: Karthik B S <karthik.b.s@intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 9d589d471e335..d1301e2729553 100644
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
> @@ -1780,6 +1774,11 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
>  		if (psr->enabled && needs_to_disable)
>  			intel_psr_disable_locked(intel_dp);
>  
> +		if (psr->enabled && crtc_state->uapi.async_flip) {
> +			intel_psr_exit(intel_dp);
> +			schedule_work(&intel_dp->psr.work);

wouldn't it be better(safer?) to reschedule it back in a later stage?

> +		}
> +
>  		mutex_unlock(&psr->lock);
>  	}
>  }
> -- 
> 2.33.1
> 
