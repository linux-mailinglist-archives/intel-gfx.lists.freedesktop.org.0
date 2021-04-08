Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AABCE357E8B
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 10:58:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE05D6EA2F;
	Thu,  8 Apr 2021 08:58:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E7E06EA2F
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Apr 2021 08:58:37 +0000 (UTC)
IronPort-SDR: H7bKP1aH0AfYuDllSxguRJYW8rF0xZxvCmOI+0xCymnptv6QcP4U4IIJfIUO6ZuKX3iX0ykXZR
 lmfY4IrQbthQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9947"; a="181033027"
X-IronPort-AV: E=Sophos;i="5.82,205,1613462400"; d="scan'208";a="181033027"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 01:58:36 -0700
IronPort-SDR: GtbbhLZj/7YuRTgneEs9nsglHuSH7mzGwIyCxhOzQEm0/o46CE7zpgLV9HP/98oMSIbkin/u2t
 sgXuHmWW2OAw==
X-IronPort-AV: E=Sophos;i="5.82,205,1613462400"; d="scan'208";a="458740260"
Received: from aknautiy-mobl.gar.corp.intel.com (HELO [10.215.135.95])
 ([10.215.135.95])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 01:58:34 -0700
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210406101421.723-1-anshuman.gupta@intel.com>
 <20210408082642.27066-1-anshuman.gupta@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <26b32962-4e3b-c1da-5bd9-a88cf07bfdf8@intel.com>
Date: Thu, 8 Apr 2021 14:28:21 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210408082642.27066-1-anshuman.gupta@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/hdcp: Fix uninitialized symbol
 'msg_end'
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
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

LGTM

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 4/8/2021 1:56 PM, Anshuman Gupta wrote:
> Fix static analysis tool uninitialized symbol error.
>
> v2:
> - use ktime_set(0, 0) instead to initialize to zero. [Ankit]
>
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 90868e156c69..2dd9360bdf9a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -532,7 +532,7 @@ int intel_dp_hdcp2_read_msg(struct intel_digital_port *dig_port,
>   	u8 *byte = buf;
>   	ssize_t ret, bytes_to_recv, len;
>   	const struct hdcp2_dp_msg_data *hdcp2_msg_data;
> -	ktime_t msg_end;
> +	ktime_t msg_end = ktime_set(0, 0);
>   	bool msg_expired;
>   
>   	hdcp2_msg_data = get_hdcp2_dp_msg_data(msg_id);
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
