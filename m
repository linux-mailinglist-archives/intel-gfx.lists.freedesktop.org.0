Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aEosMC7PhGk45QMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 18:11:10 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9159FF5B30
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 18:11:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A9A110E931;
	Thu,  5 Feb 2026 17:11:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cY7m1qnY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DCB810E924;
 Thu,  5 Feb 2026 17:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770311465; x=1801847465;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=kj5A83KgRsPFy89PYGdagkR1UR5wPt4kWgOzHrKKgQ4=;
 b=cY7m1qnYn/1xQam0yQ5Eg7bV8V6hJxhFWOtHq1iUlkSzmJDNhFDqyIhb
 skkY3YD/2f/52vTaSrSQyp5l0VN5nk21ZEr1wDoTFM6xxqp+9UfkBow7p
 qO2tqTZv5JCRuuH7+6MGI6vgw2DjB7cNu4dcqYNbAdvciX9wcjXbxwUiR
 gQ7z9CsXHSol5dGIuUVDn270i2OtGgC4pM7MTFZpusdTDJSWKuHhn4g/q
 tLq/6gZMIkeKt3tjz0Yrw7BCoz4FYgWzufOU01AugsSTM0AShjAImch+v
 w74P9TqScfdfg0Uh7lXo21rfodghNGBLCdJecLSdB0TBxaYcjnAyjGQqA Q==;
X-CSE-ConnectionGUID: BC5/NsR3Rvq9FDEuIOjGsQ==
X-CSE-MsgGUID: 3snpkI5bTjWvfVH73EHa/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11692"; a="71506113"
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="71506113"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 09:11:05 -0800
X-CSE-ConnectionGUID: zStnM1kpQf+944EGNaJBnQ==
X-CSE-MsgGUID: lbZmK6GHSFKLE7B8r8V8vw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,275,1763452800"; d="scan'208";a="248195562"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.211.136.201])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 09:11:03 -0800
Date: Thu, 5 Feb 2026 18:10:45 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t v5 6/6] lib/igt_device_scan: Print GPU upstream
 port parent/child relations
Message-ID: <20260205171045.2nsngm5u27ahgyzh@kamilkon-DESK.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
References: <20260205145427.1338534-8-janusz.krzysztofik@linux.intel.com>
 <20260205145427.1338534-14-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260205145427.1338534-14-janusz.krzysztofik@linux.intel.com>
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[kamil.konieczny@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,kamilkon-DESK.igk.intel.com:mid]
X-Rspamd-Queue-Id: 9159FF5B30
X-Rspamd-Action: no action

Hi Janusz,
On 2026-02-05 at 15:51:55 +0100, Janusz Krzysztofik wrote:
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
> v4: Free already allocated numeric codename before replacing (Sebastian),
>   - visually separate bridge specific updates of attributes already
>     populated by find_or_add_igt_device from bridge specific attribute
>     assignments.
> v2: Allocate memory to local attributes of a bridge for safety (Sebastian),
>   - merge with a formerly separate patch "lib/igt_device_scan: Don't print
>     bridge not applicable attributes" (Sebastian),
>   - no need for DEVTYPE_BRIDGE, just skip attributes if NULL.
> 
> Cc: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

LGTM
Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

Regards,
Kamil

> ---
>  lib/igt_device_scan.c | 21 +++++++++++++++++++--
>  1 file changed, 19 insertions(+), 2 deletions(-)
> 
> diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
> index d7ec6c2b96..fc01fc375b 100644
> --- a/lib/igt_device_scan.c
> +++ b/lib/igt_device_scan.c
> @@ -254,6 +254,8 @@ struct igt_device {
>  	char *codename; /* For grouping by codename */
>  	enum dev_type dev_type; /* For grouping by integrated/discrete */
>  
> +	char *pci_gpu; /* Filled for upstream bridge ports */
> +
>  	struct igt_list_head link;
>  };
>  
> @@ -1068,6 +1070,12 @@ static void update_or_add_parent(struct udev *udev,
>  
>  	/* override DEVTYPE_INTEGRATED so link attributes won't be omitted */
>  	bridge_idev->dev_type = DEVTYPE_ALL;
> +	/* free numeric codename before overwriting with GPU codename */
> +	free(bridge_idev->codename);
> +	bridge_idev->codename = strdup(parent_idev->codename);
> +
> +	bridge_idev->pci_gpu = strdup(parent_idev->pci_slot_name);
> +	parent_idev->parent = bridge_idev;
>  }
>  
>  static struct igt_device *duplicate_device(struct igt_device *dev) {
> @@ -1239,6 +1247,7 @@ static void igt_device_free(struct igt_device *dev)
>  	free(dev->device);
>  	free(dev->driver);
>  	free(dev->pci_slot_name);
> +	free(dev->pci_gpu);
>  	igt_map_destroy(dev->attrs_map, free_key_value);
>  	igt_map_destroy(dev->props_map, free_key_value);
>  }
> @@ -1335,7 +1344,11 @@ igt_devs_print_simple(struct igt_list_head *view,
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
> @@ -1488,8 +1501,12 @@ igt_devs_print_detail(struct igt_list_head *view,
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
> -- 
> 2.52.0
> 
