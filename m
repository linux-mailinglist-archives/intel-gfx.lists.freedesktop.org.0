Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE225696883
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 16:54:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5609F10E90D;
	Tue, 14 Feb 2023 15:54:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DEB310E911
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 15:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1676390062;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=xb46HmzYSch6mL85Mc29IUcDhw17TwDxuJ7aIajpOQI=;
 b=Vr0iZY5qOMEEu5X8aVk5zyNvJiFSALxGQcrWXjWbtD3rHZ1EDsBOZ7l1bMpxCII+FO6W6z
 iHDDdHIU0vjCq1S4pLHXMvZz3G6+QbypFnoOqVkPWKFigVAfSSueCE6tFPfworkML4qYCF
 sRdz8oQN672a259ekoxSKhxW/oDDmfo=
Received: from mail-io1-f70.google.com (mail-io1-f70.google.com
 [209.85.166.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-241-hicuKpquOTaDDd-81qp5Rg-1; Tue, 14 Feb 2023 10:54:21 -0500
X-MC-Unique: hicuKpquOTaDDd-81qp5Rg-1
Received: by mail-io1-f70.google.com with SMTP id
 i124-20020a6b3b82000000b0073440a80b1aso10410492ioa.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 07:54:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=xb46HmzYSch6mL85Mc29IUcDhw17TwDxuJ7aIajpOQI=;
 b=xY2wIYhr01jnUgr4O7pX0e4NGgjVU5n8sRIQa3o2zaKL2ZrJXI8jo04ZJdybgFzrvV
 NsDQM+HT7G/Z90esh8Kmwi6BEgVil/rG/YAS3mtdR0jMDc0wiY47OqbejtwYOdHlK4DL
 jniBeLy4C6jxzYM6juFJXmSWvbfsDEawg86Lfy32jYZorsFHZIWwrdQnrRvAi/hynfym
 z5EacWLVmYZFyomIeUf/eUQbaf4YcWmJGKMTuohdDSqMUGTe/jBomGwSYPfkzgWeSHIL
 HX7VzCeMbSa12XKYsJneTnu6ntY4m86LZfjukxbK9AAaRvMAVNVvWpzuGo/oGWFJEwpU
 X5BA==
X-Gm-Message-State: AO0yUKW7Q9lBu8dy4IZSbdpjpELhSapcK8fdMX/hZU9yoKEDVmYEjB0+
 BpGTypgnSFQKMwEhx6i50iwuccHosNpctUO7x0CyoHfZPDkQ7E87eOe+Ookh0tKrMgwhkNNhtl8
 60IPr5wGsNh/PByPrXyv1uOVKMFdb
X-Received: by 2002:a05:6e02:20e4:b0:314:f7f:a369 with SMTP id
 q4-20020a056e0220e400b003140f7fa369mr4046649ilv.11.1676390060698; 
 Tue, 14 Feb 2023 07:54:20 -0800 (PST)
X-Google-Smtp-Source: AK7set+yb7BFh0lx0KigAZF0OwR9/57RngCfPYMxWA+ojxz0Hlv7JuDsuFBdGIHTFwUQVEMWcfb2KQ==
X-Received: by 2002:a05:6e02:20e4:b0:314:f7f:a369 with SMTP id
 q4-20020a056e0220e400b003140f7fa369mr4046617ilv.11.1676390060461; 
 Tue, 14 Feb 2023 07:54:20 -0800 (PST)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 e10-20020a02a50a000000b003c4d64a4d10sm705354jam.4.2023.02.14.07.54.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Feb 2023 07:54:20 -0800 (PST)
Date: Tue, 14 Feb 2023 08:54:19 -0700
From: Alex Williamson <alex.williamson@redhat.com>
To: "Liu, Yi L" <yi.l.liu@intel.com>
Message-ID: <20230214085419.4ac6d2c2.alex.williamson@redhat.com>
In-Reply-To: <DS0PR11MB7529F0B20A73690C5650778BC3A29@DS0PR11MB7529.namprd11.prod.outlook.com>
References: <20230213151348.56451-1-yi.l.liu@intel.com>
 <20230213124719.126eb828.alex.williamson@redhat.com>
 <Y+rGDeEMTB8FxjAH@nvidia.com>
 <DS0PR11MB7529F0B20A73690C5650778BC3A29@DS0PR11MB7529.namprd11.prod.outlook.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3 00/15] Add vfio_device cdev for iommufd
 support
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
Cc: "linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
 "yi.y.sun@linux.intel.com" <yi.y.sun@linux.intel.com>,
 "mjrosato@linux.ibm.com" <mjrosato@linux.ibm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 "intel-gvt-dev@lists.freedesktop.org" <intel-gvt-dev@lists.freedesktop.org>,
 "joro@8bytes.org" <joro@8bytes.org>, "cohuck@redhat.com" <cohuck@redhat.com>,
 "peterx@redhat.com" <peterx@redhat.com>,
 "suravee.suthikulpanit@amd.com" <suravee.suthikulpanit@amd.com>,
 "eric.auger@redhat.com" <eric.auger@redhat.com>,
 "nicolinc@nvidia.com" <nicolinc@nvidia.com>,
 "shameerali.kolothum.thodi@huawei.com" <shameerali.kolothum.thodi@huawei.com>,
 Jason Gunthorpe <jgg@nvidia.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chao.p.peng@linux.intel.com" <chao.p.peng@linux.intel.com>,
 "lulu@redhat.com" <lulu@redhat.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "jasowang@redhat.com" <jasowang@redhat.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 14 Feb 2023 15:15:28 +0000
"Liu, Yi L" <yi.l.liu@intel.com> wrote:

> > From: Jason Gunthorpe <jgg@nvidia.com>
> > Sent: Tuesday, February 14, 2023 7:22 AM
> > 
> > On Mon, Feb 13, 2023 at 12:47:19PM -0700, Alex Williamson wrote:
> >   
> > > I think it's too late for v6.3 already, but given this needs at least
> > > one more spin, let's set expectations of this being v6.4 material.  Thanks,  
> > 
> > Please let's continue to try to get this finished during the merge
> > window, all the other series depend on it. We can manage it with a
> > shared branch again..
> >   
> 
> Sure. I've updated the below branch to address Kevin's latest remarks.
> Fixed the compiling failure reported by Alex as well.
> 
> https://github.com/yiliu1765/iommufd/commits/vfio_device_cdev_v3


Sorry, I think this is an abuse of the merge window.  We have a new uAPI
proposal that's barely a week old and has no reviews or acks other than
Yi's, we have build configuration issues which suggests a lack of
testing, we're finding subtle implications to other existing uAPIs, and
nobody seems to have finished an upstream review, including me.

Code for the merge window should already be in maintainer trees by now,
the merge window should be for integration.  There are a lot of things
in flight and many more review comments coming in than we should see
for this to be a v6.3 candidate.  Thanks,

Alex

