Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D98FD240015
	for <lists+intel-gfx@lfdr.de>; Sun,  9 Aug 2020 23:06:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1D7A6E320;
	Sun,  9 Aug 2020 21:06:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com
 [IPv6:2a00:1450:4864:20::642])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B07E6E320
 for <intel-gfx@lists.freedesktop.org>; Sun,  9 Aug 2020 21:06:41 +0000 (UTC)
Received: by mail-ej1-x642.google.com with SMTP id o23so7432597ejr.1
 for <intel-gfx@lists.freedesktop.org>; Sun, 09 Aug 2020 14:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AnXuR/u6oloAPYfKKtNDtw4mMam3YZCZl70wki89jpM=;
 b=j4lizWKJHKssUwB83BQqJL9QBlpDGUj4MSKIuCBR7DLf0e0ke2NYjo3H8g3u59htfB
 qjPVpOB+7F5Qkf94BbUvVcBm/8FrWY1bC7GevWMKhmo81nkl1xhKmr9xX2cER0liXgCk
 5eJArqx77S3IouiB8t8uIQ7+FzHO6zdEhh/C5j5jxzTv2pNPHPc/9X9LJPtIbebIk9D/
 J6QnZf5sNGVQorCoNCM7VmFE3ORADZz+ploLZfhj7JD+cNbgj2P49yNvQR3NqTu9c61A
 m5+rbBOFTfpQB2aYn6nA7ZrBjox+czWJCvs/3QvSxGxzGLvQyyOV/X8dLX2bfUgdZrXH
 VSLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AnXuR/u6oloAPYfKKtNDtw4mMam3YZCZl70wki89jpM=;
 b=e/jQHH6hKKX9gy1EeZGw7+7WhKeo87goOyaJ6VrVlgqtabRpJUlQyKx6Q0WQMHGVvt
 QeLUOPnjXZydxCe7Ixf1Y0V88zbj21Og4XwmZAH8wfG53jG6R7HuYZC+e/B9tlm1Xwte
 fJGXFbgjmaZJVW19rrNULx+BqXuI2jHO3oUgreHqcPV3apnSXKuKesjg5qJlJg4y53ZV
 azGbH8LsAweR2wNBtggSpq5YoUS7iP2EdUrzGmzM4zhGWJ9q36mhwFFKlr/hi4Xm8LoY
 LlOxi3Hpcr75JRqhWhoKde1DwrmqqkYqhUEBDRilmGbQIubVvx8OUEQvRKb281pJF/R1
 FppA==
X-Gm-Message-State: AOAM531JJ8Y3+h1HbB3DPkC48nJ/hC9xdZcOlhMRMyYMy/QftURmE7Zw
 dOxfDiVLNHz6KZCmx/blJ0ZUdDNu6XwZFNMxHnw=
X-Google-Smtp-Source: ABdhPJwBhtbWGbBZ8t6WAxv7rRlHP2sXRXxV+gF291vLdvCQCSbGG9wab1ewX/VZbm9vBWvyDuVWVUGdeDaZIixy01E=
X-Received: by 2002:a17:906:13d8:: with SMTP id
 g24mr18363632ejc.317.1597007200019; 
 Sun, 09 Aug 2020 14:06:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200710115757.290984-1-matthew.auld@intel.com>
 <20200710115757.290984-34-matthew.auld@intel.com>
 <CAPM=9tzvetxhBJBOC60ydOVcTN9ujtHLCODFNwGtONTDzuzwZA@mail.gmail.com>
 <159679356610.9764.14135340597008978819@jlahtine-mobl.ger.corp.intel.com>
In-Reply-To: <159679356610.9764.14135340597008978819@jlahtine-mobl.ger.corp.intel.com>
From: Dave Airlie <airlied@gmail.com>
Date: Mon, 10 Aug 2020 07:06:28 +1000
Message-ID: <CAPM=9tycmm3=SmRiwpyW89osfo26hQp3pqOBGE4DnH5WC+Td2w@mail.gmail.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Subject: Re: [Intel-gfx] [RFC 33/60] drm/i915/lmem: support pwrite
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
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 7 Aug 2020 at 19:46, Joonas Lahtinen
<joonas.lahtinen@linux.intel.com> wrote:
>
> Quoting Dave Airlie (2020-07-13 08:09:30)
> > On Fri, 10 Jul 2020 at 22:00, Matthew Auld <matthew.auld@intel.com> wrote:
> > >
> > > We need to add support for pwrite'ing an LMEM object.
> >
> > why? DG1 is a discrete GPU, these interfaces we already gross and
> > overly hacky for integrated, I'd prefer not to drag them across into
> > discrete land.
> >
> > same goes for pread.
> >
> > You have no legacy userspace here, userspace needs change to support
> > LMEM, it can be fixed to avoid legacy ioctls paths.
>
> (This answer is really along the same lines as related to the
> relocations, which I sent earlier in the end of this thread)
>
> PREAD/PWRITE are used by IGT tests indirectly in the testing, as
> a means to validate test end results as an example. So IGT
> reworking is needed not to lose testing coverage when the
> functionality is disabled.
>
> Same reasoning as with relocations, as to why this is included
> in the RFC; it will get a functional stack with least changes and
> is virtually no extra effort to carry. It's recognized that once
> pre-Gen12 hardware ceases to exist, there are optimization
> opportunities.

Why do you have to wait until pre-GEN12 hw ceases to exist?

There are clear optimization opportunities since Broadwell, there have
been clear pointless optimisations done to the kernel because
userspace was stuck to the legacy paths way past when it made sense.

I'm pretty sure the media driver is broadwell+ in terms of hw support,
but it's all relocation heavy, like why isn't that the priority of the
kernel team to just go fix it rather than make the kernel long term
harder to maintain. Siloed development is an artifact of *your*
orgchart, and shouldn't leak into the upstream kernel development if
not required.

Would IGT ever have been fixed up? it's test code, it should have been
roadmap and resourced to fix up instead of writing kernel code for
platforms that don't require it. You can valdiate IGT on the older
hardware anyways.

If you need test interfaces in the kernel, please put them under
BROKEN or somewhere that only CI finds them, until you can rework CI
tests, but we need to be a bit more stringent on carrying forward
interfaces that aren't needed by modern HW, or else you will never get
to pre-GEN12 disappearing, like in reality it should in a lot of cases
be pre-GEN8.

Dave.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
