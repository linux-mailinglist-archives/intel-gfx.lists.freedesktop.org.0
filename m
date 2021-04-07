Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3BB3567AE
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Apr 2021 11:08:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB4C16E8E2;
	Wed,  7 Apr 2021 09:08:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6A806E8E2
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Apr 2021 09:08:24 +0000 (UTC)
IronPort-SDR: 2yL7FlcH+NqWg4jTy2I3HGIp3OvZQ9/KZcl3Td85EtyRrqULFefJSA3X3R9M5X2r5iSD8oqJf2
 37ray5SHuPuw==
X-IronPort-AV: E=McAfee;i="6000,8403,9946"; a="192803724"
X-IronPort-AV: E=Sophos;i="5.82,203,1613462400"; d="scan'208";a="192803724"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 02:08:24 -0700
IronPort-SDR: qk8ex7+sMMOZlJKPS5jjM7ViIG73uRBJ0D5LOybpUY1wMhhlgr7/FiFkxKydqEHHHQfh3FjgCj
 vAZdAjx7m8Lw==
X-IronPort-AV: E=Sophos;i="5.82,203,1613462400"; d="scan'208";a="458275808"
Received: from aknautiy-mobl.gar.corp.intel.com (HELO [10.215.188.114])
 ([10.215.188.114])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2021 02:08:22 -0700
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210406101421.723-1-anshuman.gupta@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Message-ID: <14cd15c9-4402-ba9e-c1b0-e99a292e5bbe@intel.com>
Date: Wed, 7 Apr 2021 14:38:13 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210406101421.723-1-anshuman.gupta@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hdcp: Fix uninitialized symbol
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

On 4/6/2021 3:44 PM, Anshuman Gupta wrote:
> Fix static analysis tool uninitialized symbol error.
>
> Reported-by: kernel test robot <lkp@intel.com>
> Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index 90868e156c69..a4373fb2817b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -532,7 +532,7 @@ int intel_dp_hdcp2_read_msg(struct intel_digital_port *dig_port,
>   	u8 *byte = buf;
>   	ssize_t ret, bytes_to_recv, len;
>   	const struct hdcp2_dp_msg_data *hdcp2_msg_data;
> -	ktime_t msg_end;
> +	ktime_t msg_end = 0;

Change looks good to me, although ktime_set(0, 0) seems to be majorly 
used for resetting ktime_t variable.

In any case:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

>   	bool msg_expired;
>   
>   	hdcp2_msg_data = get_hdcp2_dp_msg_data(msg_id);
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
