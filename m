Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C89CF6C3C60
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Mar 2023 22:01:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2BE010E82A;
	Tue, 21 Mar 2023 21:01:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4A4510E82A
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Mar 2023 21:01:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1679432498;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=I1KA6ZkpV3D+AmID9NMMP4J1e8acMfYHtrAK/R3ZyzU=;
 b=cYcIupb1sV/JOlBj6XYpWfiaqtIvsZMS+9IKhWIRxD8XbpcFtX0dlhO39Wv6rdNm3ODo9I
 9CgNeN3jbz/L3lbtQyQKahug2+j2abB3ivmuLMUWmm41N83yNpreS52bJeE7pSMcVSznAg
 4pMfX3joJnfWE9LHE8O3s9Xex9xfVHE=
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-631-FAw130RaOuK6agB76AgnkA-1; Tue, 21 Mar 2023 17:01:27 -0400
X-MC-Unique: FAw130RaOuK6agB76AgnkA-1
Received: by mail-io1-f72.google.com with SMTP id
 p128-20020a6b8d86000000b007583ebb18fdso1886708iod.19
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Mar 2023 14:01:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679432475;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=I1KA6ZkpV3D+AmID9NMMP4J1e8acMfYHtrAK/R3ZyzU=;
 b=6IEq1cdWYUHwlIKtBh8FExCRT7PNAafgkK74EvYR2d+F8vC++8FaZ833gAZspV5iEq
 /ksgSP4jgLjqin47eVC7KztWVqjP7/IlWXwJoFuLoHPVvGuqQnigsjt6kzVjpGh7l8hz
 8J6qVtUv4ZKSiI/lJz8Zhyq1fixrroE5EIP+d/5RNOm7wSSjSOJ6if6Nj4qDDIsxr/hi
 M1DHegpnwPCwsFFGdbL9HBoH4WgNFSHfZmWnkLn0Toa1J/uwVryLa1V8qvyiWMTmxH1X
 Jff2BzuLLL5o8qp8l6xcfkskqntSnmee4S1Ol3wghmLPirSi1GFsqEu9aPF5TGxwV+PD
 sdkQ==
X-Gm-Message-State: AO0yUKUC7cp2zQyLqDdrynGNEJKEqXSogh/8kBWbJxMpLHW2BuybZQQk
 PoxzTZ2I8kxfuto5lz1QEOuBXlxYWK5xdxfZfkR2vQBxBMbxhyWlwAN8kBc8Af7MnB1gIhKTEMR
 OkfZiFsvzBCy0i55CqJuucD1gphSM
X-Received: by 2002:a92:cf44:0:b0:325:bab7:cb17 with SMTP id
 c4-20020a92cf44000000b00325bab7cb17mr267825ilr.24.1679432474776; 
 Tue, 21 Mar 2023 14:01:14 -0700 (PDT)
X-Google-Smtp-Source: AK7set/F7exqYQvOzCCmHLPB4uNfmmnepmhiUG7EPAgpEmj8wd8Iv128TRMF1l0+kK1w3FickMDApA==
X-Received: by 2002:a92:cf44:0:b0:325:bab7:cb17 with SMTP id
 c4-20020a92cf44000000b00325bab7cb17mr267805ilr.24.1679432474496; 
 Tue, 21 Mar 2023 14:01:14 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 q5-20020a056e02096500b003179ae2fb8fsm3892160ilt.2.2023.03.21.14.01.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Mar 2023 14:01:13 -0700 (PDT)
Date: Tue, 21 Mar 2023 15:01:12 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20230321150112.1c482380.alex.williamson@redhat.com>
In-Reply-To: <ZBoYgNq60eDpV9Un@nvidia.com>
References: <BN9PR11MB5276300FCAAF8BF7B4E03BA48CBF9@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20230316124532.30839a94.alex.williamson@redhat.com>
 <BN9PR11MB5276F7879E428080D2B214D98CBC9@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20230316182256.6659bbbd.alex.williamson@redhat.com>
 <BN9PR11MB5276D5A71E43EA4CDD1C960A8CBD9@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20230317091557.196638a6.alex.williamson@redhat.com>
 <ZBiUiEC8Xj9sOphr@nvidia.com>
 <20230320165217.5b1019a4.alex.williamson@redhat.com>
 <ZBjum1wQ1L2AIfhB@nvidia.com>
 <20230321143122.632f7e63.alex.williamson@redhat.com>
 <ZBoYgNq60eDpV9Un@nvidia.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v6 12/24] vfio/pci: Allow passing
 zero-length fd array in VFIO_DEVICE_PCI_HOT_RESET
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
 "lulu@redhat.com" <lulu@redhat.com>, "joro@8bytes.org" <joro@8bytes.org>,
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

On Tue, 21 Mar 2023 17:50:08 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:

> On Tue, Mar 21, 2023 at 02:31:22PM -0600, Alex Williamson wrote:
> 
> > This just seems like nit-picking that the API could have accomplished
> > this more concisely.  Probably that's true, but I think you've
> > identified a gap above that amplifies the issue.  If the user cannot
> > map BDFs to cdevs because the cdevs are passed as open fds to the user
> > driver, the _INFO results become meaningless and by removing the fds
> > array, that becomes the obvious choice that a user presented with this
> > dilemma would take.  We're skipping past easier to misuse, difficult to
> > use correctly, and circling around no obvious way to use correctly.  
> 
> No - this just isn't finished yet is all it means :(
> 
> I just noticed it just now, presumably Eric would have discovered this
> when he tried to implement the FD pass and we would have made a new
> _INFO at that point (or more ugly, have libvirt pass the BDF along
> with the FD).
> 
> > Unfortunately the _INFO ioctl does presume that userspace knows the BDF
> > to device mappings today, so if we are attempting to pre-enable a case
> > with cdev support where that is not the case, then there must be
> > something done with the _INFO ioctl to provide scope.  
> 
> Yes, something is required with _INFO before libvirt can use a FD
> pass. I'm thinking of a new _INFO query that returns the iommufd
> dev_ids for the reset group. Then qemu can match the dev_ids back to
> cdev FDs and thus vPCI devices and do what it needs to do.
> 
> But for the current qemu setup it will open cdev directly and it will
> know the BDF so it can still use the current _INFO.
> 
> Though it would be nice if qemu didn't need two implementations so Yi
> I'd rather see a new info in this series as well and qemu can just
> consistently use dev_id and never bdf in iommufd mode.

We also need to consider how libvirt determines if QEMU has the kernel
support it needs to pass file descriptors.  It'd be a lot cleaner if
this aligned with the introduction of vfio cdevs.
 
> Anyhow, I don't see the two topics as really related, the intention is
> not to discourage people from calling _INFO, it just to make the
> security proof simpler and more logical.

At a minimum, we need a new _INFO ioctl to get back to the point where
it's only a discussion of whether we're checking the user on scope.  We
can't remove the array while doing so opens up an obviously incorrect
solution to an impossible to use API.  Thanks,

Alex

