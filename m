Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EA00CF5298
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 19:07:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E412610E3BC;
	Mon,  5 Jan 2026 18:07:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Le2Cfzn8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com
 [209.85.128.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4027710E3DA
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jan 2026 18:07:34 +0000 (UTC)
Received: by mail-yw1-f171.google.com with SMTP id
 00721157ae682-78fc7893c93so2621667b3.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 05 Jan 2026 10:07:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1767636453; x=1768241253; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=A5/uW9/0KwBsgtvUptXheatwXpOA/HjQmX9wHy8TmRk=;
 b=Le2Cfzn8IpkxF7IGMkDnTPDFg1yO4XqI3NfEvTN3l+b1SRiPR2JC6HsRK6wr2n5KfS
 vfCtPvhb6NP6IF6nJyx8FR8t8P4ezJg+80S2LS+kGuzf983arWOyJ40aRaHCcdNWG9ia
 I6VqyJEwnPMaUyhC5FBkE3k1XkLMkUOL3qv4Ji2rquXKT1ceuXZONMPNyBWzEiTYwFTx
 AmFMR1RS7IB2aYSYWqcsliNBl6a2LykEpto0cyNIL7uo0e+TPup8z9XTmqbcggOW2Ttb
 OXUM+ZoGuMTEdxT+ZY5p9hiAmnv34k/AUQdNIdoBaOgjLa0MF/HrKZADcpXlIwqowb3A
 /ZPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1767636453; x=1768241253;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=A5/uW9/0KwBsgtvUptXheatwXpOA/HjQmX9wHy8TmRk=;
 b=GXTf0qP/RwTKsHEJaiHlHRTcUWpPG9vUa1T1CH3NZ+1tGSb5T43Clcumf5DfXL0fbd
 9k34SD6LsHKE7YAguDaABqSE4wGSwj8LGOC4+a0m+TZZJbE/om+7qrEX4wH2ka8wV/dk
 UCq/a1ivFSnFbNtY+aHKtF1TB23llG95Zcp5v8s/pVVagH2/ktDLtaRfn//7rvs3P8kF
 ebh9jk6mvup7xMIkH5RikeWAwZgO/XxdJQfvLIIkSbk6fkhIQZA+8pLNUdN6iwnuACbc
 HYa85B8sTQ9WNa1PGFfiVPiB5eYhd2qcufgDd0jpUgUb3mrBU4mV/mElIpFLrtYFFXAO
 QzPQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUSD/EPDA+MEriuQOsJZQ+6n1UcvKUyvxCRRiPNaWvgSqnbX3sNPp4JdzJ5+ghezqX0T2Bcni91PBM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzDwtZRYbE0KQhnbsIlKlAHVQ/2II3dbdndNflWw0msKv5EBSj2
 MlP6m0k1VJPgOMBowGyEcgIzHJGETgk6CYhsmoc5628nJ+xGq7buvixk
X-Gm-Gg: AY/fxX6L4lZpGtoE1Kb+K/EeyUPOn4iJ+d1pUXyRfkNj0PA5AJcb7UHOfGTbhTrbt1S
 NTBni0j9SUZl7eeTHrzfPFGUKTJEoaK0GX6XhXjdEOHGXsyCwl0/clg6xn3aurIKg3hE0E3NgV1
 Er8yx6XrmdijwnciIf5zfAyAVY9oNbqLYbcapjiU7nwbABxeZU4d6MheU5UFltEie9pQkNC7BiX
 b3dXBLajuWqxNPhd0Nr4OzgyEXvfvKKEDhM5lfEVG3Wly5a4jUfaHfNbtUApxwhFAdFj7bTN4JI
 XSRvvSBE23CSACVzb862SUm0aXS/U9ls6MxKMO1L+0Qbo7cptxPmPJNKaq5Q681s7KIyCRFNXUn
 KvSDs1hmm+Z3ZB+nKfIonaBXlW9pdXaE9xwy8+a+2/v4HsAMpfUXbZe1gapw6ww7pqmIIavVedG
 Rhoq3iz5Q=
X-Google-Smtp-Source: AGHT+IESx6I8tg0gbPIh4EuMQXlx4iATZY/+u860W1pgMc/DuCthIaOeJmHqd9Ob5cc2d8ol9SaLZQ==
X-Received: by 2002:a05:690c:30f:b0:78d:6a71:76c5 with SMTP id
 00721157ae682-790a8a8fd73mr3709847b3.10.1767636452758; 
 Mon, 05 Jan 2026 10:07:32 -0800 (PST)
Received: from localhost ([2601:346:0:79bd:830c:9f83:df41:3e7d])
 by smtp.gmail.com with ESMTPSA id
 00721157ae682-790a87e1895sm1457087b3.18.2026.01.05.10.07.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Jan 2026 10:07:32 -0800 (PST)
Date: Mon, 5 Jan 2026 13:07:31 -0500
From: Yury Norov <yury.norov@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Steven Rostedt <rostedt@goodmis.org>,
 Joel Fernandes <joelagnelf@nvidia.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Christophe Leroy <chleroy@kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>, Ingo Molnar <mingo@kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 David Laight <david.laight@runbox.com>, Petr Pavlu <petr.pavlu@suse.com>,
 Andi Shyti <andi.shyti@kernel.org>, Vivi Rodrigo <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Daniel Gomez <da.gomez@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Danilo Krummrich <dakr@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-modules@vger.kernel.org" <linux-modules@vger.kernel.org>,
 "linux-trace-kernel@vger.kernel.org" <linux-trace-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 7/7] kernel.h: drop trace_printk.h
