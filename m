Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67B9A8A710A
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 18:14:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B392112D44;
	Tue, 16 Apr 2024 16:14:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MEDrNveQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D86B10F15A;
 Tue, 16 Apr 2024 16:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713284067; x=1744820067;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/J5vhxDCKgJM8JPo/baRRuOw1u9ENX8lhX6Lsea8oq4=;
 b=MEDrNveQWAcCTjt3sQ57vAZthJqUfwmrZF4OvBqrntZ8reNBTPnsfoig
 P5Mh7ZDRHocTja7zUVmnkC5rzvajCTOdkEgt0hJPsYRCOO9VwXXTzERyx
 v8U2vl/VnUG6UBfWkdOZFjJmdV4+ClGaq0WVP4tF2zymwXpz4MUIOPwa7
 53TTqprzUfFTOBR/Y1xls2lvvp0/Wkji1bHhxLgKH/7sRVsdZfAqFcP/D
 MBoCSrEPkGKfQE+MM44yQm097s0SCOVCqTl00Z9YuKvdWU8BjrtOnJAhA
 ijHMf+7VipqVKXhwqG88K41lZGzcvpaCT40EuvuXexjw+BrBm0FSBDox4 A==;
X-CSE-ConnectionGUID: DkQfJQB/TSC1XV34qg6bRA==
X-CSE-MsgGUID: RFMstUcGTuWHwnBOyHg5QA==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="34122820"
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; d="scan'208";a="34122820"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 09:14:26 -0700
X-CSE-ConnectionGUID: MFzt2I+aRGaGbJ4PCzvWuw==
X-CSE-MsgGUID: eYs00mzxTiuIgPOkUly2gA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; d="scan'208";a="22373447"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Apr 2024 09:14:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 16 Apr 2024 09:14:25 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 16 Apr 2024 09:14:25 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 16 Apr 2024 09:14:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JNIqqKKOw0KTf8uf8/BpWkiplX+63Jyw9/IpSjG7MnxkO+5ETvGALMSaDfBMtqBOgphFY4hQJtsu7dP57pjltFH6Q3D1pTbE/Oh4wBRp3+3djwJmLhOIk57N4u+1inWv8Qt2dbXBlGGSHm16sSugYHEhKxRCntzv2fk/CZ6LIh3TnZDsiQkZ9PH2BySYo/8To1jHvYZ43URRa7SWy3G0rMBM8D2XLGViH/pE4xI0ab/p+cFQl78yztTEmfkDsS58GtF/oqTohom0LdFhKrFRlFeaDqoikhnXL0y7j4l3zvsABFOdO2xQVUDGvY6+iApbQXxZCE1X/iUUJuusKBDPYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2xq0BAH9NYaYktlLlDrxksqWQzNan5x0MyN4mOO0Pgw=;
 b=kJE4aN1vUv6RFYIdVdMTIwn7kgKP8DJqPjS6YmK8KQuTICDt19k+MiLdRbghgrLJx9bT3Kcz+hFxZNvTEcDdjvxNevITgWLV+5G2wd2lgSrxNBD3529gsLj5jFTgVV3O0J5DDOZShHm3WmBcrvfY0NABCzwM0dl9xmQqVgJeMX+UjKIAResR/UuKEo5gzG+Zp8oFlFJi3/3LxjDno2aTFDCW8k12o+8LNGbLNi7lky23ZB8KgTnGuFqkXsnR26WSUqpiz3lxxk4MCO4HO2elZ/QbQmBFHq0RFC0ky9CeDagQXjzJwvg4u6GmF5FIRzSGb7cojpKn7pMUPf4xhDRBnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6053.namprd11.prod.outlook.com (2603:10b6:510:1d1::8)
 by PH7PR11MB8034.namprd11.prod.outlook.com (2603:10b6:510:247::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.50; Tue, 16 Apr
 2024 16:14:17 +0000
Received: from PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::9461:3f2e:134a:9506]) by PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::9461:3f2e:134a:9506%7]) with mapi id 15.20.7472.025; Tue, 16 Apr 2024
 16:14:17 +0000
Date: Tue, 16 Apr 2024 12:14:08 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <ville.syrjala@linux.intel.com>,
 <joonas.lahtinen@linux.intel.com>, <tursulin@ursulin.net>
Subject: Re: [PATCH v3 5/7] drm/i915/display: accept either i915 or display
 for feature tests
