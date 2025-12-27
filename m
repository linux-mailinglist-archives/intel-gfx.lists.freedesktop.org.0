Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFF9FCE0177
	for <lists+intel-gfx@lfdr.de>; Sat, 27 Dec 2025 20:35:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70E391131C2;
	Sat, 27 Dec 2025 19:35:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="W2QyQPuF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yx1-f51.google.com (mail-yx1-f51.google.com
 [74.125.224.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4B301131C2
 for <intel-gfx@lists.freedesktop.org>; Sat, 27 Dec 2025 19:35:55 +0000 (UTC)
Received: by mail-yx1-f51.google.com with SMTP id
 956f58d0204a3-6446c1a7a1cso6666472d50.3
 for <intel-gfx@lists.freedesktop.org>; Sat, 27 Dec 2025 11:35:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1766864155; x=1767468955; darn=lists.freedesktop.org;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=ZscOEY94JtpqTuF2Rte0ITMRfXFqnWcGnNUyPWqzXog=;
 b=W2QyQPuFiXSJhkcSjIQP//1Ccl6cuYhEONxIVW0ReHvpyN8miU/5EwTFm2bGVu+ZnZ
 Ga84mpXs+WgPXnnCqTEc2pMAoUG5buTzJ/B5hkbPCjiDGlOdnk+8xzSvzRY141eh/cOa
 KKbLuT42lHgCwura+mztU9HgBRhTnjm6zw1c+zvMujdfceFnXpNG780F6wK7w9Pb6iTT
 gO3fgvTsZO7jCAvjRT+dFrk5THy13rj6x8oouJIZ+6bq3QTR/mSDJxowhYnIIC8hs2K3
 bxfIhLGd2znLQOmFPr7LIHlGQKGf9vAwMlDgwA/PiFMYvnr9TO1fGswee9FlWgbMee21
 6L3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1766864155; x=1767468955;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ZscOEY94JtpqTuF2Rte0ITMRfXFqnWcGnNUyPWqzXog=;
 b=h1gxCnpcyAiv6fbrQbD+T5F+UuW5FWzkWYQMdYvFjKPmiKmFRzXJTA9L1dEnd/XnxP
 hAUDcJ5fH+frFvl0XNAoiY5xISE0X1z/lcvWb8O6kbggJEDgB7Yh6VxdUaLIYzC+OEqa
 M7uMa/CiJiUk/f/4JLWE/0GsV4Jyvcx2zgRSUW7txjshT/9D89OrI4mEeGFCJQ/XClnt
 SiYKuC79Du7fIqFaBT5DhmlSgdEDtg8AGu9I3lpA+siNnRz9Ox6P8lDQzeh4qN6vzAFO
 5SymJYToTf5MhZHWUeVX2KQ2lQ3k4qOEKez/xEQPUfvMmR370TkczZZX3z9ZLRZPJhki
 4msA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUBF3VlQ5YAFBw9hOHVHzMyBVCZF4lJECu74kQPmRQ0NY40RdNZlwoPfrNa1rGkEIcAZhIye41cLCY=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxTdVv8iBmKM89PDLrON07PAX6GJe6uHIy4GQWp+s8IJ/Ov6GkZ
 xTJOS2H2FJYV4C4O9QtY40L4d5v5uL5SpNFtw+xuN35Kq+1J/1lKXVxk
X-Gm-Gg: AY/fxX4ey/6Ekb47nqXXaGOMevG20oB5NnvKsZb+BW16pirML7/51Atp1SDJP3PRqg6
 VPVIShyxIO5WEOzMXDb7Aw/FbsqpcfTodmnI2ehwQeWNpbPHt4KRtIqR31GeXhmJMQAMSDqwVEE
 IocAm58a7zRMrXDzzeOtzethTZfaa7MWarwaBQfv/eDCm7A4MzZyLW7jOG3CBEtGm6CmJUlb1an
 DVhyECbU43C+Pb5TTjrYjmEUx84O5ScOGzzU8QmaqtWHqxBskVrq/1xXFQ7Hk9DjWoEjMDynEd8
 Fhcd/VXfP/TEArX6Lse4+Ircc6QpHRvDX/sBycDNecogxTeqoTy/6JVgFUdYGWxczRNnARsTQDS
 fNabOIwM6CMQgyKk3oBF7RJj/bTVe0WcmHpbyPdXpYg7qkXk6KBGbrHt+YtepjcCB/lguoKit+6
 1Lx6eajQs=
X-Google-Smtp-Source: AGHT+IFTyqtO8AIMR6I5RrW0NJVOngvdnp5kCSpfYPRgSEcWGvPmUWwG/Vuj1vc27aG6932toBOBHQ==
X-Received: by 2002:a05:690e:4106:b0:644:60d9:865e with SMTP id
 956f58d0204a3-6466a8ede93mr19913042d50.97.1766864154604; 
 Sat, 27 Dec 2025 11:35:54 -0800 (PST)
Received: from localhost ([2601:346:0:79bd:f47d:8af8:869d:704b])
 by smtp.gmail.com with ESMTPSA id
 956f58d0204a3-6466a8bd4c3sm12689811d50.8.2025.12.27.11.35.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Dec 2025 11:35:53 -0800 (PST)
Date: Sat, 27 Dec 2025 14:35:52 -0500
From: Yury Norov <yury.norov@gmail.com>
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Christophe Leroy <chleroy@kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>, Ingo Molnar <mingo@kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 David Laight <david.laight@runbox.com>, Petr Pavlu <petr.pavlu@suse.com>,
 Andi Shyti <andi.shyti@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Daniel Gomez <da.gomez@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Danilo Krummrich <dakr@kernel.org>, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-modules@vger.kernel.org, linux-trace-kernel@vger.kernel.org
Subject: Re: [PATCH v4 7/7] kernel.h: drop trace_printk.h
Message-ID: <aVA1GGfWAHSFdACF@yury>
References: <20251225170930.1151781-1-yury.norov@gmail.com>
 <20251225170930.1151781-8-yury.norov@gmail.com>
 <20251226115848.298465d4@gandalf.local.home>
 <aU_xG7pK9iauff65@smile.fi.intel.com>
 <20251227105701.5cbeb47e@robin>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251227105701.5cbeb47e@robin>
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

On Sat, Dec 27, 2025 at 10:57:01AM -0500, Steven Rostedt wrote:
> On Sat, 27 Dec 2025 16:45:47 +0200
> Andy Shevchenko <andriy.shevchenko@linux.intel.com> wrote:
> 
> > > I'm fine for trying other ways to speed up the compilation, but removing
> > > full access to trace_printk() isn't one of them.  

OK, then let's keep trace_printk() available for kernel.h users.

Andrew, can you take the first 6 patches of the series, if no other
objections?

> > I interpreted this as if the header inclusion should be moved from kernel.h
> > to printk.h as a compromise that satisfies all (?) stakeholders. Is it possible
> > approach?
> 
> I'm fine with putting the include of trace_printk.h into printk.h. If
> you remove printk.h from kernel.h I would expect a lot more people to
> complain about it. Including Linus himself.

The difference is that printk() is not a debugging tool. It is used
widely to report errors and info messages. Normally, I want to cleanup
all debugging code from my module after finishing development. If
trace_printk.h will be a part of printk.h, there's always a chance to
miss trace_printk() somewhere. I'd prefer to keep them separate.

Thanks,
Yury

