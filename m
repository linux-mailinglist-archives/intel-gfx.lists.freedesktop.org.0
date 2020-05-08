Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E47BD1CB3D8
	for <lists+intel-gfx@lfdr.de>; Fri,  8 May 2020 17:46:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 377ED89BF3;
	Fri,  8 May 2020 15:46:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B14989BF3
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 May 2020 15:46:57 +0000 (UTC)
IronPort-SDR: 6fW/TPLYA0IKdk5dw6L2ktdoWRQrwK0HwGxgce3FD4iUBhVicrn2vByw28OpRjezQa/rmj1WQJ
 agVbUUohuUoA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2020 08:46:56 -0700
IronPort-SDR: TE9uioLZoRaILEklJG0Dz3sz09sUMNB3JT8FtZzhRwEUmpvZwY9iz7XqLXhFLmdyYEwZxK76BS
 Um2WsOhi5P7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,368,1583222400"; d="scan'208";a="285506553"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga004.fm.intel.com with ESMTP; 08 May 2020 08:46:56 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 0C8E75C1DC1; Fri,  8 May 2020 18:44:48 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <158895262946.30605.1038065551850826772@build.alporthouse.com>
References: <20200508092933.738-1-chris@chris-wilson.co.uk>
 <20200508092933.738-3-chris@chris-wilson.co.uk>
 <87a72ixwt0.fsf@gaia.fi.intel.com>
 <158895262946.30605.1038065551850826772@build.alporthouse.com>
Date: Fri, 08 May 2020 18:44:48 +0300
Message-ID: <87eeru4ej3.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915: Prevent using semaphores to
 chain up to external fences
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

> Quoting Mika Kuoppala (2020-05-08 16:37:15)
>> Chris Wilson <chris@chris-wilson.co.uk> writes:
>> 
>> > The downside of using semaphores is that we lose metadata passing
>> > along the signaling chain. This is particularly nasty when we
>> > need to pass along a fatal error such as EFAULT or EDEADLK. For
>> > fatal errors we want to scrub the request before it is executed,
>> > which means that we cannot preload the request onto HW and have
>> > it wait upon a semaphore.
>> 
>> b is waiting on a, a fails and we want to release b with error?
>
> Yes. B is submitted before A, and if B is relying on A to setup GPU page

I guess this has to be A is before B.

> tables or other interesting things, we can't let B run if A dies. For
> the EDEADLK if B is waiting on A, but then A is submitted with a wait on
> B -- we have to untangle that mess.

Avoiding the hw semaphore makes sense

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
