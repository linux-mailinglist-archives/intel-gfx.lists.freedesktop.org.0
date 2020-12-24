Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D9E2E2759
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Dec 2020 14:28:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FD0889C55;
	Thu, 24 Dec 2020 13:28:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com
 [IPv6:2607:f8b0:4864:20::830])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B7C589C55
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Dec 2020 13:28:28 +0000 (UTC)
Received: by mail-qt1-x830.google.com with SMTP id c14so1476434qtn.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Dec 2020 05:28:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jFI5W9K0OwNCe1kUuUW6GpYnLBHNY5kaQW+U+QdQwPw=;
 b=piO4Kkzz/xUQlh9R4uVGekl7ucSGlOppJUL118HIv+rp9hrRRcw1G2QJWf+5TDK/le
 MAUMs3c0HFveYkCSoKTvGYV0XQhZkNDogkUQ8xL3wYoUgGX5jRIoPqXRDdZRZVC/Ixek
 I6vJfewbmgeuaKbD+LC1XLIS/qkOeWqCM8tlPUb3QEd4oXHJRSjEXg5ZYtl/SBXMRfXb
 oyamJDro7JHzAx/xWVJkjJ6a0K5c/UcmFOPUykwES7axPbZXNDWDj0B1t9osS0eGrWk5
 MdGVB0dqLlKTpePsblB717WpCvhFa1JN7ctByb4K5uQZ0k3PKbkdpoC23hCvQgDfYr6W
 /1Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jFI5W9K0OwNCe1kUuUW6GpYnLBHNY5kaQW+U+QdQwPw=;
 b=V4xJs/7epXXUH82f+OMTAL0lfQgYZCWeSiI2GoKA5x6o+Ix5jDJQ+7lh0cHR0uQEUc
 Wxexx9uJOPy92Br1v9+255BjXtfwLXcdzkpt0ByQ09p+y7551iRryDd2tiyEclK8ZUiv
 OwK3my3Vlm7JqKIVe/IPb3yMLvF/d6MRgVkBSqtK4PzerlTNr+l1ZJEofzjm/CS5cLki
 +kXir9WLnTBEaQfpoAkK+f71u9ffREVEcJNhBiHVixWs+FDKk1W14vZQXj30bJ4+z3Tv
 MjK5blhxTpGqImOw/8UCe6+A/xBNf5BkyNQDT6Db/hFCO+23rkUB8OqfcYOhOD4TrcZX
 Um5g==
X-Gm-Message-State: AOAM531S090riB4RxCWCOmp6k+rz3+BtwPq1wG4yXSkey1pjYiNwabVD
 +nmh688FFqomTaG1/OkQZg/FJ/Z6jaAKG+gob2JO96KX
X-Google-Smtp-Source: ABdhPJyFR42ULoFbwZekEpEsb6onPVFinoil4qkPKKeVrwgjp9kADFoY2urka90btVBpbAjFO281D97YZy62VNgw/4Q=
X-Received: by 2002:a05:622a:255:: with SMTP id
 c21mr30172612qtx.223.1608816507810; 
 Thu, 24 Dec 2020 05:28:27 -0800 (PST)
MIME-Version: 1.0
References: <20201223111126.3338-1-chris@chris-wilson.co.uk>
 <20201223111126.3338-4-chris@chris-wilson.co.uk>
In-Reply-To: <20201223111126.3338-4-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 24 Dec 2020 13:28:02 +0000
Message-ID: <CAM0jSHM+A8vPk1Rbrk12_2k--XcX2wycJDM7ij+deWgRT8BYiw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 04/62] drm/i915/gt: Defer schedule_out until
 after the next dequeue
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

On Wed, 23 Dec 2020 at 11:12, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Inside schedule_out, we do extra work upon idling the context, such as
> updating the runtime, kicking off retires, kicking virtual engines.
> However, if we are in a series of processing single requests per
> contexts, we may find ourselves scheduling out the context, only to
> immediately schedule it back in during dequeue. This is just extra work
> that we can avoid if we keep the context marked as inflight across the
> dequeue. This becomes more significant later on for minimising virtual
> engine misses.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
