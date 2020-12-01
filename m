Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E15B2CA493
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 14:59:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 785516E530;
	Tue,  1 Dec 2020 13:59:30 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 079636E530
 for <Intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 13:59:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23176580-1500050 for multiple; Tue, 01 Dec 2020 13:59:21 +0000
MIME-Version: 1.0
In-Reply-To: <bcb7fd16-915a-0710-74a6-042f1734788b@linux.intel.com>
References: <20201127100109.1968571-1-tvrtko.ursulin@linux.intel.com>
 <20201201131757.206367-1-tvrtko.ursulin@linux.intel.com>
 <160682899564.4024.6593348558878544128@build.alporthouse.com>
 <bcb7fd16-915a-0710-74a6-042f1734788b@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Tue, 01 Dec 2020 13:59:20 +0000
Message-ID: <160683116092.4024.18240748168120894179@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/pmu: Deprecate I915_PMU_LAST
 and optimize state tracking
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-12-01 13:52:57)
> 
> On 01/12/2020 13:23, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2020-12-01 13:17:57)
> >> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> >> index fa1f3d62f9a6..6edcb2b6c708 100644
> >> --- a/include/uapi/drm/i915_drm.h
> >> +++ b/include/uapi/drm/i915_drm.h
> >> @@ -178,7 +178,7 @@ enum drm_i915_pmu_engine_sample {
> >>   #define I915_PMU_INTERRUPTS            __I915_PMU_OTHER(2)
> >>   #define I915_PMU_RC6_RESIDENCY         __I915_PMU_OTHER(3)
> >>   
> >> -#define I915_PMU_LAST I915_PMU_RC6_RESIDENCY
> >> +#define I915_PMU_LAST /* Deprecated - do not use */ I915_PMU_RC6_RESIDENCY
> > 
> > Do we still update the value, or let it rot?
> 
> Rot for a while and then zap was my plan. As soon as I wean perf_pmu of 
> it. Too bold and reckless?

Immediate rot is fine, surely no one will complain that the token has
the same value forevermore.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
