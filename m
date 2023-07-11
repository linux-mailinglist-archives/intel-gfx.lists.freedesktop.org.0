Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D914D74FAB7
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jul 2023 00:10:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8116310E44B;
	Tue, 11 Jul 2023 22:10:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 822B610E44B
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 22:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689113445; x=1720649445;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=8kIdlurMDgTYxSPPs4IlImzQF9MBl7A5tiJhul7Koow=;
 b=bhEREHoWE0dph0Rjz3inNboUUzQAnI+L2akiQgyLIhd5bVa+DbVHmJwc
 aLkQwhwgdO5Vuxb1DhYiiOoXHTNdW4TitF2NDSczzBZoXWEe0SZSj09MS
 OPz99cdTqG32Y/9FRQ7+igKgkJgG7EwIJ3hDOOmDGBsYnzwpd20OceLR/
 he9CLqI8vm6Xjo5DCu17VIiC2BFo5WXJwmkMz+04+cD3gthtPtPVVP/zY
 8TYQcEt232y2xId7xonC+cVVhzhQFgVirgaRjmLzlXn0m14m85UutclXe
 Z5lTe/ipem77Nc7yvPuZxrKDdI02SaTWV5QoZt2VQ/W2WagD7TdyYFq8k A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="362214646"
X-IronPort-AV: E=Sophos;i="6.01,197,1684825200"; d="scan'208";a="362214646"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 15:10:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="895347215"
X-IronPort-AV: E=Sophos;i="6.01,197,1684825200"; d="scan'208";a="895347215"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.42.151])
 ([10.252.42.151])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 15:10:42 -0700
Message-ID: <ab600ab9-9739-f075-c803-160bfc54bca4@linux.intel.com>
Date: Wed, 12 Jul 2023 00:10:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org, 
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>
References: <20230711153410.1224997-1-andrzej.hajda@intel.com>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20230711153410.1224997-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: add sentinel to
 xehp_oa_b_counters
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
Cc: Chris Wilson <chris.p.wilson@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 7/11/2023 5:34 PM, Andrzej Hajda wrote:
> Arrays passed to reg_in_range_table should end with empty record.
>
> The patch solves KASAN detected bug with signature:
> BUG: KASAN: global-out-of-bounds in xehp_is_valid_b_counter_addr+0x2c7/0x350 [i915]
> Read of size 4 at addr ffffffffa1555d90 by task perf/1518
>
> CPU: 4 PID: 1518 Comm: perf Tainted: G U 6.4.0-kasan_438-g3303d06107f3+ #1
> Hardware name: Intel Corporation Meteor Lake Client Platform/MTL-P DDR5 SODIMM SBS RVP, BIOS MTLPFWI1.R00.3223.D80.2305311348 05/31/2023
> Call Trace:
> <TASK>
> ...
> xehp_is_valid_b_counter_addr+0x2c7/0x350 [i915]
>
> Fixes: 0fa9349dda030f ("drm/i915/perf: complete programming whitelisting for XEHPSDV")
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_perf.c | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 7413c11fb562e9..49c6f1ff11284f 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -4431,6 +4431,7 @@ static const struct i915_range mtl_oam_b_counters[] = {
>   static const struct i915_range xehp_oa_b_counters[] = {
>   	{ .start = 0xdc48, .end = 0xdc48 },	/* OAA_ENABLE_REG */
>   	{ .start = 0xdd00, .end = 0xdd48 },	/* OAG_LCE0_0 - OAA_LENABLE_REG */
> +	{}
>   };
>   
>   static const struct i915_range gen7_oa_mux_regs[] = {
