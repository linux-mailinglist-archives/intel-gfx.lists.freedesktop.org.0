Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 073696D7622
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 10:02:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ADE810E865;
	Wed,  5 Apr 2023 08:02:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6180910E860
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 08:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680681743;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TRLMleKr92gPF/OPLJspv7HTkQcd5+Jcm7+F2NR7Y4I=;
 b=gi+NeJnw4GBWxJ1i7uku1zqgyRHy+MBeLjCOJ8Pv7TRJKckvPODeg5fIIhOUE8b2E7SFye
 Vzk4mG6ampd5nv7/qcrBwcBN+4zAP8HZWz8XplEq8zr7R/cDHemdYNoI38MLTawdIaqEpL
 n+zstPok4hp7goQ/r3YQaVgKS72rkig=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-623-2YY-Ng7iOI-ISbhkX9E8qw-1; Wed, 05 Apr 2023 04:02:20 -0400
X-MC-Unique: 2YY-Ng7iOI-ISbhkX9E8qw-1
Received: by mail-qt1-f200.google.com with SMTP id
 l13-20020a05622a174d00b003e4df699997so21659501qtk.20
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Apr 2023 01:02:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680681740;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=TRLMleKr92gPF/OPLJspv7HTkQcd5+Jcm7+F2NR7Y4I=;
 b=eBfZ1gKFQqoI+swQUrUdFI/w3gvK4gTbB0EF8IO0lYUQcUm4GIhB2R32a3Ul8GB223
 sF/bdRlX+eQJA4Lpw9Z3mr2wQNbupxqWDKRe4vpo3Mum4ZhSxAsAEaIYvT2w+9ZjyTVR
 rEmwEudQTGH5Jfd/ybxmeAMdrQ78ZgKFLlFwKvdz4+UAfRjJri8oct6wxEY+3xAl7nto
 jXSKIW31mf4/6W1tENHfH5iQ8Co+C8fOPoy6h98qzjVV7BOGzHhKmzVqRvJEZFIY5it7
 horaOfIcEsDTif9294iUS3K3VYji4WL9z4AVyBLVU9oTiQCKZjRh42ErH9ES36wepGjA
 kkww==
X-Gm-Message-State: AAQBX9ew0eyZ9mtRxgqgXz4uNDMOaOt9W3Iuok8TZm832DeaZRb2yUm6
 S4ysAx6/98994wVCFW7P2g6KgM8yZihqZBvR24AptIsAXrnGo/Z67mpbZdW+gqDlzch0Vc97DsC
 dJTOVG7Pciigt3gIQ1nIS4F4wYkZf
X-Received: by 2002:a05:6214:1306:b0:5e0:5ea6:69d4 with SMTP id
 pn6-20020a056214130600b005e05ea669d4mr9959287qvb.0.1680681739928; 
 Wed, 05 Apr 2023 01:02:19 -0700 (PDT)
X-Google-Smtp-Source: AKy350ZwLQoaiQae9ynKnc/QIgep6uH7H7TZvVmPWfF0Cgi43N5Q5z40m8ET3V2OgNBJYgZ18KYSSw==
X-Received: by 2002:a05:6214:1306:b0:5e0:5ea6:69d4 with SMTP id
 pn6-20020a056214130600b005e05ea669d4mr9959227qvb.0.1680681739573; 
 Wed, 05 Apr 2023 01:02:19 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:59e:9d80:527b:9dff:feef:3874?
 ([2a01:e0a:59e:9d80:527b:9dff:feef:3874])
 by smtp.gmail.com with ESMTPSA id
 s4-20020a372c04000000b007456c75edbbsm4223342qkh.129.2023.04.05.01.02.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 05 Apr 2023 01:02:18 -0700 (PDT)
