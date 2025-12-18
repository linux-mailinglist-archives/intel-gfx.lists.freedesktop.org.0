Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE5ECCA59B
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Dec 2025 06:39:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6705510E5D9;
	Thu, 18 Dec 2025 05:39:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TDsoiJ0A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com
 [209.85.210.179])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4257210E5D9
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Dec 2025 05:39:08 +0000 (UTC)
Received: by mail-pf1-f179.google.com with SMTP id
 d2e1a72fcca58-7b8e49d8b35so356933b3a.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Dec 2025 21:39:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1766036348; x=1766641148; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=yaGJpOKqg8zQltJlD/AWg9VGkTrfZMf+YGQyTVj+MTg=;
 b=TDsoiJ0A2A/hXYPf1U4xBct6TRx+VW29wTt7Mx8x1RxN+h61bFky3ncaXgIKQ3qN7D
 XbDfaGcv5EigNNlb751AN0I/4iqwFCPSgn8OkUiysEqEOMs/m7nRKgyUmUhIxDKjeiOV
 ncMt+HH4IgdoVWvgLrxMLbfHe6l+eeo7sVpqzLViEkRBqmXK3hT2IzExeLdhqm2ov8Bl
 4is/hTxYisGbrKAMIi6MyVZUQb/I0CIg80z8CIVELB1KJoq2HW9rNag41ussiQVsvLmt
 BXt9U9EuTvk3cCSdMhexc7zbXE3By+9TDR+g/rvHlbC3fLboMP9frGYVT5TrQL9gTsja
 nuSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766036348; x=1766641148;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=yaGJpOKqg8zQltJlD/AWg9VGkTrfZMf+YGQyTVj+MTg=;
 b=jhIO0OwCiptIYn1+u8hMvHFSSIF63MRtIGEPo7jlCp+VDhBFBGb/uAKklDYY+Gij/n
 6gwbn9ovF2bbqFxIVjUz8vfqeiGVneAYRoMStRCkxLjq5xsr+aKYXFi3OyRtDE5Yag7B
 qVtmG+ONA4yomPCKnu+bRoFDtRN8pVhamT+QsRcBq/kBIm2H3ZVvuYCG5Jq4/TzmnHWg
 c0Lx0wB1YaFMYI/nQ4VYoQdtXFJW7KYEwtRXYGv6tzx1D5+R3nLfKlgJFfXfF53c/Mas
 Okh9TpJNMcjIJ1besa/CNn2c9FXC6EqB4dG1xcgJu9zOxOdGPp62e0KWdbWMolJdMUVY
 AqbA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUdPXpox3RIH/HSlI5HKqEJB6cNvQP1TO/F4k/36Ons+rqKJt6XonyynWKpOmoBIOgcxyrZRadDkUo=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyadFihaTlfs+Ew9IPM9XcTpi+IZCKhrOoNazwvEz+f67xEFZrH
 rnvOTyXax9jX8Ycfz7pB84rhdbQi6jDQoDPri/rr3sdEgBDDKJQdQ+1aS2KE3g==
X-Gm-Gg: AY/fxX4B5uihwlhECW1Gwqh4OzqxTvBGwcZFJQvUpBiFBpAIXWdZjS9uvRA0GxJ6tpK
 k7KYAgbt8c+F4kyLpPTXDRKt61hwOJsml5MD7B/LohIC6ETPccHX/mrFHKq/06n5tR828n5d6kR
 ktgsS0ItNPKgnCQjpuc4OP1gwXlj8fbFE2oNjP1gLxmDPha4P+2C3LKaZJdsrSGGk5xJAMan2UW
 hTgHH9aBX5xo3kUMqny0G7Bxww7OLw2+3ASdpLZJUTy1j9PA/KFjINjX0vnq6uY7A5eJx7JXR/D
 SGQXTWtoSS0dU4wXD2Vmr80NEgIpSuTQIMXLm2mr6i5RcfxPy/0k/1+ykNvBAhkynvTsXmYgJyy
 drOoTRIVu4KHFVCuh4e6DNcbjnwmjErAqCDRvETgYdWA7Q8yj/0fm5+KfhrxsRCNsFBZgSpWLUy
 w5oRBAFX0mKzlJuT+kiA==
X-Google-Smtp-Source: AGHT+IHIeJZ6pUO0IWI3BZr8YKRR4WYcObEmm4ye3CL4DoHkOxJXpQslAZeBIjOMe9+OleYRLYL1Lg==
X-Received: by 2002:a53:a090:0:b0:63f:bd67:7c52 with SMTP id
 956f58d0204a3-645555e7c66mr12186194d50.29.1766030374328; 
 Wed, 17 Dec 2025 19:59:34 -0800 (PST)
