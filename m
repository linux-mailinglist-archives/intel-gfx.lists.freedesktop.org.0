Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA46557EA94
	for <lists+intel-gfx@lfdr.de>; Sat, 23 Jul 2022 02:18:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 680AA12AD4C;
	Sat, 23 Jul 2022 00:18:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5624514A26C
 for <intel-gfx@lists.freedesktop.org>; Sat, 23 Jul 2022 00:18:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1658535487;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iEphr6ZIYFwSwZ4pYciMnV/Wf4dcsbYqo+HwMi5Di7E=;
 b=LMTsr2PkfY48G8v1QmwXSNt4IwvfqXUtfE+S+wLFUNMOQ9UGIJ2V9lkAAZAfGQt9YsFD58
 60j0Zyj3EO3g2m9r67Sfh4kpWzkx9UWxaReJl0UPua3UtZvY2400fsekJCmmWiuvK+fo8Y
 lLvbhl+fNHOuSRvJ5aNmQ/1siHvThmw=
Received: from mail-il1-f198.google.com (mail-il1-f198.google.com
 [209.85.166.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-226-a3QT-ArFM5i--PHeCuXwLw-1; Fri, 22 Jul 2022 20:18:04 -0400
X-MC-Unique: a3QT-ArFM5i--PHeCuXwLw-1
Received: by mail-il1-f198.google.com with SMTP id
 e9-20020a056e020b2900b002dc6c27849cso3508165ilu.8
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jul 2022 17:18:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=iEphr6ZIYFwSwZ4pYciMnV/Wf4dcsbYqo+HwMi5Di7E=;
 b=PAkw75ID422Jb+eC9rMJML8WSl8Cowen67Z8zjiYBB3/v5P6HcKMvB58P52zuJytbI
 8QGZyKbYySmO0W3q70B48ipYLRjKtysWmzs7mr+rTjmusw8tu7aMyS8ffCVbUrxyikDW
 P5ED726XRFvZDSKYrqyq/ofm5Af7xYqxrU+Ygz3HXz7uA6cCdvxQKIRF1SdPx4D5fwlO
 pjPZ26R7eU3VFjQWxQ7Bp6LRs8kghUZbNM2fYvhflbSDtI4Q7MeHM7pUIWrq8Z6VjTqp
 cqAlp7Vcx1TJ/g4G+OaEV471IaaWljAbgRwy0QSnaQlSbqOqoPvI2MUXgRE1RYbWfa17
 wqAg==
X-Gm-Message-State: AJIora+HoJOTef6vRbnvRrjMNhU3mu7sn4JSZ/ilV/rlOB3ylfFObmUI
 c2inKh6ofBcxplidJAzoKfODp+NSpWnuWQ/1c0TyMyhXgLUW/d7jPryu9wcx+Do+RppUo+QEqKO
 /vmwkcgCVQDeDZJy15yGXajFXxfQm
X-Received: by 2002:a05:6638:160c:b0:33f:54c7:ee69 with SMTP id
 x12-20020a056638160c00b0033f54c7ee69mr1050252jas.65.1658535483694; 
 Fri, 22 Jul 2022 17:18:03 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1vh5y3jozCZ7iRDuGEDUiaJjAA10VNoYNXKY4pR3tY8wyP5ioYAHZdpqHyeNFeMGRhrxZbgZA==
X-Received: by 2002:a05:6638:160c:b0:33f:54c7:ee69 with SMTP id
 x12-20020a056638160c00b0033f54c7ee69mr1050243jas.65.1658535483492; 
 Fri, 22 Jul 2022 17:18:03 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 n4-20020a056602340400b00674f9fb1531sm2752495ioz.30.2022.07.22.17.18.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Jul 2022 17:18:03 -0700 (PDT)
Date: Fri, 22 Jul 2022 18:18:00 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Nicolin Chen <nicolinc@nvidia.com>
Message-ID: <20220722181800.56093444.alex.williamson@redhat.com>
In-Reply-To: <Ytsu07eGHS9B7HY8@Asurada-Nvidia>
References: <20220708224427.1245-1-nicolinc@nvidia.com>
 <20220722161129.21059262.alex.williamson@redhat.com>
 <Ytsu07eGHS9B7HY8@Asurada-Nvidia>
Organization: Red Hat
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=alex.williamson@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3 00/10] Update vfio_pin/unpin_pages API
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
Cc: mjrosato@linux.ibm.com, linux-doc@vger.kernel.org, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 kwankhede@nvidia.com, terrence.xu@intel.com, vneethv@linux.ibm.com,
 agordeev@linux.ibm.com, hch@infradead.org, kvm@vger.kernel.org, corbet@lwn.net,
 pasic@linux.ibm.com, jgg@nvidia.com, borntraeger@linux.ibm.com,
 intel-gfx@lists.freedesktop.org, jjherne@linux.ibm.com, farman@linux.ibm.com,
 jchrist@linux.ibm.com, gor@linux.ibm.com, linux-s390@vger.kernel.org,
 hca@linux.ibm.com, freude@linux.ibm.com, rodrigo.vivi@intel.com,
 intel-gvt-dev@lists.freedesktop.org, akrowiak@linux.ibm.com, cohuck@redhat.com,
 oberpar@linux.ibm.com, svens@linux.ibm.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 22 Jul 2022 16:12:19 -0700
Nicolin Chen <nicolinc@nvidia.com> wrote:

> On Fri, Jul 22, 2022 at 04:11:29PM -0600, Alex Williamson wrote:
> 
> > GVT-g explodes for me with this series on my Broadwell test system,
> > continuously spewing the following:  
> 
> Thank you for running additional tests.
> 
> > [   47.348778] WARNING: CPU: 3 PID: 501 at drivers/vfio/vfio_iommu_type1.c:978 vfio_iommu_type1_unpin_pages+0x7b/0x100 [vfio_iommu_type1]  
>  
> > Line 978 is the WARN_ON(i != npage) line.  For the cases where we don't
> > find a matching vfio_dma, I'm seeing addresses that look maybe like
> > we're shifting  a value that's already an iova by PAGE_SHIFT somewhere.  
> 
> Hmm..I don't understand the PAGE_SHIFT part. Do you mind clarifying?

The iova was a very large address for a 4GB VM with a lot of zeros on
the low order bits, ex. 0x162459000000.  Thanks,

Alex
 
> And GVT code initiated an unpin request from gvt_unpin_guest_pag()
> that is currently unpinning one page at a time on a contiguous IOVA
> range, prior to this series. After this series, it leaves the per-
> page routine to the internal loop of vfio_iommu_type1_unpin_pages(),
> which is supposed to do the same.
> 
> So, either resulted from the npage input being wrong or some other
> factor weighed in that invoked a vfio_remove_dma on those iovas?
> 
> Thanks
> Nic
> 

