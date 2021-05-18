Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF703872C0
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 08:58:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8788789FF9;
	Tue, 18 May 2021 06:58:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com
 [IPv6:2607:f8b0:4864:20::42c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96AEB89FF9
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 May 2021 06:58:33 +0000 (UTC)
Received: by mail-pf1-x42c.google.com with SMTP id x188so6707385pfd.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 May 2021 23:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=okFGSzwxy3Xl1EDwrbsZ6bJWGdPaUEKxSezi4/SE71A=;
 b=KvboTWH6SCfdQ7LLxm6vH9xhTNNbPkylAhr3iqPQWH1QNODKOLIbMt/OYjboWMwVvr
 +KD/UQeQoUETk6OK7TCWS0Utmt5EvBfWbA4IzzRRuwJkDy5Qi3ICeWOTChp1Py6zaNQt
 fa1WHS9ymuIo1ivMcIga1N5vVpkmfX46UnGI0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=okFGSzwxy3Xl1EDwrbsZ6bJWGdPaUEKxSezi4/SE71A=;
 b=mys1mvipOseWVObAKk4y6oyC2guJMfJN3SXLlLmZtxzaSepGGAdg+xAPtgCiayC3Kw
 SK3Ozv9gZcgELaolkbbZFx9ReFN3FjBQTETzU4zuCMfyo2QKbxk3BgUeMmeZqSCiEI0R
 HppKhNa4SiQBPAcYylUl8m8oGhFkIff3EMGWJyPDIvB+VoO3rg/xq8woWPt837HHc4ds
 3U5bQJ6drdpmxFq2DxphOn2BLBl0CnIRJfglUGEuGiSD1MoIJaiDdwz36TF/wvZd2OgT
 nDBRaruAQIYYASm0XVb2wJtFwHi2Yxs8F+LXP037e4Gio9ajpROlRuTHrrrakw0FCCII
 7oHA==
X-Gm-Message-State: AOAM531HowOXDFvxY9gCG4xFbe3Gm1NUkiWOzXZFLyMgOSuyg46259jU
 Lc96CFbzIC4oDO1ZJKXSopr5dX5ujA5A9g==
X-Google-Smtp-Source: ABdhPJywsN/CBKDTYRYWvC1eaRBg6aBwXsXJ1Ku88duWmMVXnG2r/L55edxYXRIBJYjRyvL1vumQlg==
X-Received: by 2002:aa7:8c4d:0:b029:2de:708c:ac4f with SMTP id
 e13-20020aa78c4d0000b02902de708cac4fmr1270572pfd.51.1621321113079; 
 Mon, 17 May 2021 23:58:33 -0700 (PDT)
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com.
 [209.85.215.176])
 by smtp.gmail.com with ESMTPSA id mj7sm1172414pjb.47.2021.05.17.23.58.32
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 May 2021 23:58:32 -0700 (PDT)
Received: by mail-pg1-f176.google.com with SMTP id m124so6319394pgm.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 May 2021 23:58:32 -0700 (PDT)
X-Received: by 2002:a05:6e02:1a4d:: with SMTP id
 u13mr3011800ilv.64.1621320723564; 
 Mon, 17 May 2021 23:52:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210518064215.2856977-1-tientzu@chromium.org>
 <20210518064215.2856977-6-tientzu@chromium.org>
In-Reply-To: <20210518064215.2856977-6-tientzu@chromium.org>
From: Claire Chang <tientzu@chromium.org>
Date: Tue, 18 May 2021 14:51:52 +0800
X-Gmail-Original-Message-ID: <CALiNf28ke3c91Y7xaHUgvJePKXqYA7UmsYJV9yaeZc3-4Lzs8Q@mail.gmail.com>
Message-ID: <CALiNf28ke3c91Y7xaHUgvJePKXqYA7UmsYJV9yaeZc3-4Lzs8Q@mail.gmail.com>
To: Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
 Joerg Roedel <joro@8bytes.org>, 
 Will Deacon <will@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, boris.ostrovsky@oracle.com,
 jgross@suse.com, 
 Christoph Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>
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
 grant.likely@arm.com, paulus@samba.org, mingo@kernel.org,
 Jianxiong Gao <jxgao@google.com>, sstabellini@kernel.org,
 Saravana Kannan <saravanak@google.com>, xypron.glpk@gmx.de,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, bskeggs@redhat.com,
 linux-pci@vger.kernel.org, xen-devel@lists.xenproject.org,
 Thierry Reding <treding@nvidia.com>, intel-gfx@lists.freedesktop.org,
 matthew.auld@intel.com, linux-devicetree <devicetree@vger.kernel.org>,
 airlied@linux.ie, Robin Murphy <robin.murphy@arm.com>,
 Nicolas Boichat <drinkcat@chromium.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg KH <gregkh@linuxfoundation.org>, Randy Dunlap <rdunlap@infradead.org>,
 lkml <linux-kernel@vger.kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Jim Quinlan <james.quinlan@broadcom.com>, linuxppc-dev@lists.ozlabs.org,
 bauerman@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Still keep this function because directly using dev->dma_io_tlb_mem
will cause issues for memory allocation for existing devices. The pool
can't support atomic coherent allocation so we need to distinguish the
per device pool and the default pool in swiotlb_alloc.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
