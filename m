Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E8068D59A
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 12:36:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 739F010E4D8;
	Tue,  7 Feb 2023 11:36:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08B2E10E4D8
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 11:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675769782; x=1707305782;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8JQLr74iZT+Tpp+iB1/jvtaIAJKuBpe890W6BZBkGMA=;
 b=eS22K7tdiUIzldaVGYfjfOqrLLQZ7q1IvpNtfbZo9SNuMxeDciWmDyiO
 +P6d5aFpfCWlYNBjA8hqqVUXDVurTjNaM8gdSQcE9TTG13wwEBlsx794z
 nZDh/4QYXRwRVR2z2RJ4IgwV9mGaJkg0V8q6HIh5r+HwNaWjhNnJneAwY
 JQX44jt8qAb7fWYL5j4v+u04ZEgoSAOHCx14xYhyfeuXgjcrUk3YGSjp7
 PBOfo44FHTofDPlwJDteC8Ds/z5fDC+VusIbVoO3gjD/SU1nvuI5XOqQl
 eReS4dTZtSuuKiaucuSIfJdUY5c9Qk1pPxUxJgbk1QiYH9CFgT7pkuxQL A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="391880084"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="391880084"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 03:36:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10613"; a="755607536"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="755607536"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by FMSMGA003.fm.intel.com with SMTP; 07 Feb 2023 03:36:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 07 Feb 2023 13:36:18 +0200
Date: Tue, 7 Feb 2023 13:36:18 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y+I3sg4xW+7K3hrG@intel.com>
References: <20230207111626.1839645-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230207111626.1839645-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/bios: set default backlight
 controller index
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

On Tue, Feb 07, 2023 at 01:16:26PM +0200, Jani Nikula wrote:
> With backlight controller set to -1 in intel_panel_init_alloc() to
> distinguish uninitialized values, and controller later being set only if
> it's present in VBT, we can end up with -1 for the controller:
> 
>     [drm:intel_bios_init_panel [i915]] VBT backlight PWM modulation
>     frequency 200 Hz, active high, min brightness 0, level 255,
>     controller 4294967295
> 
> There's no harm if it happens on platforms that ignore controller due to
> only one backlight controller being present, like on VLV above, but play
> it safe.
> 
> Fixes: bf38bba3e7d6 ("drm/i915: Try to use the correct power sequencer intiially on bxt/glk")
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index e6ca51232dcf..ad833069f59c 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1033,6 +1033,7 @@ parse_lfp_backlight(struct drm_i915_private *i915,
>  	}
>  
>  	panel->vbt.backlight.type = INTEL_BACKLIGHT_DISPLAY_DDI;
> +	panel->vbt.backlight.controller = 0;
>  	if (i915->display.vbt.version >= 191) {
>  		size_t exp_size;

Ah right, older VBT didnt have this so we leave it untouched.
Zeroing in that case seems like the right thing to do.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

-- 
Ville Syrjälä
Intel
