Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B242A2A83C6
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 17:45:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 026AE6EDAD;
	Thu,  5 Nov 2020 16:45:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDA176EDAD;
 Thu,  5 Nov 2020 16:45:04 +0000 (UTC)
IronPort-SDR: RjzUfe7/aKZ655oRXQWFQ5Tx2z8DFTAh3bUUrHrPGH2rj0qpPs99kcL2unitTl7GFWv11ZoStd
 OB8bHM+rsALA==
X-IronPort-AV: E=McAfee;i="6000,8403,9796"; a="254121075"
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="254121075"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 08:44:58 -0800
IronPort-SDR: oWT1PErRS9vTaa6Qbwn481xXu+r7RmegJZFhC8TTUaEeIzedsHCxu/O6GSt+uM+qr0dHL5ikNB
 a4W+FXE8Dgeg==
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="326086192"
Received: from unknown (HELO intel.com) ([10.99.66.154])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 08:44:54 -0800
Date: Thu, 5 Nov 2020 22:15:37 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20201105164537.GM3242@intel.com>
References: <20201027164208.10026-1-anshuman.gupta@intel.com>
 <20201027164208.10026-14-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201027164208.10026-14-anshuman.gupta@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v4 13/16] drm/i915/hdcp: Pass connector to
 check_2_2_link
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

On 2020-10-27 at 22:12:05 +0530, Anshuman Gupta wrote:
> This requires for HDCP 2.2 MST check link.
> 
> Cc: Ramalingam C <ramalingam.c@intel.com>
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 3 ++-
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c       | 3 ++-
>  drivers/gpu/drm/i915/display/intel_hdcp.c          | 2 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c          | 3 ++-
>  4 files changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 24e0067c2e7c..dfb5be64e03a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -375,7 +375,8 @@ struct intel_hdcp_shim {
>  				  bool is_repeater, u8 type);
>  
>  	/* HDCP2.2 Link Integrity Check */
> -	int (*check_2_2_link)(struct intel_digital_port *dig_port);
> +	int (*check_2_2_link)(struct intel_digital_port *dig_port,
> +			      struct intel_connector *connector);
do we need both of them?

-Ram.
>  };
>  
>  struct intel_hdcp {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 591b68e5de48..4be61e7fde4e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -585,7 +585,8 @@ int intel_dp_hdcp2_config_stream_type(struct intel_digital_port *dig_port,
>  }
>  
>  static
> -int intel_dp_hdcp2_check_link(struct intel_digital_port *dig_port)
> +int intel_dp_hdcp2_check_link(struct intel_digital_port *dig_port,
> +			      struct intel_connector *connector)
>  {
>  	u8 rx_status;
>  	int ret;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 1df6d4a23476..87f7aaf3a319 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -1940,7 +1940,7 @@ static int intel_hdcp2_check_link(struct intel_connector *connector)
>  		goto out;
>  	}
>  
> -	ret = hdcp->shim->check_2_2_link(dig_port);
> +	ret = hdcp->shim->check_2_2_link(dig_port, connector);
>  	if (ret == HDCP_LINK_PROTECTED) {
>  		if (hdcp->value != DRM_MODE_CONTENT_PROTECTION_UNDESIRED) {
>  			intel_hdcp_update_value(connector,
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 0788de04711b..bd0d91101464 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1734,7 +1734,8 @@ int intel_hdmi_hdcp2_read_msg(struct intel_digital_port *dig_port,
>  }
>  
>  static
> -int intel_hdmi_hdcp2_check_link(struct intel_digital_port *dig_port)
> +int intel_hdmi_hdcp2_check_link(struct intel_digital_port *dig_port,
> +				struct intel_connector *connector)
>  {
>  	u8 rx_status[HDCP_2_2_HDMI_RXSTATUS_LEN];
>  	int ret;
> -- 
> 2.26.2
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
