Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BC5556AB2B
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jul 2022 21:01:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0BF9112EF8;
	Thu,  7 Jul 2022 19:01:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B183B112C72
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jul 2022 19:01:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657220507; x=1688756507;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=gU22+rcHwaWBaojEY0TwnsTnmmqM+GJoB/inigE1Png=;
 b=Xt1D/4o+Fo4+62efIeFVJ4bImTYSjhc06t8UizftTOqZqamL5Hg30Sym
 1Lg8DXPLQl/8JcbJVsQjmDzjU3EHwzbVYf1OhDll/CSAJRvaEyrJjnbnM
 1T0l14UeI+8VrCvcaInwxFeVaqlKi79+8/uIr9+3G/o8dtxV+Ps9xMmGb
 lxQgNUd8ZM5HuZo9MUAuo9G9WPN2HwGRfVZIHkyoeyoe7n5le7l+Q91iX
 k5GweEOx+ainELtRyGuX+pih/pC8ApQ4uy7L7FIam9RmgZzfa0vVRUwiq
 U7vBCOaX5rqpD/rAT/mjcZyXXxPPTo6uv5bwtEfktDSIPyul+sRxIlJfU w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="267131089"
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="267131089"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 12:01:23 -0700
X-IronPort-AV: E=Sophos;i="5.92,253,1650956400"; d="scan'208";a="620913420"
Received: from orsosgc001.jf.intel.com ([10.165.21.135])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2022 12:01:22 -0700
Date: Thu, 7 Jul 2022 12:01:22 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <YsctgpBMlUPDh0mz@orsosgc001.jf.intel.com>
References: <20220707182738.2845991-1-umesh.nerlige.ramappa@intel.com>
 <YscqurqTJBbuC2/L@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
In-Reply-To: <YscqurqTJBbuC2/L@mdroper-desk1.amr.corp.intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 07, 2022 at 11:49:30AM -0700, Matt Roper wrote:
>On Thu, Jul 07, 2022 at 11:27:38AM -0700, Nerlige Ramappa, Umesh wrote:
>> The global sseu config is applicable only to gen11 platforms where
>> concurrent media, render and OA use cases may cause some subslices to be
>> turned off and hence lose NOA configuration. Return ENODEV for non-gen11
>> platforms.
>>
>> v2: gfx12 is already shipped with this, disable for gfx12.5+ (Lionel)
>
>The commit message doesn't really match reality anymore with v2; you
>might want to update the commit message a bit.
>
>Also, minor nitpick:  although we write IP version numbers as
>"arc.release" in shorthand, we shouldn't make the mistake of treating
>those as fractional numbers since ".5" != ".50" the way they get handled
>in the driver.  So this should say "12.50+" rather than "12.5+."

will do. I think I posted an updated patch before seeing your comments, 
so ignore that one.

>
>>
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_perf.c | 6 ++++++
>>  1 file changed, 6 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
>> index 1577ab6754db..0ba98f73f217 100644
>> --- a/drivers/gpu/drm/i915/i915_perf.c
>> +++ b/drivers/gpu/drm/i915/i915_perf.c
>> @@ -3706,6 +3706,12 @@ static int read_properties_unlocked(struct i915_perf *perf,
>>  		case DRM_I915_PERF_PROP_GLOBAL_SSEU: {
>>  			struct drm_i915_gem_context_param_sseu user_sseu;
>>
>> +			if (GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 50)) {
>> +				DRM_DEBUG("SSEU config not supported on gfx %x\n",
>> +					  GRAPHICS_VER_FULL(perf->i915));
>
>This should probably be using the device-specific drm_dbg() call.
>
>Actually the perf code in general needs some updates to eliminate
>DRM_DEBUG throughout...not only do we want to avoid using the old
>non-device-aware interface in newer code, that's also the wrong old
>interface to call (DRM_DEBUG categorizes messages as DRM_UT_CORE,
>whereas DRM_DEBUG_DRIVER is the one that treats them as driver messages
>with DRM_UT_DRIVER).

will replace with drm_dbg()

Thanks,
Umesh


>
>
>Matt
>
>> +				return -ENODEV;
>> +			}
>> +
>>  			if (copy_from_user(&user_sseu,
>>  					   u64_to_user_ptr(value),
>>  					   sizeof(user_sseu))) {
>> --
>> 2.35.3
>>
>
>-- 
>Matt Roper
>Graphics Software Engineer
>VTT-OSGC Platform Enablement
>Intel Corporation
