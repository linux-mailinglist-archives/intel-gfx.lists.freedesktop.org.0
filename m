Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E4D6D12C8
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 01:05:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B47F10F084;
	Thu, 30 Mar 2023 23:05:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3AA110F084
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 23:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680217537;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TMatgO6BH6GC06VsPyDFmO7jcdjVEhbN0H0T7ElgUC8=;
 b=B5k3Jb5c0BGQmd/KU+Tz1PTuNde0b8SdLnU15mf5xqcint4Y8BBrvzmQOgCt7WHBkHz1qN
 l1hgHn2UQDvF9Tb/roHDSqKiiD6m3MOwTk6WcLKZTLgsbKfFwhs2bCCLXeZOSO0zvDAWP8
 jw8q6jSp+C1tQ2G7ypfrdjEF6P08jnk=
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-547-DPnB758mMVKnCu_i7F19cQ-1; Thu, 30 Mar 2023 19:05:34 -0400
X-MC-Unique: DPnB758mMVKnCu_i7F19cQ-1
Received: by mail-io1-f72.google.com with SMTP id
 v126-20020a6bac84000000b007587234a54cso12384608ioe.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 16:05:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680217534;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=TMatgO6BH6GC06VsPyDFmO7jcdjVEhbN0H0T7ElgUC8=;
 b=odW8iNHJUEII/MhzhewPZEkSq/JON4C0FUlab56SY1le/LFb/YO+jtal+5xGUXT4Fa
 it/rrHhOIVMIAALOU3CwnEurLQBluP2ssuExCqQ/jAL+qniNNi3xzf4M+tzjCfP4m5To
 FG4e9nF5Vc1rpmgzZH0SuxBy6XQcJEUXHG74JW8CLCKGbLczfrwKQFTLBfF/yHiQ7lC+
 ZYoooUwCEBne4dC9Jovt6yjU8z1hBSVpvp8IKk6DsoodlWBzSq7a/xw0QFariS5cbzlU
 nUZLWfZFExSgimOG2NYZFoyi5EdBgDyKLN8We4hTMMH6isSHoaCXCoXKoEv3ZgnC+RF0
 DTKg==
X-Gm-Message-State: AO0yUKU4ZneewJhRCvYohIHJtpygC/k4Ysmf2dzRTv7QYJJxii7OvamB
 whHrwuX18JgbLiS0nDajNw4D8l1HEXWUDcaqSUt7M4qQF1fgRm0JXYuYY7QN3G/O7W4i+eOw+9T
 ubGe1EnVFZ0sVKG2qPPSkmwxozP8w
X-Received: by 2002:a5e:d606:0:b0:750:6c44:3454 with SMTP id
 w6-20020a5ed606000000b007506c443454mr18191684iom.12.1680217533759; 
 Thu, 30 Mar 2023 16:05:33 -0700 (PDT)
X-Google-Smtp-Source: AK7set8/aJ7IpuNBdq7qV6Sm6acZzS/OWNOFTVCSNmhDCnhCPHu0seHdmhZKi6cwPTOuCTVmWl7Umw==
X-Received: by 2002:a5e:d606:0:b0:750:6c44:3454 with SMTP id
 w6-20020a5ed606000000b007506c443454mr18191668iom.12.1680217533461; 
 Thu, 30 Mar 2023 16:05:33 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 n2-20020a02a182000000b003b778515852sm213023jah.168.2023.03.30.16.05.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Mar 2023 16:05:32 -0700 (PDT)
Date: Thu, 30 Mar 2023 17:05:31 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20230330170531.3b66c05a.alex.williamson@redhat.com>
In-Reply-To: <ZCYQ5zhmjg/xQmTZ@nvidia.com>
References: <DS0PR11MB7529B6782565BE8489D922F9C3889@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230328084616.3361a293.alex.williamson@redhat.com>
 <DS0PR11MB75290B84D334FC726A8BBA95C3889@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230328091801.13de042a.alex.williamson@redhat.com>
 <DS0PR11MB752903CE3D5906FE21146364C3889@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230328100027.3b843b91.alex.williamson@redhat.com>
 <DS0PR11MB7529C12E086DAB619FF9AFF0C3899@DS0PR11MB7529.namprd11.prod.outlook.com>
 <BN9PR11MB52762E789B9C1D8021F54ECC8C899@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20230329094944.50abde4e.alex.williamson@redhat.com>
 <DS0PR11MB75298AF9A9ACAEBDD5D445ECC38E9@DS0PR11MB7529.namprd11.prod.outlook.com>
 <ZCYQ5zhmjg/xQmTZ@nvidia.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 10/10] vfio/pci: Add
 VFIO_DEVICE_GET_PCI_HOT_RESET_GROUP_INFO
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
 Xudong" <xudong.hao@intel.com>, "peterx@redhat.com" <peterx@redhat.com>, "Xu,
 Terrence" <terrence.xu@intel.com>,
 "chao.p.peng@linux.intel.com" <chao.p.peng@linux.intel.com>,
 "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>, "Liu,
 Yi L" <yi.l.liu@intel.com>, "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "lulu@redhat.com" <lulu@redhat.com>, "Jiang,
 Yanting" <yanting.jiang@intel.com>, "joro@8bytes.org" <joro@8bytes.org>,
 "nicolinc@nvidia.com" <nicolinc@nvidia.com>, "Zhao, 
 Yan Y" <yan.y.zhao@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "eric.auger@redhat.com" <eric.auger@redhat.com>,
 "intel-gvt-dev@lists.freedesktop.org" <intel-gvt-dev@lists.freedesktop.org>,
 "yi.y.sun@linux.intel.com" <yi.y.sun@linux.intel.com>,
 "cohuck@redhat.com" <cohuck@redhat.com>,
 "shameerali.kolothum.thodi@huawei.com" <shameerali.kolothum.thodi@huawei.com>,
 "suravee.suthikulpanit@amd.com" <suravee.suthikulpanit@amd.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 30 Mar 2023 19:44:55 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:

> On Thu, Mar 30, 2023 at 12:48:03PM +0000, Liu, Yi L wrote:
> > +	/*
> > +	 * If dev_id is needed, fill in the dev_id field, otherwise
> > +	 * fill in group_id.
> > +	 */
> > +	if (fill->require_devid) {
> > +		/*
> > +		 * Report the devices that are opened as cdev and have
> > +		 * the same iommufd with the fill->iommufd.  Otherwise,
> > +		 * just fill in an IOMMUFD_INVALID_ID.
> > +		 */
> > +		vdev = vfio_pci_find_device_in_devset(dev_set, pdev);
> > +		if (vdev && !vfio_device_cdev_opened(vdev) &&
> > +		    fill->iommufd == vfio_iommufd_physical_ictx(vdev))
> > +			vfio_iommufd_physical_devid(vdev, &fill->devices[fill->cur].dev_id);
> > +		fill->devices[fill->cur].dev_id = IOMMUFD_INVALID_ID;  
> 
> This needs an else?
> 
> I suggest to check for VFIO_PCI_HOT_RESET_FLAG_IOMMUFD_DEV_ID on input
> as well. I know the old kernels don't enforce this but at least we
> could start enforcing it going forward so that the group path would
> reject it to catch userspace bugs.
> 
> May as well fix it up to fully validate the flags

Is this under the guise of "if nobody complains it's ok, otherwise
revert" plan?  We report dev-id based on the nature of the device, not
the provided flags, so I'm not sure I follow how this protects the group
path, unless we've failed to clear the output flags on that path with
this change.  Thanks,

Alex


