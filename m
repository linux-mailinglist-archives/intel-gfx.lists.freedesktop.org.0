Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 776E0CCD933
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Dec 2025 21:52:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D325E10E440;
	Thu, 18 Dec 2025 20:52:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="FJW0QYje";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com
 [209.85.128.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0D7510E23A
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Dec 2025 20:52:20 +0000 (UTC)
Received: by mail-yw1-f171.google.com with SMTP id
 00721157ae682-78d6a3c3b77so22180817b3.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Dec 2025 12:52:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1766091140; x=1766695940; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=hFDV1spVh/axh1lyx/WAElGBcEI9dw5Gpw/DvU/t3OY=;
 b=FJW0QYje41VC/tGfeAVx0UWuT8LbA7RlKtXtB3Ht84R/gTCDI9/oyTRQW29yYX9VPu
 HED6F+xv8+BwLqxJhZu4q/0ERiRPDLTWoz+/zTramezQF9dNtqigMtaoSVVGE+fm6uK9
 9mqQkJD7k0q/ovoiplsWNbc+VmWh3pNA4Kl2WZ+SNWM0cWmpCbrwxzsMxTYyjOR5t0HX
 uEXA4YC4zrgVJ3xG7lqr53Zm+bnONF/3SLxP86YUZDj6/cAZ826P/5NU25SWUIJd6lX9
 11CdT2qNogl8hUOtpwIO0eFKWtlarZv9oftFZ3INM6xfvd+1yIthXiIO+lB40CCSEx/q
 Udaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766091140; x=1766695940;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=hFDV1spVh/axh1lyx/WAElGBcEI9dw5Gpw/DvU/t3OY=;
 b=o0VrpUn4e+5uSwP1TOiRSdQrULTsiWDifbKF2FnXcDmoxviImEVcYLPdPC+tRt5Kh4
 cGKx6PB1v0ZGXkulWYpozDmYXUsAYCc2dsx2usk7RZUCqYM/mJJbiW8nIopKr2BHYZB4
 IAqZ5Gnp6hTJlYmyOMOLTgpson9ml9MqdE0SIzxEpiYGz3QQL10G9WofWMdeYrofrDrx
 qCHQu8e1AKMA9WA4C8rxJEToSisneQPDgiGw+V+6ZDp1uMX6l12NQFJAv5G4gEGMmSQJ
 zoBAJJ6Weo/bCg67GP8I3/LMaDn5SVnR5WvJbpURXN8+/YRtCD9rNx759V521Ylwp8dC
 pFvA==
X-Forwarded-Encrypted: i=1;
 AJvYcCXx79ncv6K4ISW1H1N064zuga53f1eKhA7+YbW+dZVPwG+G2x1Earw7365i3fl7+RDZlXgN95kT13I=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzlCJEfhjLxkB7csJJR7D6rdCj6yGg0oqaen8TkJEBKNGueHxOl
 o4o0bfzuF0eE3/JbX6jqaglt8SKdNClVL72yBQv7e3lcb+YtiTSmRZct
X-Gm-Gg: AY/fxX44gagQY8RT6REhe+dBQ+BgGpRZ306bcUdVfWHjnDpHVREd4EM8aADKu3E8I7g
 J+guGK8Y5wJpI6zuiECg2+0oYE/49p8RQKxxeEgX1nQTILzNbh3O3++7Lfss8F7aRGx2EHdC5p7
 VvD6SP/+dkWkS147BNQb3SeJ6w2rynwiMg08OCARq7iDRGxBjEOrtuUW2hYXqrnOuboI4Ht3/Y/
 clgmlEkOLNcQiQBcAYyWQaGqusNGkiAPVbj7cnuuUvLUgNX2ITe3Y0Tdm2N2vKb/VUNKF7Oaani
 5C7tOayU91WFfsRmqHRkwH2NONiBaoC1gwsca/vu9D1PnyNL5Sjb0MWoGlRPssrr+UlRZjf5jb2
 wj5LFJAtNoQBSEobAART9UBUdoUPSoASoHXrBb1RelS6QvaW7qbFy4v33un6/rFt9D9VVQn4M5Q
 IqQ48k2A==
X-Google-Smtp-Source: AGHT+IFKJgg2mFtYeRpAZPfX2mtS+pdy3ddv+t7myY/XFxqvRRKbskRVQyl2Y5hOxjA0iZJLraQFNQ==
X-Received: by 2002:a05:690e:1248:b0:644:5166:3065 with SMTP id
 956f58d0204a3-64669d87d09mr709918d50.21.1766091139724; 
 Thu, 18 Dec 2025 12:52:19 -0800 (PST)
Received: from localhost ([2601:346:0:79bd:c44b:debe:992d:e6a])
 by smtp.gmail.com with ESMTPSA id
 00721157ae682-78fb44f9a42sm1763817b3.29.2025.12.18.12.52.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Dec 2025 12:52:19 -0800 (PST)
Date: Thu, 18 Dec 2025 15:52:18 -0500
From: Yury Norov <yury.norov@gmail.com>
To: Randy Dunlap <rdunlap@infradead.org>
Cc: Steven Rostedt <rostedt@goodmis.org>,
 Andrew Morton <akpm@linux-foundation.org>,
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
Message-ID: <aURpgm7csvlGzSoS@yury>
References: <20251205175237.242022-1-yury.norov@gmail.com>
 <20251205175237.242022-5-yury.norov@gmail.com>
 <20251216161316.45b3f19ff0ad482018137189@linux-foundation.org>
 <55ceb7bf-0fe9-4edc-81c2-d51366847eec@infradead.org>
 <aUN8Hm377C5A0ILX@yury>
 <20251218123349.35339242@gandalf.local.home>
 <95f0c65b-15ff-45db-9845-579f7adf4c86@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <95f0c65b-15ff-45db-9845-579f7adf4c86@infradead.org>
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

On Thu, Dec 18, 2025 at 10:34:07AM -0800, Randy Dunlap wrote:
> 
> 
> On 12/18/25 9:33 AM, Steven Rostedt wrote:
> > On Wed, 17 Dec 2025 22:59:33 -0500
> > Yury Norov <yury.norov@gmail.com> wrote:
> > 
> >> I deem to drop trace_printk.h from kernel.h - it is more aligned with
> >> the idea of unloading the header. The original motivation to keep
> >> trace_printk.h in kernel.h was just because a similar printk.h is living
> >> there. But after all, this is a purely debugging header, so no need for
> >> almost every C file to bear debugging stuff.
> > 
> > It is a big deal for debugging stuff. A lot of developers debug their code
> > with trace_printk(), and do the "shotgun approach", where they cut and
> > paste trace_printk()s all over their code in several files. Having to now add:
> > 
> >   #include <linux/trace_printk.h>
> > 
> > whenever a trace_printk() is added is going to be a big PITA and slow down
> > all debugging efforts.
> 
> Eh? Maybe a PITA, but surely not a big one.
> Slow down "all debugging efforts?"
> Please cut down on the hyperbole.

For me, removing trace_prink.h saves 1.5-2% of compile time:

Before:                         
#1 real	5m12.602s               
#2 real	5m11.333s               

After:
#1 real	5m6.190s
#2 real	5m7.151s

I'm building ubuntu-derived localyesconfig with a couple extra drivers.
Steven, if you're not absolutely against, lets drop the trace_printk.h?

Thanks,
Yury
