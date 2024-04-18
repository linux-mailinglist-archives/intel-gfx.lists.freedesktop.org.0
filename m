Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D83E8AA30C
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Apr 2024 21:43:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7DED113F66;
	Thu, 18 Apr 2024 19:43:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MQPAMZha";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A01011139DE;
 Thu, 18 Apr 2024 19:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713469395; x=1745005395;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=MVwLsOfbOt7+MtTpIqsqGOCHP414eP9G20SRLQdyasc=;
 b=MQPAMZham5lOMuxJIaSsrM7ZzOSajHcMiLP1jSoNQz4u6j4c3M4jd9kw
 p91PwmTT8gMFWE00HATvUmuVzLsj3xewMk1omcf8zgJKRAnoh7YXBRaR+
 oQKNSF+1Lwu0KA8L5SPKyV3hECHIpAMBje60prVIThtjRu0Psg0YerN4u
 lPpe59Zd+qTs44cA3MPBfQ9Ua/zmxg5nzjhCVLpWb+PcQqaeww0DNFWGg
 38xLTdbWXj0vg0GqY8qwTooPuRTVbOU1WtBfodvdRJR0bGTzfqEru5IRQ
 VJjTRAX+fQbtxbQqFGQwVCcAxH0YmpaItdVbgMcYGDeiwX2uROU+XlHHU g==;
X-CSE-ConnectionGUID: s8LFkiLYSD6v29RMpwGQYw==
X-CSE-MsgGUID: INGV3rAgSAaa0GwSzsamsg==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="8912837"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; 
   d="scan'208";a="8912837"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 12:43:14 -0700
X-CSE-ConnectionGUID: G0q4PAOcQ+mcsJlm7BJ9Gg==
X-CSE-MsgGUID: Ggdx2WfkRr6SmTPWeEduEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="27717301"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Apr 2024 12:43:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 12:43:13 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Apr 2024 12:43:13 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Apr 2024 12:43:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gz77opFSMelLez6GaHoLVyTRjn7TO2YJWeocjJaO/k0iI6b3JIM2s4TBfh1UTZNYWwk6zvkTd3p/vAgS4LKcMl4bdDnmN9jcitCIDcCSv+8BFaDhQy+pZwRXT597WOxop2QEsRwfJx2eqSVJNDHI4Z4YJ8GNePvEMPiTA0VZ41pFOfJQcRtEa08AI7uDI3pCEIono0Pxd/hUikKE+voOvUAiYsQNJ8d4GW7rrR1e3qT5PuffftaVM7gYIHutmx7ROSAUooA5rbXDMYhtSlos6WKpLiwFbtoqQsNA+vQezqBN9fppi3Qza9Wy4UY2ngT61ub5cUfG9Fk2c1q3c8/WLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TXciiz7Jj21fg1lZ+kk+pidHcGVYS8A7az7BxJ/bXCw=;
 b=PpD5XCrz9I3yQk0SVfhsxSQVG4CJ6L1kPX6YGwnxB4CJn8o+j+7YAEXZpfgG+f8RKWaC5h8qlEpo+r83T7EOx1m07BiCnprHrryVW2VkgXp1cyh0luSB5TSIYqWaQvdCCIyF26j5h492sf56ozfc+hR2i8QbgnG8gawPLxqBgobBxdnpbNoYRrnQ7aEYsnRvWB5PQU3GVs9nHgqKjoELqYISYvvd69fatXQcw1gU1lJUYd46g4rS5EGMhtMPirUscKACxeEEQg9hdfHfNnCeUGdg1UtEvDR/QyhM/G4+8LXPDjgZhDEqnN00wwRYWbDhTKzHKoPN3IJDNhvcJAM/1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS0PR11MB8083.namprd11.prod.outlook.com (2603:10b6:8:15e::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.11; Thu, 18 Apr
 2024 19:43:11 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3191:4863:ad54:bdb1%4]) with mapi id 15.20.7519.010; Thu, 18 Apr 2024
 19:43:10 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <f34afbeed83f7ab4b6e9bbeff27b1fc9ab9c92c2.1713450693.git.jani.nikula@intel.com>
References: <cover.1713450693.git.jani.nikula@intel.com>
 <f34afbeed83f7ab4b6e9bbeff27b1fc9ab9c92c2.1713450693.git.jani.nikula@intel.com>
Subject: Re: [PATCH 5/5] drm/i915/display: move dmc_firmware_path to display
 params
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>, <lucas.demarchi@intel.com>,
 <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Thu, 18 Apr 2024 16:43:00 -0300
