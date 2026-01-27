Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YPsRFd2ueGlasAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 13:26:05 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ACB49450C
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 13:26:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 406CE10E558;
	Tue, 27 Jan 2026 12:26:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ap5qTQZL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47AD910E558;
 Tue, 27 Jan 2026 12:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769516761; x=1801052761;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IE3E63QpZdANrIu5sQSUTEhTYtx4pXSwyEWo+5YIitI=;
 b=ap5qTQZLBSl0xcJOpnFOM1smuAAMTyxMf6inNSutyoUQNX+yskkKmOXo
 8GXl8gmcXjGt4y2TNjzYRgYnWxsNiGJxbdBSpuX1cndA9rmKV953bRnwQ
 +zAkx/ESxaOlN5NWlSt2QUblk5VlAK/lJxnyzfBmBBN6kmTYtuhQedX1e
 43vurCzuYF+loBXpBz9Fhr7tPtrFsT61SynDvhtA3ClS2VlReozQupIlZ
 RKWUi69ZL/N2ssoozTeKnQAMrNEMa/gLPJWS7r8c/+IxyC8xbgu5UdnrI
 Eo/0r3bqSWGKwPdsqNcExX2TGdV9F21nIx/9Q4w/X/BzmTPgqOAjL6YMd A==;
X-CSE-ConnectionGUID: t55tdbYSTZOiHdvElr6JXA==
X-CSE-MsgGUID: fRUvtfv4S5+kANl5A0rXzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="96174408"
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; d="scan'208";a="96174408"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 04:26:01 -0800
X-CSE-ConnectionGUID: k6UL1jJFTSKKFmTTCJBR7g==
X-CSE-MsgGUID: ZJpKC9paTHmMVS0dopiz+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; d="scan'208";a="212076386"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.153])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 04:25:59 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t v2 3/6] lib/igt_device_scan: Include PCIe bridge
 upstream port if available
Date: Tue, 27 Jan 2026 13:25:56 +0100
Message-ID: <13935075.dW097sEU6C@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20260127100123.114516-11-janusz.krzysztofik@linux.intel.com>
References: <20260127100123.114516-8-janusz.krzysztofik@linux.intel.com>
 <20260127100123.114516-11-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	CTE_CASE(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,jkrzyszt-mobl2.ger.corp.intel.com:mid]
X-Rspamd-Queue-Id: 8ACB49450C
X-Rspamd-Action: no action

Hi,

Commenting myself, sorry.

