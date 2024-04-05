Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AAA089A5A1
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Apr 2024 22:28:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEB2410E600;
	Fri,  5 Apr 2024 20:28:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gw5NVx2+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7522A10E829;
 Fri,  5 Apr 2024 20:27:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712348873; x=1743884873;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=g3rhaffG+FL87IWta1Joseuzl5bThEVP9bvwPf9v6ws=;
 b=Gw5NVx2+orLK298AzjDDm3AnAETs5caUCXmkvz550iI2qid1ZB3tGOGu
 ilEanUuhXLsl7uvgQqP2NP2bvxI7CqK5OPGKwOn0GzCGE1HrD1nF3YRhM
 bsyB3N8hOsARc0FF/Q91FslK87pZv5XFw0xVw8PFtg3aWBOyv3HUXTtAd
 0cPKMcsTMof/kmTxrMtWeEu9PJehGwntUN3g6W5FK8lxnafxjzqvoQzVV
 ht5GELMHJmchPx83HMKQgzn8PUaZL74oEnfm0P27qChrpLPp6+sUpldIA
 NNrLomAbMoBXwMjsBU8igRjgVcOcVGo3cBHJnvR3HAQIug/PlBZXXXFEi Q==;
X-CSE-ConnectionGUID: 4KztDLOkTTeRIDBpTOSeNw==
X-CSE-MsgGUID: qG0TYj+9Rf2XYFhLZECFRw==
X-IronPort-AV: E=McAfee;i="6600,9927,11035"; a="11488577"
X-IronPort-AV: E=Sophos;i="6.07,182,1708416000"; d="scan'208";a="11488577"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2024 13:27:52 -0700
X-CSE-ConnectionGUID: mKYqfswbR5eN5VfokUjEFA==
X-CSE-MsgGUID: yzVbMUnkSE2v6OVgjWGMyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,182,1708416000"; d="scan'208";a="50242335"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Apr 2024 13:27:52 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Apr 2024 13:27:51 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 5 Apr 2024 13:27:50 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 5 Apr 2024 13:27:50 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 5 Apr 2024 13:27:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IITHcMlfhj8YpRmE2tX4DrMa5pXhV4xo6Ya0xWf0GCS2+HR4xjhw1aDl4I/D+8/qu1rDXEbWlczU8zpLc/h8pziTO6EEkoHY9mI7QpHK1/KdYUAg0M6KRc10E8LuTP23mPKhHeT7HwMV8yrOm6D3kmM0iqg4GURK/0Uuvmh+15ft8McYQeoz1lRiMhs74kxfOV+rX10w9Cx8z4E14Aiq4PgLHxmYPgIknesKA3njoJW2Mo6aERNZIX46wQqEprRsT4GGZpo6PvuVS1RY5/I9v8efJyIcigf0P0S9QwFn9kKODMeA+JgZucegRsaGg7LUTwkHX6uGD2RprRhjyBD/Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ABwrfsdWpR6d/53DlKzirX73SgMwsjh4n+/M+IqdMyA=;
 b=idOPSfhv+49tZmCYI7WfE96Pa3KB/uv6cum8GJ3wlBkKVe8J27V5lF4sSjW7uYmQFkY410bd1yQ0GKdqeU412WRg6dT92Ja++sdeKd6vjZK6JAdSYsPNN/CeTMqOLCFgka9++/WJuIyue2uEEoa1+tLChdwPlVv50HcmxJ9u76Olf0/Fi9riE7QqjorHf1RojvCF1adTyGqEyyE6EtinM0mH0QEJrUxqdWIinWIXNIjvjXlfbZw9ZluG+v4ZRhLSWRzAPttC/ygOj4Dr4K6W6qYCmo0KToyX/OqyaJddq9nJHE7dF7rGyC+GIAVZVGYEhmcxBMN/c3U7qUzgNr2m0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH7PR11MB7962.namprd11.prod.outlook.com (2603:10b6:510:245::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Fri, 5 Apr
 2024 20:27:49 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7452.019; Fri, 5 Apr 2024
 20:27:49 +0000
Date: Fri, 5 Apr 2024 15:27:43 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Josh
 Boyer" <jwboyer@redhat.com>
Subject: Re: [PATCH 2/6] drm/i915/dmc: define firmware URL locally
Message-ID: <xdp2oca3z7aaxohhxmlethruxuwnmz5jdcbshooyrte5fzndfy@agmh33pvzbvs>
X-Patchwork-Hint: comment
References: <cover.1712345787.git.jani.nikula@intel.com>
 <15935837a0c15f861bb2a688cc53514f47153ef3.1712345787.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <15935837a0c15f861bb2a688cc53514f47153ef3.1712345787.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR02CA0037.namprd02.prod.outlook.com
 (2603:10b6:a03:54::14) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH7PR11MB7962:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Reno290eQxNViZ1wGRPLDiHDlRckothIMogFIp/MbmNdeNK/9qLHRfKgLj2ijdYxzGPIeqteusU3uswNjM3cZNeeNWJOUSGrfFOl+ZgoFju1Q6fskwoFNdvWvHqak2ffxvrq8GvV5P6XkzLEWK7lpQ+hq8TyQhEz0l1oJq9it4tYCJvDVyjd1YOTbs2F4g37j16Uol2knBSa7vWlDc93NcO7b1Z18Wy+EVpDbLXotXTacEaejk+UERyGdafdi3Y2/mrRfk0Mo0n9rZrg3uTYdBGXmoyKGVDGb6CvIKnUIgX2H/WH6DfaAA6Ahuddg0hpCGcXZcskR8WsQpkVhIXA/LfKwoW0hdnmWaE94s5i68XimuaNTzJHJgIVxqq1gM607Kfbx+5UyvZCENaPuSB02mDrys3psYms96Gbs1i+u7ob3QM/VIzHIRxRzPjDRedjjrzCe6v9EBR/7t8vHT3OI+qXAVf32QzjKYVcS3b9T1y18o9hmRZDSf0uWvXPgm1rMRPfYSHNQP2ZIxZPuV3z0w2rNJ5/9Ejr15Nm6+NM68cIrQe18Njmugd04mfxESX4VviiH26bFZcGmz0yd0/n/cAEgewOsbe6WmpAiccLmPw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?ZCtetZRiU/kDB1yxUysPB/qXXprUizblYIXuY9+am1/5mkb/ys9VMXFHBl?=
 =?iso-8859-1?Q?nttM0V6vrjPhlShDtemE8VsGVkP5s//Xu5K1bPsoWQd6vFsKZBiaahrQKV?=
 =?iso-8859-1?Q?xBNckU/mxtXreqLHXyUBrEOp61GIDnlbJYTEkxkjz0jC9b9R4wi/HhXzOP?=
 =?iso-8859-1?Q?QhFy9diJYxT36p50+pSEAlOsk+ztXaWnXy8r94YgF1CzvjiORHCqGIMK3O?=
 =?iso-8859-1?Q?mkjqXFvVWdyEGimv5cNGm1K4EJkZDBk8/GVi24v+jQ12wjaTRXz4UF4Fkc?=
 =?iso-8859-1?Q?ART1wDaks2ZWFKEdSJ0S79n3ubxywSJ84Ech9+H5Kd5X3SB8NH1IAf+z+C?=
 =?iso-8859-1?Q?DbFhFhLQ7nU700YEiA9KORqw63ct03IbPFVLN7s6uCM5UBhyHzH2CRZA5I?=
 =?iso-8859-1?Q?LSbiiHOIcvW4gB8zh39Zz7GsBaO9clkTbAub901/kMtFVrjsf1csMKhZDf?=
 =?iso-8859-1?Q?EhAxBLMSAv42OQfH7lPMK1DXNG74E1R3gVZ12U6JY4+XOyjnCA56Xf/vnO?=
 =?iso-8859-1?Q?lJYi/iZbn6vuzTpHX/Fy9+VYTDEiFB6cXuPcfhVmBwjF6LZMEfu/Lb5CPI?=
 =?iso-8859-1?Q?NPqKEwnwxJuSefSZBPnOhifNvAkMJftBEl+SIqyfKtF1p/wQjyx2wwCoYF?=
 =?iso-8859-1?Q?UYYhnfvKHAqKqtUICOZJKjqUKltcMgmLdovEmMRzkQOPTlneO9FUUDjTFj?=
 =?iso-8859-1?Q?Fv//QJs4t5IaJz3sgkZzE+Wv/52S4j/cdSDuOByfxmF/viwL1PVyeUVVSs?=
 =?iso-8859-1?Q?IqCHGAeZ5t1U6rRGHJhFYlq1cuyd1sRQGAxiVN0VXk4vTtTptrKeyrZTr/?=
 =?iso-8859-1?Q?w4XYYs5JJlm/PvzzJajlIl/5zCUbrWcWpK0XHoMKPcrqnozbm5o1k5cSPb?=
 =?iso-8859-1?Q?FixXF7vPCB+Otd8sbXXSyjOcV39b+QDrwTT9t78TdaXtznTLHbJmGDVcBV?=
 =?iso-8859-1?Q?BAmcDnWds5GZdA43IX8uQ6qVQbgUSsKyNzAqZYpxIsQXX0/Sg6jBT05XBj?=
 =?iso-8859-1?Q?o5KTnaXGhXgvHrVoucLpFM+H2ZT5S+Y2NSJY/Eo/+0TG8fKRYOJQvd0eOB?=
 =?iso-8859-1?Q?6TFAbaOR8dDtivgPYV7dn7tZBJ68CG/G/+944W87q7PvtR6Jpz4IiORPw3?=
 =?iso-8859-1?Q?Sx+PcAsbB70oE+xOc6OkQOqaCjMW0N9c+NkIho2vXRdQflFyeV9jNQjo0V?=
 =?iso-8859-1?Q?EqHGH6mGJbCT1ZEwAJ3Fv/Y3RPqRiQ3aivncJsfSW2vLX2p6iHArMz1dY5?=
 =?iso-8859-1?Q?Nw6x1lNEPzDhHuvnv2RL533WuDl4QmsXUb+8KULU7tPARv6fGYKJK304V/?=
 =?iso-8859-1?Q?WHEtwrsgZDnos5cvg31N1JYqldCxWKCLI4QRpUqHqUl63AKbUyhm6gmXCy?=
 =?iso-8859-1?Q?SZrMfKO1MPYaNsKLk/coNlwI42r+JjRqm87VvLre/OTNuq2wfsmsP4VRX1?=
 =?iso-8859-1?Q?+GK5g3GtojMepgufFYpmUuAJX7S3yPosT2MKzh54OFrrmW7PLftT3tOGA9?=
 =?iso-8859-1?Q?sHZec/Qf8D67YvNL/M9wNozl14LrlDZ9w9iE7WBiRcr9KWjXxEFxf7E1nM?=
 =?iso-8859-1?Q?SXB7BMpaR3rI+xmxvU3EyTolbYx38S5NmNkEJAsAim3x99rYr4obcmUvW4?=
 =?iso-8859-1?Q?EKWx2Ik6FWo3S0xzfo5T8JZqxUFSug5xjuf3A/poRvaBO/P/CfKsosag?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5c7fbac0-de8c-4859-6811-08dc55aedbf2
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Apr 2024 20:27:48.3787 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9Z94Md6lPy3SG0SpZDNuNv7LQgKhvv+KeXqooe1V53Vgt8g+DDsn8b9LKwMl3TfGceAD19/gBJASowPNeB2+9cwxgaomAF7PKZqeiE0NeBg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7962
X-OriginatorOrg: intel.com
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

On Fri, Apr 05, 2024 at 10:37:39PM +0300, Jani Nikula wrote:
>Avoid the dependency on intel_uc_fw.h, and allow removal of xe compat
>intel_uc_fw.h. If there needs to be duplication of the URL, at least
>have the duplication in a sensible way.
>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

but see below. +Josh

>---
> drivers/gpu/drm/i915/display/intel_dmc.c             |  4 +++-
> drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h    |  1 -
> drivers/gpu/drm/xe/compat-i915-headers/intel_uc_fw.h | 11 -----------
> 3 files changed, 3 insertions(+), 13 deletions(-)
> delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_uc_fw.h
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>index 3fa851b5c7a6..e61e9c1b8947 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>@@ -38,6 +38,8 @@
>  * low-power state and comes back to normal.
>  */
>
>+#define INTEL_DMC_FIRMWARE_URL "https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git"

repo recently moved to gitlab, but as far as I know the one on
kernel.org will still work. Do we want to change it?

https://gitlab.com/kernel-firmware/linux-firmware

thanks
Lucas De Marchi

>+
> enum intel_dmc_id {
> 	DMC_FW_MAIN = 0,
> 	DMC_FW_PIPEA,
>@@ -953,7 +955,7 @@ static void dmc_load_work_fn(struct work_struct *work)
> 			   " Disabling runtime power management.\n",
> 			   dmc->fw_path);
> 		drm_notice(&i915->drm, "DMC firmware homepage: %s",
>-			   INTEL_UC_FIRMWARE_URL);
>+			   INTEL_DMC_FIRMWARE_URL);
> 	}
>
> 	release_firmware(fw);
>diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>index a01d1b869c2d..837e95e3604e 100644
>--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>@@ -26,7 +26,6 @@
> #include "i915_utils.h"
> #include "intel_gt_types.h"
> #include "intel_step.h"
>-#include "intel_uc_fw.h"
> #include "intel_uncore.h"
> #include "intel_runtime_pm.h"
> #include <linux/pm_runtime.h>
>diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uc_fw.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_uc_fw.h
>deleted file mode 100644
>index 009745328992..000000000000
>--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uc_fw.h
>+++ /dev/null
>@@ -1,11 +0,0 @@
>-/* SPDX-License-Identifier: MIT */
>-/*
>- * Copyright © 2023 Intel Corporation
>- */
>-
>-#ifndef _INTEL_UC_FW_H_
>-#define _INTEL_UC_FW_H_
>-
>-#define INTEL_UC_FIRMWARE_URL "https://git.kernel.org/pub/scm/linux/kernel/git/firmware/linux-firmware.git"
>-
>-#endif
>-- 
>2.39.2
>
