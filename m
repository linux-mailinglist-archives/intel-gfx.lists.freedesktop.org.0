Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D48AC88EAF
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 10:25:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 434ED10E0E9;
	Wed, 26 Nov 2025 09:25:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R4tQEOOb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B40CB10E0E9
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Nov 2025 09:25:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764149110; x=1795685110;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=FxMI60Iz076E0yAEjQIrFcXL9m1gtTXuusrK09sbECo=;
 b=R4tQEOObX8EjDG65x78HgMan7+2iEOLScmYhCFsMVEW858R2a1XnaTk5
 5c+dqJkkgoWP+8K9UMSEUOCoZ3beDxqVlr67W5DTx8xyq33Z7KAQlDGgp
 IXX7AtbKy9TL4G2Mc1BD1KOgUgFk/BOEXMi/kbn4s/ehywjEXAwqjwWHO
 JIBWkX9bf1EBvgPmVLQXIHAtQd3+shrnplASB+OziZ0bDem8qIzrwzWqN
 p366CzO0LEK2tulKbjdZRbddRkxc13ihakOSt33y1tfGYsm72ROCXq+f4
 6TuThCXbyjJsuRqpAKaDQikBTvAaesFf4AaZolhlBOV/FHVPl7XTAC/Gf A==;
X-CSE-ConnectionGUID: wOJRO9x8TneIoIavrWxX/w==
X-CSE-MsgGUID: xJROdbNUR1CgR9PALHKT/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="66212320"
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="66212320"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 01:25:10 -0800
X-CSE-ConnectionGUID: d3sJCNQ4Q1u8bJggbuKGhg==
X-CSE-MsgGUID: dFeCAvbRR6mtVB7x54tDvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="230152223"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.1])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 01:25:09 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: gregkh@linuxfoundation.org, Alexander Usyskin <alexander.usyskin@intel.com>
Subject: Re: [PATCH v3 1/2] mei: me: Export the PCI ID list
In-Reply-To: <09aaeb7e-35b4-4a7a-9471-6bb0c247f2ed@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251114201431.1135031-4-daniele.ceraolospurio@intel.com>
 <20251114201431.1135031-5-daniele.ceraolospurio@intel.com>
 <632d00475a9dc4e878d7145834a70028ab298f95@intel.com>
 <09aaeb7e-35b4-4a7a-9471-6bb0c247f2ed@intel.com>
Date: Wed, 26 Nov 2025 11:25:05 +0200
Message-ID: <a25459250efabdde393f5665ea5e1fc6f4ce73f8@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 25 Nov 2025, Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com> wrote:
> On 11/25/2025 2:26 AM, Jani Nikula wrote:
>> On Fri, 14 Nov 2025, Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com> wrote:
>>> The intel GFX drivers (i915/xe) interface with the ME device for some of
>>> their features (e.g. PXP, HDCP) via the component interface. Given that
>>> the ME device can be hidden by BIOS/Coreboot, the GFX drivers need a
>>> way to check if the device is available before attempting to bind the
>>> component, otherwise they'll go ahead and initialize features that will
>>> never work.
>>> The simplest way to check if the ME device is available is to check the
>>> available devices against the PCI ID list of the mei_me driver. To avoid
>>> duplication, this patch exports the list, so that it can be used directly
>>> from the GFX drivers.
>>>
>>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>>> Cc: Alexander Usyskin <alexander.usyskin@intel.com>
>>> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
>>> ---
>>>   drivers/misc/mei/pci-me.c | 12 +++++++++++-
>>>   include/linux/mei_me.h    | 15 +++++++++++++++
>>>   2 files changed, 26 insertions(+), 1 deletion(-)
>>>   create mode 100644 include/linux/mei_me.h
>>>
>>> diff --git a/drivers/misc/mei/pci-me.c b/drivers/misc/mei/pci-me.c
>>> index b017ff29dbd1..632756f9da66 100644
>>> --- a/drivers/misc/mei/pci-me.c
>>> +++ b/drivers/misc/mei/pci-me.c
>>> @@ -18,6 +18,7 @@
>>>   #include <linux/pm_runtime.h>
>>>   
>>>   #include <linux/mei.h>
>>> +#include <linux/mei_me.h>
>>>   
>>>   #include "mei_dev.h"
>>>   #include "client.h"
>>> @@ -25,7 +26,7 @@
>>>   #include "hw-me.h"
>>>   
>>>   /* mei_pci_tbl - PCI Device ID Table */
>>> -static const struct pci_device_id mei_me_pci_tbl[] = {
>>> +const struct pci_device_id mei_me_pci_tbl[] = {
>>>   	{MEI_PCI_DEVICE(MEI_DEV_ID_82946GZ, MEI_ME_ICH_CFG)},
>>>   	{MEI_PCI_DEVICE(MEI_DEV_ID_82G35, MEI_ME_ICH_CFG)},
>>>   	{MEI_PCI_DEVICE(MEI_DEV_ID_82Q965, MEI_ME_ICH_CFG)},
>>> @@ -135,6 +136,15 @@ static const struct pci_device_id mei_me_pci_tbl[] = {
>>>   
>>>   MODULE_DEVICE_TABLE(pci, mei_me_pci_tbl);
>>>   
>>> +/*
>>> + * Other drivers (e.g., i915, xe) interface with the ME device for some of their
>>> + * features (e.g., PXP, HDCP). However, the ME device can be unplugged via the
>>> + * pci subsystem or hidden by BIOS/coreboot, so those drivers might want to
>>> + * check if the device is available before initializing those features. To
>>> + * allow them to perform such a check, we export the list of ME device IDs.
>>> + */
>>> +EXPORT_SYMBOL_GPL(mei_me_pci_tbl);
>> Data is not an interface.
>>
>> Please add an exported helper function (with a sensible stub for
>> CONFIG_INTEL_MEI_ME=n) and everything becomes much cleaner both mei and
>> i915 side.
>
> That is actually what I had in v2 [1], but Greg suggested to export the 
> table directly instead. I am ok either way.

Well I'm not asking to add a function to return the device id table,
which certainly has the worst of both approaches. I'm asking to add a
function that does the required check, which I think is overall
simplest.

BR,
Jani.


>
> [1] https://patchwork.freedesktop.org/patch/674368/?series=151677&rev=2
>
> Daniele
>
>>
>> BR,
>> Jani.
>>
>>> +
>>>   #ifdef CONFIG_PM
>>>   static inline void mei_me_set_pm_domain(struct mei_device *dev);
>>>   static inline void mei_me_unset_pm_domain(struct mei_device *dev);
>>> diff --git a/include/linux/mei_me.h b/include/linux/mei_me.h
>>> new file mode 100644
>>> index 000000000000..48fd913a3d95
>>> --- /dev/null
>>> +++ b/include/linux/mei_me.h
>>> @@ -0,0 +1,15 @@
>>> +/* SPDX-License-Identifier: GPL-2.0 */
>>> +/*
>>> + * Copyright (c) 2025, Intel Corporation. All rights reserved.
>>> + */
>>> +
>>> +#ifndef _LINUX_MEI_ME_H
>>> +#define _LINUX_MEI_ME_H
>>> +
>>> +#include <linux/pci.h>
>>> +
>>> +#if IS_ENABLED(CONFIG_INTEL_MEI_ME)
>>> +extern const struct pci_device_id mei_me_pci_tbl[];
>>> +#endif
>>> +
>>> +#endif /* _LINUX_MEI_ME_H */
>

-- 
Jani Nikula, Intel
