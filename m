Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62787253303
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 17:10:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA6E86E992;
	Wed, 26 Aug 2020 15:10:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com
 [IPv6:2607:f8b0:4864:20::841])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE7236E992
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 15:10:41 +0000 (UTC)
Received: by mail-qt1-x841.google.com with SMTP id t20so1599376qtr.8
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 08:10:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cmpxchg-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=vg8N6XsbIE7lvZX/pCZOFe+OtpGR0YWlM+DD8uHDUGQ=;
 b=VAOKpGG4Zi1L0nHk3pQChVy6LRCqLG0qD/7fwLdWBi9XbsPa+O7Uq2p7C7i1gtvxuF
 yUiWcAjIIr7W3J71zlqtWD7t2XecOSMv4Z8Vo9D22AEnwSYBdhp9bLlcsTyqyVT0PkOm
 6lQsFFPn4vjC5shx4wLOdylw9FIQcFWlFd3ZTCqMXpqDORJ6S0UXlw3Q0fAoeya9nGcK
 3KyT/337ybzoMJsqTLWcEEqoUj/7b0O+aIgq4feNby+j5A3AAgkMjCFhu93HxCQ+qRgQ
 M0iItYBDqEZWD0cxnCQ3JfuMG9LqTb1O1DvejdQunzJkmhaRRPNY6924yuSU0CZRbhW2
 Mkqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=vg8N6XsbIE7lvZX/pCZOFe+OtpGR0YWlM+DD8uHDUGQ=;
 b=j8eGkurGuO9a1tiewZ6EUt5ZUIP3KeYrU21uws5Or9lX5zqvnUHlDyRvCWPsgc6u4S
 BoeBZD1Zw8M+PJNc9jH5mDurke1kG0RJ1SLnplVPG4w+tgmvxKdGxOSSL/KWjSAntSQn
 CfzQ714epsX3TEIdou/iUN/22IV39FD4ZrSeXw7X88hx/FHMG2FVg15QIHfBs481Fhu9
 Zn4CTXfDA3KBMuWRrwlzOi+69uCsQkIT7XYoqFvhX2uQmSzGir72Y8eRKX+WVZSfa5us
 o+aWLy8BLrJPHYT51zbB43nRDsEHZASoMV3fo/Vof8mdHYkx302s6QlieohyxfHQwpKa
 uWvw==
X-Gm-Message-State: AOAM533OXRXuWttPlyYhhROEFj1w+F87C94AKA8COg0RA0UksXJE2+fN
 0PBwNbE3evQi9babwxzbTJa/bw==
X-Google-Smtp-Source: ABdhPJyt5sPyNEvrEG8BF3rvteWdGY+/4wN0nkQCox0ECjk0O8GV0igfnvyvxHfWRXyOyeHkjwh8dw==
X-Received: by 2002:ac8:1ab3:: with SMTP id x48mr3056695qtj.153.1598454640731; 
 Wed, 26 Aug 2020 08:10:40 -0700 (PDT)
Received: from localhost ([2620:10d:c091:480::1:f52c])
 by smtp.gmail.com with ESMTPSA id e21sm1802330qkl.88.2020.08.26.08.10.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Aug 2020 08:10:40 -0700 (PDT)
Date: Wed, 26 Aug 2020 11:09:25 -0400
From: Johannes Weiner <hannes@cmpxchg.org>
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Message-ID: <20200826150925.GE988805@cmpxchg.org>
References: <20200819184850.24779-1-willy@infradead.org>
 <20200819184850.24779-7-willy@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200819184850.24779-7-willy@infradead.org>
Subject: Re: [Intel-gfx] [PATCH 6/8] mm: Convert find_get_entry to return
 the head page
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

On Wed, Aug 19, 2020 at 07:48:48PM +0100, Matthew Wilcox (Oracle) wrote:
> There are only three callers remaining of find_get_entry().
> find_get_swap_page() is happy to get the head page instead of the subpage.
> Add find_subpage() calls to find_lock_entry() and pagecache_get_page()
> to avoid auditing all their callers.

I believe this would cause a subtle bug in memcg charge moving for pte
mapped huge pages. We currently skip over tail pages in the range
(they don't have page->mem_cgroup set) and account for the huge page
once from the headpage. After this change, we would see the headpage
and account for it 512 times (or whatever the number is on non-x86).

But that aside, I don't quite understand the intent.

Before, all these functions simply return the base page at @index,
whether it's a regular page or a tail page.

Afterwards, find_lock_entry(), find_get_page() et al still do, but
find_get_entry() returns headpage at @index & HPAGE_CACHE_INDEX_MASK.

Shouldn't we be consistent about how we handle huge pages when
somebody queries the tree for a given base page index?

[ Wouldn't that mean that e.g. find_get_swap_page() would return tail
  pages for regular files and head pages for shmem files? ]
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
