Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AFE7A129F1
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 18:33:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F97310E787;
	Wed, 15 Jan 2025 17:33:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="FopKS7t7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com
 [IPv6:2607:f8b0:4864:20::733])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79B3110E3F7
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2025 17:02:30 +0000 (UTC)
Received: by mail-qk1-x733.google.com with SMTP id
 af79cd13be357-7b6f19a6c04so510799185a.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2025 09:02:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1736874149; x=1737478949;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5pwRPv3AC50iLCk2Zf2oVFdf10HsOLZLViQlkbWzupw=;
 b=FopKS7t7YhIYYUWyqptnWzGTXQVPWirZhvjBC11mfNSxtk50baQu7s1vWWSD1W95Rc
 +gW1NYQqxd0MCboHvAwvTq5F/ODHvIoOHtFKiEzVfvZ+4r28N8ctQS2jukviCOWdvJJF
 Old2sFOr1pnCo/uqMRQgOX9TYKob135PmHJupB7UfBo6frjZ6VWMGd48CtheZ8eaN+y1
 TcSuK48C78aY9XRf6g1ndLjMHs8GmJ1S6mbmPxDtsoFLI1ri2ooZ9DX+us2nwnnh9IA1
 DzzYxMVCwH2PuXQ4wQK09OZkdum6q6HcGBSxK9zpRQX11+MHFEUJFl6pV4P4m89QkKA4
 Wbwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736874149; x=1737478949;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=5pwRPv3AC50iLCk2Zf2oVFdf10HsOLZLViQlkbWzupw=;
 b=nh+TiQhH0jhNGjfCSuQqMM9VyOPB5HE1JMuGSwCacNC5i0CryxdHl+aY8DJ4P/Dl21
 Ym4xCpdp3L4kxr1vNheID2OhJ5YURimpxE+NYrPiN02+d+Jc0UdAm19oU1ncj9qGIlWZ
 rjWei0WwGvm41P7SfBIHpMQlyDppBxrixPyfsht9hFfX9Jex8smVzGSxpmZBH14+BySx
 uxge5bXol5BR/6JD/eO4FaJXxA0lNxLZ97rbWWrTEet0s7qDZ0RplTpGhN8KUKGdOhq0
 DgBjSxdSwiMMpHs7WDk2QOTbAwGhz45NM/5lihj/9bIraEZKzSIkXSl+vT9bGJOlm80U
 yc7g==
X-Forwarded-Encrypted: i=1;
 AJvYcCWRSC6HBGejPLn8UH2oSj6dKr8PdUqlVSUZxQOpvN8j1iOQrCm3Mr7LL91rxznApDucgApYWjq4lLI=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwwerzdMSrhyjzSPJ4lm0JxZE3/8/RazCqP4p35Gb9WJFQmGJty
 hXm8pkBGL+35+ba3FUng87remr5+khl4b4idWeaV38kKmof6OV/WFt4ngq3E0I1n9k2JFaNOQ6a
 Ay8VGoWjy/OyyA4HOTTnFKvR3lL8P4jqKOXuN
X-Gm-Gg: ASbGncuUta2Rf9+k0EM738schSXczAEBrBdPCnWCLlDnkIcvC97WG/HNOpSvmBHlMN2
 6iQofRpTCefp0YfGJtwbDmpbV3gpRGzUHUFRiQg84he84plYwADRdZ6tcWZKTK5l7nnGsI1M=
X-Google-Smtp-Source: AGHT+IEmCebGY2XiXiMSHiPH6lyzErlM2sxmSzBWB4EBYHNDzzHKKbPlbhF+bpXyENdSkK3zvR6V00VYB1KaeeKmh74=
X-Received: by 2002:a05:620a:244d:b0:7b7:142d:53b8 with SMTP id
 af79cd13be357-7bcd97c97e1mr4649151185a.53.1736874149139; Tue, 14 Jan 2025
 09:02:29 -0800 (PST)
MIME-Version: 1.0
References: <20250113093453.1932083-1-kirill.shutemov@linux.intel.com>
 <20250113093453.1932083-9-kirill.shutemov@linux.intel.com>
 <Z4UxK_bsFD7TtL1l@casper.infradead.org>
 <vpy2hikqvw3qrncjdlxp6uonpmbueoulhqipdkac7tav4t7m2s@3ebncdtepyv6>
