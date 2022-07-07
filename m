Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75EA056AAF9
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jul 2022 20:46:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F54111294A;
	Thu,  7 Jul 2022 18:46:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2950E11294A
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jul 2022 18:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657219560; x=1688755560;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=GChjxacuUk5VfwnNwKFXcBpxfCeDbuDPh2zs5EeHDR0=;
 b=KRhxpeROdVMVbUDIvNff4IF82vsza0YIt4IxssxMaRRvOxjoVpdIyUSG
 pbPJPA1+dSII4yVGo3kW/wGDFBy2w6udTrujlKZUTKZUgt7ZwlB/a3ftm
 OnmADyKwSEhMK53eBKqgcKc8OBuNvChZnExPIDm4Hrh3Rg1rixQ6g4cGI
 8csKO5XQ9LBrPEnOhl/MMP4C9t7msvn5WObNHr0QyWFKnAVo/aTkVPlfe
 rocuiz0ODVxbdnXnVVM9HXIAhZqXp1ELvdhIXFceBb+HhH33yODTLLQif
 4HZbGGSkbnO7pLKBMG021jFqxN9mi3GCBFwpnjbMasplUsD1dpIi4eVIt w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="309658694"
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="309658694"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 11:45:59 -0700
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="568630291"
Received: from orsosgc001.jf.intel.com ([10.165.21.135])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 11:45:58 -0700
Date: Thu, 7 Jul 2022 11:45:58 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Message-ID: <Yscp5vxhR03J6mvQ@orsosgc001.jf.intel.com>
References: <20220707182738.2845991-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <20220707182738.2845991-1-umesh.nerlige.ramappa@intel.com>
Subject: Re: [Intel-gfx] [PATCH] i915/perf: Disable OA sseu config param for
 non-gen11 platforms
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

On Thu, Jul 07, 2022 at 11:27:38AM -0700, Nerlige Ramappa, Umesh wrote:
>The global sseu config is applicable only to gen11 platforms where
>concurrent media, render and OA use cases may cause some subslices to be
>turned off and hence lose NOA configuration. Return ENODEV for non-gen11
>platforms.
>
>v2: gfx12 is already shipped with this, disable for gfx12.5+ (Lionel)

Pleas ignore, will post an update to this one with commit message 
changes.

Umesh
>
>Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>---
> drivers/gpu/drm/i915/i915_perf.c | 6 ++++++
> 1 file changed, 6 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>index 1577ab6754db..0ba98f73f217 100644
>--- a/drivers/gpu/drm/i915/i915_perf.c
>+++ b/drivers/gpu/drm/i915/i915_perf.c
>@@ -3706,6 +3706,12 @@ static int read_properties_unlocked(struct i915_perf *perf,
> 		case DRM_I915_PERF_PROP_GLOBAL_SSEU: {
> 			struct drm_i915_gem_context_param_sseu user_sseu;
>
>+			if (GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 50)) {
>+				DRM_DEBUG("SSEU config not supported on gfx %x\n",
>+					  GRAPHICS_VER_FULL(perf->i915));
>+				return -ENODEV;
>+			}
>+
> 			if (copy_from_user(&user_sseu,
> 					   u64_to_user_ptr(value),
> 					   sizeof(user_sseu))) {
>-- 
>2.35.3
>
