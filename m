Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E684AE22E
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 20:23:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7809310E135;
	Tue,  8 Feb 2022 19:23:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87AC410E135
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 19:23:02 +0000 (UTC)
Received: by mail-lf1-f49.google.com with SMTP id b9so35205340lfq.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Feb 2022 11:23:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9sSfgT86JcKQPWiMNvf5KHjTqBzNxqi7RBJOXA+G3TE=;
 b=Kl825i1G+fjQDVn3mD80faz07L87bt9ChtgXMW6YwvtKgzu7lOdG0T6uyritKf64Wq
 pwF7LlJHhw5ChO2vTQ01ksYWDmZxeY/n2hZGi5Mgdx3aFSegM8Ihk3VNu43/fhSSrlM2
 3IB+LVEEzqvd6eDyIeEM6uzioBIvE3kbyq+D0pgYTdBUgaAu3FV7/bTd4kkH2Sfbkfhw
 qxlLPx8s/uOrOVZOBY2wEQDQ4I0wFvHpHQQHujpkBZI7tbPPW51CX4yGGSwoa5Ipn+XN
 25Z6HJQkiRK9TVhqPDecJ3UZGwou/QDd7LKvPHgnmZG3n4PwtWupf+d0zMe/qur97pcP
 2qhw==
X-Gm-Message-State: AOAM533/85al9etoGU4rmcF9ETM0LChh9XVbu+8hT3YYkN83xUY/ZBTa
 bNd83I4fKSnDWjtcSOy89vlLnkVz8OjBjlu+ho0=
X-Google-Smtp-Source: ABdhPJxve+fxMKUvDyRcbmdBUiIcUAyvGHG3kB5ITldtDXvXawwZV+SlujecrlCMkz0uentli5h8X+/mURHHPWB1aYY=
X-Received: by 2002:ac2:46ed:: with SMTP id q13mr3857031lfo.99.1644348180690; 
 Tue, 08 Feb 2022 11:23:00 -0800 (PST)
MIME-Version: 1.0
References: <20220208184208.79303-1-namhyung@kernel.org>
 <20220208184208.79303-6-namhyung@kernel.org>
 <87y22lp4xx.fsf@intel.com>
In-Reply-To: <87y22lp4xx.fsf@intel.com>
From: Namhyung Kim <namhyung@kernel.org>
Date: Tue, 8 Feb 2022 11:22:49 -0800
Message-ID: <CAM9d7ci0By5zioo+52+14RuFrTqZfzbupJuP-908HhYB2Ovc9A@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
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
Cc: paulmck@kernel.org, intel-gfx@lists.freedesktop.org,
 Peter Zijlstra <peterz@infradead.org>, Boqun Feng <boqun.feng@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>, Steven Rostedt <rostedt@goodmis.org>,
 Radoslaw Burny <rburny@google.com>, Byungchul Park <byungchul.park@lge.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Waiman Long <longman@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Will Deacon <will@kernel.org>, Ingo Molnar <mingo@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello,

On Tue, Feb 8, 2022 at 10:51 AM Jani Nikula <jani.nikula@linux.intel.com> wrote:
>
> On Tue, 08 Feb 2022, Namhyung Kim <namhyung@kernel.org> wrote:
> > With upcoming lock tracepoints config, it'd define some of lockdep
> > functions without enabling CONFIG_LOCKDEP actually.  The existing code
> > assumes those functions will be removed by the preprocessor but it's
> > not the case anymore.  Let's protect the code with #ifdef's explicitly.
>
> I don't understand why you can't keep the no-op stubs for
> CONFIG_LOCKDEP=n.

Because I want to use the lockdep annotation for other purposes.
But the workqueue lockdep_map was defined under LOCKDEP
only.  Please see the description in the cover letter.

https://lore.kernel.org/all/20220208184208.79303-1-namhyung@kernel.org/

Thanks,
Namhyung
