Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFE564E259
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 21:30:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B270C10E558;
	Thu, 15 Dec 2022 20:29:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com
 [IPv6:2607:f8b0:4864:20::1133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B523E10E418
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 15:16:02 +0000 (UTC)
Received: by mail-yw1-x1133.google.com with SMTP id
 00721157ae682-3f15a6f72d0so839617b3.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 07:16:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=i8/7ompYoprPv6p5gopqt1zlXtmepYGFLCWXe2gsqzg=;
 b=BUfL3YrZ28K+1n6E2SQ9fOqgRKi2RgeotU3ckXNn8xFWPTs42cuoGfphfjNQOV0pgx
 7/jp35I3w0HRIOFVcsghYPgMBrhr8AMNN8/bTKnJa17Hz49AiqnR3KxJME/VVIigK+sS
 o/Lm4IOiEo8w6nxX4t2A4IzKZLODEjcrKKDsdmGKLI1atzrsu3mpNZREk5A83gxmOZAt
 L+k/IzYKvXs7B7hnKP1erYHIobJ4iQu87BD3pnHQtG8fBQOI4ExEQ0QtE/CElufFbNCA
 yV0c98uSdPhEqukbLuFuzz8L6ZLLU8J5/FlBKjiGFYDWzKiB3XFMXdMwK39OTfRDW0AO
 GSIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=i8/7ompYoprPv6p5gopqt1zlXtmepYGFLCWXe2gsqzg=;
 b=xjlvkxgaqkV1RyX+SuD4w/n7XByk3lupLdmtEMdM5pAiiyln2Hl3bgw37wKXYWcEJj
 lZcyYxWPqax93lc/NabnV9bF32RieiHmRmQe8LzsG3fVBXL2srQ8Gl5OqOsBUyi23XBM
 Nx1zquP9i4LkwGOn/E7XB+JgfJRj00EAliNJI1+ChNABFxHO1N535xJ8pK0PqkIGv/KY
 P+ZR9K/gnLkGsM3Iek6hZfqLNFj4W6TLISHW3F3ceznDLIpJ9FGT8XIZZpTR+Mha3Uuv
 toQFN2RXtpRSk8yQNJcKmjuBt3oKjCMoXZdhNAZs9qOWShwieFGrI386MrbWIIsOTNCP
 4DbA==
X-Gm-Message-State: ANoB5pm12e4VN2HjOqAQSuhDns+A04NTz65Q3gnDs91hjb8aLlQIii65
 mWfwO1IMgtahknqYXEFO4krDrAwi/41gBs5ZoXxR5g==
X-Google-Smtp-Source: AA0mqf6N7NofCRVaBdlZmzX/2IFdQaSJdENS2yaazN5Bc4VEowcispQ6llOh6euNJwrBHENhxHLAYZsrXmLpw9L8cy4=
X-Received: by 2002:a81:1e44:0:b0:370:7a9a:564 with SMTP id
 e65-20020a811e44000000b003707a9a0564mr27785992ywe.278.1671030961275; Wed, 14
 Dec 2022 07:16:01 -0800 (PST)
MIME-Version: 1.0
References: <cover.1670778651.git.david.keisarschm@mail.huji.ac.il>
 <b3caaa5ac5fca4b729bf1ecd0d01968c09e6d083.1670778652.git.david.keisarschm@mail.huji.ac.il>
 <Y5c8KLzJFz/XZMiM@zx2c4.com> <20221214123358.GA1062210@linux.intel.com>
In-Reply-To: <20221214123358.GA1062210@linux.intel.com>
From: Eric Dumazet <edumazet@google.com>
Date: Wed, 14 Dec 2022 16:15:49 +0100
Message-ID: <CANn89iJtK4m1cWvCwp=L_rEOEBa+B1kLZJAw0D9_cYPQcAj+Mw@mail.gmail.com>
To: Stanislaw Gruszka <stanislaw.gruszka@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Thu, 15 Dec 2022 20:29:21 +0000
Subject: Re: [Intel-gfx] [PATCH 1/5] Renaming weak prng invocations -
 prandom_bytes_state, prandom_u32_state
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
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Peter Zijlstra <peterz@infradead.org>,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Roman Gushchin <roman.gushchin@linux.dev>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Alexei Starovoitov <ast@kernel.org>, dri-devel@lists.freedesktop.org,
 Song Liu <song@kernel.org>, linux-mtd@lists.infradead.org,
 Stanislav Fomichev <sdf@google.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Hyeonggon Yoo <42.hyeyoo@gmail.com>, Christoph Lameter <cl@linux.com>,
 Daniel Borkmann <daniel@iogearbox.net>, Richard Weinberger <richard@nod.at>,
 x86@kernel.org, John Fastabend <john.fastabend@gmail.com>,
 Andrii Nakryiko <andrii@kernel.org>, ilay.bahat1@gmail.com,
 Ingo Molnar <mingo@redhat.com>, David Rientjes <rientjes@google.com>,
 Yonghong Song <yhs@fb.com>, Paolo Abeni <pabeni@redhat.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>, Petr Mladek <pmladek@suse.com>,
 david.keisarschm@mail.huji.ac.il, Dave Hansen <dave.hansen@linux.intel.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, intel-gfx@lists.freedesktop.org,
 Steven Rostedt <rostedt@goodmis.org>, KP Singh <kpsingh@kernel.org>,
 Jakub Kicinski <kuba@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Borislav Petkov <bp@alien8.de>, Hannes Reinecke <hare@suse.de>,
 Andy Lutomirski <luto@kernel.org>, Jiri Pirko <jiri@nvidia.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, bpf@vger.kernel.org,
 Vlastimil Babka <vbabka@suse.cz>, Hao Luo <haoluo@google.com>,
 linux-scsi@vger.kernel.org, "Martin K. Petersen" <martin.petersen@oracle.com>,
 linux-mm@kvack.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Pekka Enberg <penberg@kernel.org>,
 Sergey Senozhatsky <senozhatsky@chromium.org>, aksecurity@gmail.com,
 Jiri Olsa <jolsa@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 Martin KaFai Lau <martin.lau@linux.dev>,
 "David S. Miller" <davem@davemloft.net>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 14, 2022 at 1:34 PM Stanislaw Gruszka
<stanislaw.gruszka@linux.intel.com> wrote:
>
> On Mon, Dec 12, 2022 at 03:35:20PM +0100, Jason A. Donenfeld wrote:
> > Please CC me on future revisions.
> >
> > As of 6.2, the prandom namespace is *only* for predictable randomness.
> > There's no need to rename anything. So nack on this patch 1/5.
>
> It is not obvious (for casual developers like me) that p in prandom
> stands for predictable. Some renaming would be useful IMHO.

Renaming makes backports more complicated, because stable teams will
have to 'undo' name changes.
Stable teams are already overwhelmed by the amount of backports, and
silly merge conflicts.

Take another example :

u64 timecounter_read(struct timecounter *tc)

You would think this function would read the timecounter, right ?

Well, it _updates_ many fields from @tc, so a 'better name' would also
be useful.

linux kernel is not for casual readers.
