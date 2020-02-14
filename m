Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD41815D8EF
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 15:05:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 155406E808;
	Fri, 14 Feb 2020 14:05:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC9546E7FA
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 14:04:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 06:04:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,440,1574150400"; d="scan'208";a="234464077"
Received: from irsmsx107.ger.corp.intel.com ([163.33.3.99])
 by orsmga003.jf.intel.com with ESMTP; 14 Feb 2020 06:04:57 -0800
Received: from irsmsx605.ger.corp.intel.com (163.33.146.138) by
 IRSMSX107.ger.corp.intel.com (163.33.3.99) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 14 Feb 2020 14:04:55 +0000
Received: from irsmsx601.ger.corp.intel.com (163.33.146.7) by
 IRSMSX605.ger.corp.intel.com (163.33.146.138) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 14 Feb 2020 14:04:55 +0000
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7]) by
 irsmsx601.ger.corp.intel.com ([163.33.146.7]) with mapi id 15.01.1713.004;
 Fri, 14 Feb 2020 14:04:55 +0000
From: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "Hiler, Arkadiusz"
 <arkadiusz.hiler@intel.com>, "Lisovskiy, Stanislav"
 <stanislav.lisovskiy@intel.com>
Thread-Topic: [PATCH] drm/i915/mst: fix pipe and vblank enable
Thread-Index: AQHV4AXLy59NCTtTIUiRj9QDUvw7+agUTqqAgABHoICABby0AIAAaTeg
Date: Fri, 14 Feb 2020 14:04:55 +0000
Message-ID: <2b9ee5f16d86408f947eb59383c1960d@intel.com>
References: <20200205082959.31317-1-jani.nikula@intel.com>
 <87imke1xvt.fsf@intel.com>
 <a8c9aee482db2d51630094ea07d7821b27a8d567.camel@intel.com>
 <20200210160009.qazm6krixf7nhtca@ahiler-desk1.fi.intel.com>
 <87mu9l62nh.fsf@intel.com>
In-Reply-To: <87mu9l62nh.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
x-originating-ip: [163.33.253.164]
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

> From: Jani Nikula <jani.nikula@intel.com>
> 
> On Mon, 10 Feb 2020, Arkadiusz Hiler <arkadiusz.hiler@intel.com> wrote:
> > As of the 3 days worth of queued shards:
> >
> > I agree that this is unacceptable, but we can do only so much from the
> > CI/infra side. The time has been creeping up steadily over the last year
> > or so and the machines are not getting any faster.
> 
> I am *not* trying to say that it's all your fault and you need to
> provide all results faster for the ever-increasing firehose of incoming
> patches.
> 
> I'd like to pose the question, what would all this look like if we made
> it a hard requirement that we need a go/no-go decision on every patch
> series within 24 hours? I emphasize that I don't mean full results in 24
> hours. Given all the other constraints, how could we provide as much
> useful information as possible within 24 hours to make a decision?
> 
> In another thread I said, we've shifted a bit from review being the
> bottle neck to shard runs being the bottle neck. It's still much more
> likely that a patch will change due to review feedback instead of shard
> run results. Half a dozen rounds of review ping pong directly leads to
> half a dozen rounds of mostly unnecessary testing. I would not outright
> dismiss only running full igt on reviewed/acked patches.

This is actually a good idea. In practice, the shards are swamped by the
amount of builds today, and the throughput has been close to 1/h a long
time, even with work ongoing to prune or tighten stupidest IGT tests.

We could make the shard run requirements stricter: in addition to passing
BAT it would need some amount of Acks. Patchwork already collects them.

Another idea has been moving the serialized shard run queue to something
that can handle reordering: trybots can be moved after everything else. This
doesn't affect to the shard queue length though, if we still want to test
everything.

> Additionally, there are smaller optimizations to be made (obviously all
> depending on developer bandwidth to implement this stuff), such as
> identifying patches that don't change the resulting binary
> (comment/documentation/whitespace changes), and only running build
> testing on them.

This idea has been floating around, and would help in 5% changes or so
(which is still noticeable: 1-2 more builds / day tested instead of queued).

Just need a good diff checker that says "text changes only, skip it".

Tomi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