Message-ID: <Zh6j0OFxODBBDp2j@intel.com>
References: <cover.1712665176.git.jani.nikula@intel.com>
 <31d28ef1952d516c737af7b198c6008fe3aece2e.1712665176.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <31d28ef1952d516c737af7b198c6008fe3aece2e.1712665176.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR21CA0009.namprd21.prod.outlook.com
 (2603:10b6:a03:114::19) To PH7PR11MB6053.namprd11.prod.outlook.com
 (2603:10b6:510:1d1::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6053:EE_|PH7PR11MB8034:EE_
X-MS-Office365-Filtering-Correlation-Id: a4f711eb-354d-4036-5915-08dc5e3043aa
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: I0jYiWBxZvX5uFU8x7IJBxJFgFSpSEF/SMclOKs2uaYWwl4cTFx/zdh+wYRGr0fLI/v55oXCFeRDeZUmieR4vHsMe42FG22ZmrLIfCtT34ImTlbRk/vAfT4foFep5GaAd/AoJPXzPQEwUzEoUSilhxpQGwAnFWqKgzJCLd2UVVal6wPUew4OtJjXK3i+EAaDjJ0FyQCWQFPIjJaJkAeGGQ6bAaI9WgqbHtW/tkVVaz8PWFh+0L8/S9+FFqFzTkACKmeAFf4728KID2s201Y6tx+WT/knOdC159lxefJi9gBjiZ2E6PZ6sSF1G9P0RA3Y/ecM+3w+SH3f6taBB1m+pgciysTKBQadADSy0VzdPaisbUMjv/bcLizobn/2sEj7mF2J4OppVQDDNlkufO5sH4VDD7OWZapqCIaD61kc3HkBFdahoCoF6I0EtrV8tjoDeCSUAdhQ+wky33nCQhZ5ySiJvYoWBjtdyWoI0OwDH0BSaBRAEbnGbUcz5MuSiSEfZyd/IJO895Z3WsiaB/UJ7c2EGyd5FiD+nqMceuwBRpx/0gxqyXhPBkgtc8FCyid/rCFS83HWwPpM5ybE9IKc1fj+y0+vClrrOr6KoYs6kVEOBj1zEiFAPAFTkWkNK1hd0YjmwkCUthdUdyp5CZcZW6sey0jDOZqsz1i/fRmBtjU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6053.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?10IxFmo4FbtDfglyqEJLWQWEfRz1OVfbyHGZ8rjT3iM38/NlGBHnUN8orxlM?=
 =?us-ascii?Q?IH8eLzNjekdgJggYqXB0ZC2hKXj11tgWG+qtc9WT2uKIThrzZ3nqfVT9gk+L?=
 =?us-ascii?Q?cm5vl0bNlE6DEvbczZzZJAm75u7C9wwu0GaN+LFGK27L8pEBw+BSe2vUQf62?=
 =?us-ascii?Q?FuDsqP1gyu/qQKtLKRoH6gemkA2vr5r3TRrcoGSR3p7ANPzmToBiMd+5cmqu?=
 =?us-ascii?Q?wAKCnuYFjGw8fW5aardCiQYdzNzrS7xaV1GfojV37TFs/4OZT4K9+giKMQBN?=
 =?us-ascii?Q?FbNlj/RCC6v2x6NDi7OdsgWhD7Ao/GS5X6KFwApsoaxOTQt5JExNxxnRUTts?=
 =?us-ascii?Q?XhrEJlhFMChTV+w7tC+CcNxk2nNCUcUHRU014j5qAIzA6QzL9EArykvlue01?=
 =?us-ascii?Q?zFYNpIbp+DNxikm7CWRdrtrcwl92gs475iYROaVQJJI0ctzxYfle9UaF3wvY?=
 =?us-ascii?Q?lUA526Q8c8MZ7+KEKZZZFkNWn7I6p/lm6KrbF9BP5umo4+pqysAqlLx/Bk7t?=
 =?us-ascii?Q?867abgOJtpLBj3AP9JEna3kIcwS4+PBX16+OYgCd08QCGf711idl5I/skKSt?=
 =?us-ascii?Q?EbehHctZJM93fm54d7C/3prfb+kOe8AFlEhTp2cGJE1ksC2mASfVdyPNs3I4?=
 =?us-ascii?Q?dTqZV8oJICfjarrzxVtGclVpoRsM24OEYnvnORifM5IqkbEGYW2coD8FOLEq?=
 =?us-ascii?Q?bhcp3hSLaTFg8MEKUBnzfslDvDQgtbNzNOhwC95FTl5gAa0mBn4nJxNl7wbn?=
 =?us-ascii?Q?1/VksW6CwbalZpMkytLAR76XzKXWmuuXR2WE1kyMQef3CPX82GxPlNQScNG7?=
 =?us-ascii?Q?ROKyxYADY18Q656v4W+te5g08BEnevq7na+Pvijc0ESRvYSW6nzC369KTsgh?=
 =?us-ascii?Q?nUrQ3MFvB14fLPMquiHpqYhq+/gxYy8LSPbxbFjo4tikNzRyxtgtRHBW+p/W?=
 =?us-ascii?Q?5WQEu7Z07G/peGM/Q/HiMHSUAm9KdDfBpw7kOyQ5TriNKgLFZD+2OjjJXHr+?=
 =?us-ascii?Q?t5c5iej2RQKGECbN21evWhlKAzKo/y9i+VjW5MIbtoxJ6zNucpXEp307BxCh?=
 =?us-ascii?Q?0gH9+dp9CUAFQ33Ft36t3TB3ckXP7/RdhFYQ9SRNv3x6HS3K3Bz4B6dMGOV+?=
 =?us-ascii?Q?366rzQL2yJJccag7wIUT/04l6+oHDUfyGkv4qjiCRhpuiyS3oy1QZxFZaobO?=
 =?us-ascii?Q?kt9lBIXRE+2e11OiG4Vm5L1AODL4Icj/30R9e1OahtYDEmwI+/HgAcDAxHcS?=
 =?us-ascii?Q?AeZerjMe0ozDWMvswfMRX4iEgdMoJsR/NRnYTbmGoU0UhRMUUqfSlfnLMLs5?=
 =?us-ascii?Q?8V8WBdxbbIWhzfM+EwjlkPTnN3vwYNVsCHzfJCLxggAbK6iBDBcFFEy+a+pJ?=
 =?us-ascii?Q?Zfp7mKlPJXcQ08nXqxtagDAoxtaWlMw28AZ1nzcFlOG9A0Uzk+TN1tS4vwtE?=
 =?us-ascii?Q?ClDZ+t9X4NOPSAZtz2xJcFVCyTBYy+3CGT1n82gz3OhqvWi4RC9A+p8YYVCr?=
 =?us-ascii?Q?IpzL5V8zzqFUrthRMjf1EG2Wp5TlS20Id8pzjKh1FPGXf0kqwM1I6s4NjEzp?=
 =?us-ascii?Q?LLDblEUen08vpUoG123S0yqG+IhbxOXK1uOKE9nvofTx/63IyF/upcqm+Mn9?=
 =?us-ascii?Q?LQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a4f711eb-354d-4036-5915-08dc5e3043aa
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6053.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2024 16:14:17.0368 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ckt3BYc1/YozP58bjUSqlMfs8Osy2NdCE9c76sYDuVouHwZWRlvpnd1HnupvUi2+4XEam22kowBCNCITJ1TPmA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8034
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

On Tue, Apr 09, 2024 at 03:26:47PM +0300, Jani Nikula wrote:
> Use the generic __to_intel_display() to allow passing either struct
> drm_i915_private * or struct intel_display * to the feature test macros.
> 
> Unfortunately, this requires including i915_drv.h in xe display
> code. This is still better than polluting the main xe_device.h or
> xe_device_types.h files with the __to_intel_display() macro definition.

what about just duplicating these 2 lines in a compat layer
(perhaps a new temporary one?) and the only including that
instead of bringing it entirely?

or what else wouldbe needed?

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_device.h | 4 ++--
>  drivers/gpu/drm/xe/display/xe_hdcp_gsc.c            | 1 +
>  2 files changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 66b51de86e38..01c6a4bef179 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -100,8 +100,8 @@ struct drm_printer;
>  	(IS_DISPLAY_IP_RANGE((__i915), (ipver), (ipver)) && \
>  	 IS_DISPLAY_STEP((__i915), (from), (until)))
>  
> -#define DISPLAY_INFO(i915)		((i915)->display.info.__device_info)
> -#define DISPLAY_RUNTIME_INFO(i915)	(&(i915)->display.info.__runtime_info)
> +#define DISPLAY_INFO(i915)		(__to_intel_display(i915)->info.__device_info)
> +#define DISPLAY_RUNTIME_INFO(i915)	(&__to_intel_display(i915)->info.__runtime_info)
>  
>  #define DISPLAY_VER(i915)	(DISPLAY_RUNTIME_INFO(i915)->ip.ver)
>  #define DISPLAY_VER_FULL(i915)	IP_VER(DISPLAY_RUNTIME_INFO(i915)->ip.ver, \
> diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> index ac4b870f73fa..54314760f47a 100644
> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> @@ -19,6 +19,7 @@
>  #include "xe_map.h"
>  #include "xe_pm.h"
>  #include "xe_uc_fw.h"
> +#include "i915_drv.h"
>  
>  #define HECI_MEADDRESS_HDCP 18
>  
> -- 
> 2.39.2
> 
