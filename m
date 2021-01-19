Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4861A2FBD7D
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 18:26:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A76B26E107;
	Tue, 19 Jan 2021 17:26:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com
 [IPv6:2607:f8b0:4864:20::731])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4726D6E87D
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 17:26:38 +0000 (UTC)
Received: by mail-qk1-x731.google.com with SMTP id k193so1489319qke.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 09:26:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=z8BdSlguMnQpEc7EVbcM2A/DhHj72X5FnIvB6MLxdzw=;
 b=coWaCDP4RuXGKjZlTWvaus4zkjbnPznfs1ckjyDQgQ5QvytStbvNIhWfEXSCzOPYoW
 ljRLiSyybm6XlqPOMNNqzw+uDN0tbE4earJfrPsXMsOvqyIVbi2GuGw15zo1UOuVPuz3
 WTec1lNAF6azDX0BH4qCukhYIaTO0U4m8mf5PuTfRWzMW8BbyN6IeS0OpzL9KzHUBjRZ
 xISnxjL1Qu/Bmdav27YLpUZVuZluv0vjPfHCfc2YucS1M7daZg/mhkQuk7EaXBTwy7ft
 +y6ZEJ2NtoPyqo8AXsTkkWGgZvgnpSj3nmR91Dm+/+fK4N6UsrlbyQ3ZB564k0UgmZQY
 zwUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=z8BdSlguMnQpEc7EVbcM2A/DhHj72X5FnIvB6MLxdzw=;
 b=TchuGUzzt/Sw1dNq01caWoUfraG/Ootnq6ug6mSyLy7Ad1YzC8M0GZDB2dzXOeMB3M
 nI3omoGjN2j+DG8sFOIq32D3UwSabzClNc7HHG5lEHmwha0aBoBuZ+AQpYD4ipILR++R
 OmpO+rjWQysKmJcl8uA07AvS5B5W6744tH0JvuW3RCQ9rE5Lzlz7Mn7jJXEj+H7fQILK
 EB/tGkdsorT79D1ZG02U+y7AwuF5b9pq6TbTAZzV5eF9jAcq5uAr6wYJjoGWUmMMYMDS
 tONfEW3uh9olmzOmeJtBMVplhP5gXejC3xp6YTd/JISCz+akTfGKqShkhasI9Un+jLDh
 lJTg==
X-Gm-Message-State: AOAM5331BeKAiz5RE3fc317hFfP+zm1ABrfItXU1GJonCiXTMli/Osf/
 2gPnv9B7CTCvfdiJZESp0IR/yXKxpvYi9gXZrsPWRLpnq9E=
X-Google-Smtp-Source: ABdhPJzezD2KhTdUbucRmSrgmeA7dRLOoewwv1qW05TCcsbaS7UD2If0VyngtNfCwOoki1Hmzq/zvuDemgF/814NDNw=
X-Received: by 2002:a05:620a:68e:: with SMTP id
 f14mr5327262qkh.460.1611077197433; 
 Tue, 19 Jan 2021 09:26:37 -0800 (PST)
MIME-Version: 1.0
References: <20210119144912.12653-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210119144912.12653-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 19 Jan 2021 17:26:11 +0000
Message-ID: <CAM0jSHOFwZzYpp735Qgc=3fBt62QiXuoC3s_kBZWVp8ePpbmRw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915/gem: Almagamate clflushes on
 suspend
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 19 Jan 2021 at 14:49, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> When flushing objects larger than the CPU cache it is preferrable to use
> a single wbinvd() rather than overlapping clflush(). At runtime, we
> avoid wbinvd() due to its system-wide latencies, but during
> singlethreaded suspend, no one will observe the imposed latency and we
> can opt for the faster wbinvd to clear all objects in a single hit.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
