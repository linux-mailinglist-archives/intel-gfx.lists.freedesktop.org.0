Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3736A5E475
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 20:32:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4235C10E174;
	Wed, 12 Mar 2025 19:32:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MVetsZvL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2C8310E174
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Mar 2025 19:32:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741807960; x=1773343960;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VFajrQC2Bf1pSa1Om7S8/97PnWbmDTjl/fQBrU3i4+o=;
 b=MVetsZvLCx7r7f9mnXIBFgOAjqUpC8iCb6heHlUQN9hgXBWshIH2xbrQ
 x3rPgblfU0miK9xZuinrBIb2zQTL8pKDGPx7YgJN2OA5N7g0vC56sVOTS
 DFoYdoG5sq5PQW0gjG16torcuzpK+L5IHrCxVppd6NLXv24GDtRACemWI
 +ckJPPD3YT+4AB0OVHo9ayMvoXV8hFXPD/aWvOYHcDSii/fHfCk5ah7gc
 KlF2twUslUNyOzaq/KtawA5t2vSKq2L8EMWMOWRAX6NNd7WrFKcjayZch
 F3ceHcKoFwEouRI/4dKtiQJbAcDp3+dHUmh29alIK6pt8wdEc6dwibMSt w==;
X-CSE-ConnectionGUID: Y7GjtBPRRdqxLbWSrQYDeA==
X-CSE-MsgGUID: FMuc99DwRh+jNdrrQtfbvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="45679978"
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="45679978"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 12:32:18 -0700
X-CSE-ConnectionGUID: KRDk6bQDSH+mEuEUfK7rcw==
X-CSE-MsgGUID: 7XoeTwdqSOuyoQWX7URGHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="125615107"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 12:32:19 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Wed, 12 Mar 2025 12:32:17 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 12 Mar 2025 12:32:17 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Mar 2025 12:32:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R4NhkBVyUiAlLY7ZAt9cKoyBn5hTGYmqhvLevHdMDqiq2tU8pKUXPth19ZNAmtZtzpj/lpaNny5Di8BeOQ/syR6My43Y3Jn5lPLJN8KNhFFQ/3LyK0eh1ygzi6P2zRVrOP5HiheBxTEIV277OFDxLM9+OCd9ZPPHv1yNwAojtIrmdbrmxO8GwCzBp6VmgkSWW3jfB30zpd51ipsbjrUrXg4xfBjUbODi9ktN2+EKJYKtle2U4sHTKJI98MHbgRaq5YVpoxo/Pytv+f3Xeu5mu0BnfvxX5b8eqQFVw3P6SntvrNDLUgEwszbLBORlnUhfqsaUmdAfqEbBaeses6emsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=41c2wQBH/w21eJ+rsfJki+0sBFTbA9+cnkGggnp/cyA=;
 b=E0EuL8hcnJkYC0I2S5VZMpGG9pkc67JJRx69dRqG+qThOrTDPk66DiJO0ff04cPCqJzNK/z6GBbO4NcK0qlnXwXNaEerH6rfYZORgyFldB+1ykP1aL2aTmrdKoq95FOl4epIM6nStDms/OzXpHP/Jy+ckFVYA9T9GupK5vNEv6yD8luTgflwlma+o1zo44bSb1uA/zue/yuBiqx5j3DxeDX6nlDBxGIX+YjGxdetzvs6qGZwhuqO0IsHApIIxHnY/7QyQzDACKEQ24b2nPLmET96n8/6/8MOJlhY+nixaO/+G5GHLYUZ6GsRSkf07/QJeMy6La2zHitW+XWRPyS3HQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB4738.namprd11.prod.outlook.com (2603:10b6:5:2a3::18)
 by SN7PR11MB7973.namprd11.prod.outlook.com (2603:10b6:806:2e6::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.27; Wed, 12 Mar
 2025 19:32:15 +0000
Received: from DM6PR11MB4738.namprd11.prod.outlook.com
 ([fe80::7064:9c9a:d2ca:c6a1]) by DM6PR11MB4738.namprd11.prod.outlook.com
 ([fe80::7064:9c9a:d2ca:c6a1%5]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 19:32:15 +0000
Message-ID: <040232c9-1928-4324-a05f-07a879848734@intel.com>
Date: Thu, 13 Mar 2025 01:02:09 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5] drm/i915/dmc: Create debugfs entry for dc6 counter
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
References: <20250203085613.236340-1-mohammed.thasleem@intel.com>
 <20250312144310.7610-1-mohammed.thasleem@intel.com>
 <Z9GjYgbLPQA0ZM9b@ideak-desk.fi.intel.com>
 <29cd2d2d-5c10-4188-82e7-be83590426a1@intel.com>
 <Z9HXKtt30--kwB2Q@ideak-desk.fi.intel.com>
Content-Language: en-US
From: "Naladala, Ramanaidu" <Ramanaidu.naladala@intel.com>
In-Reply-To: <Z9HXKtt30--kwB2Q@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0P287CA0007.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::18) To DM6PR11MB4738.namprd11.prod.outlook.com
 (2603:10b6:5:2a3::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB4738:EE_|SN7PR11MB7973:EE_
X-MS-Office365-Filtering-Correlation-Id: 95805d06-bf24-45fe-7b22-08dd619c982f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MFdqalpxYXhTSHpmU0FIeHFrV1VkWTYxTEo4clhPNUt6ZmZzZG5FZ2dTSEI5?=
 =?utf-8?B?WVRXNEhVOG9vejdaVWQ2bmlEM0pvbkdZb1Z1MmVWaTM5OExsb2Jvb0dnUTA3?=
 =?utf-8?B?NGhxNVdQaWMxeFYxbEYzTXZPMVozSUVUTTA3eGtjVTcwQ1ZlSml5SWhWQXBk?=
 =?utf-8?B?K0drcFhWcWdVa015eVdxRysyRlY1VG1tdFMzbHBEa0RJOWxuOW9BL2MyakxI?=
 =?utf-8?B?cUUyVzQ0ZGgyOGkvb2RJQUxENHFPY1FJb0JDU0N0SG8yUEF5bVRPY1o4d3Uy?=
 =?utf-8?B?ZjRlOXNQUmlIblAzdTY2Vld6cm5Za1JnRVBwc1hBOSsvVjVvTDg1VnpobDRu?=
 =?utf-8?B?bGFFVUlXeFNRbFNiZkVlakY1TFFjck5rYnVjZGFFWks2c1Zicktxd01oOWNI?=
 =?utf-8?B?RnBKUW5WUnJ5SFhPbThlWC9ZRUxzb1A5TnhkU2NaVzdXSisxTU1yVlY4akxG?=
 =?utf-8?B?L1l5R0RPT2xRcTE0N1V0T2wxeHJlWjBISGx4clpFWlZyMUpJdXRsNnlVaVR4?=
 =?utf-8?B?dW5zbWlBTnh1M0ZNRGo1TFNtMDdqOEJ5UnJUM1dXa2ZnOXhWVmZvY3Rnck91?=
 =?utf-8?B?UnF3V3YwOFBEbHdUbnU0SzZreGJIV0JRQklaUnNIWTB0a1hIVFdvclZSVkUv?=
 =?utf-8?B?V1lLT1hPNXNVeXJpam5tN0IvUkR6VW8rd1UvOWxMWGVzUmhkSk9FSTRxYWQr?=
 =?utf-8?B?V1A2NUIzVUg4dlVEMXEybjBhQk5zQTBaVTZKYUw2VmE0R2tTSzN3NVBYOVds?=
 =?utf-8?B?TEtLZ3JBelN0MHBQSDRLNGtwWW1SeUhGSHF1b3lIYVhyRmZyVUZkNnk4Ymx6?=
 =?utf-8?B?NHRVR0NQRW16WFE4a0xoZ1lpQTRhT09CRDY1V1dnOXZFRWF3ZERwYzRldWpT?=
 =?utf-8?B?dEMzTFV2cUFVR2M1dTN5Ui9QSHh1akZlamRJd1B0Q3RWVkIyMjFyVUNESHV5?=
 =?utf-8?B?a05BVnV6OFFuUU10MFVnbkVOZllQblUyQWRZU3R0MzZHa1ZyYXdUN0YrNGZu?=
 =?utf-8?B?b0MrcGtLcVJyZDZnR0NxVW5EL0FKRllJWm8rcFFaSnJDemkzY3JnNE93V1Vt?=
 =?utf-8?B?TDFuRTFrM010OVRMQm56WFI0QVFvcytlaThQcUd4L2UvdEVsT3VyZDc0WVBq?=
 =?utf-8?B?c3pBeUV6U2dSR0k3NVNXUzQwNE1ZVzhlZi9LejIzQ0oydS84cm50TUYzQU1q?=
 =?utf-8?B?ZTVnd01vYlQ4WlJ1L0I0WDhOV3VFZG9kVktDVHQ4Mm1TT1IrOVJpaFFhbGpV?=
 =?utf-8?B?Y3haYjA0NXgwZHpDQzd3NFVvOWx0NnY5VC90dmczdWwvM1orMnRCZ2swYXNl?=
 =?utf-8?B?M2ZXODcxWm9TU29sQ2FZRmVQVUdOUllTWVF6NlZKcHlvSzRiTHhLZk1tU0VZ?=
 =?utf-8?B?ek1IVEhoaVF0QU5iV2dGc0JHNXcxaklnYlJic3NRR0lYQmxzRGJYTG9YNFRO?=
 =?utf-8?B?aVNVQVBMZnFmenpDTm9CWmpyNTllQmxGWVBjWURVOHh3NXZnUmY2SjVNRjdk?=
 =?utf-8?B?M09GbXN6VWFmcEw1TWdIbERKUDVPb0lNZGluRlhWSHBpUzV1cEFCTG9ZNEVQ?=
 =?utf-8?B?aUFnMmV4OU9vekcyaXozcHpWdTJzelVVeitjMXd0dDByaktNZENvTlhSN0FL?=
 =?utf-8?B?MFhDU2RQNWY1Mld0ODduQ3p6MjJjaFQ4NzdEYWxubllTSWRxcGd5a0htZTZj?=
 =?utf-8?B?RjlEcCtlQlNENlE3S3dBc01EWHJGNityUjgyZlJKa2U2Mm1CaU5ITmFCUVF1?=
 =?utf-8?B?WFIwOXdnMUVnSUhqTDJlWFgvYkVYK25zS1Q5dTkxVjVUdkQvd2l0MXRRMjFJ?=
 =?utf-8?B?cEpzQ3FKbFF5SjlXaVEvQmVNbVQ2RmVuV1cxNjVISTBNL1U2Z1JOd3h0VHFQ?=
 =?utf-8?Q?oOfsAPXhfGLFC?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4738.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z0VkYXZaRHFpaUoveHlBQ250NTg4K09HeTNsenBTV3BJQnBKMFJNQVI1ZDRm?=
 =?utf-8?B?aDZzQjhoWUZ6MDR6Tld4Y3JlWGhHMlNZalMyalBTUUdJNmlDOUlVOTdxYjlu?=
 =?utf-8?B?eTh3S3FnWEtBUldWN0o3eGJHcEQwRTA1RG1CdlFYRWI4c0k2L1Jsb0xLRkUr?=
 =?utf-8?B?M085STl6ekR6MDF3N3ZjMXY2TlBJeDhnZlBGa1lidFY4T3BlSG9jRU9NN2NK?=
 =?utf-8?B?Q3puWGczMHdjOGIzN25yV1M2RDdXdFB2UEF0dHBiNjRYYWJxZnc4dlNvL1Q5?=
 =?utf-8?B?amFvRGc4TnBQbXQweDR5bkxBQVhBZWdwNTE1OVVpRGY1dUNnK0loVWU5RUpp?=
 =?utf-8?B?QnNVa0VJekQzdUhyYkcyRyswc1VJQTRaRnBYOWVvZ3NzZnQyQlYyR3FwWkZN?=
 =?utf-8?B?cEg5K0dhaEl6QjFGb0pYV2NQYkdVL2VEUkRuM21XRnNjVDIwbkpxTjIraVFC?=
 =?utf-8?B?ZG11VzV3S24yaysvaWFFVG5nZXJlQ2xqYk5STUU0b1d4M3NjQytJYmE1dkVJ?=
 =?utf-8?B?ekZONjBRQXo2M0VVenc0eElGeU02UXlDVmJFNnQzTmNvNU5wdFlOT2RLWFRZ?=
 =?utf-8?B?cFZoUERKUXlJTWt2MUdXdENSVFBnbHZ4b1YrTU5YZjU0T3BkRnNmL0M5REdk?=
 =?utf-8?B?ZnVYVWM5czNXY0xxNEZrRWM2bkJGV01iWUJWMkowRHZnZEpPQXhaQW1aVEpT?=
 =?utf-8?B?dmZVaWIzYTY5dFpHQ1FuS3AxNXZPamhSS2NjZ0hNVlo3MTRWNTlDbjQwa2lZ?=
 =?utf-8?B?dFdLSlRjaG82Y3FTdzlGL2kwbUFuTzJsaElUcHh0aDRIdzVGaXhoL28zZ25D?=
 =?utf-8?B?b2tlWjJ1aklwdjdJcklOT2JyS2U0VHZOV05PeHl5c3AzSnAwOGVha0pMQVJB?=
 =?utf-8?B?U00wSTJNY0UyeWY5UnZULzU1U081dWJEaXdFQ2RLQWJTSU9YSDdEUW9BZ1NZ?=
 =?utf-8?B?YXhXWkVzbkZDb3hMVUJjRjVoeG5WWFlDR2tvR1FxRlFiWjFEVWNqbDd4V0Vs?=
 =?utf-8?B?enpEckF4Yll1eHpvaHlUekZISnFQMFc4WGMzMWplWGNTKzdpa29VMXVUaFNz?=
 =?utf-8?B?S1d2c0xVSkF3bE12QWdGYVlMNmE3cFZjR2VPTmE2bXVDYVZtM0pmRkV5WGx6?=
 =?utf-8?B?QWVBbWRpY3NrblhyZExiV1lXTXhRWDhYc0dCbmFoZVovVXh2MCtSWlJxWFpi?=
 =?utf-8?B?ZjNEVFFidlZZYkNlZ0RLcFl3L1YvZDVyMTU0ZGttSU1vWGpsaGJRQXRJS0RD?=
 =?utf-8?B?dThEK21xQ0dMdG9QS0hzWjh5WC9EeVlQMFl5Qkt0K2c5S1FuNDF6QzhQczhS?=
 =?utf-8?B?bHZOYWJRRzczMGtVUXM4Zjd4OHcxSm41L2hjc1RlSmJvVGVhcVVRaW9xMjg4?=
 =?utf-8?B?amREUkEvM2RoY0t6U1ZKZWZsejhOS2w0MzVDenU2WGdWeUFTcmtXVURQam51?=
 =?utf-8?B?dUpQdys5Nkc0akNRQ3BqV0lub0hid1hGOU9wbmpZd0pWekNBQnBXVEM3OVR2?=
 =?utf-8?B?bkd0Wm9tQm82UCsvb0h4N2hBNUFzWE5ia2N3eW5jMGJ1WHo3VktDZVp1S0ds?=
 =?utf-8?B?Rm5oNktpeVl4Tk9TWHN6RDJtQWw5WmJZbGdKTTZVUFY4Wklmd2xlb1JqVFh0?=
 =?utf-8?B?dStLR3BBQ2d0VUFOREJxOEZNR1pHdUxHZG1MRFphNjhKeTBsUW5ERVdBTUFp?=
 =?utf-8?B?bGJ2Q0JDQ0pZZnVlaENMSjkxOXJRQ1lMNHNuZ0NNY21Tbkl3UzdQWVA3QW04?=
 =?utf-8?B?N2hLY1VxSTZFQXhxZW5zdHVkai9IOW9weUl4NmNtbFk1YlVnRGhTSWoxdUor?=
 =?utf-8?B?dXR6Y3dlcGRlL2wrM2sxanF4by8xbjEwVnp5akdzNDNBb1ljWHVBakZXNG5q?=
 =?utf-8?B?V3V3MXpKOW1CQXdEWkZtVkJSWlRMZGcwT1dITFkxUitTZzUzTFpJRmtHNktT?=
 =?utf-8?B?Vi9CTm1SQXNaSGlIQmt2ejhxUGpFQlZxMWhOaU54dmNXZFFrYTB6Y3hzNkl5?=
 =?utf-8?B?bUhtaEluVWxYTkFnbEFuZW5Rakp3MUhpNWYvREVKOTZWRVRYVXpRdFdvU2NZ?=
 =?utf-8?B?dmdGR05Ta0pweUF1Rm9QTUJiM1R3NFpsOWYxRmc0RTZpa1VWbFl0bDU1WkJR?=
 =?utf-8?B?dU9uUkcxM0ZOTkdsL09NUDdFUXJsNGJVMU12dFpwRXkzNUJNVzU0RG9JL3h5?=
 =?utf-8?B?T0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 95805d06-bf24-45fe-7b22-08dd619c982f
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4738.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2025 19:32:15.6323 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qLvdcpnHYFoA1kad1UIARNHWHmo5/kjN9e6lczIPF9TpJcpTyOhh/SMnDRilONuduPSRYeGRJMv1xtPumPYOb0IghhKwXg8LfrpMSmJE0wI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7973
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


On 3/13/2025 12:19 AM, Imre Deak wrote:
> On Wed, Mar 12, 2025 at 11:44:20PM +0530, Naladala, Ramanaidu wrote:
>> [...]
>>>> +static u32 intel_dmc_get_dc6_allowed_count(struct intel_display *display, u32 *count)
>>> The return type isn't compatible with the -ENODEV returned value. I'd
>>> just return a bool, since the reason for an error is always the same.
>>>
>>>> +{
>>>> +	struct i915_power_domains *power_domains = &display->power.domains;
>>>> +	struct intel_dmc *dmc = display_to_dmc(display);
>>>> +
>>>> +	if (DISPLAY_VER(display) < 14)
>>>> +		return -ENODEV;
>>>> +
>>>> +	mutex_lock(&power_domains->lock);
>>>> +	bool dc6_enabled = DC_STATE_EN_UPTO_DC6 &
>>>> +			   intel_de_read(display, DC_STATE_EN);
>> The dc6_enabled flag indicates only the DC state limit. If all conditions
>> are met, the DMC can entry/exits DC6.
>>
>> However, if the DC6 conditions are not met, the DMC can perform entry/exits
>> up to DC5. Entry/exits from DC5 to DC3 can also change the DG1_DMC_DEBUG_DC5_COUNT
>> counter values. It is better to add a pc10 check along with the dc6_enabled flag.
>>
>> Correct me if my understanding is wrong.
> According to HW people, the conditions for DC6 are met from the
> _display_ side if the conditions for DC5 are met and DC6 is enabled. The
> problem of making this dependent on package C states is that those
> states also depend on non-display IPs. The purpose of this counter (DC6
> allowed) is validating the display driver's DC6 programming, without
> depending on the validity of the programming for all other IPs (by
> non-display drivers) that could block actual DC6 transitions.

In that case, we have the DC3 entry/exit counter 
DG1_DMC_DEBUG_DC1_COUNT. Add a check to ensure it does not change when 
the DC5 counters are changing.

It will confirm the transaction entry/exits are between DC5 and DC6. If 
DC3 counter is changed, don't increment the dc6 counter value.


>
>>>> +	if (dc6_enabled)
>>>> +		intel_dmc_update_dc6_allowed_count(display, false);
>>>> +
>>>> +	*count = dmc->dc6_allowed.count;
>>>> +	mutex_unlock(&power_domains->lock);
>>>> +
>>>> +	return 0;
>>>> +}
>>>> +
