Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 305473A4585
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jun 2021 17:35:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DA756E0DE;
	Fri, 11 Jun 2021 15:35:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2e.google.com (mail-qv1-xf2e.google.com
 [IPv6:2607:f8b0:4864:20::f2e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D04C86E0DE
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jun 2021 15:35:24 +0000 (UTC)
Received: by mail-qv1-xf2e.google.com with SMTP id g12so16694551qvx.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jun 2021 08:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AzuwWZVb0hvYDmhYzyjXOdcnRd7gmJwLqOExosCeDwM=;
 b=IRqkW7akj902Qmh2dpTJs35MbbbyYdNh845FqGa90ZgwGlX/fY4AEM0E2Tq/OkUGrx
 VVpf/9sUsDrF+Qmi4N27tWzf7jckOIK7UvGuS34GnQEYg0G4BU1Idcj7Q7ryrjHTdpBh
 ql1llzJVDf1YUXhBMlreUDeIOuUDsqa6G9X1Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AzuwWZVb0hvYDmhYzyjXOdcnRd7gmJwLqOExosCeDwM=;
 b=DcrAzOSdSmCTS4thyygDbYHSlXi/BkJiuOr5/LbmKb5vpVrGi42c6Cot0tf9cIOetf
 NiWjDkbSBjRltdMGi3htG8ZTzwPsA3IjUjEKWx5/+oq2AIQfKa9pUreaZIOnmY6ElnSB
 Xz1nCtm657z57pAiaTe0WjTRVeE3GrTPFXY4w1U8IpqojeECdOvVyazwPXdGguK9Sqzz
 1TKTBdMjxSdL5a4/6U5B6z37fsZzsPmNie7C8xq2YW4rmLhh+3m7IeyRn3v9bncOB6QQ
 LlpLlPksaviI1Qr50mezNiBVoFrxv3lGw5LJpp0pInK1JOU+m1aj6PgjFtZJJkk+NTXO
 vK3A==
X-Gm-Message-State: AOAM531IIjESGLRZYedf3wZ7FMavGZ8pckLmoQbrmyXiGTKIebQOz+MK
 FEdFSBmb8Op3xQ0ya9SmbRG48qYXqH4xJg==
X-Google-Smtp-Source: ABdhPJxJqXEwfa5PkZ98JqjWQoYB8eMipuBujHjFF3IRp5RFTe2QX1LRXfHMB0yz/GPX1itRdEScLQ==
X-Received: by 2002:a0c:d610:: with SMTP id c16mr5517218qvj.13.1623425723769; 
 Fri, 11 Jun 2021 08:35:23 -0700 (PDT)
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com.
 [209.85.160.174])
 by smtp.gmail.com with ESMTPSA id h19sm4437808qtq.5.2021.06.11.08.35.21
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 11 Jun 2021 08:35:22 -0700 (PDT)
Received: by mail-qt1-f174.google.com with SMTP id v6so2863627qta.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Jun 2021 08:35:21 -0700 (PDT)
X-Received: by 2002:a05:6638:e81:: with SMTP id
 p1mr4464281jas.84.1623425710461; 
 Fri, 11 Jun 2021 08:35:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210611152659.2142983-1-tientzu@chromium.org>
 <20210611152659.2142983-7-tientzu@chromium.org>
In-Reply-To: <20210611152659.2142983-7-tientzu@chromium.org>
From: Claire Chang <tientzu@chromium.org>
Date: Fri, 11 Jun 2021 23:34:59 +0800
X-Gmail-Original-Message-ID: <CALiNf28OT2L1qcH4dKK8mb0=uCyaKDHW7r=LrC9MTJw0PSzSbw@mail.gmail.com>
Message-ID: <CALiNf28OT2L1qcH4dKK8mb0=uCyaKDHW7r=LrC9MTJw0PSzSbw@mail.gmail.com>
To: Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
 Joerg Roedel <joro@8bytes.org>, 
 Will Deacon <will@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, boris.ostrovsky@oracle.com,
 jgross@suse.com, 
 Christoph Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [Intel-gfx] [PATCH v9 06/14] swiotlb: Update is_swiotlb_active
 to add a struct device argument
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

I don't have the HW to verify the change. Hopefully I use the right
device struct for is_swiotlb_active.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
