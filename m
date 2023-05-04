Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFFE26F7232
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 20:57:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D39410E4B9;
	Thu,  4 May 2023 18:57:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C200110E501
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 18:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683226666; x=1714762666;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=gpJGqf/nWjTVszxycI0dhoQNW/XulLJGppuLfa29P5o=;
 b=TEfFPCkAZVLIoLpWL6IlaYt95SIq7k9GchJ8fd3PamgvZgg9IvIyZHNB
 V82e97LbtPJz5iBAh9B4S6PEzd9OF+sd5yY+9zT8s/8FW8LOf6VvyISEv
 KxO/uAy3pi50YuqJ/JEVxGkJcF2vS9hksKkFU8eh195VUhJYjaUcXXV8x
 lckB1Iy48pwylFPJjWFNTO8sSBXRk6berWtH0kEhf7FS0c7qocf0dCslk
 6CueGaHLwbWDfF1/4VoHHLQVy4d4boukrFlH+26XtZZDL1nvfH88PY6dv
 9v+LnBt0N4AMmIxkYg+FOyz+8eCh4l7rwVD+z2T66z7uMxCrSmXzFiWCM g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="412239208"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="412239208"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 11:54:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="729928277"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="729928277"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.36.244])
 ([10.252.36.244])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 11:54:51 -0700
Message-ID: <b4f555bc-c20c-a2ea-87e3-318a0ababd2c@linux.intel.com>
Date: Thu, 4 May 2023 20:54:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Content-Language: en-US
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 intel-gfx@lists.freedesktop.org
References: <20230504102805.18645-1-juhapekka.heikkila@gmail.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20230504102805.18645-1-juhapekka.heikkila@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/mtl: Drop FLAT CCS check
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
Cc: Pallavi Mishra <pallavi.mishra@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 5/4/2023 12:28 PM, Juha-Pekka Heikkila wrote:
> From: Pallavi Mishra <pallavi.mishra@intel.com>
>
> Remove FLAT CCS check from XY_FAST_COLOR_BLT usage, thus
> enabling MTL to use it.
>
> Signed-off-by: Pallavi Mishra <pallavi.mishra@intel.com>
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

I think should fix the mtl migrate selftest failure. 
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13108/bat-mtlp-6/igt@i915_selftest@live@migrate.html#dmesg-warnings745

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

> ---
>   drivers/gpu/drm/i915/gt/intel_migrate.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
> index 3f638f198796..e0998879a0e1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_migrate.c
> +++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
> @@ -920,7 +920,7 @@ static int emit_clear(struct i915_request *rq, u32 offset, int size,
>   
>   	GEM_BUG_ON(size >> PAGE_SHIFT > S16_MAX);
>   
> -	if (HAS_FLAT_CCS(i915) && ver >= 12)
> +	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
>   		ring_sz = XY_FAST_COLOR_BLT_DW;
>   	else if (ver >= 8)
>   		ring_sz = 8;
> @@ -931,7 +931,7 @@ static int emit_clear(struct i915_request *rq, u32 offset, int size,
>   	if (IS_ERR(cs))
>   		return PTR_ERR(cs);
>   
> -	if (HAS_FLAT_CCS(i915) && ver >= 12) {
> +	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
>   		*cs++ = XY_FAST_COLOR_BLT_CMD | XY_FAST_COLOR_BLT_DEPTH_32 |
>   			(XY_FAST_COLOR_BLT_DW - 2);
>   		*cs++ = FIELD_PREP(XY_FAST_COLOR_BLT_MOCS_MASK, mocs) |
