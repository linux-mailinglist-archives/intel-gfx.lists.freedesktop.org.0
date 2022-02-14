Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E524B5853
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Feb 2022 18:17:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E13510E258;
	Mon, 14 Feb 2022 17:17:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 870A010E258
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Feb 2022 17:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644859040; x=1676395040;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=rdU8K9FsX9XyQYq9NprInI1xXPNrp55CNAt/hDfMzUI=;
 b=OrQsT4kJgq2ewaI7x/VOVjGxj/zT+aYAgA+JCfmxl34deM+lx9b+oRym
 dgfV3UxTBjz4Xo0yeyUqn7q110vM9zv1k1cdoDrduRcR1WvHmjWl4y/Ke
 OJEcZFeoyIeNOwkMTRfD24LauWTzNPFHgmvaysyW9Z69YKK9sPI5pTR1c
 SkJgzgdRCIAFbXCa6JNzHiJ2bdWtPPm0YjubCEV0XYoT1m+6+ONhCIKlZ
 nYKYFTLZwt/06+CPhkRauk5Slhwuq4UKcIyUJu4jxogrgpIpwokosOe2U
 Z4zExSt8UqqBfaXLrtzxtfmR1Aq0e/q69M+5sZdVpRhqSw4y3g7mDKt3w Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10258"; a="230102718"
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="230102718"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 09:17:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="495836780"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 09:17:18 -0800
Date: Mon, 14 Feb 2022 19:17:32 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220214171732.GA25816@intel.com>
References: <20220214091811.13725-1-ville.syrjala@linux.intel.com>
 <20220214091811.13725-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220214091811.13725-4-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 3/6] drm/i915: Widen the QGV point mask
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

On Mon, Feb 14, 2022 at 11:18:08AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> adlp+ adds some extra bits to the QGV point mask. The code attempts
> to handle that but forgot to actually make sure we can store those
> bits in the bw state. Fix it.
> 
> Cc: stable@vger.kernel.org
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Fixes: 192fbfb76744 ("drm/i915: Implement PSF GV point support")
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
> index 46c6eecbd917..0ceaed1c9656 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -30,19 +30,19 @@ struct intel_bw_state {
>  	 */
>  	u8 pipe_sagv_reject;
>  
> +	/* bitmask of active pipes */
> +	u8 active_pipes;
> +
>  	/*
>  	 * Current QGV points mask, which restricts
>  	 * some particular SAGV states, not to confuse
>  	 * with pipe_sagv_mask.
>  	 */
> -	u8 qgv_points_mask;
> +	u16 qgv_points_mask;

Weird, that this went unnoticed. Don't we have static analyzer for such
purposes? Wonder if it should catch and warn about this, because in
intel_bw_atomic_check we have u32 bitmask, which is then getting packed
in 8 bit field.
Probably bitmask type width used in intel_bw_atomic_check should match
that one, so that there would be less room for confusion.

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

>  
>  	unsigned int data_rate[I915_MAX_PIPES];
>  	u8 num_active_planes[I915_MAX_PIPES];
>  
> -	/* bitmask of active pipes */
> -	u8 active_pipes;
> -
>  	int min_cdclk;
>  };
>  
> -- 
> 2.34.1
> 
