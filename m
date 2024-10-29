Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E318B9B43F6
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 09:15:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87C7910E5CD;
	Tue, 29 Oct 2024 08:15:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; secure) header.d=linutronix.de header.i=@linutronix.de header.b="YR7pEPrM";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="5TwJJjYX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2637210E5CD
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 08:15:42 +0000 (UTC)
From: Thomas Gleixner <tglx@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1730189739;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3Chz53onyGXnawZI5oBTcPsbWgh0zf5233Unf5kXlAA=;
 b=YR7pEPrMrq9xxPt4AEXfGfH7PjFFDgHaddQCyg3umOtctRdxr/RJusiR3HJNLhdWYmwlpC
 1dXpiUxTrNDDh/wAqI28ZlZwgGyb56/IhifAt/S1E8iqkdP0Yf67mBxkENUkai3IvycNvM
 HFnMFF8dkrKng8/c/GtGN44dhCxlWCR/mXahIULhhcJ2p4VhhAAsEw9ivz9yOhN0vfDg1h
 8W3ZFGz4KmaPkgKtODJIhmI54jclHV86JzicPBea3yvA7RHyqdaBRa3d7puHawKimhPRF2
 LbFvka68yScaAOQ9hvWQ8oIAXxvKmSb4V1jgM5Qtr4lnitp6UALQLui7dg8J/A==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1730189739;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=3Chz53onyGXnawZI5oBTcPsbWgh0zf5233Unf5kXlAA=;
 b=5TwJJjYXsMYAwUAKrtmNB4n9EdPqWwgSXXJ5MxTar3zSew9N1IuO1xAxTXH61PCr6Ch5wN
 fG1/dMVvZ1CC4hBQ==
To: Sean Christopherson <seanjc@google.com>, Nam Cao <namcao@linutronix.de>
Cc: Anna-Maria Behnsen <anna-maria@linutronix.de>, Frederic Weisbecker
 <frederic@kernel.org>, Andreas Hindborg <a.hindborg@kernel.org>, Alice
 Ryhl <aliceryhl@google.com>, Miguel Ojeda <ojeda@kernel.org>, Kees Cook
 <kees@kernel.org>, linux-kernel@vger.kernel.org, Jani Nikula
 <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org, Paolo
 Bonzini <pbonzini@redhat.com>, x86@kernel.org, Jakub Kicinski
 <kuba@kernel.org>, Oliver Hartkopp <socketcan@hartkopp.net>, Kalle Valo
 <kvalo@kernel.org>, Jens Axboe <axboe@kernel.dk>, Christian Brauner
 <brauner@kernel.org>, Peter Zijlstra <peterz@infradead.org>, John Stultz
 <jstultz@google.com>
Subject: Re: [PATCH 00/21] hrtimers: Switch to new hrtimer interface
 functions (1/5)
In-Reply-To: <Zx-2VV9rRnHOgtvG@google.com>
References: <cover.1729864615.git.namcao@linutronix.de>
 <Zx-2VV9rRnHOgtvG@google.com>
Date: Tue, 29 Oct 2024 09:15:39 +0100
Message-ID: <875xpb2ul0.ffs@tglx>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, Oct 28 2024 at 09:05, Sean Christopherson wrote:
> On Mon, Oct 28, 2024, Nam Cao wrote:
>> This is the first part of a 5-part series (split for convenience). All 5
>> parts are:
>> 
>> Part 1: https://lore.kernel.org/lkml/cover.1729864615.git.namcao@linutronix.de
>> Part 2: https://lore.kernel.org/lkml/cover.1729864823.git.namcao@linutronix.de
>> Part 3: https://lore.kernel.org/lkml/cover.1729865232.git.namcao@linutronix.de
>> Part 4: https://lore.kernel.org/lkml/cover.1729865485.git.namcao@linutronix.de
>> Part 5: https://lore.kernel.org/lkml/cover.1729865740.git.namcao@linutronix.de
>
> How do y'all anticipate landing these patches?  Is the plan/desire to get acks
> from subsystems?  Land the new helpers and then let subsystems grab their relevant
> patches?  Option C?

Ideally I can just collect acks and route them through my tree. Last
time we did this helper first and subsystems grab it took ages and lots
of chasing to get it done.

Thanks,

        tglx
