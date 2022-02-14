Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F70E4B48FF
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Feb 2022 11:16:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7159B10E4DC;
	Mon, 14 Feb 2022 10:16:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 910CB10E4DC
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Feb 2022 10:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644833792; x=1676369792;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ZLSQbYy/k+4wVRVOROLuhteAPRKfUCpphzihZWyy6uY=;
 b=gGOwV78sH+GA/LVtPnhPg0+InEPVbTwPSdqWUfI1ycqhz1nfxn9j+3mZ
 UFicGzMkVR24xHh78d/3Leo1kENgtof40zxXGDVU5HXWhTFix4xKa/FsL
 tzXzM5nMBei7jYW3Ns4w42KYA7VnjEXwr/wa5IkmzPIjIy3iLSLgoZxy2
 lBDLKNSJ920ZnuEy9IDHJz+DJ3uw79DE8lQHc5RRJg8R47cFIfSrlnVKP
 vFc3Z973s/mnIWFt/w0ZZFfBJJuwtbCyNjaMeNS1VU0HRrOGTxjQEZXLp
 JDaeLZTHXyFu0lmHytlLgC6N1r0KRfjtT/kG3dvr3LmTElJILN2JSv5o9 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10257"; a="250006706"
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600"; d="scan'208";a="250006706"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 02:16:24 -0800
X-IronPort-AV: E=Sophos;i="5.88,367,1635231600"; d="scan'208";a="495384198"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 02:16:22 -0800
Date: Mon, 14 Feb 2022 12:16:36 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220214101636.GA25003@intel.com>
References: <20220214091811.13725-1-ville.syrjala@linux.intel.com>
 <20220214091811.13725-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220214091811.13725-2-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Correctly populate
 use_sagv_wm for all pipes
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 14, 2022 at 11:18:06AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> When changing between SAGV vs. no SAGV on tgl+ we have to
> update the use_sagv_wm flag for all the crtcs or else
> an active pipe not already in the state will end up using
> the wrong watermarks. That is especially bad when we end up
> with the tighter non-SAGV watermarks with SAGV enabled.
> Usually ends up in underruns.

Probably valid point. Just noticed that we have this constant 
confusion, between cases when we have to update only crtc
which are added to the state(i.e only those which changed)
versus cases when everything has to be updated, regardless 
if its in the state or not.

I think it didn't ever caused underruns however, which is
strange - currently we mostly hit underruns once due to 
some PSR magic. Might be we just are lucky enough to get
all crtcs added to the state for some other reasons.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Stan

> 
> Cc: stable@vger.kernel.org
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Fixes: 7241c57d3140 ("drm/i915: Add TGL+ SAGV support")
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 22 +++++++++++-----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 1179bf31f743..d8eb553ffad3 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4009,6 +4009,17 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
>  			return ret;
>  	}
>  
> +	if (intel_can_enable_sagv(dev_priv, new_bw_state) !=
> +	    intel_can_enable_sagv(dev_priv, old_bw_state)) {
> +		ret = intel_atomic_serialize_global_state(&new_bw_state->base);
> +		if (ret)
> +			return ret;
> +	} else if (new_bw_state->pipe_sagv_reject != old_bw_state->pipe_sagv_reject) {
> +		ret = intel_atomic_lock_global_state(&new_bw_state->base);
> +		if (ret)
> +			return ret;
> +	}
> +
>  	for_each_new_intel_crtc_in_state(state, crtc,
>  					 new_crtc_state, i) {
>  		struct skl_pipe_wm *pipe_wm = &new_crtc_state->wm.skl.optimal;
> @@ -4024,17 +4035,6 @@ static int intel_compute_sagv_mask(struct intel_atomic_state *state)
>  			intel_can_enable_sagv(dev_priv, new_bw_state);
>  	}
>  
> -	if (intel_can_enable_sagv(dev_priv, new_bw_state) !=
> -	    intel_can_enable_sagv(dev_priv, old_bw_state)) {
> -		ret = intel_atomic_serialize_global_state(&new_bw_state->base);
> -		if (ret)
> -			return ret;
> -	} else if (new_bw_state->pipe_sagv_reject != old_bw_state->pipe_sagv_reject) {
> -		ret = intel_atomic_lock_global_state(&new_bw_state->base);
> -		if (ret)
> -			return ret;
> -	}
> -
>  	return 0;
>  }
>  
> -- 
> 2.34.1
> 
