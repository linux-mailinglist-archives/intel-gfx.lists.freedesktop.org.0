Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB4D1593FF
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 16:55:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8349F6EE9E;
	Tue, 11 Feb 2020 15:55:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76E246EE9E
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Feb 2020 15:55:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 07:55:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="280966036"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Feb 2020 07:55:06 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 2D63B5C0D9B; Tue, 11 Feb 2020 17:54:07 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <158143518042.3635.5696176952305833936@skylake-alporthouse-com>
References: <20200210205722.794180-1-chris@chris-wilson.co.uk>
 <20200210205722.794180-3-chris@chris-wilson.co.uk>
 <87a75p9mhf.fsf@gaia.fi.intel.com>
 <158143518042.3635.5696176952305833936@skylake-alporthouse-com>
Date: Tue, 11 Feb 2020 17:54:07 +0200
Message-ID: <877e0t9l28.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915/selftests: Relax timeout for
 error-interrupt reset processing
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

> Quoting Mika Kuoppala (2020-02-11 15:23:24)
>> Chris Wilson <chris@chris-wilson.co.uk> writes:
>> > +                             /* Kick the tasklet to process the error */
>> > +                             intel_engine_flush_submission(engine);
>> 
>> This pattern of usage in selftests makes me want to add mb(); to
>> intel_engine_flush_submission(), as it does not seem to do it
>> implicitly.
>> 
>> We want to flush submission and observe the effects, thus
>> it seems like a good place.
>
> Hmm. From the cpu perspective the memory barrier would be on the other
> side in clear_bit_unlock(), and flush_submission does unlock_wait.
>
> But, then, we have to factor in that we have to communicate with an
> external client the GPU, so perhaps an explicit memory barrier...
>
> We certainly do perform the memory barrier in order to set the GPU in
> motion, but have not relied on them for observing effects (aside from
> the CSB ringbuf).
>
> I don't see a strong argument that adding a 'mb/rmb' here will make any
> difference, I don't see what we are pairing with from the GPU
> perspective. But maybe there is?

I don't have a strong argument from gpu side. But what if the
flush only does the nonatomic wait and returns, and our
CPU has read the state up front for the next comparison.

Or now thinking it, the saving grace is that if we don't need
to flush in here, the tasklet has finished and finish has
the barrier?

-Mika





_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
