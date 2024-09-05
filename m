Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4442896DA50
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 15:29:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF7EE10E8B1;
	Thu,  5 Sep 2024 13:29:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hVRAJyra";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61DDD10E8B1;
 Thu,  5 Sep 2024 13:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725542968; x=1757078968;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=BCzUrtyG6eYMkUCu8RLLvZRYj859Q/dpa/SQfEJqhXg=;
 b=hVRAJyra37Vec+YxLFxn4JTar9b+10NA7rh3PPkC7pOgmnB1Gj03anEb
 oYysV4TJrfpaVEaZMz9y9zk6u8EwmcrLDyWs1+IGYKICnEeqMuv7IQZrc
 4S12vT0uRQYz66Eq+piEyAyPyWML1tZYoIME66ErVnHgf48PNjrEi68mo
 QhGc1N7PLxAxsBmS5934/nnKH7SYsFTxVV0vPENq4P9yoeO5xOI6R1HgH
 HGtwnoRpuB29dexEsod31NyI+YBA6gpFSqbe5VcPW2pqPt54fne/Sv8Rm
 jrqIFqT4LjK1CHd3YW7vO7ZpQtPaflWpwPBwlxVOziVPzzLkJS7yrE9fv g==;
X-CSE-ConnectionGUID: aGo8mprlQyiSnkzT1HxEjw==
X-CSE-MsgGUID: /AWlF7uNQ4uYMqFlJCIQvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11186"; a="24121423"
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="24121423"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 06:29:28 -0700
X-CSE-ConnectionGUID: MSM1jl4sTAi12c0Qmr/U4Q==
X-CSE-MsgGUID: L0jIJos1TEydx44LCHXlOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="66359495"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Sep 2024 06:29:28 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 5 Sep 2024 06:29:27 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 5 Sep 2024 06:29:27 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 5 Sep 2024 06:29:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aMaoDncudTEPBHEESG29pxBK0P4yJOaldSBhrYMba6Yn55TFN5NnIEoWKhtPp5S57HLRxrgU8NcvQJrZ1WcAps18llFV8uiYQtqVQceEsAsd2LMd/vjd6kZF5JrEn+j1zCsmJND/Ai/+AGlv1R4EBfiY9zqc1p5P6RHBYQClPjrO0JF9BWd9b6lT+biScGsDXss3p7cQIoi3ItNcxxU0L2PZxpMZ6c0jxD9ce505I8ZdaZk27i/ZKMEXvMVUQU9Y/+5Vcu4hq4MdC1fwkXNLOfMyHICoO2C6uEOXdOPUOvsVLge7n9k2ijNC1A7byLTV3sWYGqUiTEKzsYLW/ikEQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4TrolFKcEZWpYDkF+ACcbqJK6RFC6kklrGMCoLRZIjQ=;
 b=zRjnjpChpgulFVoeiUxep7G7z/3Pmn/8pSmITcKpvq1NXaBY+j2rSTQGplP/OMXS5OlK7mTkYrHnK8BnVN7Ksem81DOfjpFdvtv2hm//3LWYk5uotSDTCIlNjRg3PTtAXDqhMQ4QnoHZRNS8MYZ4T6uYeu9W+XQQpAviVjwW/M0ZGUyYGYWK7gWVSqw1vm8ZHPjZDpDt++H7u4p5ft8yPZW6ZwjfOpRhFUFOwo8cgoV5p+bNbUM3rx7R5mmwJLIjoAef3Kbz37sEAJELePCUv1guBQzFagZF7O0Stp+D21eSVr08WHyF7VczYGkx5YbflTGRacXBglNAceb+OWjf4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MW6PR11MB8438.namprd11.prod.outlook.com (2603:10b6:303:241::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Thu, 5 Sep
 2024 13:29:25 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%7]) with mapi id 15.20.7918.024; Thu, 5 Sep 2024
 13:29:25 +0000
Date: Thu, 5 Sep 2024 08:29:22 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@intel.com>
Subject: Re: [RFC] drm/xe/display: Merge xe's display info probe and i915
 HAS_DISPLAY checks
