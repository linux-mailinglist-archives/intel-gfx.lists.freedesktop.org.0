Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6D5DA129F0
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 18:33:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40F2C10E78D;
	Wed, 15 Jan 2025 17:33:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="yQwokipw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x932.google.com (mail-ua1-x932.google.com
 [IPv6:2607:f8b0:4864:20::932])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4F8610E4BD
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2025 04:31:56 +0000 (UTC)
Received: by mail-ua1-x932.google.com with SMTP id
 a1e0cc1a2514c-85b8c94a6b4so1367095241.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2025 20:31:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1736915515; x=1737520315;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=yhUEXTZfkgW4BgxI74qkWusw+s+m3LiFaZUA40ueT84=;
 b=yQwokipwq9RMI90SeuyiMZ88LQJzZnTgaDhaKhgKcAyPJoggxnQxdsBkPaKYAPkTFa
 BfDImDfUHL6+YIZaOWQ/F4AndQhmuGqq0RdpMSatktjjLFzUCFH8OdoEA0fYCH8+gyb+
 7jIzc7zSrX6bijkSeKuSDjn4k5nXSWb1Oq0ZrHQ0V+9n5bzVXMTx4oNjLyMnS8+4FolU
 uJaBU9WvyWVa14Nx7+hOpm+0K7+xgt0bKHEM1N2RDHk/FmGyfwId16PS6F9atzw/ych0
 IT7Z6iLjCaRgwiVP4XBgdwfncKGHVXYmVvlLpCwxP2V4AWq4GFiE1HffCM1r9TxFmCXv
 D2Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736915515; x=1737520315;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=yhUEXTZfkgW4BgxI74qkWusw+s+m3LiFaZUA40ueT84=;
 b=YXECc6Z6k2y8zZ2085yj/lprSqRv2VpgsOhGjtY6b8KK+DfoQ4gtsMxZRrqHkKlgAb
 T2IdxCxD7HvLboqcr7t6oga/XOQglqkmEtvAa0L/nT6vwnpyPg5z1yNXB6ZrwiG0qJrT
 A7rO6xsT1Mevstx3JNSz1nvMu9ehTZKF0mO+mwozjaiPYaUKFll+3EAjOJbJnzeV9ROm
 gW2NBDc+ovQ+Ol1KW/JIkR2fRVi6uQ257cHiPAcnnR0I3h4CqcTrhz56LGbt/9ADvoOZ
 vqYn3mVpSTSZlgPA5KJ12ui19DreodQFqP6ZZ2uKyMp3GkwPeaqkQDFWenNsjHxBeQ14
 hkaQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVkmwI2MTZkbVQ8N/AcJqoDbA6FdEyi4qxRy0bC3F22EuYHxgFFKxfR7U+Y2GunVjhWCmKjKPmydkk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzjfKKDQxZV+v2+ZbRbhk4HY1+SWm+UTsDdKZld3gq5UnDV77hU
 IEGDm7k/9Ru5YvNVTbXv0kNn9HgxyA/HyWx84XKo+iuguxMyTUF4ugVA1ex2MDTbmb3rz2sYixc
 VgW/I5UaCKYAhAd8dxwIiB/ncjC/3ViLizY7P
X-Gm-Gg: ASbGncuxEPAHE8tCYj1nPi2BtBx6NHuD9YZihApBxaQSJthT8WC5aXpEvZj/r7f2xDf
 m8Ix7n0C+cM7eSKtdAML7g5g5UOxX5gCPXraQvIbbzai5DuE0IkSLw7AKHcoM0mKBH5Sch1Q=
X-Google-Smtp-Source: AGHT+IGV1k0H8SbbBA6nThUP6nuirAkFi9y4HuJJgrNaw0QqQFx6vZtOqG1tcU9TKgxw9iHsMXhUfwv5G+xLWaNaSds=
X-Received: by 2002:a05:6102:151d:b0:4af:5f65:4fd3 with SMTP id
 ada2fe7eead31-4b3d0d84e76mr22672519137.6.1736915515480; Tue, 14 Jan 2025
 20:31:55 -0800 (PST)
