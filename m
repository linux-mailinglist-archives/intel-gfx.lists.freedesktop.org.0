Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF326CD38C
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 09:46:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B23D10E0CB;
	Wed, 29 Mar 2023 07:46:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FF4F10E0CB
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 07:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680075987; x=1711611987;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=3PXbEkjZ310myfdoyAiD89n0XtfNspe+THOU5qPG9J4=;
 b=em3SbhxwjsZvwcq8XMYz6JrDpHak0s3c474gebjZ4QPDGT0GDA7Z6Rtr
 l2QOewcI1b4DJHIxBerDACnLQObqIZFUZJqgFoqQHzdb9yZGfGEfbq1/b
 rXaM5J97ONiLgr6t5JlVWNrdZ3sW6bLYozKDlBBYZt++ORux1E2SLM8gP
 ur8zyVghyyPLNLFQySvfLu0GRAeXlMPL/rEY/s4pqYkl1NllDaj0acPSv
 +O6OWJWY+KSq6ro0il3622KKYA6NH4dV2F4u77qEFKhDQxe/V63h3Fc2B
 E8E+mboIlnpt9/WxFmSepWG/OZt8mcmYsI2nMEsDQJYd8gtq7ckmF409p A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="405750253"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="405750253"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 00:46:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="684166548"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="684166548"
Received: from jabolger-mobl2.ger.corp.intel.com (HELO [10.213.199.158])
 ([10.213.199.158])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 00:46:25 -0700
Message-ID: <836043eb-3b19-ed9a-ded5-9df624428a6a@linux.intel.com>
Date: Wed, 29 Mar 2023 08:46:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Dan Carpenter <error27@gmail.com>, ashutosh.dixit@intel.com
References: <fada1328-2c58-4e06-bd36-1514ddc2d567@kili.mountain>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <fada1328-2c58-4e06-bd36-1514ddc2d567@kili.mountain>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [bug report] drm/i915/pmu: Use functions common
 with sysfs to read actual freq
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


Hi Dan,

I feared this might happened while reviewing this patch.. I believe it 
is a false positive, see below:

On 29/03/2023 07:24, Dan Carpenter wrote:
> Hello Ashutosh Dixit,
> 
> The patch 12d4eb20d9d8: "drm/i915/pmu: Use functions common with
> sysfs to read actual freq" from Mar 15, 2023, leads to the following
> Smatch static checker warning:
> 
> 	drivers/gpu/drm/i915/gt/intel_rps.c:2110 __read_cagf()
> 	error: uninitialized symbol 'freq'.
> 
> drivers/gpu/drm/i915/gt/intel_rps.c
>      2082 static u32 __read_cagf(struct intel_rps *rps, bool take_fw)
>      2083 {
>      2084         struct drm_i915_private *i915 = rps_to_i915(rps);
>      2085         struct intel_uncore *uncore = rps_to_uncore(rps);
>      2086         i915_reg_t r = INVALID_MMIO_REG;
>      2087         u32 freq;
>                   ^^^^^^^^
> 
>      2088
>      2089         /*
>      2090          * For Gen12+ reading freq from HW does not need a forcewake and
>      2091          * registers will return 0 freq when GT is in RC6
>      2092          */
>      2093         if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70)) {
>      2094                 r = MTL_MIRROR_TARGET_WP1;
>      2095         } else if (GRAPHICS_VER(i915) >= 12) {
>      2096                 r = GEN12_RPSTAT1;
>      2097         } else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
>      2098                 vlv_punit_get(i915);
>      2099                 freq = vlv_punit_read(i915, PUNIT_REG_GPU_FREQ_STS);
>                           ^^^^^^^
> Set here.
> 
>      2100                 vlv_punit_put(i915);
>      2101         } else if (GRAPHICS_VER(i915) >= 6) {
>      2102                 r = GEN6_RPSTAT1;
>      2103         } else {
>      2104                 r = MEMSTAT_ILK;
>      2105         }

On all but the IS_VALLEVIEW branch, where freq itself is set, r is set 
instead...

>      2106
>      2107         if (i915_mmio_reg_valid(r))
>      2108                 freq = take_fw ? intel_uncore_read(uncore, r) : intel_uncore_read_fw(uncore, r);
>                           ^^^^^^
> And here...

...therefore freq will be initialized here in all cases.

> 
>      2109
> --> 2110         return intel_rps_get_cagf(rps, freq);
>                                                  ^^^^
> Warning.

So no problem here.

Regards,

Tvrtko

> 
>      2111 }
> 
> regards,
> dan carpenter
