Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2373AACB5
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 08:49:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE51F6E882;
	Thu, 17 Jun 2021 06:49:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com
 [IPv6:2607:f8b0:4864:20::130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A3ED6E882
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jun 2021 06:49:13 +0000 (UTC)
Received: by mail-il1-x130.google.com with SMTP id j14so4483216ila.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jun 2021 23:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IqsCA/yjikDS1aCYzllqiH9HoLVcQQhYIn5qSeonABE=;
 b=GiFPgetacPTJVsGZ3MFWgSvQPnCdoTJhc4FxcdhnTR1mIKLWNYkC5qsclOh1Nu4T0t
 2JBHLcEHEvZiTaAAwPJzRshEva/oe1afpxIyCNXuS6Yc5SEiWBAid4ULBNFnG08bi+4b
 5Y3w62S7YQM/biDmcuEcWF0r86zBUuRahetbQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IqsCA/yjikDS1aCYzllqiH9HoLVcQQhYIn5qSeonABE=;
 b=GtLACv2+cY1eRnOdUZVeGJSrYKvaEOLdi7E7oZ/Q6BdWgAeG9cfzMlbSkX/26CNmxS
 jd8ou9K6tK/LJsPSYDnf8B3SpTxfDQqhWsBmxKSBhAWj2dV/VsBrtrWkSJj8vSCACws+
 ADjjQFQ90SWFuh08Kq0cGE9+EGVUFowbHg9arTWZC9WesX6xt5TKjd/2lYHEloRll806
 3DDNrjwfE0k0iU0Y98dW8LHY2/lBPy9WNZR/MK7JTmxa48NdSh1ovKGFW0pdRS9Z0wYo
 3EauvzaFzaP7R0ACWf4/7nnKbUuiS331GuB1XvG+bOuT2b4VeMf8OaL9QybjlOT43dvp
 youA==
X-Gm-Message-State: AOAM5318CayrptggCpZAwiutG7p2uHq3ep0cTzpZUH5p88jcb2rSPHD0
 +iwHqurrSJ9+c9Ys4RXkNaMea9wDJFfvrg==
X-Google-Smtp-Source: ABdhPJz6HxN88+ZFectTSHAu2OJq9uhFWLL40aTHUZXSdSzpO5o7HYorMzberUpFikRdT1ddf+j6KQ==
X-Received: by 2002:a92:c7cf:: with SMTP id g15mr2492079ilk.28.1623912552626; 
 Wed, 16 Jun 2021 23:49:12 -0700 (PDT)
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com.
 [209.85.166.170])
 by smtp.gmail.com with ESMTPSA id e2sm331638iot.50.2021.06.16.23.49.12
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 16 Jun 2021 23:49:12 -0700 (PDT)
Received: by mail-il1-f170.google.com with SMTP id x12so4502264ill.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jun 2021 23:49:12 -0700 (PDT)
X-Received: by 2002:a05:6602:2344:: with SMTP id
 r4mr2559955iot.69.1623912068770; 
 Wed, 16 Jun 2021 23:41:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210616062157.953777-1-tientzu@chromium.org>
 <20210616120837.GA22783@willie-the-truck>
In-Reply-To: <20210616120837.GA22783@willie-the-truck>
From: Claire Chang <tientzu@chromium.org>
Date: Thu, 17 Jun 2021 14:40:57 +0800
X-Gmail-Original-Message-ID: <CALiNf28SSxhs_+9Oq=pyOc7OWWDyWrtZLUqXKQKin6dRyXwo=w@mail.gmail.com>
Message-ID: <CALiNf28SSxhs_+9Oq=pyOc7OWWDyWrtZLUqXKQKin6dRyXwo=w@mail.gmail.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [Intel-gfx] [PATCH v12 00/12] Restricted DMA
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
 Jianxiong Gao <jxgao@google.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, airlied@linux.ie,
 Dan Williams <dan.j.williams@intel.com>, linuxppc-dev@lists.ozlabs.org,
 Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 boris.ostrovsky@oracle.com,
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

v13: https://lore.kernel.org/patchwork/cover/1448001/
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
