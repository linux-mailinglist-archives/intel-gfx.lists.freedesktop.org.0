Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C961248E70
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Aug 2020 21:10:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7943F88249;
	Tue, 18 Aug 2020 19:10:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe43.google.com (mail-vs1-xe43.google.com
 [IPv6:2607:f8b0:4864:20::e43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C79CA89F0A
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 19:10:45 +0000 (UTC)
Received: by mail-vs1-xe43.google.com with SMTP id i129so10701731vsi.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 12:10:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=V1mheeWYe5/583KMdcNw+afJRvLj24Ac7Ohg+3aa4vQ=;
 b=QI0xVGJ2NDYauO9vMvOOxWgDIJQqxhnSqY1HVKQxclBFnpDF5l8CX69BP3LxUeS/O5
 k8w4azanWIk5bdTDqJPLhu5g6a2bi1Nj1w1rVHqt7dlg+H8AAW1mlU7sZ8u+5/KdFjXQ
 S+wfRF5MQJmvSXBIa61ZS6+Wb3l/7X/GWOoPSymJupyT3coxNMs921WfWXc1fcEa/x+2
 uIekvC50c0LeOcSxPjd07NnGKLTHW65wqqjqgR1l3WddgbRC3P/gWoYcggQQuhoNpsiR
 lTiRX8WNgxDvAOxRgiycs34Mn0BrJshvHtIerPGeSjTFrsLS/BXVG/rUWvvwwDO1MBdu
 efyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=V1mheeWYe5/583KMdcNw+afJRvLj24Ac7Ohg+3aa4vQ=;
 b=d1V+HyqY4Oq5j6YlysLGkq4/a6TI3fHPFu5thUTCR3fuh1s7+dFfakwAusmfvMSgsP
 iPchSNnnAbBi5sAAZzq6cHgy1Erk4R2VAAQ4+4iyO+LuhmYjbZliodGa3vB2BMZ9JSTS
 CMJsClabA3tW0vhk11CYvfyQU7iRQHoh+GKlLpyoNeUAEmldJ+4VqC62wFeWyzyDMjWx
 nJA/HNx7mmwkiACPIENlPcirhyO9kksicjJjQkVWaCtQV2jrh4iwMATIU8kyFb4RJD5E
 JjRUMHucBMipK+IWpqasYW2LUlZdcREcMmyONdzHPKp3dyqmLtIf4cZnAp/iuMjSDWUz
 uG0A==
X-Gm-Message-State: AOAM532seSfv4lgVepz/38ZSb1oloif/VwHsX3WdH5OfjGl5skv818O0
 ZOQ7//+MBomCW59YKuXY3pfWI/7uT8+5tILClarv5eE7LGc=
X-Google-Smtp-Source: ABdhPJz6s/HtyBR7bGnYXxSXbQK934xZx+oc7m8oULCKg1InBYaNaGsjxf38rwy55gfRzw0YatKvhegyRwFqIu0z/EE=
X-Received: by 2002:a67:e902:: with SMTP id c2mr13466876vso.164.1597777844936; 
 Tue, 18 Aug 2020 12:10:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200818184312.24299-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200818184312.24299-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Tue, 18 Aug 2020 20:10:18 +0100
Message-ID: <CAM0jSHNLRuX_nUS+wDy2+HYTOM9-w5uHaSqVR6HmOiAt6JTqXQ@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Push the fake iommu
 device from the stack to data
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

On Tue, 18 Aug 2020 at 19:43, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Since we store a pointer to the fake iommu device that is allocated on
> the stack, as soon as we leave the function it goes out of scope and any
> future dereference is undefined behaviour. Just in case we may need to
> look at the fake iommu device after initialiation, move the allocation
> from the stack into the data.
>
> Fixes: 01b9d4e21148 ("iommu/vt-d: Use dev_iommu_priv_get/set()")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
