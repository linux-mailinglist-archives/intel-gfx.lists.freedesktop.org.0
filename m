Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA9219F812
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 16:37:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1636C89E1D;
	Mon,  6 Apr 2020 14:37:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com
 [IPv6:2607:f8b0:4864:20::e44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 167E889498
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Apr 2020 14:37:24 +0000 (UTC)
Received: by mail-vs1-xe44.google.com with SMTP id s10so9909589vsi.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 Apr 2020 07:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yhmI7JX+u9v8h9Wpp3hcwiv8u647Y8mr+tfnc8x2xSM=;
 b=eLWAn6gSwpbmDmc5tMCbHgqnct4Ffav79d8c3CXEJqHxwG+EiJ8jzeusmGfFjcycO3
 UHEi51LKt3Pya6eE0IPcw3FPzxc1Hrd8cjBY4BxBmkzjBm7FRbHZ+9I65Qs6npLUB8iu
 vMOylkFXvpmLM4vs6YsDYaLsMOhYHTXq+dh6x3zP8c7P6SZaHmzxJDxME4h/nyHsB80B
 4tiKD3jkUqS7YSEJK/7wT562CViqrslex4gZZIcFfrosMnzJDDeVvoYLJyFgZAtLNaax
 ncBRQyuCnDaOCWMGO0a2soLQEG1SIqn+ciR8s0nq/8lwYcodXtNOpdOJz8SBWjVBZURb
 dGZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yhmI7JX+u9v8h9Wpp3hcwiv8u647Y8mr+tfnc8x2xSM=;
 b=jyXym5/S3g0N4b8S0+fzUL8MYX7i3/1nlYObrIY+QEukkjpKqW0rXJjVxNCff3tyoi
 Px+tPzLEK/OXk9VsE+nV4B9GUWZ3OeEetWqkaxd2cgb65eg+OBjl3rK3YiGQxcYEUMZx
 Vd1CzxjvsrT3s3FZUENHMVJUvL5KMOPq7KZ4ol7eYaD6tHKMKd0TBFbCTxa0UiUU+6pp
 Gt3anrgEaBkbuYfD6BaohHFQW1mJPbx/kvB5DB/6Xl81KdqI+tBE2UkkgLtXA6RicWHV
 VhAL5l/wBEd4isqx7mTkhEq57Fo8w+3ag28stxhT7IEU123RPZWjH7YPQC3Atngrj24m
 xrLw==
X-Gm-Message-State: AGi0PuZ3twjzQhFcRyvdKLRWLWbpJuvNDi9dLkwFz9/eMYI4q9GTISaH
 ZR9gam+jGLdXzihYhOv+u7rZiD+OX7zige9jZZ0=
X-Google-Smtp-Source: APiQypL6kZKfeyJxjLFq1mmuv0o9XOXpFUIIqtW3L5V9SPpk0X2z6EB9eJ9k/W05FkvxUQSYJXtK+WGFYhlq3zasZ/4=
X-Received: by 2002:a67:e44a:: with SMTP id n10mr15060963vsm.178.1586183843235; 
 Mon, 06 Apr 2020 07:37:23 -0700 (PDT)
MIME-Version: 1.0
References: <20200406114821.10949-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200406114821.10949-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 6 Apr 2020 15:36:56 +0100
Message-ID: <CAM0jSHPMALu5LcGLJBw+UYoZjVB23mQv94H2gsp0otSx9=ewHg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Flush all the reloc_gpu batch
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
 stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 6 Apr 2020 at 12:48, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> __i915_gem_object_flush_map() takes a byte range, so feed it the written
> bytes and do not mistake the u32 index as bytes!
>
> Fixes: a679f58d0510 ("drm/i915: Flush pages on acquisition")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Matthew Auld <matthew.william.auld@gmail.com>
> Cc: <stable@vger.kernel.org> # v5.2+

Yikes.
Reviewed-by: Matthew Auld <matthew.william.auld@gmail.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
