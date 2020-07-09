Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FCF521A3B2
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 17:27:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 886FD6E903;
	Thu,  9 Jul 2020 15:27:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CAD06E903
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 15:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594308457;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/yW3Ujipt1cXpCvwHNc8RTMeCj5iXxAimZbTAAqxPOo=;
 b=CoguJUmiB5rV+2LjvGyKZCQwJjWHfEGtB4kZ0RM4oLkVnDE5aTjqjzsFzhkXXuhbSPKnaE
 YXlsk0gKczbj38cve5YRvBvs3QRj+lY3ZFlk6gDFpaW5BVhYR2Zf5fs1kNM8Wx7TIaAAX6
 lMi7MV1u9iNsZwseaGUiXb36Z/MfU2M=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-479-In2duZ5mOpmTcrlNOena2w-1; Thu, 09 Jul 2020 11:27:33 -0400
X-MC-Unique: In2duZ5mOpmTcrlNOena2w-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A0DA180BCA1;
 Thu,  9 Jul 2020 15:27:31 +0000 (UTC)
Received: from x1.home (ovpn-112-71.phx2.redhat.com [10.3.112.71])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 1A1026FEC2;
 Thu,  9 Jul 2020 15:27:31 +0000 (UTC)
Date: Thu, 9 Jul 2020 09:27:30 -0600
From: Alex Williamson <alex.williamson@redhat.com>
To: Fred Gao <fred.gao@intel.com>
Message-ID: <20200709092730.01128671@x1.home>
In-Reply-To: <20200709173707.29808-1-fred.gao@intel.com>
References: <20200709173707.29808-1-fred.gao@intel.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Subject: Re: [Intel-gfx] [PATCH v1] vfio/pci: Refine Intel IGD OpRegion
 support
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
Cc: Hang Yuan <hang.yuan@linux.intel.com>, kvm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 10 Jul 2020 01:37:07 +0800
Fred Gao <fred.gao@intel.com> wrote:

> Bypass the IGD initialization for Intel's dgfx devices with own expansion
> ROM and the host/LPC bridge config space are no longer accessed.
> 
> Cc: Zhenyu Wang <zhenyuw@linux.intel.com>
> Cc: Xiong Zhang <xiong.y.zhang@intel.com>
> Cc: Hang Yuan <hang.yuan@linux.intel.com>
> Cc: Stuart Summers <stuart.summers@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Fred Gao <fred.gao@intel.com>
> ---
>  drivers/vfio/pci/vfio_pci.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/vfio/pci/vfio_pci.c b/drivers/vfio/pci/vfio_pci.c
> index f634c81998bb..0f4a34849836 100644
> --- a/drivers/vfio/pci/vfio_pci.c
> +++ b/drivers/vfio/pci/vfio_pci.c
> @@ -28,6 +28,8 @@
>  #include <linux/nospec.h>
>  #include <linux/sched/mm.h>
>  
> +#include <drm/i915_pciids.h>
> +
>  #include "vfio_pci_private.h"
>  
>  #define DRIVER_VERSION  "0.2"
> @@ -60,6 +62,12 @@ module_param(enable_sriov, bool, 0644);
>  MODULE_PARM_DESC(enable_sriov, "Enable support for SR-IOV configuration.  Enabling SR-IOV on a PF typically requires support of the userspace PF driver, enabling VFs without such support may result in non-functional VFs or PF.");
>  #endif
>  
> +/* Intel's dgfx is not IGD, so don't handle them the same way */
> +static const struct pci_device_id intel_dgfx_pciids[] = {
> +	INTEL_DG1_IDS(0),
> +	{ }
> +};
> +
>  static inline bool vfio_vga_disabled(void)
>  {
>  #ifdef CONFIG_VFIO_PCI_VGA
> @@ -339,7 +347,8 @@ static int vfio_pci_enable(struct vfio_pci_device *vdev)
>  
>  	if (vfio_pci_is_vga(pdev) &&
>  	    pdev->vendor == PCI_VENDOR_ID_INTEL &&
> -	    IS_ENABLED(CONFIG_VFIO_PCI_IGD)) {
> +	    IS_ENABLED(CONFIG_VFIO_PCI_IGD) &&
> +	    !pci_match_id(intel_dgfx_pciids, pdev)) {
>  		ret = vfio_pci_igd_init(vdev);
>  		if (ret) {
>  			pci_warn(pdev, "Failed to setup Intel IGD regions\n");


Do we need to maintain specific IDs or could we simply test whether the
device is on the root bus to determine if it is integrated or discrete?
A discrete device should be connected to a downstream port rather than
appear on the root bus.  Thanks,

Alex

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
