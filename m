Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 98AFA38F883
	for <lists+intel-gfx@lfdr.de>; Tue, 25 May 2021 05:09:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C86696E5C5;
	Tue, 25 May 2021 03:09:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com
 [IPv6:2607:f8b0:4864:20::533])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B51C8938F
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 May 2021 03:08:26 +0000 (UTC)
Received: by mail-pg1-x533.google.com with SMTP id i5so21627113pgm.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 20:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VHDFyefEfXv2T1h/kXDPOn5vVw8tSm/6FW05x+E2j40=;
 b=merHIeKNi5Uu6C9TAUujDNIN9FxrI34YUx7aW4WyFELIyYppIt99C4UwGvzWaArcmu
 9EaYZFbnrmtDjrMZ7c8349ke6DKJjWiZDCUD5epOu2PqMIr5kYM1CoXZ0XNE1vQ3QFiu
 bvf2bDyHaIMES3MNNrHcengJbyjgwpDl3VY20=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VHDFyefEfXv2T1h/kXDPOn5vVw8tSm/6FW05x+E2j40=;
 b=mWlrvCCoRlGqKysSxDT+VtX+JfaXaLah0LrfRwu8MKoYvsr3A8QoTjIEsvH7XY5r8A
 2/WkmKlWmQjxXO8eBBnOIPDgvX5FqszEScZrDCOp7ziYD9w4WH+elXhcaSokahZuN6JZ
 NpTw9wh5Y1h3gcZ1wxJmPGnrsPC2suucjaWruTtNAMmA0ukXN83/I8Urt7aHxRHOrl3j
 68amnnd5NMflF3QaN7n9XYQ+fNZodAo+ZgVZYxCFSHCdkvZWOFF/s7qDTyAXP12xP3MG
 7/QQhMoyA0M7Gdqv91c07uG85JDRp8YSYkgy7I7xdSOo4O58zrlB0covpFkzqmekPAxo
 Fbtw==
X-Gm-Message-State: AOAM533kDZIBRd55HGKhyoC5BqIKP91zqityf6ALrlldITScybrz/VEJ
 dF+VZYlPx3fnvomWFrrzqf81/D/RiGymHA==
X-Google-Smtp-Source: ABdhPJxZamRKcuiisQf8PLZPaG1s8/K7Q9uH5W0lkSfqyQDbHMEKYubMlMy9CRxQjam1XX1RqilhGw==
X-Received: by 2002:a63:79c3:: with SMTP id
 u186mr16820884pgc.203.1621912106021; 
 Mon, 24 May 2021 20:08:26 -0700 (PDT)
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com.
 [209.85.210.180])
 by smtp.gmail.com with ESMTPSA id w197sm11902336pfc.5.2021.05.24.20.08.25
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 May 2021 20:08:25 -0700 (PDT)
Received: by mail-pf1-f180.google.com with SMTP id d78so21603758pfd.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 20:08:25 -0700 (PDT)
X-Received: by 2002:a6b:7b08:: with SMTP id l8mr16990516iop.50.1621912094090; 
 Mon, 24 May 2021 20:08:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210518064215.2856977-1-tientzu@chromium.org>
 <20210518064215.2856977-2-tientzu@chromium.org>
 <170a54f2-be20-ec29-1d7f-3388e5f928c6@gmail.com>
 <CALiNf2-9fRbH3Xs=fA+N1iRztFxeC0iTsyOSZFe=F42uwXS0Sg@mail.gmail.com>
 <YKvL865kutnHqkVc@0xbeefdead.lan>
In-Reply-To: <YKvL865kutnHqkVc@0xbeefdead.lan>
From: Claire Chang <tientzu@chromium.org>
Date: Tue, 25 May 2021 11:08:03 +0800
X-Gmail-Original-Message-ID: <CALiNf2_iq3OS+95as4fj+AOMDVYgGL71A1811QLaZ=5T7TRjww@mail.gmail.com>
Message-ID: <CALiNf2_iq3OS+95as4fj+AOMDVYgGL71A1811QLaZ=5T7TRjww@mail.gmail.com>
To: Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
Subject: Re: [Intel-gfx] [PATCH v7 01/15] swiotlb: Refactor swiotlb init
 functions
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
Cc: heikki.krogerus@linux.intel.com, thomas.hellstrom@linux.intel.com,
 peterz@infradead.org, benh@kernel.crashing.org,
 dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk,
 grant.likely@arm.com, paulus@samba.org, Frank Rowand <frowand.list@gmail.com>,
 mingo@kernel.org, Marek Szyprowski <m.szyprowski@samsung.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Saravana Kannan <saravanak@google.com>, mpe@ellerman.id.au,
 Joerg Roedel <joro@8bytes.org>,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 Christoph Hellwig <hch@lst.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, bskeggs@redhat.com,
 linux-pci@vger.kernel.org, xen-devel@lists.xenproject.org,
 Thierry Reding <treding@nvidia.com>, intel-gfx@lists.freedesktop.org,
 matthew.auld@intel.com, linux-devicetree <devicetree@vger.kernel.org>,
 Jianxiong Gao <jxgao@google.com>, Will Deacon <will@kernel.org>,
 airlied@linux.ie, Dan Williams <dan.j.williams@intel.com>,
 linuxppc-dev@lists.ozlabs.org, Rob Herring <robh+dt@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, boris.ostrovsky@oracle.com,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>, jgross@suse.com,
 Nicolas Boichat <drinkcat@chromium.org>, Greg KH <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, lkml <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>,
 "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 sstabellini@kernel.org, Jim Quinlan <james.quinlan@broadcom.com>,
 xypron.glpk@gmx.de, Robin Murphy <robin.murphy@arm.com>,
 bauerman@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 24, 2021 at 11:53 PM Konrad Rzeszutek Wilk
<konrad.wilk@oracle.com> wrote:
>
> > > do the set_memory_decrypted()+memset(). Is this okay or should
> > > swiotlb_init_io_tlb_mem() add an additional argument to do this
> > > conditionally?
> >
> > I'm actually not sure if this it okay. If not, will add an additional
> > argument for it.
>
> Any observations discovered? (Want to make sure my memory-cache has the
> correct semantics for set_memory_decrypted in mind).

It works fine on my arm64 device.

> >
> > > --
> > > Florian
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
