Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA79733FFAF
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Mar 2021 07:33:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B28F6E093;
	Thu, 18 Mar 2021 06:33:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 111BF6E093
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Mar 2021 06:33:13 +0000 (UTC)
IronPort-SDR: 1OeRY/i4ryCG3KJdIxufdW6oK+88resNQNd7w5Xl7nCBXP6Qjzy4jk8VCOwREymrYUV1KUGX6l
 C7TAbWKTzehw==
X-IronPort-AV: E=McAfee;i="6000,8403,9926"; a="189704279"
X-IronPort-AV: E=Sophos;i="5.81,257,1610438400"; d="scan'208";a="189704279"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 23:33:11 -0700
IronPort-SDR: lnF+KXyeyvWs0o/VX0vfL1+Lo1jP/ajhl1Rzzjp+DxO09zVnHundGp+aKVzZLYgGnaPU+pi+CH
 D+sGDOtXTRYA==
X-IronPort-AV: E=Sophos;i="5.81,257,1610438400"; d="scan'208";a="412950869"
Received: from aknautiy-mobl.gar.corp.intel.com (HELO [10.251.79.123])
 ([10.251.79.123])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2021 23:33:10 -0700
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210304085608.21372-1-anshuman.gupta@intel.com>
 <20210304085608.21372-4-anshuman.gupta@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <fe2e0ec8-a41c-5d26-48b7-62ac40285d6c@intel.com>
Date: Thu, 18 Mar 2021 12:03:08 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210304085608.21372-4-anshuman.gupta@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/hdcp: return correct error
 code
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

Looks good to me.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 3/4/2021 2:26 PM, Anshuman Gupta wrote:
> hdcp2_enable_stream_encryption shouldn't get called in case
> of any port authentication or encryption error, though
> hdcp2_enable_stream_encryption checks for link encryption
> before enabling stream encryption and returns error but
> this return error code won't be correct in case of any error
> due to port authentication and encryption.
>
> Cc: Ramalingam C <ramalingam.c@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_hdcp.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 9a70c164c377..21d6c73784b3 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -1896,7 +1896,8 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
>   		}
>   	}
>   
> -	ret = hdcp2_enable_stream_encryption(connector);
> +	if (!ret)
> +		ret = hdcp2_enable_stream_encryption(connector);
>   
>   	return ret;
>   }
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
