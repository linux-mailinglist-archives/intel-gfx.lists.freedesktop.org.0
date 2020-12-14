Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E012D98B6
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Dec 2020 14:25:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 285FD6E1BB;
	Mon, 14 Dec 2020 13:25:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D284E6E176;
 Mon, 14 Dec 2020 13:25:38 +0000 (UTC)
IronPort-SDR: xQyAK9+9nxC1WYBNmFux3vmvOoD+IE/P0eh5meE7Bo/zh5nDd0L+Eo9UfjlsnMFwegw39PMcPY
 MKtb1G4G8SQA==
X-IronPort-AV: E=McAfee;i="6000,8403,9834"; a="236288102"
X-IronPort-AV: E=Sophos;i="5.78,418,1599548400"; d="scan'208";a="236288102"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 05:25:38 -0800
IronPort-SDR: PyJIfVqCzWY11pfBVp6LJrv3h0HI9dghDvuSVHqDqbmth/yLmhP57Wje0Pdj2VaoV30hZH/Z+2
 OENSyC0I608g==
X-IronPort-AV: E=Sophos;i="5.78,418,1599548400"; d="scan'208";a="336083251"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2020 05:25:35 -0800
Date: Mon, 14 Dec 2020 18:55:25 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20201214132525.GA22687@intel.com>
References: <20201211134244.14588-1-anshuman.gupta@intel.com>
 <20201211134244.14588-20-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201211134244.14588-20-anshuman.gupta@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v8 19/19] drm/i915/hdcp: Enable HDCP 2.2 MST
 support
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

On 2020-12-11 at 19:12:44 +0530, Anshuman Gupta wrote:
> Enable HDCP 2.2 MST support till Gen12.
> 
> Cc: Ramalingam C <ramalingam.c@intel.com>

Reviewed-by: Ramalingam C <ramalingam.c@intel.com>

> Tested-by: Karthik B S <karthik.b.s@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 768a6218b9c4..20c8d8f63566 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -2233,7 +2233,7 @@ int intel_hdcp_init(struct intel_connector *connector,
>  	if (!shim)
>  		return -EINVAL;
>  
> -	if (is_hdcp2_supported(dev_priv) && !connector->mst_port)
> +	if (is_hdcp2_supported(dev_priv))
>  		intel_hdcp2_init(connector, dig_port, shim);
>  
>  	ret =
> -- 
> 2.26.2
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
