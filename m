Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD76A062E0
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 18:02:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86FB410E904;
	Wed,  8 Jan 2025 17:02:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A3FCc3Kt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A707C10E90A
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 17:02:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736355768; x=1767891768;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=P8qRUaFF/8XJYl0ICjbcUv4GCSXyMSj+iqGX/WCjK8k=;
 b=A3FCc3Kt17j4r3rzDZJ3TPtQQwV/ppu3RCix+osilgAMzqRu2X/3o5u+
 rc4cxbm2SLtpYC8AZyT231qr/yAIfoA/2xCN73gMzbsq0Dp0UK7j1N0nJ
 peF9slCm6LFyDHpUdhu/V+/asyio9Y2AZVMwhOG6R3rwRO3+eO7dDlmP7
 QbHIOPRddNqfSDHLCKRdSnzzjKONzQ+ufCmv1Dh9rgUICYw3hZiDOExTw
 /xldAW/uezt42Bzm2gbwekx7FAp0vGC1clOaFaI72AcSetY/Xh7/7HaTv
 DYAYwBZRIeKX/RldY5d5aAnSQM9o43N3q7lebvGFP1vFfWrxIjHN4hjLO Q==;
X-CSE-ConnectionGUID: ICOjwad0TZ+oAX04zlX2mQ==
X-CSE-MsgGUID: WSpQU46UQiGXBoR3PlgLhw==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="40359554"
X-IronPort-AV: E=Sophos;i="6.12,298,1728975600"; d="scan'208";a="40359554"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 09:02:48 -0800
X-CSE-ConnectionGUID: zI7YjqhAT5q42O/hfg8Wig==
X-CSE-MsgGUID: JDK6tW6+Q5u2AsccdZ5cgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="107757544"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.152])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 09:02:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 4/5] drm/i915/dp_mst: Simplify getting a drm_device
 pointer needed by to_i915()
In-Reply-To: <20250108151916.491113-5-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250108151916.491113-1-imre.deak@intel.com>
 <20250108151916.491113-5-imre.deak@intel.com>
Date: Wed, 08 Jan 2025 19:02:44 +0200
Message-ID: <875xmpkzm3.fsf@intel.com>
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
> Simplify getting a drm_device pointer when using to_i915() in
> intel_dp_mst.c from the already available intel_display object, instead
> of getting it from a DRM KMS object.
>
> While at it rename dev_priv to i915, following the driver's standard
> terminology.
>
> Suggested-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

I don't much care about dev_priv -> i915 renames anymore, since the goal
is to remove both. Anyway,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 85f451c986ae8..fbc504037a969 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1423,7 +1423,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  {
>  	struct intel_connector *connector = to_intel_connector(_connector);
>  	struct intel_display *display = to_intel_display(connector);
> -	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct intel_dp *intel_dp = connector->mst_port;
>  	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst_mgr;
>  	struct drm_dp_mst_port *port = connector->port;
> @@ -1442,7 +1442,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  		return 0;
>  	}
>  
> -	*status = intel_cpu_transcoder_mode_valid(dev_priv, mode);
> +	*status = intel_cpu_transcoder_mode_valid(i915, mode);
>  	if (*status != MODE_OK)
>  		return 0;
>  
> @@ -1526,7 +1526,7 @@ mst_connector_mode_valid_ctx(struct drm_connector *_connector,
>  		return 0;
>  	}
>  
> -	*status = intel_mode_valid_max_plane_size(dev_priv, mode, num_joined_pipes);
> +	*status = intel_mode_valid_max_plane_size(i915, mode, num_joined_pipes);
>  	return 0;
>  }

-- 
Jani Nikula, Intel
