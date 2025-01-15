Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DBF4A12DEA
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 22:48:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44F3D10E116;
	Wed, 15 Jan 2025 21:48:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="RIOmN3m9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com
 [209.85.222.50])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 435B410E116
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2025 21:48:22 +0000 (UTC)
Received: by mail-ua1-f50.google.com with SMTP id
 a1e0cc1a2514c-85c4557fce0so34705241.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2025 13:48:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1736977641; x=1737582441;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ltmn9Mm22yVt64ua+/2W5DkLu4FvUvXKpZxg/TWxbvY=;
 b=RIOmN3m9JASTt3Cq/ECMSQIHIQooWcnMvrePthJNZ4z+a7RpDwbVKLiJKXDZzurFQw
 ygFT0JvnjR2ai3a8xlfdBSeg7sHbRGJRH2rV62EuuLLvl55zVsNrjXCLeEBIJt6xoeB5
 HIa8kBvOXKU/Fnl9ltEwyYutV1l+MsjRL6PUbAH+VABOsKZWjJYCAtdOPO7c8q0fF8ZO
 takEDSR4kziejV3AX0JeW7PRZSFtKPPItq6Zb9blx7iGqLT59w4AWThvAOe1RIQwXp0e
 nPwZBcG+nERvmHKYuSWEeC23vgVU7D5RV+aYxJPRZbj/JNHRl3nL1URPrJWctNLB+x0Q
 O4tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736977641; x=1737582441;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ltmn9Mm22yVt64ua+/2W5DkLu4FvUvXKpZxg/TWxbvY=;
 b=FJn/zCXwOk3cUlAH3rumGEdej6x3eu5rcBgqUG4o5qAqlWaGVXk6yWLL+VqCfL2xkM
 pqAR95ivljtdERNU0yvs59tkK1/61Ekt/tRvbXEXsMu+ewU1RVZOZ0m79PhKT2motg7Y
 xm4pGStXQ3pUZ2o9QC9yBBWOganouHSsUp4O0pbS1joJBa3XBlQr+mkNjGr/c0uOTbXO
 Z9wb32O+D2JYrP7anWWv7tWo/dNXiuLE9554SsGALGA25EQH4LA+G6A/yyk/6aG62aB7
 Rs3R45oNN4DLnj9dv7BtJY7SW6TZ5ggPn1ccPqXvj8/E2/VlH3fj3S4t7lzx7CTnx3Vb
 P0DQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUA8nT2Xyx3+ISxpk7Ahe3JxojhKSR0NUH3eE8Cvd7+flVrpWK1Yj0I4CaM3dr5yaKZUHk3SfbQws4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yyinzv8cHA3Cez7IarU3j0Tll+Ox5XSx1+FwIk8zy3mR0aCWABH
 cXGzvJ6/eT2wKLcnd7j8UwLl4SUCiM+PYz2QEBtgXk+1UzAmSuIUzO1xeSLweeZMPf28jDLpH4C
 Iz24E2QM/lwajqUoyFlEHIApis/m9yMchzuwu
X-Gm-Gg: ASbGncvbTNSi4Zs27NtrsSN+QpCasrUcpmzs8LIzRdXU150aQThXsyBtPgUlgzVLyha
 MuMk/n4Gdz99n+Dv08ewkyXxWRQ6duX2uy7YiS1iTIqJRV6z83KmFuElDTPQB3z1LAQt9
X-Google-Smtp-Source: AGHT+IHddxhJJTm91TzdAwSi6uafTRzEfEyn82rLSJiZKUTard4Bp+c3/yQxdvAEMnMOjsCchFbxw41UJMogIcZ05rQ=
X-Received: by 2002:a05:6102:54a4:b0:4b0:ccec:c9de with SMTP id
 ada2fe7eead31-4b3d0ecc1ecmr29653773137.24.1736977641130; Wed, 15 Jan 2025
 13:47:21 -0800 (PST)
MIME-Version: 1.0
References: <20250115093135.3288234-1-kirill.shutemov@linux.intel.com>
 <20250115093135.3288234-6-kirill.shutemov@linux.intel.com>
 <Z4gqJqcO8wau0sgN@casper.infradead.org>