Message-ID: <ituy73yzuwpjxjdwm53a6etoanj3y7brwk5ag57bhw4hlhf6xs@hs6iaclhkvt7>
References: <20240904173713.26891-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240904173713.26891-1-rodrigo.vivi@intel.com>
X-ClientProxiedBy: MW4P222CA0011.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::16) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MW6PR11MB8438:EE_
X-MS-Office365-Filtering-Correlation-Id: c356127c-215b-4278-350e-08dccdaec282
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?S+p6zfJ/Zb4uerltR53h0HnVtLr24fZrJrRrM+RyBG62MSuVEvIU17/axYSp?=
 =?us-ascii?Q?uVY3zCHbqNLZlWbe6yXJJGlLcuftuRHjsEqJe4gYBhsqEC+5eOWo+fUr/SbQ?=
 =?us-ascii?Q?stPk3Ewf6WYYT8eCqMe0kv/TbtglKn3mViuOPUfUhCsALufjcVjfnZifXBSr?=
 =?us-ascii?Q?oZtOVQEuwyPRWJZNSUyuz7HxH2fJQvlkL04tuXKR2DNza0B62Tqer4TQa6ys?=
 =?us-ascii?Q?aYVK2OciYnregAjjm+T26MG0NoovMCyl+MJMiVFcxGe2M3QGYx9KM0wJ9gxU?=
 =?us-ascii?Q?ieBe5dRGxOaSqhDmiXfV+X63umLGTFRN7f8mclwMSC5rwRdjIj/OBE3ZNhXd?=
 =?us-ascii?Q?V6dEkEbq/7p+9NTTS2VhrLy9MQsJVC39ClTCm1Q4UvPMDxGvaTIhyiOHhkzL?=
 =?us-ascii?Q?rGxK9k/GjnOJoDnBrA4MoxQHwvtaIo3CdtUILHV1KA5yrKEtA8CPDDHdJuSW?=
 =?us-ascii?Q?QYC7PFzrNo9o8hjcvuB5xt7w74lPAJmg0DkaDDly7vQAM0nZDFztKVd+SO4J?=
 =?us-ascii?Q?HGIbj2DAY003LrMBh1j6ELg3WnNk/pRVqpO0jPEqJeg2UC4g2gIEmBnd0zMm?=
 =?us-ascii?Q?eQJ4ZdigEQO6064v14CwTeLgcS+gDLk6NxBVcPM4ufJ4KMALtweogYmHYOY/?=
 =?us-ascii?Q?Z9NWj1ae1P+UlOYhQegTfwYWt3vxv4XOGesiXcnM1cDSUNquEcSi64n9eOt4?=
 =?us-ascii?Q?PKLnTmv7wrt0Yefkgy7uiwpMZ7YKqswqCQ2w3vC8b40qvMqROpUQnbAXDO5p?=
 =?us-ascii?Q?uVLTAeN8UPLfuC9nFdHYFEkuomjKPPhXW4ps0HPImHAugwUlzmbzCM2Ty28u?=
 =?us-ascii?Q?RnoUrUW3u7cE8cOYwQPjAPSa7+9Ww8I2x2tXx59Iu+1xBcnFwvVDVFm3Zurk?=
 =?us-ascii?Q?FvJey4bj3WlJCQoI6pEUVrSQZ1rLx6M1GoDZqyv44yNDSM1QmlTH3QC9VrCT?=
 =?us-ascii?Q?6tdTeZxpjc6gTZnej/vZk1bm/dCllwmdvnv3/eov0WGY6aYpWASpSyoFuvc5?=
 =?us-ascii?Q?tC5XAWz/CbOlLTFWVzjrTVwu8rlDnAieBzEZuTcEDpo/A4ea7EmhVfAjTjGp?=
 =?us-ascii?Q?Au9jDslcXZ9ro9S0sKdLV+sIglGpOzyMpAhSdt8xqhHlG4zvtvVx3I7WG/vI?=
 =?us-ascii?Q?pB9WGS2miRRT/zBnRCczoXxhd5uXu37w+wEYTPy5GyxnCWIWvjws4U/3jyd3?=
 =?us-ascii?Q?DraFqteBGyTwiCFBS5Tpg8m+kEvrORI0gQ892uobd8JPuNLNTdr7kBdW0PMB?=
 =?us-ascii?Q?Gbn7jbt1Ie8u3HXeFIrVIzrzuxFf0pgH6wTbddi9rXKwF5XB45l/alboTa8G?=
 =?us-ascii?Q?Ikt8KX51JutUOy+DY17aAAPNWrnFd9F9Ukzxiylbtrd7VA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LnYcW8/IKu/UA3paa83uU0lsk9/RXnx79SGNWR6mP6b36SpZUqnkS519q1me?=
 =?us-ascii?Q?ELuunVT3w7g9qsCcfxpItWawCIljZMIT0uHMVWhohI4QLTA8Wpyu9yyPUSGm?=
 =?us-ascii?Q?4fQeSxf797ErJx8mADpzk1TV+KCk1LtAwA/nGjTnQAqwsNpucXfbxjqHhQQs?=
 =?us-ascii?Q?VBb+6gA8D1SKpi6uF+IvOmgIeiehD196hYb4ovRUnA0+l+m6Hpsd6KoehTcg?=
 =?us-ascii?Q?SZvRncb1fyjE7dCytjO+zmIjZttK2//XECviv84oB+39ttGQNjEB5HIQIan+?=
 =?us-ascii?Q?+tAjEnA7xm+fR5f7D8dncbFVlq7KigaVutG/Wg653bpdiwuVJobaOLoBNS20?=
 =?us-ascii?Q?096X9U0+5mKIuSkflu8v9EXXKaYbII+dhcJiZzxqWD6lHUeJ4/cxof6J5MsQ?=
 =?us-ascii?Q?oL8BGpti0KB2qD0bFwYf1LbgnSAspXFr4m5NmKw3S3SRvtCmY6bL0S3jJzlo?=
 =?us-ascii?Q?prTLAQNmMJ9cPgss0LDFLR+eJQbkgeZ/7ftirLnZH1bsS4FOmh1T2zgAEABZ?=
 =?us-ascii?Q?bPVUvcc8/qTlCDFRS0yldTprL6u0PYHad2ElugqVv4Xj+hV0DF6GMjcBj9Tp?=
 =?us-ascii?Q?Xc4NRH9u9CkgBZ9ZhHodZY1lJ0ZCCslUMXo5N0hzPEiLZIfxUPl1GveuI2Yd?=
 =?us-ascii?Q?D0r6KlbLpHoW4ero7R42Ft7adi6PLypy2UKsvHxPnLQNX9P/mU3ry4Op3rGd?=
 =?us-ascii?Q?hcDZWssjiomnBShucGs+ITj1F9SJAFG6kysnkJJvubdwvoNgTaMbKlnaMXhB?=
 =?us-ascii?Q?EsiJpA0mpurDHjnHjJSM7HXNXMTfW8rCKPfdzfQiDMyYawC5b44jQNFJet3b?=
 =?us-ascii?Q?v1m6FHTQ2lahnofpwOzc+0YDiOz2kSf/nLYHBlQVebtHpdvYe4rBbsVPizuF?=
 =?us-ascii?Q?6QEvFwGKbwOciXq7BhFl03TbZtzwL2USDufcBzZ3qjVZDPxUY62HgLfnqmzE?=
 =?us-ascii?Q?qp7RTD3SMUleYgVWJR2bhZzq8AbcoMOGO8oZqMgGkjlPPYeFD4fqdvs3APLI?=
 =?us-ascii?Q?wY4uWx9qN7XNlBDy+boscB0HEgRZ1zX4rxWulhlH9L0XVE9hyVkzrvv9u43v?=
 =?us-ascii?Q?6NIHKU6h6nGZZmMv496ED7iikUpqNo41hp73HsZwDy3gGVVt3OBPTpHMwuXS?=
 =?us-ascii?Q?4gE51D7o3I/Gx5SGvxwpFwFp2+wehdczOVMGuVNypgEYa9DegJFHhbi6idek?=
 =?us-ascii?Q?EPlkjm48wJ6WG1KTeG1OAdkkndgPEpm1llZnWxmQG2kcje8b0XYWWq5aRA7R?=
 =?us-ascii?Q?sF6TloY9XYjD1s35mec7rrW2kmvAgJ9yqgTr0dwK2MXWianc8v4mkVCtL1dj?=
 =?us-ascii?Q?DZAjln6OcDyuOPIWisniciH2FBcRrygKF3dPhbpuNaq5ugM8NAHetmZ/xJXi?=
 =?us-ascii?Q?KJ8MpnPYd8aFBWhhNEeW3r8ZEwjNvchZAwITg67G5K17MRPKk8cTnhmgO5ru?=
 =?us-ascii?Q?dNLwPN0sJafx40bzN83DUT0J256W71NKNBCRRfj0svYreMfmPZX6VOjWkLLP?=
 =?us-ascii?Q?F9EVQiLEcCZw+N/nkBgOG/7NJFHE7IEu0k2eQilGeF+/y8ivsFNt8HD4WJS0?=
 =?us-ascii?Q?UUyU6YG/Ak340yQS4nPPOzAxAj4T1U9LaV6uE35P4DRD5PPY0ML4e/Kzr1eL?=
 =?us-ascii?Q?Ew=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c356127c-215b-4278-350e-08dccdaec282
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2024 13:29:25.3105 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: b8/uGPdSWExoFaceQ+FJAzU+i12c8SobdvP/bP2NoSupcA0Yq9OJGoqVwjThsyQzuKwaBMo+7FhHm6unGlITHJVWHnYtC3xUMLXJxjVeHh4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8438
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

