Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD22F6DC8EE
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Apr 2023 18:02:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE87E10E0B7;
	Mon, 10 Apr 2023 16:02:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31CB510E0B7
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Apr 2023 16:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681142521; x=1712678521;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=UXQMm5KbP/zI+PA1osY9/cjw4UcS4xbrRFh6a4bDdTM=;
 b=O5ADrS66u1wFA1WigTRx/JaWRDV5ZzzAzneVxFyDIAtGID7f4QvNNLNc
 kj5YtUoipPnWwCSw885gXPQu3hMVhvQAcEs4lH0N5uylXhv8x49qgnKxg
 MmSFm0cm7/Spz4U1l9sM0cnbtJV4CXPhcE2QV2GbENKNFsmU/Hvjon/tF
 oUeeha63WuuCvx1ltu4L/wRpdN49mYlGgEEayeuBkMbmpvRvBtWZmEozF
 vDkcWIoOFxErfPYuAXuwq9OZPm86iTnoqgDJHPq9X3mweifc5BBixnYdD
 bJPOfEcmS+JzI4RkB4EGORzOtDKKhOPIncwZn/nL2gNB5BihwaNdBvPat Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="371224456"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="371224456"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2023 09:01:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10676"; a="799537505"
X-IronPort-AV: E=Sophos;i="5.98,333,1673942400"; d="scan'208";a="799537505"
Received: from adixit-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.251.5.8])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2023 09:01:58 -0700
Date: Mon, 10 Apr 2023 08:50:09 -0700
Message-ID: <87a5zfenym.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: Riana Tauro <riana.tauro@intel.com>
In-Reply-To: <87v8i9omb7.wl-ashutosh.dixit@intel.com>
References: <20230405065930.3576936-1-riana.tauro@intel.com>
 <20230405065930.3576936-5-riana.tauro@intel.com>
 <87v8i9omb7.wl-ashutosh.dixit@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.2 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH v9 4/4] drm/i915/selftests: skip comparison
 of power for discrete graphics
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

On Wed, 05 Apr 2023 18:02:04 -0700, Dixit, Ashutosh wrote:
>
> On Tue, 04 Apr 2023 23:59:30 -0700, Riana Tauro wrote:
> >
>
> Hi Riana,
>
> > Hwmon reads the energy/power consumed by discrete soc,
> > i.e. energy/power includes the power drawn from non-gfx discrete
> > components
> >
> > This test uses the power consumed by GT to validate RC6
> > power consumption.
> > Skip comparison of power for discrete graphics
> >
> > TODO : measure power of GT in discrete graphics and modify the
> > condition
> >
> > v2: update commit message (Anshuman)
> >
> > Signed-off-by: Riana Tauro <riana.tauro@intel.com>
> > Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/selftest_rc6.c | 10 +++++++++-
> >  1 file changed, 9 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> > index 682f2fe67b3a..47165f490449 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
> > @@ -107,7 +107,15 @@ int live_rc6_manual(void *arg)
> >				      ktime_to_ns(dt));
> >		pr_info("GPU consumed %llduW in RC0 and %llduW in RC6\n",
> >			rc0_power, rc6_power);
> > -		if (2 * rc6_power > rc0_power) {
>
> So this condition is not being met for dGfx?
>
> > +
> > +		/*
> > +		 * Condition valid for integrated graphics
> > +		 * On discrete graphics, hwwmon reads the energy/power from
> > +		 * discrete SOC that includes non-gfx components.
>
> On dGfx, is this true even when we have per-gt level energy available? Or
> only when we have device level energy but not per-gt level energy (when
> total number of gt's is 1 and we only expose device level energy but not gt
> level energy)?

Seems we are going this for device level energy. In that case should we
change the condition below to say device level energy for dGfx (rather than
just dGfx)? So it will be clear. Something "analogous" to how we do this in
i915_hwmon_get_energy():

+       else if (!HAS_EXTRA_GT_LIST(gt->i915) && hwm_energy_is_visible(ddat, hwmon_energy_input))
+               hwm_energy(ddat, energy);

> > +		 * TODO : Measure power of GT for discrete graphics and
> > +		 * modify the condition
>
> If we are adding this TODO, how are we planning to do this?

So here we are going to come up with a different condition for this device
level energy? Is it possible to do this now itself rather than add the
TODO?

Thanks.
--
Ashutosh

>
> > +		 */
> > +		if (!IS_DGFX(gt->i915) && (2 * rc6_power > rc0_power)) {
> >			pr_err("GPU leaked energy while in RC6!\n");
> >			err = -EINVAL;
> >			goto out_unlock;
