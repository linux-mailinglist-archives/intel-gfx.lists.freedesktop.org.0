Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F7F397000
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jun 2021 11:10:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD4E36E9B4;
	Tue,  1 Jun 2021 09:10:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com
 [IPv6:2607:f8b0:4864:20::d2f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 706D46E9B3
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Jun 2021 09:10:04 +0000 (UTC)
Received: by mail-io1-xd2f.google.com with SMTP id z24so14483397ioi.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 01 Jun 2021 02:10:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=1EQ7MJidus+zd1vSi36boWoSco2HUCYyNMAuhLySHdo=;
 b=nAqGW0rv0vLb/EEjZ9CGKdRvJYzioH/TkKipmvva9d1weHd96fZy5/UMXiUFy21A5D
 Kau+N2HOeAygpGrZ3k2uI1JxhnRTx79j4kat57E4sAGqGJaxF7xnpDXpfUJ/+G0Z70P+
 KgMxj5H/MWx1On8FgVGTc48quuPGuLdFuo+hQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=1EQ7MJidus+zd1vSi36boWoSco2HUCYyNMAuhLySHdo=;
 b=XNCJJ6ziPvY+26kWdlCHhiN1xNyNvJHv0w6fhXRYLhHoXPY/VKZSLoKyLBPgd+gbPn
 0ub0E95GIcAh3W+4hPdl8ch+q9TLogcKPtR+X0DjPN1ephLxn/b1OWUzJCUC1CVnwo85
 ZZnIc4AY4snVijSb7IccUdXRm/vyNFh/uZ8Innp8dfvkhlkspDxHJTqQ1PLSkUYyw23B
 5zqr2MYc8l3nKLR2X/702Bk1mCsDDnwmLMPXHigwtUZ3zMSw5Enpy6BSOdBbPW1frOBP
 1pOe7sX80XjrEz9zw+ta3nwdhfE/oL0zalDAOqSgF5FOrcXH23YL2Wlp8kLHK7JaKROZ
 39yQ==
X-Gm-Message-State: AOAM530Y8Zkhof3iOVDHuEfOs2uE6uJdRG0R/V3B5bKtjdYfmsW/TGRq
 4oU6/FUlFpUqYYxy0vjneB+NJpTjjkgx+kusZm4YQA==
X-Google-Smtp-Source: ABdhPJxkxWViiR7+vNwBsf/JsSJSnGBvwsAoK0L0khytjCMALZZE3DhVgkcsjlOdiCEQeze9wTvqED+Hg5lgHKAj1wQ=
X-Received: by 2002:a02:ca0d:: with SMTP id i13mr23985823jak.98.1622538603578; 
 Tue, 01 Jun 2021 02:10:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210601103250.07301254@canb.auug.org.au>
 <YLX176D9oD7ZTSkT@ninjato>
In-Reply-To: <YLX176D9oD7ZTSkT@ninjato>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Tue, 1 Jun 2021 17:09:37 +0800
Message-ID: <CAJMQK-j1YKfquvY55HgTQ6zfDkE5btmRZKdjjOQ3rcq04QgKKQ@mail.gmail.com>
To: Wolfram Sang <wsa@the-dreams.de>, Stephen Rothwell <sfr@canb.auug.org.au>, 
 Chris Wilson <chris@chris-wilson.co.uk>,
 Bibby Hsieh <bibby.hsieh@mediatek.com>, 
 Hsin-Yi Wang <hsinyi@chromium.org>, Marek Szyprowski <m.szyprowski@samsung.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Intel Graphics <intel-gfx@lists.freedesktop.org>,
 DRI <dri-devel@lists.freedesktop.org>, Dave Airlie <airlied@linux.ie>
Subject: Re: [Intel-gfx] linux-next: build failure after merge of the i2c
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 1, 2021 at 4:55 PM Wolfram Sang <wsa@the-dreams.de> wrote:
>
> Hi Stephen,
>
> > After merging the i2c tree, today's linux-next build (x86_64 allmodconfig)
> > failed like this:
> >
> > In file included from drivers/gpu/drm/i915/i915_gem.c:1250:
> > drivers/gpu/drm/i915/selftests/i915_gem.c:97:13: error: conflicting types for 'pm_suspend'
> >    97 | static void pm_suspend(struct drm_i915_private *i915)
> >       |             ^~~~~~~~~~
> > In file included from include/linux/regulator/consumer.h:35,
> >                  from include/linux/i2c.h:18,
> >                  from drivers/gpu/drm/i915/i915_drv.h:39,
> >                  from drivers/gpu/drm/i915/gt/intel_context.h:14,
> >                  from drivers/gpu/drm/i915/gem/i915_gem_context.h:12,
> >                  from drivers/gpu/drm/i915/i915_gem.c:44:
> > include/linux/suspend.h:331:12: note: previous declaration of 'pm_suspend' was here
> >   331 | extern int pm_suspend(suspend_state_t state);
> >       |            ^~~~~~~~~~
> >
> > Caused by commit
> >
> >   5a7b95fb993e ("i2c: core: support bus regulator controlling in adapter")
> >
> > interacting with commit
> >
> >   3f51b7e1f36a ("drm/i915/selftests: Add a simple exerciser for suspend/hibernate")
> >
> > from Linus' tree (v4.20-rc1)
>
> Thank you very much for taking care of this!
>

Hi, this issue is fixed in
https://cgit.freedesktop.org/drm-intel/commit/?h=drm-intel-gt-next&id=5b11705608898c31a1cae5340555ee60d5a4fa45

And I think the pull request is in
https://lists.freedesktop.org/archives/intel-gfx/2021-May/267588.html

Thanks

>
> > I have added the following merge fix patch:
> >
> > From: Stephen Rothwell <sfr@canb.auug.org.au>
> > Date: Tue, 1 Jun 2021 10:25:49 +1000
> > Subject: [PATCH] drm/i915/selftests: Avoid name clash with pm_ global functions
> >
> > Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>
>
> Looks like the proper solution to me. I think this should be added to
> the i915 tree. D'accord everyone?
>
> Reviewed-by: Wolfram Sang <wsa@kernel.org>
>
> Kind regards,
>
>    Wolfram
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
