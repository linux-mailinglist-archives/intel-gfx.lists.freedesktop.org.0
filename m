Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7157B65F126
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jan 2023 17:30:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EADDC10E75E;
	Thu,  5 Jan 2023 16:29:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com
 [IPv6:2a00:1450:4864:20::430])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E3C010E75C
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Jan 2023 16:29:55 +0000 (UTC)
Received: by mail-wr1-x430.google.com with SMTP id bn26so17198859wrb.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Jan 2023 08:29:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:mail-followup-to:message-id:subject:cc:to
 :from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=hriix7PNjl3Fx5Lwj5vGvmpV6J+F4oqIBHmzWDNV1zY=;
 b=Xkf28zaruVrLmqa0GfGmuAvqQQX+dB8u4vBIZu3Zqzswl7V0McjDKsYjGqvgAnDPVt
 JAfXVw2P8vm4NtD5ER0v9cpo5fq34lBw+gZ7lyOmQSBDrvgtT42XqrYiXIz43PC1aoqp
 dm4offnZy34FIeCS0B3FEa0zUz3dEn5dYFCKk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:mail-followup-to:message-id:subject:cc:to
 :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=hriix7PNjl3Fx5Lwj5vGvmpV6J+F4oqIBHmzWDNV1zY=;
 b=eCdngyIVas2uRcMI21Xxr9/jeYBxxjDR8yez8hICiwVlwXX4FwwoNLbEmLcdHWyRog
 8coMQHDl5gbslP3J0Xc8wWE2+lAJxtCT3HHgtxfF+3hjmBDzHEQ52NXthD6RBLENjqqp
 db79N4yQKZ6/rKT8/I5n6f03N0kmkPGQcVOzV9pTTX5+W13Nq1/sm8L1BDrl8O1EdeJ5
 OOtB1kmI5WLoWkEKD4DCnyAJORVTCsAeRHdikFXj0GpIJLR3Nn23BqR3rW+PjB1Tn9v9
 2aX/NAkz5vspn3UdC7QR2a0O5mB7DBTz6iCy9b6le1gSo8ihd8drOkfArn/aRQqJ/Pnt
 fT9A==
X-Gm-Message-State: AFqh2kqqr6ZzDClxIEk1Uxanf477kdqL51mmQenhulPOCi1tVEHyDDOn
 3/zMcZVccxR8kQSH/ITYVWp30A==
X-Google-Smtp-Source: AMrXdXvytt3BictUpSrNMsVMjqYxBg9ULQXEcgl2Nkqae4pxiPmHRRghamOTQFr1zyRYajkEyGj8ag==
X-Received: by 2002:adf:f9cb:0:b0:285:d0ba:92e2 with SMTP id
 w11-20020adff9cb000000b00285d0ba92e2mr22521193wrr.47.1672936194547; 
 Thu, 05 Jan 2023 08:29:54 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 x15-20020a5d490f000000b00236883f2f5csm36488463wrq.94.2023.01.05.08.29.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Jan 2023 08:29:53 -0800 (PST)
Date: Thu, 5 Jan 2023 17:29:51 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y7b6/7coJEVlTVxK@phenom.ffwll.local>
Mail-Followup-To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Mark Rutland <mark.rutland@arm.com>, linux-m68k@vger.kernel.org,
 linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>,
 dri-devel@lists.freedesktop.org, linux-mips@vger.kernel.org,
 sparclinux@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-s390@vger.kernel.org, linux-hexagon@vger.kernel.org,
 linux-snps-arc@lists.infradead.org,
 Boqun Feng <boqun.feng@gmail.com>, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, intel-gfx@lists.freedesktop.org,
 openrisc@lists.librecores.org, loongarch@lists.linux.dev,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-alpha@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org
References: <20221222114635.1251934-1-andrzej.hajda@intel.com>
 <20221222092147.d2bb177c67870884f2e59a9b@linux-foundation.org>
 <6e727952-3ad0-fcc3-82f1-c465dcffd56f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6e727952-3ad0-fcc3-82f1-c465dcffd56f@intel.com>
