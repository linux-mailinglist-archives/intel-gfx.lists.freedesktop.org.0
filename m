Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLl5KIfqcGk+awAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 16:02:31 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B455858E16
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jan 2026 16:02:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C37A10E80E;
	Wed, 21 Jan 2026 15:02:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FFfBXFGz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44F8210E835
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jan 2026 15:02:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769007748; x=1800543748;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ihFRcFNxGdqLwVUSXMPndVWDnf3Nj3bKvLKhRcLLQSI=;
 b=FFfBXFGzSCvuLHAYkHv/aRBBuIsP9Jlex67et7N9Cix9akLf6gYgQvfv
 f7dDcph2DbEIqZ0FfyMj3+1pcjg9ihVaP4Wloezgz09d2r/QW8DZdWfGv
 r7XwO03TWvjx0u45U76gjbLHN+DDmn9n3zvKsq7LAvZBgKEYYkSBycHOm
 6hjqHnFywENxPHOvCpuhTW96pCAZSVi00l9qqgwj/ojM0obzPIYXRtq1E
 UfMdFcyr9+FC47YuagZhqSY6TWw/6mIVTti264wSI7CdMg4yRL3Rb9nRv
 WGELHO++m4pjPXTId8OYfqYpUV9tjV0dn40cvUatZ607FaRx8MSnzDgaB A==;
X-CSE-ConnectionGUID: JTN+o7NmQp6DEfcoW9UXmg==
X-CSE-MsgGUID: yl/cB2HiSn+UhhR9xmqlZg==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="57798225"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="57798225"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 07:02:27 -0800
X-CSE-ConnectionGUID: XgIyJcTLQXy1pV2nZOB/Dw==
X-CSE-MsgGUID: WSHi/6opSeGcyNyd3MK8sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="211474857"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.164])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 07:02:25 -0800
Date: Wed, 21 Jan 2026 17:02:22 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Yao, Jia" <jia.yao@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Zuo, Alex" <alex.zuo@intel.com>,
 "Lin, Shuicheng" <shuicheng.lin@intel.com>,
 Askar Safin <safinaskar@gmail.com>, Pingfan Liu <piliu@redhat.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH v3] drm/i915: Clearing the Memory Space Enable bit when
 disabling i915
