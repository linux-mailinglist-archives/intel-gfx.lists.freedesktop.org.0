Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DF13872B9
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 08:57:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C95D6EAA7;
	Tue, 18 May 2021 06:57:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com
 [IPv6:2607:f8b0:4864:20::f2c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 081E76EAA7
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 May 2021 06:56:59 +0000 (UTC)
Received: by mail-qv1-xf2c.google.com with SMTP id o59so4464726qva.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 May 2021 23:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=3HopsH6N9F8FpkG4FSoTMtRMwuiSWSuF3ZB9X+VJCjU=;
 b=LETfA+HNnfbbscLemZLHMHTU1ucDVUTbar59Z+Ip1n1aOSxU2vCiyi6AnzZ7ISe1Ci
 d5+6nDZp7u09C4wccj2HMQoLbhxVgGmyilxSsMMqy6XnJ9Gh0XN/+XAYDZzV88am1gOT
 FB7ehF0SoAEZFAQ80iPByl3CmJPeIGWiXIdbM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=3HopsH6N9F8FpkG4FSoTMtRMwuiSWSuF3ZB9X+VJCjU=;
 b=rwtfWcuhVbHevta6yqdU+7CRWK2fpeDh9BJDFHjntUhES/H3iDqiFrJLPNfnBfZ4Am
 lYlBSLpZAkEH8kFT+jZZK9RwtC2Up8JP9Y626ghfcFgLmGKGvltxeF3N+9wHgNxIRKUD
 YEVnC9poMjVHNTCPB2ujSoz066aCJq5+oR2terrRdAreUIHPNdPZdX65QpGKoBYALEka
 PJKRd1Zlj6czd6DSmUS6e+L2fmzNB8/OfKeQ8KzCCHKWLmC+9H2Swz58nJO7ohhCj1zY
 U9ZWNfc08owksSmFSSIAohmPxiFGqK6oUmSyj3IpUZBcQBxgAQ632QtT0DRJYgY5XN/h
 A5xA==
X-Gm-Message-State: AOAM533pZU50fdlZzc78ctNtrxXYx57trZfOYr2rU5u8pDz6tMgPM07b
 fWjAQLMUmgAM47XbNPVRVVpl031Qn9oulw==
X-Google-Smtp-Source: ABdhPJzveZGbqAVc1s1ODw5Ei7fSU5dawFSCH5aIOYkhm1WI1cjgXBG7+ckz9/g4iDnaYWyuXzI3ng==
X-Received: by 2002:a05:6214:c6c:: with SMTP id
 t12mr4077895qvj.34.1621321018043; 
 Mon, 17 May 2021 23:56:58 -0700 (PDT)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com.
 [209.85.222.180])
 by smtp.gmail.com with ESMTPSA id g15sm12116879qka.49.2021.05.17.23.56.57
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 May 2021 23:56:57 -0700 (PDT)
Received: by mail-qk1-f180.google.com with SMTP id l129so8315385qke.8
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 May 2021 23:56:57 -0700 (PDT)
X-Received: by 2002:a05:6638:32a8:: with SMTP id
 f40mr3969029jav.84.1621320526895; 
 Mon, 17 May 2021 23:48:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210518064215.2856977-1-tientzu@chromium.org>
 <20210518064215.2856977-5-tientzu@chromium.org>
In-Reply-To: <20210518064215.2856977-5-tientzu@chromium.org>
From: Claire Chang <tientzu@chromium.org>
Date: Tue, 18 May 2021 14:48:35 +0800
X-Gmail-Original-Message-ID: <CALiNf2_AWsnGqCnh02ZAGt+B-Ypzs1=-iOG2owm4GZHz2JAc4A@mail.gmail.com>
Message-ID: <CALiNf2_AWsnGqCnh02ZAGt+B-Ypzs1=-iOG2owm4GZHz2JAc4A@mail.gmail.com>
To: Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
 Joerg Roedel <joro@8bytes.org>, 
 Will Deacon <will@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, boris.ostrovsky@oracle.com,
 jgross@suse.com, 
 Christoph Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [Intel-gfx] [PATCH v7 04/15] swiotlb: Add restricted DMA pool
 initialization
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

I didn't move this to a separate file because I feel it might be
confusing for swiotlb_alloc/free (and need more functions to be
non-static).
Maybe instead of moving to a separate file, we can try to come up with
a better naming?
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