Message-ID: <171346938053.2007.15929125572274587264@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR13CA0139.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::24) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS0PR11MB8083:EE_
X-MS-Office365-Filtering-Correlation-Id: efbf7f0a-b9f4-426c-2a1b-08dc5fdfc71d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: pzDQ3M11wkHID5a+cxTE6O008MBQRyby61CE6NQK6Ybi/nubuJw44IF1hhBdyXgvqsIFxVG5kBiYidMmIg9bmZMLw/NxVuOY5i7OKgeaippjcug2JcWAMi8O81aTN2kwD+8YBABojuCWiRDWbPqdY9km/GA0NYve9fOwy0MYr5v/7VLeOJ6xPRjherwYF9Z/qNzp28qb6CUDgB1cIWe7bRxavrI3Ik4PAcvF53GEx7eKaacAwkbD01IR0p/Im9bi0XlwtgWtcyC80eEdinrO+hzs9eunJLihgewoHYAcQ4Bv+/Nc+Lcb8bn07E33BlddNpoXpAgAj47ZmEnSiCC+dAHRfkug7O4HGP6htloJ161gOo5VBT0DnSxcHqoa9vmPAcKSI0xITURQKnGaavMjZPzHcKkAZB2+X0OB9/Bqu7qTj08jEvQEwwaomSpNw4Cfi1hhIEm2ZOHN0ORNi6DslvUKH/XN8z9JEZTrh7FwS7XRCBPePyKakbUzsGEKxmBKBDEpHyxoxb0PCokxphvKUvMn7rDCWNY490k9IcopivVNO/FLGIxKjU9CelN5oOIoXaGr5KulYNtCK9R7OufQ2gysC0DDrEBtrZJXiIcQ0do=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?THJPaXZ4eHhOTmo1a0VRL3BvdTFKQmhwN1lncWI1MjRnY2ZHcHFqOVpKNHhN?=
 =?utf-8?B?YmhyZ3VidEsxMm9NTkdTdXpxenVHM3ZuN0EzMkRmaGcyS3dRc3JZa1VaSGhJ?=
 =?utf-8?B?dnBrNTV6UmRJenZFbytqWGJMdFB5NkVWYU03bEVaWTdGRDh4U3NOY1g1UHpR?=
 =?utf-8?B?Qkk1ODJFMFdzcVczaXZCYjNqbnhtTDRCejIrb0htT0lqcXN4djUrNFFVOTN5?=
 =?utf-8?B?VnR3RlhtdmY3a2xnVno3Y2hxckFRd3dDS0lPY1JPRlJmeVVSOGZTeEdvMXk5?=
 =?utf-8?B?bmdjWG84NmNQK3NVSHJBcWUxK2VaaFMyOGpkcVh4emlWblRDcnB4S3JZN0N5?=
 =?utf-8?B?Q0NubVJCc01oUFdzcXVrdlBmZWxEcGVRQ3l4TXVraE1ZWCtmT213REN0bVVQ?=
 =?utf-8?B?ZW5ZVDVDY1RkeWIzckJEUUl0U0w0djJFREg1bGFBaEZUb1BWS3hoWm5NdytF?=
 =?utf-8?B?VVRveEJqQ0tvSk50QStONno4ZUtIZW5pR0xrR2FZd1JUcHlXWFRTNCt3bEFu?=
 =?utf-8?B?YWppdndKWWFnWE1lQWdhNEtWSHljOHozNXhzQVh0cmFzY2xkQ2hlamt0YndP?=
 =?utf-8?B?TnJwYm9vcndxSUxWOXEwZ21DWm51Vmhzakc5eGtzdjdFQXdGL2hXbmo0OEhs?=
 =?utf-8?B?d2c3ajFWSiswOHgvdWZtdDF6UWZiTllvdERlTXBoZnMxZC9TWUlqQWZJVkp2?=
 =?utf-8?B?UTh2bi9lVzJ0b2U3WVhxUGRaRjQ4SUVsRzZ6QTNNTFhLbUF3UHUwNnVZcFpX?=
 =?utf-8?B?c1BJR1VSY3IwK1NxdkhxVnlGRGF5OUpVNjFvK2wwUHV5OXNWNXpjNFovNjF2?=
 =?utf-8?B?UHJ3RmJCRFh0MFNFK0hNVUpMcDZiTW1FbVRYdzJ6RVJQSEZURkFhQnI2QjBR?=
 =?utf-8?B?MDR6N0lZd3pEaVF1VDdLaFJESVI4bWNycWpLWlFPYmVqaEhFejh3MS9QZGdm?=
 =?utf-8?B?MENtTjhBY1pVRTdyTkdhdk1QdzZuRE45TUNOZmFZWnF2OUNIZkpkTlFIc1lI?=
 =?utf-8?B?bzUrc1M3TFhkUnBRcDRGTEhhc3NId2dLQjBsOFYwVlEyUURoZ2h0dVczMzlX?=
 =?utf-8?B?aVNNaERsdmZxWUpkQ25YV3pjcWk2WkdqUk41RkJ0dUR6RmowMEdqd1JOWFZS?=
 =?utf-8?B?aFVOVER0cnJ4L255a0lTYTZpQ2s5WWlpd1Zvb3VDbHFBYy9Bcm1CWmswVHda?=
 =?utf-8?B?bkZuN293ZkVBbS9JaDlkRlViZkpOek5zYU1semptYW91dndmTlVIUFlaVC9G?=
 =?utf-8?B?MGtEaXJCREFXYzlEN2NqS1VKMUNBSU1rVEZJZ0xwMVN3ZllUVDQ5M1VLcm9w?=
 =?utf-8?B?U3hJYWNTaFo4dmthcnRLTEtNMEtFbmlpUllyNHZlc20rcVViZHZkaldEZVV1?=
 =?utf-8?B?OGd6U1oxVEN3VFo4M0pDb0pHSVFoaURxd09KTWNVUWZYNGRaNEppYUpSZEVZ?=
 =?utf-8?B?T016WWFzUnlwNkM4ZlJGc0Y5Y2ZzZE8rRUgvSXh3RExPS0dubExabVdyMGox?=
 =?utf-8?B?cmNjZEV1am5WMFVIM1pRbUdXV3kxVWZOenpJNFlOd25LUzRBQTRyRlVoNFNp?=
 =?utf-8?B?c2RtZG1tK2pPTHJCSFdFNVFVNytXMTRqbzRkbE9aYjlnRE9ac3pyVWFmSUJj?=
 =?utf-8?B?VGFmQkZNR1FEbVR6MW9hT0I2dlhjalRvYW1kODFjZnIwYzBaNFZ1bzhMY2RC?=
 =?utf-8?B?amswR1NrVVcrWU80ZTQzUVhmeEV6b3VjTG4yUmxFTG1kY09EOU16a0dRU29Q?=
 =?utf-8?B?dXc5Z1NBNkZXY3ZwRWp4Vk0zVTBFVzBRNGtoUjdHWUpiRWpoRTgyS1ViSnRw?=
 =?utf-8?B?YWduQ3djM1pXT2pTUXp4dUx3WGxWbyszMkZlQmEzeUdaeEY1RnlZSlg1Qnp1?=
 =?utf-8?B?Q1Z2TS80MXpoRWZPcHp4UkpTcUJTazlEaG8zQm1iU1V2aFhRUndyQTJld2ds?=
 =?utf-8?B?SmlQRU5BN2psN1dKTjRlMUNlZVRRSzRxVXVmUnFadm1MOUFwM1Z5M0tuS2JV?=
 =?utf-8?B?N2dSQ0VoOWRYYUREdW5MMjUxRUJXZisvbmNvUXRRN0Z2RlRoaXZoalNrOEtQ?=
 =?utf-8?B?eGlSY3Y0bndBamt6YnVqUnRMZXJPbCtqZ211Wk1TajNuOW5JZ1BEK1EwTHZD?=
 =?utf-8?B?YlFpT2FPa0E5OTNmSEFMUmVzUE11U3QwZW9vNzFSWXEzUzJaUjhtakNISTJY?=
 =?utf-8?B?V1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: efbf7f0a-b9f4-426c-2a1b-08dc5fdfc71d
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 19:43:10.5524 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iItDa1i//X/K1jwjW5Ori2F8Skc2WF7i/FVLVx+ER/A5DdemcvGCB/TsWOKoBQRm4gMqLP9ELdmFPesTJwsvIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8083
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

