Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 966C3378088
	for <lists+intel-gfx@lfdr.de>; Mon, 10 May 2021 11:54:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E706F89CCB;
	Mon, 10 May 2021 09:54:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com
 [IPv6:2607:f8b0:4864:20::102c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5759D89CCB
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 May 2021 09:54:21 +0000 (UTC)
Received: by mail-pj1-x102c.google.com with SMTP id
 gx21-20020a17090b1255b02901589d39576eso3437838pjb.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 May 2021 02:54:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FsG0kiz0NRABZofCxSQspiIrXqavy4umxXhfkY+/Sxk=;
 b=W+HYriAR9Do/fBW2QstFckigQIl1nRoVqh8kV8zVcpd71XHdedwgr9ODHG4afQkOIy
 ynwXu3yhnIcmMABVDj/QNeRt0F7V/f3la3pyVX+S+CEgEQdWOUMw7w57whXmk3tKqZQ+
 S7fuzxNEGgGmhiunD9+8473p2BUhLcDS4p74Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FsG0kiz0NRABZofCxSQspiIrXqavy4umxXhfkY+/Sxk=;
 b=RL1u5Klvm9jfaPeTbfGm6m01+z2+1PHk7W5Mxvjx2S9Ybmrh+zCm7JJ1lyPDFft9j3
 zAPHvFRrjXMZH8Gz01HxuobwO4+pYXFApIoximRuEQcRq73Uk8U7sla19lO/1LaDnk35
 LwqNLF6Ipl24WX/A9Chy2j22QlhgOLBNWftJI318bhijoysSdu6C7AkfBqpdvkZzmesx
 EtdD+11fkHaX9k75gGExnbsg+dH5AGhZv9LMIr3CAKRd5u4fnkMUsSmluP5hFA/poM7Q
 2c6JASlLj0nMcxdPF6fYVbWcRiHZoTBzCjPSrqCzIbSE6/PVPhVWAmeREOeAh6gLP08P
 msSQ==
X-Gm-Message-State: AOAM533B5/4fWg0zD929v8V8SpfrVTn0f6GdV9D0VRcfDbZSpg4Crn1J
 Gvqv4Qb34RpUbr1jF20Fp5ke3onRbfAkZA==
X-Google-Smtp-Source: ABdhPJxZZZ0cSi8ZzSd4LydfiLhlU2/5yr4yjOlTMhi0tnazorNmEvT5UW7iZ/G8ybnxre3gEbiC+w==
X-Received: by 2002:a17:90b:3551:: with SMTP id
 lt17mr27001624pjb.92.1620640460770; 
 Mon, 10 May 2021 02:54:20 -0700 (PDT)
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com.
 [209.85.215.181])
 by smtp.gmail.com with ESMTPSA id u10sm179150pfl.123.2021.05.10.02.54.19
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 10 May 2021 02:54:20 -0700 (PDT)
Received: by mail-pg1-f181.google.com with SMTP id m124so12875016pgm.13
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 May 2021 02:54:19 -0700 (PDT)
X-Received: by 2002:a92:6804:: with SMTP id d4mr20856971ilc.5.1620640447894;
 Mon, 10 May 2021 02:54:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210422081508.3942748-1-tientzu@chromium.org>
In-Reply-To: <20210422081508.3942748-1-tientzu@chromium.org>
From: Claire Chang <tientzu@chromium.org>
Date: Mon, 10 May 2021 17:53:57 +0800
X-Gmail-Original-Message-ID: <CALiNf2_h8r6jpd1JqTwNEmW22KK8aT9B4djLKkYP7Hhnju2EKw@mail.gmail.com>
Message-ID: <CALiNf2_h8r6jpd1JqTwNEmW22KK8aT9B4djLKkYP7Hhnju2EKw@mail.gmail.com>
To: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
 Frank Rowand <frowand.list@gmail.com>,
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, 
 boris.ostrovsky@oracle.com, jgross@suse.com, Christoph Hellwig <hch@lst.de>, 
 Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [Intel-gfx] [PATCH v5 00/16] Restricted DMA
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
 nouveau@lists.freedesktop.org, Greg KH <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, lkml <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>,
 "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Jim Quinlan <james.quinlan@broadcom.com>, linuxppc-dev@lists.ozlabs.org,
 bauerman@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

v6: https://lore.kernel.org/patchwork/cover/1423201/
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
