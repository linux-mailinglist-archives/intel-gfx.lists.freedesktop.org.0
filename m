Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BD62546B5
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Aug 2020 16:23:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEB766E444;
	Thu, 27 Aug 2020 14:23:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com
 [IPv6:2607:f8b0:4864:20::f42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C90BF6E444
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Aug 2020 14:23:47 +0000 (UTC)
Received: by mail-qv1-xf42.google.com with SMTP id dd12so2674307qvb.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Aug 2020 07:23:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cmpxchg-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=BmSkU8kL1DJIMf//B6UvwY8ukjXeH0WHbYlFQli5/Kw=;
 b=KPqGwrmsmOIuf+JiWEW/k7gGWQ1y3K+MpxQ+GlJBR4JHV9vGFTTbjyFMl+FZ4Y0eR1
 K2BXbisksDsJdOWmVO1uqUYQ2h1rz6x4zhmDciS7F7QXhAv9oK2efTTjrKFY2lV0MX2h
 m+NX4PEHBJLAtiNCQ+E62vD9YoMqRVe4nQ2rLdY2M6j+IN9GUIPk+F93i5PMufggiU+5
 7qfQtxk5IGmbE2ZD7qvuDqJQO8zKxEiYo6gkbc90Yi69wGk+9eBBpz/JoSeL/G/aFyFt
 vrKHByeeVrxLF5cwGuOVUkygA2VuBjAX42oiZQSqxkRduIvG36gg5Hfhjg+H7Ukg95zP
 RpMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=BmSkU8kL1DJIMf//B6UvwY8ukjXeH0WHbYlFQli5/Kw=;
 b=SrLFkkEHCe0ldwwciU/ZUcaQvNz+1hdw7nhVe55NqwY4ZO6VKGVhM8ehEaab1LlRD6
 SMLuZcjNQntZSz90fwRf0mdwHZD5rozLIWwi+WCPH4SrK3g9PBJXaVhdMZIA6RBgFfvx
 fEMDMAgFah9xg0f7O89JvBzG2iZZALqzGVQYXfTnsTRa+ja0I25YxeZQSHCRVPzxo95j
 YrTCZmWzm7Q39q9xDlnArw29kRaxcVoL+eEkBUBImr5lxC5lKRhnKwDzaiWRsa/Q8DKG
 28db1ak2QBGbcYmUAwJJ9SswpSQaYkKKvxTLZpzSX6vDlX+xVrnOo3jROhnqbd+Z1b4I
 D/7w==
X-Gm-Message-State: AOAM532TwFAq3KpVAKFybERZ2LyDzJBb8RoHLmtAyJXUqRpqEYwbBgkR
 5frIexCR3cqEsrtMY8DlXkqd/w==
X-Google-Smtp-Source: ABdhPJxeJ4y+twhjLH2tJgCPbWVuyl+hfRB8UMwjlhngOikJ6bWHbwUXxgZd/BLJ9LZT047bUSDjHg==
X-Received: by 2002:a0c:ffa1:: with SMTP id d1mr19299175qvv.36.1598538226887; 
 Thu, 27 Aug 2020 07:23:46 -0700 (PDT)
Received: from localhost ([2620:10d:c091:480::1:412a])
 by smtp.gmail.com with ESMTPSA id l64sm1953780qkc.21.2020.08.27.07.23.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Aug 2020 07:23:46 -0700 (PDT)
Date: Thu, 27 Aug 2020 10:22:29 -0400
From: Johannes Weiner <hannes@cmpxchg.org>
To: Matthew Wilcox <willy@infradead.org>
Message-ID: <20200827142229.GB1002856@cmpxchg.org>
References: <20200819184850.24779-1-willy@infradead.org>
 <20200819184850.24779-3-willy@infradead.org>
 <20200826142002.GA988805@cmpxchg.org>
 <20200827125941.GG14765@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200827125941.GG14765@casper.infradead.org>
Subject: Re: [Intel-gfx] [PATCH 2/8] mm: Use find_get_swap_page in memcontrol
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
Cc: William Kucharski <william.kucharski@oracle.com>,
 intel-gfx@lists.freedesktop.org, Hugh Dickins <hughd@google.com>,
 linux-kernel@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 linux-mm@kvack.org, Matthew Auld <matthew.auld@intel.com>,
 Huang Ying <ying.huang@intel.com>, cgroups@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Alexey Dobriyan <adobriyan@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 27, 2020 at 01:59:41PM +0100, Matthew Wilcox wrote:
> On Wed, Aug 26, 2020 at 10:20:02AM -0400, Johannes Weiner wrote:
> > The refactor makes sense to me, but the name is confusing. We're not
> > looking for a swap page, we're primarily looking for a file page in
> > the page cache mapping that's handed in. Only in the special case
> > where it's a shmem mapping and there is a swap entry do we consult the
> > auxiliary swap cache.
> > 
> > How about find_get_page_or_swapcache()? find_get_page_shmemswap()?
> > Maybe you have a better idea. It's a fairly specialized operation that
> > isn't widely used, so a longer name isn't a bad thing IMO.
> 
> Got it.  find_get_incore_page().  I was going to go with inmem, but that
> it matches mincore sold me on it.
>
> /**
>  * find_get_incore_page - Find and get a page from the page or swap caches.
>  * @mapping: The address_space to search.
>  * @index: The page cache index.
>  *
>  * This differs from find_get_page() in that it will also look for the
>  * page in the swap cache.
>  *
>  * Return: The found page or %NULL.
>  */

Nice work, that's perfect.

> I was focusing too much on what the function did, not why it was doing it.

Me too.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
