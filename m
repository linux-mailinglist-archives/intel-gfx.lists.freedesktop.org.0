Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E03F72E5C6
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jun 2023 16:32:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 81D2E10E278;
	Tue, 13 Jun 2023 14:32:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6386B10E26A
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jun 2023 14:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1686666754;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pOBe3u1s+eJFktwias29L+WsMYtJMq4jH6Tw+Vkgi2s=;
 b=KqW1fcRlaHbONvTgQawiRB1AqwbB2WrQURS/y4QW9Lc+JSEjHtF2nRCF8U9UIaqfE/ed38
 EIgGykIDrcldXawKb0AhOJgVccB1UyjHxQabdAzAW+/7/1UULp1GmDwm8j8VmQqwn536Hl
 PRu71MFX5BnjAvGpnW/SVgvIM2NZgzI=
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-569-bkrH_okXNF68qPW7JUuPUA-1; Tue, 13 Jun 2023 10:32:31 -0400
X-MC-Unique: bkrH_okXNF68qPW7JUuPUA-1
Received: by mail-io1-f72.google.com with SMTP id
 ca18e2360f4ac-77b0124d7beso367646139f.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Jun 2023 07:32:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1686666751; x=1689258751;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=pOBe3u1s+eJFktwias29L+WsMYtJMq4jH6Tw+Vkgi2s=;
 b=eyLEqg4ADzJlgrziBEXb9KmvHQ7i2ewjJID+KuuK97qvrzDQY8z+hbO98BRB0YZMNX
 dZK600/ZEZ1978Tv5LGNHpp4NgvPnS4i1VCF7eWQk4n0GN3bet1milGicbiHDQiZQ1KW
 kfmLnCvjk2HRdUhoMKKgjEXR1YxJAwJyeku1M2wTN6ZsCOcgkklCuSPSDQw2p0XlEUJd
 NnVvqJPtW+WQBvY7w8I0jdbNp5FqS6JhAbrCnyuRowrO1mySYTyD+v2Os4LiM3fwVAFM
 J+oHEh7GTU/d5S+FzcuA0rScCV+3tqVrgk5DHG3OdIS83tKbeDBldlm5mgN9zHPJ8lxg
 T2Qg==
X-Gm-Message-State: AC+VfDxs+dkQDQqbSEXJC15zTi1Gr12Lh0UnFrvgGLsi5OH5Sp/6pq6p
 uvzVTgArzIRAX+LNQlaT3CV0jJAXZfYvif256NQRoq5MuS7HAPmOvhjSFAX3pMZBBb7cQ2RrQOo
 wf+mBrnAmmeqPF38cs1jxh5/EcVgE
X-Received: by 2002:a5e:9509:0:b0:77a:1307:1e4e with SMTP id
 r9-20020a5e9509000000b0077a13071e4emr12425283ioj.18.1686666750951; 
 Tue, 13 Jun 2023 07:32:30 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ4252UgzyjwK/6JESBkuqoz4Fs2H4UTz+cTpv5sInamQj+vl124qFJiPwRZfg1A0weA4qrYTA==
X-Received: by 2002:a5e:9509:0:b0:77a:1307:1e4e with SMTP id
 r9-20020a5e9509000000b0077a13071e4emr12425253ioj.18.1686666750721; 
 Tue, 13 Jun 2023 07:32:30 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 c7-20020a6bfd07000000b00760f256037dsm3847559ioi.44.2023.06.13.07.32.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Jun 2023 07:32:30 -0700 (PDT)
Date: Tue, 13 Jun 2023 08:32:29 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Message-ID: <20230613083229.44a3f3ec.alex.williamson@redhat.com>
In-Reply-To: <DS0PR11MB7529CFADCF0D6D6451E4F92AC355A@DS0PR11MB7529.namprd11.prod.outlook.com>
References: <20230602121515.79374-1-yi.l.liu@intel.com>
 <20230602121515.79374-9-yi.l.liu@intel.com>
 <ZIhXMmYjCyUdlGxe@nvidia.com>
 <DS0PR11MB7529CFADCF0D6D6451E4F92AC355A@DS0PR11MB7529.namprd11.prod.outlook.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v7 8/9] vfio/pci: Extend
 VFIO_DEVICE_GET_PCI_HOT_RESET_INFO for vfio device cdev
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
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "lulu@redhat.com" <lulu@redhat.com>, "Jiang,
 Yanting" <yanting.jiang@intel.com>, "joro@8bytes.org" <joro@8bytes.org>,
 "nicolinc@nvidia.com" <nicolinc@nvidia.com>, Jason Gunthorpe <jgg@nvidia.com>,
 "Tian, Kevin" <kevin.tian@intel.com>, "Zhao, 
 Yan Y" <yan.y.zhao@intel.com>,
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

On Tue, 13 Jun 2023 12:50:43 +0000
"Liu, Yi L" <yi.l.liu@intel.com> wrote:

> > From: Jason Gunthorpe <jgg@nvidia.com>
> > Sent: Tuesday, June 13, 2023 7:47 PM
> > 
> > On Fri, Jun 02, 2023 at 05:15:14AM -0700, Yi Liu wrote:  
> > > +/*
> > > + * Return devid for a device which is affected by hot-reset.
> > > + * - valid devid > 0 for the device that is bound to the input
> > > + *   iommufd_ctx.
> > > + * - devid == VFIO_PCI_DEVID_OWNED for the device that has not
> > > + *   been bound to any iommufd_ctx but other device within its
> > > + *   group has been bound to the input iommufd_ctx.
> > > + * - devid == VFIO_PCI_DEVID_NOT_OWNED for others. e.g. device
> > > + *   is bound to other iommufd_ctx etc.
> > > + */
> > > +int vfio_iommufd_device_hot_reset_devid(struct vfio_device *vdev,
> > > +					struct iommufd_ctx *ictx)
> > > +{
> > > +	struct iommu_group *group;
> > > +	int devid;
> > > +
> > > +	if (vfio_iommufd_device_ictx(vdev) == ictx)
> > > +		return vfio_iommufd_device_id(vdev);
> > > +
> > > +	group = iommu_group_get(vdev->dev);
> > > +	if (!group)
> > > +		return VFIO_PCI_DEVID_NOT_OWNED;
> > > +
> > > +	if (iommufd_ctx_has_group(ictx, group))
> > > +		devid = VFIO_PCI_DEVID_OWNED;
> > > +	else
> > > +		devid = VFIO_PCI_DEVID_NOT_OWNED;
> > > +
> > > +	iommu_group_put(group);
> > > +
> > > +	return devid;
> > > +}
> > > +EXPORT_SYMBOL_GPL(vfio_iommufd_device_hot_reset_devid);  
> > 
> > This function really should not be in the core iommufd.c file - it is
> > a purely vfio-pci function - why did you have to place it here?  
> 
> Put it here can avoid calling iommufd_ctx_has_group() in vfio-pci,
> which requires to import IOMMUFD_NS. If this reason is not so
> strong I can move it back to vfio-pci code.

The PCI-isms here are the name of the function and the return value,
otherwise this is simply a "give me the devid for this device in this
context".  The function name is trivial to change and we can define the
internal errno usage such that the vfio-pci-core code can interpret the
correct uAPI value.  For example, -EXDEV ("Cross-device link") could
maybe be interpreted as owned and any other errno is not-owned, -ENODEV
maybe being the default.

Errno values are often contentious, are there other suggestions?
Thanks,

Alex

