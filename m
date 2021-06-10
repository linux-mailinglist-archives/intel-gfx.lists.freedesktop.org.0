Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2803A32E8
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jun 2021 20:18:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20D0C88052;
	Thu, 10 Jun 2021 18:18:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7C116EDC8
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jun 2021 18:18:20 +0000 (UTC)
IronPort-SDR: xrpq98VkmfQ5qaZ/QHUBJRsPvUs3rNNIhIYuYZsrlbnqROPzjtlT4WyOPB8iR1w7YXUb1zGgvc
 m5z3eJ7usGog==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="202337260"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="202337260"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 11:18:20 -0700
IronPort-SDR: EW/bXqwnR3gcDl/7dG3Qrf/8vOTgf37if06DUd7+yGcvUraAyA2rAorF/3/o4eMbmIqRFf+psr
 2GRa86o8fYtg==
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="441315174"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 11:18:19 -0700
Date: Thu, 10 Jun 2021 11:18:18 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20210610181818.GQ6936@mdroper-desk1.amr.corp.intel.com>
References: <20210610070213.24764-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210610070213.24764-1-stanislav.lisovskiy@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix parenthesis and dbuf condition
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

On Thu, Jun 10, 2021 at 10:02:13AM +0300, Stanislav Lisovskiy wrote:
> Removed excessive parenthesis and placed && on
> previous line in DBUF state checker.
> 
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Minor nit:  you probably want "parentheses" in the subject and commit
message as the plural form of the word "parenthesis."


> ---
>  drivers/gpu/drm/i915/intel_pm.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 97d9cde64e26..ded0fb8ed817 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -8324,8 +8324,8 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
>  		intel_atomic_get_old_dbuf_state(state);
>  
>  	if (!new_dbuf_state ||
> -	    ((new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices)
> -	    && (new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus)))
> +	    (new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices &&
> +	     new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus))
>  		return;
>  
>  	WARN_ON(!new_dbuf_state->base.changed);
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
