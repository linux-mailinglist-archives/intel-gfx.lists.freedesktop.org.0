Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B82A13BF75C
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jul 2021 11:16:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F2436E890;
	Thu,  8 Jul 2021 09:16:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x732.google.com (mail-qk1-x732.google.com
 [IPv6:2607:f8b0:4864:20::732])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E19196E890
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jul 2021 09:16:42 +0000 (UTC)
Received: by mail-qk1-x732.google.com with SMTP id s6so2113497qkc.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 08 Jul 2021 02:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=K068V0EGvyxtie72sx1p6wMIdHMYVqtj0DKfTyd514w=;
 b=TEl5h3K3GhRQR4hHmlJVKQc51HagjwF5uNbM5CC2F1bmQBCLY8OWZZ2vriFyytjym9
 EdPljE0er9vhP6/DrEHPbujrCwZGKW9TVytKzbYedPbHjMS/6Up15OWRZ9r1fxHl4I+T
 7kj3fUOJoLqextG1u0LH7Pf1u1n1m0OiJK5M48cbqCBzoxW5GggZTzRZdBcAY53BSfws
 DeyrSMKQnH5vI8R6lqS3pQoEoivDZlfOBPPaV6oKlIxN91mcei79YwClNdPZNkpFy8mH
 edSeO31ZAhEHiDBtZWsWEmNfbAVS7MEVDZibyEcHTwvw6/hrf3QBgFrvxzUplH8gT6Ha
 IHpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K068V0EGvyxtie72sx1p6wMIdHMYVqtj0DKfTyd514w=;
 b=eDqorzVYzPuSrk2UbSzvK8bH8v65Xer/JKF0GAFwFxbDcKxbA7SdHUxTVOg6GBXf1b
 8Z3aHvAzrTAhuNmb2G1AFiAeMN2DSCsbk0/H5I7CC4lfqRHik3ox9c8B/1Js2R2JXsMs
 m7Z3odjfpb7sls7FkkdMC92P8C4AJSiZ6sHsnx4gYeHSMYb/02Ar86e/qzq4aXlUrY+F
 ThuQ9kZoHiTYnMKSXvxmVuRb3N/wQqFKOZF8OxcubBxChMQjLDPXoeFDTW1JQoZtXMaV
 cgq11skPoLlm0jhjR2sg/ud1aiIC04t+CeHrUnk1I18S101dWn+7vQgYezRIrY8foD3p
 d+Jg==
X-Gm-Message-State: AOAM533eVKsB18BCk7XGEtIpEx3dv3jnzPvEoB3cZqP6egD6VJXTKlf1
 UIY+oLfe7a68PAKj4ECARSZjKtv0FJvFzbYmTi4=
X-Google-Smtp-Source: ABdhPJxlkIO7w+qbF4bhqjplbz/eLkDsYW1Qsj92NsPI8QsvoSiQtdjy86X8zaMJn5aw6w4uyEjTHubOFbTACt1Z7qM=
X-Received: by 2002:a37:4388:: with SMTP id
 q130mr29860909qka.460.1625735802140; 
 Thu, 08 Jul 2021 02:16:42 -0700 (PDT)
MIME-Version: 1.0
References: <20210708071222.955455-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20210708071222.955455-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 8 Jul 2021 10:16:15 +0100
Message-ID: <CAM0jSHM_1xqB43oYydS=i3kjyHPYiQn6rSbPymVvH=nN-eTQaQ@mail.gmail.com>
To: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH V3] drm/i915/adl_s: Fix dma_mask_size to 39
 bit
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

On Thu, 8 Jul 2021 at 08:21, Tejas Upadhyay
<tejaskumarx.surendrakumar.upadhyay@intel.com> wrote:
>
> 46 bit addressing enables you to use 4 bits  to support some
> MKTME features, and 3 more bits for Optane support that uses
> a subset of MTKME for persistent memory.
>
> But GTT addressing sticking to 39 bit addressing, thus setting
> dma_mask_size to 39 fixes below tests :
> igt@i915_selftest@live@mman
> igt@kms_big_fb@linear-32bpp-rotate-0
> igt@gem_create@create-clear
> igt@gem_mmap_offset@clear
> igt@gem_mmap_gtt@cpuset-big-copy
>
> In a way solves Gitlab#3142
> https://gitlab.freedesktop.org/drm/intel/-/issues/3142, which had
> following errors :
> DMAR: DRHD: handling fault status reg 2
> DMAR: [DMA Write] Request device [00:02.0] PASID ffffffff fault addr
> 7effff9000 [fault reason 05] PTE Write access is not set
>
> 0x7effff9000 is suspiciously exactly 39 bits, so it seems likely that
> the HW just ends up masking off those extra bits hence DMA errors.
>
> Changes since V2 :
>         - dim checkpatch error solved
> Changes since V1 :
>         - Added more details to commit message - Matthew Auld
>
> Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
> Acked-by: Matthew Auld <matthew.auld@intel.com>

Pushed to drm-intel-gt-next. Thanks for the patch.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
