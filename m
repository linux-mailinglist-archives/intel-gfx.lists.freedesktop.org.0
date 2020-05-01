Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE491C1195
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 13:41:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BCE66E182;
	Fri,  1 May 2020 11:41:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 394 seconds by postgrey-1.36 at gabe;
 Fri, 01 May 2020 11:41:06 UTC
Received: from eu-smtp-delivery-151.mimecast.com
 (eu-smtp-delivery-151.mimecast.com [146.101.78.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C6DA6EC55
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 11:41:06 +0000 (UTC)
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-189-ih3s90vDOeiTt87Dj966jA-1; Fri, 01 May 2020 12:34:27 +0100
X-MC-Unique: ih3s90vDOeiTt87Dj966jA-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Fri, 1 May 2020 12:34:26 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000; 
 Fri, 1 May 2020 12:34:26 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Sebastian Andrzej Siewior' <bigeasy@linutronix.de>, "Jason A. Donenfeld"
 <Jason@zx2c4.com>
Thread-Topic: [PATCH] drm/i915: check to see if SIMD registers are available
 before using SIMD
Thread-Index: AQHWH6U0cN7TmxB4q0iIXnE8CfKG+KiTGDPQ
Date: Fri, 1 May 2020 11:34:26 +0000
Message-ID: <21391cdac137449ab82c1fb5444eeb66@AcuMS.aculab.com>
References: <20200430221016.3866-1-Jason@zx2c4.com>
 <20200501104215.s2eftchxm66lmbvj@linutronix.de>
In-Reply-To: <20200501104215.s2eftchxm66lmbvj@linutronix.de>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: check to see if SIMD registers
 are available before using SIMD
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sebastian Andrzej Siewior
> Sent: 01 May 2020 11:42
> On 2020-04-30 16:10:16 [-0600], Jason A. Donenfeld wrote:
> > Sometimes it's not okay to use SIMD registers, the conditions for which
> > have changed subtly from kernel release to kernel release. Usually the
> > pattern is to check for may_use_simd() and then fallback to using
> > something slower in the unlikely case SIMD registers aren't available.
> > So, this patch fixes up i915's accelerated memcpy routines to fallback
> > to boring memcpy if may_use_simd() is false.
> 
> That would indicate that these functions are used from IRQ/softirq which
> break otherwise if the kernel is also using the registers. The crypto
> code uses it for that purpose.
> 
> So
>    Reviewed-by: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
> 
> May I ask how large the memcpy can be? I'm asking in case it is large
> and an explicit rescheduling point might be needed.

It is also quite likely that a 'rep movs' copy will be at least just as
fast on modern hardware.

Clearly if you are copying to/from PCIe memory you need the largest
resisters possible - but I think the graphics buffers are mapped cached?
(Otherwise I wouldn't see 3ms 'spins' while it invalidates the
entire screen buffer cache.)

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
