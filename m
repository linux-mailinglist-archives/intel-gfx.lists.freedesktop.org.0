Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0FB71F72F
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 02:40:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A699610E01F;
	Fri,  2 Jun 2023 00:40:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05FC810E01F
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 00:40:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685666424; x=1717202424;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=WV8Jm0zI+bn6oejpR4LuauOorRKGHxOAA5bls+WoeHE=;
 b=IGZduXgkS/FR55hLBFY6/6o6Vp3kC+d4nCr1YenkgdH0yxAwh3w23s3o
 gwpwBsi3n19dPTSMBB+P0cnhQ+OPIdWKRZEYF7ZKD1Pr/LfuoKHp6NYpk
 RiToyZKzwfqxkhpaN6zrJLs4Av5dMGGSUhuorSzvcMWXhCsazfssxTf03
 4+Zuhk2h7WXujVX2KPRx4cfHbQWl1mV6PcpEFuq+s4cIu60wymOr3k8hx
 65K43TFYfSRUOZt/jIcSm8BPj7Z7PltzX/f6Y8AXIzOx0vsjoUM1xwpnw
 WZE+8MRAr471DjOibPNlMOqlmvoyn7h3JNzPLAfhsFrJyhnRj6sHjjw6H g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="336092550"
X-IronPort-AV: E=Sophos;i="6.00,211,1681196400"; d="scan'208";a="336092550"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 17:40:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="820047672"
X-IronPort-AV: E=Sophos;i="6.00,211,1681196400"; d="scan'208";a="820047672"
Received: from gsavorni-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.251.210.46])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 17:40:21 -0700
Date: Fri, 2 Jun 2023 02:40:18 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Message-ID: <ZHk6cg5IIZUUI8Nj@ashyti-mobl2.lan>
References: <20230531213547.1525692-1-matthew.s.atwood@intel.com>
 <87wn0nujol.wl-ashutosh.dixit@intel.com>
 <87v8g7ujaj.wl-ashutosh.dixit@intel.com>
 <87ttvqvhj7.wl-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87ttvqvhj7.wl-ashutosh.dixit@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: sync I915_PMU_MAX_GTS to
 I915_MAX_GT
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

Hi Ashutosh,

On Thu, Jun 01, 2023 at 05:23:24PM -0700, Dixit, Ashutosh wrote:
> On Thu, 01 Jun 2023 11:30:44 -0700, Dixit, Ashutosh wrote:
> >
> > On Thu, 01 Jun 2023 11:22:18 -0700, Dixit, Ashutosh wrote:
> > >
> > > On Wed, 31 May 2023 14:35:47 -0700, Matt Atwood wrote:
> > > >
> > >
> > > Hi Matt,
> > >
> > > > Set I915_PMU_MAX_GTS to value in I915_MAX_GT, theres no reason for these
> > > > values to be different.
> >
> > Also, we can't be so sure so as to be able to say "theres no reason for
> > these values to be different" till we have actually verified it. E.g. there
> > are various bitfields in the code which might not fit in a u32 if we
> > increase MAX_GT from 2 to 4. Has this been verified?
> >
> > If anything, to keep the code from doing unnecessary stuff, IMO I915_MAX_GT
> > should be reduced to 2 and should be increased to 4 only once/if we have
> > i915 supported platforms with 4 GT's.
> 
> Matt explained the issue offline to me (it would have helped to explain the
> reason for the patch in the commit message). The issue is that in uses of
> for_each_gt such as below (there are others too in the PMU code):
> 
>         for_each_gt(gt, i915, i) {
>                 intel_wakeref_t wakeref;
> 
>                 with_intel_runtime_pm(gt->uncore->rpm, wakeref) {
>                         u64 val = __get_rc6(gt);
> 
>                         store_sample(pmu, i, __I915_SAMPLE_RC6, val);
>                         store_sample(pmu, i, __I915_SAMPLE_RC6_LAST_REPORTED,
>                                      val);
>                         pmu->sleep_last[i] = ktime_get_raw();
>                 }
>         }
> 
> static checkers are complaining that for_each_gt can read/write outside the
> bounds of PMU arrays. Because absent gt's will be NULL in for_each_gt this
> cannot really happen but we still need to keep static checkers happy.
> 
> So to resolve this issue we need I915_PMU_MAX_GTS and I915_MAX_GT to have
> the same value. So either we need to increase I915_PMU_MAX_GTS to 4 or
> reduce I915_MAX_GT to 2.

the number of GT's is a GPU concept and should remain as such all
over the GPU. If max GT is 4 then it should be 4 everywhere.

The I915_PMU_MAX_GTS define should not exist at all as it is
creating this sort of inconsistencies and everything should refer
to a single I915_MAX_GT. The reason for having I915_PMU_MAX_GTS,
in a first place, is purely practical to avoid over inclusions.
Still I consider it hacky.

On the other had, already I915_MAX_GT is a hardcoded value and
many times there have been discussions about removing it and
fetch it dynamically during the i915 boot. But this requires
quite a good amount of refactoring that no one is willing to do.

If we can't get rid of I915_PMU_MAX_GTS then I strongly believe
it should be aligned with I915_MAX_GT and for this reason I gave
my r-b. The use of for_each_gt() is a clear consequence of this
difference.

Thanks for chiming in,
Andi