MIME-Version: 1.0
References: <20250113093453.1932083-1-kirill.shutemov@linux.intel.com>
 <20250113093453.1932083-5-kirill.shutemov@linux.intel.com>
 <CAJD7tkYH8KO8NLJY564PRAmW-mtMfDCMTECGKyYyVAf+JtTcRA@mail.gmail.com>
 <sct6vvupd4cp6xt66nn6sfs7w3srpx6zcxxsn6rz5qo4tz3la6@btdqsbicmrto>
 <CAJD7tkZwgKRc2kbY9WutC8meOV+CpQSpxKSpkUorEneJJuX9og@mail.gmail.com>
 <CAOUHufYFKZ=agWpS3mFHyDjXs_Tq7VhM=qBayL0FtJis=W0+Tg@mail.gmail.com>
In-Reply-To: <CAOUHufYFKZ=agWpS3mFHyDjXs_Tq7VhM=qBayL0FtJis=W0+Tg@mail.gmail.com>
From: Yu Zhao <yuzhao@google.com>
Date: Tue, 14 Jan 2025 21:31:18 -0700
X-Gm-Features: AbW1kvbVhru_iw2y_QlJolSm6M0KiY7kXGkDkKwfJ4WtDVBCkcYcJVbv0C9gb3I
Message-ID: <CAOUHufYwQ=nr08pdiwckDkfL+YVU6JcSdND2fiq6CDt_qMOQHw@mail.gmail.com>
Subject: Re: [PATCH 4/8] mm/swap: Use PG_dropbehind instead of PG_reclaim
To: Yosry Ahmed <yosryahmed@google.com>
Cc: "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>, 
 Andrew Morton <akpm@linux-foundation.org>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>, 
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
 Vlastimil Babka <vbabka@suse.cz>, intel-gfx@lists.freedesktop.org, 
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

