Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC43A129EB
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 18:33:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C50810E114;
	Wed, 15 Jan 2025 17:33:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=google.com header.i=@google.com header.b="mkMacR7f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com
 [209.85.219.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3DDF10E198
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2025 16:12:22 +0000 (UTC)
Received: by mail-qv1-f42.google.com with SMTP id
 6a1803df08f44-6d8f99cb0d9so32515376d6.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2025 08:12:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=google.com; s=20230601; t=1736784682; x=1737389482;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=0nln6xuSTTaoMOsjO/bzAdYR40fjFobKxVXqk79yIRg=;
 b=mkMacR7fGD+ZuPdJfJhk+6Np65ffwqly4ZKEWFHbZ3Z2lY1cR+Y0OXlNkaSHO1XMTR
 9tJDIWSOq4D8z1mVgyCnkKEtSHz+aVg54ipcqygsCOKRVIpT+AJu/xDE/8gVivh8+10+
 x5aJnlU2b2kNm2Ls5ezn4Hs0m0m3X999n9Mx4zq1MG6+B167zw39jRxGKUUBPB90FyWE
 XH7Mqb8HvDW1Zjx8IA4/4mcSe2jmVO0RDOcBtNTo6tvnnCoxJ71XyiWiXMU3LSI67ej6
 rTogxDMXOtU91VN2EMeZtA+jEMANolS5/fcn05VIIvdqN8mZfvJ/4YxPrG2AzawfC5M+
 Lcqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1736784682; x=1737389482;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=0nln6xuSTTaoMOsjO/bzAdYR40fjFobKxVXqk79yIRg=;
 b=gjnH5rKXqIS17xCCHTYhTqbNKqsX7ISuPy7/MF/jHJdxk7uFeGURCa9fiZvFdMNy5e
 Dxkxex0gAN9BUC5DjRm2JY29Lqq8t/38KiBtPR6F0eVPHxzPQW+iq0W0U8pzL9XHWFot
 XcXL7PkkMB5ysAIp+zsknRUkLbFxxNraNQRxf49fFeQV8SLMbvdR/PpuZuGf6ybKw+fw
 JCEj2Z3COIm9GkFVyfSj1lVZEbb8+Ka4+vTe/3iw0EacwKWuv69qUfNNjVypzLB054Av
 SF+2n+po46R0nbaiuRB+7zXdN2dkBgpv6Lg44aVuayID/7c/nZOGwIZeYiUfksHwJ4ua
 MZMg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUl+T33SMnMlXxbeksVbeZ4Hon9pVpsfRvLIVKuTqf5cLRb6VE0nhOzBa0tI1a42UAxQlxf9iHzMRE=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yz1/Nktzn4NM3iu5nWKgDsl4rZ7Ii81ms926VuoZaGnZDad3kbN
 BReaJwau+HeDpceQqMJogyxzAcaSqQ5BdlOD0Zzw9qCEeJnxniwC/DfAiPXiPfRTj+pXUr7pKXg
 T49DxsotC4L/7u4+dTy8Qxvr6pvIX2e9L530U
X-Gm-Gg: ASbGnctLiFbdReLG+jO4zI4fTfJ7HKCktiLMucAI9O0DPQNmpLZe2oEZ6VtWbEgARso
 i1nZMol4bzz55qHQWWC3ch3io1KRGpnmrg9w=
X-Google-Smtp-Source: AGHT+IEZHimf0erqHl9P9hdsVm///MN8stQzn+Oj7UFKcLM1rFbaFHquGnXMlUQnxJqTuDGwgck+ox3NI5bhvjgf1ZE=
X-Received: by 2002:ad4:5ca5:0:b0:6d4:25c4:e77d with SMTP id
 6a1803df08f44-6df9b2ddad5mr358474696d6.34.1736784681463; Mon, 13 Jan 2025
 08:11:21 -0800 (PST)
MIME-Version: 1.0
References: <20250113093453.1932083-1-kirill.shutemov@linux.intel.com>
 <20250113093453.1932083-4-kirill.shutemov@linux.intel.com>
In-Reply-To: <20250113093453.1932083-4-kirill.shutemov@linux.intel.com>
From: Yosry Ahmed <yosryahmed@google.com>
Date: Mon, 13 Jan 2025 08:10:45 -0800
X-Gm-Features: AbW1kvYVFjw-APVc_AtsFocTeHs3A7WI3FQm934n3hdXUG8p6Ploc_paz3DXv-A
Message-ID: <CAJD7tkYfh=K1FV2NPFD5P0+Td66PtoMRHAkAcwUJcRwYDKLZjQ@mail.gmail.com>
Subject: Re: [PATCH 3/8] mm/zswap: Use PG_dropbehind instead of PG_reclaim
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
> zswap_writeback_entry().
>
> Signed-off-by: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>

Acked-by: Yosry Ahmed <yosryahmed@google.com>

> ---
>  mm/zswap.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/mm/zswap.c b/mm/zswap.c
> index 167ae641379f..c20bad0b0978 100644
> --- a/mm/zswap.c
> +++ b/mm/zswap.c
> @@ -1096,8 +1096,8 @@ static int zswap_writeback_entry(struct zswap_entry=
 *entry,
>         /* folio is up to date */
>         folio_mark_uptodate(folio);
>
> -       /* move it to the tail of the inactive list after end_writeback *=
/
> -       folio_set_reclaim(folio);
> +       /* free the folio after writeback */
> +       folio_set_dropbehind(folio);
>
>         /* start writeback */
>         __swap_writepage(folio, &wbc);
> --
> 2.45.2
>
