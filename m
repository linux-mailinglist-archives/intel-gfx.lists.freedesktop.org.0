Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE2552DFF5
	for <lists+intel-gfx@lfdr.de>; Fri, 20 May 2022 00:29:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4552C11A923;
	Thu, 19 May 2022 22:29:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1BA111A923
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 May 2022 22:29:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652999387; x=1684535387;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=IdPQybgzSCwmB+kZXE4U3IIIMlTnzA+JBod8tH22qB0=;
 b=BsRDhfQYQVcq6gT1nWLAE1jcibEJ4wC7QXOnj3pZuQyAmmK6a859XK7F
 oz+DmnQNjl+DJKT4UiOYKYNVfFle9OLfhtghE5QZjzLE4kqza5oEToYaA
 8PElZTa/Ayzm0l4cOPdDrsJ3Uxz6/yDzpUiJ/yIaDyQkVkPHe8UGBWDb4
 Vcr7f00svkd4D62ItLBMVbpzSarWFTsaS0n+J0We7mT5M4YEfTyxKPj76
 bdSywbSMHYR5oLz+4K7zGKNHQKEnANO0iGyk0CviEIUhG1LZfViohDK3N
 VbWa8tUgvB1Rapqf1jp+uGuBdNBuvdNThsZ2T7AKsck45GSJyZLhCk9a8 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10352"; a="272529544"
X-IronPort-AV: E=Sophos;i="5.91,238,1647327600"; d="scan'208";a="272529544"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 15:29:47 -0700
X-IronPort-AV: E=Sophos;i="5.91,238,1647327600"; d="scan'208";a="570463436"
Received: from stkachuk-mobl2.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.251.23.35])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 15:29:46 -0700
Date: Thu, 19 May 2022 15:29:46 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Piorkowski, Piotr" <piotr.piorkowski@intel.com>
Message-ID: <20220519222946.mzt5fhkkorpf3dpg@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220120113049.213361-1-piotr.piorkowski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220120113049.213361-1-piotr.piorkowski@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Sanitycheck PCI BARs on probe
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 20, 2022 at 12:30:49PM +0100, Piorkowski, Piotr wrote:
>From: Piotr Piórkowski <piotr.piorkowski@intel.com>
>
>For proper operation of i915 we need usable PCI BARs:
> - GTTMMADDR BAR 0 (1 for GEN2)
> - GFXMEM BAR 2.
>Lets check before we start the i915 probe that these BARs are set,
>and that they have a size greater than 0.
>
>Signed-off-by: Piotr Piórkowski <piotr.piorkowski@intel.com>
>Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
>Cc: Jani Nikula <jani.nikula@linux.intel.com>

This sounds reasonable to me... should catch issues in which the BIOS
didn't assign resources properly, PCI subsystem tried to reassign them
and we ended up left withou a BAR.

+Matt Auld who is working on small BAR recovery... slightly related.
Does this look ok?

Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

thanks
Lucas De Marchi


>---
> drivers/gpu/drm/i915/i915_pci.c         | 33 +++++++++++++++++++++++++
> drivers/gpu/drm/i915/intel_pci_config.h |  5 ++++
> 2 files changed, 38 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
>index 8261b6455747..ad60c69d9dd8 100644
>--- a/drivers/gpu/drm/i915/i915_pci.c
>+++ b/drivers/gpu/drm/i915/i915_pci.c
>@@ -29,6 +29,8 @@
> #include "i915_drv.h"
> #include "i915_pci.h"
>
>+#include "intel_pci_config.h"
>+
> #define PLATFORM(x) .platform = (x)
> #define GEN(x) \
> 	.graphics.ver = (x), \
>@@ -1181,6 +1183,34 @@ static bool force_probe(u16 device_id, const char *devices)
> 	return ret;
> }
>
>+static bool __pci_resource_valid(struct pci_dev *pdev, int bar)
>+{
>+	if (!pci_resource_flags(pdev, bar))
>+		return false;
>+
>+	if (pci_resource_flags(pdev, bar) & IORESOURCE_UNSET)
>+		return false;
>+
>+	if (!pci_resource_len(pdev, bar))
>+		return false;
>+
>+	return true;
>+}
>+
>+static bool intel_bars_valid(struct pci_dev *pdev, struct intel_device_info *intel_info)
>+{
>+	const int gttmmaddr_bar = intel_info->graphics.ver == 2 ? GEN2_GTTMMADR_BAR : GTTMMADR_BAR;
>+	const int gfxmem_bar = GFXMEM_BAR;
>+
>+	if (!__pci_resource_valid(pdev, gttmmaddr_bar))
>+		return false;
>+
>+	if (!__pci_resource_valid(pdev, gfxmem_bar))
>+		return false;
>+
>+	return true;
>+}
>+
> static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> {
> 	struct intel_device_info *intel_info =
>@@ -1206,6 +1236,9 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
> 	if (PCI_FUNC(pdev->devfn))
> 		return -ENODEV;
>
>+	if (!intel_bars_valid(pdev, intel_info))
>+		return -ENODEV;
>+
> 	/* Detect if we need to wait for other drivers early on */
> 	if (intel_modeset_probe_defer(pdev))
> 		return -EPROBE_DEFER;
>diff --git a/drivers/gpu/drm/i915/intel_pci_config.h b/drivers/gpu/drm/i915/intel_pci_config.h
>index 12cd9d4f23de..c08fd5d48ada 100644
>--- a/drivers/gpu/drm/i915/intel_pci_config.h
>+++ b/drivers/gpu/drm/i915/intel_pci_config.h
>@@ -6,6 +6,11 @@
> #ifndef __INTEL_PCI_CONFIG_H__
> #define __INTEL_PCI_CONFIG_H__
>
>+/* PCI BARs */
>+#define GTTMMADR_BAR				0
>+#define GEN2_GTTMMADR_BAR			1
>+#define GFXMEM_BAR				2
>+
> /* BSM in include/drm/i915_drm.h */
>
> #define MCHBAR_I915				0x44
>-- 
>2.25.1
>
