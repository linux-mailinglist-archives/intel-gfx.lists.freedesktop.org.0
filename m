Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9606D6E14
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 22:31:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9343010E057;
	Tue,  4 Apr 2023 20:31:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE14610E057
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 20:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680640292;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XqS1tmmJr7PAF8X4LNYoZBpPsb/UgoghZYeXc9m09Fg=;
 b=V8EbIa6p494NRQllx1l36DRDHMMsORtz62l0HzqDIVteUQ0ln+cDxwHBIyOng1tH6T5UMO
 WuzOVo4S/LH6VGkC0QW6cXX8NBXHJWxINKsUmst2MayvGngXP+hZwDo+TGhzLmu3GaSwYh
 yKJmADWJ8qqSQth+BV7l+RP/x8l1Z3k=
Received: from mail-io1-f69.google.com (mail-io1-f69.google.com
 [209.85.166.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-510-qmkN3VfqPOSM6ufMTBL16Q-1; Tue, 04 Apr 2023 16:31:31 -0400
X-MC-Unique: qmkN3VfqPOSM6ufMTBL16Q-1
Received: by mail-io1-f69.google.com with SMTP id
 c83-20020a6bb356000000b00758333e1ddfso20940849iof.14
 for <intel-gfx@lists.freedesktop.org>; Tue, 04 Apr 2023 13:31:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680640291;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=XqS1tmmJr7PAF8X4LNYoZBpPsb/UgoghZYeXc9m09Fg=;
 b=mhdQbx+ktwR4FNMH1cyfl/55QeRKNIhRP1dyEKa259WB/+z7vE1rTpbLsMCyHKhdFt
 WjdSPmv0ztjHuw5u988jAxthCNzVsrTj97D2fot3RoazuBT3Hdnu8TtF4JxOPZciglv5
 1sYm2VmY/EN5pHBesYJ5W5VMiwWDpNgFOom5EdNVTADi4H6zgNjLW9fE6t7AuSpw2GAq
 lo7ylsJeD/ZtGkBinPhUvjGAjkzE126rENxsG6gi5u1XbkZVL2/BZfA8APlwYMdKMaLd
 9VYO7seQFwN66SkBxwSIMwSuSHILPy7DhR2cCSIP5UX2ufda4uaS/e3sBK6xQb1nS93K
 Em4Q==
X-Gm-Message-State: AAQBX9ccIQJZPuegbB8/PlK+VjXphmzxgxofRHSEMR0KU4h/0jKZX5Lf
 6sSaIRwVEO9LHBXh1MtXSel7w+kZ+miPI4LU5gHFbYExFhCzVysnIXry4hIZnZlsMuy8aFNlnSE
 qt24saQez1NcnwmXVuuh7B8GrK22w
X-Received: by 2002:a5d:818e:0:b0:75c:8ca2:c9dd with SMTP id
 u14-20020a5d818e000000b0075c8ca2c9ddmr3054661ion.13.1680640290847; 
 Tue, 04 Apr 2023 13:31:30 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZjUtpAYCx6yaQp4dhQD6EMAb3LqUkY7lWvfjoqBYl2aC4WHyIt9JLMzzeXtpK9Oh7S0irxFA==
X-Received: by 2002:a5d:818e:0:b0:75c:8ca2:c9dd with SMTP id
 u14-20020a5d818e000000b0075c8ca2c9ddmr3054643ion.13.1680640290625; 
 Tue, 04 Apr 2023 13:31:30 -0700 (PDT)
Received: from redhat.com ([38.15.36.239]) by smtp.gmail.com with ESMTPSA id
 j195-20020a0263cc000000b003b331f0bbdfsm3476000jac.97.2023.04.04.13.31.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 04 Apr 2023 13:31:30 -0700 (PDT)
Date: Tue, 4 Apr 2023 14:31:28 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Yi Liu <yi.l.liu@intel.com>
Message-ID: <20230404143128.52d8a256.alex.williamson@redhat.com>
In-Reply-To: <20230401144429.88673-8-yi.l.liu@intel.com>
References: <20230401144429.88673-1-yi.l.liu@intel.com>
 <20230401144429.88673-8-yi.l.liu@intel.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.35; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3 07/12] vfio: Accpet device file from vfio
 PCI hot reset path
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
Cc: mjrosato@linux.ibm.com, jasowang@redhat.com, xudong.hao@intel.com,
 peterx@redhat.com, terrence.xu@intel.com, chao.p.peng@linux.intel.com,
 linux-s390@vger.kernel.org, kvm@vger.kernel.org, lulu@redhat.com,
 yanting.jiang@intel.com, joro@8bytes.org, nicolinc@nvidia.com, jgg@nvidia.com,
 yan.y.zhao@intel.com, intel-gfx@lists.freedesktop.org, eric.auger@redhat.com,
 intel-gvt-dev@lists.freedesktop.org, yi.y.sun@linux.intel.com,
 cohuck@redhat.com, shameerali.kolothum.thodi@huawei.com,
 suravee.suthikulpanit@amd.com, robin.murphy@arm.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat,  1 Apr 2023 07:44:24 -0700
Yi Liu <yi.l.liu@intel.com> wrote:

> This extends both vfio_file_is_valid() and vfio_file_has_dev() to accept
> device file from the vfio PCI hot reset.
> 
> Reviewed-by: Kevin Tian <kevin.tian@intel.com>
> Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
> Tested-by: Yanting Jiang <yanting.jiang@intel.com>
> Signed-off-by: Yi Liu <yi.l.liu@intel.com>
> ---
>  drivers/vfio/vfio_main.c | 23 +++++++++++++++++++----
>  1 file changed, 19 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/vfio/vfio_main.c b/drivers/vfio/vfio_main.c
> index fe7446805afd..ebbb6b91a498 100644
> --- a/drivers/vfio/vfio_main.c
> +++ b/drivers/vfio/vfio_main.c
> @@ -1154,13 +1154,23 @@ const struct file_operations vfio_device_fops = {
>  	.mmap		= vfio_device_fops_mmap,
>  };
>  
> +static struct vfio_device *vfio_device_from_file(struct file *file)
> +{
> +	struct vfio_device *device = file->private_data;
> +
> +	if (file->f_op != &vfio_device_fops)
> +		return NULL;
> +	return device;
> +}
> +
>  /**
>   * vfio_file_is_valid - True if the file is valid vfio file
>   * @file: VFIO group file or VFIO device file
>   */
>  bool vfio_file_is_valid(struct file *file)
>  {
> -	return vfio_group_from_file(file);
> +	return vfio_group_from_file(file) ||
> +	       vfio_device_from_file(file);
>  }
>  EXPORT_SYMBOL_GPL(vfio_file_is_valid);
>  
> @@ -1174,12 +1184,17 @@ EXPORT_SYMBOL_GPL(vfio_file_is_valid);
>  bool vfio_file_has_dev(struct file *file, struct vfio_device *device)
>  {
>  	struct vfio_group *group;
> +	struct vfio_device *vdev;
>  
>  	group = vfio_group_from_file(file);
> -	if (!group)
> -		return false;
> +	if (group)
> +		return vfio_group_has_dev(group, device);
> +
> +	vdev = vfio_device_from_file(file);
> +	if (vdev)
> +		return vdev == device;
>  
> -	return vfio_group_has_dev(group, device);
> +	return false;

Nit, unless we expect to be testing against NULL devices, this could
just be:

	return device == vfio_device_from_file(file);

Thanks,
Alex

