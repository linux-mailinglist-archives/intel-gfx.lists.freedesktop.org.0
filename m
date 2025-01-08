Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1438DA062DC
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 18:02:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B20F310E249;
	Wed,  8 Jan 2025 17:02:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g9L5jDs1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D9B310E249
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 17:02:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736355758; x=1767891758;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=iNwu0MCUDPiMIdjppVp0xuJ4IPqylrPLFipZUWICyqw=;
 b=g9L5jDs1atZ0CckKdKWKm4ov+8Vkh4zpY5rVifnX12wwAebp+Sq4CxYp
 NlM7zY+MWL9l7KYsUzqmJMwRHglYZ40QXsdZWscC7/uiivV71riqVP2xl
 KajOAT4Z+9LhCGEvX4x0C+yrls50Vep/04CxeCgfphprCBZg/xQ4buqwp
 oGAZVRE/TkV223gSrUtH8BtCsMeCIBk2t/Kn+5FVaDm2mSTqOXOwTCR/4
 ycSFvR8T2zrXYvt3CdVlw0hqJ+fQAZ599FMofyfGciaYLoPu1n9W9RfWS
 ckvDnn/oCVcNf3t78il34/FjJojLwP7ge1YO5SxuFMgYMkc2rIZ+Fdgv3 A==;
X-CSE-ConnectionGUID: nx2dS9FwSJmPhhWab+Xtnw==
X-CSE-MsgGUID: XU5phGWvRqCE2ZY5tNo5dA==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="40269646"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="40269646"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 09:01:54 -0800
X-CSE-ConnectionGUID: UsoABEnBQNu8PAxEJ4E8DQ==
X-CSE-MsgGUID: kcPvcOtcSjyXZy6sgZlxlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="103366337"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.152])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 09:01:53 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/5] drm/i915/dp_mst: Simplify using to_intel_display()
 passing it an intel_connector pointer
In-Reply-To: <20250108151916.491113-4-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250108151916.491113-1-imre.deak@intel.com>
 <20250108151916.491113-4-imre.deak@intel.com>
Date: Wed, 08 Jan 2025 19:01:49 +0200
Message-ID: <878qrlkznm.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 08 Jan 2025, Imre Deak <imre.deak@intel.com> wrote:
> Simplify the use of to_intel_display() in intel_dp_mst.c passing it the
> already available intel_connector pointer, instead of looking up a
> drm_device pointer for the same purpose.
>
> Suggested-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

I guess I would've just squashed this to the previous patch, but
*shrug*.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index a7bfedc5945ea..85f451c986ae8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1351,7 +1351,7 @@ static bool mst_stream_initial_fastset_check(struct intel_encoder *encoder,
>  static int mst_connector_get_ddc_modes(struct drm_connector *_connector)
>  {
>  	struct intel_connector *connector = to_intel_connector(_connector);
> -	struct intel_display *display = to_intel_display(connector->base.dev);
> +	struct intel_display *display = to_intel_display(connector);
>  	struct intel_dp *intel_dp = connector->mst_port;
>  	const struct drm_edid *drm_edid;
>  	int ret;
> @@ -1422,7 +1422,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  			     enum drm_mode_status *status)
>  {
>  	struct intel_connector *connector = to_intel_connector(_connector);
> -	struct intel_display *display = to_intel_display(connector->base.dev);
> +	struct intel_display *display = to_intel_display(connector);
>  	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
>  	struct intel_dp *intel_dp = connector->mst_port;
>  	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst_mgr;
> @@ -1548,7 +1548,7 @@ mst_connector_detect_ctx(struct drm_connector *_connector,
>  			 struct drm_modeset_acquire_ctx *ctx, bool force)
>  {
>  	struct intel_connector *connector = to_intel_connector(_connector);
> -	struct intel_display *display = to_intel_display(connector->base.dev);
> +	struct intel_display *display = to_intel_display(connector);
>  	struct intel_dp *intel_dp = connector->mst_port;
>  
>  	if (!intel_display_device_enabled(display))

-- 
Jani Nikula, Intel
