Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C206E4BA83A
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 19:29:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4BF010E1EA;
	Thu, 17 Feb 2022 18:29:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B1D610E1EA
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 18:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645122581; x=1676658581;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ZESTdfIDbSmIb9I/yPThSPDo6X1sZN0f05BAmB7Yonw=;
 b=Z88J/tK2ENxThJBjYzJYGepfxbNxwFve5Se8aGJz/mwkWsUQL0IZPCJr
 JEFEeKwCdvcLwRrplqA3XI0rxoRAI1S8PDW8Rc+nVecSpG7bc9CgxTxx8
 JOWBK5BCsINwty4MzhbxQYvfRzuljnUuUJesK38R16i79205bCE3a/7Nr
 XK0xwWqDXtNSQ2Movkb5f0FpE7SNa2JZo9NigSjHcw4TFcCh1q5xqi7Yl
 Ptat1LcLwcODkUYPPL6ysvjFA9wtpMFYzUk9RmgM5SmkiIfmKOUZUhDQu
 YrkST9f2Z3ed+kUmeSC4y/iWAJrTb+fHINGoM9cJdolsKi3yycuHy1GVX Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10261"; a="230906081"
X-IronPort-AV: E=Sophos;i="5.88,376,1635231600"; d="scan'208";a="230906081"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 10:29:40 -0800
X-IronPort-AV: E=Sophos;i="5.88,376,1635231600"; d="scan'208";a="704941052"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2022 10:29:39 -0800
Date: Thu, 17 Feb 2022 20:29:53 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220217182953.GA3823@intel.com>
References: <20220216174250.4449-1-ville.syrjala@linux.intel.com>
 <20220216174250.4449-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220216174250.4449-3-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 2/6] drm/i915: Fix bw atomic check when
 switching between SAGV vs. no SAGV
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

On Wed, Feb 16, 2022 at 07:42:46PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> If the only thing that is changing is SAGV vs. no SAGV but
> the number of active planes and the total data rates end up
> unchanged we currently bail out of intel_bw_atomic_check()
> early and forget to actually compute the new WGV point
> mask and thus won't actually enable/disable SAGV as requested.
> This ends up poorly if we end up running with SAGV enabled
> when we shouldn't. Usually ends up in underruns.
> To fix this let's go through the QGV point mask computation
> if anyone else already added the bw state for us.
> 
> Cc: stable@vger.kernel.org
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Fixes: 20f505f22531 ("drm/i915: Restrict qgv points which don't have enough bandwidth.")
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>


Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 23aa8e06de18..d72ccee7d53b 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -846,6 +846,13 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
>  	if (num_psf_gv_points > 0)
>  		mask |= REG_GENMASK(num_psf_gv_points - 1, 0) << ADLS_PSF_PT_SHIFT;
>  
> +	/*
> +	 * If we already have the bw state then recompute everything
> +	 * even if pipe data_rate / active_planes didn't change.
> +	 * Other things (such as SAGV) may have changed.
> +	 */
> +	new_bw_state = intel_atomic_get_new_bw_state(state);
> +
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
>  		unsigned int old_data_rate =
> -- 
> 2.34.1
> 
