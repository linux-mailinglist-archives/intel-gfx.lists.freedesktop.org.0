Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 890BACCB9C5
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Dec 2025 12:27:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F8D810ED51;
	Thu, 18 Dec 2025 11:27:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YarfRYQm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DC1110ED51
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Dec 2025 11:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766057267; x=1797593267;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=JcZoUWWVLAqRG7TaB5lOmsCyB3wOanYdLXQllH31fjU=;
 b=YarfRYQmlo6RxnMkr5X+BVk/8WJJdTeYme/exURJMXHGnTXPR1iaJMqT
 xdr4N/2nViRIwFP8QIbzsDQ+qYBcOCCJ57KsePMqVW36TtQz4PNrGjYZb
 cjKPDODzgcsY/OrvxxZeylHOK9CxQuCI3Tw1RX7gOLTMbj5eNQyEvOomm
 g7QiZ1jjTFY+4uO5Xr7s93jpnIJ111huir8My+6xrRE5xM/FFONQOGMOa
 194ZmyxlsP257amhMuhNoYMT6C9TH8Mu7b6Y/uHHAxEC+k7hhiKGVVAZ7
 MUWCVui0Buwbm4GQFoPrhH3ZxKdbUcDQJ92MIS+pZo0zoPMu9s+En1VcP w==;
X-CSE-ConnectionGUID: q5gM4vltQ6ec873BIZiiBQ==
X-CSE-MsgGUID: 7zcqbblbQHyyulYYWUMgzg==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="67203459"
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="67203459"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 03:27:47 -0800
X-CSE-ConnectionGUID: hzKkg9lDTDGEFhgFKRS0cA==
X-CSE-MsgGUID: TLMAK7L3Rc2Ck762gqDKXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="198326882"
Received: from black.igk.intel.com ([10.91.253.5])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 03:27:46 -0800
Date: Thu, 18 Dec 2025 12:27:43 +0100
From: Raag Jadav <raag.jadav@intel.com>
To: "Anirban, Sk" <sk.anirban@intel.com>
Cc: intel-gfx@lists.freedesktop.org, krzysztof.karas@intel.com
Subject: Re: [PATCH v3] drm/i915/selftest: Add throttle reason diagnostics to
 RPS selftests
Message-ID: <aUPlL6PWbpe5RhG-@black.igk.intel.com>
References: <20251218053220.1599233-2-sk.anirban@intel.com>
 <281d4ce1-bb8b-48bc-bac0-286b95ddf318@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <281d4ce1-bb8b-48bc-bac0-286b95ddf318@intel.com>
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

On Thu, Dec 18, 2025 at 11:16:29AM +0530, Anirban, Sk wrote:
> Hi Krzysztof,
> 
> Could you please let me know if I can retain your review for this version of
> my patch?

Yes, unless there are major changes we usually retain the tags.

