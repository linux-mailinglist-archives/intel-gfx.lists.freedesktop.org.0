Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C46143E9B
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jan 2020 14:50:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEE916ED03;
	Tue, 21 Jan 2020 13:50:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 934D56ED03
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jan 2020 13:50:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19958746-1500050 for multiple; Tue, 21 Jan 2020 13:50:40 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200118105217.3484773-1-chris@chris-wilson.co.uk>
 <87lfq0q5zd.fsf@gaia.fi.intel.com>
In-Reply-To: <87lfq0q5zd.fsf@gaia.fi.intel.com>
Message-ID: <157961463891.4434.14485421708219131239@skylake-alporthouse-com>
Date: Tue, 21 Jan 2020 13:50:38 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Clear the whole first page of
 LRC on gen9
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

Quoting Mika Kuoppala (2020-01-21 13:44:22)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Try clearing the whole first page of the LRC on gen9, just in case HW
> 
> First page of LRC is a bit misleading as this is first page of
> LRC registers and techincally first page of LRC would be hwsp?

I refer to the "Logical Ring" :)

> So,
> 
> s/LRC/LRC register state
> 
> > tries peeking at the poisoned data.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_lrc.c | 16 ++++++++--------
> >  1 file changed, 8 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index 2d6b41e66b16..bf0c5a998428 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -549,7 +549,7 @@ static void set_offsets(u32 *regs,
> >       }
> >  
> >       if (clear) {
> > -             u8 count = *++data;
> > +             unsigned int count = *++data * 16u;
> 
> Nitpick: const 
> 
> >  
> >               /* Clear past the tail for HW access */
> >               GEM_BUG_ON(dword_in_page(regs) > count);
> 
> You might want to add also check that you dont write past page.
> As this seems to be always confined inside a page.
> 
> No other complaints, and above are minor so
> 
> Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

It didn't stop gen9 from eating the poison, so something else is afoot.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
