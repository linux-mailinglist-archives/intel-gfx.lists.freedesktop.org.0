Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2576D8FBD69
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2024 22:35:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E83610E5ED;
	Tue,  4 Jun 2024 20:35:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M7TdoAve";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A834F10E5ED
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717533352; x=1749069352;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=PqpInd3PCIvBXqz0kSdrZEnGLyI1+JqYRnpHDigr7eg=;
 b=M7TdoAve5lC8gYtTVmnpCQOSKuqATo4RLVsRReRCrwoJgr2lTHpOSBFK
 Tmprt4o0RMWcueun7uDwjnRwdnSmrQLVFKXRMlYKmJU+tjeYeTODGWd24
 R6XbP1iuUEeAIq6VPFP+RAGLXBiaXofXAyc2CaKGspNiRiiKU+I6StwO6
 IY1Uf2y0uXDHghlU6T2GGJD4AlGsLyUarIMA2TEIj7ZdMWoOrtK20/oAy
 x/CAvn3PdmHxxJmxfyYaKQNuEc2Kbdjx3loCpyqngo4dCYoDEAKlbWPzN
 RaRuLRD3oWpo2q5CAs5RV2WfU4XrQpoBtR/rRctzKjfwkFGnusLTMldO0 w==;
X-CSE-ConnectionGUID: 1mQ0hX9CR2mKDS1tJDDiIg==
X-CSE-MsgGUID: 6pYYON06QyatCbe4XDzuDw==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="31603346"
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="31603346"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 13:35:51 -0700
X-CSE-ConnectionGUID: fYA5teWNRI6bvZsbLGgyrg==
X-CSE-MsgGUID: +ffrq1ZuQdWR/p5LKao6pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,214,1712646000"; d="scan'208";a="42308437"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 13:35:52 -0700
Date: Tue, 4 Jun 2024 23:35:58 +0300
From: Imre Deak <imre.deak@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [core-for-CI PATCH] thunderbolt: Add Kconfig option to disable
 PCIe tunneling
Message-ID: <Zl96rkz2r6mE7Jk2@ideak-desk.fi.intel.com>
References: <20240604161618.1958674-1-imre.deak@intel.com>
 <Zl9cqvABnQKcIGs8@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zl9cqvABnQKcIGs8@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 04, 2024 at 02:27:54PM -0400, Rodrigo Vivi wrote:
> On Tue, Jun 04, 2024 at 07:16:18PM +0300, Imre Deak wrote:
> > From: Mika Westerberg <mika.westerberg@linux.intel.com>
> > 
> > In typical cases PCIe tunneling is needed to make the devices fully
> > usable for the host system. However, it poses a security issue because
> > they can also use DMA to access the host memory. We already have two
> > ways of preventing this, one an IOMMU that is enabled on recent systems
> > by default and the second is the "authorized" attribute under each
> > connected device that needs to be written by userspace before a PCIe
> > tunnel is created. This option adds one more by adding a Kconfig option,
> > which is enabled by default, that can be used to make kernel binaries
> > where PCIe tunneling is completely disabled.
> > 
> > Signed-off-by: Mika Westerberg <mika.westerberg@linux.intel.com>
> > References: https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_134314v1/bat-mtlp-9/boot0.txt
> > References: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11261
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> > 
> > The issue at the first References: link is a known false-positive lockdep issue
> > in the TBT/PCIe subsystem. After discussion with the TBT maintainer (Mika
> > Westerberg), the easiest solution for the iGFX CI is to disable the PCIe TBT
> > tunneling functionality which leads to the issue, as
> > 
> > - It's not an important feature iGFX CI needs to test.
> > - There is no available solution (patch) yet to solve the lockdep issue.
> > 
> > The feature could be re-enabled if needed once the lockdep issue is
> > solved upstream. This patch will be merged upstream, until that sending it
> > for core-for-CI.
> 
> Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, this is merged now.

