Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D1F59A2BC
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Aug 2022 19:01:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AE0810E0B1;
	Fri, 19 Aug 2022 17:01:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84EC210EEF9
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Aug 2022 17:01:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1660928492;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=Hsc4yRhAhZ4DbPHQFkOZPha0cv9GZ3AkjwFlq+dmc4w=;
 b=SS2SCBEKKqLW0c60/0k9Lyk1w6uL/YpJOsP/Rt67iN+pnopKKN1aPdYzDyVKjSGa9SaNSL
 kQZLUlFHDNtclCD/Yd/5g29u/0sd/KH4f4P43bVsoTEmLaJnYz/6GDL1u8EZkZCo/LUKCv
 3aKI4Zlo9Cnu3WrndGGz4O9w9rZGV18=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-86-kEL5r21wOnKxQWi7eTrgpg-1; Fri, 19 Aug 2022 13:01:31 -0400
X-MC-Unique: kEL5r21wOnKxQWi7eTrgpg-1
Received: by mail-qv1-f72.google.com with SMTP id
 db3-20020a056214170300b00496c0aabfc9so2259463qvb.16
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Aug 2022 10:01:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc;
 bh=Hsc4yRhAhZ4DbPHQFkOZPha0cv9GZ3AkjwFlq+dmc4w=;
 b=s+O3Z4u1wY9B0lZb6mVSR7pVQ5+RY/56meFVMum6pncFUDD6G4+pGhX2UUxoEXijCg
 Ie/CbPe669HOi/k0Y5/tHIJOf+zcBEoh59UtQIlXnT1hUYjYS9hxsqLhUmalEF4v0T9V
 TEcRe2uktXBphOrImyD7Fryy6SVHvHVRorYqYgyUDdqz4yFUCw1Pd//Oeb/RplWm8eOg
 aOV/wUr4DCk4EPd6HHUCiPLl2ubWr4Zt05l5i6V1PD/5jtRmV0iv92s7G9NzJyqlYGgb
 qhnH+QoeeA08NEkidgFFyY1Ddi9Jfy7nmMj1ncOPdWHoKolXLDNLpnIpTN9p2axixucq
 x85w==
X-Gm-Message-State: ACgBeo0RXtPakc0imCD/3d22Dn0QgNbh3FR+5aGH6lkPjJ20PAHtvpJU
 2IziNT7L3sJYu4wjtZNPEOqm2andMrMHI/g8598gBiJlr89XBo77S6ZZ24TFePHwYF6mJ5NY2sr
 fve8Zxtk5bTrsHFl3W153im250eDVp35O7kUr6KimpgxP
X-Received: by 2002:a05:6214:2588:b0:477:22bd:e1e6 with SMTP id
 fq8-20020a056214258800b0047722bde1e6mr6941501qvb.105.1660928490867; 
 Fri, 19 Aug 2022 10:01:30 -0700 (PDT)
X-Google-Smtp-Source: AA6agR5adLa5ufq8xv5MSitmP52SMGWicDFV/f3YeImHZmgqosweVM0PWafCWIvK9R7y6580EaMkBmHeuxCslplaa6M=
X-Received: by 2002:a05:6214:2588:b0:477:22bd:e1e6 with SMTP id
 fq8-20020a056214258800b0047722bde1e6mr6941464qvb.105.1660928490528; Fri, 19
 Aug 2022 10:01:30 -0700 (PDT)
MIME-Version: 1.0
References: <20220816025217.618181-1-kai.heng.feng@canonical.com>
 <87leror4sl.fsf@intel.com> <20220818115338.GA26586@wunner.de>
In-Reply-To: <20220818115338.GA26586@wunner.de>
From: Karol Herbst <kherbst@redhat.com>
Date: Fri, 19 Aug 2022 19:01:19 +0200
Message-ID: <CACO55ts1T9x++gjbvb-4gxOhLfKTeVVEjpm4L4uav-qRBsxmZg@mail.gmail.com>
To: Lukas Wunner <lukas@wunner.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Switch TGL-H DP-IN to dGFX when
 it's supported
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
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Kai-Heng Feng <kai.heng.feng@canonical.com>,
 dri-devel@lists.freedesktop.org, rodrigo.vivi@intel.com,
 Zenghui Yu <yuzenghui@huawei.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 18, 2022 at 2:09 PM Lukas Wunner <lukas@wunner.de> wrote:
>
> On Tue, Aug 16, 2022 at 11:06:18AM +0300, Jani Nikula wrote:
> > On Tue, 16 Aug 2022, Kai-Heng Feng <kai.heng.feng@canonical.com> wrote:
> > > On mobile workstations like HP ZBook Fury G8, iGFX's DP-IN can switch to
> > > dGFX so external monitors are routed to dGFX, and more monitors can be
> > > supported as result.
> > >
> > > To switch the DP-IN to dGFX, the driver needs to invoke _DSM function 20
> > > on intel_dsm_guid2. This method is described in Intel document 632107.
> >
> > Is this the policy decision that we want to unconditionally make,
> > though?
>
> In general, we handle switching of outputs between GPUs in vga_switcheroo.c
> upon a request from user space via sysfs (well, debugfs currently).
> It's up to users to decide which policy suits their needs best.
>
> That said, we never grew support to allow different switching policies for
> the built-in panel and external outputs.  Laptops supporting this are
> rare.  Older MacBook Pros introduced between 2008 and 2010 are among them:
> They have separate muxes for the panel and external DP port.  Our policy
> is documented in a code comment in drivers/platform/x86/apple-gmux.c:
>
>  * The external DP port is only fully switchable on the first two unibody
>  * MacBook Pro generations, MBP5 2008/09 and MBP6 2010. This is done by an
>  * `NXP CBTL06141`_ which is controlled by gmux.
>  [...]
>  * Our switching policy for the external port is that on those generations
>  * which are able to switch it fully, the port is switched together with the
>  * panel when IGD / DIS commands are issued to vga_switcheroo. It is thus
>  * possible to drive e.g. a beamer on battery power with the integrated GPU.
>  * The user may manually switch to the discrete GPU if more performance is
>  * needed.
>  *
>  * On all newer generations, the external port can only be driven by the
>  * discrete GPU. If a display is plugged in while the panel is switched to
>  * the integrated GPU, *both* GPUs will be in use for maximum performance.
>  * To decrease power consumption, the user may manually switch to the
>  * discrete GPU, thereby suspending the integrated GPU.
>
> In other words, on these older MacBook Pros, we switch the panel and
> external DP port in unison, thus always allowing one of the two GPUs
> to runtime suspend and save power.
>
> Thanks,
>
> Lukas
>

sure, but this is changing now. I do have a laptop with a muxable
internal display. But this is considered to be a dynamic on demand
switching thing not a boot time switch.

Anyway, I am still not convinced that doing that unconditionally is
what we want, especially as userspace has to support dynamic switching
regardless.

