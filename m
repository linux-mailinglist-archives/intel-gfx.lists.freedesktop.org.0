Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 312C84CD778
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 16:14:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D5F010EC2E;
	Fri,  4 Mar 2022 15:14:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADB8610EB96;
 Fri,  4 Mar 2022 15:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646406874; x=1677942874;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=R3hik3YL9tbGwdOvAfoNf3FpTUxGnlBrsL8LwRXVlxo=;
 b=eNznKJQEGncr/V4A9XcnPGXcZeJ2du8RgXy8Ls42PBijpVhhJ0tK6UTV
 Knh+6mMt+9TGM5OUUmrLcwSrVBGg2LnmlEEVaO+sX3HGYA2gKvS56gMXu
 hH5xcsuUmZgfQw/lcM7Vs7NmQ14ieBSUsRXZTaX+yyzpE09QWSgRyCRgi
 IXRwpRAyJ12QhJ4RmDS55RjGqMghkju3xY8qHiEvqczd5Skr7mRTVLpV8
 X3uPEtHe0Eaiei0FYLbvKKhm25hICHw1JHwvMPXSoNPMjkc7Syw12piVM
 jV3Ip+L/en6RFsMa7ZAXKbnc+FyXuuduxnpFIzVUuO2WIhW9dS5GyG3Vq w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10276"; a="253723000"
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="253723000"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 07:14:07 -0800
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="642533641"
Received: from kszypryt-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.25.110])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 07:14:06 -0800
Date: Fri, 4 Mar 2022 16:14:05 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Message-ID: <YiIsvT1GlBN/HaXC@kamilkon-DESK1>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
References: <20220301140755.315472-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220301140755.315472-1-janusz.krzysztofik@linux.intel.com>
Subject: Re: [Intel-gfx] [igt-dev] [PATCH v2 i-g-t] lib/intel_mmio: Fix
 mmapped resources not unmapped on fini
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Janusz,

