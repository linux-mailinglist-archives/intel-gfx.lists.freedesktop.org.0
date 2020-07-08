Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6454218D21
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jul 2020 18:39:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13B9C6E55E;
	Wed,  8 Jul 2020 16:39:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 373026E179
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jul 2020 16:39:33 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id e15so24832408vsc.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Jul 2020 09:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ECC5fairRd9AE0++TWLBa/JLbUc1yxZIkBKEVbD0uh0=;
 b=rrRMSgeYuBCQ5HmAdv141NuwA4hExqTdWpo9dzkdOF57QxDxFx0BxkvqOWlHZdpavX
 Hd+RYoRsdY3E6O7615YForgSb4ZpXHewtDBgetn9kx/EFus7hY/poi1o2p6qNgQw6lCI
 nJ3jmGQ+zjJhVOGCWjFlHrA67F2iUJUpfmLU++DvKfSe72t+X5ahSCBuIjRwjMQ4e64e
 6Zyvnwfv4s2oWjS2+B+CushrMKNXEYng25rSolQK90gqnSPMhlsMrqlUoGbwKoGtIdA3
 gQ7XoKn5tikcXe0TVgxa1b4nbvC2lwlsHcyrLbXMNqKdC2WR9kwcFxMWHNQ7+49yHLQp
 Yddw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ECC5fairRd9AE0++TWLBa/JLbUc1yxZIkBKEVbD0uh0=;
 b=MSM2b88l620LLsNUyS3559nrosKr6mzfl2mRZ0F1JGlAuNBzr3Ki/NQvqH8WXu4v4c
 4R4PNYXg1eR7jC+hK1LyzjW6w86TMYGOFPaOYS8LVO9LUyiO7h1LTpZWlC67GitoMk58
 raNY7QTkcbn0xITDUbAKj+5Ugkh8vOez0TpWf/LnI+E+fZnUtLXz0NT2DKxPvtkHyrsu
 EpKb9rvyRF5p8mMJpzz68dot5hI982DA7Q0V6jbcdmKtRyJpwNeQDXO+viazcUQ9hXOB
 4afWeLO2fQh93DIXIaxCF++WjF6FVfMv/kMKwkPiMSDTQZO4/E9ZkiwsFIVWNOq7SUuQ
 Z8MQ==
X-Gm-Message-State: AOAM5308HR4xCOr7u5OvQLKXDCVdtZs78TAKPEtwis0KLdDIhIEtsOJF
 ooMHCulvdAdEYYIq/UCbwo/JjYurxcBdoY+ObCcXKbzy
X-Google-Smtp-Source: ABdhPJyZaIIrIY8uJlmFz1kVMtUTPVZUoofWhkHDXWQvy616wHmZXVdyL0Nry1wwkWPFVerRur1r8/fXxyPfQYIpons=
X-Received: by 2002:a67:2d8d:: with SMTP id t135mr23414618vst.23.1594226372362; 
 Wed, 08 Jul 2020 09:39:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200708134742.727-2-chris@chris-wilson.co.uk>
 <20200708143539.24625-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200708143539.24625-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 8 Jul 2020 17:39:05 +0100
Message-ID: <CAM0jSHOvbaA80B=GJFpS4GDs2qzt6bZ87HrK8hY53PwjtuSKPg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Release shortlived maps of
 longlived objects
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

On Wed, 8 Jul 2020 at 15:35, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Some objects we map once during their construction, and then never
> access their mappings again, even if they are kept around for the
> duration of the driver. Keeping those pages mapped, often vmapped, is
> therefore wasteful and we should release the maps as soon as we no
> longer need them.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
