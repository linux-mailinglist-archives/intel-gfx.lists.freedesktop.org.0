Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE73C5EFCFA
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 20:24:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B744110E00C;
	Thu, 29 Sep 2022 18:24:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E9EF10EBE2
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 18:24:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1664475874;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=BoITIusWH1pgiQYYyYgg2aTCkDBnXRgVNx9UWZzrGmA=;
 b=OqcMvHd+HH89EI8UXhMCTpgc95JY4q2oPDPDMHN+rG+xKoIKL6KQo3Q1ABrYRtnFvu41+l
 JiJvhpYBHgd7ITHa6cpubjXPTQdb3dxfutlcJURTUvmseF9waOP0/Zdcov0RCPcG3FaM2e
 gjF7RIegpRW3AWLNPVEbMpYzSyCj2xY=
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-539-eDkygUubMU2sg1jHpQ4EZQ-1; Thu, 29 Sep 2022 14:24:33 -0400
X-MC-Unique: eDkygUubMU2sg1jHpQ4EZQ-1
Received: by mail-io1-f70.google.com with SMTP id
 u9-20020a5edd49000000b006a0f03934e9so1251757iop.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 11:24:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:organization:references
 :in-reply-to:message-id:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date;
 bh=BoITIusWH1pgiQYYyYgg2aTCkDBnXRgVNx9UWZzrGmA=;
 b=fpa/Oq684/C1WveXCvY1D0sdCwMfoXn2kst4kKZbUIdkQ7QKuFkavWoGKv8zcYORvH
 i/phgn7FMYKPaWckP2TZemV+4ounG5JAb2YFPvQGWi5RdySk/vy1qJzeYTXM5wrggl6r
 U4pNN2dzTkxnukbBkChn0pucOVrDuxEbUbNirjphpoIxw0VtUxw76h/zr08KBNF23szq
 WzVBKNxKsMN/mc4mNWtkkh8kG4c9CcVLdMhOY1E+s1sC4Vc9kgw/BxQa0u4m9lq8funy
 +tFfOl7gsHxddYzBxve8jCpliExU55yaagXi8kNfjTQg9ROG530XX5tq2DpzS3o0h9rk
 FImg==
X-Gm-Message-State: ACrzQf1YeLz7ZyD1ywzOEPp2ww0acCLIwLeL23oE1CZWj8BJQgZciaib
 JSgksZaePHOc+82HM4KCE9ynH/sZQxdLQ85CeKcfk2/MWH780Y/3h9qaQw7w26zecMLL6P24syp
 OtrcUC0EAQFxOZ74rB8LZsq3RBdKi
X-Received: by 2002:a05:6e02:19ce:b0:2f1:68a6:3bec with SMTP id
 r14-20020a056e0219ce00b002f168a63becmr2392105ill.78.1664475872959; 
 Thu, 29 Sep 2022 11:24:32 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM7KUOQo8AbbarGobEgnbxdcS5bS2mn744LEcpjpU+rvkCIe35jyhAfEJ5Pm5FWlRH0iLBHEPg==
X-Received: by 2002:a05:6e02:19ce:b0:2f1:68a6:3bec with SMTP id
 r14-20020a056e0219ce00b002f168a63becmr2392060ill.78.1664475872712; 
 Thu, 29 Sep 2022 11:24:32 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 f13-20020a05660215cd00b006a1fed36549sm96051iow.10.2022.09.29.11.24.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 29 Sep 2022 11:24:31 -0700 (PDT)
Date: Thu, 29 Sep 2022 12:24:27 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20220929122427.3a3bca9a.alex.williamson@redhat.com>
In-Reply-To: <YzXaxPpkc+90Xx+T@ziepe.ca>
References: <20220921104401.38898-1-kevin.tian@intel.com>
 <20220921104401.38898-16-kevin.tian@intel.com>
 <20220929105519.5c9ae1d8.alex.williamson@redhat.com>
 <YzXaxPpkc+90Xx+T@ziepe.ca>
Organization: Red Hat
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v4 15/15] vfio: Add struct device to
 vfio_device
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
Cc: Matthew Rosato <mjrosato@linux.ibm.com>, David Airlie <airlied@linux.ie>,
 Eric Farman <farman@linux.ibm.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Kirti Wankhede <kwankhede@nvidia.com>,
 Vineeth Vijayan <vneethv@linux.ibm.com>,
 Diana Craciun <diana.craciun@oss.nxp.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Longfang Liu <liulongfang@huawei.com>, Christoph Hellwig <hch@infradead.org>,
 Yi Liu <yi.l.liu@intel.com>, kvm@vger.kernel.org,
 Leon Romanovsky <leon@kernel.org>, Halil Pasic <pasic@linux.ibm.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 intel-gfx@lists.freedesktop.org, Tony Krowiak <akrowiak@linux.ibm.com>,
 Vasily Gorbik <gor@linux.ibm.com>, linux-s390@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>, Eric Auger <eric.auger@redhat.com>,
 Harald Freudenberger <freude@linux.ibm.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gvt-dev@lists.freedesktop.org,
 Jason Herne <jjherne@linux.ibm.com>, Yishai Hadas <yishaih@nvidia.com>,
 Cornelia Huck <cohuck@redhat.com>, Peter Oberparleiter <oberpar@linux.ibm.com>,
 Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>,
 Sven Schnelle <svens@linux.ibm.com>, Daniel Vetter <daniel@ffwll.ch>,
 Abhishek Sahu <abhsahu@nvidia.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 29 Sep 2022 14:49:56 -0300
Jason Gunthorpe <jgg@ziepe.ca> wrote:

> On Thu, Sep 29, 2022 at 10:55:19AM -0600, Alex Williamson wrote:
> > Hi Kevin,
> > 
> > This introduced the regression discovered here:
> > 
> > https://lore.kernel.org/all/20220928125650.0a2ea297.alex.williamson@redhat.com/
> > 
> > Seems we're not releasing the resources when removing an mdev.  This is
> > a regression, so it needs to be fixed or reverted before the merge
> > window.  Thanks,  
> 
> My guess at the fix for this:
> 
> https://lore.kernel.org/r/0-v1-013609965fe8+9d-vfio_gvt_unregister_jgg@nvidia.com

Indeed this seems to work  I'll look for acks and further reviews from
Intel folks. Thanks!

Alex

