Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA85142CBB
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2020 15:03:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DDBF6E976;
	Mon, 20 Jan 2020 14:03:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 561EE6E976
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2020 14:03:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jan 2020 06:03:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,342,1574150400"; d="scan'208";a="275045438"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Jan 2020 06:03:31 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 8D5EB5C1E05; Mon, 20 Jan 2020 16:02:51 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <157952862471.2218.13971330765359216946@skylake-alporthouse-com>
References: <20200120113642.4121605-1-chris@chris-wilson.co.uk>
 <87y2u2p77t.fsf@gaia.fi.intel.com>
 <157952862471.2218.13971330765359216946@skylake-alporthouse-com>
Date: Mon, 20 Jan 2020 16:02:51 +0200
Message-ID: <87pnfep6no.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/3] intel-ci: Drop gem_ctx_switch
 from fast feedback
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

> Quoting Mika Kuoppala (2020-01-20 13:50:46)
>> Chris Wilson <chris@chris-wilson.co.uk> writes:
>> 
>> > Only a couple of tests from gem_ctx_switch are run in BAT, to check we
>> > have multiple contexts on RCS. It doesn't actually verify the switch,
>> > just that the execbuf API accepts the context argument.
>> >
>> > This test is redundant as actual context switching (and more) is verified by
>> > live_gem_contexts and live_gt_contexts selftests.
>> >
>> > Instead of using the mediocre gem_ctx_switch stress test in BAT, use
>> > gem_exec_parallel/contexs and gem_exec_parallel/fds as both ensure
>> s/contexs/contexts
>> 
>> The gem_exec_parallel seems to use new topology api to set the context.
>> But the aim is to check the context id delivery through rsvd field
>> into execbuf?
>
> gem_ctx_switch was nothing more than see if we can switch without
> blowing up, and spitting out a rough number for context switch latency --
> mostly it was interesting wrt to signal interrupts (for
> intel_ring_submission really). The tests we are _not_ using in BAT.
>
> So as far as basic HW capability goes, we have that covered in selftests.
>
> The question then remains, how best to quickly cover the execbuf.rsvd1
> use cases. gem_exec_parallel seems to be quite good as catching edge
> cases that we overlooked (i.e. has spotted bugs in pre-merging) so seemed
> like the candidate to use here as well.

Ok, thanks for explanation. Yeah interruptible was there but not used
in gem_ctx_switch.

Acked-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
