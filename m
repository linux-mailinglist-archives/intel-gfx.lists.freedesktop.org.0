Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6093819B634
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Apr 2020 21:08:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCADC6E98E;
	Wed,  1 Apr 2020 19:07:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 450086E98E
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Apr 2020 19:07:58 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id u9so635677vsp.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 Apr 2020 12:07:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ODY7ZN4y7WH6Y1bMIA5wl1YCZdnS/8s4ql0R35w3S/U=;
 b=mResdczd0VgM7vew0mBdGAnagu909kR3KHmMhDFv6uJkgUlaGAvnU4VH85r2el+dMz
 33WojcehfJ6s50hZFt+GTzkuSd3H50KCEs1klfN1C9eMcCX1G7bM/zAezSK9EgS14Ik+
 +xIl+XVaXpPb/6LANfRPT0Hn1D+sn4cJ+ZLtc7KArFz3PMnWUnNCrSjtCd1dyAYamWjx
 zcGaS7Zv34zVsGVHQTmubw72kAnFE037LmO/93AIv/LTMuKg1yXdrfIBmEw1qhPuEdKB
 ZKED5v0AxUKKI7mSm98Mr2U1CBo9ZrAaPFwbEjngW9HIo5sKilF4cWR7MJEhFL/SgYur
 EW0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ODY7ZN4y7WH6Y1bMIA5wl1YCZdnS/8s4ql0R35w3S/U=;
 b=fSayRoIXbcrEEx7Xzt1Znx8/Uz7WXjthaKvr4qSkaJ8GFkOvEEmoXKHikFGTDuZjar
 uLiqj/p4YTWgHPNWkZ15Y1IA0YpINLUEJi9T8YMSOUpGuwkWAISNG8GhDW6YOGgNpRRr
 VqWFyXopB9a4lrARbLdMk9hg1O1JzRWflIF1JWleyPIQgHnFtjkYQpJeKcc8h0+HftiR
 3ZwqbSexRWpXlmGotuXsFllTGIPNXnnwjTQLwjmKavoohmsYFPVOmjGAI/6JIHvlvryf
 0LqrZzkT5Jl52cKcpUepADaaT5Y0CY+nq0PY5HUzE+ReC1DDXUDzfiZ0kTSk71aKvcHZ
 MJdQ==
X-Gm-Message-State: AGi0Pub8WH5lDZqhnayIzdUZEu18XwFNdy32zJR0fP2Wmit2IU1ko9ng
 wFEQB3Lgs2UCoo6UWf+Dw46H9hZv8YTeUhUrVgewsYTH
X-Google-Smtp-Source: APiQypL+gmkik6S/kmHVTkAnv+dW+ddgGHoeBtxF7ZM1OI/7KbCUKfUgghcsuPmoGlq+y+VuDZ6pSLcfX16HGbyU+ZA=
X-Received: by 2002:a67:646:: with SMTP id 67mr17645971vsg.34.1585768077377;
 Wed, 01 Apr 2020 12:07:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200331213108.11340-1-chris@chris-wilson.co.uk>
 <20200331213108.11340-9-chris@chris-wilson.co.uk>
In-Reply-To: <20200331213108.11340-9-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 1 Apr 2020 20:07:30 +0100
Message-ID: <CAM0jSHNjtPFrGeiDYzJwF-pB7rTn0iPEHPKNGOhnDaz83LuO-A@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 09/11] drm/i915/gt: Store the fence details
 on the fence
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

On Tue, 31 Mar 2020 at 22:31, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Make a copy of the object tiling parameters at the point of grabbing the
> fence.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
