Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 405922FF168
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Jan 2021 18:10:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2576D6E0B9;
	Thu, 21 Jan 2021 17:10:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2d.google.com (mail-qv1-xf2d.google.com
 [IPv6:2607:f8b0:4864:20::f2d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D12E6E0B9
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 17:10:29 +0000 (UTC)
Received: by mail-qv1-xf2d.google.com with SMTP id h21so1234636qvb.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Jan 2021 09:10:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=oB6Jbib8MKYgvUJj5gsQNhJelmOaFrfkjWIGisik1dQ=;
 b=AAx9JIgtGRLGnPalx2pyJjONNiI6gGRCR2ltp4d6s+fp3RUYM/ScQJAyDR6wf/8hfz
 Ug7i7WHvFQ3sqHumeqpUOrN+o+3nh1SOtwxCSdqF+FEqHUEZVmJzGmT4rcBH2OV3RufI
 vESinK/th24OVf6KZ3hMTd3Tugc2BZxJZA9AtVolUUQDPRlNg89XNlhFIlhIlh9pzLIj
 p00bhtXVb7frulowDDu7A4rfqDb9x0vGkBurXxbK3QSidxyTmw/qFFRk90Hkqo+G0J64
 IuBcn2sbe74+KP1YE7vEHNfke1P/tDRn+oOXjHWZJhg33C08tereoMUePekQGP63ie7T
 01xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=oB6Jbib8MKYgvUJj5gsQNhJelmOaFrfkjWIGisik1dQ=;
 b=Ydc+6tucD3QPZwReX9wmC6W6nlt/mfgg16HugUOQ1Rf1/37E1xFjomwYQhyDRbJocy
 J6R6qSWIwcaxWdM6PPi1LGNf+U8P2MziR5UnpBd1Xih0RND1/Kt/wPSfA34zwMD3f2qH
 K2/whrYbc9heF91Z4SlzYKYXLdy1bLbH7hPRh5amYPi8lLAoOC7mr7t9xub9EhjRsAZe
 azw3Kk/JKR3/q0LjmojKiigFECWoktlQoNm0KTXNE/UoClORXr3rjf70vZRxoDAIaGaD
 p3auZw86yyl5THENOf3uXrstPd6smyx5/5zFV0K9oDU0lC6ddoUsEZAmNtqvH2sBK6D4
 ECHg==
X-Gm-Message-State: AOAM532JsyEwkRoLynlY1D377smvc4lAjKg1Qv55gDB0IkECmFQ13NC4
 TObQvqZ4npjZrmuuGzoR7vJKFAy4Os/SBZRVV+LVQUNfsPc=
X-Google-Smtp-Source: ABdhPJz4Fdc++A+dKNpQkRvtW0gN+BdfJrpOhp3034ZEDjq60+vU6tvcIk3N6CXDvUoAOe8jv0yNYe7PCxuJ4Rq2A/g=
X-Received: by 2002:a0c:a98c:: with SMTP id a12mr538947qvb.43.1611249027585;
 Thu, 21 Jan 2021 09:10:27 -0800 (PST)
MIME-Version: 1.0
References: <20210121124932.2143-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210121124932.2143-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 21 Jan 2021 17:10:00 +0000
Message-ID: <CAM0jSHOHkZhivgi-X37W2rxYQHm1vbqB8uzAVYexEjuwE0LxSQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gem: Remove special casing
 from reloc-gtt
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

On Thu, 21 Jan 2021 at 12:49, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> By observing that we only use reloc-gtt on objects that are device
> coherent and idle, we can avoid the set-to-domain call. Then noting that
> our preferred partial GGTT mapping path automatically copes with tiling
> (it does not use a fence) and handles all the error cases of pinning,
> that dramatically simplifies that branch.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
