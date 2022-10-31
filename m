Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E716140E6
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Oct 2022 23:53:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEF6C10E1E6;
	Mon, 31 Oct 2022 22:53:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B2C610E1E6
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 22:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1667256796;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=bHpC1zf1qV1jmlc1wntYS1OKLTiiLa4Edpg3f0kbUyY=;
 b=BN+EvRRauibQvs3QghlcOMA5pe5ImWI5cEWd7QybddMNxesYL4CaSpebsOAmomxq+/mB7/
 3s2O/DNzba+UPTrsdpDQ5wb+q7FHhFSFz5199z3lEZrtONUodBbfoZRBxqsGkReZ+BDQUp
 LWO6ZFL5YEgD5CzvgLxgVboO1WWxvyE=
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-564-Ob-NsJGAO8C_aR916iWcOQ-1; Mon, 31 Oct 2022 18:53:14 -0400
X-MC-Unique: Ob-NsJGAO8C_aR916iWcOQ-1
Received: by mail-il1-f200.google.com with SMTP id
 w13-20020a056e021c8d00b00300ad5b16a0so3275658ill.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Oct 2022 15:53:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=bHpC1zf1qV1jmlc1wntYS1OKLTiiLa4Edpg3f0kbUyY=;
 b=prmb60fnIUr5AqIYaCAZ12M0zdtBB2mVsZtfNn+FWPecrYAkK8Ueqtv7+QyXpWBgxu
 2IayhYFP/gmHxzvzIJHmScZ86C2nkfawNaSOl8+BIF3wH6sDXQhJe8vRXvnvaNh7OJb2
 BBt3VKPHfZbpTG+me+6xjT0lc73+TYzKhr/Of17CK0+jPY8PtYqTU9kwn4TPCd2ql+Qq
 6RiMjlCoft1rnDPE7hcHSeYfOqNcnz9KCogT1GfXOKlBmfPT0azy93oz2RNQeMY6Zy5k
 3zgCRQ/sPA6xU9S++yYyCPoAWRjMNAGSHoGsLNK2d8FvoeztBUPzlQve/4ieUNMxc87G
 sOzQ==
X-Gm-Message-State: ACrzQf3M8qPajLESMhGb+CnlsY8wfRQiiKolxgZBJ/RtyreCTtN+c9Lt
 ywz86HTGHAULK59g42At74wkwbi1FjMRvdq9uE7gRxdThOTlCv3AQuu1AdlUGVcvspdNOWo40vP
 4GTKXa4dVe6P8Hh6NeLm/uRJ5xPM1
X-Received: by 2002:a05:6e02:180c:b0:2fc:4018:9440 with SMTP id
 a12-20020a056e02180c00b002fc40189440mr7991816ilv.225.1667256793694; 
 Mon, 31 Oct 2022 15:53:13 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM7liCEme2wsc4XzJa+HajVmv1KVpsxVcMQII15KI4qdQbhYdKRKQskOMruD/YfHk1W7Cq0evQ==
X-Received: by 2002:a05:6e02:180c:b0:2fc:4018:9440 with SMTP id
 a12-20020a056e02180c00b002fc40189440mr7991769ilv.225.1667256793463; 
 Mon, 31 Oct 2022 15:53:13 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 g15-20020a02850f000000b00372bbd04b75sm3200984jai.87.2022.10.31.15.53.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 Oct 2022 15:53:12 -0700 (PDT)
Date: Mon, 31 Oct 2022 16:53:11 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20221031165311.0698e1ea.alex.williamson@redhat.com>
In-Reply-To: <Y1wjFNxwPRm7S6yZ@nvidia.com>
References: <0-v1-4991695894d8+211-vfio_iommufd_jgg@nvidia.com>
 <10-v1-4991695894d8+211-vfio_iommufd_jgg@nvidia.com>
 <20221026153133.44dc05c8.alex.williamson@redhat.com>
 <Y1wjFNxwPRm7S6yZ@nvidia.com>
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.34; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 10/10] iommufd: Allow iommufd to supply
 /dev/vfio/vfio
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
Cc: kvm@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Vineeth Vijayan <vneethv@linux.ibm.com>,
 Diana Craciun <diana.craciun@oss.nxp.com>,
 Alexander Gordeev <agordeev@linux.ibm.com>, David Airlie <airlied@gmail.com>,
 Longfang Liu <liulongfang@huawei.com>, linux-s390@vger.kernel.org,
 Yi Liu <yi.l.liu@intel.com>, Matthew Rosato <mjrosato@linux.ibm.com>,
 Will Deacon <will@kernel.org>, Joerg Roedel <joro@8bytes.org>,
 Halil Pasic <pasic@linux.ibm.com>, iommu@lists.linux.dev,
 Nicolin Chen <nicolinc@nvidia.com>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 intel-gfx@lists.freedesktop.org, Jason Herne <jjherne@linux.ibm.com>,
 Eric Farman <farman@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>, Eric Auger <eric.auger@redhat.com>,
 Harald Freudenberger <freude@linux.ibm.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gvt-dev@lists.freedesktop.org,
 Tony Krowiak <akrowiak@linux.ibm.com>, Yishai Hadas <yishaih@nvidia.com>,
 Cornelia Huck <cohuck@redhat.com>, Peter Oberparleiter <oberpar@linux.ibm.com>,
 Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>,
 Sven Schnelle <svens@linux.ibm.com>, Daniel Vetter <daniel@ffwll.ch>,
 Robin Murphy <robin.murphy@arm.com>, Lu Baolu <baolu.lu@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 28 Oct 2022 15:44:36 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:

> On Wed, Oct 26, 2022 at 03:31:33PM -0600, Alex Williamson wrote:
> > On Tue, 25 Oct 2022 15:50:45 -0300
> > Jason Gunthorpe <jgg@nvidia.com> wrote:
> >   
> > > If the VFIO container is compiled out, give a kconfig option for iommufd
> > > to provide the miscdev node with the same name and permissions as vfio
> > > uses.
> > > 
> > > The compatibility node supports the same ioctls as VFIO and automatically
> > > enables the VFIO compatible pinned page accounting mode.  
> > 
> > I think I'd like to see some sort of breadcrumb when /dev/vfio/vfio is
> > provided by something other than the vfio container code.  If we intend
> > to include this before P2P is resolved, that breadcrumb   
> 
> I don't belive I can get P2P done soon enough. I plan to do it after
> this is merged. Right now these two series are taking all my time.
> 
> > (dmesg I'm guessing) might also list any known limitations of the
> > compatibility to save time with debugging.  Thanks,  
> 
> Yes, that makes sense.
> 
> Do you want a dmesg at module load time, on every open, or a sysfs
> something? What seems like it would make it into a bug report?

I think dmesg at module load time should probably be ok, every open
seems like harassment and sysfs would require updated support in
various bug reporting tools.  Users are often terrible about reporting
full dmesg in bugs, but they do often filter it for "IOMMU" or "VFIO",
so keep that in mind when crafting the log message.  Thanks,

Alex

