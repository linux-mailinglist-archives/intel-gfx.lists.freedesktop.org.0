Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37CD5700DAB
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 19:09:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A928310E1DF;
	Fri, 12 May 2023 17:09:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB9AB10E1DF
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 17:09:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683911366; x=1715447366;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=3Pi4u8oR3bDkgPCS2527eFusKSFfCjncismEG29tITA=;
 b=QQ2nngOh0QHcpxRhI/8T6xYQVAI+NXTfuJd/caW4Zpif5Ep03LP7zFFE
 moqTzZwvbR71OcArWWBiqwv0Ip6ujeb4wiVNgCNciExnrW0AdRPYCdaVU
 hc1sX72CtOlQexb8/uK4W84xN+su1U0ulFujGvkA3mmF6pA4bcbJI+Y66
 U3tY8UMfSdBd3XkjCdjnnJVLv0vN/ivdd+it8jhQ8aHuLdFI7oMtcAPbs
 eF2J4yrkHg74+U3VTMfu78bl28Nub0N+x5awRF36FSCubMMOBpEKjsxNI
 eJ0nfVismsK4ITO1dkD+9GDSkkaW6nPUlZMh+oDW36hMm6vx9ST9dXo+y A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="335359718"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="335359718"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 10:09:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="765232543"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="765232543"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.212.239.47])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 10:09:25 -0700
Date: Fri, 12 May 2023 10:08:58 -0700
Message-ID: <87mt29eatx.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
In-Reply-To: <f3000e77-678b-4d92-d800-35d696ddef50@linux.intel.com>
References: <20230506005816.1891043-1-umesh.nerlige.ramappa@intel.com>	<20230506005816.1891043-7-umesh.nerlige.ramappa@intel.com>	<87wn1eelwo.wl-ashutosh.dixit@intel.com>	<f3000e77-678b-4d92-d800-35d696ddef50@linux.intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.2 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/pmu: Export counters from all
 tiles
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

On Fri, 12 May 2023 03:57:35 -0700, Tvrtko Ursulin wrote:
>
>
> On 11/05/2023 19:57, Dixit, Ashutosh wrote:
> > On Fri, 05 May 2023 17:58:16 -0700, Umesh Nerlige Ramappa wrote:
> >>
> >
> > One drive-by comment:
> >
> >> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> >> index 12b2f3169abf..284e5c5b97bb 100644
> >> --- a/drivers/gpu/drm/i915/i915_pmu.c
> >> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> >> @@ -546,8 +546,9 @@ config_status(struct drm_i915_private *i915, u64 config)
> >>	struct intel_gt *gt = to_gt(i915);
> >>
> >>	unsigned int gt_id = config_gt_id(config);
> >> +	unsigned int max_gt_id = HAS_EXTRA_GT_LIST(i915) ? 1 : 0;
> >
> > But in Patch 5 we have:
> >
> > #define I915_PMU_MAX_GTS (4)
>
> AFAIR that one is just to size the internal arrays, while max_gt_id is to
> report to userspace which events are present.

Hmm, apart from the #defines's in i915_drm.h in Patch 5, not seeing
anything else reported to userspace about which events are present.

Also, we already have I915_MAX_GT, we shouldn't need I915_PMU_MAX_GTS, or
at least:

	#define I915_PMU_MAX_GTS I915_MAX_GT

Better to use things uniformly. If we want I915_PMU_MAX_GTS to be 2 instead
of I915_MAX_GT (but why?, below is just a check) let's do

	#define I915_PMU_MAX_GTS 2

And use that in the code above. But I think we should just use I915_MAX_GT.

Thanks.
--
Ashutosh


> >
> >>
> >> -	if (gt_id)
> >> +	if (gt_id > max_gt_id)
> >>		return -ENOENT;
> >>
> >>	switch (config_counter(config)) {
> >> @@ -561,6 +562,8 @@ config_status(struct drm_i915_private *i915, u64 config)
> >>			return -ENODEV;
> >>		break;
> >>	case I915_PMU_INTERRUPTS:
> >> +		if (gt_id)
> >> +			return -ENOENT;
> >>		break;
> >>	case I915_PMU_RC6_RESIDENCY:
> >>		if (!gt->rc6.supported)