Message-ID: <aXDqfuhzPCdicmG5@intel.com>
References: <20251007180634.912006-1-jia.yao@intel.com>
 <20260120044203.2436044-1-jia.yao@intel.com>
 <aW-pMDuVDR_uIAQx@intel.com>
 <PH8PR11MB8040B7F61FD55DB8D16EBBCBF496A@PH8PR11MB8040.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <PH8PR11MB8040B7F61FD55DB8D16EBBCBF496A@PH8PR11MB8040.namprd11.prod.outlook.com>
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,intel.com,gmail.com,redhat.com,linux.intel.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jia.yao@intel.com,m:alex.zuo@intel.com,m:shuicheng.lin@intel.com,m:safinaskar@gmail.com,m:piliu@redhat.com,m:chris.p.wilson@linux.intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,gitlab.freedesktop.org:url,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: B455858E16
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Jan 21, 2026 at 07:19:03AM +0000, Yao, Jia wrote:
> The problem is that the fb driver issues is doing valid access, but because of an incorrect GGTT translation  (Once GGTT has been initialized by i915,  it can't be restored to hardware initial status without reboot),

It will never be restored to that state.

> these accesses are mapped to incorrect addresses.
> As for blocking fb driver,  Some Linux distributions compile CONFIG_DRM_SIMPLEDRM=y into the kernel as a built‑in option rather than a loadable module.
> Considering these factors, this remains the only feasible approach.

Whatever information is passed to the kexec'd kernel to inform it
about the firmware framebuffer should be zapped so that it knows
not to do anything anything with it.

> 
> -----Original Message-----
> From: Ville Syrjälä <ville.syrjala@linux.intel.com> 
> Sent: Tuesday, January 20, 2026 8:11 AM
> To: Yao, Jia <jia.yao@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Zuo, Alex <alex.zuo@intel.com>; Lin, Shuicheng <shuicheng.lin@intel.com>; Askar Safin <safinaskar@gmail.com>; Pingfan Liu <piliu@redhat.com>; Chris Wilson <chris.p.wilson@linux.intel.com>
> Subject: Re: [PATCH v3] drm/i915: Clearing the Memory Space Enable bit when disabling i915
> 
> On Tue, Jan 20, 2026 at 04:42:03AM +0000, Jia Yao wrote:
> > In a kexec reboot scenario, the GPU's Global Graphics Translation 
> > Table
> > (GGTT) retains its previous state after the kernel is reloaded, until 
> > i915 reinitializes the GGTT.
> > 
> > The simple-framebuffer driver is initialized before i915 and accesses 
> > the PCIe memory space (GPU aperture) through outdated GGTT entries. 
> > This leads to invalid physical memory accesses, causing GPF or data corruption.
> > 
> > To prevent such issues, the Memory Space Enable (MSE) bit in the PCI 
> > Command Register is cleared during i915_driver_shutdown. This disables 
> > all PCIe memory space access (including MMIO and aperture) at the hardware level.
> > After the kernel is reloaded, access to the PCIe memory space will be 
> > forbidden until i915 is re-initialized.
> 
> Still looks like a hack. I think the correct fix would involve preventing the kexec'd kernel from initializing the fb driver that is doing the invalid memory accesses.
> 
> > 
> > Since disabling PCIe memory space affects all MMIO operations, PXP 
> > shutdown needs to be completed before this point. Calls 
> > intel_pxp_fini() before disabling memory space to ensure PXP cleanup can still access MMIO registers.
> > 
> > v2:
> >   - follow brace style
> > 
> > v3:
> >   - revise description
> > 
> > Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14598
> > Cc: Alex Zuo <alex.zuo@intel.com>
> > Cc: Shuicheng Lin <shuicheng.lin@intel.com>
> > Cc: Askar Safin <safinaskar@gmail.com>
> > Cc: Pingfan Liu <piliu@redhat.com>
> > Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> > Signed-off-by: Jia Yao <jia.yao@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_driver.c | 35 
> > +++++++++++++++++++++++++++---
> >  1 file changed, 32 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c 
> > b/drivers/gpu/drm/i915/i915_driver.c
> > index b46cb54ef5dc..766f85726b67 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -118,6 +118,33 @@
> >  
> >  static const struct drm_driver i915_drm_driver;
> >  
> > +static int i915_enable_device(struct pci_dev *pdev) {
> > +	u32 cmd;
> > +	int ret;
> > +
> > +	ret = pci_enable_device(pdev);
> > +	if (ret)
> > +		return ret;
> > +
> > +	pci_read_config_dword(pdev, PCI_COMMAND, &cmd);
> > +	if (!(cmd & PCI_COMMAND_MEMORY))
> > +		pci_write_config_dword(pdev, PCI_COMMAND, cmd | 
> > +PCI_COMMAND_MEMORY);
> > +
> > +	return 0;
> > +}
> > +
> > +static void i915_disable_device(struct pci_dev *pdev) {
> > +	u32 cmd;
> > +
> > +	pci_read_config_dword(pdev, PCI_COMMAND, &cmd);
> > +	if (cmd & PCI_COMMAND_MEMORY)
> > +		pci_write_config_dword(pdev, PCI_COMMAND, cmd & 
> > +~PCI_COMMAND_MEMORY);
> > +
> > +	pci_disable_device(pdev);
> > +}
> > +
> >  static int i915_workqueues_init(struct drm_i915_private *dev_priv)  {
> >  	/*
> > @@ -788,7 +815,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> >  	struct intel_display *display;
> >  	int ret;
> >  
> > -	ret = pci_enable_device(pdev);
> > +	ret = i915_enable_device(pdev);
> >  	if (ret) {
> >  		pr_err("Failed to enable graphics device: %pe\n", ERR_PTR(ret));
> >  		return ret;
> > @@ -796,7 +823,7 @@ int i915_driver_probe(struct pci_dev *pdev, const 
> > struct pci_device_id *ent)
> >  
> >  	i915 = i915_driver_create(pdev, ent);
> >  	if (IS_ERR(i915)) {
> > -		pci_disable_device(pdev);
> > +		i915_disable_device(pdev);
> >  		return PTR_ERR(i915);
> >  	}
> >  
> > @@ -885,7 +912,7 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> >  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
> >  	i915_driver_late_release(i915);
> >  out_pci_disable:
> > -	pci_disable_device(pdev);
> > +	i915_disable_device(pdev);
> >  	i915_probe_error(i915, "Device initialization failed (%d)\n", ret);
> >  	return ret;
> >  }
> > @@ -1003,6 +1030,7 @@ void i915_driver_shutdown(struct 
> > drm_i915_private *i915)
> >  
> >  	intel_dmc_suspend(display);
> >  
> > +	intel_pxp_fini(i915);
> >  	i915_gem_suspend(i915);
> >  
> >  	/*
> > @@ -1020,6 +1048,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
> >  	enable_rpm_wakeref_asserts(&i915->runtime_pm);
> >  
> >  	intel_runtime_pm_driver_last_release(&i915->runtime_pm);
> > +	i915_disable_device(to_pci_dev(i915->drm.dev));
> >  }
> >  
> >  static bool suspend_to_idle(struct drm_i915_private *dev_priv)
> > --
> > 2.34.1
> 
> --
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
