Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +EVQJuQ+82kGywEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 13:37:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 093174A23C3
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 13:37:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E94910E41E;
	Thu, 30 Apr 2026 11:37:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="indKV4Ax";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F17210E41E;
 Thu, 30 Apr 2026 11:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777549025; x=1809085025;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Gej2mLt6NuTTDVHzDrkoELvL4YcfoK+ZgYgyxburM3o=;
 b=indKV4AxUW7nhmxRQPrUJEL+NdZ4UVKzFngJ81TqXWWsJ/mJh+nufhaN
 mYu/VxLpEjmUzczEeETkghh5G0yjee1As0dNQYUrw56d8eCkEdhRzXLma
 i8BCafttcPaI84UvFMl1WEjBUUKm5OUQWacWrV5DyjOkwuB2uAdimY4jy
 GC1HpBYRbhiH6jY6qEt7RMA0nSi4jK9MwjdivccL3kXIK0SJgJc9Shsq0
 LZlwx9a0weP9b6aVUn2fOd9wqNZ8sgqITZvc0aS4jVzCFpjiWqNw01dxR
 I+SSL74Xo1Cy+5ni2qzhSZlaqSMkU14RpY/OkZOGuhukxjUBHl5sC3c0w A==;
X-CSE-ConnectionGUID: IPyKLDwLTti2szGbMlMDhw==
X-CSE-MsgGUID: 1aO5VtFSRC2MDRHbCayiPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="89187735"
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="89187735"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 04:37:03 -0700
X-CSE-ConnectionGUID: 8RabIXlmSeiLoweG6LFGVw==
X-CSE-MsgGUID: 3rvyc/aPTZqMhph2pf4YOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="230208358"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 04:37:02 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 04:37:01 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 30 Apr 2026 04:37:01 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.45) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 04:37:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=inXT8YrirB4pOoW0bT6/HWZXwlQhV+8OlUxlObN/BC6yQ8d8C/ta8dtR8QXyk8SsbWmHB/SiVhk23e9QtzStSLzdTPUlQ+Tk4g+Fro7msFFKFMub/M3/tta67vV6Eav88Kslg/D3e+kl48rPQgKlPJnCPNXXVGjrHcL0Wj6I2P1fqvQHDv9WhEyUG+nd7nen6qOvGyx4Mdz6qBulqroCqYcyNt/yW6Nzb7APkCL7fR4xNWvWMZaYhpaUbAQXr8E2k1lEr9ipCulPlGbCR6hTV2/H5mCoRIQZHmx97D0br2/TQyJoEiXEJfiIe/nFdDOdncQbDDg/RoTYzbwzgWI8Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ycgoFGxucOsHDlmGgFsJ8/JNnfbCMrrdrwJTIMgkDZ0=;
 b=ny8+RjUpbNenPXAJwX15ilrEoAISQA7F/2+Cd26rrz/wOrdGZjQ0SOPxFuYHdJZDDB7hugFcH+z+u+pLiQUmdXXouRiM+6vr3Ywdkj3mLNZiVseIE9yoUbDqBnmq4gHS4wIBpN8KI+ZUzt9i31ATWujjm/mXm5+7Q4dHUwrEk1e9pSvAl/c01PBAWvkIM/FqT/XLNzi+HZjCA+rjrAuZZBaC/3AGHR8sIh2s8CZ+RLR77vDReM5aCvAqeCMlj5TxvT0FopcNF94gcj67mEBNWWZs8kDzQWPqq2lDEPFmOE8+eJ3W+bdvBpPA0PqT0Ivfh9QCRdZkUtI7AS6rXPGVdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by DM4PR11MB6357.namprd11.prod.outlook.com (2603:10b6:8:b5::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.20; Thu, 30 Apr
 2026 11:36:58 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%6]) with mapi id 15.20.9870.016; Thu, 30 Apr 2026
 11:36:56 +0000
