Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84A7386ABB1
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 10:55:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFC9610E580;
	Wed, 28 Feb 2024 09:55:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=suse.com header.i=@suse.com header.b="gsrvt/jZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com
 [209.85.218.44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9A3610E113
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 09:55:50 +0000 (UTC)
Received: by mail-ej1-f44.google.com with SMTP id
 a640c23a62f3a-a3e6f79e83dso620158266b.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 01:55:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=suse.com; s=google; t=1709114149; x=1709718949; darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=uBNtmpWHwk23veRV9DRLTSwz8gtd1U5j/H2m71ZLWRY=;
 b=gsrvt/jZCp1J7vfcXh+eE5btPVa4CmN3SfJFj40hfYShAhOL0RTbez3abC8uA68Obm
 hXu8jFBZPDY+VA+yf1Q/GGFQcboZe0fAxkopv7DUpk7BaT3EJyAvJPVq+dzmUD2/X00G
 9L08H4rMaCXygr9hDP0vfo3/JqFEoLjQYa5qUly1KnHUNgK6PbXCM0J9TcMqa+DBW+br
 43BPFsLTBfJcJXGWMSzTSKPI3zwurEZFJw0uNCN/eiuSYl3fTeRiDzbiK3JKo0kvVnbQ
 foJ9I52Ab7vp7uWcXNn08Imsm7FLbq5cCvbmBv7+L9FRXmtrlo1F53rp28p0VT8QQzKH
 PKUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1709114149; x=1709718949;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=uBNtmpWHwk23veRV9DRLTSwz8gtd1U5j/H2m71ZLWRY=;
 b=Y5mZfre85JDFjEAnJTrHLmWGgusU/nJGc9LIcq7OFPkK60C0SG2ZliqmPu0inZ3VyB
 AdnpyoxEdLkXSRwpIZ5CWWKUtnshIUzMM6jl7/kDJ1MB1RquwuPYDRJbZUVwj1Y3gChE
 60IEzYML+FvanIcgS/rUI7jOwXBHfKlp/a4l9YcOmHXjBSfhxpdkFUbcBCNPp4vaN6w5
 TqRlxGMVA7wchjvZsfu9YqepBhkpJ8n9lehh6ptpdxvGsSXFd1Q3y+BycVC0FEPv46IY
 TGJp8CkRk0eYqvMNkRSWAzV8i2/AGw5QcZD9uXMRhpbOGus9/rvqLqXCvit8qUaeMiJd
 7FHw==
X-Forwarded-Encrypted: i=1;
 AJvYcCW91Lf/8pBkA3M/dN4/x8ek+e/S4bj6BFubmgAjSUos7ef+9c62xE9qb6L1zsC9TGxYKnugDbwxnKXnpxcBCFk8weaDsS0AsPBolHqgjLdp
X-Gm-Message-State: AOJu0YzYYXUdDUOnxahdIaA+EtTbcA4BFkIGMKAdv3sUZbFqNQmyi7ak
 ZD7KYAOrU7S70F/OMX3zoEUfGXvXfBnFr02Xu1z907wvq0YCNYtVBp742eijPY8=
X-Google-Smtp-Source: AGHT+IHn52EhzPq1RG3ODn9Z6RrwbKI8Y+PrluZvwDL2enxJ7j/yXzctI2kVvuCepYHbsCHDJKUqqw==
X-Received: by 2002:a17:906:35cf:b0:a44:46a:27bf with SMTP id
 p15-20020a17090635cf00b00a44046a27bfmr572076ejb.16.1709114144028; 
 Wed, 28 Feb 2024 01:55:44 -0800 (PST)
Received: from alley ([176.114.240.50]) by smtp.gmail.com with ESMTPSA id
 c12-20020a17090603cc00b00a433f470cf1sm1668440eja.138.2024.02.28.01.55.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Feb 2024 01:55:43 -0800 (PST)
Date: Wed, 28 Feb 2024 10:55:42 +0100
From: Petr Mladek <pmladek@suse.com>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Cc: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org,
 Steven Rostedt <rostedt@goodmis.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Matthew Wilcox <willy@infradead.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 01/12] drm/i915: Indicate which pipe failed the fastset
 check overall
Message-ID: <Zd8CtrOmb8nfGBdl@alley>
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
 <20240215164055.30585-2-ville.syrjala@linux.intel.com>
 <ZdfApN1h97GTfL1t@intel.com> <Zdj2ONs8BZ6959Xb@intel.com>
 <87bk83mfwp.fsf@intel.com>
 <1013ff2d-76b2-41f9-a5d4-39a567a3b0cc@rasmusvillemoes.dk>
 <Zd4qrLVWcacza747@intel.com>
 <fa42285b-099e-4d2d-9368-58cea7f67010@rasmusvillemoes.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <fa42285b-099e-4d2d-9368-58cea7f67010@rasmusvillemoes.dk>
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

On Wed 2024-02-28 09:32:37, Rasmus Villemoes wrote:
> On 27/02/2024 19.32, Ville Syrjälä wrote:
> > On Tue, Feb 27, 2024 at 10:38:10AM +0100, Rasmus Villemoes wrote:
> >> On 26/02/2024 15.57, Jani Nikula wrote:
> So if we really want to go down this road, I think it should be
> something like %pX{drm:whatever}, with core printf just looking up the
> token "drm" in a run-time list of registered callbacks (because I don't
> want vsprintf.c filled with random subsystems' formatting code), and
> that single callback would then be handed a pointer to the rest of the
> format string (i.e. the "whatever}..."), the pointer argument from the
> varargs, and the buf,end pair. But then we're back to trusting that
> callback (which might of course multiplex based on the "whatever" part)
> to behave correctly. And then we might as well avoid the string parsing
> and just do the "callback + pointer" in one struct (passed as pointer to
> compound literal), which also avoids the tricky "what to do about module
> unload versus unregistering of callbacks" etc.

Mathew Wilcox had the idea to introduce a structure:

	struct printf_state {
	       char *buf;
	       char *end;
	       void *ptr;
	};

Where *ptr would point to some data which should be printed,
same as wee pass to the %pbla now.

Then allow to implement:

	char *my_func(struct printf_state *ps, void *ptr);

and use it as:

	printk("%pX(%p)\n", my_func, ptr);


One problem here is type checking of the data passed via *ptr
but we already have the same problem now.

Another problem is how to make sure that the function is safe.
A solution might be to implement an API for appending characters,
strings, numbers, ... Similar to seq_buf() API.

AFAIK, the result was to actually use the existing seq_buf API
to format the string. AFAIK, it motivated:

   + commit 96928d9032a7c34f1 ("seq_buf: Add seq_buf_do_printk() helper")

and probably also

   + commit d0ed46b60396cfa7 ("tracing: Move readpos from seq_buf to trace_seq")

and also this one is pretty useful:

   + commit dcc4e5728eeaeda8 ("seq_buf: Introduce DECLARE_SEQ_BUF and
     seq_buf_str()")

And it motivated:

   + commit dcc4e5728eeaeda84878ca0 ("seq_buf: Introduce
     DECLARE_SEQ_BUF and seq_buf_str()")


Best Regards,
Petr
