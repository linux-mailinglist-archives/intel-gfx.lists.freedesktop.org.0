Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A2943D04D8
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 00:55:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D9E36E05F;
	Tue, 20 Jul 2021 22:55:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB1646E05F
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 22:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626821698;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=JPmMSBIIRpMLR6pnHriNECIPx7e3cs1ugIoacnqy1RY=;
 b=deWJrQiajDE/Msu17LkNlrn5p+O2XIprx9FBDs5rPhPpw2VWpcWQO/vmuYnQlB5rf2loVx
 6lQnJGEAwG6sRESg8fUapG/aVi2vnai6lgb3RsznCMHuveRnVDUoh+vyA5dVAykQkGd7dM
 izR/q8YzNVPgUmrrYnVsOoOOWdd8lsI=
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com
 [209.85.210.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-210-dMfLmp6pOquGR4-C2aukJQ-1; Tue, 20 Jul 2021 18:54:55 -0400
X-MC-Unique: dMfLmp6pOquGR4-C2aukJQ-1
Received: by mail-ot1-f69.google.com with SMTP id
 s11-20020a056830124bb02904d1d78ee61cso238918otp.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 15:54:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JPmMSBIIRpMLR6pnHriNECIPx7e3cs1ugIoacnqy1RY=;
 b=IVMfWpBt20Qk8GfPVsDgXHJymmgHPaT57pd1OMnh440rToaLaN2FupFw0YKQM7stXp
 SDOnVRDT4d9Kb5gWvy8ImN4DKSHTGJKoqKmPKD3MHAu4B0Vo5V8MPjkjgUSwXlnbilt9
 2PZS+egXkb0pyxyBBowBKHFD63bs2g06n/1stGT9Hz9hGeBx8Rp2kvnPzdJpV4ILXZqb
 5t5GOakvP2G9hL+i5VqkyTOHshvN8V/FzxKnq+qhKmCSy18yDpDr08Gvqj0vdwVlg7v7
 FfXi4t0z8byo+o2nuvEJSbB0dHSl4jiVb7OkgCSrc1l2s0Nn2s1vtBR68kU0DWQGIdyL
 2piw==
X-Gm-Message-State: AOAM532hGm32uwQeMc/sTS5kRsvdC0w3WeeHNK3+0d/IW6899rjTFL39
 pCJdRXGObhriezODOCqMpmlEYtjQLctIKTmUsDKV8sbSaliMVY7wjSw5R78DxLc/vLoPWpOsEYt
 uAhnyVY9bXZ0vTNe2E1W2ocpDjdM4
X-Received: by 2002:a9d:4b02:: with SMTP id q2mr13197550otf.52.1626821694106; 
 Tue, 20 Jul 2021 15:54:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx7ncl7zRpBxXCyp5ocCnM/u43LPRAaepFBcKVNjugNChC0csQAeVdr5AwkuCzyfA5+QlRtnQ==
X-Received: by 2002:a9d:4b02:: with SMTP id q2mr13197528otf.52.1626821693761; 
 Tue, 20 Jul 2021 15:54:53 -0700 (PDT)
Received: from redhat.com ([198.99.80.109])
 by smtp.gmail.com with ESMTPSA id l196sm3275801oib.14.2021.07.20.15.54.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Jul 2021 15:54:53 -0700 (PDT)
Date: Tue, 20 Jul 2021 16:54:51 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20210720165451.625dddd4.alex.williamson@redhat.com>
In-Reply-To: <20210720224955.GD1117491@nvidia.com>
References: <0-v2-b6a5582525c9+ff96-vfio_reflck_jgg@nvidia.com>
 <2-v2-b6a5582525c9+ff96-vfio_reflck_jgg@nvidia.com>
 <20210720160127.17bf3c19.alex.williamson@redhat.com>
 <20210720224955.GD1117491@nvidia.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=alex.williamson@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v2 02/14] vfio/mbochs: Fix missing error
 unwind in mbochs_probe()
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
Cc: kvm@vger.kernel.org, linux-doc@vger.kernel.org,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Kirti Wankhede <kwankhede@nvidia.com>, Max Gurtovoy <mgurtovoy@nvidia.com>,
 Vineeth Vijayan <vneethv@linux.ibm.com>,
 Diana Craciun <diana.craciun@oss.nxp.com>, Leon Romanovsky <leonro@nvidia.com>,
 Christoph Hellwig <hch@lst.de>, linux-s390@vger.kernel.org,
 Matthew Rosato <mjrosato@linux.ibm.com>, Jonathan Corbet <corbet@lwn.net>,
 Halil Pasic <pasic@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 intel-gfx@lists.freedesktop.org, Jason Herne <jjherne@linux.ibm.com>,
 Eric Farman <farman@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>, Eric Auger <eric.auger@redhat.com>,
 Harald Freudenberger <freude@linux.ibm.com>,
 intel-gvt-dev@lists.freedesktop.org, "Raj, Ashok" <ashok.raj@intel.com>,
 Tony Krowiak <akrowiak@linux.ibm.com>, Yishai Hadas <yishaih@nvidia.com>,
 Cornelia Huck <cohuck@redhat.com>, Peter Oberparleiter <oberpar@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 20 Jul 2021 19:49:55 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:

