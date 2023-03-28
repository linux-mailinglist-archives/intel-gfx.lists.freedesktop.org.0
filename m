Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2236CCA6F
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 21:09:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23AE010E9A5;
	Tue, 28 Mar 2023 19:09:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB5B110E4AE
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 19:09:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680030594;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TyWlyMYo12Ph4alZhZ7htkhRhM6u2cJ70JNCkvZ77kk=;
 b=EcIkbxgV7kl8jWj2AP1hScdO6nw8KKpuUblctRbQeGk3oAmSsJeHcX/mkGxYlWYPjXqobw
 ZOkpXFSoPdQdx0frLmbn2SjOHgYAfLWt3fARIr3bl4JCaidp6rvn6Jgqsaq5EbdMiIwP7s
 Nnt4LgLbm1BzNEseVFrTFeT6LTsVs0Y=
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-372-t7to2naSNXiZKPpadc_2ag-1; Tue, 28 Mar 2023 15:09:53 -0400
X-MC-Unique: t7to2naSNXiZKPpadc_2ag-1
Received: by mail-io1-f71.google.com with SMTP id
 v126-20020a6bac84000000b007587234a54cso8175317ioe.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 12:09:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680030593;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=TyWlyMYo12Ph4alZhZ7htkhRhM6u2cJ70JNCkvZ77kk=;
 b=WzeJ2ML20ypPMMXz44jN7MYJZkqqK+SPL1FcRZzuKC46mqTf6NcfGH+P23E5E2BszC
 CA8gKVSTaK2EjMSqX1hm1UINHxho/aaLpXoAFPWtcUOxIoeFp3oVput4UyAU3b78Fz1u
 iNyYdFs1m0/wkzChGuIrVh7E4CI1BPBrtm8RGVwNg1K0oWSek2g48RVqZRb6LPdUA2ug
 7O4N2O/uOuHzNKtHkNGdjY7v9qVisYpch/K/G2EBx7zSDtTXGXRmYrVG5ZUvewzQWuMT
 7qZdWwXAo4CS3q/8JbAJDgBtR+gtl7vb/BdSiuDDt9L9gbwoxbbT/zxNRNuAL0oCsU9J
 UaRA==
X-Gm-Message-State: AAQBX9eURey5nekzq7e3F/En906PqOt2PEOJaFUGfTFIi1fvYULByMgG
 kPNMOL8oHUCZuxRKQGQprRlUEoGdHF03tYw704lhjW0f9Ne34PbV49MyTBHXFcMhW/d/BG8Iisg
 N3MzpxNW+jMEMb4rqpZOBuWu9y+Xq
X-Received: by 2002:a5e:a807:0:b0:759:95a5:327a with SMTP id
 c7-20020a5ea807000000b0075995a5327amr9970712ioa.11.1680030592759; 
 Tue, 28 Mar 2023 12:09:52 -0700 (PDT)
X-Google-Smtp-Source: AKy350adFeqCticunFGKIu5P/YegCKYF+iyr4sSWve2FbSdhytCLKP/q4euprZAtfzr1TdiDa6uHKw==
X-Received: by 2002:a5e:a807:0:b0:759:95a5:327a with SMTP id
 c7-20020a5ea807000000b0075995a5327amr9970693ioa.11.1680030592532; 
 Tue, 28 Mar 2023 12:09:52 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 g9-20020a025b09000000b00374fa5b600csm9992351jab.0.2023.03.28.12.09.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Mar 2023 12:09:52 -0700 (PDT)
Date: Tue, 28 Mar 2023 13:09:49 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20230328130949.225bc680.alex.williamson@redhat.com>
In-Reply-To: <ZCMV4zMhpVJJCIKN@nvidia.com>
References: <20230327093458.44939-1-yi.l.liu@intel.com>
 <20230327093458.44939-11-yi.l.liu@intel.com>
 <20230327132619.5ab15440.alex.williamson@redhat.com>
 <DS0PR11MB7529E969C27995D535A24EC0C3889@DS0PR11MB7529.namprd11.prod.outlook.com>
 <BL1PR11MB52717FB9E6D5C10BF4B7DA0A8C889@BL1PR11MB5271.namprd11.prod.outlook.com>
 <20230328082536.5400da67.alex.williamson@redhat.com>
 <DS0PR11MB7529B6782565BE8489D922F9C3889@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230328084616.3361a293.alex.williamson@redhat.com>
 <DS0PR11MB75290B84D334FC726A8BBA95C3889@DS0PR11MB7529.namprd11.prod.outlook.com>
 <20230328091801.13de042a.alex.williamson@redhat.com>
 <ZCMV4zMhpVJJCIKN@nvidia.com>
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

On Tue, 28 Mar 2023 13:29:23 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:

> On Tue, Mar 28, 2023 at 09:18:01AM -0600, Alex Williamson wrote:
> 
> > It's a niche case, but I think it needs to be allowed.  We'd still
> > report the bdf for those devices, but make use of the invalid/null
> > dev-id.  
> 
> IDK, it makes the whole implementation much more complicated. Instead
> of just copying the current dev_set to the output and calling
> vfio_pci_dev_set_resettable() we need to do something more complex..
> 
> Keeping the current ioctl as-is means this IOCTL can be used to do any
> debugging by getting the actual BDF list.
> 
> It means we can make the a new ioctl simple and just return the dev_id
> array without these edge complications. I don't think merging two
> different ioctls is helping make things simple..

OTOH, we already have an ioctl that essentially "does the right thing",
we just want to swap out one return field for another.  So which is
more complicated, adding another ioctl that does not quite the same
thing but still needing to maintain the old ioctl for detailed
information, or making the old ioctl bi-modal to return the appropriate
information for the type of device used to access it?

> It seems like it does what qemu wants: call the new IOCTL, if it
> fails, call the old IOCTL and print out the BDF list to help debug and
> then exit.

Userspace is already dealing with a variable length array for the
return value, why would it ever want to repeat that process to get
debugging info.  Besides, wouldn't QEMU prefer the similarity of making
the same call for groups and cdev and simply keying on the data type of
one field?

> On success use the data in the new ioctl to generate the machine
> configuration to pass the reset grouping into the VM.
> 
> When reset actually comes in just trigger it.

"Just trigger it" is the same in either case.  It seems bold to play
the complexity argument when we already have a function that does 90%
the correct thing where we can share much of the implementation and
userspace code without duplicating, but still relying on a legacy
interface for debugging.  Thanks,

Alex

