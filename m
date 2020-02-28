Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F6E173719
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 13:19:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E41196F440;
	Fri, 28 Feb 2020 12:19:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 611E86F440
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 12:19:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 04:19:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,496,1574150400"; d="scan'208";a="238746919"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga003.jf.intel.com with ESMTP; 28 Feb 2020 04:19:21 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id A84B85C1D9C; Fri, 28 Feb 2020 14:18:09 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <158289101241.24106.8869827794418521125@skylake-alporthouse-com>
References: <20200227085723.1961649-1-chris@chris-wilson.co.uk>
 <20200227085723.1961649-3-chris@chris-wilson.co.uk>
 <878skn7wt9.fsf@gaia.fi.intel.com>
 <158289101241.24106.8869827794418521125@skylake-alporthouse-com>
Date: Fri, 28 Feb 2020 14:18:09 +0200
Message-ID: <8736au9a7y.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/20] drm/i915/perf: Manually acquire
 engine-wakeref around use of kernel_context
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

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Quoting Mika Kuoppala (2020-02-28 11:53:06)
>> Chris Wilson <chris@chris-wilson.co.uk> writes:
>> 
>> > The engine->kernel_context is a special case for request emission. Since
>> > it is used as the barrier within the engine's wakeref, we must acquire the
>> > wakeref before submitting a request to the kernel_context.
>> 
>> I am a bit surprised that the kernel ctx is used in this capacity...
>
> I am happy that you are surprised, and I hope you quickly forget and
> return to your happy innocence. :)

I am surprised in a same way when looking at people who enjoys playing
games with other elemental building blocks...like for example hydrogen.
Yes I am happy to leave the premises. Good luck.

-Mika

> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
