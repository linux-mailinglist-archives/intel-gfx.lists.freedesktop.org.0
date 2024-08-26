Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E8495EEB7
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 12:45:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4E6510E18D;
	Mon, 26 Aug 2024 10:45:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from exchange.fintech.ru (exchange.fintech.ru [195.54.195.159])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1CF510E18D;
 Mon, 26 Aug 2024 10:45:16 +0000 (UTC)
Received: from Ex16-01.fintech.ru (10.0.10.18) by exchange.fintech.ru
 (195.54.195.159) with Microsoft SMTP Server (TLS) id 14.3.498.0; Mon, 26 Aug
 2024 13:45:13 +0300
Received: from [192.168.211.130] (10.0.253.138) by Ex16-01.fintech.ru
 (10.0.10.18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4; Mon, 26 Aug
 2024 13:45:13 +0300
Message-ID: <56362df7-7502-4b35-81da-f3fe9ff7da47@fintech.ru>
Date: Mon, 26 Aug 2024 03:45:12 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/guc: prevent a possible int overflow in wq
 offsets
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
CC: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 <intel-gfx@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>, <lvc-project@linuxtesting.org>,
 <stable@vger.kernel.org>, <n.zhandarovich@fintech.ru>
References: <20240725155925.14707-1-n.zhandarovich@fintech.ru>
From: Nikita Zhandarovich <n.zhandarovich@fintech.ru>
In-Reply-To: <20240725155925.14707-1-n.zhandarovich@fintech.ru>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.0.253.138]
X-ClientProxiedBy: Ex16-02.fintech.ru (10.0.10.19) To Ex16-01.fintech.ru
 (10.0.10.18)
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 7/25/24 08:59, Nikita Zhandarovich wrote:
> It may be possible for the sum of the values derived from
> i915_ggtt_offset() and __get_parent_scratch_offset()/
> i915_ggtt_offset() to go over the u32 limit before being assigned
> to wq offsets of u64 type.
> 
> Mitigate these issues by expanding one of the right operands
> to u64 to avoid any overflow issues just in case.
> 
> Found by Linux Verification Center (linuxtesting.org) with static
> analysis tool SVACE.
> 
> Fixes: 2584b3549f4c ("drm/i915/guc: Update to GuC version 70.1.1")
> Cc: stable@vger.kernel.org
> Signed-off-by: Nikita Zhandarovich <n.zhandarovich@fintech.ru>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 9400d0eb682b..908ebfa22933 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -2842,9 +2842,9 @@ static void prepare_context_registration_info_v70(struct intel_context *ce,
>  		ce->parallel.guc.wqi_tail = 0;
>  		ce->parallel.guc.wqi_head = 0;
>  
> -		wq_desc_offset = i915_ggtt_offset(ce->state) +
> +		wq_desc_offset = (u64)i915_ggtt_offset(ce->state) +
>  				 __get_parent_scratch_offset(ce);
> -		wq_base_offset = i915_ggtt_offset(ce->state) +
> +		wq_base_offset = (u64)i915_ggtt_offset(ce->state) +
>  				 __get_wq_offset(ce);
>  		info->wq_desc_lo = lower_32_bits(wq_desc_offset);
>  		info->wq_desc_hi = upper_32_bits(wq_desc_offset);

Gentle ping,

Regards,
Nikita
