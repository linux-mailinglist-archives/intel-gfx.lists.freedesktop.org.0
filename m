Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OFTZITqpb2kZEwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jan 2026 17:11:38 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CA74725C
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jan 2026 17:11:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55F7110E626;
	Tue, 20 Jan 2026 16:11:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WH9FE9yU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86EC210E626
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jan 2026 16:11:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768925495; x=1800461495;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=wItH6JYEUrIaQ9/hhcz+aBkOKBsbuMrGwki6nH5xNhY=;
 b=WH9FE9yU06RFNamkQ03wTvMnrptLK/q6+KUDEQiYRynKoPAVWpcVzGcp
 uGsfvJBTAm3Rzmg1TUhcgOB6chEiU9t+1RJX5qt/nGvSY4lMxCchPcW6j
 nb2RYAPyh2O8dLtw9b3l46CL7B9XnfC4PsK/p6P1V5MHuz95T79Oj4cMz
 FUILCpc5mH2RwzaMjS4kpDcl9uAMmM09aFgGu7/WQR/LUvXC/s0Quhs6B
 1gLHYm9G2PLE7xWaGIrT942cNjcjpJCBTYVQSsr/2hWA/JpmC1pgiAMd9
 DcECAkQ+wErOtSMSlRUslbzBMlHaG5mkF7fgAeJi2EK3zIGFocQ6ZOE7g g==;
X-CSE-ConnectionGUID: /8xzVf8hQe2mjcEh00uITw==
X-CSE-MsgGUID: IfWLmZQGQC2jWIrgDdG/Uw==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="70042872"
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="70042872"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 08:11:35 -0800
X-CSE-ConnectionGUID: dPJD5DX4RQ+p0TvdjLB/ig==
X-CSE-MsgGUID: TfVVNKOPQ+OGan7RNN+kgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="206199455"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 08:11:32 -0800
Date: Tue, 20 Jan 2026 18:11:28 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jia Yao <jia.yao@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Alex Zuo <alex.zuo@intel.com>,
 Shuicheng Lin <shuicheng.lin@intel.com>,
 Askar Safin <safinaskar@gmail.com>, Pingfan Liu <piliu@redhat.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH v3] drm/i915: Clearing the Memory Space Enable bit when
 disabling i915
Message-ID: <aW-pMDuVDR_uIAQx@intel.com>
References: <20251007180634.912006-1-jia.yao@intel.com>
 <20260120044203.2436044-1-jia.yao@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260120044203.2436044-1-jia.yao@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [0.28 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	R_MIXED_CHARSET(0.59)[subject];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,intel.com,gmail.com,redhat.com,linux.intel.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jia.yao@intel.com,m:alex.zuo@intel.com,m:shuicheng.lin@intel.com,m:safinaskar@gmail.com,m:piliu@redhat.com,m:chris.p.wilson@linux.intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: E3CA74725C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Jan 20, 2026 at 04:42:03AM +0000, Jia Yao wrote:
> In a kexec reboot scenario, the GPU's Global Graphics Translation Table
> (GGTT) retains its previous state after the kernel is reloaded, until i915
> reinitializes the GGTT.
> 
> The simple-framebuffer driver is initialized before i915 and accesses the
> PCIe memory space (GPU aperture) through outdated GGTT entries. This leads
> to invalid physical memory accesses, causing GPF or data corruption.
> 
> To prevent such issues, the Memory Space Enable (MSE) bit in the PCI Command
> Register is cleared during i915_driver_shutdown. This disables all PCIe
> memory space access (including MMIO and aperture) at the hardware level.
> After the kernel is reloaded, access to the PCIe memory space will be
> forbidden until i915 is re-initialized.

Still looks like a hack. I think the correct fix would involve
preventing the kexec'd kernel from initializing the fb driver that
is doing the invalid memory accesses.

> 
> Since disabling PCIe memory space affects all MMIO operations, PXP shutdown
> needs to be completed before this point. Calls intel_pxp_fini() before
> disabling memory space to ensure PXP cleanup can still access MMIO registers.
> 
> v2:
>   - follow brace style
> 
> v3:
>   - revise description
> 
> Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14598
> Cc: Alex Zuo <alex.zuo@intel.com>
> Cc: Shuicheng Lin <shuicheng.lin@intel.com>
> Cc: Askar Safin <safinaskar@gmail.com>
> Cc: Pingfan Liu <piliu@redhat.com>
> Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Jia Yao <jia.yao@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c | 35 +++++++++++++++++++++++++++---
>  1 file changed, 32 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index b46cb54ef5dc..766f85726b67 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -118,6 +118,33 @@
>  
>  static const struct drm_driver i915_drm_driver;
>  
> +static int i915_enable_device(struct pci_dev *pdev)
> +{
> +	u32 cmd;
> +	int ret;
> +
> +	ret = pci_enable_device(pdev);
> +	if (ret)
> +		return ret;
> +
> +	pci_read_config_dword(pdev, PCI_COMMAND, &cmd);
> +	if (!(cmd & PCI_COMMAND_MEMORY))
> +		pci_write_config_dword(pdev, PCI_COMMAND, cmd | PCI_COMMAND_MEMORY);
> +
> +	return 0;
> +}
> +
> +static void i915_disable_device(struct pci_dev *pdev)
> +{
> +	u32 cmd;
> +
> +	pci_read_config_dword(pdev, PCI_COMMAND, &cmd);
> +	if (cmd & PCI_COMMAND_MEMORY)
> +		pci_write_config_dword(pdev, PCI_COMMAND, cmd & ~PCI_COMMAND_MEMORY);
> +
> +	pci_disable_device(pdev);
> +}
> +
>  static int i915_workqueues_init(struct drm_i915_private *dev_priv)
>  {
>  	/*
> @@ -788,7 +815,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	struct intel_display *display;
>  	int ret;
>  
> -	ret = pci_enable_device(pdev);
> +	ret = i915_enable_device(pdev);
>  	if (ret) {
>  		pr_err("Failed to enable graphics device: %pe\n", ERR_PTR(ret));
>  		return ret;
> @@ -796,7 +823,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  
>  	i915 = i915_driver_create(pdev, ent);
>  	if (IS_ERR(i915)) {
> -		pci_disable_device(pdev);
> +		i915_disable_device(pdev);
>  		return PTR_ERR(i915);
>  	}
>  
> @@ -885,7 +912,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
>  	i915_driver_late_release(i915);
>  out_pci_disable:
> -	pci_disable_device(pdev);
> +	i915_disable_device(pdev);
>  	i915_probe_error(i915, "Device initialization failed (%d)\n", ret);
>  	return ret;
>  }
> @@ -1003,6 +1030,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
>  
>  	intel_dmc_suspend(display);
>  
> +	intel_pxp_fini(i915);
>  	i915_gem_suspend(i915);
>  
>  	/*
> @@ -1020,6 +1048,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
>  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
>  
>  	intel_runtime_pm_driver_last_release(&i915->runtime_pm);
> +	i915_disable_device(to_pci_dev(i915->drm.dev));
>  }
>  
>  static bool suspend_to_idle(struct drm_i915_private *dev_priv)
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
