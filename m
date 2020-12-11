Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAD182D7046
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Dec 2020 07:37:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E90A6EC55;
	Fri, 11 Dec 2020 06:37:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 459806EC54;
 Fri, 11 Dec 2020 06:37:16 +0000 (UTC)
IronPort-SDR: vrRCaKlBSqUGNTOZZlDUwjA37dhAL1sY9SLxsKWM4EJUNV/X9c4PZJZimwl9C7y/8E0HRW3c6i
 NzbGzVH7swgQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="173623370"
X-IronPort-AV: E=Sophos;i="5.78,410,1599548400"; d="scan'208";a="173623370"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 22:37:15 -0800
IronPort-SDR: och1WLRW1IPXNzGt7RjdvgPgeiRsHNgA+yp52yhjojl0/JtoI3FYLlilculVx0VHI0or9YMu4x
 ICZ6KWknaQLw==
X-IronPort-AV: E=Sophos;i="5.78,410,1599548400"; d="scan'208";a="374046235"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 22:37:13 -0800
Date: Fri, 11 Dec 2020 12:07:01 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20201211063701.GC1297@intel.com>
References: <20201210062640.11783-1-anshuman.gupta@intel.com>
 <20201210062640.11783-10-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201210062640.11783-10-anshuman.gupta@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v7 09/18] drm/i915/hdcp: Enable Gen12 HDCP
 1.4 DP MST support
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, seanpaul@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2020-12-10 at 11:56:31 +0530, Anshuman Gupta wrote:
> Enable HDCP 1.4 over DP MST for Gen12.
> 
> v2:
> - Enable HDCP for <= Gen12 platforms. [Ram]
> 
> Cc: Ramalingam C <ramalingam.c@intel.com>
> Tested-by: Karthik B S <karthik.b.s@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 47beb442094f..ae24e1af49be 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -829,12 +829,10 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
>  	intel_attach_force_audio_property(connector);
>  	intel_attach_broadcast_rgb_property(connector);
>  
> -
> -	/* TODO: Figure out how to make HDCP work on GEN12+ */
> -	if (INTEL_GEN(dev_priv) < 12) {
> +	if (INTEL_GEN(dev_priv) <= 12) {
>  		ret = intel_dp_init_hdcp(dig_port, intel_connector);
>  		if (ret)
> -			DRM_DEBUG_KMS("HDCP init failed, skipping.\n");
> +			drm_dbg_kms(&dev_priv->drm, "HDCP init failed, skipping.\n");
"HDCP MST init failed" might be more meaningful with connector name and
ID.


With that addressed
Reviewed-by: Ramalingam C <ramalingam.c@intel.com>
>  	}
>  
>  	/*
> -- 
> 2.26.2
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
