Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8DD401706
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 09:34:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27B2E8995F;
	Mon,  6 Sep 2021 07:34:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com
 [IPv6:2607:f8b0:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF43D89951
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Sep 2021 07:34:33 +0000 (UTC)
Received: by mail-ot1-x32f.google.com with SMTP id
 l7-20020a0568302b0700b0051c0181deebso7752627otv.12
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 Sep 2021 00:34:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KLDv73P0F0QVUgxl+s78WI8WF2RJUO8K40NpRb3AqHQ=;
 b=AySEBLAeHsj5uVKS43yZ6s3q3C829S5+QMS0aYfinQTmdXtS7JbvxxOJcj6be0Ta0E
 ZqB32nk4+F7M0IwkVWOBwR7Tta9/EP/i9LsctRGtbHGfLF90/LyUlyOIzM5jSr0gTsyL
 ETmg1qXQwAEiNDF8NRPmhEXuM/iQRbQbOR00U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KLDv73P0F0QVUgxl+s78WI8WF2RJUO8K40NpRb3AqHQ=;
 b=Zl/Rkz9gpZT6XcrVGXxzG531NpdwMVNOW933ScNZIkuC7hCdmLUa1KvmDtgBlc8Kss
 prv2cdQjnDgdp6hX3bSEON22cEcrWfVGfZESgszuN6t6hGwhKeANd57xnPNc2utBaXSl
 vXPaPCpBCAw7xxZJpdG16NGnRZRd0azNIklZ6t7LzXRX1NoztRu0fKcuJCfm+g9m7m/Q
 lXiUvfRwgnbaOc4F6UJj/+ccB9YAva3JkklYTCJWyb07PyS/YqUCl97M1wHlwBeyybzn
 ugFfndfaodDOIBF09Hv1KqdyI450WjYD7fJCzhGZnpk9CNa/x21dE2Mk8Cbc6AdA6XgK
 pxmw==
X-Gm-Message-State: AOAM531JuAX+J1WXiBYUaM5KgTRVXGRlqZVl/U2gZYv/EvOzv5hCVoDU
 YAH+NTnne4cO1vyla5gzrDyFDHwJ2Xbf4GyaoEVOkw==
X-Google-Smtp-Source: ABdhPJx1IPLOWvU3juMO7W0BfSfAXxm8nc0F1B4hcn35OkdkhajuYdWFrNbDFUxrBcyUq7wkCAIMwhj7M36O42pmDvY=
X-Received: by 2002:a05:6830:156:: with SMTP id
 j22mr9487069otp.75.1630913673121; 
 Mon, 06 Sep 2021 00:34:33 -0700 (PDT)
MIME-Version: 1.0
References: <20210820123348.6535a87e@canb.auug.org.au>
 <CAK7LNASv-F1Y7kpaDF+_=TW0Jzvpo1uuNL1B5jUmCCRqv-45bA@mail.gmail.com>
 <20210902075038.7461d3c8@canb.auug.org.au>
 <20210906084947.4f65761d@canb.auug.org.au>
In-Reply-To: <20210906084947.4f65761d@canb.auug.org.au>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 6 Sep 2021 09:34:21 +0200
Message-ID: <CAKMK7uF6K+gdWVT09wL0sPBQs8RRixggk01e291veE0VecD=TQ@mail.gmail.com>
To: Stephen Rothwell <sfr@canb.auug.org.au>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 "Nikula, Jani" <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Dave Airlie <airlied@linux.ie>, 
 DRI <dri-devel@lists.freedesktop.org>,
 John Harrison <John.C.Harrison@intel.com>, 
 Matthew Brost <matthew.brost@intel.com>, Alexey Dobriyan <adobriyan@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 Linux Next Mailing List <linux-next@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] linux-next: build failure after merge of the drm
 tree
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 6, 2021 at 12:49 AM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> Hi all,
>
> On Thu, 2 Sep 2021 07:50:38 +1000 Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> >
> > On Fri, 20 Aug 2021 15:23:34 +0900 Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > On Fri, Aug 20, 2021 at 11:33 AM Stephen Rothwell <sfr@canb.auug.org.au> wrote:
> > > >
>  > > After merging the drm tree, today's linux-next build (x86_64 allmodconfig)
> > > > failed like this:
> > > >
> > > > In file included from drivers/gpu/drm/i915/i915_debugfs.c:39:
> > > > drivers/gpu/drm/i915/gt/intel_gt_requests.h:9:10: fatal error: stddef.h: No such file or directory
> > > >     9 | #include <stddef.h>
> > > >       |          ^~~~~~~~~~
> > > >
> > > > Caused by commit
> > > >
> > > >   564f963eabd1 ("isystem: delete global -isystem compile option")
> > > >
> > > > from the kbuild tree interacting with commit
> > > >
> > > >   b97060a99b01 ("drm/i915/guc: Update intel_gt_wait_for_idle to work with GuC")
> > > >
> > > > I have applied the following patch for today.
> > >
> > >
> > > Thanks.
> > >
> > > This fix-up does not depend on my kbuild tree in any way.
> > >
> > > So, the drm maintainer can apply it to his tree.
> > >
> > > Perhaps with
> > >
> > > Fixes: b97060a99b01 ("drm/i915/guc: Update intel_gt_wait_for_idle to
> > > work with GuC")
> >
> > OK, so that didn't happen so I will now apply the merge fix up to the
> > merge of the kbuild tree.
> >
> > > > From: Stephen Rothwell <sfr@canb.auug.org.au>
> > > > Date: Fri, 20 Aug 2021 12:24:19 +1000
> > > > Subject: [PATCH] drm/i915: use linux/stddef.h due to "isystem: trim/fixup stdarg.h and other headers"
> > > >
> > > > Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>
> > > > ---
> > > >  drivers/gpu/drm/i915/gt/intel_gt_requests.h | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.h b/drivers/gpu/drm/i915/gt/intel_gt_requests.h
> > > > index 51dbe0e3294e..d2969f68dd64 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_gt_requests.h
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.h
> > > > @@ -6,7 +6,7 @@
> > > >  #ifndef INTEL_GT_REQUESTS_H
> > > >  #define INTEL_GT_REQUESTS_H
> > > >
> > > > -#include <stddef.h>
> > > > +#include <linux/stddef.h>
> > > >
> > > >  struct intel_engine_cs;
> > > >  struct intel_gt;
> > > > --
> > > > 2.32.0
>
> Ping?  I am still applying this ...

Apologies, this fell through a lot of cracks. I applied this to drm-next now.

Matt/John, as author/committer it's your job to make sure issues and
fixes for the stuff you're pushing don't get lost. I'd have expected
John to apply this to at least drm-intel-gt-next (it's not even
there).

Joonas, I think this is the 2nd or 3rd or so issue this release cycle
where some compile fix got stuck a bit because drm-intel-gt-next isn't
in linux-next. Can we please fix that? It probably needs some changes
to the dim script.

Cheers, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
