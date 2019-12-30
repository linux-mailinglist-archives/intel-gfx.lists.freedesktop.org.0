Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5015612D1BA
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 17:12:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FB5389F0B;
	Mon, 30 Dec 2019 16:12:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com
 [IPv6:2607:f8b0:4864:20::942])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1CBE89F0B
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 16:12:53 +0000 (UTC)
Received: by mail-ua1-x942.google.com with SMTP id o42so11272090uad.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 08:12:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eL3Lb0BDzO1AklFfdypvsNPxE8EchkENWUJQzaJEvmY=;
 b=KqB8jbXy257WBtOs21N7ts+gFK2eBS527gf7yLye0V8NciHPSLVYfnxTuXVX6MO9a4
 vor2KWIpS9xOr473/3jgswqql8sWaCCpfnLebX0+9lja58zQn++xcDho3CSuj9IhXiwM
 c0jM4CCQY5Gh2ycblkVYNn71irJVLwpoCe5CHU8bzrKDKrp3E6NtRPcURF4GJtl+M93w
 FUY6ksj+B9Fr/jkWaroKPfnOj85w5dNXgnhYo+L1w5hN179Eq3Kgv5VrX/AE1Alib+Ir
 vJAnbwD+pSraleKa3OT31OU5MhjQ7LeB7MxZOS8F06cvJpynHHJb/0mmQMvNHCtRANO5
 T60w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eL3Lb0BDzO1AklFfdypvsNPxE8EchkENWUJQzaJEvmY=;
 b=mYtP42RbT9jCUqVJ7VfSOgnif+yPazENtQDYXAywDnvbgDWYe8SYaNgDhF2GmsS2fV
 Bv4u0jZ1n4c30cS1D8ayBfxcK77qnvflUiFX5WPmpWNURUJcy+iSihD/6HUnFR4gnI8D
 RSeBbFZ7Vv3H78AjPU2A5jMYsyrDiUvkENzhF/onBKwTKxE8bF9dfRtgRBg9/U9RETlU
 nMSvKEmmeJI0D1jugh1jhhx4jFbDdo9BjVawlWTBImHXWa8cjwHfDRRb4DNjdFojVnGX
 D7xx/5Q3zjT0bEdHrdH/5+F8mt469cmp34uCpA/q8EuZkzjwfTqB3ZQrb5gaRA7l87CA
 N2Yg==
X-Gm-Message-State: APjAAAXEooE/xQ4rlnyPoge+XM+zJktc042trOzZ3NudPHRBWMi4tRlg
 n2Wrf7Hai78rXyZ9gnQOzm1TZ56kIcfTnQpcKBw=
X-Google-Smtp-Source: APXvYqyXKpjarNplCH1oqDnK5Fci2Yvfe89sale/Kh2sgl91oyjg1kCMrzshSK/Ap4Dcg/lJOB65vG6pVe5d6g9lDu8=
X-Received: by 2002:ab0:740e:: with SMTP id r14mr35311742uap.104.1577722373000; 
 Mon, 30 Dec 2019 08:12:53 -0800 (PST)
MIME-Version: 1.0
References: <20191229183153.3719869-1-chris@chris-wilson.co.uk>
 <20191229183153.3719869-6-chris@chris-wilson.co.uk>
In-Reply-To: <20191229183153.3719869-6-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 30 Dec 2019 16:12:26 +0000
Message-ID: <CAM0jSHPYjNA-DkVATtgj6FPUiw9x8TprMYW69o=miUQ5d0WseQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915/gt: Discard stale context
 state from across idling
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

On Sun, 29 Dec 2019 at 18:32, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Before we idle, on parking, we switch to the kernel context such that we
> have a scratch context loaded while the GPU idle, protecting any
> precious user state. Be paranoid and assume that the idle state may have
> been trashed, and reset the kernel_context image after idling.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Imre Deak <imre.deak@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