Quoting Jani Nikula (2024-04-18 11:39:54-03:00)
>The dmc_firmware_path parameter is clearly a display parameter. Move it
>there so it's available to both i915 and xe modules. This also cleans up
>the ugly member in struct xe_device.
>
>v2:
>- New try with the NULL/"" param value issue resolved
>
>Link: https://patchwork.freedesktop.org/patch/msgid/20240321161856.3517856=
-1-jani.nikula@intel.com
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/intel_display_params.c | 4 ++++
> drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
> drivers/gpu/drm/i915/display/intel_dmc.c            | 2 +-
> drivers/gpu/drm/i915/i915_params.c                  | 4 ----
> drivers/gpu/drm/i915/i915_params.h                  | 1 -
> drivers/gpu/drm/xe/xe_device_types.h                | 3 ---
> 6 files changed, 6 insertions(+), 9 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/drivers=
/gpu/drm/i915/display/intel_display_params.c
>index f40b223cc8a1..ddce5a2c53d9 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_params.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_params.c
>@@ -27,6 +27,10 @@ static struct intel_display_params intel_display_modpar=
ams __read_mostly =3D {
>  * debugfs mode to 0.
>  */
>=20
>+intel_display_param_named_unsafe(dmc_firmware_path, charp, 0400,
>+        "DMC firmware path to use instead of the default one. "
>+        "Use non-existent file to disable DMC and runtime PM.");
>+
> intel_display_param_named_unsafe(vbt_firmware, charp, 0400,
>         "Load VBT from specified file under /lib/firmware");
>=20
>diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/drivers=
/gpu/drm/i915/display/intel_display_params.h
>index bf8dbbdb20a1..1208a62c16d2 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_params.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_params.h
>@@ -24,6 +24,7 @@ struct drm_i915_private;
>  *       debugfs file
>  */
> #define INTEL_DISPLAY_PARAMS_FOR_EACH(param) \
>+        param(char *, dmc_firmware_path, NULL, 0400) \
>         param(char *, vbt_firmware, NULL, 0400) \
>         param(int, lvds_channel_mode, 0, 0400) \
>         param(int, panel_use_ssc, -1, 0600) \
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i9=
15/display/intel_dmc.c
>index 3e510c2be1eb..175669f7d61d 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>@@ -75,7 +75,7 @@ static struct intel_dmc *i915_to_dmc(struct drm_i915_pri=
vate *i915)
>=20
> static const char *dmc_firmware_param(struct drm_i915_private *i915)
> {
>-        const char *p =3D i915->params.dmc_firmware_path;
>+        const char *p =3D i915->display.params.dmc_firmware_path;
>=20
>         return p && *p ? p : NULL;
> }
>diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i91=
5_params.c
>index 9e7f2a9f6287..8c00169e3ab7 100644
>--- a/drivers/gpu/drm/i915/i915_params.c
>+++ b/drivers/gpu/drm/i915/i915_params.c
>@@ -108,10 +108,6 @@ i915_param_named_unsafe(guc_firmware_path, charp, 040=
0,
> i915_param_named_unsafe(huc_firmware_path, charp, 0400,
>         "HuC firmware path to use instead of the default one");
>=20
>-i915_param_named_unsafe(dmc_firmware_path, charp, 0400,
>-        "DMC firmware path to use instead of the default one. "
>-        "Use non-existent file to disable DMC and runtime PM.");
>-
> i915_param_named_unsafe(gsc_firmware_path, charp, 0400,
>         "GSC firmware path to use instead of the default one");
>=20
>diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i91=
5_params.h
>index 1315d7fac850..2eb3f2115ff2 100644
>--- a/drivers/gpu/drm/i915/i915_params.h
>+++ b/drivers/gpu/drm/i915/i915_params.h
>@@ -51,7 +51,6 @@ struct drm_printer;
>         param(int, guc_log_level, -1, 0400) \
>         param(char *, guc_firmware_path, NULL, 0400) \
>         param(char *, huc_firmware_path, NULL, 0400) \
>-        param(char *, dmc_firmware_path, NULL, 0400) \
>         param(char *, gsc_firmware_path, NULL, 0400) \
>         param(bool, memtest, false, 0400) \
>         param(int, mmio_debug, -IS_ENABLED(CONFIG_DRM_I915_DEBUG_MMIO), 0=
600) \
>diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_=
device_types.h
>index 60ced5f90c2b..c70047762222 100644
>--- a/drivers/gpu/drm/xe/xe_device_types.h
>+++ b/drivers/gpu/drm/xe/xe_device_types.h
>@@ -519,9 +519,6 @@ struct xe_device {
>                 unsigned int czclk_freq;
>                 unsigned int fsb_freq, mem_freq, is_ddr3;
>         };
>-        struct {
>-                const char *dmc_firmware_path;
>-        } params;
>=20
>         void *pxp;
> #endif
>--=20
>2.39.2
>