Received: from localhost ([2601:346:0:79bd:52c0:aec0:bf15:a891])
 by smtp.gmail.com with ESMTPSA id
 956f58d0204a3-646636e8a2csm581612d50.4.2025.12.17.19.59.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 17 Dec 2025 19:59:33 -0800 (PST)
Date: Wed, 17 Dec 2025 22:59:33 -0500
From: Yury Norov <yury.norov@gmail.com>
To: Randy Dunlap <rdunlap@infradead.org>
Cc: Andrew Morton <akpm@linux-foundation.org>,
 Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Christophe Leroy <chleroy@kernel.org>, Ingo Molnar <mingo@kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 David Laight <david.laight@runbox.com>, Petr Pavlu <petr.pavlu@suse.com>,
 Andi Shyti <andi.shyti@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Daniel Gomez <da.gomez@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Danilo Krummrich <dakr@kernel.org>, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-modules@vger.kernel.org, linux-trace-kernel@vger.kernel.org,
 Kees Cook <kees@kernel.org>
Subject: Re: [PATCH v3 4/4] tracing: move tracing declarations from kernel.h
 to a dedicated header
Message-ID: <aUN8Hm377C5A0ILX@yury>
References: <20251205175237.242022-1-yury.norov@gmail.com>
 <20251205175237.242022-5-yury.norov@gmail.com>
 <20251216161316.45b3f19ff0ad482018137189@linux-foundation.org>
 <55ceb7bf-0fe9-4edc-81c2-d51366847eec@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55ceb7bf-0fe9-4edc-81c2-d51366847eec@infradead.org>
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

On Tue, Dec 16, 2025 at 09:24:55PM -0800, Randy Dunlap wrote:
> [adding Kees]
> 
> On 12/16/25 4:13 PM, Andrew Morton wrote:
> > On Fri,  5 Dec 2025 12:52:35 -0500 "Yury Norov (NVIDIA)" <yury.norov@gmail.com> wrote:
> > 
> >> Tracing is a half of the kernel.h in terms of LOCs, although it's
> >> a self-consistent part. It is intended for quick debugging purposes
> >> and isn't used by the normal tracing utilities.
> >>
> >> Move it to a separate header. If someone needs to just throw a
> >> trace_printk() in their driver, they will not have to pull all
> >> the heavy tracing machinery.
> >>
> >> This is a pure move, except for removing a few 'extern's.
> >>
> 
> Hm, for a pure move, this shouldn't be necessary. Anyway, not using
> FORTIFY in purgatory.o fixes this build error.
> Or maybe there's a better answer.
> 
> ---
>  arch/x86/purgatory/Makefile |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> --- a/arch/x86/purgatory/Makefile
> +++ b/arch/x86/purgatory/Makefile
> @@ -62,7 +62,7 @@ PURGATORY_CFLAGS_REMOVE		+= $(CC_FLAGS_C
>  endif
>  
>  CFLAGS_REMOVE_purgatory.o	+= $(PURGATORY_CFLAGS_REMOVE)
> -CFLAGS_purgatory.o		+= $(PURGATORY_CFLAGS)
> +CFLAGS_purgatory.o		+= $(PURGATORY_CFLAGS) -D__NO_FORTIFY
>  
>  CFLAGS_REMOVE_sha256.o		+= $(PURGATORY_CFLAGS_REMOVE)
>  CFLAGS_sha256.o			+= $(PURGATORY_CFLAGS)

That happened because the new trace_printk.h includes string.h for
strlen(), so all kernel.h users now indirectly include it, and it
causes, seemingly, a circular dependency if FORTIFY is enabled.

A fix would be dropping trace_printk.h from kernel.h, or switching the
only user of string.h, trace_puts(), to __builtin_strlen().

Notice, Andy has concerned about this on the previous round, and also
suggested __builtin_strlen():

        https://lkml.org/lkml/2025/12/3/910

I deem to drop trace_printk.h from kernel.h - it is more aligned with
the idea of unloading the header. The original motivation to keep
trace_printk.h in kernel.h was just because a similar printk.h is living
there. But after all, this is a purely debugging header, so no need for
almost every C file to bear debugging stuff.

I can actually do both - switch to an intrinsic and drop the header.

Guys, please let me know what do you thing.

Thanks,
Yury
