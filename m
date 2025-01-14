Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFCEA129EE
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 18:33:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BFF610E77C;
	Wed, 15 Jan 2025 17:33:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="KCaRYjq2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com
 [209.85.219.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E846710E464
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2025 18:04:36 +0000 (UTC)
Received: by mail-qv1-f43.google.com with SMTP id
 6a1803df08f44-6dfbc45355bso36680296d6.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2025 10:04:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1736877816; x=1737482616;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jCDM3nH5nsddwHhx2RaJOUmEIWUcGJSFM1b2iKFUASA=;
 b=KCaRYjq2he83KJIp8HzG9ZIpr7M3xpTIToZGG9Pq30zPzax8ruvE1ynyHzznbTPewf
 NhVUB2EVy01pkADh5pX4f66+9iAtWX5/4XKBvyHS5UnmlXyFu0a9CsgbIfD2R6aYmx3G
 27tTUlufByy5WATQKdk7tIhe/49o7jqLbbHw4YE2K2c/0PKEcR1A65FGjPPNXnjzBKoG
 2SjpN3+YNJE2sY2dzXXpCfSopk7oQnw+tvLgBL8z9yOpkCe/wAC6+1qYM/ZUHjT61AsC
 7hXK3VaQFPio8CrOJeEjCkoXO2OZEFT8jwgorS2qg/HeVHyxUHfv6TBEE917HfNpRk5t
 9Thg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736877816; x=1737482616;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=jCDM3nH5nsddwHhx2RaJOUmEIWUcGJSFM1b2iKFUASA=;
 b=AU5FVGlIr8iQFZY+8rxmGiSodGnbdtWhgJm16ogp5dO0lpCNyx1r8qWqFyoiNrZS7Y
 DkhqYYB+56cJX/apyOfaZjI+0i10HtzyyFNtLoqC1hyZAERWzze1XNaqNOTGWEVapj/T
 mbcVt243KCWvq7EuPI01VZQ8ZuMkQ26kTv90a73GUWtlHyZvMXMbo//ynfeUcya3EY8J
 B2nGNTXgdBPNgLuMlUW9AzMmV+JMfGTMhPkkoGBmNalLPmPcwAzvoy/Z5p+r3DRqpDT6
 WDOVJc2jQLt946yW8MbhQuJGm4RwWO3/yXXLjeCwa/Ux1pK2O9hdLim+MpE3Qy+E7zSx
 v1QA==
X-Forwarded-Encrypted: i=1;
 AJvYcCUMZqQTciR9KIceC8F9j5joK9j7/OLrD2BJCBgrYFxtsEFBwpvDBQhCYFNcWUeIrIuYWkJKVE85X+E=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwA2X7Pe49q55OSyEBzdRWU9KMGsZT0ENrbWfTzhqBRNpnedt61
 uRq+zTdD8+PHggDy2uZy9DhpQjF5ZhpQ8Qa8fjCvhCxTMOQPf8lRGzYrMu71bdDKnaPY+YkmYdP
 d3Lvd+OEj8dAXoDSqWtOPbS2H7PIptjUpuHQU
X-Gm-Gg: ASbGnctZrt4RXQo6//+V7CLc1MkmxjdIzPtmHLHNEYzIzj4g73etk9yk/tsOBm5W9Kb
 RWRjiLaVw2zEU1Vo9Kr5V4qffSdby0VWG7M0tXFEtjCqolIBoyvZsaeKvgyWHMlrZq6Zv
X-Google-Smtp-Source: AGHT+IFGbuWEbA/VXL6JtTCiH5khxzq5smFlxJG6dJ+DoVw7dHdiOta9Wy11BiH/OhRxCrhzSnn1aPsUJ6zkleOgF28=
X-Received: by 2002:a05:6214:4002:b0:6d8:b3a7:75ba with SMTP id
 6a1803df08f44-6df9b333a5bmr404226066d6.45.1736877814969; Tue, 14 Jan 2025
 10:03:34 -0800 (PST)
MIME-Version: 1.0
References: <20250113093453.1932083-1-kirill.shutemov@linux.intel.com>
 <20250113093453.1932083-5-kirill.shutemov@linux.intel.com>
 <CAJD7tkYH8KO8NLJY564PRAmW-mtMfDCMTECGKyYyVAf+JtTcRA@mail.gmail.com>
 <sct6vvupd4cp6xt66nn6sfs7w3srpx6zcxxsn6rz5qo4tz3la6@btdqsbicmrto>
In-Reply-To: <sct6vvupd4cp6xt66nn6sfs7w3srpx6zcxxsn6rz5qo4tz3la6@btdqsbicmrto>
From: Yosry Ahmed <yosryahmed@google.com>
Date: Tue, 14 Jan 2025 10:02:58 -0800
X-Gm-Features: AbW1kva-gyu4zE6Wcq68qpyyzNdu3annXYt-FkuQBdGnmZoPJXjoi47oGp9e6C0
Message-ID: <CAJD7tkZwgKRc2kbY9WutC8meOV+CpQSpxKSpkUorEneJJuX9og@mail.gmail.com>
Subject: Re: [PATCH 4/8] mm/swap: Use PG_dropbehind instead of PG_reclaim
To: "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, 
 "Matthew Wilcox (Oracle)" <willy@infradead.org>, Jens Axboe <axboe@kernel.dk>, 
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
 Vlastimil Babka <vbabka@suse.cz>, Yu Zhao <yuzhao@google.com>,
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

On Tue, Jan 14, 2025 at 12:12=E2=80=AFAM Kirill A. Shutemov
<kirill.shutemov@linux.intel.com> wrote:
>
> On Mon, Jan 13, 2025 at 08:17:20AM -0800, Yosry Ahmed wrote:
> > On Mon, Jan 13, 2025 at 1:35=E2=80=AFAM Kirill A. Shutemov
> > <kirill.shutemov@linux.intel.com> wrote:
> > >
> > > The recently introduced PG_dropbehind allows for freeing folios
> > > immediately after writeback. Unlike PG_reclaim, it does not need vmsc=
an
> > > to be involved to get the folio freed.
> > >
> > > Instead of using folio_set_reclaim(), use folio_set_dropbehind() in
> > > lru_deactivate_file().
> > >
> > > Signed-off-by: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>
> > > ---
> > >  mm/swap.c | 8 +-------
> > >  1 file changed, 1 insertion(+), 7 deletions(-)
> > >
> > > diff --git a/mm/swap.c b/mm/swap.c
> > > index fc8281ef4241..4eb33b4804a8 100644
> > > --- a/mm/swap.c
> > > +++ b/mm/swap.c
> > > @@ -562,14 +562,8 @@ static void lru_deactivate_file(struct lruvec *l=
ruvec, struct folio *folio)
> > >         folio_clear_referenced(folio);
> > >
> > >         if (folio_test_writeback(folio) || folio_test_dirty(folio)) {
> > > -               /*
> > > -                * Setting the reclaim flag could race with
> > > -                * folio_end_writeback() and confuse readahead.  But =
the
> > > -                * race window is _really_ small and  it's not a crit=
ical
> > > -                * problem.
> > > -                */
> > >                 lruvec_add_folio(lruvec, folio);
> > > -               folio_set_reclaim(folio);
> > > +               folio_set_dropbehind(folio);
> > >         } else {
> > >                 /*
> > >                  * The folio's writeback ended while it was in the ba=
tch.
> >
> > Now there's a difference in behavior here depending on whether or not
> > the folio is under writeback (or will be written back soon). If it is,
> > we set PG_dropbehind to get it freed right after, but if writeback has
> > already ended we put it on the tail of the LRU to be freed later.
> >
> > It's a bit counterintuitive to me that folios with pending writeback
> > get freed faster than folios that completed their writeback already.
> > Am I missing something?
>
> Yeah, it is strange.
>
> I think we can drop the writeback/dirty check. Set PG_dropbehind and put
> the page on the tail of LRU unconditionally. The check was required to
> avoid confusion with PG_readahead.
>
> Comment above the function is not valid anymore.

My read is that we don't put dirty/writeback folios at the tail of the
LRU because they cannot be freed immediately and we want to give them
time to be written back before reclaim reaches them. So I don't think
we want to change that and always put the pages at the tail.

>
> But the folio that is still dirty under writeback will be freed faster as
> we get rid of the folio just after writeback is done while clean page can
> dangle on LRU for a while.

Yeah if we reuse PG_dropbehind then we cannot avoid
folio_end_writeback() freeing the folio faster than clean ones.

>
> I don't think we have any convenient place to free clean dropbehind page
> other than shrink_folio_list(). Or do we?

Not sure tbh. FWIW I am not saying it's necessarily a bad thing to
free dirty/writeback folios before clean ones when deactivated, it's
just strange and a behavioral change from today that I wanted to point
out. Perhaps that's the best we can do for now.

>
> Looking at shrink_folio_list(), I think we need to bypass page demotion
> for PG_dropbehind pages.
>
> --
>   Kiryl Shutsemau / Kirill A. Shutemov