Message-ID: <2e987010-edf4-414c-9337-89224f9796fe@intel.com>
Date: Thu, 30 Apr 2026 17:06:47 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/psr: Use DMC wakelock instead of DC state
 for VBI
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <jouni.hogander@intel.com>
References: <20260429110023.611664-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260429110023.611664-3-dibin.moolakadan.subrahmanian@intel.com>
 <87se8dan0e.fsf@intel.com> <87pl3haldm.fsf@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <87pl3haldm.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0227.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b4::8) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|DM4PR11MB6357:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a7b262a-b859-47fb-aa83-08dea6acc852
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: AmW8DUx0OtZ2Df1dhScYT6ktw2XPPsPTMm9MlNWlgj6iTsLc1bfJ8vFnQiU0+a4+0fRfgz6Z0PElasJnV7BsG0lI9gckf7eWFnzqt9YyTpCLQqE2pXFF27L09IJEhF04W5mlviYfRyaLHKvHwy6pEO/p3GreXEotTraGBr1YRPy92Q4F4J9jXoaISTIsqi4PYR+WA3o/T6bKZ6H7yuzSOm2cmwoNmM6ih0HMe662xhiaAc9fA9/RLVDYZTS1G7Y4TIyZgXuIf99CalJbCj4mUX1+rVsOeBXaKIsrpsQgdq/QZUSIoHsVZWD9M7DgFMZmyyoq9kY4Dlv+v6/IYU6q9OZN3Ijr340skvS8g9CTMMu0QpuA59xzygIfRhANT6SkBWuD092d0c8Y1Wjrscg+jV5WBRhZ6ZxBzF4CKT0CYRtBllaPHppDXFFA93tiA42iqwIXhYYdfLpC2IJDNLXCg82jrzykTuVx17zyizNPSyQ+6/MLdM3D7+5Ccjmfi4VQ7+TfwPiwOLj1SgPIsHD2TUxmnUHMdRACHsnNM8/YcDgUAF66RwohNOg0BD/REELn0gD4eE2sE+yejSArEaUKOHsB40MrLXWcgTaR+etOqZSp43njonjCMTIO0WRtO26klvphTjSPgMHGQGytlXbr0bQ8KcXF4Ou5EHn0mro9YCkHB3hmeOQdwR9t4ZlH2nTH
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WkdxeEVEdnZOZGd4QWpmMnV6WnpBckkvWVV0N0dRV21Cd3JMU09XWnZIODMx?=
 =?utf-8?B?aG9VRUV0N3BJTWE1RVVXNVdsVktUY2ZSYmFsSGZhZVpxZ2RZa1ZpcEJJc3k0?=
 =?utf-8?B?T3FBT3VZcjkwQ1FCN3RyTjhNYTNDN2U2c043VUU5UFNGOHVudWppOThYVUF0?=
 =?utf-8?B?M205RW9MZ2g2bGdTUEhQUGRYNVFhYUFmV0tDOWlwUDdLVk5MckU5cUtuMDZ6?=
 =?utf-8?B?REJ6WVVCSzgrNGd1alNkSGdjbE9STW5qSHh5ekIwMm0rdTB6VDIxbVExd3V2?=
 =?utf-8?B?OEU5aUF5MGEvNTluVGZwaGF2dXRYKzBTdG9vWGdrK3N3cXIxcHQ0WVE3NTI2?=
 =?utf-8?B?Tzdlbml4OTd6WDVUV3JXSUxhVEtmWEdYUVFkZHRxbFE5UG83U05VUkZKT0Va?=
 =?utf-8?B?QVJiaWJNbGxZYTNrOWJmSE43ZW5UbjFSb2Jrd25aVHpkOElpVnRFVmpiQU1n?=
 =?utf-8?B?UTZrQ1c2R0RSWGYvbVNiWFpvK1F3NlZqSmU3T1JXNjQzTnJoSTcrR29GN2dU?=
 =?utf-8?B?VTR5WXhPMXJ0bU9KZzBOZGRMN3dveXZ3R2p1OGVEa0JISEtYZlN5dmxkeENQ?=
 =?utf-8?B?MTJtQkVYSmxjWVZkOWdTVGJ0TjUyYk1CZy91V1FPcm5nL3BZMndaOHA4ekZG?=
 =?utf-8?B?N2xIVENTaC9Oa3ZTNjcrWHdHcE1ScVVyYVJVNmVvRG9HMURIVXNTL3ovNkdP?=
 =?utf-8?B?ell6TUFZZ3c1NmhYUlBQNGRZRmhvRm1ZZjA3a1YvRDhNc2JWOTBLdEh2M242?=
 =?utf-8?B?WXBtV2tqYWdGaFpNa2NQdkhCeUI4QjdFcW9SdFZPVkt4MjhBRVl2L0Jhczlu?=
 =?utf-8?B?djlDRE9uQmZSN0I0QzVnemRWTHA0MndFbWYxZU9Hc1pSZ2lmV0ZHSlRSNDVF?=
 =?utf-8?B?V2xvczkwT3didTZTT2JrK2g5Wnk3bTAwdmlROTFqS0dtUlJJLys3bHlxYVJV?=
 =?utf-8?B?bFFGd01aM0t1TFVhcjA0U25oMkU1U3lZNkdJcGMxMzlBbllBMW5xb3g4M0R4?=
 =?utf-8?B?b3hYYnZmQ0tQcm44aUlJTlBtcjRXWXFpbUdYckNSN3JxREpvVy9iWkJKaUZ2?=
 =?utf-8?B?dHFRbTIyWnV0SjJDcDNXZXNydVVNczJleUdhNUh5VWQ3N09nT2J5U2ZjRnlR?=
 =?utf-8?B?UitRd1V1ZGFHdXBXNjh6YVBJV0t1cGJDUEpMVm9XUCtvaGpCM1dRTWgybjky?=
 =?utf-8?B?cFNTSEVRdkJUdnN6Sm5tVy9Vc3FvSmlIUkdaYm11cVdvd1pKL0lyc1p3dmMz?=
 =?utf-8?B?ZnRKSXpSN1NoVS9sTS9TZ2UvallGdHNQbnNHN0pWU3FpTDRibFhJTGxXNnR3?=
 =?utf-8?B?L1FIOG1OckF1VFFNTnlNZGVSSXNCZXBLOThOWjk2bkRGT2IveVE4L0RENmNj?=
 =?utf-8?B?a2FiV09iZUFtS2FKcklwazFkd2ZUTzBRbmlPbkN1T2tPdHdLUTJKRFhZRTlm?=
 =?utf-8?B?S0hMNlBkSzdTZENwWTE1Zm5yd2RDLzVSZWJYbk9QcWwxUXduVE1XSVVWN3pQ?=
 =?utf-8?B?TXlMKzIwemI4QnQxZGY3eXFjUU8xdTFxeXdkNER2aGhsNUxVSUgyNGlGTjdu?=
 =?utf-8?B?OG1HUEFVd1FXN3JKV2NMM3VDMDd1V2NVY3p0S1pzdDY2QW8zTll2VURzelJx?=
 =?utf-8?B?bVFsUVBUVXZrQ0xmMHNqNmQwU0t6K0RvYnZVc3R2dkdOL1ZvZHZNNURVWHBB?=
 =?utf-8?B?a2owVTVlU2tYdTNuZEhVNi9qMVdRV01JR293SUVwSTI0eGQrUWFMSVYyR2E4?=
 =?utf-8?B?KzRmbFAwT0dCcW0xTXV1ZnVFeGxMcDlEU3JwV2hxZG5BZE16b3h6MFNHMXB5?=
 =?utf-8?B?VmRITkNMdFVIeWZrdGJDR3NWalRxbTRFQVFwTEs5UWpWWUhlbjNhcFNXVjBJ?=
 =?utf-8?B?c1JPTUFvemFnb3ZHVzB4bzJvdk5ZcUN3WmY3dUpVVkhZK2lFdy9vOGxvM2lI?=
 =?utf-8?B?RHdrQ3pkL3RaT2ZSc01NMnlSeG9Sb1lLbkFPdDFqaGFQaVJnVDM5bk1zTjZ0?=
 =?utf-8?B?RnprcVNBeEFONHA3SGs1clRlWXg0RGlmWUNkcmRERzVNbVRwckJUcDJ5cjA4?=
 =?utf-8?B?aE41b090UFdGdFB5N0dOWFlpU1dOcklzQkY1dFNvQkc2VGhjazc4OFovSHhY?=
 =?utf-8?B?YW4vRGZFbHVFTTJsaEFhR2FjNGJ5a2hlckV0aDdwdDNIZmxuYStoSENzTUlQ?=
 =?utf-8?B?WFJVdW85VzNzRlNHWEdTODU4NGRZZ1BPR3lNNDdyamVsT1lzdEVFYXN2dnNl?=
 =?utf-8?B?dGhjRE9KUitJK2pSUm9OZUREcVQ5OWc2N293ajFXaDRuVEd0Qk54bTFQeWVh?=
 =?utf-8?B?ZWZJa2NxYml5ZXpxU3FXSlR4RUs2STY5UnM2NGl4Vk5leVBPU0dWaGErRDN4?=
 =?utf-8?Q?XFWF2322EHWJl8Rycpeyxt82DHOEaBGw+v3QQabf+tsQf?=
