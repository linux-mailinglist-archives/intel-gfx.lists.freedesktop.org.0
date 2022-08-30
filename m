Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3F05A707E
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Aug 2022 00:18:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A54110E2B4;
	Tue, 30 Aug 2022 22:18:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E337210E28E
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 22:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1661897924;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TSSAWMfY5IhOGMsl4sCR/Sqq+wVCREXXNdNLZqAgz7E=;
 b=haAT8saYzxLxMLS6opPLqYOpK5z2CDpq24j7RLZc1gKVCr15T8DkU5mV7iBx0N0IrkwMme
 ixjQxAuikL3BGScFINYLLsKfDS9jP7OBJW0A8Kgci4ghRKWh++TeBqckOBGjS+GCgwpdhL
 TMKNAfrk8lITAH6Dpry1XSuvclwgeM4=
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-97-KZu7zW2AOZmcVDWje8FwqA-1; Tue, 30 Aug 2022 18:18:41 -0400
X-MC-Unique: KZu7zW2AOZmcVDWje8FwqA-1
Received: by mail-il1-f200.google.com with SMTP id
 d4-20020a056e02214400b002df95f624a4so9206503ilv.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 15:18:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:organization:references
 :in-reply-to:message-id:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc;
 bh=TSSAWMfY5IhOGMsl4sCR/Sqq+wVCREXXNdNLZqAgz7E=;
 b=6JnAtI2hbcWZthe9noMX7WplHCKRXOZ9IIkX0KcWl3RJXTD8zgua2p97vovpH/or/g
 61+2usSrzdlsHJGP4QHVGXGhBKOy+edUgvwWzjwypOGuh0VwrL6gTRbjzfjh47KvdT5o
 pncRLSl4T2OO2OAhEFgS9XbiA1LGGwb1JCYdRDcDj5VuM/MiZGbTfSg3cZ4zy1n2uTaz
 OM3+NGQbrLjfBSzo5xhCFlxWs8fGojCcrGPoc8FiCzODpPYTauw2mXDlt994HDyrh4oU
 xe6e/wehBxP7x+En6mWsorcEGszoWy1fkUov4y+EyhsOjQqtaxEWaLWWGLXNvnFH+O1v
 oNxQ==
X-Gm-Message-State: ACgBeo2YRfdhJwXhEvpQsnuhMZ4QwDROCUXc0hbd0SI8yk/nG2NvdE7i
 lJ49xFTAMCNzbMC2ONvwEkm3t3sOO4LnOXGpkNBRvRoiaojMXvyk7NtfXkuYnTRYTVjkvcVGAJI
 yo5T8ZEYAQk7KO3/Vw1g93ahgT5Qu
X-Received: by 2002:a05:6602:1c4:b0:689:2db5:ea0f with SMTP id
 w4-20020a05660201c400b006892db5ea0fmr11509846iot.197.1661897921390; 
 Tue, 30 Aug 2022 15:18:41 -0700 (PDT)
X-Google-Smtp-Source: AA6agR73OWrrAXNYUM7X5f/RFjdmLhOTn+HRSKcgl5cCW81jvTLPZGl1q1ozpKM9lFAFywZRpg27UQ==
X-Received: by 2002:a05:6602:1c4:b0:689:2db5:ea0f with SMTP id
 w4-20020a05660201c400b006892db5ea0fmr11509822iot.197.1661897921151; 
 Tue, 30 Aug 2022 15:18:41 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 z30-20020a056602081e00b0068b1858c81asm6110858iow.13.2022.08.30.15.18.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Aug 2022 15:18:40 -0700 (PDT)
Date: Tue, 30 Aug 2022 16:18:38 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Kevin Tian <kevin.tian@intel.com>
Message-ID: <20220830161838.4aa47045.alex.williamson@redhat.com>
In-Reply-To: <20220827171037.30297-16-kevin.tian@intel.com>
References: <20220827171037.30297-1-kevin.tian@intel.com>
 <20220827171037.30297-16-kevin.tian@intel.com>
Organization: Red Hat
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 15/15] vfio: Add struct device to vfio_device
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
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Kirti Wankhede <kwankhede@nvidia.com>, Vineeth Vijayan <vneethv@linux.ibm.com>,
 Diana Craciun <diana.craciun@oss.nxp.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>,
 Longfang Liu <liulongfang@huawei.com>, linux-s390@vger.kernel.org,
 Yi Liu <yi.l.liu@intel.com>, kvm@vger.kernel.org,
 Leon Romanovsky <leon@kernel.org>, Halil Pasic <pasic@linux.ibm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 intel-gfx@lists.freedesktop.org, Tony Krowiak <akrowiak@linux.ibm.com>,
 Eric Farman <farman@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
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

On Sun, 28 Aug 2022 01:10:37 +0800
Kevin Tian <kevin.tian@intel.com> wrote:

> From: Yi Liu <yi.l.liu@intel.com>
> 
> and replace kref. With it a 'vfio-dev/vfioX' node is created under the
> sysfs path of the parent, indicating the device is bound to a vfio
> driver, e.g.:
> 
> /sys/devices/pci0000\:6f/0000\:6f\:01.0/vfio-dev/vfio0
> 
> It is also a preparatory step toward adding cdev for supporting future
> device-oriented uAPI.

Shall we start Documentation/ABI/testing/vfio-dev now?  Thanks.

Alex