> On Tue, Jul 20, 2021 at 04:01:27PM -0600, Alex Williamson wrote:
> > On Tue, 20 Jul 2021 14:42:48 -0300
> > Jason Gunthorpe <jgg@nvidia.com> wrote:
> >   
> > > Compared to mbochs_remove() two cases are missing from the
> > > vfio_register_group_dev() unwind. Add them in.
> > > 
> > > Fixes: 681c1615f891 ("vfio/mbochs: Convert to use vfio_register_group_dev()")
> > > Reported-by: Cornelia Huck <cohuck@redhat.com>
> > > Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> > >  samples/vfio-mdev/mbochs.c | 7 +++++--
> > >  1 file changed, 5 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/samples/vfio-mdev/mbochs.c b/samples/vfio-mdev/mbochs.c
> > > index e81b875b4d87b4..501845b08c0974 100644
> > > +++ b/samples/vfio-mdev/mbochs.c
> > > @@ -553,11 +553,14 @@ static int mbochs_probe(struct mdev_device *mdev)
> > >  
> > >  	ret = vfio_register_group_dev(&mdev_state->vdev);
> > >  	if (ret)
> > > -		goto err_mem;
> > > +		goto err_bytes;
> > >  	dev_set_drvdata(&mdev->dev, mdev_state);
> > >  	return 0;
> > >  
> > > +err_bytes:
> > > +	mbochs_used_mbytes -= mdev_state->type->mbytes;
> > >  err_mem:
> > > +	kfree(mdev_state->pages);
> > >  	kfree(mdev_state->vconfig);
> > >  	kfree(mdev_state);
> > >  	return ret;
> > > @@ -567,8 +570,8 @@ static void mbochs_remove(struct mdev_device *mdev)
> > >  {
> > >  	struct mdev_state *mdev_state = dev_get_drvdata(&mdev->dev);
> > >  
> > > -	mbochs_used_mbytes -= mdev_state->type->mbytes;
> > >  	vfio_unregister_group_dev(&mdev_state->vdev);
> > > +	mbochs_used_mbytes -= mdev_state->type->mbytes;
> > >  	kfree(mdev_state->pages);
> > >  	kfree(mdev_state->vconfig);
> > >  	kfree(mdev_state);  
> > 
> > Hmm, doesn't this suggest we need another atomic conversion?  (untested)  
> 
> Sure why not, I can add this as another patch
> 
> > @@ -567,11 +573,11 @@ static void mbochs_remove(struct mdev_device *mdev)
> >  {
> >  	struct mdev_state *mdev_state = dev_get_drvdata(&mdev->dev);
> >  
> > -	mbochs_used_mbytes -= mdev_state->type->mbytes;
> >  	vfio_unregister_group_dev(&mdev_state->vdev);
> >  	kfree(mdev_state->pages);
> >  	kfree(mdev_state->vconfig);
> >  	kfree(mdev_state);
> > +	atomic_add(mdev_state->type->mbytes, &mbochs_avail_mbytes);  
> 
> This should be up after the vfio_unregister_group_dev(), it is a use after free?

Oops, yep.  That or get the mbochs_type so we can mirror the _probe
setup.  Same on the _probe unwind, but we've already got type->mbytes
there.  Thanks,

Alex

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