On Tuesday, 27 January 2026 10:54:20 CET Janusz Krzysztofik wrote:
> Users of Intel discrete graphics adapters are confused with fake
> information on PCIe link bandwidth (speed and size) of their GPU devices
> reported by sysfs and userspace tools, including our lsgpu utility.  In
> order for the lsgpu to show correct link bandwidth information, we need to
> identify an upstream port of a PCIe bridge that sits on the GPU card and
> get that information from that port.
> 
> Since the tool uses our udev based igt_device_scan library for identifying
> GPU devices and printing their properties and attributes, modifications
> that we need apply to that library.
> 
> When scanning for DRM devices and their PCI parents, the lsgpu utility
> requests collection of all their attributes.  When running in this mode,
> also try to collect information about upstream ports of PCIe bridges of
> discrete GPU devices.  Once collected, the lsgpu utility will show that
> information automatically while listing the devices.
> 
> While IGT tests are using pciaccess library for processing PCI devices,
> that library requires careful handling in order to avoid collisions among
> multiple processes or threads potentially using it.  That protection is
> implemented in igt_device with help of IGT exit handlers. That requires
> linking with full igt_core library code, while the lsgpu tool now depends
> neither on igt_device nor on igt_core.  To keep that independence,
> implement the new code around libpci.  With that approach, refactoring of
> IGT use of pciaccess is avoided.
> 
> v2: Drop unclear GET_REG_MASK macro (Sebastian),
>   - reuse no longer needed variable containing PCI_HEADER_TYPE for storing
>     PCI_EXP_FLAGS_TYPE,
>   - maintain a single instance of struct pci_access throughout processing
>     of the whole udev device list (Sebastian).
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10753
> Cc: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  lib/igt_device_scan.c | 80 +++++++++++++++++++++++++++++++++++++++++--
>  lib/meson.build       |  2 ++
>  meson.build           |  1 +
>  3 files changed, 80 insertions(+), 3 deletions(-)
> 
> diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
> index 6a907a4ebb..ec6cc38953 100644
> --- a/lib/igt_device_scan.c
> +++ b/lib/igt_device_scan.c
> @@ -36,6 +36,7 @@
>  #ifdef __linux__
>  #include <linux/limits.h>
>  #endif
> +#include <pci/pci.h>
>  #include <sys/stat.h>
>  #include <sys/time.h>
>  #include <sys/types.h>
> @@ -913,6 +914,26 @@ static struct igt_device *igt_device_from_syspath(const char *syspath)
>  	return NULL;
>  }
>  
> +static bool is_pcie_upstream_bridge(struct pci_dev *dev)
> +{
> +	struct pci_cap *pcie;
> +	uint8_t type;
> +
> +	type = pci_read_byte(dev, PCI_HEADER_TYPE) & 0x7f;
> +	if (type != PCI_HEADER_TYPE_BRIDGE)
> +		return false;
> +
> +	pcie = pci_find_cap(dev, PCI_CAP_ID_EXP, PCI_CAP_NORMAL);
> +	if (!pcie)
> +		return false;
> +
> +	type = pci_read_word(dev, pcie->addr + PCI_EXP_FLAGS);
> +	type &= PCI_EXP_FLAGS_TYPE;
> +	type >>= ffs(PCI_EXP_FLAGS_TYPE);

That shoud read: type >== ffs(PCI_EXP_FLAGS_TYPE) - 1;
(ffs() counts bit positions starting from 1, not 0).
I missed to apply that last minute correction before sending, sorry.

Thanks,
Janusz

> +
> +	return type == PCI_EXP_TYPE_UPSTREAM;
> +}
> +
>  #define RETRIES_GET_PARENT 5
>  
>  static struct igt_device *find_or_add_igt_device(struct udev *udev,
> @@ -952,18 +973,52 @@ static struct igt_device *find_or_add_igt_device(struct udev *udev,
>  	return idev;
>  }
>  
> +static struct udev_device *get_pcie_upstream_bridge(struct udev *udev,
> +						    struct udev_device *dev,
> +						    struct pci_access *pacc)
> +{
> +	igt_assert(pacc);
> +
> +	for (dev = udev_device_get_parent(dev); dev; dev = udev_device_get_parent(dev)) {
> +		struct pci_filter filter;
> +		struct pci_dev *pci_dev;
> +		const char *slot;
> +
> +		slot = udev_device_get_property_value(dev, "PCI_SLOT_NAME");
> +		if (igt_debug_on(!slot))
> +			continue;
> +
> +		pci_filter_init(pacc, &filter);
> +		if (igt_debug_on(pci_filter_parse_slot(&filter, (char *)slot)))
> +			continue;
> +
> +		pci_dev = pci_get_dev(pacc, filter.domain, filter.bus, filter.slot, filter.func);
> +		if (igt_debug_on(!pci_dev))
> +			continue;
> +
> +		if (is_pcie_upstream_bridge(pci_dev))
> +			break;
> +	}
> +
> +	return dev;
> +}
> +
>  /*
>   * For each drm igt_device add or update its parent igt_device to the array.
>   * As card/render drm devices mostly have same parent (vkms is an exception)
>   * link to it and update corresponding drm_card / drm_render fields.
> + *
> + * If collecting all attributes and the parent is a discrete GPU then also
> + * add or update its bridge's upstream port.
>   */
>  static void update_or_add_parent(struct udev *udev,
>  				 struct udev_device *dev,
>  				 struct igt_device *idev,
> +				 struct pci_access *pacc,
>  				 bool limit_attrs)
>  {
> -	struct udev_device *parent_dev;
> -	struct igt_device *parent_idev;
> +	struct igt_device *parent_idev, *bridge_idev;
> +	struct udev_device *parent_dev, *bridge_dev;
>  	const char *devname;
>  
>  	/*
> @@ -983,6 +1038,16 @@ static void update_or_add_parent(struct udev *udev,
>  		parent_idev->drm_render = strdup(devname);
>  
>  	idev->parent = parent_idev;
> +
> +	if (!pacc || parent_idev->dev_type != DEVTYPE_DISCRETE)
> +		return;
> +
> +	bridge_dev = get_pcie_upstream_bridge(udev, parent_dev, pacc);
> +	if (!bridge_dev)
> +		return;
> +
> +	bridge_idev = find_or_add_igt_device(udev, bridge_dev, limit_attrs);
> +	igt_assert(bridge_idev);
>  }
>  
>  static struct igt_device *duplicate_device(struct igt_device *dev) {
> @@ -1072,6 +1137,7 @@ static void scan_drm_devices(bool limit_attrs)
>  	struct udev *udev;
>  	struct udev_enumerate *enumerate;
>  	struct udev_list_entry *devices, *dev_list_entry;
> +	struct pci_access *pacc = NULL;
>  	struct igt_device *dev;
>  	int ret;
>  
> @@ -1095,6 +1161,12 @@ static void scan_drm_devices(bool limit_attrs)
>  	if (!devices)
>  		return;
>  
> +	/* prepare for upstream bridge port scan if called from lsgpu */
> +	if (!limit_attrs) {
> +		pacc = pci_alloc();
> +		pci_init(pacc);
> +	}
> +
>  	udev_list_entry_foreach(dev_list_entry, devices) {
>  		const char *path;
>  		struct udev_device *udev_dev;
> @@ -1104,10 +1176,12 @@ static void scan_drm_devices(bool limit_attrs)
>  		udev_dev = udev_device_new_from_syspath(udev, path);
>  		idev = igt_device_new_from_udev(udev_dev, limit_attrs);
>  		igt_list_add_tail(&idev->link, &igt_devs.all);
> -		update_or_add_parent(udev, udev_dev, idev, limit_attrs);
> +		update_or_add_parent(udev, udev_dev, idev, pacc, limit_attrs);
>  
>  		udev_device_unref(udev_dev);
>  	}
> +	if (pacc)
> +		pci_cleanup(pacc);
>  	udev_enumerate_unref(enumerate);
>  	udev_unref(udev);
>  
> diff --git a/lib/meson.build b/lib/meson.build
> index 1a569ba52a..d10e1405ac 100644
> --- a/lib/meson.build
> +++ b/lib/meson.build
> @@ -139,6 +139,7 @@ lib_deps = [
>  	libdrm,
>  	libdw,
>  	libkmod,
> +	libpci,
>  	libudev,
>  	math,
>  	pciaccess,
> @@ -332,6 +333,7 @@ lib_igt_perf = declare_dependency(link_with : lib_igt_perf_build,
>  
>  scan_dep = [
>  	glib,
> +	libpci,
>  	libudev,
>  ]
>  
> diff --git a/meson.build b/meson.build
> index 4b2496c016..57849648a3 100644
> --- a/meson.build
> +++ b/meson.build
> @@ -162,6 +162,7 @@ endif
>  build_info += 'Valgrind annotations: @0@'.format(valgrind.found())
>  
>  cairo = dependency('cairo', version : '>1.12.0', required : true)
> +libpci = dependency('libpci', required : true)
>  libudev = dependency('libudev', required : true)
>  glib = dependency('glib-2.0', required : true)
>  
> 