Message-ID: <ee82cf0c-d208-ddac-5e00-ab34ca840c49@redhat.com>
Date: Wed, 5 Apr 2023 10:02:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
To: Alex Williamson <alex.williamson@redhat.com>, Yi Liu <yi.l.liu@intel.com>
References: <20230401144429.88673-1-yi.l.liu@intel.com>
 <20230401144429.88673-6-yi.l.liu@intel.com>
 <20230404141838.6a4efdd4.alex.williamson@redhat.com>
From: Eric Auger <eric.auger@redhat.com>
In-Reply-To: <20230404141838.6a4efdd4.alex.williamson@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v3 05/12] vfio/pci: Allow passing
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
Reply-To: eric.auger@redhat.com
Cc: mjrosato@linux.ibm.com, jasowang@redhat.com, xudong.hao@intel.com,
 peterx@redhat.com, terrence.xu@intel.com, chao.p.peng@linux.intel.com,
 linux-s390@vger.kernel.org, kvm@vger.kernel.org, lulu@redhat.com,
 yanting.jiang@intel.com, joro@8bytes.org, nicolinc@nvidia.com, jgg@nvidia.com,
 yan.y.zhao@intel.com, intel-gfx@lists.freedesktop.org,
 intel-gvt-dev@lists.freedesktop.org, yi.y.sun@linux.intel.com,
 cohuck@redhat.com, shameerali.kolothum.thodi@huawei.com,
 suravee.suthikulpanit@amd.com, robin.murphy@arm.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 4/4/23 22:18, Alex Williamson wrote:
