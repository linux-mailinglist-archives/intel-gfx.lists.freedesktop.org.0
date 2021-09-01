Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3393FDF9E
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Sep 2021 18:19:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD4E16E1F3;
	Wed,  1 Sep 2021 16:19:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B9066E207
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Sep 2021 16:19:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="205924720"
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="205924720"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 09:19:08 -0700
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="510479779"
Received: from frodasgo-mobl3.amr.corp.intel.com (HELO intel.com)
 ([10.255.39.35])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 09:19:07 -0700
Date: Wed, 1 Sep 2021 12:19:05 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <YS+n+Sj5sUWhUqoO@intel.com>
References: <cover.1630327990.git.jani.nikula@intel.com>
 <939453050a5a5175a12a08f16542c1b40bd726dc.1630327990.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <939453050a5a5175a12a08f16542c1b40bd726dc.1630327990.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915/debugfs: register LPSP
 capability on all platforms
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

On Mon, Aug 30, 2021 at 03:53:42PM +0300, Jani Nikula wrote:
> The debugfs file shows it's not capable, don't duplicate the info.

okay, but the file is useless if not supported right?!
I believe the goal here was even avoid the file creation...

But either way:
If this is not breaking IGT:
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_debugfs.c    | 13 +++++--------
>  1 file changed, 5 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index a6dcb95cfc1f..c1cd5d005e08 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -2486,14 +2486,11 @@ int intel_connector_debugfs_add(struct drm_connector *connector)
>  				    connector, &i915_dsc_bpp_fops);
>  	}
>  
> -	/* Legacy panels doesn't lpsp on any platform */
> -	if ((DISPLAY_VER(dev_priv) >= 9 || IS_HASWELL(dev_priv) ||
> -	     IS_BROADWELL(dev_priv)) &&
> -	     (connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
> -	     connector->connector_type == DRM_MODE_CONNECTOR_eDP ||
> -	     connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
> -	     connector->connector_type == DRM_MODE_CONNECTOR_HDMIA ||
> -	     connector->connector_type == DRM_MODE_CONNECTOR_HDMIB))
> +	if (connector->connector_type == DRM_MODE_CONNECTOR_DSI ||
> +	    connector->connector_type == DRM_MODE_CONNECTOR_eDP ||
> +	    connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
> +	    connector->connector_type == DRM_MODE_CONNECTOR_HDMIA ||
> +	    connector->connector_type == DRM_MODE_CONNECTOR_HDMIB)
>  		debugfs_create_file("i915_lpsp_capability", 0444, root,
>  				    connector, &i915_lpsp_capability_fops);
>  
> -- 
> 2.20.1
> 
