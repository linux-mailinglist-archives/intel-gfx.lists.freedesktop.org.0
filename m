Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 339605BED75
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 21:17:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 954EA10E760;
	Tue, 20 Sep 2022 19:17:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A3B5910E76F
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 19:17:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1663701449;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=48Tp1la85hsdqkGfG0YxmrPZH84TL2fOAb8LsP1PYSg=;
 b=CA3IuTM72poVi4SWEPX+vsfFkLLGJml2pmyXCu6hZFtihtlQK7oIO20WRaAO0Taa4chww/
 EVG9R2WAjI3gSuUfQvjLAS9lYskIF/jLReE7owxZuh/aDrNuYFH6o7ixvrCSHBI5Xo6h1O
 sdSZqQ6d0p/7GYExD0kP43ohsJ+Jli4=
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-336-Ml8CFuC9ORKcWWtkRGS6LA-1; Tue, 20 Sep 2022 15:17:27 -0400
X-MC-Unique: Ml8CFuC9ORKcWWtkRGS6LA-1
Received: by mail-il1-f200.google.com with SMTP id
 w2-20020a056e021c8200b002f5c95226e0so2200500ill.9
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 12:17:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:organization:references
 :in-reply-to:message-id:subject:cc:to:from:date:x-gm-message-state
 :from:to:cc:subject:date;
 bh=48Tp1la85hsdqkGfG0YxmrPZH84TL2fOAb8LsP1PYSg=;
 b=exH2lS6gxxbUTHjtGp7VJAl/GCmGJiEnTzyfNhUn0eg+XWqWX+FHvdFUrpWOGQTPVt
 ZnepaDwF99O+MjyU4jHxBf/nyMRt2BHpS/qVS8Nf7lgNaZJa64BQGgdMpQgh5MaswFiS
 4rDMVMPGSU1EDiV0flP8WInWYEX65ZgQD3no2z2SbK4iAtln5SJN+piS6LL5hFq3Zpxc
 G6DXxw5WH3c5ucN6OEpI6P7TTEH+/mEOWSQhyY4EOBVhbtkgnlCIkpVDyUxYCBPkKFbf
 lwXNMmnTW1W5n3Bu9e701zYoh1wplfeLDYSPMotlr2en77FHZrui7SA8Vp9K/+SeB1WJ
 M9/g==
X-Gm-Message-State: ACrzQf11+9KSCl166oWRJfNVBOghw/TwnE0dLPnKOLYKpkcT9Afg00NR
 UpLgx0I0wxSHI6byiYrWz6Mdcq9e+binU9r/gLtxoZ0bpR4JGoE2Hjz1Qx6SfXEJKw+7VY4ZDUa
 31xOOoCH/7GzLKIacCtcGelwZSDOX
X-Received: by 2002:a6b:670e:0:b0:6a0:cffe:5c44 with SMTP id
 b14-20020a6b670e000000b006a0cffe5c44mr9830982ioc.74.1663701447178; 
 Tue, 20 Sep 2022 12:17:27 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM5Jz+PJQhyf25QQiv7P7Dcvr+B3WKZW0Zx0uCADBWPkyugzHyErwfotGdnRZ3kL/bsX2pQ9HA==
X-Received: by 2002:a6b:670e:0:b0:6a0:cffe:5c44 with SMTP id
 b14-20020a6b670e000000b006a0cffe5c44mr9830947ioc.74.1663701446917; 
 Tue, 20 Sep 2022 12:17:26 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 b27-20020a026f5b000000b00349d4ee2a4asm215964jae.91.2022.09.20.12.17.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Sep 2022 12:17:26 -0700 (PDT)
Date: Tue, 20 Sep 2022 13:17:23 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Kevin Tian <kevin.tian@intel.com>
Message-ID: <20220920131723.2541b7e8.alex.williamson@redhat.com>
In-Reply-To: <20220909102247.67324-7-kevin.tian@intel.com>
References: <20220909102247.67324-1-kevin.tian@intel.com>
 <20220909102247.67324-7-kevin.tian@intel.com>
