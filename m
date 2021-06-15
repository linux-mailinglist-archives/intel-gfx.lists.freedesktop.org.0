Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C47C3A805F
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 15:37:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E292C6E30F;
	Tue, 15 Jun 2021 13:37:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com
 [IPv6:2607:f8b0:4864:20::1029])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9FC66E328
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jun 2021 13:37:42 +0000 (UTC)
Received: by mail-pj1-x1029.google.com with SMTP id
 13-20020a17090a08cdb029016eed209ca4so1499158pjn.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jun 2021 06:37:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UDZeAXhtUGNxVigPWnCAmqvhZ5xmOZkpwoxu/kotpBc=;
 b=BkGuougKdpvJFSjPDCYcuDM+EfC9+Z6Iw8t63OKFUyvGcy9WEOaTZOyzUjDtlqxxWx
 b+f6+GiSSKCn4V8zlclen8CemZkaZyLB8FJKB0g3go6na2Mkb6J76IEsPQg2PB5YFP++
 oJX8/uFYscqhRRWgaBEXbZGZq7TD88YFqCsf4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UDZeAXhtUGNxVigPWnCAmqvhZ5xmOZkpwoxu/kotpBc=;
 b=hO5xMU6eL+4Pqdrwnicp50dCMudo+O0GMwC6Rav8SeZ6R2/Mms4JTFpHkCeKswJZFW
 LDFLTpxvdDZSRtXBd7IZshUOCCMtBwko0fUioDJlE6VKi8goWGUYIkb50RtmlYHvzDFl
 9f8DVru1V18/jp3ftzQSh6Kh8gqfKUtKei1ACRAiYCSQckh+T9qgqvFyc4b01o4e3Do/
 buuZfSIii4DP2GRh3Luxgb4/1fDuLAQsIqfFN+BNU0I80L3pABNgdbcstAZKo/u67fl/
 p4YX4jaKlMJXhxy3ls3KHSJXe3M5X/IaeXWDQGwjEl1Xj2b0iLeMwYrZXNLwujSSkwOG
 lkLw==
X-Gm-Message-State: AOAM532/MEo1mnwlYTYfTEzGVyWHyI/mpECV4+EJWeiT9bDsgMofx1/4
 4613IHzRUVpQmkMykReYr17ncX/duaaRuA==
X-Google-Smtp-Source: ABdhPJzNHRNXEIXuMwuwJz8+sqbQfDuzU4eUEb6+GbfTSJWLTNtoGuNok4UN+76f84kJLOr6OFoFnw==
X-Received: by 2002:a17:90a:5308:: with SMTP id
 x8mr5032722pjh.70.1623764262042; 
 Tue, 15 Jun 2021 06:37:42 -0700 (PDT)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com.
 [209.85.210.174])
 by smtp.gmail.com with ESMTPSA id y205sm15397268pfb.53.2021.06.15.06.37.41
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 15 Jun 2021 06:37:41 -0700 (PDT)
Received: by mail-pf1-f174.google.com with SMTP id c12so13298648pfl.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Jun 2021 06:37:41 -0700 (PDT)
X-Received: by 2002:a05:6e02:219d:: with SMTP id
 j29mr17936278ila.64.1623763835517; 
 Tue, 15 Jun 2021 06:30:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210611152659.2142983-1-tientzu@chromium.org>
In-Reply-To: <20210611152659.2142983-1-tientzu@chromium.org>
From: Claire Chang <tientzu@chromium.org>
Date: Tue, 15 Jun 2021 21:30:24 +0800
X-Gmail-Original-Message-ID: <CALiNf28fb4rZ0Afun8wAWRYJY4gqc+-vRvDBZT3x2JgSPL_iVQ@mail.gmail.com>
Message-ID: <CALiNf28fb4rZ0Afun8wAWRYJY4gqc+-vRvDBZT3x2JgSPL_iVQ@mail.gmail.com>
To: Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
 Joerg Roedel <joro@8bytes.org>, 
 Will Deacon <will@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, boris.ostrovsky@oracle.com,
 jgross@suse.com, 
 Christoph Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [Intel-gfx] [PATCH v9 00/14] Restricted DMA
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

v10 here: https://lore.kernel.org/patchwork/cover/1446882/
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
