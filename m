Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B4EB67EAA3
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 17:17:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FF8210E9AB;
	Fri, 27 Jan 2023 16:17:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D081F10E9AB;
 Fri, 27 Jan 2023 16:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674836262; x=1706372262;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=zlqIdmh5xbRVO9d9F4oxQ1Lc7X1l63kOrFw3REPZHgA=;
 b=ZhxM53jwMhN1BuH3FqTYkySFp+0QkUJAnLReGsvrsVOkc/rJ4Ho/+J7O
 HQxyPcYGhSO+dVfWACoPe1aaTrhKdabQWf7N7qBSTrLI535ff9dSYTf+Q
 oiFR3zJaGhE/67MT3MDvQEjdjaTm1H0d3bXdGhZbos6KO+/AOnj4AYPjK
 lgMmVGQtBWOsX/Y4iSci6ioRyoU6ybF2zXIhl9bh2CpKUbAoSUBC+g9lm
 8kOodielG9sS6R1hPDqpOjiMgoo9tBqS3/xQxZTJ8ke2ZYvEmfq/C9GNh
 mwK6xp3lBaRva/vZCqg9i0sz7Cvb38a68QXpFFOwHcqF5vD75C0KHszC2 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="325790411"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="325790411"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 08:17:28 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="752033979"
X-IronPort-AV: E=Sophos;i="5.97,251,1669104000"; d="scan'208";a="752033979"
Received: from kwierzbi-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.2.161])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 08:17:26 -0800
Date: Fri, 27 Jan 2023 17:17:27 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <20230127161727.oeyjjbt32jn27zgj@kamilkon-desk1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Petri Latvala <petri.latvala@intel.com>,
 Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 Intel-gfx@lists.freedesktop.org
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
Cc: Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tvrtko,

On 2023-01-27 at 11:12:41 +0000, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Now that DRM subsystem can contain PCI cards with the vendor set to Intel
> but they are not Intel GPUs, we need a better selection logic than looking
> at the vendor. Use the driver name instead.
> 
> Caveat that the driver key was on a blacklist so far, and although I can't
> imagine it can be slow to probe, this is something to double check.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> Cc: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>

Please send this as separate patch, not in this series.

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

Put the comment here why it can be problematic to relay on driver name.

Regards,
Kamil

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
