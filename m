Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEE5815D2E8
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 08:36:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A9FE6E45F;
	Fri, 14 Feb 2020 07:36:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D3F56E45F
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 07:36:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 23:36:26 -0800
X-IronPort-AV: E=Sophos;i="5.70,439,1574150400"; d="scan'208";a="227512057"
Received: from ablank-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.179])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Feb 2020 23:36:22 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>, "Lisovskiy\,
 Stanislav" <stanislav.lisovskiy@intel.com>
In-Reply-To: <20200210160009.qazm6krixf7nhtca@ahiler-desk1.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200205082959.31317-1-jani.nikula@intel.com>
 <87imke1xvt.fsf@intel.com>
 <a8c9aee482db2d51630094ea07d7821b27a8d567.camel@intel.com>
 <20200210160009.qazm6krixf7nhtca@ahiler-desk1.fi.intel.com>
Date: Fri, 14 Feb 2020 09:36:50 +0200
Message-ID: <87mu9l62nh.fsf@intel.com>
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
Cc: "Sarvela, Tomi P" <tomi.p.sarvela@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Peres,
 Martin" <martin.peres@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 10 Feb 2020, Arkadiusz Hiler <arkadiusz.hiler@intel.com> wrote:
> As of the 3 days worth of queued shards:
>
> I agree that this is unacceptable, but we can do only so much from the
> CI/infra side. The time has been creeping up steadily over the last year
> or so and the machines are not getting any faster.

I am *not* trying to say that it's all your fault and you need to
provide all results faster for the ever-increasing firehose of incoming
patches.

I'd like to pose the question, what would all this look like if we made
it a hard requirement that we need a go/no-go decision on every patch
series within 24 hours? I emphasize that I don't mean full results in 24
hours. Given all the other constraints, how could we provide as much
useful information as possible within 24 hours to make a decision?

In another thread I said, we've shifted a bit from review being the
bottle neck to shard runs being the bottle neck. It's still much more
likely that a patch will change due to review feedback instead of shard
run results. Half a dozen rounds of review ping pong directly leads to
half a dozen rounds of mostly unnecessary testing. I would not outright
dismiss only running full igt on reviewed/acked patches.

Additionally, there are smaller optimizations to be made (obviously all
depending on developer bandwidth to implement this stuff), such as
identifying patches that don't change the resulting binary
(comment/documentation/whitespace changes), and only running build
testing on them.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
