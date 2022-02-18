Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 109604BF97B
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 14:33:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B95010E673;
	Tue, 22 Feb 2022 13:32:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com
 [IPv6:2607:f8b0:4864:20::1132])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7E4A10EC1C
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Feb 2022 13:05:37 +0000 (UTC)
Received: by mail-yw1-x1132.google.com with SMTP id
 00721157ae682-2d07ae0b1c0so65631777b3.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Feb 2022 05:05:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=93CVqQreNey4UxGTD3l51x3Bbik2BD7CmQHLf6XaIHw=;
 b=SehDqi+GFuUda/fggyakKXC3GucwEVDzfyQ+XB9SegLzhnRdrEK7aOvlk06jwkzCsS
 aNaSLYT+u+8pGDTa6UjxHl1z8UdBLaj0G/HWoaslLDhTyhLJg9cGPFP+Y6it77yj34pM
 tFCzlWkyBqHljmskcdiiY81P7bZ5VzAUc2D5oDJkUhlSsNIDaEDZqmc6HVSKvgvsGWwa
 nEx03mCYzfg4NNLI/TK2UKoqYUJ/BWOdpZ4uoww3tVdfX3l5hbuamJYD5Ic9lKdNcPPA
 6yHpMj89muImtCYlQ/NSY24a+GuI562an7j8znatM/94Eb4hg1AvJQIlfSgm/3qAqJid
 zvvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=93CVqQreNey4UxGTD3l51x3Bbik2BD7CmQHLf6XaIHw=;
 b=DATjkYZyDRd3hAanLj5Tb8YhInTlKSZv+KAFe6rVDw+Lb1pxlV2uMwQbSEc0XWXl/I
 ZooGd7xiLPkDiXPUk9WFlj69tGtsrr2pwQCfdqqXtROZHnGkMBGWNLqHbkZiKqAooZ3f
 cAUXl6Yz2lvS8qtonFgyc8lrcikpSLZqtal83f6tdAcILa971TiHTGFGWBa3ftTSHqef
 r+1X+EXeTTUeSi6IT0pf+ykqnydsSCrivZmarPeruAKR6ysq1zy9suHDwsZuzx/KWEB7
 qTM0loCWfEAgVOmP0YvZtCvJpYyGGel6qv9hC0u4gDR+2ZfBrOo2HQcSdAzBPMHQ8Rt0
 A5Wg==
X-Gm-Message-State: AOAM532ZcXXfhBgCUZZ182OKbgbOAsLF0ntBzZehopQUlqvGR6Hh727A
 WbQ0UKkPAszL9fp0tSMW8gUlV3xrveJVRL4TLEbWRw==
X-Google-Smtp-Source: ABdhPJzQYHdum9Us26v+wAaJ5eNXNrTZvi6ppwsd2WRgDYD9Vt2zVCDpVIbdO7xcL4XMVutgalQNlOxbsGcJqi6X7k0=
X-Received: by 2002:a81:1516:0:b0:2d0:e7ca:2a5 with SMTP id
 22-20020a811516000000b002d0e7ca02a5mr7291377ywv.55.1645189536473; Fri, 18 Feb
 2022 05:05:36 -0800 (PST)
MIME-Version: 1.0
References: <20220217140441.1218045-1-andrzej.hajda@intel.com>
 <20220217140441.1218045-6-andrzej.hajda@intel.com>
 <CANn89i+nCZ6LV_1E2OnJ4qWE0XkO2FGW+A6_tkmQpdxiiEh=LQ@mail.gmail.com>
 <8f6fb098-d0d9-910e-7d42-9fbc541f9891@intel.com>
In-Reply-To: <8f6fb098-d0d9-910e-7d42-9fbc541f9891@intel.com>
From: Eric Dumazet <edumazet@google.com>
Date: Fri, 18 Feb 2022 05:05:25 -0800
Message-ID: <CANn89iLHd+Y=7xqx0OqfHXmqnUhhRycTARGfgq-y79Xhy5OQew@mail.gmail.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailman-Approved-At: Tue, 22 Feb 2022 13:32:50 +0000
Subject: Re: [Intel-gfx] [PATCH 5/9] lib/ref_tracker: improve allocation
 flags
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
Cc: Chris Wilson <chris.p.wilson@intel.com>, netdev <netdev@vger.kernel.org>,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 LKML <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Jakub Kicinski <kuba@kernel.org>, Dmitry Vyukov <dvyukov@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 18, 2022 at 2:28 AM Andrzej Hajda <andrzej.hajda@intel.com> wrote:
> > git log --oneline 5740d0689096..4d449bdc5b26 --no-merges -- lib/ref_tracker.c
> > c2d1e3df4af59261777b39c2e47476acd4d1cbeb ref_tracker: remove
> > filter_irq_stacks() call
> > 8fd5522f44dcd7f05454ddc4f16d0f821b676cd9 ref_tracker: add a count of
> > untracked references
> > e3ececfe668facd87d920b608349a32607060e66 ref_tracker: implement
> > use-after-free detection
>
>
> So I will cherry-pick these patches into next version of patchset, with
> "NO MERGE" annotation (to allow testing), and if my ref_track patches
> will be accepted then they can go via net-dev tree and intel patches
> will wait till update of drm-tip.
> Is this scenario OK?

One possibility would be to split your patch series in two, to merge
the ref_tracker changes directly in net-next asap.

But I have no strong opinion, maybe Jakub/David have some guidance.
