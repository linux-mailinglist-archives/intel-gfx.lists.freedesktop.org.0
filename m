Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FAA02F9C13
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 10:57:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 944366E177;
	Mon, 18 Jan 2021 09:57:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA04A6E177
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 09:57:06 +0000 (UTC)
IronPort-SDR: 3IM1IovxgnoEFnT010Z/imIc+F6xFXG+lwpcjZqMwHvqpUFitzsivWr0FvogKoIjaIj54uJz3g
 4BtMELSbe47A==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="178868377"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="178868377"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 01:56:59 -0800
IronPort-SDR: cinEa2j5fV6NUNofRlK0hqmdRC41DauSZiHRLpHJTxF3pbZnsCd8+Gfj6n/V8M9vwanoR6lOdH
 e8PCo6Zdfjzg==
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="383511504"
Received: from moshear-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.186.10])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 01:56:57 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Zhenyu Wang <zhenyuw@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
In-Reply-To: <20210118060406.GA15982@zhen-hp.sh.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <87im8soq2w.fsf@intel.com>
 <20210114005819.4290-1-xiong.y.zhang@intel.com>
 <20210114051410.GU15982@zhen-hp.sh.intel.com> <878s8upj75.fsf@intel.com>
 <161070850877.79726.12218329205250979912@jlahtine-mobl.ger.corp.intel.com>
 <20210118060406.GA15982@zhen-hp.sh.intel.com>
Date: Mon, 18 Jan 2021 11:56:53 +0200
Message-ID: <87im7uo9ei.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915: Try to guess PCH type even
 without ISA bridge
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
Cc: intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 18 Jan 2021, Zhenyu Wang <zhenyuw@linux.intel.com> wrote:
> On 2021.01.15 13:01:49 +0200, Joonas Lahtinen wrote:
>> Quoting Jani Nikula (2021-01-15 12:50:54)
>> > On Thu, 14 Jan 2021, Zhenyu Wang <zhenyuw@linux.intel.com> wrote:
>> > > On 2021.01.14 08:58:19 +0800, Xiong Zhang wrote:
>> > >> From: Zhenyu Wang <zhenyuw@linux.intel.com>
>> > >> 
>> > >> Some vmm like hyperv and crosvm don't supply any ISA bridge to their guest,
>> > >> when igd passthrough is equipped on these vmm, guest i915 display may
>> > >> couldn't work as guest i915 detects PCH_NONE pch type.
>> > >> 
>> > >> When i915 runs as guest, this patch guess pch type through gpu type even
>> > >> without ISA bridge.
>> > >> 
>> > >> v2: Fix CI warning
>> > >> v3: Add HAS_DISPLAY()= true condition beforce guessing virt pch, then
>> > >>     refactori.
>> > >> v4: Fix CI warning
>> > >> 
>> > >> Signed-off-by: Zhenyu Wang <zhenyuw@linux.intel.com>
>> > >> Signed-off-by: Xiong Zhang <xiong.y.zhang@intel.com>
>> > >> ---
>> > >>  drivers/gpu/drm/i915/i915_drv.h  |  7 +++++-
>> > >>  drivers/gpu/drm/i915/intel_pch.c | 39 ++++++++++++++++++--------------
>> > >>  2 files changed, 28 insertions(+), 18 deletions(-)
>> > >>
>> > >
>> > > Good to me, thanks! I think this should change author to you. :)
>> > >
>> > > Reviewed-by: Zhenyu Wang <zhenyuw@linux.intel.com>
>> > 
>> > Pushed to drm-intel-next, thanks for the patch and review. I ended up
>> > retaining Zhenyu's authorship, and added
>> > 
>> > Co-developed-by: Xiong Zhang <xiong.y.zhang@intel.com>
>> 
>> This only works for the majority of SKUs which happen to use the PCH
>> that is most common. I NAKed very similar patch some years back asking
>> for a reliable means to detect the PCH type instead.
>> 
>> Has there been any attempt to introduce such mechanism?
>> 
>
> I think the situation is that if just passing through GPU device, as
> full device model depends on userspace VMM, we have no way to properly
> detect PCH type from device, e.g in case of one GEN device which could
> live with two or more different PCH types. It's better if either we
> have properly defined way to detect through GPU device or display arch
> always defines CPU/PCH display in pair.
>
> Currently this tries to assume PCH with best effort that fixed bunch of
> problems. On really mismatch case, how about adding i915 parameter to
> override PCH type? As that won't add dependency on other components..

In general, module parameters should not be considered a fix or a
solution.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
