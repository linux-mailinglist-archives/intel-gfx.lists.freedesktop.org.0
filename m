Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8CC04BB80A
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 12:29:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA36A10E1E8;
	Fri, 18 Feb 2022 11:29:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com
 [IPv6:2607:f8b0:4864:20::112b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DF8210ED13
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 15:23:43 +0000 (UTC)
Received: by mail-yw1-x112b.google.com with SMTP id
 00721157ae682-2d310db3812so35460687b3.3
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Feb 2022 07:23:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eHgl2T651ZUAY0dUPlPE7t+ZMJITI1iQLNfhsdAOi9A=;
 b=OyyGSpGsXoRUMe1+VpsE32Jzw9pC/T/sEcDlrwAfqTzFtyGDBuqSpPNuEl6SeVR0Qs
 AFKDV5ZQ+hSEpEmAZEquWsQhiHVRa+51dPltVToyoWlHiWM3F05pRItVl0UKT0SKGTD6
 Gnd0oITi7nX9dnvZedukOqsSj7dQH0gNGnogTJVu7dGl1enSylVzxd6sIOsMS/AB86YP
 A/Bue505Xt+429q5JQ96dXyKTLgWr3e0sJXowp398lVnEJS7amIKej8Lhrr6MbHdPkmV
 V1EDN4J9TgejynO66RlqTRvfaiuXkOCZFK/K+elmI9ZrPXgNaVLtbF1hH+O9ZN5vseEv
 BpKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eHgl2T651ZUAY0dUPlPE7t+ZMJITI1iQLNfhsdAOi9A=;
 b=fq3DG/mZ1/02WE+FqjSTzlDE7mqBjK9dwpXzayz4c2kdWEiyiWvDIwBoaQ03PhN17S
 I3eHvoo2OnJSZQroKc34I5d+PE0LowtgViQ5dL6x8Macskcvf2SEPT22vzyfmEpmZqB+
 tR6ekn15RrgP03r5iq45/VlueM4Re33GGRbB0ykUz1hogOwGNmtsCgRo0sfNYGkVWVAg
 Xs7XN1mHji+5kUI+6PWXh23qwKkCdal0dw2HDlw/2pzRsGsZE7p9gg0qyveDF36MjYwc
 XFbIslcXfxfvKsTPfhrEu0dJvKr2MJi11WIg8MnFIyByU859VGs1Wkjfrv4wj4qf+WFA
 dhaw==
X-Gm-Message-State: AOAM532yyK/i0Z6li1ly45WTQUsgaOeAqD+wverwFzrCs3kLsS6kwm55
 Yy64Y7SoaFtBhq5eCXIUZDOWU3QrAv744YP2lH9tUg==
X-Google-Smtp-Source: ABdhPJxz5oowmiHJjEfemLbZOdX9nQtJEvLXg9XI3jQCQQwFJ1+9KfpYgOqyvfPS/LNFkEGjad8EoMOsgMFm6yB5kso=
X-Received: by 2002:a81:91d2:0:b0:2d6:af3d:c93 with SMTP id
 i201-20020a8191d2000000b002d6af3d0c93mr1481740ywg.467.1645111422161; Thu, 17
 Feb 2022 07:23:42 -0800 (PST)
MIME-Version: 1.0
References: <20220217140441.1218045-1-andrzej.hajda@intel.com>
 <20220217140441.1218045-3-andrzej.hajda@intel.com>
In-Reply-To: <20220217140441.1218045-3-andrzej.hajda@intel.com>
From: Eric Dumazet <edumazet@google.com>
Date: Thu, 17 Feb 2022 07:23:31 -0800
Message-ID: <CANn89iKgzztLA3y6V+vw3RiyoScC3K=1Z1_gajj8H56wGWDw6A@mail.gmail.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Fri, 18 Feb 2022 11:29:20 +0000
Subject: Re: [Intel-gfx] [PATCH 2/9] lib/ref_tracker: compact stacktraces
 before printing
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
Cc: Chris Wilson <chris.p.wilson@intel.com>, netdev <netdev@vger.kernel.org>,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 LKML <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Jakub Kicinski <kuba@kernel.org>, Dmitry Vyukov <dvyukov@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 17, 2022 at 6:05 AM Andrzej Hajda <andrzej.hajda@intel.com> wrote:
>
> In cases references are taken alternately on multiple exec paths leak
> report can grow substantially, sorting and grouping leaks by stack_handle
> allows to compact it.
>
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Reviewed-by: Chris Wilson <chris.p.wilson@intel.com>
> ---
>  lib/ref_tracker.c | 35 +++++++++++++++++++++++++++--------
>  1 file changed, 27 insertions(+), 8 deletions(-)
>
> diff --git a/lib/ref_tracker.c b/lib/ref_tracker.c
> index 1b0c6d645d64a..0e9c7d2828ccb 100644
> --- a/lib/ref_tracker.c
> +++ b/lib/ref_tracker.c
> @@ -1,5 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0-or-later
>  #include <linux/export.h>
> +#include <linux/list_sort.h>
>  #include <linux/ref_tracker.h>
>  #include <linux/slab.h>
>  #include <linux/stacktrace.h>
> @@ -14,23 +15,41 @@ struct ref_tracker {
>         depot_stack_handle_t    free_stack_handle;
>  };
>
> +static int ref_tracker_cmp(void *priv, const struct list_head *a, const struct list_head *b)
> +{
> +       const struct ref_tracker *ta = list_entry(a, const struct ref_tracker, head);
> +       const struct ref_tracker *tb = list_entry(b, const struct ref_tracker, head);
> +
> +       return ta->alloc_stack_handle - tb->alloc_stack_handle;
> +}
> +
>  void __ref_tracker_dir_print(struct ref_tracker_dir *dir,
>                            unsigned int display_limit)
>  {
> +       unsigned int i = 0, count = 0;
>         struct ref_tracker *tracker;
> -       unsigned int i = 0;
> +       depot_stack_handle_t stack;
>
>         lockdep_assert_held(&dir->lock);
>
> +       if (list_empty(&dir->list))
> +               return;
> +
> +       list_sort(NULL, &dir->list, ref_tracker_cmp);

What is going to be the cost of sorting a list with 1,000,000 items in it ?

I just want to make sure we do not trade printing at most ~10 references
(from netdev_wait_allrefs()) to a soft lockup :/ with no useful info
if something went terribly wrong.

I suggest that you do not sort a potential big list, and instead
attempt to allocate an array of @display_limits 'struct stack_counts'

I suspect @display_limits will always be kept to a reasonable value
(less than 100 ?)

struct stack_counts {
    depot_stack_handle_t stack_handle;
    unsigned int count;
}

Then, iterating the list and update the array (that you can keep
sorted by ->stack_handle)

Then after iterating, print the (at_most) @display_limits handles
found in the temp array.

> +
>         list_for_each_entry(tracker, &dir->list, head) {
> -               if (i < display_limit) {
> -                       pr_err("leaked reference.\n");
> -                       if (tracker->alloc_stack_handle)
> -                               stack_depot_print(tracker->alloc_stack_handle);
> -                       i++;
> -               } else {
> +               if (i++ >= display_limit)
>                         break;
> -               }
> +               if (!count++)
> +                       stack = tracker->alloc_stack_handle;
> +               if (stack == tracker->alloc_stack_handle &&
> +                   !list_is_last(&tracker->head, &dir->list))
> +                       continue;
> +
> +               pr_err("leaked %d references.\n", count);
> +               if (stack)
> +                       stack_depot_print(stack);
> +               count = 0;
>         }
>  }
>  EXPORT_SYMBOL(__ref_tracker_dir_print);
> --
> 2.25.1
>