On Wed, Sep 04, 2024 at 01:37:13PM GMT, Rodrigo Vivi wrote:
>Instead of having multiple checks and the has_display in the middle
>of the functions, only execute the Xe display functions if
>Xe probed display and pipe_masks still have something valid
>after i915's runtime init.
>
>Cc: Jani Nikula <jani.nikula@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>---
> drivers/gpu/drm/xe/display/xe_display.c | 65 +++++++++++++------------
> 1 file changed, 35 insertions(+), 30 deletions(-)
>
>diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
>index 75736faf2a80..1e248c7aaff0 100644
>--- a/drivers/gpu/drm/xe/display/xe_display.c
>+++ b/drivers/gpu/drm/xe/display/xe_display.c
>@@ -13,7 +13,6 @@
> #include <uapi/drm/xe_drm.h>
>
> #include "soc/intel_dram.h"
>-#include "i915_drv.h"		/* FIXME: HAS_DISPLAY() depends on this */
> #include "intel_acpi.h"
> #include "intel_audio.h"
> #include "intel_bw.h"
>@@ -34,7 +33,12 @@
>
> static bool has_display(struct xe_device *xe)

I think has_display is already conflated enough. From the xe side I
wouldn't call this has_display if it means something else than "the
hardware is present or we know how to drive it". That is the meaning of
this flag in drivers/gpu/drm/xe/xe_pci.c and this function here later
changed to mean something else :-/

