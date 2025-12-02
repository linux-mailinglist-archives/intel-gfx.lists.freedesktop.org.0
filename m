Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55288C99EA5
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 03:50:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EF6710E511;
	Tue,  2 Dec 2025 02:50:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KdXDVIlM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yx1-f45.google.com (mail-yx1-f45.google.com
 [74.125.224.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1534210E4FC
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Dec 2025 02:50:34 +0000 (UTC)
Received: by mail-yx1-f45.google.com with SMTP id
 956f58d0204a3-63f996d4e1aso5157778d50.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Dec 2025 18:50:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764643833; x=1765248633; darn=lists.freedesktop.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=u4fZQuQJ65AJK2A7tpNQAB3pVThD3W5ngX9pcfsdMkk=;
 b=KdXDVIlM11BQ5vk0wToKrJ3tQJI5yTUGyDS9Ddd9oH/L+J9Bc1PcGzjKOo2M0amFKs
 Ozru40gwO0OW4Py5XihSyrNpxUg07I3Dw1XsNyf4ah0IUD16n6bmvjSmukTaXXWgyOcF
 2xYhAfxPB7FrqgKIu7aI+ZfKvY45lOyKoxLa5YnHoRGiRphWsrlxNxeIIhpF3CGvbbKU
 p0f8uTMlRJkLPSTCGw4QCuq0TIySbLDCSB8IJxd2S6VepRjDvh9vrQ7D9ThY/l+JTzwZ
 FMo8OC+RJujF3Z98Tz+fNSIXZIQHAusRcCXhpQJpRTr16vxuT78uYyGj89f4LUvCRc8H
 syFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764643833; x=1765248633;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=u4fZQuQJ65AJK2A7tpNQAB3pVThD3W5ngX9pcfsdMkk=;
 b=fD99p9SrNEXV2NbcWZXskGjoxR0uWqs2hUrQgAgnQSquGR8EU/JdvSMJDTovAMtJaC
 iLoztW+EtDbEmBxHA/UMrJncJkHAwXcgggkYkm9gYcQArrfGOK1tQJQYu2d4VULGx52+
 dodvkWT1xOCDWpRrD7kcKXI1PJeEJ8wS4MladlxkBc0n4XA9MFDM4bgi+7hT1ZsHfrYm
 GqYAzGmL4t0QEa1jbSUPx3biQw3oNaGxWErY4BqbT7xXhRjty0Sw6K5Zy/NxNj2HqiR+
 nN+3p2RRgASpCW/85ldVhZ6AZFDp1yMtsHNYXjg5aHNyjEUku+0NyICReXGW6qnIshB3
 ht1A==
X-Forwarded-Encrypted: i=1;
 AJvYcCUKzOdLg+8PMJ3rq2nvE74TC/Xjv5afVe4k9qN+vTKeMMtwuKlnOfXgGdtYFOsuqFMJONd6OtIUA/E=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwLUaRTg56i1Q0WgbWtzwU0+W27jx6wkRSabe22Toad4gk6XzP3
 vWqNdkeLuaYMI92iRqL3GryxiEyaOJEiV1PBBHovXVCnTP8qjBUqgSfY
X-Gm-Gg: ASbGnct3VU77Umb/T/xs3U3pPYiWiGGkHsR7Ozq4U1vgY3Tumy9I/LjX033XnESKxFI
 T3TYetB79LyBbrbdd9cC4kLYzUDe++3zQQ35c21Cz2p8lvbnsSxqIVWtGG8lEO/k+Heam/JHm2G
 PhfHka1uJUwkadHUCR2FGeSDMAA1oQegUscPHJ5C8el1ehsZq2Rhys/Rm/8YXl++gGZvY4CXhxa
 8jP51aGj9prmekZJmP6mjF07kaTNFmZgiZy3SgjYJ0lL7wd5WOv2DI6XBySAoNrEkOY2cNipE6s
 F6ZGnv/6aCSNpJkHrI8SPfbQDaiIMlOKRFxar/CsM2VYti9D+2PsW45Z3fIFymbooNOMXtkHasC
 sCT0rCPgtRNlC2LJQvHpalYxccv9v8igtKmsX9uinOe2X19tGxNglbovZVFyg/qZecl5h7dtPO5
 ATWsqojwQ=
X-Google-Smtp-Source: AGHT+IFvjnC2S/Jp93rH0uVWc/73vRFOoYQepG4E9Ug5xxnCcXms6vpoqWinBuFed3GkRDU5HYh1CQ==
X-Received: by 2002:a05:690c:2781:b0:787:e9bc:fa1f with SMTP id
 00721157ae682-78a8b54d8cemr340242637b3.46.1764643833002; 
 Mon, 01 Dec 2025 18:50:33 -0800 (PST)
Received: from localhost ([2601:346:0:79bd:8738:665d:bba8:afd0])
 by smtp.gmail.com with ESMTPSA id
 00721157ae682-78ad1043a08sm58083027b3.52.2025.12.01.18.50.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Dec 2025 18:50:32 -0800 (PST)
Date: Mon, 1 Dec 2025 21:50:31 -0500
From: Yury Norov <yury.norov@gmail.com>
To: "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
Cc: Steven Rostedt <rostedt@goodmis.org>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Randy Dunlap <rdunlap@infradead.org>, Ingo Molnar <mingo@kernel.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Petr Pavlu <petr.pavlu@suse.com>,
 Daniel Gomez <da.gomez@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Danilo Krummrich <dakr@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-modules@vger.kernel.org,
 linux-trace-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] kernel.h: drop STACK_MAGIC macro
Message-ID: <aS5T9-1z7PK32q9R@yury>
References: <20251129195304.204082-1-yury.norov@gmail.com>
 <20251129195304.204082-2-yury.norov@gmail.com>
 <3e7ddbea-978f-44f7-abdd-7319908fd83c@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3e7ddbea-978f-44f7-abdd-7319908fd83c@kernel.org>
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

On Mon, Dec 01, 2025 at 10:38:01AM +0100, Christophe Leroy (CS GROUP) wrote:
> 
> 
> Le 29/11/2025 à 20:53, Yury Norov (NVIDIA) a écrit :
> > The macro is only used by i915. Move it to a local header and drop from
> > the kernel.h.
> 
> At the begining of the git history we have:
> 
> $ git grep STACK_MAGIC 1da177e4c3f41
> 1da177e4c3f41:arch/h8300/kernel/traps.c:        if (STACK_MAGIC !=
> *(unsigned long *)((unsigned long)current+PAGE_SIZE))
> 1da177e4c3f41:arch/m68k/mac/macints.c:          if (STACK_MAGIC !=
> *(unsigned long *)current->kernel_stack_page)
> 1da177e4c3f41:include/linux/kernel.h:#define STACK_MAGIC        0xdeadbeef
> 
> Would be good to know the history of its usage over time.
> 
> I see:
> - Removed from m68k by 3cd53b14e7c4 ("m68k/mac: Improve NMI handler")
> - Removed from h8300 by 1c4b5ecb7ea1 ("remove the h8300 architecture")
> - Started being used in i915 selftest by 250f8c8140ac ("drm/i915/gtt:
> Read-only pages for insert_entries on bdw+")

STACK_MAGIC was added in 1994 in 1.0.2.  It was indeed used in a couple
of places in core subsystems back then to detect stack corruption. But
since that people invented better ways to guard stacks.

You can check commit 4914d770dec4 in this project:

https://archive.org/details/git-history-of-linux
