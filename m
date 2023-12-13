Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 22D5E811CB4
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 19:37:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F12F10E144;
	Wed, 13 Dec 2023 18:37:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C75DB10E144
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 18:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702492621; x=1734028621;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=GtY5NToT1aZ689lTsYVcVAP5k6TCBOw31Wh/PaQh3Ow=;
 b=lqH6YUi6Tc3HUCKLWDAZCq1yluvZhATPtudjgLjS03PDAQIQV+a0S4Bx
 wseRWacH7ahlC0wboyAQONezqSjwg8ONCLo+W2U6t0he5sIeUFTMQ+w0H
 YLXDRJmJJ85dk+LtYw2d++MHfYSN2veR0l7jOyGi7K6mDTM5eb36KMiu5
 2VumP0X45aZ9h6pEexDSAI9JmpgIIqd9wHFixRRG6qG3QYTq+CKiXNvcg
 iBIS/hYsDwyR6q84jpkH5TGuVfZiG3lxn2Zkx7Nepf/EQlmYK1cQqjtn4
 MXh9uTvssyxFsI95I0ob/cJIbQbhh30ObwSEIf4XoNc7sB8efkplZZ8uT w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="1845831"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; 
   d="scan'208";a="1845831"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 10:36:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="774047192"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="774047192"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 10:36:56 -0800
Date: Wed, 13 Dec 2023 20:36:49 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915: Reject async flips with bigjoiner
Message-ID: <ZXn5aJsa41Nv2tXA@intel.com>
References: <20231211081134.2698-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231211081134.2698-1-ville.syrjala@linux.intel.com>
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

On Mon, Dec 11, 2023 at 10:11:34AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Currently async flips are busted when bigjoiner is in use.
> As a short term fix simply reject async flips in that case.
> 
> Cc: stable@vger.kernel.org
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9769
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index d955957b7d18..61053c19f4cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5926,6 +5926,17 @@ static int intel_async_flip_check_uapi(struct intel_atomic_state *state,
>  		return -EINVAL;
>  	}
>  
> +	/*
> +	 * FIXME: Bigjoiner+async flip is busted currently.
> +	 * Remove this check once the issues are fixed.
> +	 */
> +	if (new_crtc_state->bigjoiner_pipes) {
> +		drm_dbg_kms(&i915->drm,
> +			    "[CRTC:%d:%s] async flip disallowed with bigjoiner\n",
> +			    crtc->base.base.id, crtc->base.name);
> +		return -EINVAL;
> +	}
> +

Was recently wondering, whether should we add some kind of helper
func for that check to look more readable, i.e instead of just
checking if crtc_state->bigjoiner_pipes != 0, call smth like
is_bigjoiner_used(new_crtc_state)..

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

>  	for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state,
>  					     new_plane_state, i) {
>  		if (plane->pipe != crtc->pipe)
> -- 
> 2.41.0
> 