> >  drivers/thunderbolt/Kconfig  | 18 ++++++++++++++++++
> >  drivers/thunderbolt/tb.c     |  2 +-
> >  drivers/thunderbolt/tb.h     |  9 +++++++++
> >  drivers/thunderbolt/tunnel.c |  8 ++++----
> >  drivers/thunderbolt/usb4.c   |  2 +-
> >  5 files changed, 33 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/thunderbolt/Kconfig b/drivers/thunderbolt/Kconfig
> > index 448fd2ec8f6e2..facf2e684c022 100644
> > --- a/drivers/thunderbolt/Kconfig
> > +++ b/drivers/thunderbolt/Kconfig
> > @@ -18,6 +18,24 @@ menuconfig USB4
> >  
> >  if USB4
> >  
> > +config USB4_PCIE_TUNNELING
> > +	bool "Allow PCI Express tunneling over USB4 fabric"
> > +	depends on PCI
> > +	default y
> > +	help
> > +	  USB4 and Thunderbolt devices typically include PCIe switch
> > +	  with a number of PCIe endpoints such as USB host controllers,
> > +	  GPUs and network adapters. These are made available to the
> > +	  host system through PCIe tunneling. These can use DMA and
> > +	  therefore have access to the host memory which is typically
> > +	  guarded by an IOMMU. This option allows disabling PCIe
> > +	  tunneling completely.
> > +
> > +	  For devices to be usable it is recommended to say Y here.
> > +
> > +	  Note this only works with systems that use Software Based
> > +	  Connection Manager (this is most USB4 hosts).
> > +
> >  config USB4_DEBUGFS_WRITE
> >  	bool "Enable write by debugfs to configuration spaces (DANGEROUS)"
> >  	help
> > diff --git a/drivers/thunderbolt/tb.c b/drivers/thunderbolt/tb.c
> > index 10e719dd837ce..7d71ff3f82c13 100644
> > --- a/drivers/thunderbolt/tb.c
> > +++ b/drivers/thunderbolt/tb.c
> > @@ -3181,7 +3181,7 @@ struct tb *tb_probe(struct tb_nhi *nhi)
> >  	if (!tb)
> >  		return NULL;
> >  
> > -	if (tb_acpi_may_tunnel_pcie())
> > +	if (tb_may_tunnel_pcie())
> >  		tb->security_level = TB_SECURITY_USER;
> >  	else
> >  		tb->security_level = TB_SECURITY_NOPCIE;
> > diff --git a/drivers/thunderbolt/tb.h b/drivers/thunderbolt/tb.h
> > index 18aae4ccaed59..22fad8a9679ae 100644
> > --- a/drivers/thunderbolt/tb.h
> > +++ b/drivers/thunderbolt/tb.h
> > @@ -1436,6 +1436,15 @@ static inline int tb_acpi_power_on_retimers(struct tb_port *port) { return 0; }
> >  static inline int tb_acpi_power_off_retimers(struct tb_port *port) { return 0; }
> >  #endif
> >  
> > +static inline bool tb_may_tunnel_pcie(void)
> > +{
> > +#ifdef CONFIG_USB4_PCIE_TUNNELING
> > +	return tb_acpi_may_tunnel_pcie();
> > +#else
> > +	return false;
> > +#endif
> > +}
> > +
> >  #ifdef CONFIG_DEBUG_FS
> >  void tb_debugfs_init(void);
> >  void tb_debugfs_exit(void);
> > diff --git a/drivers/thunderbolt/tunnel.c b/drivers/thunderbolt/tunnel.c
> > index 41cf6378ad251..7c8397c135ba9 100644
> > --- a/drivers/thunderbolt/tunnel.c
> > +++ b/drivers/thunderbolt/tunnel.c
> > @@ -101,7 +101,7 @@ static unsigned int tb_available_credits(const struct tb_port *port,
> >  	size_t ndp;
> >  
> >  	usb3 = tb_acpi_may_tunnel_usb3() ? sw->max_usb3_credits : 0;
> > -	pcie = tb_acpi_may_tunnel_pcie() ? sw->max_pcie_credits : 0;
> > +	pcie = tb_may_tunnel_pcie() ? sw->max_pcie_credits : 0;
> >  
> >  	if (tb_acpi_is_xdomain_allowed()) {
> >  		spare = min_not_zero(sw->max_dma_credits, dma_credits);
> > @@ -426,7 +426,7 @@ bool tb_tunnel_reserved_pci(struct tb_port *port, int *reserved_up,
> >  	if (WARN_ON_ONCE(!port->remote))
> >  		return false;
> >  
> > -	if (!tb_acpi_may_tunnel_pcie())
> > +	if (!tb_may_tunnel_pcie())
> >  		return false;
> >  
> >  	if (tb_port_get_link_generation(port) < 4)
> > @@ -1510,7 +1510,7 @@ static unsigned int tb_dma_available_credits(const struct tb_port *port)
> >  	int credits;
> >  
> >  	credits = tb_available_credits(port, NULL);
> > -	if (tb_acpi_may_tunnel_pcie())
> > +	if (tb_may_tunnel_pcie())
> >  		credits -= sw->max_pcie_credits;
> >  	credits -= port->dma_credits;
> >  
> > @@ -1821,7 +1821,7 @@ static int tb_usb3_consumed_bandwidth(struct tb_tunnel *tunnel,
> >  		int *consumed_up, int *consumed_down)
> >  {
> >  	struct tb_port *port = tb_upstream_port(tunnel->dst_port->sw);
> > -	int pcie_weight = tb_acpi_may_tunnel_pcie() ? TB_PCI_WEIGHT : 0;
> > +	int pcie_weight = tb_may_tunnel_pcie() ? TB_PCI_WEIGHT : 0;
> >  
> >  	/*
> >  	 * PCIe tunneling, if enabled, affects the USB3 bandwidth so
> > diff --git a/drivers/thunderbolt/usb4.c b/drivers/thunderbolt/usb4.c
> > index de480bf2a53de..cacc7bec19eb4 100644
> > --- a/drivers/thunderbolt/usb4.c
> > +++ b/drivers/thunderbolt/usb4.c
> > @@ -282,7 +282,7 @@ int usb4_switch_setup(struct tb_switch *sw)
> >  	 * Only enable PCIe tunneling if the parent router supports it
> >  	 * and it is not disabled.
> >  	 */
> > -	if (tb_acpi_may_tunnel_pcie() &&
> > +	if (tb_may_tunnel_pcie() &&
> >  	    tb_switch_find_port(parent, TB_TYPE_PCIE_DOWN)) {
> >  		val |= ROUTER_CS_5_PTO;
> >  		/*
> > -- 
> > 2.43.3
> > 
