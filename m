Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 270FE4BF97E
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 14:33:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EC8010E66C;
	Tue, 22 Feb 2022 13:32:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb2d.google.com (mail-yb1-xb2d.google.com
 [IPv6:2607:f8b0:4864:20::b2d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A629B10E358
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Feb 2022 23:54:24 +0000 (UTC)
Received: by mail-yb1-xb2d.google.com with SMTP id w63so16270875ybe.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Feb 2022 15:54:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3lC+GIB4kzAe3ece369swUyKHnvK/S1h9xrQbJ/8q+w=;
 b=GOHpLflJrqC43QFF/5GQvG7V2qEcPuaQvtK5vbSduDp5b1yp3G7IW6vFy9EFQmifR3
 R3K6rvushU3hJCS+Q6RbNcy7Y3MCAD1xh9DmsmuJ2Cuki5Tpvo/WJIioUd+G4028WrXV
 6EuITKbzai/dr+E7N6V+RpaG1AFgkgkp6ZhZ8BaDO2LbPeNApEd5+THSlbqAL01gEya8
 0Xor7hYcueU2c9Tbn4MBzNzpxCXuancOC8749h9QPVjrrHJ3E6H1ilmIQGjh55yX4Tre
 yHb37zO9WMY3AhiVF9UhNZkRfPoZ3Oq5BjEJAfTtRCAwySv7PvxrLqZhsd9hjmo9PsV4
 R69A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3lC+GIB4kzAe3ece369swUyKHnvK/S1h9xrQbJ/8q+w=;
 b=4CcMIiOXBF0FI47v4gcf9tRef2R2zScibT3axJSI1x/XmD82kkHB7KyviQcWCqxxTQ
 oDeKDFxjUyLnsG63bsw/+zV9uvbbONWDMLegqnrfVVDXkB54/fkvN0rLuTTit6cUBrWc
 4SPE085Z5DmgQv11ViJI4u87ZIHhbwYjSOikLV5GJPcbb74tA9jh8w2Y1vsnLwjfwX6C
 DBFmpCMJVS4ZgtS8P4/hAkypWFTimJcrmmAK0HzmjXcrKr08kawI0jap7kDu6Jl73tUq
 7kpUTwhg9XIrQJtSz9+0sz4aOq5is3uquAmVZC/YSjA4dVoloio9PlsN68kK9sDfuKDD
 R6ag==
X-Gm-Message-State: AOAM533qzVVw0Dw7p/9qLrtArHU0tQ0TUQdHqS5EGUPeC3mmIv4OoKkA
 SXhdEPTqEBSPQ7z+QZMGjkmVPlXGVCtqF4wx5ql2yg==
X-Google-Smtp-Source: ABdhPJwK0jOhPcM1lDe3429/m25HSYMiQee5DR7/0JGbbsQegVXI/XBsnoJbutUJ1jTG6re1CQZuJ8cXV0HIPfxMSxQ=
X-Received: by 2002:a25:a28d:0:b0:623:fa1b:3eb7 with SMTP id
 c13-20020a25a28d000000b00623fa1b3eb7mr21159078ybi.387.1645487663454; Mon, 21
 Feb 2022 15:54:23 -0800 (PST)
MIME-Version: 1.0
References: <20220221232542.1481315-1-andrzej.hajda@intel.com>
 <20220221232542.1481315-8-andrzej.hajda@intel.com>
In-Reply-To: <20220221232542.1481315-8-andrzej.hajda@intel.com>
From: Eric Dumazet <edumazet@google.com>
Date: Mon, 21 Feb 2022 15:54:12 -0800
Message-ID: <CANn89i+E3z-iXSJh8316KSycYk2VTS-n0E=tAOj23fuDSi1Zjg@mail.gmail.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Tue, 22 Feb 2022 13:32:50 +0000
Subject: Re: [Intel-gfx] [PATCH v3 07/11] lib/ref_tracker: remove warnings
 in case of allocation failure
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

On Mon, Feb 21, 2022 at 3:26 PM Andrzej Hajda <andrzej.hajda@intel.com> wrote:
>
> Library can handle allocation failures. To avoid allocation warnings
> __GFP_NOWARN has been added everywhere. Moreover GFP_ATOMIC has been
> replaced with GFP_NOWAIT in case of stack allocation on tracker free
> call.
>
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>  lib/ref_tracker.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/lib/ref_tracker.c b/lib/ref_tracker.c
> index 2ef4596b6b36f..cae4498fcfd70 100644
> --- a/lib/ref_tracker.c
> +++ b/lib/ref_tracker.c
> @@ -189,7 +189,7 @@ int ref_tracker_alloc(struct ref_tracker_dir *dir,
>         unsigned long entries[REF_TRACKER_STACK_ENTRIES];
>         struct ref_tracker *tracker;
>         unsigned int nr_entries;
> -       gfp_t gfp_mask = gfp;
> +       gfp_t gfp_mask = gfp | __GFP_NOWARN;

SGTM

>         unsigned long flags;
>
>         WARN_ON_ONCE(dir->dead);
> @@ -237,7 +237,8 @@ int ref_tracker_free(struct ref_tracker_dir *dir,
>                 return -EEXIST;
>         }
>         nr_entries = stack_trace_save(entries, ARRAY_SIZE(entries), 1);
> -       stack_handle = stack_depot_save(entries, nr_entries, GFP_ATOMIC);
> +       stack_handle = stack_depot_save(entries, nr_entries,
> +                                       GFP_NOWAIT | __GFP_NOWARN);

Last time I looked at this, __GFP_NOWARN was enforced in __stack_depot_save()

>
>         spin_lock_irqsave(&dir->lock, flags);
>         if (tracker->dead) {
> --
> 2.25.1
>
