Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BE72209EE
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2020 12:23:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E6646EA7D;
	Wed, 15 Jul 2020 10:23:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com
 [IPv6:2607:f8b0:4864:20::d2a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7D856E0D2
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 10:23:46 +0000 (UTC)
Received: by mail-io1-xd2a.google.com with SMTP id a12so1619923ion.13
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jul 2020 03:23:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=basnieuwenhuizen-nl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Z/JLbNZazA/j0a5kNivQXd8pY24GFHoSwTmJDj+hHVw=;
 b=ehu9Iy4fcEWGFJMDKwhB0NOaSI98wDmGtdkltCrGbK7d905qRhahmAx7Hb1kVmptqh
 TtU9W49zAs6hTR2KfxOWtGbsYS0RiLcjLGdqGNzJajLlzbhHmCYrzec1xLp47e2RxiGC
 3dgI30a3OyW3JD8FOtokh7Whiw9HhABYwPfT6J/LYzHJYQBK6JrZKTid9zq9jRpTocTp
 b3u/X3g3eIsnbAEtmfH7414Q0PYfnBSaouxofi3aXXnSz4e1gbnHS8U7GOhq52unGBRC
 HSJ2Qe9twi++3AOiemhLBjKuS0a58tIzJtRK29lU63F2Wyygk9ezalLBDha6KcpDgbig
 tSiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Z/JLbNZazA/j0a5kNivQXd8pY24GFHoSwTmJDj+hHVw=;
 b=tk5geghUe87PkZEAOpsAQXqawrk+PVcQcTpTYVy8BrP6eoKZhVEI2+neKbV68we/vh
 BZ4bkjBJGY/Lll2XTfCxjPGRuUJNYdrAvRLnlTwokQixmRWPPZjJW7N/5L0uZnX7NJFD
 91asJlFiaKsaPTOZPBm8RmiebkOkke13rcfz1sxD7acxlef2wbEudK3tBwKz8V/ccask
 LsdUgP90hrn3bQrL/h0QmvER9IZ78SSPDQdDZWCknWv4Hw/mIJhNeB0cFYMFvMAau4YR
 oJhkWSIX2kQM4WUk3zJcvxRFnFI6gx7XHt5ld+GdMYaEUsoRYyskiBwUKmi6WdwPTKQg
 uX4w==
X-Gm-Message-State: AOAM5313BxhNYR338TdePccqPXJVKvULOxqk/v8P8on/DQlLWvtIAV4a
 rJB7+imlYjQUCZu3au5dgHcXpO4dpz4pplJX5mEH94X7MNE=
X-Google-Smtp-Source: ABdhPJzfXxWLaUn7LtXuIPX19z25siA7keSJghcbsWmdG8+Bf0/gBcZ6KNciA6hKx2DLP+nbyW3TPoGclb8Qwk6esJk=
X-Received: by 2002:a05:6638:14d3:: with SMTP id
 l19mr10871475jak.25.1594808625871; 
 Wed, 15 Jul 2020 03:23:45 -0700 (PDT)
MIME-Version: 1.0
References: <20200715100432.13928-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200715100432.13928-1-chris@chris-wilson.co.uk>
From: Bas Nieuwenhuizen <bas@basnieuwenhuizen.nl>
Date: Wed, 15 Jul 2020 12:23:35 +0200
Message-ID: <CAP+8YyF9djTo++3Gww2NNkOE_=fu9n+HzjoN7e78pVgJf_SP7A@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] sw_sync deadlock avoidance, take 3
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
Cc: intel-gfx@lists.freedesktop.org,
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Chris,

My concern with going in this direction was that we potentially allow
an application to allocate a lot of kernel memory but not a lot of fds
by creating lots of fences and then closing the fds but never
signaling them. Is that not an issue?

- Bas

On Wed, Jul 15, 2020 at 12:04 PM Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> dma_fence_release() objects to a fence being freed before it is
> signaled, so instead of playing fancy tricks to avoid handling dying
> requests, let's keep the syncpt alive until signaled. This neatly
> removes the issue with having to decouple the syncpt from the timeline
> upon fence release.
> -Chris
>
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
