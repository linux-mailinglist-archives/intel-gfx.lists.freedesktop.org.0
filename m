Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C753BF057
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jul 2021 21:36:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33EE46E1C0;
	Wed,  7 Jul 2021 19:36:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8E406E1C0
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jul 2021 19:36:51 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="206358769"
X-IronPort-AV: E=Sophos;i="5.84,221,1620716400"; d="scan'208";a="206358769"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 12:36:50 -0700
X-IronPort-AV: E=Sophos;i="5.84,221,1620716400"; d="scan'208";a="498060619"
Received: from swatish2-mobl1.gar.corp.intel.com (HELO [10.215.125.185])
 ([10.215.125.185])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2021 12:36:48 -0700
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org
References: <20210707095253.23848-1-uma.shankar@intel.com>
From: "Sharma, Swati2" <swati2.sharma@intel.com>
Organization: Intel
Message-ID: <9c6c151e-3e52-863e-f033-da1230dfc1e4@intel.com>
Date: Thu, 8 Jul 2021 01:06:31 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210707095253.23848-1-uma.shankar@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/xelpd: Fix incorrect color
 capability reporting
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

Reviewed-by: Swati Sharma <swati2.sharma@intel.com>

On 07-Jul-21 3:22 PM, Uma Shankar wrote:
> On XELPD platforms, color management support is not yet enabled.
> Fix wrongly reporting the same through platform info, which was
> resulting in incorrect initialization and usage.
> 
> Cc: Swati Sharma <swati2.sharma@intel.com>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_pci.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index a7bfdd827bc8..8ff1990528d1 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -947,7 +947,7 @@ static const struct intel_device_info adl_s_info = {
>   
>   #define XE_LPD_FEATURES \
>   	.abox_mask = GENMASK(1, 0),						\
> -	.color = { .degamma_lut_size = 33, .gamma_lut_size = 262145 },		\
> +	.color = { .degamma_lut_size = 0, .gamma_lut_size = 0 },		\
>   	.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |		\
>   		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),				\
>   	.dbuf.size = 4096,							\
> 

-- 
~Swati Sharma
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
