Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9943A6805F4
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 07:30:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E80DB10E0BF;
	Mon, 30 Jan 2023 06:30:16 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 484EA10E0BF;
 Mon, 30 Jan 2023 06:30:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675060214; x=1706596214;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=5JOgi4ZUr4K7TZr+QpnrDF3cVYUtYlIWo3I8I33KMrM=;
 b=GEyupL39zIjumpjZ0Q6OfaIhww19WYJVKb9lMCO1XprZIEMKuYtwUuNr
 73GL5tb5YKuZFOOKcsdzktg7zR7F+CUJCX6rvWCTUAd2y9Je+bmol9KTh
 yv9GjLVg8IKq/m3HUmBfmXTCryHPQ7rsL9SF1d+CSkMHfGsHqh3mD5fJg
 gvmID8ZR8jO2e/6su9nicwEMK3gq5M/kpSnB2jQVeRqb3mMas4m44o9V6
 ooMpZImiASZREhf4h08GuJQGPaoYxTBeT9327m9a5zK0zHVunGcyllLl6
 RrSOt21u1L+wnySl20MawwAbXLxlPuLZjm6GV+6jOd6wrQBPWm+01jQSv Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="329604479"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="329604479"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2023 22:30:13 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10605"; a="663984228"
X-IronPort-AV: E=Sophos;i="5.97,257,1669104000"; d="scan'208";a="663984228"
Received: from tbiernac-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.2.140])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2023 22:30:11 -0800
Date: Mon, 30 Jan 2023 07:30:09 +0100
From: Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20230130063009.g5cojnchfcarkjre@zkempczy-mobl2>
References: <20230127111241.3624629-1-tvrtko.ursulin@linux.intel.com>
 <20230127111241.3624629-7-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230127111241.3624629-7-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH i-g-t 6/6] lib/igt_device_scan: Improve
 Intel discrete GPU selection
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 27, 2023 at 11:12:41AM +0000, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Now that DRM subsystem can contain PCI cards with the vendor set to Intel
> but they are not Intel GPUs, we need a better selection logic than looking
> at the vendor. Use the driver name instead.
> 
> Caveat that the driver key was on a blacklist so far, and although I can't
> imagine it can be slow to probe, this is something to double check.

I don't remember why driver was added to the list. But you're right, driver
instead of vendor gives clear situation what drm device we're working on.

> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> Cc: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>
> ---
>  lib/igt_device_scan.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
> index ed128d24dd10..8b767eed202d 100644
> --- a/lib/igt_device_scan.c
> +++ b/lib/igt_device_scan.c
> @@ -237,6 +237,7 @@ struct igt_device {
>  	char *vendor;
>  	char *device;
>  	char *pci_slot_name;
> +	char *driver;
>  	int gpu_index; /* For more than one GPU with same vendor and device. */
>  
>  	char *codename; /* For grouping by codename */
> @@ -440,7 +441,6 @@ static bool is_on_blacklist(const char *what)
>  				      "resource3", "resource4", "resource5",
>  				      "resource0_wc", "resource1_wc", "resource2_wc",
>  				      "resource3_wc", "resource4_wc", "resource5_wc",
> -				      "driver",
>  				      "uevent", NULL};
>  	const char *key;
>  	int i = 0;
> @@ -662,6 +662,8 @@ static struct igt_device *igt_device_new_from_udev(struct udev_device *dev)
>  		get_pci_vendor_device(idev, &vendor, &device);
>  		idev->codename = __pci_codename(vendor, device);
>  		idev->dev_type = __pci_devtype(vendor, device, idev->pci_slot_name);
> +		idev->driver = strdup_nullsafe(get_attr(idev, "driver"));
> +		igt_assert(idev->driver);
>  	}
>  
>  	return idev;
> @@ -776,7 +778,7 @@ static bool __find_first_i915_card(struct igt_device_card *card, bool discrete)
>  
>  	igt_list_for_each_entry(dev, &igt_devs.all, link) {
>  
> -		if (!is_pci_subsystem(dev) || !is_vendor_matched(dev, "intel"))
> +		if (!is_pci_subsystem(dev) || strcmp(dev->driver, "i915"))

We can easily add finding xe card in the future similar to the above. From me:

Reviewed-by: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>

--
Zbigniew

>  			continue;
>  
>  		cmp = strncmp(dev->pci_slot_name, INTEGRATED_I915_GPU_PCI_ID,
> @@ -1023,6 +1025,7 @@ static void igt_device_free(struct igt_device *dev)
>  	free(dev->drm_render);
>  	free(dev->vendor);
>  	free(dev->device);
> +	free(dev->driver);
>  	free(dev->pci_slot_name);
>  	g_hash_table_destroy(dev->attrs_ht);
>  	g_hash_table_destroy(dev->props_ht);
> -- 
> 2.34.1
> 