X-Operating-System: Linux phenom 5.19.0-2-amd64 
Subject: Re: [Intel-gfx] [PATCH 00/19] Introduce __xchg, non-atomic xchg
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-m68k@vger.kernel.org,
 linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-s390@vger.kernel.org,
 linux-hexagon@vger.kernel.org, linux-snps-arc@lists.infradead.org,
 intel-gfx@lists.freedesktop.org, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, Boqun Feng <boqun.feng@gmail.com>,
 openrisc@lists.librecores.org, loongarch@lists.linux.dev,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-alpha@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 29, 2022 at 10:54:50AM +0100, Andrzej Hajda wrote:
> Forgive me late response - Holidays,
> 
> On 22.12.2022 18:21, Andrew Morton wrote:
> > On Thu, 22 Dec 2022 12:46:16 +0100 Andrzej Hajda <andrzej.hajda@intel.com> wrote:
> > 
> > > Hi all,
> > > 
> > > I hope there will be place for such tiny helper in kernel.
> > > Quick cocci analyze shows there is probably few thousands places
> > > where it could be useful.
> > So to clarify, the intent here is a simple readability cleanup for
> > existing open-coded exchange operations.
> 
> And replace private helpers with common one, see the last patch - the
> ultimate goal
> would be to replace all occurrences of fetch_and_zero with __xchg.
> 
> > The intent is *not* to
> > identify existing xchg() sites which are unnecessarily atomic and to
> > optimize them by using the non-atomic version.
> > 
> > Have you considered the latter?
> 
> If you mean some way of (semi-)automatic detection of such cases, then no.
> Anyway this could be quite interesting challenge.

My take is that unless there is very clear demand for this macro from
outside of i915, it's not worth it. All that fetch_and_zero zero achieved
is make i915 code a lot more confusing to read for people who don't know
this thing. And it replaces 2 entirely standard lines of 0, every often
clearing pointers in data structures where you really want the verbosity
to have a reminder and thinking about the locking.

Plus it smells way too much like the cmpxchg family of atomic functions,
addig further to the locking confuion.

Imo the right approach is to just open code this macro in i915 and then
drop it. Again, unless enough people outside of i915 really really want
this, and want to lift this to a kernel idiom.
-Daniel

> 
> > 
> > > I am not sure who is good person to review/ack such patches,
> > I can take 'em.
> > 
> > > so I've used my intuition to construct to/cc lists, sorry for mistakes.
> > > This is the 2nd approach of the same idea, with comments addressed[0].
> > > 
> > > The helper is tiny and there are advices we can leave without it, so
> > > I want to present few arguments why it would be good to have it:
> > > 
> > > 1. Code readability/simplification/number of lines:
> > > 
> > > Real example from drivers/net/ethernet/mellanox/mlx5/core/esw/qos.c:
> > > -       previous_min_rate = evport->qos.min_rate;
> > > -       evport->qos.min_rate = min_rate;
> > > +       previous_min_rate = __xchg(evport->qos.min_rate, min_rate);
> > > 
> > > For sure the code is more compact, and IMHO more readable.
> > > 
> > > 2. Presence of similar helpers in other somehow related languages/libs:
> > > 
> > > a) Rust[1]: 'replace' from std::mem module, there is also 'take'
> > >      helper (__xchg(&x, 0)), which is the same as private helper in
> > >      i915 - fetch_and_zero, see latest patch.
> > > b) C++ [2]: 'exchange' from utility header.
> > > 
> > > If the idea is OK there are still 2 qestions to answer:
> > > 
> > > 1. Name of the helper, __xchg follows kernel conventions,
> > >      but for me Rust names are also OK.
> > I like replace(), or, shockingly, exchange().
> > 
> > But...   Can we simply make swap() return the previous value?
> > 
> > 	previous_min_rate = swap(&evport->qos.min_rate, min_rate);
> 
> As Alexander already pointed out, swap requires 'references' to two
> variables,
> in contrast to xchg which requires reference to variable and value.
> So we cannot use swap for cases:
>     old_value = __xchg(&x, new_value);
> 
> Regards
> Andrzej
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
