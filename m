Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 088AE459E9C
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Nov 2021 09:53:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7A456E037;
	Tue, 23 Nov 2021 08:53:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C76166E057
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Nov 2021 08:53:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10176"; a="235220098"
X-IronPort-AV: E=Sophos;i="5.87,257,1631602800"; d="scan'208";a="235220098"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2021 00:53:24 -0800
X-IronPort-AV: E=Sophos;i="5.87,257,1631602800"; d="scan'208";a="674388913"
Received: from unknown (HELO intel.com) ([10.237.72.167])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Nov 2021 00:53:23 -0800
Date: Tue, 23 Nov 2021 10:53:05 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <20211123085305.GA17614@intel.com>
References: <20211119131348.725220-1-mika.kahola@intel.com>
 <20211119131348.725220-2-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211119131348.725220-2-mika.kahola@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 1/5] drm/i915/display/dg2: Introduce CD
 clock squashing table
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

On Fri, Nov 19, 2021 at 03:13:44PM +0200, Mika Kahola wrote:
> For CD clock squashing method, we need to define corresponding CD clock table for
> reference clocks, dividers and ratios for all CD clock options.
> 
> BSpec: 54034
> 
> v2: Add CD squashing waveforms as part of CD clock table (Ville)
> v3: Waveform is 16 bits wide (Ville)
> [v4: vsyrjala: Nuke the non-squasher based table,
>                Set .divider=2 for consistency,
> 	       Pack intel_cdclk_vals a bit nicer]
> v5: Fix error in waveform value (Swati)
> v6 (Lucas): Rebase on upstream
> v7 (MattR): Drop 40.8, 81.6, and 122.4 MHz frequencies to reflect new
>     bspec update.
> 

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 19 +++++++++++++------
>  drivers/gpu/drm/i915/display/intel_cdclk.h |  1 +
>  2 files changed, 14 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 91c19e0a98d7..7af4cb965060 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1313,12 +1313,19 @@ static const struct intel_cdclk_vals adlp_cdclk_table[] = {
>  };
>  
>  static const struct intel_cdclk_vals dg2_cdclk_table[] = {
> -	{ .refclk = 38400, .cdclk = 172800, .divider = 2, .ratio =  9 },
> -	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
> -	{ .refclk = 38400, .cdclk = 307200, .divider = 2, .ratio = 16 },
> -	{ .refclk = 38400, .cdclk = 326400, .divider = 4, .ratio = 34 },
> -	{ .refclk = 38400, .cdclk = 556800, .divider = 2, .ratio = 29 },
> -	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34 },
> +	{ .refclk = 38400, .cdclk = 163200, .divider = 2, .ratio = 34, .waveform = 0x8888 },
> +	{ .refclk = 38400, .cdclk = 204000, .divider = 2, .ratio = 34, .waveform = 0x9248 },
> +	{ .refclk = 38400, .cdclk = 244800, .divider = 2, .ratio = 34, .waveform = 0xa4a4 },
> +	{ .refclk = 38400, .cdclk = 285600, .divider = 2, .ratio = 34, .waveform = 0xa54a },
> +	{ .refclk = 38400, .cdclk = 326400, .divider = 2, .ratio = 34, .waveform = 0xaaaa },
> +	{ .refclk = 38400, .cdclk = 367200, .divider = 2, .ratio = 34, .waveform = 0xad5a },
> +	{ .refclk = 38400, .cdclk = 408000, .divider = 2, .ratio = 34, .waveform = 0xb6b6 },
> +	{ .refclk = 38400, .cdclk = 448800, .divider = 2, .ratio = 34, .waveform = 0xdbb6 },
> +	{ .refclk = 38400, .cdclk = 489600, .divider = 2, .ratio = 34, .waveform = 0xeeee },
> +	{ .refclk = 38400, .cdclk = 530400, .divider = 2, .ratio = 34, .waveform = 0xf7de },
> +	{ .refclk = 38400, .cdclk = 571200, .divider = 2, .ratio = 34, .waveform = 0xfefe },
> +	{ .refclk = 38400, .cdclk = 612000, .divider = 2, .ratio = 34, .waveform = 0xfffe },
> +	{ .refclk = 38400, .cdclk = 652800, .divider = 2, .ratio = 34, .waveform = 0xffff },
>  	{}
>  };
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> index 309b3f394e24..89ca59c46102 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> @@ -19,6 +19,7 @@ struct intel_crtc_state;
>  struct intel_cdclk_vals {
>  	u32 cdclk;
>  	u16 refclk;
> +	u16 waveform;
>  	u8 divider;	/* CD2X divider * 2 */
>  	u8 ratio;
>  };
> -- 
> 2.27.0
> 
