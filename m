Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E8B2CD9C0
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Dec 2020 16:02:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6311E6EB74;
	Thu,  3 Dec 2020 15:02:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 620446EB7A
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Dec 2020 15:02:28 +0000 (UTC)
IronPort-SDR: Ol9twTAoz3fw1/W61AwVc6HbtlUDSbkQf5Z4yhFCTrW+1+ULmqTTW9A4JyWQNo44olXghfrF8Q
 JbnEMwsH/skw==
X-IronPort-AV: E=McAfee;i="6000,8403,9823"; a="152456183"
X-IronPort-AV: E=Sophos;i="5.78,389,1599548400"; d="scan'208";a="152456183"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 07:02:27 -0800
IronPort-SDR: XcXM9YMzxhNDwB2taYox6ZoTqvzl5rB2eN9WXB+bA6QSJTETQRvTQpfY9TI3BTCxEO2RMrIKhQ
 A3vamcWQtOqA==
X-IronPort-AV: E=Sophos;i="5.78,389,1599548400"; d="scan'208";a="316497215"
Received: from aknautiy-mobl.gar.corp.intel.com (HELO [10.215.176.223])
 ([10.215.176.223])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 07:02:25 -0800
To: Manasi Navare <manasi.d.navare@intel.com>, intel-gfx@lists.freedesktop.org
References: <20201125072634.27664-1-manasi.d.navare@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <f8104c01-aae0-d299-b18e-09ea6ebc433d@intel.com>
Date: Thu, 3 Dec 2020 20:32:23 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
In-Reply-To: <20201125072634.27664-1-manasi.d.navare@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: No need to poll FEC Enable
 Live bit
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 11/25/2020 12:56 PM, Manasi Navare wrote:
> The Bspec does not mention polling the FEC Enable
> Live status bit. That is only there for debug purposes.
> So remove the polling from driver.
>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_ddi.c | 6 ------
>   1 file changed, 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 92940a0c5ef8..6b3edd7e4423 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3507,12 +3507,6 @@ static void intel_ddi_enable_fec(struct intel_encoder *encoder,
>   	val = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
>   	val |= DP_TP_CTL_FEC_ENABLE;
>   	intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), val);
> -
> -	if (intel_de_wait_for_set(dev_priv,
> -				  dp_tp_status_reg(encoder, crtc_state),
> -				  DP_TP_STATUS_FEC_ENABLE_LIVE, 1))
> -		drm_err(&dev_priv->drm,
> -			"Timed out waiting for FEC Enable Status\n");
>   }
>   
>   static void intel_ddi_disable_fec_state(struct intel_encoder *encoder,

Looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
