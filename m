Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 811BA155915
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 15:15:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD0316EAC2;
	Fri,  7 Feb 2020 14:15:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5778F6EAC2
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 14:15:54 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 06:15:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,413,1574150400"; d="scan'208";a="232388170"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga003.jf.intel.com with ESMTP; 07 Feb 2020 06:15:52 -0800
Date: Fri, 7 Feb 2020 19:46:03 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200207141603.GF11460@intel.com>
References: <20200128135425.14596-1-anshuman.gupta@intel.com>
 <20200128135425.14596-5-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128135425.14596-5-anshuman.gupta@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Add HDCP2.2 capable debug
 print
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

On 2020-01-28 at 19:24:25 +0530, Anshuman Gupta wrote:
> Few CI panel claims to support HDCP 2.2 but at CI
> HDCP IGT test execution these panels are not detecting
> as HDCP 2.2 supported panels. Adding HDCP 2.2 version
> print will be useful in such cases.
> 
> CC: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c   | 2 ++
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 2 ++
>  2 files changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 991f343579ef..22a3c3e9ade2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6449,6 +6449,8 @@ int intel_dp_hdcp2_capable(struct intel_digital_port *intel_dig_port,
>  	if (ret != HDCP_2_2_RXCAPS_LEN)
>  		return ret >= 0 ? -EIO : ret;
>  
> +	DRM_DEBUG_KMS("HDCP 2.2 RxCaps VERSION 0x%x\n", rx_caps[0]);
I am not able to convince myself this is needed. After getting this
value we will manually do the operations implemented in the next lines.
So this is not adding any value.
> +
>  	if (rx_caps[0] == HDCP_2_2_RX_CAPS_VERSION_VAL &&
>  	    HDCP_2_2_DP_HDCP_CAPABLE(rx_caps[2]))
>  		*capable = true;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 685589064d10..a7af0be83397 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -1701,6 +1701,8 @@ int intel_hdmi_hdcp2_capable(struct intel_digital_port *intel_dig_port,
>  	*capable = false;
>  	ret = intel_hdmi_hdcp_read(intel_dig_port, HDCP_2_2_HDMI_REG_VER_OFFSET,
>  				   &hdcp2_version, sizeof(hdcp2_version));
> +	DRM_DEBUG_KMS("HDCP2Version 0%x\n", hdcp2_version);
Same here too.

Ram.
> +
>  	if (!ret && hdcp2_version & HDCP_2_2_HDMI_SUPPORT_MASK)
>  		*capable = true;
>  
> -- 
> 2.24.0
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
