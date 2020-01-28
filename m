Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59C6814C397
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 00:37:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E29F6F44D;
	Tue, 28 Jan 2020 23:37:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7D5D6F44D
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 23:37:06 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 15:37:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,375,1574150400"; d="scan'208";a="427798019"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga005.fm.intel.com with SMTP; 28 Jan 2020 15:37:06 -0800
Date: Tue, 28 Jan 2020 15:37:06 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200128233706.GI22783@mdroper-desk1.amr.corp.intel.com>
References: <20200124084456.2961-1-stanislav.lisovskiy@intel.com>
 <20200124084456.2961-8-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200124084456.2961-8-stanislav.lisovskiy@intel.com>
Subject: Re: [Intel-gfx] [PATCH v16 7/7] drm/i915: Update dbuf slices only
 with full modeset
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 24, 2020 at 10:44:56AM +0200, Stanislav Lisovskiy wrote:
> During full modeset, global state(i.e dev_priv) is protected
> by locking the crtcs in state, otherwise global state is not
> serialized. Also if it is not a full modeset, we anyway
> don't need to change DBuf slice configuration as Pipe configuration
> doesn't change.

Looks correct, but don't we need this earlier so that we don't have a
bad bisection point in the git history (assuming we rely on this rather
than the extra locking from the previous patch to cover the DC off
race)?


Matt

> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 1c957df5c28c..888a9e94032e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -15373,7 +15373,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  		intel_encoders_update_prepare(state);
>  
>  	/* Enable all new slices, we might need */
> -	icl_dbuf_slice_pre_update(state);
> +	if (state->modeset)
> +		icl_dbuf_slice_pre_update(state);
>  
>  	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
>  	dev_priv->display.commit_modeset_enables(state);
> @@ -15432,7 +15433,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
>  	}
>  
>  	/* Disable all slices, we don't need */
> -	icl_dbuf_slice_post_update(state);
> +	if (state->modeset)
> +		icl_dbuf_slice_post_update(state);
>  
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_crtc_state, i) {
>  		intel_post_plane_update(state, crtc);
> -- 
> 2.24.1.485.gad05a3d8e5
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