On Tue, Jan 14, 2025 at 9:28=E2=80=AFPM Yu Zhao <yuzhao@google.com> wrote:
>
> On Tue, Jan 14, 2025 at 11:03=E2=80=AFAM Yosry Ahmed <yosryahmed@google.c=
om> wrote:
> >
> > On Tue, Jan 14, 2025 at 12:12=E2=80=AFAM Kirill A. Shutemov
> > <kirill.shutemov@linux.intel.com> wrote:
> > >
> > > On Mon, Jan 13, 2025 at 08:17:20AM -0800, Yosry Ahmed wrote:
> > > > On Mon, Jan 13, 2025 at 1:35=E2=80=AFAM Kirill A. Shutemov
> > > > <kirill.shutemov@linux.intel.com> wrote:
> > > > >
> > > > > The recently introduced PG_dropbehind allows for freeing folios
> > > > > immediately after writeback. Unlike PG_reclaim, it does not need =
vmscan
> > > > > to be involved to get the folio freed.
> > > > >
> > > > > Instead of using folio_set_reclaim(), use folio_set_dropbehind() =
in
> > > > > lru_deactivate_file().
> > > > >
> > > > > Signed-off-by: Kirill A. Shutemov <kirill.shutemov@linux.intel.co=
m>
> > > > > ---
> > > > >  mm/swap.c | 8 +-------
> > > > >  1 file changed, 1 insertion(+), 7 deletions(-)
> > > > >
> > > > > diff --git a/mm/swap.c b/mm/swap.c
> > > > > index fc8281ef4241..4eb33b4804a8 100644
> > > > > --- a/mm/swap.c
> > > > > +++ b/mm/swap.c
> > > > > @@ -562,14 +562,8 @@ static void lru_deactivate_file(struct lruve=
c *lruvec, struct folio *folio)
> > > > >         folio_clear_referenced(folio);
> > > > >
> > > > >         if (folio_test_writeback(folio) || folio_test_dirty(folio=
)) {
> > > > > -               /*
> > > > > -                * Setting the reclaim flag could race with
> > > > > -                * folio_end_writeback() and confuse readahead.  =
But the
> > > > > -                * race window is _really_ small and  it's not a =
critical
> > > > > -                * problem.
> > > > > -                */
> > > > >                 lruvec_add_folio(lruvec, folio);
> > > > > -               folio_set_reclaim(folio);
> > > > > +               folio_set_dropbehind(folio);
> > > > >         } else {
> > > > >                 /*
> > > > >                  * The folio's writeback ended while it was in th=
e batch.
> > > >
> > > > Now there's a difference in behavior here depending on whether or n=
ot
> > > > the folio is under writeback (or will be written back soon). If it =
is,
> > > > we set PG_dropbehind to get it freed right after, but if writeback =
has
> > > > already ended we put it on the tail of the LRU to be freed later.
> > > >
> > > > It's a bit counterintuitive to me that folios with pending writebac=
k
> > > > get freed faster than folios that completed their writeback already=
.
> > > > Am I missing something?
> > >
> > > Yeah, it is strange.
> > >
> > > I think we can drop the writeback/dirty check. Set PG_dropbehind and =
put
> > > the page on the tail of LRU unconditionally. The check was required t=
o
> > > avoid confusion with PG_readahead.
> > >
> > > Comment above the function is not valid anymore.
> >
> > My read is that we don't put dirty/writeback folios at the tail of the
> > LRU because they cannot be freed immediately and we want to give them
> > time to be written back before reclaim reaches them. So I don't think
> > we want to change that and always put the pages at the tail.
> >
> > >
> > > But the folio that is still dirty under writeback will be freed faste=
r as
> > > we get rid of the folio just after writeback is done while clean page=
 can
> > > dangle on LRU for a while.
> >
> > Yeah if we reuse PG_dropbehind then we cannot avoid
> > folio_end_writeback() freeing the folio faster than clean ones.
> >
> > >
> > > I don't think we have any convenient place to free clean dropbehind p=
age
> > > other than shrink_folio_list(). Or do we?
> >
> > Not sure tbh. FWIW I am not saying it's necessarily a bad thing to
> > free dirty/writeback folios before clean ones when deactivated, it's
> > just strange and a behavioral change from today that I wanted to point
> > out. Perhaps that's the best we can do for now.
> >
> > >
> > > Looking at shrink_folio_list(), I think we need to bypass page demoti=
on
> > > for PG_dropbehind pages.
>
> I agree with Yosry. I don't think lru_deactivate_file() is still
> needed -- it was needed only because when truncation fails to free a
> dirty/writeback folio, page reclaim can do that quickly. For other
> conditions that mapping_evict_folio() returns 0, there isn't much page
> reclaim can do, and those conditions are not deactivate_file_folio()
> and lru_deactivate_file()'s intentions. So the following should be
> enough, and it's a lot cleaner :
>
> diff --git a/mm/truncate.c b/mm/truncate.c
> index e2e115adfbc5..12d2aa608517 100644
> --- a/mm/truncate.c
> +++ b/mm/truncate.c
> @@ -486,7 +486,7 @@ unsigned long mapping_try_invalidate(struct
> address_space *mapping,
>                          * of interest and try to speed up its reclaim.
>                          */
>                         if (!ret) {
> -                               deactivate_file_folio(folio);
> +                               folio_set_dropbehind(folio)
>                                 /* Likely in the lru cache of a remote CP=
U */
>                                 if (nr_failed)
>                                         (*nr_failed)++;
>
> Then we can drop deactivate_file_folio() and lru_deactivate_file().

And with the above and list_move_tail() removed, we can also remove
lruvec_add_folio_tail().
