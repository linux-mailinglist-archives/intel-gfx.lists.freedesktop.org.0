Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5219030BD72
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 12:53:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86EB06E0F5;
	Tue,  2 Feb 2021 11:53:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E6206E0F5
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 11:53:00 +0000 (UTC)
IronPort-SDR: beu5fbgdMvSN5RlN1RyH4IUI1qh4zJwzg2XFHK8wN+G3QVbjTUE2zRj0zfw2UTlME0FPybfloz
 n69pGUys6q+g==
X-IronPort-AV: E=McAfee;i="6000,8403,9882"; a="180916410"
X-IronPort-AV: E=Sophos;i="5.79,394,1602572400"; d="scan'208";a="180916410"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2021 03:52:59 -0800
IronPort-SDR: 4X2b+uU3kfDwqAiRCOoX4zlkY3VR7Sy3f25saEpwmY5CylHE77deDb5uq25F7WG0QM8ECKzOoB
 RJ6u8AREkGag==
X-IronPort-AV: E=Sophos;i="5.79,394,1602572400"; d="scan'208";a="391431028"
Received: from amishuti-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.249.46.139])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2021 03:52:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, Imre Deak
 <imre.deak@intel.com>, Matt Roper <matthew.d.roper@intel.com>, Mika
 Kuoppala <mika.kuoppala@linux.intel.com>, Tvrtko Ursulin
 <tvrtko.ursulin@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
In-Reply-To: <161225443612.7399.13785637314340829371@build.alporthouse.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <87lfcqobpl.fsf@intel.com> <87ft2fgcu1.fsf@intel.com>
 <161225443612.7399.13785637314340829371@build.alporthouse.com>
Date: Tue, 02 Feb 2021 13:52:52 +0200
Message-ID: <871rdyhejv.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] Fixes that failed to apply to v5.11-rc4
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 02 Feb 2021, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> Quoting Jani Nikula (2021-02-02 07:15:18)
>> On Mon, 18 Jan 2021, Jani Nikula <jani.nikula@intel.com> wrote:
>> > The following commits have been marked as Cc: stable or fixing something
>> > in v5.11-rc4 or earlier, but failed to cherry-pick to
>> > drm-intel-fixes. Please see if they are worth backporting, and please do
>> > so if they are.
>> >
>> > Conflicts:
>> > dbe13ae1d6ab ("drm/i915/pmu: Don't grab wakeref when enabling events")
>> > 9bb36cf66091 ("drm/i915: Check for rq->hwsp validity after acquiring RCU lock")
>> > 5b4dc95cf7f5 ("drm/i915/gt: Prevent use of engine->wa_ctx after error")
>> > 6a3daee1b38e ("drm/i915/selftests: Fix some error codes")
>> > 67fba3f1c73b ("drm/i915/dp: Fix LTTPR vswing/pre-emp setting in non-transparent mode")
>> >
>> > Fails to build:
>> > 3170a21f7059 ("drm/i915: Only enable DFP 4:4:4->4:2:0 conversion when outputting YCbCr 4:4:4")
>> >
>> > BR,
>> > Jani.
>> 
>> Update.
>> 
>> Conflicts:
>> 5b4dc95cf7f5 ("drm/i915/gt: Prevent use of engine->wa_ctx after error")
>
> Already in 488751a0ef9b ("drm/i915/gt: Prevent use of engine->wa_ctx after error")
>
>> 6a3daee1b38e ("drm/i915/selftests: Fix some error codes")
>
> No user or even likely CI impact, not worth backporting [unless it turns
> up later as a prerequisite].
>
>> 67fba3f1c73b ("drm/i915/dp: Fix LTTPR vswing/pre-emp setting in non-transparent mode")
>> 699390f7f026 ("drm/i915: Fix the PHY compliance test vs. hotplug mishap")
>> e7004ea4f5f5 ("drm/i915/gt: Close race between enable_breadcrumbs and cancel_breadcrumbs")
>
> Required at least one other friend.
>
> There's another patch that we need in fixes for v5.10, so I'll include
> that: drm/i915/gem: Drop lru bumping on display unpinning
>
> I've put the 3 patches on fdo,
> https://cgit.freedesktop.org/~ickle/linux-2.6/log/?h=dif
>
> Hopefully they are a happy bunch.

Thanks, picked the 3 up.

> p.s. 5.11-rc6 kills CI.

Yeah, looks like a fix is in the works.

BR,
Jani.


[1] http://lore.kernel.org/r/8735yfd2q4.fsf@nanos.tec.linutronix.de

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
