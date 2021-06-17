Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A9B3AAC64
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jun 2021 08:32:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 009CA6E86E;
	Thu, 17 Jun 2021 06:32:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com
 [IPv6:2607:f8b0:4864:20::62a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20F396E08E
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jun 2021 06:32:24 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id h12so2388466plf.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jun 2021 23:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IqsCA/yjikDS1aCYzllqiH9HoLVcQQhYIn5qSeonABE=;
 b=kDczImboY2eVAJ3+sYnRR25HrludaTlIxUHPV26t7zvADYlkn+EAot8vmNZFxS6ckk
 NyqXP6vgSOkhkXMigW38BKTSHGkozev95CT8sd0RyYFWHSEXQf1vzK9yA5xbK5UPbuEq
 Bn0NNhaz+a2zeBhstpYyx1baPQ8VKdD07y9nQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IqsCA/yjikDS1aCYzllqiH9HoLVcQQhYIn5qSeonABE=;
 b=EAAGcIilqmpV0vTgM60Ckzcra7sVXCkisnUhZ8fpU/Rb0B7wqkZ8gnZwycdw9q51WC
 UH+e+7nO3lsBImRXVQ4Lc0Zk15TxWL8U9pNTW3hULVLXlHSXnZ2J8I7u/toTZkRAiQm5
 7Y0etBAibAOBLphepJaS+jIOlDinm0YzNqSE1t3JY8NQY2EcEgZAQUSLAW3Vv49rbe9n
 iihfTH5uh//WkRM7ZoxsyhwmH+xF6/zIEAfum55d6ZYCAWJXlawmty21Ay4H2gZfM7zu
 1yonoujB0/VH9xwLMfRKlyiRwzlybnTOVic35JYYSS5ASK1acA3XLNJnkpnfmmNBi+Dt
 RNIA==
X-Gm-Message-State: AOAM530ZQOpCRCg5nAVViHVCluTDLZLtY2qNPxgfuB1o/FCJo7yLhtiv
 3uqStuqX+wQZmuQNgH4C0k1AVhT7mSO8Cw==
X-Google-Smtp-Source: ABdhPJwasmb/xzSLN32p1b8PBgpcMLoKqLps7hRZsbSYu23PaRKiAyLfkd9Fs/bPyuWkidCEtQz7WA==
X-Received: by 2002:a17:90a:ce87:: with SMTP id
 g7mr15059334pju.189.1623911543543; 
 Wed, 16 Jun 2021 23:32:23 -0700 (PDT)
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com.
 [209.85.210.169])
 by smtp.gmail.com with ESMTPSA id y2sm3788134pfa.195.2021.06.16.23.32.22
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 16 Jun 2021 23:32:22 -0700 (PDT)
Received: by mail-pf1-f169.google.com with SMTP id k15so4177405pfp.6
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Jun 2021 23:32:22 -0700 (PDT)
X-Received: by 2002:a92:c852:: with SMTP id b18mr352877ilq.18.1623911531698;
 Wed, 16 Jun 2021 23:32:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210617062635.1660944-1-tientzu@chromium.org>
In-Reply-To: <20210617062635.1660944-1-tientzu@chromium.org>
From: Claire Chang <tientzu@chromium.org>
Date: Thu, 17 Jun 2021 14:32:00 +0800
X-Gmail-Original-Message-ID: <CALiNf2_qF7OY0LHToNYx0E79BWMt2n7=nepPPLf+7YV3=KFEyw@mail.gmail.com>
Message-ID: <CALiNf2_qF7OY0LHToNYx0E79BWMt2n7=nepPPLf+7YV3=KFEyw@mail.gmail.com>
To: Rob Herring <robh+dt@kernel.org>, mpe@ellerman.id.au,
 Joerg Roedel <joro@8bytes.org>, 
 Will Deacon <will@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
 Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, boris.ostrovsky@oracle.com,
 jgross@suse.com, 
 Christoph Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>
Subject: Re: [Intel-gfx] [PATCH v13 00/12] Restricted DMA
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

v13: https://lore.kernel.org/patchwork/cover/1448001/
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