Dnia 2022-03-01 at 15:07:55 +0100, Janusz Krzysztofik napisał(a):
> Commit 5f3cfa485eb4 ("lib: Use safe wrappers around libpciaccess
> initialization functions") took care of not leaking memory allocated by
> pci_system_init() but didn't take care of users potentially attempting to
> reinitialize global data maintained by libpciaccess.  For example,
> intel_register_access_init() mmaps device's PCI BAR0 resource with
> pci_device_map_range() but intel_register_access_fini() doesn't unmap it
> and next call to intel_register_access_init() fails on attempt to mmap it
> again with pci_device_map_range().
------ ^
imho you can cut here, no need to repeat it twice.

> 
> Fix it, and also provide intel_mmio_umap_*() counterparts to public
-------------------------------------- ^
s/umap/unmap/

> functions intel_mmio_use_pci_bar() and intel_mmio_use_dump_file().
> 
> v2: apply last minute fixes, cached but unfortunately not committed before
>     sending
> 
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  lib/intel_io.h   |  4 +++
>  lib/intel_mmio.c | 67 ++++++++++++++++++++++++++++++++++++++++++------
>  2 files changed, 63 insertions(+), 8 deletions(-)
> 
> diff --git a/lib/intel_io.h b/lib/intel_io.h
> index 1cfe4fb6b9..ea2649d9bc 100644
> --- a/lib/intel_io.h
> +++ b/lib/intel_io.h
> @@ -49,6 +49,8 @@ struct intel_register_map {
>  
>  struct intel_mmio_data {
>  	void *igt_mmio;
> +	size_t mmio_size;
> +	struct pci_device *dev;
>  	struct intel_register_map map;
>  	uint32_t pci_device_id;
>  	int key;
> @@ -57,7 +59,9 @@ struct intel_mmio_data {
>  
>  void intel_mmio_use_pci_bar(struct intel_mmio_data *mmio_data,
>  			    struct pci_device *pci_dev);
> +void intel_mmio_unmap_pci_bar(struct intel_mmio_data *mmio_data);
>  void intel_mmio_use_dump_file(struct intel_mmio_data *mmio_data, char *file);
> +void intel_mmio_unmap_dump_file(struct intel_mmio_data *mmio_data);
>  
>  int intel_register_access_init(struct intel_mmio_data *mmio_data,
>  			       struct pci_device *pci_dev, int safe, int fd);
> diff --git a/lib/intel_mmio.c b/lib/intel_mmio.c
> index 667a69f5aa..cb8f9db2e5 100644
> --- a/lib/intel_mmio.c
> +++ b/lib/intel_mmio.c
> @@ -82,6 +82,8 @@ void *igt_global_mmio;
>   * Sets also up mmio_data->igt_mmio to point at the data contained
>   * in @file. This allows the same code to get reused for dumping and decoding
>   * from running hardware as from register dumps.
> + *
> + * Users are expected to call intel_mmio_unmap_dump_file() after use.
>   */
>  void
>  intel_mmio_use_dump_file(struct intel_mmio_data *mmio_data, char *file)
> @@ -99,11 +101,29 @@ intel_mmio_use_dump_file(struct intel_mmio_data *mmio_data, char *file)

imho at beginning of this function there should be check
that igt_global_mmio == NULL, and the same check should be at
other init functions.

Looks like we cannot mmap two different pcie cards at the same
time with this lib.

>  	igt_fail_on_f(mmio_data->igt_mmio == MAP_FAILED,
>  		      "Couldn't mmap %s\n", file);
>  
> +	mmio_data->mmio_size = st.st_size;
>  	igt_global_mmio = mmio_data->igt_mmio;
>  
>  	close(fd);
>  }
>  
> +/**
> + * intel_mmio_unmap_dump_file:
> + * @mmio_data:  mmio structure for IO operations
> + *
> + * Unmaps a dump file mmapped with intel_mmio_use_dump_file()
> + */
> +void intel_mmio_unmap_dump_file(struct intel_mmio_data *mmio_data)
> +{
> +	if (igt_warn_on_f(!mmio_data->mmio_size || mmio_data->dev,
> +			  "test bug: argument doesn't point to struct intel_mmio_data initialized with intel_mmio_use_dump_file()\n"))

Please shorten text for warning, something like: arg was not
inialized with ...

Please also add check for null at global var.

> +		return;
> +
> +	igt_global_mmio = NULL;
> +	igt_debug_on(munmap(mmio_data->igt_mmio, mmio_data->mmio_size) < 0);
> +	mmio_data->mmio_size = 0;
> +}
> +
>  /**
>   * intel_mmio_use_pci_bar:
>   * @mmio_data:  mmio structure for IO operations
> @@ -112,12 +132,14 @@ intel_mmio_use_dump_file(struct intel_mmio_data *mmio_data, char *file)
>   * Fill a mmio_data stucture with igt_mmio to point at the mmio bar.
>   *
>   * @pci_dev can be obtained from intel_get_pci_device().
> + *
> + * Users are expected to call intel_mmio_unmap_pci_bar() after use.
>   */
>  void
>  intel_mmio_use_pci_bar(struct intel_mmio_data *mmio_data, struct pci_device *pci_dev)
>  {
>  	uint32_t devid, gen;
> -	int mmio_bar, mmio_size;
> +	int mmio_bar;

Please use this local var and assign it to struct only after
succesfull initialization.

>  	int error;
>  
>  	memset(mmio_data, 0, sizeof(struct intel_mmio_data));
> @@ -129,22 +151,42 @@ intel_mmio_use_pci_bar(struct intel_mmio_data *mmio_data, struct pci_device *pci
>  
>  	gen = intel_gen(devid);
>  	if (gen < 3)
> -		mmio_size = 512*1024;
> +		mmio_data->mmio_size = 512*1024;
>  	else if (gen < 5)
> -		mmio_size = 512*1024;
> +		mmio_data->mmio_size = 512*1024;

Both places uses the same number 512*1024, please make it one
if check: if (gen < 5)

Or maybe it is an error for gen < 3 ?

>  	else
> -		mmio_size = 2*1024*1024;
> +		mmio_data->mmio_size = 2*1024*1024;
>  
>  	error = pci_device_map_range (pci_dev,
>  				      pci_dev->regions[mmio_bar].base_addr,
> -				      mmio_size,
> +				      mmio_data->mmio_size,
>  				      PCI_DEV_MAP_FLAG_WRITABLE,
>  				      &mmio_data->igt_mmio);
>  
> -	igt_global_mmio = mmio_data->igt_mmio;
> -
>  	igt_fail_on_f(error != 0,
>  		      "Couldn't map MMIO region\n");
> +
> +	mmio_data->dev = pci_dev;
> +	igt_global_mmio = mmio_data->igt_mmio;
> +}
> +
> +/**
> + * intel_mmio_unmap_pci_bar:
> + * @mmio_data:  mmio structure for IO operations
> + *
> + * Unmaps a PCI BAR region mmapped with intel_mmio_use_pci_bar()
> + */
> +void intel_mmio_unmap_pci_bar(struct intel_mmio_data *mmio_data)
> +{
> +	if (igt_warn_on_f(!mmio_data->dev,
> +			  "test bug: argument doesn't point to struct intel_mmio_data initialized with intel_mmio_use_pci_bar()\n"))

Same here, please shorten this warn.

> +		return;
> +
> +	igt_global_mmio = NULL;
> +	igt_debug_on(pci_device_unmap_range(mmio_data->dev,
> +					    mmio_data->igt_mmio, mmio_data->mmio_size) < 0);
> +	mmio_data->dev = NULL;
> +	mmio_data->mmio_size = 0;
>  }
>  
>  static void
> @@ -166,6 +208,8 @@ release_forcewake_lock(int fd)
>   * It also initializes mmio_data->igt_mmio like intel_mmio_use_pci_bar().
>   *
>   * @pci_dev can be obtained from intel_get_pci_device().
> + *
> + * Users are expected to call intel_register_access_fini() after use.
>   */
>  int
>  intel_register_access_init(struct intel_mmio_data *mmio_data, struct pci_device *pci_dev, int safe, int fd)
> @@ -222,8 +266,15 @@ int intel_register_access_needs_fakewake(struct intel_mmio_data *mmio_data)
>  void
>  intel_register_access_fini(struct intel_mmio_data *mmio_data)
>  {
> -	if (mmio_data->key && intel_register_access_needs_wake(mmio_data))
> +	if (igt_warn_on_f(!mmio_data->key,
> +			  "test bug: argument doesn't point to struct intel_mmio_data initialized with intel_register_access_init()\n"))

Same here, please shorten this warn.

Btw, in this lib error condition for key is -1, so maybe this
should also be cheked ?

> +		return;
> +
> +	if (intel_register_access_needs_wake(mmio_data))
>  		release_forcewake_lock(mmio_data->key);
> +	mmio_data->key = 0;
> +
> +	intel_mmio_unmap_pci_bar(mmio_data);
>  }
>  
>  /**
> -- 
> 2.25.1
>

Please correct desciption of global var igt_global_mmio, there
is one more method for initialize it: intel_mmio_use_pci_bar
as you wrote on irc.

Regards,
Kamil Konieczny
 
