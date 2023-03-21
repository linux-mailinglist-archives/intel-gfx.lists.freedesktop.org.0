Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E85386C3BD2
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Mar 2023 21:31:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A6C110E1E7;
	Tue, 21 Mar 2023 20:31:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A247110E2AD
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Mar 2023 20:31:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1679430689;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=3SoZAa/8xF1VxHMtjBD+X/WJ+O7TFOveLIe/Nw8esJs=;
 b=cxgvBbOooUkQe44tU9S7WMrwzya2fg0cvO5qVnWDI9BjA0ItZsDBO5rMhWt6FwYwmiNhdM
 zcRoJifU45xESOQ1h0F1GZ+qS7eK30GfjtCeusmWkpBWljZiFrRftmJFRI2/dnMQtRdP15
 EDlk349A2CEcfoHasnosatm6VX8R4dA=
Received: from mail-io1-f72.google.com (mail-io1-f72.google.com
 [209.85.166.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-606-479n_-hyNUGwjwQkm8Gfzg-1; Tue, 21 Mar 2023 16:31:26 -0400
X-MC-Unique: 479n_-hyNUGwjwQkm8Gfzg-1
Received: by mail-io1-f72.google.com with SMTP id
 g27-20020a056602243b00b007546be1dd34so6676714iob.16
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Mar 2023 13:31:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1679430686;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=3SoZAa/8xF1VxHMtjBD+X/WJ+O7TFOveLIe/Nw8esJs=;
 b=ydtFW3XbUsBVCuY6LDUt8el84lLdWu2ZXjtUvwtwW/x4ggJYyHBDyU9C6wX0Bb9JcT
 IRYY4F61VCdhdBq9U5AwGDx1bzHeS3iAAocsBWE7P2lPA+8ZCUPftvglFBGYZlSRNdLJ
 pbRHeVvfmluG4hmgg/b+rC9hEEdZw67nEAG6X1KbM2ulXVuMYTeFb7HoSQM8FvaEdwyG
 tPG3SXbvn1JGzI0MJNaLXCvFXzRV/ipJIJOM21K9Y1jtHmmP87zygBLHU3N9tTGWiR3z
 vjI/1Fj967QZ5XuwtVwHybXG4BWcmmZMJwCcjpzjzyGB1Gnigwkf1QmP5XdjxqBCVmLX
 Dtjw==
X-Gm-Message-State: AO0yUKV3wfOlM4Ivtpp+tM2EfiaVM2RdA95nzuPb2of8BcrL+Qd/nlqa
 sbUIecs/FIs6hZmELAkd62lcz3qhCOYqKzSxLflEtHYCZVs1OPiuuiwGmJIa84IN24H1A26mGLd
 4WZuj/i5MEFGtldXHmqiGXVO3M7Or
X-Received: by 2002:a92:c503:0:b0:323:2c83:3064 with SMTP id
 r3-20020a92c503000000b003232c833064mr2697666ilg.31.1679430685831; 
 Tue, 21 Mar 2023 13:31:25 -0700 (PDT)
X-Google-Smtp-Source: AK7set8RsLy22yUQqFdiRovisP4m8BeCD6yBQhPuFmJnLrNBzHBGAk/zi9QQ6dulBCbOIg4UjodPLA==
X-Received: by 2002:a92:c503:0:b0:323:2c83:3064 with SMTP id
 r3-20020a92c503000000b003232c833064mr2697633ilg.31.1679430685539; 
 Tue, 21 Mar 2023 13:31:25 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 dl9-20020a056638278900b004051a7ef7f3sm4305251jab.71.2023.03.21.13.31.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Mar 2023 13:31:24 -0700 (PDT)
Date: Tue, 21 Mar 2023 14:31:22 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20230321143122.632f7e63.alex.williamson@redhat.com>
In-Reply-To: <ZBjum1wQ1L2AIfhB@nvidia.com>
References: <20230308132903.465159-13-yi.l.liu@intel.com>
 <20230315165311.01f32bfe.alex.williamson@redhat.com>
 <BN9PR11MB5276300FCAAF8BF7B4E03BA48CBF9@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20230316124532.30839a94.alex.williamson@redhat.com>
 <BN9PR11MB5276F7879E428080D2B214D98CBC9@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20230316182256.6659bbbd.alex.williamson@redhat.com>
 <BN9PR11MB5276D5A71E43EA4CDD1C960A8CBD9@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20230317091557.196638a6.alex.williamson@redhat.com>
 <ZBiUiEC8Xj9sOphr@nvidia.com>
 <20230320165217.5b1019a4.alex.williamson@redhat.com>
 <ZBjum1wQ1L2AIfhB@nvidia.com>
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

On Mon, 20 Mar 2023 20:39:07 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:

> On Mon, Mar 20, 2023 at 04:52:17PM -0600, Alex Williamson wrote:
> 
> > > The APIs are well defined and userspace can always use them wrong. It
> > > doesn't need to call RESET_INFO even today, it can just trivially pass
> > > every group FD it owns to meet the security check.  
> > 
> > That's not actually true, in order to avoid arbitrarily large buffers
> > from the user, the ioctl won't accept an array greater than the number
> > of devices affected by the reset.  
> 
> Oh yuk!
> 
> > > It is much simpler if VFIO_DEVICE_PCI_HOT_RESET can pass the security
> > > check without code marshalling fds, which is why we went this
> > > direction.  
> > 
> > I agree that nullifying the arg makes the ioctl easier to use, but my
> > hesitation is whether it makes it more difficult to use correctly,
> > which includes resetting devices unexpectedly.  
> 
> I don't think it makes it harder to use correctly. It maybe makes it
> easier to misuse, but IMHO not too much.
> 
> If the desire was to have an API that explicitly acknowledged the
> reset scope then it should have taken in a list of device FDs and
> optimally reset all of them or fail EPERM.
> 
> What is going to make this hard to use is the _INFO IOCTL, it returns
> basically the BDF string, but I think we effectively get rid of this
> in the new model. libvirt will know the BDF and open the cdev, then fd
> pass the cdev to qemu. Qemu shouldn't also have to know the sysfs
> path..
> 
> So we really want a new _INFO ioctl to make this easier to use..

I think this makes it even worse.  If userspace cannot match BDFs from
the _INFO ioctl to devices files, for proof of ownership or scope, then
the answer is clearly not "get rid of the device files".

> > We can always blame the developer for using an interface incorrectly,
> > but if we make it easier to use incorrectly in order to optimize
> > something that doesn't need to be optimized, does that make it a good
> > choice for the uAPI?  
> 
> IMHO the API is designed around a security proof. Present some groups
> and a subset of devices in those groups will be reset. You can't know
> the subset unless you do the _INFO thing.
> 
> If we wanted it to be clearly linked to scope it should have taken in
> a list of device FDs, and reset those devices FDs optimally or
> returned -EPERM. Then the reset scope is very clearly connected to the
> API.

This just seems like nit-picking that the API could have accomplished
this more concisely.  Probably that's true, but I think you've
identified a gap above that amplifies the issue.  If the user cannot
map BDFs to cdevs because the cdevs are passed as open fds to the user
driver, the _INFO results become meaningless and by removing the fds
array, that becomes the obvious choice that a user presented with this
dilemma would take.  We're skipping past easier to misuse, difficult to
use correctly, and circling around no obvious way to use correctly.

Unfortunately the _INFO ioctl does presume that userspace knows the BDF
to device mappings today, so if we are attempting to pre-enable a case
with cdev support where that is not the case, then there must be
something done with the _INFO ioctl to provide scope.  Thanks,

Alex

