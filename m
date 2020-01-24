Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A95E2148D42
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2020 18:51:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0387C6E3E5;
	Fri, 24 Jan 2020 17:51:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com
 [IPv6:2607:f8b0:4864:20::a44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 564976E3E5
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 17:51:03 +0000 (UTC)
Received: by mail-vk1-xa44.google.com with SMTP id w67so874878vkf.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jan 2020 09:51:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hzWxO6IlZ6zjK3rkGBPAM4rACF/qVyER2Jkas5W4YP8=;
 b=dt4NxzgrPDrvO358t2d8L51suxtYSRl3R/u5UyBCtGbsnPEdbZ0iC7X7QMb3taT40K
 6KCha9rx7tSvmukFJELjNpZ3g/RtlC13gwJaIgiIg5XL17FEgAw9o2eXxpUjouW+Qnvh
 GEjB94iQrPmCbP+lCoDjPGTA9MWNBFMPgoMNGPWmvCWk7ICPMAekUyud2RE7slAC7pcp
 1dKg7UkbUnJ8gGESLNuU42sgrSqze4AmS/7nL1HbwIU8NjE5D8XZxbXTLNDdxyzUYmmE
 EFt0tS7qFLWcgpYwquHbjQNqBHLrGoqcy9xtqWYAxSa0ycd6BqrhNuASgMR5joUEKEzW
 whiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hzWxO6IlZ6zjK3rkGBPAM4rACF/qVyER2Jkas5W4YP8=;
 b=gjhimVrk7jSl8q62He4Ng5AikAVjDw1tW2Rtfl9Y1BJz3Mqi9jpRXfHW6RA5L7JVGk
 4wgqKT/8CLmq5tVtowWRt/dWal8C/LnsPStLVDbPAO5mqrS47DVkKVZgaUS7JxjJTf2N
 mtsOfZkeHMf647xGytk4ZQigpFuPqFfU00H1CyAY2hsglbL1QFOt5oafh4USCNWMPliB
 5ZXyH46PKtwDORS4RBH6wiNQ1qnlkHlv3vloleDvP2nbia5UAaXEzPpquSZjkxhqCFOx
 REsYEfCmv20MBmIYCoA1y4EsMMiIjuu/U7PnRejFQN/8/8xnkn3KTPgX6kU3aGv5XWVa
 HCeA==
X-Gm-Message-State: APjAAAVOUWnLcZPN3x3apRiDQRlTNAkOmm2iG9dCVNPgkOvlWGVPsIV1
 M2Y5yOiMbGJ0vNbfi8k9FJCuAlI25RjSgLqygwH3CJ7DJWU=
X-Google-Smtp-Source: APXvYqzKrAw6QhTwZ3vcxMMPvV/BipiLj7/Rot97I4knCos2Qt8VTN8nReCXVQgX9iWVz6aB8SR2Z1yt7hC+C10RDgo=
X-Received: by 2002:a1f:a013:: with SMTP id j19mr1669873vke.78.1579888262388; 
 Fri, 24 Jan 2020 09:51:02 -0800 (PST)
MIME-Version: 1.0
References: <20200124115133.53360-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200124115133.53360-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 24 Jan 2020 17:50:35 +0000
Message-ID: <CAM0jSHMOF=COj562i2Qe60NA37kYRSoFH49A5uAS0sO+JGQywg@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/gt: Poison GTT scratch pages
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

On Fri, 24 Jan 2020 at 11:51, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> Using a clear page for scratch means that we have relatively benign
> errors in case it is accidentally used, but that can be rather too
> benign for debugging. If we poison the scratch, ideally it quickly
> results in an obvious error.
>
> v2: Set each page individually just in case we are using highmem for our
> scratch page.
> v3: Pick a new scratch register as MI_STORE_REGISTER_MEM does not work
> with GPR0 on gen7, unbelievably.
> v4: Haswell still considers 3DPRIM a privileged register!
>
> Suggested-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Matthew Auld <matthew.william.auld@gmail.com>
Reviewed-by: Matthew Auld <matthew.william.auld@gmail.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
