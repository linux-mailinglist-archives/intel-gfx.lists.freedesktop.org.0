Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B9D938F885
	for <lists+intel-gfx@lfdr.de>; Tue, 25 May 2021 05:09:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B9B06E5D2;
	Tue, 25 May 2021 03:09:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com
 [IPv6:2607:f8b0:4864:20::102e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7341F89467
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 May 2021 03:08:58 +0000 (UTC)
Received: by mail-pj1-x102e.google.com with SMTP id
 cu11-20020a17090afa8bb029015d5d5d2175so12402925pjb.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 20:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ibLnJElvlxlVpclpJPUNJ2cC/oiUOQSOujwiFR/Tp+s=;
 b=UieisilkjhqvCv5TM4Uhta7TWRN2Fo+qizEnyHuJxA4va8bXfSD+rLVykfuHhWprMs
 LshPVy4dFsoXIkmd56qov4ggYtlL759ArIJ4nJdiIlOu+d8oU3Tdh/1w/BJ1fDxfpbcA
 V3s9TTUmNV6cOGqUjcXpB0nmY9PGjsUH8vbqY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ibLnJElvlxlVpclpJPUNJ2cC/oiUOQSOujwiFR/Tp+s=;
 b=QMrexqY91H/QLR7zgHtuXKEcxeZdjIB7PUJFSL/RWw9xxiREEhberZUUXFDhZU6T/q
 zcd5K5ja7LgctA6Okqc13/M109qnSGvDzMXFLeYNGjAQpTkq3/4TiU7W2z1aRYa22z+V
 tZ4KrItZN0gzKFvzbOezfgADDSejMObMV68yP+JBuQNDw42Fgui44q0ivkKO8Mv5vqWR
 r/O1GOOKo31aGjXpeAcRgi7oK1fE0PCvs8Q8gljpCBpW0BRqelXpk32cYj2pnGXcirk1
 X1878BqSSfEUMToSZMeFCGvoLqJ2uZ6hjapmN4tG3Eayh2z3ywReKU3zlTgIzYOeOmRN
 hY8Q==
X-Gm-Message-State: AOAM533hYlr7geYKdEtDPa0h7QpSiFmoAXkN2zUgWyWfq/vVOwyBpbta
 2SnKe4NzeG3sNxVkQaph5z6IKk23lqxjkA==
X-Google-Smtp-Source: ABdhPJxyqProiXo1qTxKeexQRz8PgJMZCVp2fmRFMMF1Zj21rVh7bzwpVO1wQIukX36rByhSaYtiPg==
X-Received: by 2002:a17:90b:d98:: with SMTP id
 bg24mr2348007pjb.112.1621912137838; 
 Mon, 24 May 2021 20:08:57 -0700 (PDT)
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com.
 [209.85.210.170])
 by smtp.gmail.com with ESMTPSA id k186sm12286862pgk.82.2021.05.24.20.08.56
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 24 May 2021 20:08:57 -0700 (PDT)
Received: by mail-pf1-f170.google.com with SMTP id 22so22085528pfv.11
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 20:08:56 -0700 (PDT)
X-Received: by 2002:a05:6e02:b:: with SMTP id
 h11mr18955732ilr.18.1621912124990; 
 Mon, 24 May 2021 20:08:44 -0700 (PDT)
MIME-Version: 1.0
References: <20210518064215.2856977-1-tientzu@chromium.org>
 <20210518064215.2856977-6-tientzu@chromium.org>
 <CALiNf28ke3c91Y7xaHUgvJePKXqYA7UmsYJV9yaeZc3-4Lzs8Q@mail.gmail.com>
 <YKvLc9onyqdsINP7@0xbeefdead.lan>
In-Reply-To: <YKvLc9onyqdsINP7@0xbeefdead.lan>
From: Claire Chang <tientzu@chromium.org>
Date: Tue, 25 May 2021 11:08:34 +0800
X-Gmail-Original-Message-ID: <CALiNf28=fn5r_O8ET0TNM6cS7WO0mwXiMzR5z=eJXmNKFWKdzA@mail.gmail.com>
Message-ID: <CALiNf28=fn5r_O8ET0TNM6cS7WO0mwXiMzR5z=eJXmNKFWKdzA@mail.gmail.com>
To: Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>
Subject: Re: [Intel-gfx] [PATCH v7 05/15] swiotlb: Add a new get_io_tlb_mem
 getter
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
 sstabellini@kernel.org, Saravana Kannan <saravanak@google.com>,
 mpe@ellerman.id.au, Joerg Roedel <joro@8bytes.org>,
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
 Jim Quinlan <james.quinlan@broadcom.com>, xypron.glpk@gmx.de,
 Robin Murphy <robin.murphy@arm.com>, bauerman@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, May 24, 2021 at 11:51 PM Konrad Rzeszutek Wilk
<konrad.wilk@oracle.com> wrote:
>
> On Tue, May 18, 2021 at 02:51:52PM +0800, Claire Chang wrote:
> > Still keep this function because directly using dev->dma_io_tlb_mem
> > will cause issues for memory allocation for existing devices. The pool
> > can't support atomic coherent allocation so we need to distinguish the
> > per device pool and the default pool in swiotlb_alloc.
>
> This above should really be rolled in the commit. You can prefix it by
> "The reason it was done this way was because directly using .."
>

Will add it.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
