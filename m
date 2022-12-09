Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EAB648033
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Dec 2022 10:37:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4957110E50F;
	Fri,  9 Dec 2022 09:37:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FF6810E50F
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Dec 2022 09:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670578655; x=1702114655;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=18w/PAtNs9298eUXW+eThwo2jHOU7GSrlOjGcI5+Hmo=;
 b=HejfNs18cpIF4L7JeTV04KPK1d9nQ6UPfQVRijwzsUMZ4v0mQ4MDPKn0
 ycacWsTi8YLQTRDSFTC+UCrbn14ewipNHYie07c7NevCk8trx54G6o+Nh
 0nDjSGTbuP2MtuAuRjg2wOQEjNQIN97oca9mXqcNm2WXvyV23yHlpqZSz
 RWeSwxKHzhfweHnM4vOLkhyAN+yNUkeZuKVePxyhpeuvOXvhpQw8fM297
 djtkDxOAvh92aVZgNcLvEJqSIoYcZETAG/VMclJs1HusyQ+CIjhFSp7xp
 I4emwmyfedMVh5lPOmmpouq3sKqFx2T2BgJIWuoGGFIvgyOkkdgq/yuhY g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="317449839"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="317449839"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 01:37:34 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="649502286"
X-IronPort-AV: E=Sophos;i="5.96,230,1665471600"; d="scan'208";a="649502286"
Received: from efoley-mobl2.ger.corp.intel.com (HELO [10.213.214.59])
 ([10.213.214.59])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 01:37:32 -0800
Message-ID: <f9dbc109-a9c6-b273-f07a-7d92cacde2ca@linux.intel.com>
Date: Fri, 9 Dec 2022 09:37:30 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221207173630.973662-1-andrzej.hajda@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20221207173630.973662-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: fix TLB invalidation for
 Gen12.50 video and compute engines
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
Cc: Chris Wilson <chris.p.wilson@intel.com>, Daniel Vetter <daniel@ffwll.ch>,
 Matthew Auld <matthew.auld@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 07/12/2022 17:36, Andrzej Hajda wrote:
> In case of Gen12.50 video and compute engines, TLB_INV registers are
> masked - to modify one bit, corresponding bit in upper half of the register
> must be enabled, otherwise nothing happens.
> 
> Fixes: 77fa9efc16a9 ("drm/i915/xehp: Create separate reg definitions for new MCR registers")

Just a note that target wasn't strictly the only one to blame, but it is 
a good target to ensure proper backporting.

> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
> This patch is simple enhancement of
> 04aa64375f48 ("drm/i915: fix TLB invalidation for Gen12 video and compute engines")
> for Gen12.5 which is added in dev branches.
> ---
>   drivers/gpu/drm/i915/gt/intel_gt.c | 8 +++++++-
>   1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index d114347c004ee5..f0224b607aa4a7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -1120,9 +1120,15 @@ static void mmio_invalidate_full(struct intel_gt *gt)
>   			continue;
>   
>   		if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
> +			u32 val = BIT(engine->instance);
> +
> +			if (engine->class == VIDEO_DECODE_CLASS ||
> +			    engine->class == VIDEO_ENHANCEMENT_CLASS ||
> +			    engine->class == COMPUTE_CLASS)
> +				val = _MASKED_BIT_ENABLE(val);
>   			intel_gt_mcr_multicast_write_fw(gt,
>   							xehp_regs[engine->class],
> -							BIT(engine->instance));
> +							val);
>   		} else {
>   			rb = get_reg_and_bit(engine, regs == gen8_regs, regs, num);
>   			if (!i915_mmio_reg_offset(rb.reg))

Triple checked against bspec.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
