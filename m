Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 541E83CAE50
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jul 2021 23:01:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66C106E8BD;
	Thu, 15 Jul 2021 21:01:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00DBD6E8BD
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 21:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626382862;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=w6cMvV3xGXdKHq4WzPyleEVhevpPRqkhvlCWSt+Y12E=;
 b=fnyoufM/1vsk/9enJ7nzIF/l5gQrPhnTuSolWMCCnu4z2EjyyhQtkHJfbbAp4i48WnQmro
 fnk583/ovkXJ+co6GYSBkElV0sAzPTvxB42W6L9xHZV+iaVu2Q2goCd8UUU3tALIqN3yJ1
 2YCybasxQNPXUGjnSOZNLwV16guu2w0=
Received: from mail-ot1-f72.google.com (mail-ot1-f72.google.com
 [209.85.210.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-280-QTGeHc9aP-a7bv4quha7RA-1; Thu, 15 Jul 2021 17:00:58 -0400
X-MC-Unique: QTGeHc9aP-a7bv4quha7RA-1
Received: by mail-ot1-f72.google.com with SMTP id
 59-20020a9d0dc10000b02902a57e382ca1so5571259ots.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 14:00:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:organization:mime-version:content-transfer-encoding;
 bh=w6cMvV3xGXdKHq4WzPyleEVhevpPRqkhvlCWSt+Y12E=;
 b=M8mavey++yUTbqWrZidvJtpbILSHcW/lgSF+9XrPWM5Fa5eHess8CP98E4xm0Ld3+3
 g2slROeO5AH2S5ca/1P/qJwh9e6PwWM8kPs2tXm0dNIcE9R14jZ+2Fk96n4rNa3P265V
 LEeXxh3fxTXYtqKl0fXJ48O+SEJ96LAP7plJ1Hzz53of32divXjY6e/+HPouhGA1PLMD
 8Xep8JCvSZcCzKEbCtjWoCqI6VKLNxS4ojfqb5Tap58HRVoVbRGuuzJkLm4EqgLuNbh6
 zlSKalmBQFf24w36pprbRHcWw3m7nieyTdWm75/mzIjYr7l12zJ3D+xWZrWJ2fS4v56j
 2YLQ==
X-Gm-Message-State: AOAM5325ittyBkL1IOxUMMgs7HGqeGXSTCtubzSvRlSZoxMDhcy4zHKg
 WhVbvTRuFcXO6dzXlhZklCN0KEkShc26AlLFIcZd2s74BeGuuy+5/ASnCQ9qwo1/l6smKMr/sq3
 zKbB9plb9aRi6ivTJwrtBQxywuVJd
X-Received: by 2002:aca:2112:: with SMTP id 18mr9993638oiz.48.1626382857938;
 Thu, 15 Jul 2021 14:00:57 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxhGopnxXSOUkiyj2IazWlzUmam8q3Wm1mG8M1diFnOhbK2stM6MvqH6+i/pmWQg4ZlT4QnEQ==
X-Received: by 2002:aca:2112:: with SMTP id 18mr9993610oiz.48.1626382857721;
 Thu, 15 Jul 2021 14:00:57 -0700 (PDT)
Received: from redhat.com ([198.99.80.109])
 by smtp.gmail.com with ESMTPSA id n9sm1367932otn.54.2021.07.15.14.00.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Jul 2021 14:00:57 -0700 (PDT)
Date: Thu, 15 Jul 2021 15:00:55 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20210715150055.474f535f.alex.williamson@redhat.com>
In-Reply-To: <9-v1-eaf3ccbba33c+1add0-vfio_reflck_jgg@nvidia.com>
References: <0-v1-eaf3ccbba33c+1add0-vfio_reflck_jgg@nvidia.com>
 <9-v1-eaf3ccbba33c+1add0-vfio_reflck_jgg@nvidia.com>
Organization: Red Hat
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=alex.williamson@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH 09/13] vfio/pci: Reorganize
 VFIO_DEVICE_PCI_HOT_RESET to use the device set
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

On Wed, 14 Jul 2021 21:20:38 -0300
Jason Gunthorpe <jgg@nvidia.com> wrote:
> +/*
> + * We need to get memory_lock for each device, but devices can share mmap_lock,
> + * therefore we need to zap and hold the vma_lock for each device, and only then
> + * get each memory_lock.
> + */
> +static int vfio_hot_reset_device_set(struct vfio_pci_device *vdev,
> +				     struct vfio_pci_group_info *groups)
> +{
> +	struct vfio_device_set *dev_set = vdev->vdev.dev_set;
> +	struct vfio_pci_device *cur_mem =
> +		list_first_entry(&dev_set->device_list, struct vfio_pci_device,
> +				 vdev.dev_set_list);

We shouldn't be looking at the list outside of the lock, if the first
entry got removed we'd break our unwind code.

> +	struct vfio_pci_device *cur_vma;
> +	struct vfio_pci_device *cur;
> +	bool is_mem = true;
> +	int ret;
>  
> -	if (pci_dev_driver(pdev) != &vfio_pci_driver) {
> -		vfio_device_put(device);
> -		return -EBUSY;
> +	mutex_lock(&dev_set->lock);
        ^^^^^^^^^^^^^^^^^^^^^^^^^^^

> +
> +	/* All devices in the group to be reset need VFIO devices */
> +	if (vfio_pci_for_each_slot_or_bus(
> +		    vdev->pdev, vfio_pci_check_all_devices_bound, dev_set,
> +		    !pci_probe_reset_slot(vdev->pdev->slot))) {
> +		ret = -EINVAL;
> +		goto err_unlock;
>  	}
>  
> -	vdev = container_of(device, struct vfio_pci_device, vdev);
> +	list_for_each_entry(cur_vma, &dev_set->device_list, vdev.dev_set_list) {
> +		/*
> +		 * Test whether all the affected devices are contained by the
> +		 * set of groups provided by the user.
> +		 */
> +		if (!vfio_dev_in_groups(cur_vma, groups)) {
> +			ret = -EINVAL;
> +			goto err_undo;
> +		}
>  
> -	/*
> -	 * Locking multiple devices is prone to deadlock, runaway and
> -	 * unwind if we hit contention.
> -	 */
> -	if (!vfio_pci_zap_and_vma_lock(vdev, true)) {
> -		vfio_device_put(device);
> -		return -EBUSY;
> +		/*
> +		 * Locking multiple devices is prone to deadlock, runaway and
> +		 * unwind if we hit contention.
> +		 */
> +		if (!vfio_pci_zap_and_vma_lock(cur_vma, true)) {
> +			ret = -EBUSY;
> +			goto err_undo;
> +		}
>  	}
>  
> -	devs->devices[devs->cur_index++] = vdev;
> -	return 0;
> +	list_for_each_entry(cur_mem, &dev_set->device_list, vdev.dev_set_list) {
> +		if (!down_write_trylock(&cur_mem->memory_lock)) {
> +			ret = -EBUSY;
> +			goto err_undo;
> +		}
> +		mutex_unlock(&cur_mem->vma_lock);
> +	}
> +
> +	ret = pci_reset_bus(vdev->pdev);
> +


> +	list_for_each_entry(cur, &dev_set->device_list, vdev.dev_set_list)
> +		up_write(&cur->memory_lock);
> +	mutex_unlock(&dev_set->lock);
> +
> +	return ret;


Isn't the above section actually redundant to below, ie. we could just
fall through after the pci_reset_bus()?  Thanks,

Alex

> +
> +err_undo:
> +	list_for_each_entry(cur, &dev_set->device_list, vdev.dev_set_list) {
> +		if (cur == cur_mem)
> +			is_mem = false;
> +		if (cur == cur_vma)
> +			break;
> +		if (is_mem)
> +			up_write(&cur->memory_lock);
> +		else
> +			mutex_unlock(&cur->vma_lock);
> +	}
> +err_unlock:
> +	mutex_unlock(&dev_set->lock);
> +	return ret;
>  }
>  
>  /*

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
