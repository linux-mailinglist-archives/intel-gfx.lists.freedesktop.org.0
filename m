Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 829EA86D7F7
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 00:41:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3FBC10E70C;
	Thu, 29 Feb 2024 23:41:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cS9mRqRE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3562210E70B;
 Thu, 29 Feb 2024 23:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709250096; x=1740786096;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=7eL2vRJy8qWdKtthljeGVe/BWAPqo+5V7brXOBt5dWI=;
 b=cS9mRqRECGAVa6286s+0jXSS4BMrf/NTWa4stipiw/XmqLYssT+Iz2g8
 Bw+SMeTzoAkXYo+9MjGGgN13YNH00HCSpO5Sl7ZhgKGp/8FxDSE8zE5F7
 yQvda9MRy8jcmUh71r12MXz1FcFON5WJx9kvqx4d059vD4fzxcBwil1Wl
 srRCD00bS2C+CKWlQSi7HeAWVoFZjherbNDDEGOcaoJqfElCswxBs4bDS
 gV6fvJglMxXgWJDxxyy5LsJ55l5Mil6Zz5+LAMyFYeVcql2aMq99uSsvL
 QIgbYB2kyUezcnGFkk9Gt1EdVxpVW9RFK+/+uPMvWxtgaq1WBWzqzC1qP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="3927936"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; 
   d="scan'208";a="3927936"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 15:41:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="12666254"
Received: from syhu-mobl2.ccr.corp.intel.com (HELO intel.com) ([10.94.248.193])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 15:41:33 -0800
Date: Fri, 1 Mar 2024 00:41:30 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 dri-devel@lists.freedesktop.org, Andi Shyti <andi.shyti@kernel.org>,
 Nirmoy Das <nirmoy.das@intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
Subject: Re: [PATCH] drm/i915/selftest_hangcheck: Check sanity with more
 patience
Message-ID: <ZeEWKsTIG-kke3GX@ashyti-mobl2.lan>
References: <20240228152500.38267-2-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240228152500.38267-2-janusz.krzysztofik@linux.intel.com>
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

Hi Janusz,

On Wed, Feb 28, 2024 at 04:24:41PM +0100, Janusz Krzysztofik wrote:
> While trying to reproduce some other issues reported by CI for i915
> hangcheck live selftest, I found them hidden behind timeout failures
> reported by igt_hang_sanitycheck -- the very first hangcheck test case
> executed.
> 
> Feb 22 19:49:06 DUT1394ACMR kernel: calling  mei_gsc_driver_init+0x0/0xff0 [mei_gsc] @ 121074
> Feb 22 19:49:06 DUT1394ACMR kernel: i915 0000:03:00.0: [drm] DRM_I915_DEBUG enabled
> Feb 22 19:49:06 DUT1394ACMR kernel: i915 0000:03:00.0: [drm] Cannot find any crtc or sizes
> Feb 22 19:49:06 DUT1394ACMR kernel: probe of i915.mei-gsc.768 returned 0 after 1475 usecs
> Feb 22 19:49:06 DUT1394ACMR kernel: probe of i915.mei-gscfi.768 returned 0 after 1441 usecs
> Feb 22 19:49:06 DUT1394ACMR kernel: initcall mei_gsc_driver_init+0x0/0xff0 [mei_gsc] returned 0 after 3010 usecs
> Feb 22 19:49:06 DUT1394ACMR kernel: i915 0000:03:00.0: [drm] DRM_I915_DEBUG_GEM enabled
> Feb 22 19:49:06 DUT1394ACMR kernel: i915 0000:03:00.0: [drm] DRM_I915_DEBUG_RUNTIME_PM enabled
> Feb 22 19:49:06 DUT1394ACMR kernel: i915: Performing live selftests with st_random_seed=0x4c26c048 st_timeout=500
> Feb 22 19:49:07 DUT1394ACMR kernel: i915: Running hangcheck
> Feb 22 19:49:07 DUT1394ACMR kernel: calling  mei_hdcp_driver_init+0x0/0xff0 [mei_hdcp] @ 121074
> Feb 22 19:49:07 DUT1394ACMR kernel: i915: Running intel_hangcheck_live_selftests/igt_hang_sanitycheck
> Feb 22 19:49:07 DUT1394ACMR kernel: probe of 0000:00:16.0-b638ab7e-94e2-4ea2-a552-d1c54b627f04 returned 0 after 1398 usecs
> Feb 22 19:49:07 DUT1394ACMR kernel: probe of i915.mei-gsc.768-b638ab7e-94e2-4ea2-a552-d1c54b627f04 returned 0 after 97 usecs
> Feb 22 19:49:07 DUT1394ACMR kernel: initcall mei_hdcp_driver_init+0x0/0xff0 [mei_hdcp] returned 0 after 101960 usecs
> Feb 22 19:49:07 DUT1394ACMR kernel: calling  mei_pxp_driver_init+0x0/0xff0 [mei_pxp] @ 121094
> Feb 22 19:49:07 DUT1394ACMR kernel: probe of 0000:00:16.0-fbf6fcf1-96cf-4e2e-a6a6-1bab8cbe36b1 returned 0 after 435 usecs
> Feb 22 19:49:07 DUT1394ACMR kernel: mei_pxp i915.mei-gsc.768-fbf6fcf1-96cf-4e2e-a6a6-1bab8cbe36b1: bound 0000:03:00.0 (ops i915_pxp_tee_component_ops [i915])
> Feb 22 19:49:07 DUT1394ACMR kernel: 100ms wait for request failed on rcs0, err=-62
> Feb 22 19:49:07 DUT1394ACMR kernel: probe of i915.mei-gsc.768-fbf6fcf1-96cf-4e2e-a6a6-1bab8cbe36b1 returned 0 after 158425 usecs
> Feb 22 19:49:07 DUT1394ACMR kernel: initcall mei_pxp_driver_init+0x0/0xff0 [mei_pxp] returned 0 after 224159 usecs
> Feb 22 19:49:07 DUT1394ACMR kernel: i915/intel_hangcheck_live_selftests: igt_hang_sanitycheck failed with error -5
> Feb 22 19:49:07 DUT1394ACMR kernel: i915: probe of 0000:03:00.0 failed with error -5
> 
> Those request waits, once timed out after 100ms, have never been
> confirmed to still persist over another 100ms, always being able to
> complete within the originally requested wait time doubled.
> 
> Taking into account potentially significant additional concurrent workload
> generated by new auxiliary drivers that didn't exist before and now are
> loaded in parallel with the i915 module also when loaded in selftest mode,
> relax our expectations on time consumed by the sanity check request before
> it completes.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

I'm OK with it...

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