> On 18-12-2025 11:02 am, Sk Anirban wrote:
> > Report GPU throttle reasons when RPS tests fail to reach expected
> > frequencies or power levels.
> > 
> > v2: Read the throttle value before the spinner ends (Raag)
> >      Add a condition before printing throttle value (Krzysztof)
> > v3: Extend throttle reasons debug support (Raag)
> > 
> > Signed-off-by: Sk Anirban <sk.anirban@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/selftest_rps.c | 37 ++++++++++++++++++++++----
> >   1 file changed, 32 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> > index 73bc91c6ea07..b42d9b39add6 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> > @@ -378,6 +378,7 @@ int live_rps_control(void *arg)
> >   	enum intel_engine_id id;
> >   	struct igt_spinner spin;
> >   	intel_wakeref_t wakeref;
> > +	u32 throttle;
> >   	int err = 0;
> >   	/*
> > @@ -463,6 +464,10 @@ int live_rps_control(void *arg)
> >   		max = rps_set_check(rps, limit);
> >   		max_dt = ktime_sub(ktime_get(), max_dt);
> > +		throttle = intel_uncore_read(gt->uncore,
> > +					     intel_gt_perf_limit_reasons_reg(gt));

Now that we allow 100 characters I think this can be one line.

> > +		throttle &= GT0_PERF_LIMIT_REASONS_MASK;
> > +
> >   		min_dt = ktime_get();
> >   		min = rps_set_check(rps, rps->min_freq);
> >   		min_dt = ktime_sub(ktime_get(), min_dt);
> > @@ -478,11 +483,9 @@ int live_rps_control(void *arg)
> >   			min, max, ktime_to_ns(min_dt), ktime_to_ns(max_dt));
> >   		if (limit != rps->max_freq) {
> > -			u32 throttle = intel_uncore_read(gt->uncore,
> > -							 intel_gt_perf_limit_reasons_reg(gt));
> > -
> > -			pr_warn("%s: GPU throttled with reasons 0x%08x\n",
> > -				engine->name, throttle & GT0_PERF_LIMIT_REASONS_MASK);
> > +			if (throttle)
> > +				pr_warn("%s: GPU throttled with reasons 0x%08x\n",
> > +					engine->name, throttle);
> >   			show_pstate_limits(rps);
> >   		}
> > @@ -1138,6 +1141,7 @@ int live_rps_power(void *arg)
> >   	struct intel_engine_cs *engine;
> >   	enum intel_engine_id id;
> >   	struct igt_spinner spin;
> > +	u32 throttle;
> >   	int err = 0;
> >   	/*
> > @@ -1195,6 +1199,10 @@ int live_rps_power(void *arg)
> >   		max.freq = rps->max_freq;
> >   		max.power = measure_power_at(rps, &max.freq);
> > +		throttle = intel_uncore_read(gt->uncore,
> > +					     intel_gt_perf_limit_reasons_reg(gt));

Ditto.

> > +		throttle &= GT0_PERF_LIMIT_REASONS_MASK;
> > +
> >   		min.freq = rps->min_freq;
> >   		min.power = measure_power_at(rps, &min.freq);
> > @@ -1210,12 +1218,21 @@ int live_rps_power(void *arg)
> >   			pr_notice("Could not control frequency, ran at [%d:%uMHz, %d:%uMhz]\n",
> >   				  min.freq, intel_gpu_freq(rps, min.freq),
> >   				  max.freq, intel_gpu_freq(rps, max.freq));
> > +
> > +			if (throttle)
> > +				pr_warn("%s: GPU throttled with reasons 0x%08x\n",
> > +					engine->name, throttle);
> >   			continue;
> >   		}
> >   		if (11 * min.power > 10 * max.power) {
> >   			pr_err("%s: did not conserve power when setting lower frequency!\n",
> >   			       engine->name);
> > +
> > +			if (throttle)
> > +				pr_warn("%s: GPU throttled with reasons 0x%08x\n",
> > +					engine->name, throttle);
> > +
> >   			err = -EINVAL;
> >   			break;
> >   		}
> > @@ -1241,6 +1258,7 @@ int live_rps_dynamic(void *arg)
> >   	struct intel_engine_cs *engine;
> >   	enum intel_engine_id id;
> >   	struct igt_spinner spin;
> > +	u32 throttle;
> >   	int err = 0;
> >   	/*
> > @@ -1293,6 +1311,10 @@ int live_rps_dynamic(void *arg)
> >   		max.freq = wait_for_freq(rps, rps->max_freq, 500);
> >   		max.dt = ktime_sub(ktime_get(), max.dt);
> > +		throttle = intel_uncore_read(gt->uncore,
> > +					     intel_gt_perf_limit_reasons_reg(gt));

Ditto. And with that,

Reviewed-by: Raag Jadav <raag.jadav@intel.com>

> > +		throttle &= GT0_PERF_LIMIT_REASONS_MASK;
> > +
> >   		igt_spinner_end(&spin);
> >   		min.dt = ktime_get();
> > @@ -1308,6 +1330,11 @@ int live_rps_dynamic(void *arg)
> >   		if (min.freq >= max.freq) {
> >   			pr_err("%s: dynamic reclocking of spinner failed\n!",
> >   			       engine->name);
> > +
> > +			if (throttle)
> > +				pr_warn("%s: GPU throttled with reasons 0x%08x\n",
> > +					engine->name, throttle);
> > +
> >   			err = -EINVAL;
> >   		}
