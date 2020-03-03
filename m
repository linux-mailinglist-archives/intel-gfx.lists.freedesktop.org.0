Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8ED3176EE6
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 06:43:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45F3C6E998;
	Tue,  3 Mar 2020 05:43:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F9956E996
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 05:43:26 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Mar 2020 21:43:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,510,1574150400"; d="scan'208";a="274063193"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by fmsmga002.fm.intel.com with ESMTP; 02 Mar 2020 21:43:23 -0800
Date: Tue, 3 Mar 2020 11:13:25 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <20200303054325.GA20842@intel.com>
References: <20200220123217.23635-3-anshuman.gupta@intel.com>
 <20200303052407.25609-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200303052407.25609-1-anshuman.gupta@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915/hdcp: Fix
 config_stream_type() ret value
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

On 2020-03-03 at 10:54:07 +0530, Anshuman Gupta wrote:
> DP shim's config_stream_type considered to be succeeded when
> return value of intel_dp_hdcp2_write_msg() equals to size of
> message to be written, it makes config_stream_type to return
> a zero success value in order to succeed the HDCP auth.
> 
> v2:
> - config_stream_type() returns 0 on success. [Ram]
> 
> CC: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 2db8d46f61a1..2259c2527457 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6448,6 +6448,7 @@ static
>  int intel_dp_hdcp2_config_stream_type(struct intel_digital_port *intel_dig_port,
>  				      bool is_repeater, u8 content_type)
>  {
> +	int ret;
>  	struct hdcp2_dp_errata_stream_type stream_type_msg;
>  
>  	if (is_repeater)
> @@ -6463,8 +6464,13 @@ int intel_dp_hdcp2_config_stream_type(struct intel_digital_port *intel_dig_port,
>  	stream_type_msg.msg_id = HDCP_2_2_ERRATA_DP_STREAM_TYPE;
>  	stream_type_msg.stream_type = content_type;
>  
> -	return intel_dp_hdcp2_write_msg(intel_dig_port, &stream_type_msg,
> +	ret =  intel_dp_hdcp2_write_msg(intel_dig_port, &stream_type_msg,
>  					sizeof(stream_type_msg));
> +
> +	if (ret == sizeof(stream_type_msg))
return ret < 0 ? ret : 0;
Above statement will be sufficient here?

-Ram
> +		return 0;
> +	else
> +		return ret;
>  }
>  
>  static
> -- 
> 2.25.1
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
