Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C777C72E9D1
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jun 2023 19:31:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1405010E05E;
	Tue, 13 Jun 2023 17:31:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E083010E05E
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jun 2023 17:31:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1686677510;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UFob1aFAu0uRDZrX0tACTzFE1GhOsHEDLUDxSxQ/iS8=;
 b=TN5Nd19SuKZZnB6czUSvXLQ8QvtyesX6rVr9mTS5UNPpmoGAvWbJ7z74dLh4SEIyVRu7at
 qqdhueTIOms00M0TrAxWtRSDxVXGbTVxm4lAT5E7uoKSH4cqQZB79TXEBoTNl0MW4xbcvv
 t7PTU6RrbViAP5Cjv12bpefOx25fY2U=
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-456-QTbbLrL8MlG9XhJ6N2QJBg-1; Tue, 13 Jun 2023 13:31:48 -0400
X-MC-Unique: QTbbLrL8MlG9XhJ6N2QJBg-1
Received: by mail-io1-f71.google.com with SMTP id
 ca18e2360f4ac-7748b80141aso624648839f.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jun 2023 10:31:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686677507; x=1689269507;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=UFob1aFAu0uRDZrX0tACTzFE1GhOsHEDLUDxSxQ/iS8=;
 b=WGe4kDKyOJ+4h7Bi9bQCoCXBdOezsv7hnHMGSoNlLQio5D/YUKUaAa4l1bXtvNXfio
 0+EHAqQUACVbS3T2eE2G+sHpCpTDcFDepVAJExTgJhAUZCUEXEkt/PHjUreV/rm9x+nI
 aTbesOwsXvKnKWHCuESDzYitA41ae1Lko3T5oixbcTKj5oStGEgFq08971jLaH4L9xgF
 ptuKr0UNeGg+Ib23aT981JUX3njYfuIheJTmzWCbwI8uRuFfTCGTrAEMdvcwG6jVqyoI
 T1x3pykXRBq1kcFszngk71Mcli0k8pi6XmBFZL/hbP0pYYAGJ4JjdT7oXtqc4ZTX02Al
 3sLQ==
X-Gm-Message-State: AC+VfDzYBMagyQuxuXXj+7DHmpyGD4w1o9GMw4M6ngktdVvZRU6dTowB
 btE/cZGoTxyr5p3g2Y7A6qCJPw/yWwyAu+L6p0SIU4PxK55MMi4NLEbr7REk80/wVEQ7ailhVo7
 PkvIT0co9cVEjtL5ZWecoCyGFTvMv
X-Received: by 2002:a6b:6611:0:b0:774:ae01:fe1a with SMTP id
 a17-20020a6b6611000000b00774ae01fe1amr11606439ioc.7.1686677507012; 
 Tue, 13 Jun 2023 10:31:47 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ6bJFfYsjTQdozyUeq9/qeGnMAlrvVCxaIfEt3FiroYG03nbc7MFTmdssUxFLgFVi603YCgtg==
X-Received: by 2002:a6b:6611:0:b0:774:ae01:fe1a with SMTP id
 a17-20020a6b6611000000b00774ae01fe1amr11606418ioc.7.1686677506733; 
 Tue, 13 Jun 2023 10:31:46 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 z3-20020a5ec903000000b0077ac811b20dsm3980818iol.38.2023.06.13.10.31.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jun 2023 10:31:46 -0700 (PDT)
Date: Tue, 13 Jun 2023 11:31:45 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20230613113145.66b02d0f.alex.williamson@redhat.com>
In-Reply-To: <ZIilFVb3sKnBgH2F@nvidia.com>
References: <20230602121653.80017-1-yi.l.liu@intel.com>
 <20230602121653.80017-8-yi.l.liu@intel.com>
 <20230612155210.5fd3579f.alex.williamson@redhat.com>
 <DS0PR11MB75293327BDE6D268996FFFCCC355A@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230613081647.740f5217.alex.williamson@redhat.com>
 <ZIilFVb3sKnBgH2F@nvidia.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v12 07/24] vfio: Block device access via
 device fd until device is opened
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
Cc: "mjrosato@linux.ibm.com" <mjrosato@linux.ibm.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>, "Hao,
 Xudong" <xudong.hao@intel.com>, "Duan, Zhenzhong" <zhenzhong.duan@intel.com>,
 "peterx@redhat.com" <peterx@redhat.com>, "Xu,
 Terrence" <terrence.xu@intel.com>,
 "chao.p.peng@linux.intel.com" <chao.p.peng@linux.intel.com>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>, "Liu,
 Yi L" <yi.l.liu@intel.com>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "lulu@redhat.com" <lulu@redhat.com>, "Jiang,
 Yanting" <yanting.jiang@intel.com>, "joro@8bytes.org" <joro@8bytes.org>,
 "nicolinc@nvidia.com" <nicolinc@nvidia.com>, "Tian,
 Kevin" <kevin.tian@intel.com>, "Zhao, Yan Y" <yan.y.zhao@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "eric.auger@redhat.com" <eric.auger@redhat.com>,
 "intel-gvt-dev@lists.freedesktop.org" <intel-gvt-dev@lists.freedesktop.org>,
 "yi.y.sun@linux.intel.com" <yi.y.sun@linux.intel.com>,
 "clegoate@redhat.com" <clegoate@redhat.com>,
 "cohuck@redhat.com" <cohuck@redhat.com>,
 "shameerali.kolothum.thodi@huawei.com" <shameerali.kolothum.thodi@huawei.com>,
 "suravee.suthikulpanit@amd.com" <suravee.suthikulpanit@amd.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 13 Jun 2023 14:19:17 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:

> On Tue, Jun 13, 2023 at 08:16:47AM -0600, Alex Williamson wrote:
> 
> > > Not quite get why bit field is going to be incompatible with smp
> > > lockless operations. Could you elaborate a bit? And should I define
> > > the access_granted as u8 or "u8:1"?  
> > 
> > Perhaps FUD on my part, but load-acquire type operations have specific
> > semantics and it's not clear to me that they interest with compiler
> > generated bit operations.  Thanks,  
> 
> They won't compile if you target bit ops, you can't take the address
> of a bitfield.

Yup, that's what I was assuming but was too lazy to prove it.  Thanks,

Alex