In-Reply-To: <Z4gqJqcO8wau0sgN@casper.infradead.org>
From: Yu Zhao <yuzhao@google.com>
Date: Wed, 15 Jan 2025 14:46:44 -0700
X-Gm-Features: AbW1kvYmgQZAQoh1evl_F-cwT96TWCJNKl3oZphib0Y46aUVpuxrrUuhtwKH4hA
Message-ID: <CAOUHufZ42ZV1SU+rGLM-2j2Hp43Q9eLY_yFYg8jsifOfcPHUgQ@mail.gmail.com>
Subject: Re: [PATCHv2 05/11] mm/truncate: Use folio_set_dropbehind() instead
 of deactivate_file_folio()
To: Matthew Wilcox <willy@infradead.org>
Cc: "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, 
 Andrew Morton <akpm@linux-foundation.org>, Jens Axboe <axboe@kernel.dk>, 
 "Jason A. Donenfeld" <Jason@zx2c4.com>, Andi Shyti <andi.shyti@linux.intel.com>,
 Chengming Zhou <chengming.zhou@linux.dev>,
 Christian Brauner <brauner@kernel.org>, 
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Dan Carpenter <dan.carpenter@linaro.org>, 
 David Airlie <airlied@gmail.com>, David Hildenbrand <david@redhat.com>,
 Hao Ge <gehao@kylinos.cn>, 
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

On Wed, Jan 15, 2025 at 2:35=E2=80=AFPM Matthew Wilcox <willy@infradead.org=
> wrote:
>
> On Wed, Jan 15, 2025 at 11:31:29AM +0200, Kirill A. Shutemov wrote:
> > -static void lru_deactivate_file(struct lruvec *lruvec, struct folio *f=
olio)
> > -{
> > -     bool active =3D folio_test_active(folio) || lru_gen_enabled();
> > -     long nr_pages =3D folio_nr_pages(folio);
> > -
> > -     if (folio_test_unevictable(folio))
> > -             return;
> > -
> > -     /* Some processes are using the folio */
> > -     if (folio_mapped(folio))
> > -             return;
> > -
> > -     lruvec_del_folio(lruvec, folio);
> > -     folio_clear_active(folio);
> > -     folio_clear_referenced(folio);
> > -
> > -     if (folio_test_writeback(folio) || folio_test_dirty(folio)) {
> > -             /*
> > -              * Setting the reclaim flag could race with
> > -              * folio_end_writeback() and confuse readahead.  But the
> > -              * race window is _really_ small and  it's not a critical
> > -              * problem.
> > -              */
> > -             lruvec_add_folio(lruvec, folio);
> > -             folio_set_reclaim(folio);
> > -     } else {
> > -             /*
> > -              * The folio's writeback ended while it was in the batch.
> > -              * We move that folio to the tail of the inactive list.
> > -              */
> > -             lruvec_add_folio_tail(lruvec, folio);
> > -             __count_vm_events(PGROTATED, nr_pages);
> > -     }
> > -
> > -     if (active) {
> > -             __count_vm_events(PGDEACTIVATE, nr_pages);
> > -             __count_memcg_events(lruvec_memcg(lruvec), PGDEACTIVATE,
> > -                                  nr_pages);
> > -     }
> > -}
>
> > +++ b/mm/truncate.c
> > @@ -486,7 +486,7 @@ unsigned long mapping_try_invalidate(struct address=
_space *mapping,
> >                        * of interest and try to speed up its reclaim.
> >                        */
> >                       if (!ret) {
> > -                             deactivate_file_folio(folio);
> > +                             folio_set_dropbehind(folio);
>
> brr.
>
> This is a fairly substantial change in semantics, and maybe it's fine.
>
> At a high level, we're trying to remove pages from an inode that aren't
> in use.  But we might find that some of them are in use (eg they're
> mapped or under writeback).  If they are mapped, we don't currently
> try to accelerate their reclaim, but now we're going to mark them
> as dropbehind.  I think that's wrong.
>
> If they're dirty or under writeback, then yes, mark them as dropbehind, b=
ut
> I think we need to be a little more surgical here.  Maybe preserve the
> unevictable check too.

Right -- deactivate_file_folio() does make sure the folio is not
unevictable or mapped. So probably something like below would the
change in semantics be close enough?

  if (!folio_test_unevictable(folio) && !folio_mapped(folio))
    folio_set_dropbehind(folio);
