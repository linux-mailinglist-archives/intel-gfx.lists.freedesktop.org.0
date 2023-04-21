Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C85736EA6DE
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 11:26:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C83B10E09C;
	Fri, 21 Apr 2023 09:26:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0D3410EDD7
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 09:26:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682069180; x=1713605180;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=fYC0oVXPxt0VgHwK+naCK1ac//2YVDVZ7d+ZSLOI1OI=;
 b=HYG5jP0BypUtf6YccN6mu3IxQYgvAgSUFc6wEulPHy8QtLSQvHpDinmQ
 Qr3rfYb2EDlx0NH0IFBXjWbzKfx07EXNBbbip9joLtQIemVvWa6rPxJO+
 Wk8GQ2Ba4uJ/KdrHKs8oC4AjYd2Eiz7QVhicLnhvN8+6MaG7B7OqqMmZL
 dF3xzI/nFWEokSKOgZTruVqmI604/6dOMbuS2h/08Qh6H3GpukrmRu0jD
 lHHZTZvw7f8cC0wMLsA8o80VdKVDU57kWuHEdKn/0Cu2MYMjtZsv2NVqQ
 //ixHdMei6Ugf9AfYxjZNPLnl3HgwU8Jm9rFJ3Bylifb/LiVcj5C7i8yW Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="432230099"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="432230099"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 02:26:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="866636297"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="866636297"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga005.jf.intel.com with SMTP; 21 Apr 2023 02:26:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Apr 2023 12:26:08 +0300
Date: Fri, 21 Apr 2023 12:26:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <ZEJWsA2E03EWrSf3@intel.com>
References: <20230421083520.14486-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230421083520.14486-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Copy c10 phy pll sw state
 from master to slave for bigjoiner
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

On Fri, Apr 21, 2023 at 11:35:20AM +0300, Stanislav Lisovskiy wrote:
> We try to verify pll registers in sw state for slave crtc with the hw state.
> However in case of bigjoiner we don't calculate those at all, so this verification
> will then always fail.
> So we should either skip the verification for Bigjoiner slave crtc or copy sw state
> from master crtc.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index bf391a6cd8d6..83c98791fea3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4556,6 +4556,7 @@ copy_bigjoiner_crtc_state_modeset(struct intel_atomic_state *state,
>  	drm_mode_copy(&slave_crtc_state->hw.adjusted_mode,
>  		      &master_crtc_state->hw.adjusted_mode);
>  	slave_crtc_state->hw.scaling_filter = master_crtc_state->hw.scaling_filter;
> +	slave_crtc_state->cx0pll_state = master_crtc_state->cx0pll_state;

Wrong place. Also we're already copying dpll_hw_state which is in the
same union, and on first blush looks bigger than this thing. So why is
that not working?

>  
>  	copy_bigjoiner_crtc_state_nomodeset(state, slave_crtc);
>  
> -- 
> 2.37.3

-- 
Ville Syrjälä
Intel