X-MS-Exchange-AntiSpam-MessageData-1: GrSPES8XFCoLTQ==
X-Exchange-RoutingPolicyChecked: pKIWF3I0LTndGQ0I51LUJ1Qjxkf+MYqrWzMJ9oNz3u0w2tDVbtZOC4P3Jr2VlQotsvcFb/22X5zohaSqLMs6PrOIxm6dyzxWCok1cFBm4N9eDajGumO0r6ZO/foM3lhUrVJah+8GLumtB9MvAIbkT1cOQnJj9sNTUBopNDf0u4ozOEQwzCH2m2LLak51yV8Elk+T1Jr0pd0zwxRhvalcEyHxM0T7CZynrmDWe2WoEdekKJ56CcjUwgaSCzzVTl6fVoxJc6UDlwHZIgyGBIlj0/vWodw2ZPr7X0j9eAtJ0Ek52wSpb1m2Bj7j61vbLkF60anVgiEXlb61leQxVWHLtA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a7b262a-b859-47fb-aa83-08dea6acc852
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Apr 2026 11:36:56.3956 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n3PdNtawlS+qFvyw6IC73fIvwgGWXJvyGuJhAL3/ZR7pb/Pyx1pCD74RRlkrl3FwDq4usMTHoo7mJUWH57513fm3sRgd6vvWQvEwOmuI2w4ajOW43eHdQ/MJgvXy/OEh
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6357
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
X-Rspamd-Queue-Id: 093174A23C3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gitlab.freedesktop.org:url];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]