> On Sat,  1 Apr 2023 07:44:22 -0700
> Yi Liu <yi.l.liu@intel.com> wrote:
>
>> as an alternative method for ownership check when iommufd is used. In
>> this case all opened devices in the affected dev_set are verified to
>> be bound to a same valid iommufd value to allow reset. It's simpler
>> and faster as user does not need to pass a set of fds and kernel no
>> need to search the device within the given fds.
>>
>> a device in noiommu mode doesn't have a valid iommufd, so this method
>> should not be used in a dev_set which contains multiple devices and one
>> of them is in noiommu. The only allowed noiommu scenario is that the
>> calling device is noiommu and it's in a singleton dev_set.
>>
>> Suggested-by: Jason Gunthorpe <jgg@nvidia.com>
>> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
>> Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>
>> Tested-by: Yanting Jiang <yanting.jiang@intel.com>
>> Signed-off-by: Yi Liu <yi.l.liu@intel.com>
>> ---
>>  drivers/vfio/pci/vfio_pci_core.c | 42 +++++++++++++++++++++++++++-----
>>  include/uapi/linux/vfio.h        |  9 ++++++-
>>  2 files changed, 44 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/vfio/pci/vfio_pci_core.c b/drivers/vfio/pci/vfio_pci_core.c
>> index 3696b8e58445..b68fcba67a4b 100644
>> --- a/drivers/vfio/pci/vfio_pci_core.c
>> +++ b/drivers/vfio/pci/vfio_pci_core.c
>> @@ -180,7 +180,8 @@ static void vfio_pci_probe_mmaps(struct vfio_pci_core_device *vdev)
>>  struct vfio_pci_group_info;
>>  static void vfio_pci_dev_set_try_reset(struct vfio_device_set *dev_set);
>>  static int vfio_pci_dev_set_hot_reset(struct vfio_device_set *dev_set,
>> -				      struct vfio_pci_group_info *groups);
>> +				      struct vfio_pci_group_info *groups,
>> +				      struct iommufd_ctx *iommufd_ctx);
>>  
>>  /*
>>   * INTx masking requires the ability to disable INTx signaling via PCI_COMMAND
>> @@ -1277,7 +1278,7 @@ vfio_pci_ioctl_pci_hot_reset_groups(struct vfio_pci_core_device *vdev,
>>  		return ret;
>>  
>>  	/* Somewhere between 1 and count is OK */
>> -	if (!hdr->count || hdr->count > count)
>> +	if (hdr->count > count)
>>  		return -EINVAL;
>>  
>>  	group_fds = kcalloc(hdr->count, sizeof(*group_fds), GFP_KERNEL);
>> @@ -1326,7 +1327,7 @@ vfio_pci_ioctl_pci_hot_reset_groups(struct vfio_pci_core_device *vdev,
>>  	info.count = hdr->count;
>>  	info.files = files;
>>  
>> -	ret = vfio_pci_dev_set_hot_reset(vdev->vdev.dev_set, &info);
>> +	ret = vfio_pci_dev_set_hot_reset(vdev->vdev.dev_set, &info, NULL);
>>  
>>  hot_reset_release:
>>  	for (file_idx--; file_idx >= 0; file_idx--)
>> @@ -1341,6 +1342,7 @@ static int vfio_pci_ioctl_pci_hot_reset(struct vfio_pci_core_device *vdev,
>>  {
>>  	unsigned long minsz = offsetofend(struct vfio_pci_hot_reset, count);
>>  	struct vfio_pci_hot_reset hdr;
>> +	struct iommufd_ctx *iommufd;
>>  	bool slot = false;
>>  
>>  	if (copy_from_user(&hdr, arg, minsz))
>> @@ -1355,7 +1357,12 @@ static int vfio_pci_ioctl_pci_hot_reset(struct vfio_pci_core_device *vdev,
>>  	else if (pci_probe_reset_bus(vdev->pdev->bus))
>>  		return -ENODEV;
>>  
>> -	return vfio_pci_ioctl_pci_hot_reset_groups(vdev, &hdr, slot, arg);
>> +	if (hdr.count)
>> +		return vfio_pci_ioctl_pci_hot_reset_groups(vdev, &hdr, slot, arg);
>> +
>> +	iommufd = vfio_iommufd_physical_ictx(&vdev->vdev);
>> +
>> +	return vfio_pci_dev_set_hot_reset(vdev->vdev.dev_set, NULL, iommufd);
>>  }
>>  
>>  static int vfio_pci_ioctl_ioeventfd(struct vfio_pci_core_device *vdev,
>> @@ -2327,6 +2334,9 @@ static bool vfio_dev_in_groups(struct vfio_pci_core_device *vdev,
>>  {
>>  	unsigned int i;
>>  
>> +	if (!groups)
>> +		return false;
>> +
>>  	for (i = 0; i < groups->count; i++)
>>  		if (vfio_file_has_dev(groups->files[i], &vdev->vdev))
>>  			return true;
>> @@ -2402,13 +2412,25 @@ static int vfio_pci_dev_set_pm_runtime_get(struct vfio_device_set *dev_set)
>>  	return ret;
>>  }
>>  
>> +static bool vfio_dev_in_iommufd_ctx(struct vfio_pci_core_device *vdev,
>> +				    struct iommufd_ctx *iommufd_ctx)
>> +{
>> +	struct iommufd_ctx *iommufd = vfio_iommufd_physical_ictx(&vdev->vdev);
>> +
>> +	if (!iommufd)
>> +		return false;
>> +
>> +	return iommufd == iommufd_ctx;
>> +}
>> +
>>  /*
>>   * We need to get memory_lock for each device, but devices can share mmap_lock,
>>   * therefore we need to zap and hold the vma_lock for each device, and only then
>>   * get each memory_lock.
>>   */
>>  static int vfio_pci_dev_set_hot_reset(struct vfio_device_set *dev_set,
>> -				      struct vfio_pci_group_info *groups)
>> +				      struct vfio_pci_group_info *groups,
>> +				      struct iommufd_ctx *iommufd_ctx)
>>  {
>>  	struct vfio_pci_core_device *cur_mem;
>>  	struct vfio_pci_core_device *cur_vma;
>> @@ -2448,9 +2470,17 @@ static int vfio_pci_dev_set_hot_reset(struct vfio_device_set *dev_set,
>>  		 *
>>  		 * Otherwise all opened devices in the dev_set must be
>>  		 * contained by the set of groups provided by the user.
>> +		 *
>> +		 * If user provides a zero-length array, then all the
>> +		 * opened devices must be bound to a same iommufd_ctx.
>> +		 *
>> +		 * If all above checks are failed, reset is allowed only if
>> +		 * the calling device is in a singleton dev_set.
>>  		 */
>>  		if (cur_vma->vdev.open_count &&
>> -		    !vfio_dev_in_groups(cur_vma, groups)) {
>> +		    !vfio_dev_in_groups(cur_vma, groups) &&
>> +		    !vfio_dev_in_iommufd_ctx(cur_vma, iommufd_ctx) &&
>> +		    (dev_set->device_count > 1)) {
> This last condition looks buggy to me, we need all conditions to be
> true to generate an error here, which means that for a singleton
> dev_set, it doesn't matter what group fds are passed, if any, or whether
> the iommufd context matches.  I think in fact this means that the empty
> array path is equally available for group use cases with a singleton
> dev_set, but we don't enable it for multiple device dev_sets like we do
> iommufd.
>
> You pointed out a previous issue with hot-reset info and no-iommu where
> if other affected devices are not bound to vfio-pci the info ioctl
> returns error.  That's handled in the hot-reset ioctl by the fact that
> all affected devices must be in the dev_set and therefore bound to
> vfio-pci drivers.  So it seems to me that aside from the spurious error
> because we can't report an iommu group when none exists, and didn't
> spot it to invent an invalid group for debugging, hot-reset otherwise
> works with no-iommu just like it does for iommu backed devices.  We
> don't currently require singleton no-iommu dev_sets afaict.
>
> I'll also note that if the dev_set is singleton, this suggests that
> pci_reset_function() can make use of bus reset, so a hot-reset is
> accessible via VFIO_DEVICE_RESET if the appropriate reset method is
> selected.
>
> Therefore, I think as written, the singleton dev_set hot-reset is
> enabled for iommufd and (unintentionally?) for the group path, while
> also negating a requirement for a group fd or that a provided group fd
> actually matches the device in this latter case.  The null-array
> approach is not however extended to groups for more general use.
> Additionally, limiting no-iommu hot-reset to singleton dev_sets
> provides only a marginal functional difference vs VFIO_DEVICE_RESET.
> Thanks,
>
> Alex
What bout introducing a helper
static bool is_reset_ok(pdev, groups, ctx) {
    if (!pdev->vdev.open_count)
        return true;
    if (groups && vfio_dev_in_groups(pdev, groups))
        return true;
    if (ctx && vfio_dev_in_iommufd_ctx(pdev, ctx)
        return true;
    return false;
}

Assuming the above logic is correct I think this would make the code
more readable

Thanks

Eric
>>  			ret = -EINVAL;
>>  			goto err_undo;
>>  		}
>> diff --git a/include/uapi/linux/vfio.h b/include/uapi/linux/vfio.h
>> index f96e5689cffc..17aa5d09db41 100644
>> --- a/include/uapi/linux/vfio.h
>> +++ b/include/uapi/linux/vfio.h
>> @@ -679,7 +679,14 @@ struct vfio_pci_hot_reset_info {
>>   * the calling user must ensure all affected devices, if opened, are
>>   * owned by itself.
>>   *
>> - * The ownership is proved by an array of group fds.
>> + * The ownership can be proved by:
>> + *   - An array of group fds
>> + *   - A zero-length array
>> + *
>> + * In the last case all affected devices which are opened by this user
>> + * must have been bound to a same iommufd. If the calling device is in
>> + * noiommu mode (no valid iommufd) then it can be reset only if the reset
>> + * doesn't affect other devices.
>>   *
>>   * Return: 0 on success, -errno on failure.
>>   */

