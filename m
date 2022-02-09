Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD344AFD5F
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 20:29:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D7A010E509;
	Wed,  9 Feb 2022 19:29:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC94810E509
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 19:29:03 +0000 (UTC)
Received: by mail-lf1-f49.google.com with SMTP id i17so6125514lfg.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 09 Feb 2022 11:29:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Z2TraJDARUY3WXKDZEaeZC1Cg5Xz36jm3AjN1xE8ZI8=;
 b=BYSKrkEL4zAX4M6ynqzxSf5vm1CjGFegcd4KfB0VGO/1E9D4dw/v49wzHi/V60Bn1Z
 xYrlo5OUQPhdkb0vW4VN7iz9CAYUM7B5xmmhgJdE+VBekq9lZZtdYaZB6PopywkfPc+m
 xZ0aKhqaan884g2IGoJ/97ifjYWC9iS2yCjhQW24SBlnGHMQ30aK7hsZfSZbDNR96to+
 JbhLW7DUPUSuiNj2AS1wVLxCaE6OTpA7bvVzWhbaML8WgMs9N6IwoKZvy2Wdrf1Z9V/l
 cWHb8PPVDHeoH6G8RqqndQ26sG9MMXp5/R6G8PIUoSiMT4toq9kFKLE3E0RpwQm6DIIh
 dZ4Q==
X-Gm-Message-State: AOAM5316ySXNTdix+zwGTyV8ep2T3ZDnAfu0egOFesZrXpkJa1wDZEZZ
 U1hPD+tI+LZjTNFMrH7hhdfnxvFv4ItZz1mDTSI=
X-Google-Smtp-Source: ABdhPJy/1yAok0JIcHZXq+aM5wvLB/AKCt1/te+VjUfFoZY67uThIQmfgtX3WoAkaMzKrx7vOFGoIXmdouYQRP+F8yw=
X-Received: by 2002:a05:6512:3996:: with SMTP id
 j22mr1899843lfu.99.1644434941866; 
 Wed, 09 Feb 2022 11:29:01 -0800 (PST)
MIME-Version: 1.0
References: <20220208184208.79303-1-namhyung@kernel.org>
 <20220208184208.79303-6-namhyung@kernel.org>
 <87y22lp4xx.fsf@intel.com>
 <CAM9d7ci0By5zioo+52+14RuFrTqZfzbupJuP-908HhYB2Ovc9A@mail.gmail.com>
 <87iltonoaa.fsf@intel.com> <20220209112703.1679e48b@gandalf.local.home>
In-Reply-To: <20220209112703.1679e48b@gandalf.local.home>
From: Namhyung Kim <namhyung@kernel.org>
Date: Wed, 9 Feb 2022 11:28:50 -0800
Message-ID: <CAM9d7cg56onNLfpUwMDDJaMpJiYpwgk=UT7jFF5rhH0U2dH-Pw@mail.gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH 05/12] drm/i915: Protect lockdep functions
 with #ifdef
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
Cc: "Paul E. McKenney" <paulmck@kernel.org>, intel-gfx@lists.freedesktop.org,
 Peter Zijlstra <peterz@infradead.org>, Boqun Feng <boqun.feng@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>, Radoslaw Burny <rburny@google.com>,
 Byungchul Park <byungchul.park@lge.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Waiman Long <longman@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello,

On Wed, Feb 9, 2022 at 8:27 AM Steven Rostedt <rostedt@goodmis.org> wrote:
>
> On Wed, 09 Feb 2022 15:49:01 +0200
> Jani Nikula <jani.nikula@linux.intel.com> wrote:
>
> > > Because I want to use the lockdep annotation for other purposes.
> > > But the workqueue lockdep_map was defined under LOCKDEP
> > > only.  Please see the description in the cover letter.
> > >
> > > https://lore.kernel.org/all/20220208184208.79303-1-namhyung@kernel.org/
> >
> > So lockdep_init_map() might still be there and build just fine for
> > CONFIG_LOCKDEP=n, but now we're actually required to wrap all call sites
> > in #ifdefs depending on the purpose? I'm not convinced yet.

Because work_struct.lockdep_map is there only if CONFIG_LOCKDEP=y.

>
> I addressed this already. I suggested to add a "raw" variant that turns to
> a nop when LOCKDEP is not enabled. That is, for those locations that are
> only for working with LOCKDEP, the call will be:
>
>         lockdep_init_map_raw()
>
> This will differentiate the locations that are for just lockdep and those
> that are for both lockdep and tracing.

Yep, this should be fine if it's actually defined on CONFIG_LOCKDEP=y.

Thanks,
Namhyung
