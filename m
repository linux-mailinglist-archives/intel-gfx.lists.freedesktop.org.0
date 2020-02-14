Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C82D315D962
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 15:25:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E1A16E7EF;
	Fri, 14 Feb 2020 14:25:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 838296E7EF
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 14:25:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 06:25:27 -0800
X-IronPort-AV: E=Sophos;i="5.70,440,1574150400"; d="scan'208";a="227611426"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 06:25:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Sarvela\, Tomi P" <tomi.p.sarvela@intel.com>, "Hiler\,
 Arkadiusz" <arkadiusz.hiler@intel.com>, "Lisovskiy\,
 Stanislav" <stanislav.lisovskiy@intel.com>
In-Reply-To: <2b9ee5f16d86408f947eb59383c1960d@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200205082959.31317-1-jani.nikula@intel.com>
 <87imke1xvt.fsf@intel.com>
 <a8c9aee482db2d51630094ea07d7821b27a8d567.camel@intel.com>
 <20200210160009.qazm6krixf7nhtca@ahiler-desk1.fi.intel.com>
 <87mu9l62nh.fsf@intel.com> <2b9ee5f16d86408f947eb59383c1960d@intel.com>
Date: Fri, 14 Feb 2020 16:25:20 +0200
Message-ID: <87a75lw8j3.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mst: fix pipe and vblank enable
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Peres,
 Martin" <martin.peres@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 14 Feb 2020, "Sarvela, Tomi P" <tomi.p.sarvela@intel.com> wrote:
>> From: Jani Nikula <jani.nikula@intel.com>
>> 
>> On Mon, 10 Feb 2020, Arkadiusz Hiler <arkadiusz.hiler@intel.com> wrote:
>> > As of the 3 days worth of queued shards:
>> >
>> > I agree that this is unacceptable, but we can do only so much from the
>> > CI/infra side. The time has been creeping up steadily over the last year
>> > or so and the machines are not getting any faster.
>> 
>> I am *not* trying to say that it's all your fault and you need to
>> provide all results faster for the ever-increasing firehose of incoming
>> patches.
>> 
>> I'd like to pose the question, what would all this look like if we made
>> it a hard requirement that we need a go/no-go decision on every patch
>> series within 24 hours? I emphasize that I don't mean full results in 24
>> hours. Given all the other constraints, how could we provide as much
>> useful information as possible within 24 hours to make a decision?
>> 
>> In another thread I said, we've shifted a bit from review being the
>> bottle neck to shard runs being the bottle neck. It's still much more
>> likely that a patch will change due to review feedback instead of shard
>> run results. Half a dozen rounds of review ping pong directly leads to
>> half a dozen rounds of mostly unnecessary testing. I would not outright
>> dismiss only running full igt on reviewed/acked patches.
>
> This is actually a good idea. In practice, the shards are swamped by the
> amount of builds today, and the throughput has been close to 1/h a long
> time, even with work ongoing to prune or tighten stupidest IGT tests.
>
> We could make the shard run requirements stricter: in addition to passing
> BAT it would need some amount of Acks. Patchwork already collects them.

Of course, patchwork isn't accurate in picking acks/reviews, but I don't
think it has to be. Err on the side of testing, and provide a way to
start shard runs manually, also because sometimes you do want the
results ASAP on v1. (On that note, would be nice if people could
*remove* their patch series from the shard queueu too.)

> Another idea has been moving the serialized shard run queue to something
> that can handle reordering: trybots can be moved after everything else. This
> doesn't affect to the shard queue length though, if we still want to test
> everything.

Next we'll be figuring out a fair scheduler that does not starve the
trybot queue. ;)

>> Additionally, there are smaller optimizations to be made (obviously all
>> depending on developer bandwidth to implement this stuff), such as
>> identifying patches that don't change the resulting binary
>> (comment/documentation/whitespace changes), and only running build
>> testing on them.
>
> This idea has been floating around, and would help in 5% changes or so
> (which is still noticeable: 1-2 more builds / day tested instead of queued).
>
> Just need a good diff checker that says "text changes only, skip it".

It's probably not as trivial as it initially sounds, but gut feeling
says that it's also not a problem that nobody has tried to solve before.


BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
