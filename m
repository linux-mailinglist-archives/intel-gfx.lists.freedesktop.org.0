Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADDFA8C867C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 14:48:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16E4B10EE9B;
	Fri, 17 May 2024 12:48:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e/287K4C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E654410EE9B
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2024 12:48:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715950133; x=1747486133;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=58d3eiClVXBnAmm6VStTwiE9jgjwjizWFdfWmgYxNyk=;
 b=e/287K4Cp2OvjGgK/pfp0OjetXHww2vSSqZ1fsJLcYEc6si+beCHwC+J
 Df7YUVSKOxveD10Rzvi3cM4TgPSnThcszIUPyEuXIJwQAojQUsD061J+K
 Vw+oOEgo3ufPm4WNZtrFsrIWtBJ7f9pm+jQQ9gYWzvM94dnif7t1Cvtjv
 2KIIIhD6ZRiB310kBktmwtEF3oDBuqZlg7GKXLtKbhHTmBoVGHZfBmArx
 hfv4hg9wwvB9RRwJ0Yc2ZSrM7sRJiPH6/fF0SpEZYdjOxoiLUWD1MDWDt
 jbcBLD8IX4a5fb0pl609ke7J/QV3DpCkU1W/jv7XAsiiRgWQ6J6tuS1kg A==;
X-CSE-ConnectionGUID: PgL5OOjvRPiXHVpnmL3Qzw==
X-CSE-MsgGUID: qFScrVMnS8aV7NPTKqD1Fg==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="22798573"
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="22798573"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 05:48:52 -0700
X-CSE-ConnectionGUID: R4B+fHgQT4iPiJUxc8RW9Q==
X-CSE-MsgGUID: 1kUZuXURSjKBbKEj1/473g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,167,1712646000"; d="scan'208";a="32326525"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 05:48:51 -0700
Date: Fri, 17 May 2024 15:48:53 +0300
From: Imre Deak <imre.deak@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, chaitanya.kumar.borah@intel.com,
 uma.shankar@intel.com, ankit.k.nautiyal@intel.com
Subject: Re: [PATCH 2/2] drm/i915/hdcp: Check mst_port to determine connector
 type
Message-ID: <ZkdSNa0Cb1EpwpUB@ideak-desk.fi.intel.com>
References: <20240507035037.1025012-1-suraj.kandpal@intel.com>
 <20240507035037.1025012-3-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240507035037.1025012-3-suraj.kandpal@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 07, 2024 at 09:20:37AM +0530, Suraj Kandpal wrote:
> Check mst_port field in intel_connector to check connector type
> rather than rely on encoder as it may not be attached to connector
> at times.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 551c862ed7a6..2edffe62f360 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -693,7 +693,7 @@ int intel_dp_hdcp_get_remote_capability(struct intel_connector *connector,
>  
>  	*hdcp_capable = false;
>  	*hdcp2_capable = false;
> -	if (!intel_encoder_is_mst(connector->encoder))
> +	if (!connector->mst_port)

I suppose this fixes
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10898

Could you add the Closes: line for it?

Can this function be called for anything else than an MST connector?

Afaics it's only called from 

intel_connector_info() ->
	intel_hdcp_info(..., remote_req = true)

only for MST connectors, which makes sense since only MST connectors
would have remote caps. In that case it would be enough to simply remove
the encoder check which leads to the NULL deref in case the output is
disabled.

>  		return -EINVAL;
>  
>  	aux = &connector->port->aux;
> -- 
> 2.43.2
> 
