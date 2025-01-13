Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4B2A129F5
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 18:33:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FB3910E79C;
	Wed, 15 Jan 2025 17:33:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="NMT0LmBD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com
 [209.85.219.49])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 411C810E02F
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2025 16:18:58 +0000 (UTC)
Received: by mail-qv1-f49.google.com with SMTP id
 6a1803df08f44-6dd16e1cfa1so38710346d6.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2025 08:18:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1736785077; x=1737389877;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=jfzu8LVinRmTffQRsvj5JwYAQma905XvC7kwPgp95yk=;
 b=NMT0LmBDF1+qTES1ljrWD6/dDHmWRR0eSf8gundeEGBASvViO6G4wicpR18VuE0isK
 2PBZlXZiEJowT9OEfBa1hSBcCM/HIgsic8jEiH6V5j6ee4ohPdBygdNDfvxITHFCljaU
 i/QN5hfaxHePLcCXhQ5N+mAcP9f0C2Q0ZcCLEoucB0Wvry8/l6+S8XziHACjTaVSGsfO
 rTqspHJJa2fa2iGPOhr+HCmOSGUXe7qaOhSADjIsbzjJ5RIsWBJuQfAxiPfCDSgh8bD/
 dhZ7IxXYpAaMxBckZTGuSo+1enVJyEIQfrG5pHqHiTXqUWnSUq8CKKiQ76nwwNjXIuH1
 pUSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736785077; x=1737389877;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=jfzu8LVinRmTffQRsvj5JwYAQma905XvC7kwPgp95yk=;
 b=HCroAG2p0wnbTiPIJNw7fjbx+zjrfWhPTXRMZ8ZUQXDGkV3GTp1LKDkNcjB6vPLur7
 FVAlXKC4gK6dLKF2VMXdusTnNvDp7l176Mfmwdmyt1zhJ9wP/6CK0qDtAavqtcxZxO0n
 fhmSvMcG/LQtWrWLiWL9xqVdVbd9SfJ/brRqhVG8FEzzCA2/+i39jUFN1OIH2OKsjJW0
 YY4udkhLOFcfOGzRYXr9WrLOHjjBxv/QyX+3RZZ7iue240oIlVsjBVeB/Xvz5HaKkODq
 ejoJDuG53bwdF+7M97j9zussn5dWGNVF6U02yEgiDLUOosanUOAAWCBp5dSm1xtuneP5
 CuiQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXzWylQU08LZR5ZFBtc5BabfcXbjxz6f3wHFG89kobFhQCVV21rrwaZC+JYo9z3vhIQ9Ra8XjwQYmE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyioxJRYfIbDslMdt+zW4ZYIRt2eZXg9j/Y+W/DMP9W4eH0flDE
 bXDopzjbtyYfnYs2bkCZjkdVl2zIwsEabEzsUMLI9GE5RibOKW7HegFo6VdHTXy9BgLTNTORAxU
 tD0BNbijBXMddCNFGan4/DHYR/7lowh7wDvqc
X-Gm-Gg: ASbGncsAxnqQqLiDyuuNBRyqr6o0m4L7wpN3DKeMuzLmEarfDkAJK3V5DdqcCOFEgt8
 E5Pnkh+cCjRmn5U3snymyc8szNfKUFNBCi68=
X-Google-Smtp-Source: AGHT+IFDY+ySlB1nZMJq9PlTNDL8qUtu0AiaG+WzwFjnrE/ylu2IG3nFGi1mN1AYrMM9NBOj0s/u+5iNgQWpIVWK82E=
X-Received: by 2002:a05:6214:20ce:b0:6d8:812e:1fd0 with SMTP id
 6a1803df08f44-6df9b1da95amr320133376d6.15.1736785077170; Mon, 13 Jan 2025
 08:17:57 -0800 (PST)
MIME-Version: 1.0
References: <20250113093453.1932083-1-kirill.shutemov@linux.intel.com>
 <20250113093453.1932083-5-kirill.shutemov@linux.intel.com>
In-Reply-To: <20250113093453.1932083-5-kirill.shutemov@linux.intel.com>
From: Yosry Ahmed <yosryahmed@google.com>
Date: Mon, 13 Jan 2025 08:17:20 -0800
X-Gm-Features: AbW1kvZz7xe4mjGEEdN13LDK63_d9mSHRFPhCcbgv5eQRi5YXclVXjASqcr-k6E
Message-ID: <CAJD7tkYH8KO8NLJY564PRAmW-mtMfDCMTECGKyYyVAf+JtTcRA@mail.gmail.com>
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

On Mon, Jan 13, 2025 at 1:35=E2=80=AFAM Kirill A. Shutemov
<kirill.shutemov@linux.intel.com> wrote:
>
> The recently introduced PG_dropbehind allows for freeing folios
> immediately after writeback. Unlike PG_reclaim, it does not need vmscan
> to be involved to get the folio freed.
>
> Instead of using folio_set_reclaim(), use folio_set_dropbehind() in
> lru_deactivate_file().
>
> Signed-off-by: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>
> ---
>  mm/swap.c | 8 +-------
>  1 file changed, 1 insertion(+), 7 deletions(-)
>
> diff --git a/mm/swap.c b/mm/swap.c
> index fc8281ef4241..4eb33b4804a8 100644
> --- a/mm/swap.c
> +++ b/mm/swap.c
> @@ -562,14 +562,8 @@ static void lru_deactivate_file(struct lruvec *lruve=
c, struct folio *folio)
>         folio_clear_referenced(folio);
>
>         if (folio_test_writeback(folio) || folio_test_dirty(folio)) {
> -               /*
> -                * Setting the reclaim flag could race with
> -                * folio_end_writeback() and confuse readahead.  But the
> -                * race window is _really_ small and  it's not a critical
> -                * problem.
> -                */
>                 lruvec_add_folio(lruvec, folio);
> -               folio_set_reclaim(folio);
> +               folio_set_dropbehind(folio);
>         } else {
>                 /*
>                  * The folio's writeback ended while it was in the batch.

Now there's a difference in behavior here depending on whether or not
the folio is under writeback (or will be written back soon). If it is,
we set PG_dropbehind to get it freed right after, but if writeback has
already ended we put it on the tail of the LRU to be freed later.

It's a bit counterintuitive to me that folios with pending writeback
get freed faster than folios that completed their writeback already.
Am I missing something?
