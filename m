Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 653E556B2D6
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 08:36:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B75910E492;
	Fri,  8 Jul 2022 06:36:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 090F710E492
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 06:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657262159; x=1688798159;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=TVdooVeXn1cM6VARAI9Sg5rvCEU9TCQpvaNXiBwwz/k=;
 b=LVAiF+TgYw3VzHsHWX8ffGVhJ1JeNFqGzp4/tT6OV5wCA+6lRgOSccSQ
 GNRyeUfTaMRTOsenPUCJtphUUqVuu6I/Tcfo+heniBi4OLyG9Ar0SHf8K
 f+JNYDkgtVjc9x0gSNVM8hH5v37hgJQBwwUjahCM3cZQ/pZvISIoENMpw
 cUnhXNIEuI+u1fudsPGI4vZPbM32ilcq8cUb5NOI6ZC9KeOpOLXVzrDwd
 hKUGMp2Wfg1DwrqyvO7Sy/N4RoDAH0M5FdXqV1SjWmSWGnp5GWZ0Kt1hz
 BfTdc056fkt/LvadGJhAofA7dmaM6jZEwOhRT08j+694Ne2JcYLg5SdEU Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="309769479"
X-IronPort-AV: E=Sophos;i="5.92,254,1650956400"; d="scan'208";a="309769479"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 23:35:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,254,1650956400"; d="scan'208";a="720782786"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga004.jf.intel.com with ESMTP; 07 Jul 2022 23:35:59 -0700
Received: from [10.249.131.65] (plautenb-mobl.ger.corp.intel.com
 [10.249.131.65])
 by linux.intel.com (Postfix) with ESMTP id B9D9958097E;
 Thu,  7 Jul 2022 23:35:57 -0700 (PDT)
Message-ID: <f6642805-f383-0048-b5ec-3b8f3978d50a@intel.com>
Date: Fri, 8 Jul 2022 09:35:54 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: "Nerlige Ramappa, Umesh" <umesh.nerlige.ramappa@intel.com>,
 intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>
References: <20220707193002.2859653-1-umesh.nerlige.ramappa@intel.com>
 <20220707193002.2859653-2-umesh.nerlige.ramappa@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
In-Reply-To: <20220707193002.2859653-2-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/2] i915/perf: Disable OA sseu config param
 for gfx12.50+
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

On 07/07/2022 22:30, Nerlige Ramappa, Umesh wrote:
> The global sseu config is applicable only to gen11 platforms where
> concurrent media, render and OA use cases may cause some subslices to be
> turned off and hence lose NOA configuration. Ideally we want to return
> ENODEV for non-gen11 platforms, however, this has shipped with gfx12, so
> disable only for gfx12.50+.
>
> v2: gfx12 is already shipped with this, disable for gfx12.50+ (Lionel)
>
> v3: (Matt)
> - Update commit message and replace "12.5" with "12.50"
> - Replace DRM_DEBUG() with driver specific drm_dbg()
>
> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Acked-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_perf.c | 7 +++++++
>   1 file changed, 7 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index b3beb89884e0..f3c23fe9ad9c 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -3731,6 +3731,13 @@ static int read_properties_unlocked(struct i915_perf *perf,
>   		case DRM_I915_PERF_PROP_GLOBAL_SSEU: {
>   			struct drm_i915_gem_context_param_sseu user_sseu;
>   
> +			if (GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 50)) {
> +				drm_dbg(&perf->i915->drm,
> +					"SSEU config not supported on gfx %x\n",
> +					GRAPHICS_VER_FULL(perf->i915));
> +				return -ENODEV;
> +			}
> +
>   			if (copy_from_user(&user_sseu,
>   					   u64_to_user_ptr(value),
>   					   sizeof(user_sseu))) {


