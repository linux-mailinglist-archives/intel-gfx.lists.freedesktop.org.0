Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iPGMISzeeWnI0QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 11:00:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B78EA9F276
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 11:00:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 375D210E649;
	Wed, 28 Jan 2026 10:00:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cJ2BHvz7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E70610E631;
 Wed, 28 Jan 2026 10:00:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769594409; x=1801130409;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SEE7O1/IpRN98KcKKX+2aoRVpE1qOi1AzsxCFz6jfrI=;
 b=cJ2BHvz7jvDANOJtk09/G0y6HnmgURrJY3q13VNA1cIyVFkqT1tQid69
 qhLKWM4B7TTWSdpHV3ci0QVCDAZ9Ud/Xj6nCIU9FimDwgwEP94eFvEvfK
 OlP/EIvh/ugBOkNkK6kIznQhP9kkMuM4dsg4KKBZ236TWcWQHdL67D+sN
 PMUCwcvsS1o3dKA7T3Eq7GO5Wv7AApZX4H7appPrsBJO+VJMmILdpCFPU
 /2vlpAH34sa/slpouCp+FtdVNPr3kyZKDEFWyMfPgnypt2LNuirtJXLTh
 NXabqr6MeyiGsUAG9hExqnYhtNZNcJ2qSv1AlpJ05VvznUsBT7odTaKpY Q==;
X-CSE-ConnectionGUID: ix/19QarTsKsGEXZ1S+WjQ==
X-CSE-MsgGUID: fflPWfGYTrKjfJ5YGaxXog==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="74661201"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="74661201"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 02:00:09 -0800
X-CSE-ConnectionGUID: 9e+vvnucQUG1PNMZjWX7mw==
X-CSE-MsgGUID: HYPuKXcKSXGDEaNCGxIuhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="245838767"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.210])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 02:00:06 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t v2 6/6] lib/igt_device_scan: Print GPU upstream port
 parent/child relations
Date: Wed, 28 Jan 2026 11:00:04 +0100
Message-ID: <6887454.4vTCxPXJkl@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20260127100123.114516-14-janusz.krzysztofik@linux.intel.com>
References: <20260127100123.114516-8-janusz.krzysztofik@linux.intel.com>
 <20260127100123.114516-14-janusz.krzysztofik@linux.intel.com>
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	CTE_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[janusz.krzysztofik@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim]
X-Rspamd-Queue-Id: B78EA9F276
X-Rspamd-Action: no action

Hi,

Commenting myself again, sorry.

On Tuesday, 27 January 2026 10:54:23 CET Janusz Krzysztofik wrote:
> In a short listing, lsgpu prints a sysfs path of a PCI GPU parent as a
> local attribute of a DRM device.  However, if that's a discrete GPU and
> its associated PCIe upstream bridge port has been identified, no
> information on that bridge is listed among the GPU attributes.  Follow the
> pattern used with DRM devices and also show a PCI slot of the bridge port
> as a local attribute of the discrete GPU device.
> 
> Moreover, in both short and detailed listings, local attributes intended
> for providing device names of GPU associated DRM devices and the GPU
> codename are also printed as attributes of related PCIe upstream bridge
> port, however, the DRM device names are shown as (null), and the codename
> attribute provides raw vendor:device codes of the bridge itself.  Replace
> those with PCI slot and codename of the GPU device.
> 
> v2: Allocate memory to local attributes of a bridge for safety (Sebastian),
>   - merge with a formerly separate patch "lib/igt_device_scan: Don't print
>     bridge not applicable attributes" (Sebastian),
>   - no need for DEVTYPE_BRIDGE, just skip attributes if NULL.

I missed the fact that without setting dev_type of the bridge, by default 
classified as DEVTYPE_INTEGRATED, to e.g. DEVTYPE_BRIDGE, link bandwith 
attributes of the bridge, which all this series is about, are dropped from 
printouts.  In fact, that should be addressed already in patch 3 "lib/
igt_device_scan: Include PCIe bridge upstream port if available".  Let me fix 
it in next iteration of the series.

Thanks,
Janusz


> 
> Cc: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  lib/igt_device_scan.c | 19 +++++++++++++++++--
>  1 file changed, 17 insertions(+), 2 deletions(-)
> 
> diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
> index cdd735e994..4ce64b93fe 100644
> --- a/lib/igt_device_scan.c
> +++ b/lib/igt_device_scan.c
> @@ -249,6 +249,8 @@ struct igt_device {
>  	char *codename; /* For grouping by codename */
>  	enum dev_type dev_type; /* For grouping by integrated/discrete */
>  
> +	char *pci_gpu; /* Filled for upstream bridge ports */
> +
>  	struct igt_list_head link;
>  };
>  
> @@ -1060,6 +1062,10 @@ static void update_or_add_parent(struct udev *udev,
>  
>  	bridge_idev = find_or_add_igt_device(udev, bridge_dev, limit_attrs);
>  	igt_assert(bridge_idev);
> +
> +	bridge_idev->pci_gpu = strdup(parent_idev->pci_slot_name);
> +	bridge_idev->codename = strdup(parent_idev->codename);
> +	parent_idev->parent = bridge_idev;
>  }
>  
>  static struct igt_device *duplicate_device(struct igt_device *dev) {
> @@ -1231,6 +1237,7 @@ static void igt_device_free(struct igt_device *dev)
>  	free(dev->device);
>  	free(dev->driver);
>  	free(dev->pci_slot_name);
> +	free(dev->pci_gpu);
>  	igt_map_destroy(dev->attrs_map, free_key_value);
>  	igt_map_destroy(dev->props_map, free_key_value);
>  }
> @@ -1327,7 +1334,11 @@ igt_devs_print_simple(struct igt_list_head *view,
>  			if (is_pci_subsystem(dev)) {
>  				_pr_simple("vendor", dev->vendor);
>  				_pr_simple("device", dev->device);
> +				if (dev->pci_gpu)
> +					_pr_simple("GPU device", dev->pci_gpu);
>  				_pr_simple("codename", dev->codename);
> +				if (dev->parent && dev->parent->pci_slot_name)
> +					_pr_simple("upstream port", dev->parent->pci_slot_name);
>  			}
>  		}
>  		printf("\n");
> @@ -1480,8 +1491,12 @@ igt_devs_print_detail(struct igt_list_head *view,
>  		printf("========== %s:%s ==========\n",
>  		       dev->subsystem, dev->syspath);
>  		if (!is_drm_subsystem(dev)) {
> -			_print_key_value("card device", dev->drm_card);
> -			_print_key_value("render device", dev->drm_render);
> +			if (dev->drm_card)
> +				_print_key_value("card device", dev->drm_card);
> +			if (dev->drm_render)
> +				_print_key_value("render device", dev->drm_render);
> +			if (dev->pci_gpu)
> +				_print_key_value("GPU device", dev->pci_gpu);
>  			_print_key_value("codename", dev->codename);
>  		}
>  
> 




