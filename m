Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF224BFE4D
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Feb 2022 17:17:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8F7910E676;
	Tue, 22 Feb 2022 16:16:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F17410E676;
 Tue, 22 Feb 2022 16:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645546618; x=1677082618;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Q6XnhyjsHW7ndIzCbKBLybUuNdTesILECjrgo/PJVeM=;
 b=GoiyIQeqkIt1pkJ+smIuW3tVDHI6IA8HPRaPEjagS/xe012vV0NzKp8V
 Rqlswtm3anO1eKDQbqqccnABEvOsUweeXd79piQmGyEe3NDtRRz+cDaK3
 TwbrT7VB8j/hIH92iyRAFqQgiuM3qiwPacSEQIeNEEBFkpupggONajf/C
 Pr5dXFM/wDCFxVtNwi8hkC2vQzwiET3zTz8nstgyfTK16o0026xLQI+Ve
 9pE1uSfeByaSZvtOSO2g1lvJwQ13UkwreRbeTH/c00i34TAxSpc3IqG40
 JmsQHJjQ2m1x5qVxrbNqlDtPgNA5vpz51NfD5D/pBa+0WbqyVCME7REZY w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="251934417"
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="251934417"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 08:16:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,387,1635231600"; d="scan'208";a="505581008"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by orsmga002.jf.intel.com with ESMTP; 22 Feb 2022 08:16:56 -0800
Received: from [10.249.156.60] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.156.60])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 21MGGtb0010043; Tue, 22 Feb 2022 16:16:55 GMT
Message-ID: <c94e00ee-967f-8dd8-8d00-e67a860c1cd9@intel.com>
Date: Tue, 22 Feb 2022 17:16:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.6.1
Content-Language: en-US
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
References: <20220222151100.83283-1-janusz.krzysztofik@linux.intel.com>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <20220222151100.83283-1-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v3] lib/igt_device: Add
 support for accessing unbound VF PCI devices
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris.p.wilson@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 22.02.2022 16:11, Janusz Krzysztofik wrote:
> The library provides igt_device_get_pci_device() function that allows to
> get access to a PCI device from an open DRM device file descriptor.  It
> can be used on VF devices as long as a DRM driver is bound to them.
> However, SR-IOV tests may want to exercise VF PCI devices created by a PF
> without binding any DRM driver to them.
> 
> While keeping the API of igt_device_get_pci_device() untouched, extend API
> of its underlying helper __igt_device_get_pci_device() with an extra
> argument for specifying VF ID of the requested PCI device and expose this
> function as public.
> 
> v2: refresh on top of IGT libpciaccess wrappers and drop previously added
>     but no longer needed error unwind path and recommendations for users
>     on calling pci_system_cleanup() after use (Chris),
>   - fix incorrect validation of snprintf() result and misaligned
>     formatting of igt_warn_on_f() arguments.
> v3: follow VF numbering convention of Linux PCI ABI (Chris),
>   - fix and improve DOC.
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Reviewed-by: Chris Wilson <chris.p.wilson@intel.com> # v2
> ---
>  lib/igt_device.c | 33 +++++++++++++++++++++++++++------
>  lib/igt_device.h |  1 +
>  2 files changed, 28 insertions(+), 6 deletions(-)
> 
> diff --git a/lib/igt_device.c b/lib/igt_device.c
> index c50bf4a1f7..46b7dbc490 100644
> --- a/lib/igt_device.c
> +++ b/lib/igt_device.c
> @@ -149,9 +149,9 @@ struct igt_pci_addr {
>  	unsigned int function;
>  };
>  
> -static int igt_device_get_pci_addr(int fd, struct igt_pci_addr *pci)
> +static int igt_device_get_pci_addr(int fd, int vf_id, struct igt_pci_addr *pci)
>  {
> -	char path[IGT_DEV_PATH_LEN];
> +	char link[20], path[IGT_DEV_PATH_LEN];
>  	char *buf;
>  	int sysfs;
>  	int len;
> @@ -159,11 +159,21 @@ static int igt_device_get_pci_addr(int fd, struct igt_pci_addr *pci)
>  	if (!igt_device_is_pci(fd))
>  		return -ENODEV;
>  
> +	if (vf_id < 0)
> +		len = snprintf(link, sizeof(link), "device");
> +	else
> +		len = snprintf(link, sizeof(link), "device/virtfn%u", vf_id);
> +	if (igt_warn_on_f(len >= sizeof(link),
> +			  "IGT bug: insufficient buffer space for rendering PCI device link name\n"))
> +		return -ENOSPC;
> +	else if (igt_debug_on_f(len < 0, "unexpected failure from snprintf()\n"))
> +		return len;
> +
>  	sysfs = igt_sysfs_open(fd);
>  	if (sysfs == -1)
>  		return -ENOENT;
>  
> -	len = readlinkat(sysfs, "device", path, sizeof(path) - 1);
> +	len = readlinkat(sysfs, link, path, sizeof(path) - 1);
>  	close(sysfs);
>  	if (len == -1)
>  		return -ENOENT;
> @@ -183,12 +193,23 @@ static int igt_device_get_pci_addr(int fd, struct igt_pci_addr *pci)
>  	return 0;
>  }
>  
> -static struct pci_device *__igt_device_get_pci_device(int fd)
> +/**
> + * __igt_device_get_pci_device:
> + *
> + * @fd: DRM device file descriptor
> + * @vf_id: PCI virtual function number or -1 if native or PF itself

this param seems to be used here rather as 0-based "index" that
subsystem uses to list virtfn entries, while real VF "numbers" are
1-based, see PCI spec which says:

"VFs are numbered starting with 1 so the first VF associated with PF M
is VF M,1."

maybe we should update the wording to minimize any confusions?

Michal

> + *
> + * Looks up a PCI interface of a DRM device or a VF PCI device of the DRM PF using libpciaccess.
> + *
> + * Returns:
> + * The pci_device, NULL on any failures.
> + */
> +struct pci_device *__igt_device_get_pci_device(int fd, int vf_id)
>  {
>  	struct igt_pci_addr pci_addr;
>  	struct pci_device *pci_dev;
>  
> -	if (igt_device_get_pci_addr(fd, &pci_addr)) {
> +	if (igt_device_get_pci_addr(fd, vf_id, &pci_addr)) {
>  		igt_warn("Unable to find device PCI address\n");
>  		return NULL;
>  	}
> @@ -231,7 +252,7 @@ struct pci_device *igt_device_get_pci_device(int fd)
>  {
>  	struct pci_device *pci_dev;
>  
> -	pci_dev = __igt_device_get_pci_device(fd);
> +	pci_dev = __igt_device_get_pci_device(fd, -1);
>  	igt_require(pci_dev);
>  
>  	return pci_dev;
> diff --git a/lib/igt_device.h b/lib/igt_device.h
> index 278ba7a9b3..00da853e71 100644
> --- a/lib/igt_device.h
> +++ b/lib/igt_device.h
> @@ -33,5 +33,6 @@ void igt_device_drop_master(int fd);
>  
>  int igt_device_get_card_index(int fd);
>  struct pci_device *igt_device_get_pci_device(int fd);
> +struct pci_device *__igt_device_get_pci_device(int fd, int vf_id);
>  
>  #endif /* __IGT_DEVICE_H__ */