Message-ID: <aVv946dXQfOifz5O@yury>
References: <20251225170930.1151781-8-yury.norov@gmail.com>
 <20251226115848.298465d4@gandalf.local.home>
 <20251228133150.1d5731d04bc1b685b0fe81c1@linux-foundation.org>
 <20251229111748.3ba66311@gandalf.local.home>
 <20260103005059.GA11015@joelbox2>
 <aVkSVk2L6VH9MYGz@smile.fi.intel.com>
 <937926D0-00DC-499B-9FD8-D921C903882D@nvidia.com>
 <aVmyZ0iXzTkNU86y@smile.fi.intel.com>
 <20260105113902.6bdfcfa8@gandalf.local.home>
 <aVv8vwtGFhssitxG@smile.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aVv8vwtGFhssitxG@smile.fi.intel.com>
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

On Mon, Jan 05, 2026 at 08:02:39PM +0200, Andy Shevchenko wrote:
> On Mon, Jan 05, 2026 at 11:39:02AM -0500, Steven Rostedt wrote:
> > On Sun, 4 Jan 2026 02:20:55 +0200
> > Andy Shevchenko <andriy.shevchenko@linux.intel.com> wrote:
> > 
> > > > I do not think it is necessary to move it.  
> > > 
> > > I'm not talking about move, I'm talking about the C 101 thingy. Any custom API
> > > should be included before use, otherwise compiler won't see it. Which header do
> > > you want to include to have this API being provided? Note, it's really bad
> > > situation right now with the header to be included implicitly via non-obvious
> > > or obscure path. The discussion moved as far as I see it towards the finding a
> > > good place for the trace_printk.h.
> > 
> > It's not a normal API. It's for debugging the kernel. Thus it should be
> > available everywhere without having to add a header. Hence, the best place
> > to include trace_printk.h, is in kernel.h.
> 
> With the above it sounds like you rather want to see it being included as
> kconfig.h (to every single file). But I disagree on that approach, why do
> we need this header to pollute every file even if I do not debug the thing?
> 
> But since the current state is kernel.h, the status quo is to keep it there
> for now.
> 
> > I'm thinking that my proposed config option is the best solution now. For
> > those that do not care about debugging the kernel, you enable the
> > "HIDE_TRACE_PRINTK" config so that your builds will be "quicker". But for
> > everyone else, it will not slow down their workflow when they need to debug
> > code.
> 
> Maybe, to keep a status quo.

+1

> Seems for now the compromise is to have it split and be included back to
> kernel.h and later we can decide if the option or other variants can give a
> better granularity for people who are not lazy to remember and add a header if
> they need to debug stuff.
> 
> Yury, I think in v5 you need to drop this patch, otherwise we won't move further.

Not sure we need v5 because the only change is dropping the last patch
in the series. But if you prefer - I can send v5.


