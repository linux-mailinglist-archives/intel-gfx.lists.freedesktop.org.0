Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC24813545B
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 09:31:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 209056E1ED;
	Thu,  9 Jan 2020 08:31:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A16C06E1ED
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 08:31:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 00:31:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,413,1571727600"; d="scan'208";a="217733645"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga007.fm.intel.com with ESMTP; 09 Jan 2020 00:31:01 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id C6B925C1DE9; Thu,  9 Jan 2020 10:30:30 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <157855794804.13423.18050306819020127424@skylake-alporthouse-com>
References: <20200107143826.3298401-1-chris@chris-wilson.co.uk>
 <87y2uhf3mq.fsf@gaia.fi.intel.com>
 <157855794804.13423.18050306819020127424@skylake-alporthouse-com>
Date: Thu, 09 Jan 2020 10:30:30 +0200
Message-ID: <87sgkpf2vt.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Drop a defunct timeline
 assertion
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

> Quoting Mika Kuoppala (2020-01-09 08:14:21)
>> Chris Wilson <chris@chris-wilson.co.uk> writes:
>> 
>> > intel_timeline_enter() has been decoupled from intel_timeline_pin() and
>> > both enter/exit & pin/unpin are allowed [read expected] to run
>> > concurrently with one another. The assertion that they had better not is
>> > stale.
>> >
>> > Closes: https://gitlab.freedesktop.org/drm/intel/issues/940
>> 
>> Hmm I got page not found for this even tho other issues are shown :O
>
> You need to login for this one.
>
>> References to the decoupling part?
>
> References: a6edbca74b30 ("drm/i915/gt: Close race between engine_park and intel_gt_retire_requests")

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
