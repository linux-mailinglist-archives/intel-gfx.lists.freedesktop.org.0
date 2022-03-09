Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41EFD4D395A
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 19:59:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B3AE10E3AF;
	Wed,  9 Mar 2022 18:59:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 838E710E3E4
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 18:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646852380; x=1678388380;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=p/eiDETu/mTqfvyDVjzbt5AGoIF2xiYOgPu8BrcsE8U=;
 b=OW+Cl1Fz+8qwW90FPcPz0iCjR4fMXOQEtNHasNlLq5Lo4KQ3vWLWw8vt
 0psXJ7tr2+QLbOotPsW6DfcGOzLBk6EgYrMcgqF8Z1CoWOK/MY/tvDOYr
 v5A+H7tCoWEBTBPACY/LviVueLfnCxj63fVg99WAeOdP4Gkbig8rEIcpm
 c1p+bKNn2Ygrs3tZUdDzhgD7+exZjbF/Q1twIbf+MsT9YTlJGHo99fYFO
 0zH6KfGHNripbdhWrN9hiNp0RgSrkg0bYP75WSPll9VrJAhJCFgSaMfAt
 sTWknoZC+xTTXDQUrD9piG0vQJlqWFRLuwASkoTDUtqSihPfLeqkQJ12u w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="242507749"
X-IronPort-AV: E=Sophos;i="5.90,168,1643702400"; d="scan'208";a="242507749"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 10:59:40 -0800
X-IronPort-AV: E=Sophos;i="5.90,168,1643702400"; d="scan'208";a="554249784"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 10:59:35 -0800
Date: Wed, 9 Mar 2022 20:59:59 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220309185959.GA9439@intel.com>
References: <20220309164948.10671-1-ville.syrjala@linux.intel.com>
 <20220309164948.10671-7-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220309164948.10671-7-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v2 6/8] drm/i915: Fix PSF GV point mask when
 SAGV is not possible
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

On Wed, Mar 09, 2022 at 06:49:46PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Don't just mask off all the PSF GV points when SAGV gets disabled.
> This should in fact cause the Pcode to reject the request since
> at least one PSF point must remain enabled at all times.

Good point, however I think this is not the full fix:

BSpec says:

"At least one GV point of each type must always remain unmasked."

and

"The GV point of each type providing the highest bandwidth 
 for display must always remain unmasked."

So I guess we should then also choose thr PSF GV point with
the highest bandwidth as well.

Stan


> 
> Cc: stable@vger.kernel.org
> Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Fixes: 192fbfb76744 ("drm/i915: Implement PSF GV point support")
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index ad1564ca7269..adf58c58513b 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -992,7 +992,8 @@ int intel_bw_atomic_check(struct intel_atomic_state *state)
>  	 * cause.
>  	 */
>  	if (!intel_can_enable_sagv(dev_priv, new_bw_state)) {
> -		allowed_points = BIT(max_bw_point);
> +		allowed_points &= ADLS_PSF_PT_MASK;
> +		allowed_points |= BIT(max_bw_point);
>  		drm_dbg_kms(&dev_priv->drm, "No SAGV, using single QGV point %d\n",
>  			    max_bw_point);
>  	}
> -- 
> 2.34.1
> 
