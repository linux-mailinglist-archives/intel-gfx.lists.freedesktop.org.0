Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 934887ED673
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 22:58:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC18E10E26C;
	Wed, 15 Nov 2023 21:58:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1A7D10E26C
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 21:58:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700085513; x=1731621513;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=B90j+5wpAbhmguQazQooWgW3znLYYMY6sgTC3b3PXZA=;
 b=cX+GvvfdvQkfB9nnVX5DuAnHW1xy3khLT6TYOW1FwWPY2y09Gp/0TwNU
 jqKgMT22BtJtIRvqgqOPFU/SGWV/174sE+14YPFmCef6SQlAcA7h9zipL
 ni6HVEOee2kINNXhElEw64nnZ7vqbw87fW7okGONsoQ3mJuztyjf/j5z2
 9+qu1/Dip0cemFLDRlSn6diYSQSw1Tstxipz4o50aKsCrg1GjqfVQSuhd
 U8xS71FoNYmJ0m8k/oalIL/W6i8w3JhvQcrRKiUl2SCQguCwAdBmoQdTA
 OhaSZXNdj5+BNVhRk+YpPD7E74AePtjEGErHQbFMoj+12n+4VV0IVygAr g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="4082706"
X-IronPort-AV: E=Sophos;i="6.03,306,1694761200"; 
   d="scan'208";a="4082706"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 13:58:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="758630010"
X-IronPort-AV: E=Sophos;i="6.03,306,1694761200"; d="scan'208";a="758630010"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Nov 2023 13:58:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Nov 2023 23:58:28 +0200
Date: Wed, 15 Nov 2023 23:58:28 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <ZVU_BMGQwjdTIaqc@intel.com>
References: <20231113093737.358137-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231113093737.358137-1-mika.kahola@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Use int for entry setup frames
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

On Mon, Nov 13, 2023 at 11:37:37AM +0200, Mika Kahola wrote:
> At least one TGL had regression when using u8 types
> for entry setup frames calculation. So, let's switch
> to use ints instead.
> 
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 3691f882e1c0..a4417e85f92a 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1093,12 +1093,12 @@ static bool _compute_psr2_wake_times(struct intel_dp *intel_dp,
>  	return true;
>  }
>  
> -static u8 intel_psr_entry_setup_frames(struct intel_dp *intel_dp,
> -				       const struct drm_display_mode *adjusted_mode)
> +static int intel_psr_entry_setup_frames(struct intel_dp *intel_dp,
> +					const struct drm_display_mode *adjusted_mode)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	int psr_setup_time = drm_dp_psr_setup_time(intel_dp->psr_dpcd);
> -	u8 entry_setup_frames = 0;
> +	int entry_setup_frames = 0;

You didn't change the other one in _psr_compute_config()
so this still looks broken to me.

>  
>  	if (psr_setup_time < 0) {
>  		drm_dbg_kms(&i915->drm,
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
