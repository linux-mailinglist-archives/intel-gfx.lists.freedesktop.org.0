Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C70ECB4E49
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Dec 2025 07:44:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF79410E71B;
	Thu, 11 Dec 2025 06:44:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eNKrjoUD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4780610E71B
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Dec 2025 06:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765435443; x=1796971443;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=eEVNbqzzqFeGezlcwqhuTIYVX666oOyP0hX05bU1p5M=;
 b=eNKrjoUD8KK0rEVDZsDm8g7G6Ju8E3PbzBJMlsyQBzMHVl8lP/Ug/k/S
 V4QRE6r9LOy2lOLly42f/CsyB9H5GKMblA7FQ3BwNORxK4YzikNBIGbKz
 WxEYbSom+u47qwjZjpJUHDG6vLk77OcSocS/t6gxldD8JQGefOEmwzQzn
 QZp4RmEncL8SxlDcmMAovZ8Fx5/oUo1q+EPNcScw/RAcVuKUmyKRKzVnH
 Pbp42roN4NKcLcgmjWf/lOsA65Pf6w3U3UOgWjsDQ89Mx4GFSxHwSCemB
 VWWqXoh1Y6p2BV+IzjuxF+mPoM9szff7/HwoGgUB7WNI9xL7RDvR2N640 Q==;
X-CSE-ConnectionGUID: YHSAE0qBQ5Ckaysr0HolkQ==
X-CSE-MsgGUID: 5mD9774mTfSxHvaGsX6/Rw==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="85020386"
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="85020386"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 22:44:03 -0800
X-CSE-ConnectionGUID: qs1Fu/JGTrSeyzUsPlB8gQ==
X-CSE-MsgGUID: fw4qxiQVR96HpnUvWe1pzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,265,1758610800"; d="scan'208";a="201146573"
Received: from black.igk.intel.com ([10.91.253.5])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 22:44:01 -0800
Date: Thu, 11 Dec 2025 07:43:58 +0100
From: Raag Jadav <raag.jadav@intel.com>
To: "Anirban, Sk" <sk.anirban@intel.com>
Cc: Krzysztof Karas <krzysztof.karas@intel.com>,
 intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com,
 karthik.poosa@intel.com, soham.purkait@intel.com,
 mallesh.koujalagi@intel.com
Subject: Re: [PATCH] drm/i915/selftest: Add throttle reason diagnostics to
 RPS selftests
Message-ID: <aTpoLnJoHtx52oWL@black.igk.intel.com>
References: <20251209055616.1095495-2-sk.anirban@intel.com>
 <phjuejgrtlhzocdcmvglngezt4u3xhcdkptyeatx7rtx66vpwy@mfitxo4m7txn>
 <40c877e4-a017-4056-a0d4-8cf3ada0c96e@intel.com>
 <tglsnnckzfji56d3vqzvbee7ax6yjh6o5lv7lpoco2clikdmzn@txrozp7qqebp>
 <a7af4b0a-31cc-4f8b-b90c-e5f3bc399f0e@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a7af4b0a-31cc-4f8b-b90c-e5f3bc399f0e@intel.com>
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

On Thu, Dec 11, 2025 at 11:07:05AM +0530, Anirban, Sk wrote:
> Hi,
> 
> On 10-12-2025 02:21 pm, Krzysztof Karas wrote:
> > Hi,
> > 
> > On 2025-12-09 at 13:36:15 +0530, Anirban, Sk wrote:
> > > Hi,
> > > 
> > > On 09-12-2025 12:46 pm, Krzysztof Karas wrote:
> > > > Hi Sk Anirban,
> > > > 
> > > > On 2025-12-09 at 11:26:17 +0530, Sk Anirban wrote:
> > > > > Report GPU throttle reasons when RPS tests fail to reach expected
> > > > > frequencies or power levels.
> > > > > 
> > > > > Signed-off-by: Sk Anirban <sk.anirban@intel.com>
> > > > > ---
> > > > >    drivers/gpu/drm/i915/gt/selftest_rps.c | 17 +++++++++++++++++
> > > > >    1 file changed, 17 insertions(+)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> > > > > index 73bc91c6ea07..01c671e00e61 100644
> > > > > --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> > > > > +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> > > > > @@ -1138,6 +1138,7 @@ int live_rps_power(void *arg)
> > > > >    	struct intel_engine_cs *engine;
> > > > >    	enum intel_engine_id id;
> > > > >    	struct igt_spinner spin;
> > > > > +	u32 throttle;
> > > > >    	int err = 0;
> > > > >    	/*
> > > > > @@ -1216,6 +1217,13 @@ int live_rps_power(void *arg)
> > > > >    		if (11 * min.power > 10 * max.power) {
> > > > >    			pr_err("%s: did not conserve power when setting lower frequency!\n",
> > > > >    			       engine->name);
> > > > > +
> > > > > +			throttle = intel_uncore_read(gt->uncore,
> > > > > +						     intel_gt_perf_limit_reasons_reg(gt));
> > > > > +
> > > > > +			pr_warn("%s: GPU throttled with reasons 0x%08x\n",
> > > > > +				engine->name, throttle & GT0_PERF_LIMIT_REASONS_MASK);
> > > > > +
> > > > This feels like spamming the system messages. We are on error
> > > > path already and exiting with -EINVAL, so printing an
> > > > unconditional warning here is excessive, I think.
> > > > 
> > > > [...]
> > > Got it. Based on past experience, most failures occur due to throttling.
> > > However, I can switch it to pr_info since we already print pr_err
> > > beforehand.
> > No, that would bunch up two reasons for potential failure.
> > If you experienced problems in condition check:
> > 
> > if (11 * min.power > 10 * max.power)
> > 
> > due to throttling, then throttling detection could use its own
> > error path, something like this could work:
> > 
> >   		if (11 * min.power > 10 * max.power) {
> > -                       pr_err("%s: did not conserve power when setting lower frequency!\n",
> > -                              engine->name);
> > +			if (read_cagf(rps) != rps->max_freq) {
> > +                       	throttle = intel_uncore_read(gt->uncore,
> > +                               	                     intel_gt_perf_limit_reasons_reg(gt));
> > +                       	pr_err("%s: GPU throttled with reasons 0x%08x\n",
> > +                               	engine->name, throttle & GT0_PERF_LIMIT_REASONS_MASK);
> > +			} else {
> > + 				pr_err("%s: did not conserve power when setting lower frequency!\n",
> > + 			       	       engine->name);
> > +			}
> > +
> >   			err = -EINVAL;
> >   			break;
> >   		}
> > 
> > The main goal would be to differentiate and print only one
> > reason for failure, instead of emitting two of them and leaving
> > people guessing which one of the two was the real reason the
> > function returned with -EINVAL.
> > 
> > I did not test the code above, so it may require some changes.
> 
> Throttle is not considered a failure in this context; it serves only as a
> debug indicator or a potential reason for failure.
> 
> The primary objective of the test is to measure power, and any failure will
> be related to power metrics.
> 
> Throttling is viewed as a defensive mechanism rather than a failure
> condition.

Yes, it's actually the hardware saving itself from permanent damage.
But here we're reading throttle reasons after the spinner ends, so it
is possible that throttling is no longer happening at this point.

The useful reading would be before we end the spinner, but we can always
log the result afterwards. Also, update with same logic where applicable
(like live_rps_control()).

Raag