Organization: Red Hat
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3 06/15] vfio/mtty: Use the new device life
 cycle helpers
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
 Longfang Liu <liulongfang@huawei.com>, Christoph Hellwig <hch@infradead.org>,
 Yi Liu <yi.l.liu@intel.com>, kvm@vger.kernel.org,
 Leon Romanovsky <leon@kernel.org>, Halil Pasic <pasic@linux.ibm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>,
 Christian Borntraeger <borntraeger@linux.ibm.com>,
 intel-gfx@lists.freedesktop.org, Tony Krowiak <akrowiak@linux.ibm.com>,
 Eric Farman <farman@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
 Eric Auger <eric.auger@redhat.com>,
 Harald Freudenberger <freude@linux.ibm.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gvt-dev@lists.freedesktop.org,
 Jason Herne <jjherne@linux.ibm.com>, Yishai Hadas <yishaih@nvidia.com>,
 Cornelia Huck <cohuck@redhat.com>, Peter Oberparleiter <oberpar@linux.ibm.com>,
 Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>,
 Sven Schnelle <svens@linux.ibm.com>, Daniel Vetter <daniel@ffwll.ch>,
 Abhishek Sahu <abhsahu@nvidia.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri,  9 Sep 2022 18:22:38 +0800
Kevin Tian <kevin.tian@intel.com> wrote:

> From: Yi Liu <yi.l.liu@intel.com>
> 
> and manage available ports inside @init/@release.
> 
> Signed-off-by: Yi Liu <yi.l.liu@intel.com>
> Signed-off-by: Kevin Tian <kevin.tian@intel.com>
> Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  samples/vfio-mdev/mtty.c | 67 +++++++++++++++++++++++-----------------
>  1 file changed, 39 insertions(+), 28 deletions(-)
> 
> diff --git a/samples/vfio-mdev/mtty.c b/samples/vfio-mdev/mtty.c
> index f42a59ed2e3f..41301d50b247 100644
> --- a/samples/vfio-mdev/mtty.c
> +++ b/samples/vfio-mdev/mtty.c
...
> +static int mtty_probe(struct mdev_device *mdev)
> +{
> +	struct mdev_state *mdev_state;
> +	int ret;
> +
> +	mdev_state = vfio_alloc_device(mdev_state, vdev, &mdev->dev,
> +				       &mtty_dev_ops);
> +	if (IS_ERR(mdev_state))
> +		return PTR_ERR(mdev_state);
>  
>  	ret = vfio_register_emulated_iommu_dev(&mdev_state->vdev);
>  	if (ret)
> -		goto err_vconfig;
> +		goto err_put_vdev;
>  	dev_set_drvdata(&mdev->dev, mdev_state);
>  	return 0;
>  
> -err_vconfig:
> -	kfree(mdev_state->vconfig);
> -err_state:
> -	vfio_uninit_group_dev(&mdev_state->vdev);
> -	kfree(mdev_state);
> -err_nr_ports:
> -	atomic_add(nr_ports, &mdev_avail_ports);
> +err_put_vdev:
> +	vfio_put_device(&mdev_state->vdev);
>  	return ret;
>  }
>  
> +static void mtty_release_dev(struct vfio_device *vdev)
> +{
> +	struct mdev_state *mdev_state =
> +		container_of(vdev, struct mdev_state, vdev);
> +
> +	kfree(mdev_state->vconfig);
> +	vfio_free_device(vdev);
> +	atomic_add(mdev_state->nr_ports, &mdev_avail_ports);

I must be missing something, isn't this a use-after-free?

mdev_state is allocated via vfio_alloc_device(), where vdev is the
first entry in that structure, so this is equivalent to
kvfree(mdev_state).  mbochs has the same issue.  mdpy and vfio-ap
adjust global counters after vfio_free_device(), which I think muddies
the situation.  Shouldn't we look suspiciously at any .release callback
where vfio_free_device() isn't the last thing executed?  Thanks,

Alex