> {
>-	return HAS_DISPLAY(xe);
>+	/*
>+	 * Xe has probed and configured the display,
>+	 * and some pipes remains enable after
>+	 * __intel_display_device_info_runtime_init()
>+	 */
>+	return xe->info.probe_display && HAS_DISPLAY(&xe->display);

I'm not following the motivation here... Shouldn't we remove the
HAS_DISPLAY() from here and rather change the display side to do a
return-early?

if probe_display == 1, from the xe perspective we probed display, we
shouldn't be looking at the internal state of display to know what to do
on this side of the fence.

Lucas De Marchi

> }
>
> /**
>@@ -104,7 +108,7 @@ static void xe_display_fini_nommio(struct drm_device *dev, void *dummy)
> {
> 	struct xe_device *xe = to_xe_device(dev);
>
>-	if (!xe->info.probe_display)
>+	if (!has_display(xe))
> 		return;
>
> 	intel_power_domains_cleanup(xe);
>@@ -112,7 +116,7 @@ static void xe_display_fini_nommio(struct drm_device *dev, void *dummy)
>
> int xe_display_init_nommio(struct xe_device *xe)
> {
>-	if (!xe->info.probe_display)
>+	if (!has_display(xe))
> 		return 0;
>
> 	/* Fake uncore lock */
>@@ -129,7 +133,7 @@ static void xe_display_fini_noirq(void *arg)
> 	struct xe_device *xe = arg;
> 	struct intel_display *display = &xe->display;
>
>-	if (!xe->info.probe_display)
>+	if (!has_display(xe))
> 		return;
>
> 	intel_display_driver_remove_noirq(xe);
>@@ -141,7 +145,7 @@ int xe_display_init_noirq(struct xe_device *xe)
> 	struct intel_display *display = &xe->display;
> 	int err;
>
>-	if (!xe->info.probe_display)
>+	if (!has_display(xe))
> 		return 0;
>
> 	intel_display_driver_early_probe(xe);
>@@ -172,7 +176,7 @@ static void xe_display_fini_noaccel(void *arg)
> {
> 	struct xe_device *xe = arg;
>
>-	if (!xe->info.probe_display)
>+	if (!has_display(xe))
> 		return;
>
> 	intel_display_driver_remove_nogem(xe);
>@@ -182,7 +186,7 @@ int xe_display_init_noaccel(struct xe_device *xe)
> {
> 	int err;
>
>-	if (!xe->info.probe_display)
>+	if (!has_display(xe))
> 		return 0;
>
> 	err = intel_display_driver_probe_nogem(xe);
>@@ -194,7 +198,7 @@ int xe_display_init_noaccel(struct xe_device *xe)
>
> int xe_display_init(struct xe_device *xe)
> {
>-	if (!xe->info.probe_display)
>+	if (!has_display(xe))
> 		return 0;
>
> 	return intel_display_driver_probe(xe);
>@@ -202,7 +206,7 @@ int xe_display_init(struct xe_device *xe)
>
> void xe_display_fini(struct xe_device *xe)
> {
>-	if (!xe->info.probe_display)
>+	if (!has_display(xe))
> 		return;
>
> 	intel_hpd_poll_fini(xe);
>@@ -213,7 +217,7 @@ void xe_display_fini(struct xe_device *xe)
>
> void xe_display_register(struct xe_device *xe)
> {
>-	if (!xe->info.probe_display)
>+	if (!has_display(xe))
> 		return;
>
> 	intel_display_driver_register(xe);
>@@ -223,7 +227,7 @@ void xe_display_register(struct xe_device *xe)
>
> void xe_display_unregister(struct xe_device *xe)
> {
>-	if (!xe->info.probe_display)
>+	if (!has_display(xe))
> 		return;
>
> 	intel_unregister_dsm_handler();
>@@ -233,7 +237,7 @@ void xe_display_unregister(struct xe_device *xe)
>
> void xe_display_driver_remove(struct xe_device *xe)
> {
>-	if (!xe->info.probe_display)
>+	if (!has_display(xe))
> 		return;
>
> 	intel_display_driver_remove(xe);
>@@ -243,7 +247,7 @@ void xe_display_driver_remove(struct xe_device *xe)
>
> void xe_display_irq_handler(struct xe_device *xe, u32 master_ctl)
> {
>-	if (!xe->info.probe_display)
>+	if (!has_display(xe))
> 		return;
>
> 	if (master_ctl & DISPLAY_IRQ)
>@@ -254,7 +258,7 @@ void xe_display_irq_enable(struct xe_device *xe, u32 gu_misc_iir)
> {
> 	struct intel_display *display = &xe->display;
>
>-	if (!xe->info.probe_display)
>+	if (!has_display(xe))
> 		return;
>
> 	if (gu_misc_iir & GU_MISC_GSE)
>@@ -263,7 +267,7 @@ void xe_display_irq_enable(struct xe_device *xe, u32 gu_misc_iir)
>
> void xe_display_irq_reset(struct xe_device *xe)
> {
>-	if (!xe->info.probe_display)
>+	if (!has_display(xe))
> 		return;
>
> 	gen11_display_irq_reset(xe);
>@@ -271,7 +275,7 @@ void xe_display_irq_reset(struct xe_device *xe)
>
> void xe_display_irq_postinstall(struct xe_device *xe, struct xe_gt *gt)
> {
>-	if (!xe->info.probe_display)
>+	if (!has_display(xe))
> 		return;
>
> 	if (gt->info.id == XE_GT0)
>@@ -311,7 +315,7 @@ static void xe_display_flush_cleanup_work(struct xe_device *xe)
> /* TODO: System and runtime suspend/resume sequences will be sanitized as a follow-up. */
> void xe_display_pm_runtime_suspend(struct xe_device *xe)
> {
>-	if (!xe->info.probe_display)
>+	if (!has_display(xe))
> 		return;
>
> 	if (xe->d3cold.allowed)
>@@ -324,7 +328,8 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
> {
> 	struct intel_display *display = &xe->display;
> 	bool s2idle = suspend_to_idle();
>-	if (!xe->info.probe_display)
>+
>+	if (!has_display(xe))
> 		return;
>
> 	/*
>@@ -333,7 +338,7 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
> 	 */
> 	intel_power_domains_disable(xe);
> 	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_SUSPENDED, true);
>-	if (!runtime && has_display(xe)) {
>+	if (!runtime) {
> 		drm_kms_helper_poll_disable(&xe->drm);
> 		intel_display_driver_disable_user_access(xe);
> 		intel_display_driver_suspend(xe);
>@@ -345,7 +350,7 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
>
> 	intel_hpd_cancel_work(xe);
>
>-	if (!runtime && has_display(xe)) {
>+	if (!runtime) {
> 		intel_display_driver_suspend_access(xe);
> 		intel_encoder_suspend_all(&xe->display);
> 	}
>@@ -358,7 +363,8 @@ void xe_display_pm_suspend(struct xe_device *xe, bool runtime)
> void xe_display_pm_suspend_late(struct xe_device *xe)
> {
> 	bool s2idle = suspend_to_idle();
>-	if (!xe->info.probe_display)
>+
>+	if (!has_display(xe))
> 		return;
>
> 	intel_power_domains_suspend(xe, s2idle);
>@@ -368,7 +374,7 @@ void xe_display_pm_suspend_late(struct xe_device *xe)
>
> void xe_display_pm_runtime_resume(struct xe_device *xe)
> {
>-	if (!xe->info.probe_display)
>+	if (!has_display(xe))
> 		return;
>
> 	intel_hpd_poll_disable(xe);
>@@ -379,7 +385,7 @@ void xe_display_pm_runtime_resume(struct xe_device *xe)
>
> void xe_display_pm_resume_early(struct xe_device *xe)
> {
>-	if (!xe->info.probe_display)
>+	if (!has_display(xe))
> 		return;
>
> 	intel_display_power_resume_early(xe);
>@@ -391,23 +397,22 @@ void xe_display_pm_resume(struct xe_device *xe, bool runtime)
> {
> 	struct intel_display *display = &xe->display;
>
>-	if (!xe->info.probe_display)
>+	if (!has_display(xe))
> 		return;
>
> 	intel_dmc_resume(xe);
>
>-	if (has_display(xe))
>-		drm_mode_config_reset(&xe->drm);
>+	drm_mode_config_reset(&xe->drm);
>
> 	intel_display_driver_init_hw(xe);
> 	intel_hpd_init(xe);
>
>-	if (!runtime && has_display(xe))
>+	if (!runtime)
> 		intel_display_driver_resume_access(xe);
>
> 	/* MST sideband requires HPD interrupts enabled */
> 	intel_dp_mst_resume(xe);
>-	if (!runtime && has_display(xe)) {
>+	if (!runtime) {
> 		intel_display_driver_resume(xe);
> 		drm_kms_helper_poll_enable(&xe->drm);
> 		intel_display_driver_enable_user_access(xe);
>@@ -441,7 +446,7 @@ int xe_display_probe(struct xe_device *xe)
> 	if (err)
> 		return err;
>
>-	if (has_display(xe))
>+	if (HAS_DISPLAY(&xe->display))
> 		return 0;
>
> no_display:
>-- 
>2.46.0
>
