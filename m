Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2572C197D7D
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 15:49:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E55E56E378;
	Mon, 30 Mar 2020 13:49:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com
 [IPv6:2607:f8b0:4864:20::a43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E59A66E378
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 13:49:19 +0000 (UTC)
Received: by mail-vk1-xa43.google.com with SMTP id k63so4674522vka.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 06:49:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vUwAEAoNHO0pOTy9gREgQ2pB10YVOGFataqGg8rSDzs=;
 b=uU8FkOcjlL8kE1v+ug6+XYmSZVt3Ho8WXFchx75be2dbE+WSWmO0gwNQBgG9KA4aZk
 JeX2eE6hcjCxKoCK+aiBd+pfJ1zUzhtXLTPWFxZ/bojTuFaJBx6tofnJmD80v0ABE73v
 0AnGVf+tnUnN5EzmsXWAe2vFyYxWPlS5V8yLtf8iVO1ouDEqaMqiSWz4XKUBkdl3BpD7
 KJKgiWKDElVkitdsYuQQk3Il1N4BAKcqiwWZ99HlJUb4Yu3tWCehByOxShncA6JjQXcq
 Fz5p2BI7sx4KpO+WQuhVSq5M30r2Mi7LMWTdzOkLg5BUpUfggOgQry85AAW1h8KNKNfp
 fm5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vUwAEAoNHO0pOTy9gREgQ2pB10YVOGFataqGg8rSDzs=;
 b=pngCg+cxEEPJFkq3K9zOMZ2/0eePoIlRoJlFaxc1+8T9mMkkGQm9Vld2ENAZMo889l
 RQgJGbeKO7HTlgeD4xeCu2zv9tgaALL8ue4nqchZBkU/sjWivOHs64WZV4ZK6Ax5C/jo
 kuXU1cUtlVqvwZ33Er3V74qemv9Uc5Ul47bZCq649XenrWrmoOgPVK2jZVy3nhppIgC6
 xQjitXPjdha3wtlSCPlufSHAe6rVsW5tq5av1YK5jKxusfKHEXYSMUhCLl+jI5ryrF0C
 IDMD7k+methMAsWErBftSkf26Q6FWu+3/kjR4grE6M+jr+rcMxpx8Z5dx3OMWtEOMRkD
 Y2Ww==
X-Gm-Message-State: AGi0PuYnMN2y5XaSFjw8CJ7+nOgs+aKkbxFQU7QFww363wvHZUon1N63
 3VmF4kXYPGQEjIfsI5mTxgq1EqTEhgcW1d9D3qmWHkMF0tc=
X-Google-Smtp-Source: APiQypLE7Wl4kYyrvTr5giGJTIgKn0PElIDP8mwE6C+Mg5mgGFoNzmtisY+k01tWafyK0OvH9YPUqGHy/xc2U3BuObQ=
X-Received: by 2002:a1f:c183:: with SMTP id r125mr7970116vkf.14.1585576159067; 
 Mon, 30 Mar 2020 06:49:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200330121644.25277-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200330121644.25277-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 30 Mar 2020 14:48:52 +0100
Message-ID: <CAM0jSHNdGV2ohbiSb1y0CZrLRHhRVkcjRQQF67P9KDb2adz9xQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Check timeout before
 flush and cond checks
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 30 Mar 2020 at 13:17, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Allow a bit of leniency for the CPU scheduler to be distracted while we
> flush the tasklet and so ensure that we always check the status of the
> request once more before timing out.
>
> v2: Wait until the HW acked the submit, and we do any secondary actions
> for the submit (e.g. timeslices)
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.auld@intel.com>

Rejecting mails again.
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
