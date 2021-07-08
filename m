Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA4C3C13CF
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 15:06:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEE746E233;
	Thu,  8 Jul 2021 13:06:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A7616E233
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 13:05:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10038"; a="273339752"
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="273339752"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 06:05:51 -0700
X-IronPort-AV: E=Sophos;i="5.84,222,1620716400"; d="scan'208";a="487596069"
Received: from victorge-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.44.91])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2021 06:05:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Vandita Kulkarni <vandita.kulkarni@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210708102549.27821-2-vandita.kulkarni@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210708102549.27821-1-vandita.kulkarni@intel.com>
 <20210708102549.27821-2-vandita.kulkarni@intel.com>
Date: Thu, 08 Jul 2021 16:05:45 +0300
Message-ID: <87v95l551y.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v7 1/3] drm/i915/display: Add write permissions
 for fec support
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 08 Jul 2021, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
> Though there is a write option available on  fec_suport
> debugfs file, so far it has been registering with read
> permissions only.
>
> Suggested-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index af9e58619667..942c4419e0cb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -2428,7 +2428,7 @@ int intel_connector_debugfs_add(struct drm_connector *connector)
>  	}
>  
>  	if ((DISPLAY_VER(dev_priv) >= 11 || IS_CANNONLAKE(dev_priv)) && ((connector->connector_type == DRM_MODE_CONNECTOR_DisplayPort && !to_intel_connector(connector)->mst_port) || connector->connector_type == DRM_MODE_CONNECTOR_eDP))
> -		debugfs_create_file("i915_dsc_fec_support", S_IRUGO, root,
> +		debugfs_create_file("i915_dsc_fec_support", 0644, root,
>  				    connector, &i915_dsc_fec_support_fops);
>  
>  	/* Legacy panels doesn't lpsp on any platform */

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