In-Reply-To: <vpy2hikqvw3qrncjdlxp6uonpmbueoulhqipdkac7tav4t7m2s@3ebncdtepyv6>
From: Yu Zhao <yuzhao@google.com>
Date: Tue, 14 Jan 2025 10:01:52 -0700
X-Gm-Features: AbW1kvYQkyXZbUdcH1QNEYpQQw7S18-Qu-i6iGpqw5vVBDdyuuTWt_dBq2WlT1M
Message-ID: <CAOUHufY+BViSYS14tfN8EOhuE05KneG2syHhVCyFPppkmDH=aQ@mail.gmail.com>
Subject: Re: [PATCH 8/8] mm: Remove PG_reclaim
To: "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Cc: Matthew Wilcox <willy@infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>, 
 Jens Axboe <axboe@kernel.dk>, "Jason A. Donenfeld" <Jason@zx2c4.com>, 
 Andi Shyti <andi.shyti@linux.intel.com>,
 Chengming Zhou <chengming.zhou@linux.dev>, 
 Christian Brauner <brauner@kernel.org>,
 Christophe Leroy <christophe.leroy@csgroup.eu>, 
 Dan Carpenter <dan.carpenter@linaro.org>, David Airlie <airlied@gmail.com>, 
 David Hildenbrand <david@redhat.com>, Hao Ge <gehao@kylinos.cn>, 
 Jani Nikula <jani.nikula@linux.intel.com>, Johannes Weiner <hannes@cmpxchg.org>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Josef Bacik <josef@toxicpanda.com>, 
 Masami Hiramatsu <mhiramat@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
 Miklos Szeredi <miklos@szeredi.hu>, Nhat Pham <nphamcs@gmail.com>, 
 Oscar Salvador <osalvador@suse.de>, Ran Xiaokai <ran.xiaokai@zte.com.cn>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Simona Vetter <simona@ffwll.ch>, 
 Steven Rostedt <rostedt@goodmis.org>, Tvrtko Ursulin <tursulin@ursulin.net>, 
 Vlastimil Babka <vbabka@suse.cz>, Yosry Ahmed <yosryahmed@google.com>,
 intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-fsdevel@vger.kernel.org, linux-mm@kvack.org, 
 linux-trace-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailman-Approved-At: Wed, 15 Jan 2025 17:33:45 +0000
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

On Tue, Jan 14, 2025 at 1:30=E2=80=AFAM Kirill A. Shutemov
<kirill.shutemov@linux.intel.com> wrote:
>
> On Mon, Jan 13, 2025 at 03:28:43PM +0000, Matthew Wilcox wrote:
> > On Mon, Jan 13, 2025 at 11:34:53AM +0200, Kirill A. Shutemov wrote:
> > > diff --git a/mm/migrate.c b/mm/migrate.c
> > > index caadbe393aa2..beba72da5e33 100644
> > > --- a/mm/migrate.c
> > > +++ b/mm/migrate.c
> > > @@ -686,6 +686,8 @@ void folio_migrate_flags(struct folio *newfolio, =
struct folio *folio)
> > >             folio_set_young(newfolio);
> > >     if (folio_test_idle(folio))
> > >             folio_set_idle(newfolio);
> > > +   if (folio_test_readahead(folio))
> > > +           folio_set_readahead(newfolio);
> > >
> > >     folio_migrate_refs(newfolio, folio);
> > >     /*
> >
> > Not a problem with this patch ... but aren't we missing a
> > test_dropbehind / set_dropbehind pair in this function?  Or are we
> > prohibited from migrating a folio with the dropbehind flag set
> > somewhere?
>
> Hm. Good catch.
>
> We might want to drop clean dropbehind pages instead migrating them.
>
> But I am not sure about dirty ones. With slow backing storage it might be
> better for the system to migrate them instead of keeping them in the old
> place for potentially long time.
>
> Any opinions?
>
> > > +++ b/mm/swap.c
> > > @@ -221,22 +221,6 @@ static void lru_move_tail(struct lruvec *lruvec,=
 struct folio *folio)
> > >     __count_vm_events(PGROTATED, folio_nr_pages(folio));
> > >  }
> > >
> > > -/*
> > > - * Writeback is about to end against a folio which has been marked f=
or
> > > - * immediate reclaim.  If it still appears to be reclaimable, move i=
t
> > > - * to the tail of the inactive list.
> > > - *
> > > - * folio_rotate_reclaimable() must disable IRQs, to prevent nasty ra=
ces.
> > > - */
> > > -void folio_rotate_reclaimable(struct folio *folio)
> > > -{
> > > -   if (folio_test_locked(folio) || folio_test_dirty(folio) ||
> > > -       folio_test_unevictable(folio))
> > > -           return;
> > > -
> > > -   folio_batch_add_and_move(folio, lru_move_tail, true);
> > > -}
> >
> > I think this is the last caller of lru_move_tail(), which means we can
> > get rid of fbatches->lru_move_tail and the local_lock that protects it.
> > Or did I miss something?
>
> I see lru_move_tail() being used by lru_add_drain_cpu().

That can be deleted too, since you've already removed the producer to
fbatches->lru_move_tail.
