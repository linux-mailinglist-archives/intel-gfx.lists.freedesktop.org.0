Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8E979B8EA7
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2024 11:08:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16DED10E96A;
	Fri,  1 Nov 2024 10:08:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="QkxjHHWw";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="P2Pk2/hy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1FFDB10E8AF
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 14:36:19 +0000 (UTC)
Date: Thu, 31 Oct 2024 15:36:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1730385377;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=zFWtjZRQTdWduLAor0O9LykkVJ5XjmX1JLbKlMKlkpk=;
 b=QkxjHHWwmKJ1qdobe4I2Y+atw8qx+ISgFF1tjNZwtDSp0ORfysW1Jcz5dp7zR6Js79bRy0
 i226xrqs413mzDeBgw1jRomNbeGJzDtZ7nBO8IhD3ecS8/pVOatosqp4tnkxCAtEL79Rzw
 AOwBVAxC7aT6UbutjROR9VsFXnKPNja80g5Bbudr1qkS/7EXziQvg4/kUep7ghULm/MhJq
 CPy4J2UlWVH4QqRN7yanD/6ZWYAmHUF0rieqmdbhcgHGxoEUG6WmEKhoEtF+ZlJZVuiams
 KVYeGXjlzGMc6rW3IS9kkkUjYwTDunfgJIxnWdO+pv5552kLTu4iVR2YXuJ/EQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1730385377;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=zFWtjZRQTdWduLAor0O9LykkVJ5XjmX1JLbKlMKlkpk=;
 b=P2Pk2/hy3uejlXJUrAHf0UJ4GdC6Jir4eJmEy04sEuesJqD6RKJD3sEgNSp8aqGq+J/BLQ
 +Y3OU1IHoExp3wDQ==
From: Nam Cao <namcao@linutronix.de>
To: Anna-Maria Behnsen <anna-maria@linutronix.de>,
 Frederic Weisbecker <frederic@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andreas Hindborg <a.hindborg@kernel.org>,
 Alice Ryhl <aliceryhl@google.com>, Miguel Ojeda <ojeda@kernel.org>,
 Kees Cook <kees@kernel.org>, linux-kernel@vger.kernel.org
Cc: Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org,
 Sean Christopherson <seanjc@google.com>,
 Paolo Bonzini <pbonzini@redhat.com>, x86@kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Kalle Valo <kvalo@kernel.org>,
 Jens Axboe <axboe@kernel.dk>, Christian Brauner <brauner@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, John Stultz <jstultz@google.com>,
 Oliver Hartkopp <socketcan@hartkopp.net>, kvm@vger.kernel.org,
 linux-wireless@vger.kernel.org
Subject: Re: [PATCH v2 00/19] hrtimers: Consolidate hrtimer initialization -
 Part 1
Message-ID: <20241031143609.bX-WHDeK@linutronix.de>
References: <20241031-hrtimer_setup_p1_v2-v2-0-23400656575a@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241031-hrtimer_setup_p1_v2-v2-0-23400656575a@linutronix.de>
X-Mailman-Approved-At: Fri, 01 Nov 2024 10:08:01 +0000
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I just learned the hard way that git-send-email doesn't work for a .mbox
file including multiple emails. Sorry for the noises, please ignore this
one. I will resend it shortly.

On Thu, Oct 31, 2024 at 03:19:21PM +0100, Nam Cao wrote:
> This is a follow up to version 1, which can be found here:
> 
>     https://lore.kernel.org/lkml/cover.1729864615.git.namcao@linutronix.de/
> 
> hrtimers must be initialized with a hrtimer_init() variant, and after that
> the timer's callback function must be setup separately.
> 
> This seperate initialization is error prone and awkward to use. The
> seperate initialization is also problematic for a clean Rust abstraction.
> 
> A combined setup function like timer_setup() is less error prone and
> simpler to use.
> 
> This first part of the conversion provides:
> 
>   - a set of hrtimer_setup*() variants, which take the function pointer as
>     argument.
> 
>   - hrtimer_update_function() which allows to change the callback function
>     after initialization with the proper safety checks in place.
> 
>   - conversion of the hrtimer_init*_on_stack() variants
> 
>   - some minor cleanups
> 
> The remaining users will be converted in follow up series.
> 
> Most conversions were done with Coccinelle. See sematic patch below.
> 
> Changes versus v1:
>   - Open code kvm_xen_init_vcpu() (Sean)
>   - Drop the can/bcm patch (Oliver)
>   - Folded the removal of hrtimer_init_sleeper() (tglx)
>   - Update change logs and cover letter
> 
> The series applies on top of:
> 
>     git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git timers/core
> 
> and is also available from git:
> 
>     git://git.kernel.org/pub/scm/linux/kernel/git/tglx/devel.git hrtimer-setup-part1-v2
> 
> Best regards,
> 
> Nam
