Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 853157DDF58
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Nov 2023 11:27:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDAE710E6B5;
	Wed,  1 Nov 2023 10:27:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6644510E6B5
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Nov 2023 10:27:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698834427; x=1730370427;
 h=date:from:to:subject:message-id:references:mime-version:
 content-transfer-encoding:in-reply-to;
 bh=IkmnsvCKyBFbqoG/tvrrK2+HYc4KH9/MrdtX/FaNSdE=;
 b=Z+oLCOLsVKnYd7NVIvOwAsn3b2XO0QK7JIqjI4qXDHLH0u5OGa3uoJ5x
 oepIDgCYp3zHowK932g7sF/RptH9e1gjYiop08+oKDx+Vo+f/8lOZ35nR
 yBIlj0wA2i+R0prPCxxv6oGUT0z5ykPYQzwshRZNka4FXUUE+48WOyGDr
 vfRr6gB498rb4pHn/8Fm8t1Z7Rg8F9KL1mW6Jgi47dDt0RW5oFjUjZhGu
 SQo8x7QF3B+4/D0U9LWC81gDS+bxoD9kniaZvo0jzhZQrZOqrCq2LNSlj
 GfivzPq1fz352HvTyA0lcYNPFdDKog9j6OW2IXJ9mCRsK+rAgnwxn0ygF g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="392330661"
X-IronPort-AV: E=Sophos;i="6.03,267,1694761200"; d="scan'208";a="392330661"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2023 03:27:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10880"; a="754436480"
X-IronPort-AV: E=Sophos;i="6.03,267,1694761200"; d="scan'208";a="754436480"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 01 Nov 2023 03:27:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Nov 2023 12:27:03 +0200
Date: Wed, 1 Nov 2023 12:27:03 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <ZUIn90ljTBuekk-5@intel.com>
References: <20231018154123.5479-1-ville.syrjala@linux.intel.com>
 <20231018154123.5479-3-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231018154123.5479-3-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/mst: Disable transcoder before
 deleting the payload
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Oct 18, 2023 at 06:41:21PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Bspec tells us that we should disable the transcoder before
> deleting the payload. Looks like this has been reversed since
> MST support was added.

I suppose this shouldn't matter in practice since the downstream
device shouldn't really do anything with the new payload until
we send the ACT. But I see no compelling reason to deviate from
the bspec sequence regardless.

> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 7b4628f4f124..57eb581b8a50 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -587,10 +587,6 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
>  	struct intel_dp *intel_dp = &dig_port->dp;
>  	struct intel_connector *connector =
>  		to_intel_connector(old_conn_state->connector);
> -	struct drm_dp_mst_topology_state *new_mst_state =
> -		drm_atomic_get_new_mst_topology_state(&state->base, &intel_dp->mst_mgr);
> -	struct drm_dp_mst_atomic_payload *new_payload =
> -		drm_atomic_get_mst_payload_state(new_mst_state, connector->port);
>  	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  
>  	drm_dbg_kms(&i915->drm, "active links %d\n",
> @@ -598,8 +594,6 @@ static void intel_mst_disable_dp(struct intel_atomic_state *state,
>  
>  	intel_hdcp_disable(intel_mst->connector);
>  
> -	drm_dp_remove_payload_part1(&intel_dp->mst_mgr, new_mst_state, new_payload);
> -
>  	intel_audio_codec_disable(encoder, old_crtc_state, old_conn_state);
>  }
>  
> @@ -634,6 +628,8 @@ static void intel_mst_post_disable_dp(struct intel_atomic_state *state,
>  
>  	intel_disable_transcoder(old_crtc_state);
>  
> +	drm_dp_remove_payload_part1(&intel_dp->mst_mgr, new_mst_state, new_payload);
> +
>  	clear_act_sent(encoder, old_crtc_state);
>  
>  	intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(old_crtc_state->cpu_transcoder),
> -- 
> 2.41.0

-- 
Ville Syrjälä
Intel
