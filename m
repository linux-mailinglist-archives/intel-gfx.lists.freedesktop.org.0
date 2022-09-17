Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C745C5BB6F6
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Sep 2022 09:30:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7330410E1EF;
	Sat, 17 Sep 2022 07:29:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AFB710E1EF
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Sep 2022 07:29:50 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id
 d64-20020a17090a6f4600b00202ce056566so1880187pjk.4
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Sep 2022 00:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quora.org; s=google;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date;
 bh=yEZkEBfw3U5O49cqqkKRbyc0yDno/SJ/a/G3N2C0kfY=;
 b=MCJ85Q/kugf1aUxkjmi2PqeYs6DNw/mhotREgqrctVQkzx//iMxB46T65l/lPaWuSl
 Uh8slDaC5/aw41/Qk3qcBSGEFqkDfsK6GNkFeKdOkuJNiQF5A6CAlvDYXzrkp0njm4b4
 /EZgz4DSBu5C6Fdt02AM8Z9Jx1IKWO6h/tQBQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=yEZkEBfw3U5O49cqqkKRbyc0yDno/SJ/a/G3N2C0kfY=;
 b=NH0uiH4v31kCg7LIeTuATkuCJcj4qObhS06Phd3jwwHeOhu/zQKu4xtfcQ0m+OkVy+
 2x8rwI1FemCfVO1f45TeTnCFGl07YEQ7dK1G7rM6HCAkhDqwzP3miOMCrB6+2P5hCoj7
 rN6zW2OpLcKuj5XejbgeEMVW/07XRHfKw08rWEYt/Jb7H70bStTkIvoyMEL7nyqyPOyd
 vesLn+a5jtHKMI87X0fzc6zBJhIhcGEgqiyspvrZz2ywvOdJDC8tTaFQ4atAM7ZN9bU8
 Jo7p5JkaiGGUcaeopt2aJr3N5kVv3g1Kd9lP3aP8E7vrnqbD/tZrEFCOnGFFWrBI88H7
 AVZQ==
X-Gm-Message-State: ACrzQf2UfuBr6Hkclw7lbjKKTmtYvp633Q8zgWz2yKefYfc3h+2ihmNY
 jewy6iGh/9oo2HHqqc0aboqLF5YYEClqBI4GUPnA+cUQrEe2jA==
X-Google-Smtp-Source: AMsMyM7PlnzvD1D3G+zzhdvwAmbAdxJKncpRDZZhSgxb/dkvOY/zNPEAePN6prx4QbgeL8XSu3UbuHP7xj3B2qT2jOs=
X-Received: by 2002:a17:90b:4b8b:b0:203:203:3365 with SMTP id
 lr11-20020a17090b4b8b00b0020302033365mr9409373pjb.19.1663399789845; Sat, 17
 Sep 2022 00:29:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAMVG2steKr8U9t67rqai=-Qb-aTC2ocJHMiuDHxYBsSusnHckA@mail.gmail.com>
 <YyMyKsy2XdInzarL@intel.com>
 <CAMVG2svdhBp-UU2L=Zofq2qgzapwvYGbXMZxtOTzK0T+2aLMHw@mail.gmail.com>
 <YyM8u75CwAamBUG+@intel.com>
In-Reply-To: <YyM8u75CwAamBUG+@intel.com>
From: Daniel J Blueman <daniel@quora.org>
Date: Sat, 17 Sep 2022 15:29:38 +0800
Message-ID: <CAMVG2svkanOHTuvm7HR2yuUTLzkPEgmYqojL6af7n6X76v5bHw@mail.gmail.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 15 Sept 2022 at 22:55, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
>
> On Thu, Sep 15, 2022 at 10:40:59PM +0800, Daniel J Blueman wrote:
> > On Thu, 15 Sept 2022 at 22:09, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > > On Thu, Sep 15, 2022 at 09:08:08PM +0800, Daniel J Blueman wrote:
> > > > Dear Intel et al,
> > > >
> > > > With a HP Spectre x360 16 16-f1xxx/891D (Intel i7-1260P) with an Arc
> > > > A370M GPU [1] running the latest Ubuntu 22.10 5.19.0-15-generic
> > > > kernel, we see:
> > > >
> > > > i915 0000:03:00.0: Your graphics device 5693 is not properly supported
> > > > by the driver in this kernel version. To force driver probe anyway,
> > > > use i915.force_probe=5693
> > > >
> > > > Since the GPU is unmanaged, battery life is around 30% of what it
> > > > could be. Unsurprisingly, adding i915.force_probe=5693 causes
> > > > additional  issues. Given a lack of BIOS option to disable the GPU, is
> > > > there any advice for Linux support or at least putting the GPU into
> > > > D3? I see only Windows drivers on the official support page [2], and
> > > > Linux 6.0-rc5 isn't buildable [3].
> > >
> > > I believe this is what you are looking for:
> > >
> > > echo auto | sudo tee /sys/bus/pci/devices/0000\:03\:00.0/power/control
> > >
> > > In Linux the default is to keep the unmanaged devices in D0.
> > > But changing the rpm to auto should transition the device to D3.
> > >
> > > You can go further and check with the lspci -vv if there are other
> > > unmanaged devices in the same pci root tree and also add them to the
> > > 'auto' rpm so you can even achieve D3cold in that whole device, what
> > > gives you extra power savings.
> > >
> > > I hope this helps for now.
> >
> > Yes, I was also hoping this would work as we see D3hot is supported:
> >
> > # echo auto > /sys/bus/pci/devices/0000\:03\:00.0/power/control
> > # lspci -vvvs 03:00.0
> > ...
> > Capabilities: [d0] Power Management version 3
> >         Flags: PMEClk- DSI- D1- D2- AuxCurrent=0mA
> > PME(D0+,D1-,D2-,D3hot+,D3cold-)
> >         Status: D0 NoSoftRst+ PME-Enable- DSel=0 DScale=0 PME-
> >                 ^^
> >
> > However it stays in D0 with PME disabled as we see. "Kernel modules:
> > i915" may suggest the i915 driver holds a reference to it, preventing
> > the transition.
>
> Oh, yes. I was thinking more on using the command line I sent when
> the i915 is not probed. i.e. without using the force probe. your first
> scenario.

My bad - a reference is held when lspci shows "Kernel driver in use:
..." which is not the case here. Accordingly, we see:
# ls /sys/bus/pci/drivers/i915
0000:00:02.0 bind  module  new_id  remove_id  uevent  unbind
...ie no "0000:03:00.0" to unbind.

> With the i915 loaded I'd like to see the dmesg and a few of the debugfs
> files under: /sys/kernel/debug/dri/0

Sure, see:
https://quora.org/a370m/{dmesg.txt,i915-debug.txt}
https://quora.org/a370m/{dmesg-forceprobe.txt,i915-debug-forceprobe.txt}

Thanks,
  Dan
--
Daniel J Blueman
