Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 891CB5BF185
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Sep 2022 01:49:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 875F210E7C8;
	Tue, 20 Sep 2022 23:49:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com
 [IPv6:2607:f8b0:4864:20::52f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78F7110E7C8
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 23:49:40 +0000 (UTC)
Received: by mail-pg1-x52f.google.com with SMTP id 207so4253340pgc.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 16:49:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quora.org; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date;
 bh=zYPAtAGS2WWb8+rj0qZWC+Ucqtq1kN6Bn8rjgOviewU=;
 b=XPFNVZUVIBnidEYHKYgrdk4dpZBEeFfSq7hniZ/BB44bC++qc4YfaK/gQKNuXrGWMR
 BEQQNAXHT+PMxZqVpE+j5bAnPK/3jXGCo/hpABbTWC8RBwFqpVDTN9EflNosN+Ca1ucg
 9Jmyv1JAApMEaBZDt296ioyAvisJrYDjj/6E8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=zYPAtAGS2WWb8+rj0qZWC+Ucqtq1kN6Bn8rjgOviewU=;
 b=kA+hvx0A6+c+1MEgF0kdtOm7SszZ7kZdG2cPu+ZikUiAUS38BZPv/1wo7DzMv+jvSy
 XJcdFeCFue0gKUupKuTgp12fEZHxXZeOYKy3mXGt9ZVdkrF7NdnvvugMAlEURewr6nyT
 sbEZ57xLjDAO6wHXYjzNTGDTpf3HnRBAMM4RPhzg5WIVI0eG1FnWki9PI8jO9UFsCucQ
 Emdgjuz1ZXsZIFYr6sBGl7VK5g9lqkmnp+1rMfJAZbEy08sfMsclGWVZmABR/h6iiyAj
 4ofTwyw13YVlJkFwd/6BlAQ8yBFrWU4v6p0Xs/7WFeG9uIcbD2JtSfggh8+96tN2nk1f
 yexQ==
X-Gm-Message-State: ACrzQf3pAjhRa9OjOpEfYTijpo5yUaESv0xkMsHEBVj5ouGtXHK+OXOo
 A4nMA790vLU2L3yqb3H9qwualrwCPxqs9+QBuV8tpA==
X-Google-Smtp-Source: AMsMyM74FDiloBxkjJOy8rQj6NKY8Wk98L81RDr/3hbrz99FT57iN4ZxhoHLveTJ3sLAXdjYqQqvqyuKI2pP1V+QK6s=
X-Received: by 2002:a63:de16:0:b0:438:675c:9f30 with SMTP id
 f22-20020a63de16000000b00438675c9f30mr22744617pgg.294.1663717779905; Tue, 20
 Sep 2022 16:49:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAMVG2steKr8U9t67rqai=-Qb-aTC2ocJHMiuDHxYBsSusnHckA@mail.gmail.com>
 <YyMyKsy2XdInzarL@intel.com>
 <CAMVG2svdhBp-UU2L=Zofq2qgzapwvYGbXMZxtOTzK0T+2aLMHw@mail.gmail.com>
 <YyM8u75CwAamBUG+@intel.com>
 <c915b287-fde9-b6d1-ab51-10867360f9cd@linux.intel.com>
In-Reply-To: <c915b287-fde9-b6d1-ab51-10867360f9cd@linux.intel.com>
From: Daniel J Blueman <daniel@quora.org>
Date: Wed, 21 Sep 2022 07:49:28 +0800
Message-ID: <CAMVG2stu1NDzFZs4jn2pBRcUknH0eUDEs4-0WxmUHFGnGNmR+w@mail.gmail.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] Intel Arc A370M vs Linux 5.19
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 16 Sept 2022 at 00:35, Tvrtko Ursulin
<tvrtko.ursulin@linux.intel.com> wrote:
>> On 15/09/2022 15:54, Rodrigo Vivi wrote:
> > On Thu, Sep 15, 2022 at 10:40:59PM +0800, Daniel J Blueman wrote:
> >> On Thu, 15 Sept 2022 at 22:09, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> >>> On Thu, Sep 15, 2022 at 09:08:08PM +0800, Daniel J Blueman wrote:
> >>>> Dear Intel et al,
> >>>>
> >>>> With a HP Spectre x360 16 16-f1xxx/891D (Intel i7-1260P) with an Arc
> >>>> A370M GPU [1] running the latest Ubuntu 22.10 5.19.0-15-generic
> >>>> kernel, we see:
> >>>>
> >>>> i915 0000:03:00.0: Your graphics device 5693 is not properly supported
> >>>> by the driver in this kernel version. To force driver probe anyway,
> >>>> use i915.force_probe=5693
> >>>>
> >>>> Since the GPU is unmanaged, battery life is around 30% of what it
> >>>> could be. Unsurprisingly, adding i915.force_probe=5693 causes
> >>>> additional  issues. Given a lack of BIOS option to disable the GPU, is
> >>>> there any advice for Linux support or at least putting the GPU into
> >>>> D3? I see only Windows drivers on the official support page [2], and
> >>>> Linux 6.0-rc5 isn't buildable [3].
> >>>
> >>> I believe this is what you are looking for:
> >>>
> >>> echo auto | sudo tee /sys/bus/pci/devices/0000\:03\:00.0/power/control
> >>>
> >>> In Linux the default is to keep the unmanaged devices in D0.
> >>> But changing the rpm to auto should transition the device to D3.
> >>>
> >>> You can go further and check with the lspci -vv if there are other
> >>> unmanaged devices in the same pci root tree and also add them to the
> >>> 'auto' rpm so you can even achieve D3cold in that whole device, what
> >>> gives you extra power savings.
> >>>
> >>> I hope this helps for now.
> >>
> >> Yes, I was also hoping this would work as we see D3hot is supported:
> >>
> >> # echo auto > /sys/bus/pci/devices/0000\:03\:00.0/power/control
> >> # lspci -vvvs 03:00.0
> >> ...
> >> Capabilities: [d0] Power Management version 3
> >>          Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA
> >> PME(D0+,D1-,D2-,D3hot+,D3cold-)
> >>          Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=0 PME-
> >>                  ^^
> >>
> >> However it stays in D0 with PME disabled as we see. "Kernel modules:
> >> i915" may suggest the i915 driver holds a reference to it, preventing
> >> the transition.
> >
> > Oh, yes. I was thinking more on using the command line I sent when
> > the i915 is not probed. i.e. without using the force probe. your first
> > scenario.
>
> Could it help to bind DG2 to vfio-pci and so prevent i915 touching it?

Bingo! Booting with vfio-pci.ids=8086:5693 in my case left the dGPU in
D3, giving the expected battery runtime.

Many thanks Tvrtko,
  Dan
-- 
Daniel J Blueman
