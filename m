Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B3E1176033
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 17:42:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC6A56E5A5;
	Mon,  2 Mar 2020 16:42:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A8CE6E5A5
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 16:42:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20415737-1500050 for multiple; Mon, 02 Mar 2020 16:42:41 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200302085812.4172450-1-chris@chris-wilson.co.uk>
 <20200302085812.4172450-8-chris@chris-wilson.co.uk>
 <87lfoi7ms7.fsf@gaia.fi.intel.com>
 <158316623470.3453.9545260080333756525@skylake-alporthouse-com>
 <87imjm7m2e.fsf@gaia.fi.intel.com>
In-Reply-To: <87imjm7m2e.fsf@gaia.fi.intel.com>
Message-ID: <158316735945.3453.11349884340074474122@skylake-alporthouse-com>
Date: Mon, 02 Mar 2020 16:42:39 +0000
Subject: Re: [Intel-gfx] [PATCH 08/22] drm/i915: Wrap i915_active in a
 simple kreffed struct
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

Quoting Mika Kuoppala (2020-03-02 16:34:17)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Quoting Mika Kuoppala (2020-03-02 16:18:48)
> >> Chris Wilson <chris@chris-wilson.co.uk> writes:
> >> 
> >> > For conveniences of callers that just want to use an i915_active to
> >> > track a wide array of concurrent timelines, wrap the base i915_active
> >> > struct inside a kref. This i915_active will self-destruct after use.
> >> >
> >> 
> >> I looks ok and I would buy this. However I didn't manage to
> >> find user.
> >
> > Did you look at the next patch?
> 
> I did! I even searched through it.
> 
> I will take a second look.

The next-but-one patch then.

But patch 1/22 is the most important atm :)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
