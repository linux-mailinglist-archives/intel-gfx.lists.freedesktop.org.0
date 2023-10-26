Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5457D80DA
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 12:36:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E4EC10E7BD;
	Thu, 26 Oct 2023 10:36:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03ADA10E7A7
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 10:36:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698316576; x=1729852576;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=jkygOV3nWs7WaNNxNkBxzsih90Fi95bW2XpqxbNKpkg=;
 b=CO3qAPOrPEkTXr63Argqj45aMRGWzRddGJByajhaV768vgEfCyOMs8KB
 5gBmU16958WMdXxkud66VE+UQEEKdm8P4I5CNFaXVsshADhXICTJ010az
 vpsTgzM8NDPjWrPs2TMp4IdKdmCzPKFvxf9ywELYatwRmRgUjbfjksbfU
 GuCcsnohxqlrN7LhNZPqTyg6tIT81BoBNSEO64Xm8kbZcafa4OYzr8RRv
 grEf3zU9UmJpy+xl76Uf5QRSUMERtr1XCcOk0nns/TDVltqNJ+O9SOBeH
 ng/JpxG1L5p5Kn7o4TXc6FlvfYWSuoHbXgUZ0SHyjK1NHHRFrOa4NBpom g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="386400487"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="386400487"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 03:36:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; 
   d="scan'208";a="462699"
Received: from kacperbu-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.49.190])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 03:36:03 -0700
Date: Thu, 26 Oct 2023 12:36:11 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZTpBG_cqdVfBb2uE@ashyti-mobl2.lan>
References: <20231023150256.438331-1-jani.nikula@intel.com>
 <20231023150256.438331-2-jani.nikula@intel.com>
 <ZTe4uzgC7sIPGzwV@ashyti-mobl2.lan> <87h6mg9op4.fsf@intel.com>
 <6b642bcd-6152-42b8-88ad-21b039d9898b@linux.intel.com>
 <ZTjuBar5FeoMPYo6@ashyti-mobl2.lan> <8734xx8yz4.fsf@intel.com>
 <05993162-ce64-4b34-bfe5-5f33240c519e@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <05993162-ce64-4b34-bfe5-5f33240c519e@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/pmu: add event_to_pmu() helper
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

> On 26/10/2023 11:22, Jani Nikula wrote:
> > On Wed, 25 Oct 2023, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> > > On Wed, Oct 25, 2023 at 11:20:25AM +0100, Tvrtko Ursulin wrote:
> > > > 
> > > > On 24/10/2023 13:42, Jani Nikula wrote:
> > > > > On Tue, 24 Oct 2023, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> > > > > > Hi Jani,
> > > > > > 
> > > > > > On Mon, Oct 23, 2023 at 06:02:55PM +0300, Jani Nikula wrote:
> > > > > > > It's tedious to duplicate the container_of() everywhere. Add a helper.
> > > > > > > 
> > > > > > > Also do the logical steps of first getting from struct perf_event to
> > > > > > > struct i915_pmu, and then from struct i915_pmu to struct
> > > > > > > drm_i915_private if needed, instead of perf_event->i915->pmu. Not all
> > > > > > > places even need the i915 pointer.
> > > > > > > 
> > > > > > > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> > > > > > > ---
> > > > > > >    drivers/gpu/drm/i915/i915_pmu.c | 45 +++++++++++++++------------------
> > > > > > >    1 file changed, 20 insertions(+), 25 deletions(-)
> > > > > > > 
> > > > > > > diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> > > > > > > index dcae2fcd8d36..d45b40ec6d47 100644
> > > > > > > --- a/drivers/gpu/drm/i915/i915_pmu.c
> > > > > > > +++ b/drivers/gpu/drm/i915/i915_pmu.c
> > > > > > > @@ -31,6 +31,11 @@
> > > > > > >    static cpumask_t i915_pmu_cpumask;
> > > > > > >    static unsigned int i915_pmu_target_cpu = -1;
> > > > > > > +static struct i915_pmu *event_to_pmu(struct perf_event *event)
> > > > > > 
> > > > > > I would call it perfevent (or perf_event), event is too generic.
> > > > > > We have other kind of events, too.
> > > > > 
> > > > > Fair enough.
> > > > 
> > > > Counter argument is that i915_pmu.c consistently names this event (which is
> > > > likely lifted from other PMU drivers) so is the proposal to churn it all, or
> > > > create an inconsistency?
> > > 
> > > The first that comes to my mind is that the debugger is also
> > > using the term "event"... on the other hand there is no debugger
> > > in i915.
> > 
> > Have you settled on this? I don't care either way, could apply either
> > patch.

no... unfortunately not...

> To me it is clear that preference should be to remain consistent within the
> file, that is, leave it as you originally had.

... so I'm not going to be strong on this... please feel free to
ignore my comment, then.

Thanks!
Andi
