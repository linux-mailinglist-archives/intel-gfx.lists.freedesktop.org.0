Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3146614E34C
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2020 20:37:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABD876E8EA;
	Thu, 30 Jan 2020 19:37:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com
 [IPv6:2607:f8b0:4864:20::942])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC1D66E8EA
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 19:37:54 +0000 (UTC)
Received: by mail-ua1-x942.google.com with SMTP id h32so1629468uah.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jan 2020 11:37:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VU929v4ztjGxSuSWp+vtS+0PoApl/C7WbCgca5uoQNg=;
 b=d2YDhlo3jRmIitKzYF8xcjckrB/O9XPhjdhIpm/XV+dlbNGR8c0LTrJwwPLZoWDP4L
 8qgp3UOX142psXaSXANDMj1SQpfPVWHjHSyWojfCpyL+tHhVjZAuYL1rERLLfloJBCX8
 jXzO3HJo6PlFxt1tdBh3n0cW2Jc85A9i66WlgQzP9aIucAh33gPAa0PdA7yVIcSv2B3X
 u5A7BqOPNuuXITBDHGmEy2rU/DC38gWJj252VizlOMJ41fx8bezZphwk51uh5rgmzHyT
 nkFuUngh4L6g28qGwONJpXw4Tax6UVI49b4EmqUAVV5eVSJaBVn3xe9PPc55uRsynOXZ
 N3HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VU929v4ztjGxSuSWp+vtS+0PoApl/C7WbCgca5uoQNg=;
 b=b4U7jy8aGD3L8fYbhRZsqmiVhaT1tXP2pfU9/YcQ0Y07k89VKIa5IS1Pb8Aj6XUd0A
 8Qwq3At+ciskQT89u7/DBH+DHSMyEru/qhTab9eP52kiylef+A/z8u/bHEb5bwVB4+9A
 7bgYWMMLEiIu9WDN6xczWTL9VeE5iLxi3i+tfgsiqg5kq5Bhiv/6NyGfeAHP3/Jropig
 7lTYk494BPMsPA+exYt3cFmgouVV5lP7ps5zlfBglqXmClLu3dqc+JXx6fagFqQhoT1h
 btiGMU9tHN5miRUBsypORUs2lHDGuLukuBMjXsj3DypYOS+4Dyay47QMh4ntgf48MlKr
 imnw==
X-Gm-Message-State: APjAAAXK6r4piyGBhC9qSRwlQZwnccbtYkZTClROqxi7sI9Tb5ri6vBH
 x0exjIA+a5poLmMuv6jDKd/slBE+nHbHpZN1mSE=
X-Google-Smtp-Source: APXvYqy0savcPFuHa2CovlJ6EP39pOEo/ciIMglvqY3adcKqV/fsm8tR7jerNzDN/zWCApxy6RnktkX/a3nTakQAI8c=
X-Received: by 2002:a9f:2635:: with SMTP id 50mr3735933uag.2.1580413073934;
 Thu, 30 Jan 2020 11:37:53 -0800 (PST)
MIME-Version: 1.0
References: <20200130181710.2030251-1-chris@chris-wilson.co.uk>
 <20200130181710.2030251-3-chris@chris-wilson.co.uk>
In-Reply-To: <20200130181710.2030251-3-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 30 Jan 2020 19:37:28 +0000
Message-ID: <CAM0jSHM4c4S-SzBoA0VVWtt26heXKxruxX8b-_fvFMEMTvBm3Q@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Use the async worker to avoid
 reclaim tainting the ggtt->mutex
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

On Thu, 30 Jan 2020 at 18:17, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> On Braswell and Broxton (also known as Valleyview and Apollolake), we
> need to serialise updates of the GGTT using the big stop_machine()
> hammer. This has the side effect of appearing to lockdep as a possible
> reclaim (since it uses the cpuhp mutex and that is tainted by per-cpu
> allocations). However, we want to use vm->mutex (including ggtt->mutex)
> from within the shrinker and so must avoid such possible taints. For this
> purpose, we introduced the asynchronous vma binding and we can apply it
> to the PIN_GLOBAL so long as take care to add the necessary waits for
> the worker afterwards.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/211
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