On 29-04-2026 20:01, Gustavo Sousa wrote:
> Gustavo Sousa <gustavo.sousa@intel.com> writes:
>
>> Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
>> writes:
>>
>>>  From display version 30+, use the DMC wakelock mechanism for
>>> preventing DC entry. Older platforms continue to use
>>> set_target_dc_state() to disable DC entry during active vblank.
>>>
>>> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/work_items/2296
>>> Fixes: acfc688bc51b ("drm/i915/dmc: Reduce wakelock hold time")
>>> Signed-off-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_psr.c | 26 +++++++++++++++---------
>>>   1 file changed, 16 insertions(+), 10 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>>> index 9acd47392192..d01b4013f33f 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>>> @@ -4151,16 +4151,22 @@ void intel_psr_notify_vblank_enable_disable(struct intel_display *display,
>>>   		mutex_unlock(&intel_dp->psr.lock);
>>>   		break;
>>>   	}
>>> -
>>> -	/*
>>> -	 * NOTE: intel_display_power_set_target_dc_state is used
>>> -	 * only by PSR * code for DC3CO handling. DC3CO target
>>> -	 * state is currently disabled in * PSR code. If DC3CO
>>> -	 * is taken into use we need take that into account here
>>> -	 * as well.
>>> -	 */
>>> -	intel_display_power_set_target_dc_state(display, enable ? DC_STATE_DISABLE :
>>> -						DC_STATE_EN_UPTO_DC6);
>>> +	if (DISPLAY_VER(display) < 30) {
>> Drive-by comment:
>>
>> I think we should avoid using open-coded version check for testing
>> features.  It is usually better to use the HAS_SOME_FEATURE() macros
>> that we expose in intel_display_device.h.
>>
>> In this case though, it is better to use to expose and use
>> __intel_dmc_wl_supported (dropping the "__") instead of doing a display
>> version check here, since that is what will actually tell whether the
>> driver is using the wakelock or not.
>>
>> I even think we can even drop the HAS_DMC_WAKELOCK, since it is not used
>> outside of intel_dmc_wl.c.
> For this last part:
> https://lore.kernel.org/all/20260429-drop-has_dmc_wakelock-v1-1-62cb6fab1da0@intel.com

Thanks for the review. I agree that the open-coded version check is short-sighted here.
I will refactor the code to export and use intel_dmc_wl_supported().

> --
> Gustavo Sousa
>
>> --
>> Gustavo Sousa
>>
>>> +		/*
>>> +		 * NOTE: intel_display_power_set_target_dc_state is used
>>> +		 * only by PSR code for DC3CO handling. DC3CO target
>>> +		 * state is currently disabled in PSR code. If DC3CO
>>> +		 * is taken into use we need take that into account here
>>> +		 * as well.
>>> +		 */
>>> +		intel_display_power_set_target_dc_state(display, enable ? DC_STATE_DISABLE :
>>> +							DC_STATE_EN_UPTO_DC6);
>>> +	} else {
>>> +		if (enable)
>>> +			intel_dmc_wl_get_noreg(display);
>>> +		else
>>> +			intel_dmc_wl_put_noreg(display);
>>> +	}
>>>   }
>>>   
>>>   static void
>>> -- 
>>> 2.43.0
