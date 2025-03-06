Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFD92A558A9
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 22:21:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8417410E2C8;
	Thu,  6 Mar 2025 21:21:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UPrBPy2G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BED610E2C8
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Mar 2025 21:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741296089; x=1772832089;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qXT2IiQDtNof9VFkPb3EV0W95NKW2Ii4kxUAHnykBKs=;
 b=UPrBPy2G6mRkbI7/wHIX2Qhw/jbPcB3Piq0ZrRuw32lRLBrQ6skE2Ve5
 sk7tXd15rej6Einy40PuZFzdi3sicYfTwetUh+EFqnKIO8XTaGGxIG3kC
 ZeTgL6A2py5DcThGtHyWao3g8ZediYQ8UUyUBs1OovQEfIjT61JkSZTZ8
 kCdNvOWc226fHNMsKr8oeftqVPdH1wTAwHqhTpWvLh/rFvkX0UcQbdjTH
 z7hUJWoZ/qCOuY2Kh3+F16dC5YI3s9+cnyq3xAlpc6bYh1pLvtZyjbYzB
 F3F/ogkuIiCfWmPqXNijimL+/EAY74YomXcp/+SLBumNt+EgDeZe7AB2M g==;
X-CSE-ConnectionGUID: 9ptS4ySvSQShcBVhoQIjKg==
X-CSE-MsgGUID: FKtAoBZuRMOg6k2XfV8KSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42531215"
X-IronPort-AV: E=Sophos;i="6.14,227,1736841600"; d="scan'208";a="42531215"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 13:21:28 -0800
X-CSE-ConnectionGUID: +avXBeEHQOWUluttlIOxfg==
X-CSE-MsgGUID: fHlNRsFMRoWn+Esub+lnrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124341224"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 13:21:29 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 6 Mar 2025 13:21:28 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 6 Mar 2025 13:21:28 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 6 Mar 2025 13:21:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MrfAVOmF5h076waWMmJ+qVjtZOeiF9B1sV2Lw0pe5pA/vY49QNnilihQeTSPw87GMxLNM0vif6lPzE6Gh9VJVZBsMtSxeyur0/bQwXy5smZNmhOI0Qd/4BXiibTvyZRpiBdUcRkJQwtZYpAp4l28xA3SqSTqTmnX1Ni+Cqdpzn0Ps5GmjBPOdHOorcvN9Ug0Gi6BId8LZjDLuOyjkiH92iEKZi007ApJmPuDbkrcrtzxYoQedd2UEW5xOvOSDXnFVhyvYYS1wxJn5kHQ3NGn57YnS4E3o8y81U2dxWp4Lop5chIkAxKZu05dId8ScThTJUW+35N/7IMmz7CL+vs5OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e8kLpdSyZlphDiUnGNRW83pdPNjfN9O5OcsNbscWO9w=;
 b=FQSEQ1iJp2Xpdz9/vSR28VU95U5jFCSxybLRdW4/RrEneKN6R9AyxMQshvxuIlksn09Anpr9J/ENqfe+8nzDwinZmlWewfe9jIFvBMTsOr7BdUvFTuLe/z2bwQx2GMIpgVzOwyP8qMYz7+4uXqeUP6N2qW1PyikJhvJpuvir6wg41LYIAHANgTO5j5tx59Bdyf7EPyevYaV8INuECKeARumNg10WaqsWxIg/2RVDJ+kciJpqimDMX0+yQXrPGLz76OPewpIEewpz2jeG7EXAPsliwqLJtuxUniVf8hYhkNae/JobJbOF6IyirDfjyj3eBMN5UqjCPH7BCjFnl3Qe6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB6541.namprd11.prod.outlook.com (2603:10b6:8:d3::14) by
 MN2PR11MB4679.namprd11.prod.outlook.com (2603:10b6:208:26b::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.19; Thu, 6 Mar
 2025 21:21:11 +0000
Received: from DS0PR11MB6541.namprd11.prod.outlook.com
 ([fe80::e268:87f2:3bd1:1347]) by DS0PR11MB6541.namprd11.prod.outlook.com
 ([fe80::e268:87f2:3bd1:1347%7]) with mapi id 15.20.8511.017; Thu, 6 Mar 2025
 21:21:11 +0000
Message-ID: <99112fd9-0abc-4db6-9579-3f99b329abc1@intel.com>
Date: Thu, 6 Mar 2025 22:21:04 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Increase I915_PARAM_MMAP_GTT_VERSION version to
 indicate support for partial mmaps
To: =?UTF-8?Q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Lionel Landwerlin
 <lionel.g.landwerlin@intel.com>
References: <20250306210827.171147-1-jose.souza@intel.com>
Content-Language: en-US
From: Nirmoy Das <nirmoy.das@intel.com>
In-Reply-To: <20250306210827.171147-1-jose.souza@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: TL0P290CA0013.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::20) To DS0PR11MB6541.namprd11.prod.outlook.com
 (2603:10b6:8:d3::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB6541:EE_|MN2PR11MB4679:EE_
X-MS-Office365-Filtering-Correlation-Id: b68aa8e8-41f0-433b-7ad2-08dd5cf4d115
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QVdJUS8xU0IzUCtYUHE2NWR3T2Q3REFPaGY5azhkTEo5YkljcmdQcm1DdUxo?=
 =?utf-8?B?Nk1TMzJFS3c2dk5rMjRLa1FnR2ZlaTk1bkJKZGwrNjlCd2ovS2gvQnp5U0Fa?=
 =?utf-8?B?OURuVTFwbGF3TTNySm16eHpKY3Y5ei9mWDJSTG5FNmZqZ2JOWjlxLzlpVWxD?=
 =?utf-8?B?a2RCcTBPbDY5WHA0Ri90ZGpzeUNpQzluTW1TTVhvUmRibk9uYnVLZXdET1lW?=
 =?utf-8?B?YU5OcjBGSkVINnFQTkZCcDNUdTJ1U3BDY0V1S2YzOU5YNVV6RGNZNkZzRkR2?=
 =?utf-8?B?djRPOUtNN011RlZpSHcrZjhwTlNwU0FMY1c5cExELzl0WUFnR2RJcDJBa01W?=
 =?utf-8?B?YzZya2tSZVJxWmtQckk4NUJleGdiZE1zbTZpbmdpNU9ZYVh2WXNMSmRqeThs?=
 =?utf-8?B?bThZSzhxbUtmSlJOaWR5K0hTakJNYVAxbEhPL1NTcndleTVRcm1UcUdST2JY?=
 =?utf-8?B?Y3FHdDhndTlEMEhJR3dkUHVVc0hVSlVGMUlCbXVHYnF1ckR2cnNDajg3eUVM?=
 =?utf-8?B?ak9tOEdBZEo2NXd3TG1GNXRxM2c3aTcvWTRtRXIwZFc5T3RxMmFGWW9EN2JT?=
 =?utf-8?B?WUQwQ0pVWktMQTVvMEVlRncwbk9FTTFDZzdBUUR4RTRRcWd0ZlJqc0FzOEZy?=
 =?utf-8?B?T1kwdHViSGNpRDVWeEpWcWxrd2FnaHVsVFYxVjhTMVpGRURwMU5kNzFta3FN?=
 =?utf-8?B?UVk3NXJkQ1Z6b2J5VnRoZmYvc2hIRk56eXhGZjgwclQ3QlBJKzhSMldYS29W?=
 =?utf-8?B?eXhXVVV1YmU1OG5VZjR3QXpERmpiTXdzQWt2WDZnNXVyNE90Q2o2Ui93VHJJ?=
 =?utf-8?B?aUh4RVlmSldlUndVQStyMzZ1UWplSlR5ZkRvb2NXdDFkcHZ4SnFLdUZDaHBR?=
 =?utf-8?B?RktBdTVaeWlUOXJSZHhkS3F3QmE2R2dvWW9BUDNTRlpNQmZoRVhsQmNOWCtr?=
 =?utf-8?B?SWxRRUZnNjBBeFdDRHowcEluUlo1K0RUL1dROHBobVdTdzIwVVJDeDFyVnBN?=
 =?utf-8?B?bXBvc1hRcG5BNUxXL0Q3cmoyTElVTkJNZXJvMUdROTIxTEhoL2NNaVYzZkFL?=
 =?utf-8?B?VktWNkRQV0JYM0d5VEVPa2w2aHh2ZThnb0JEVWp5dWtTblR4Tm4xd2xlSnZC?=
 =?utf-8?B?RVJycDlsZGJiNTNMVG1UZFBXY05OL3NtVUQxSUN6VlBmTEFqaHZrMkoweHo0?=
 =?utf-8?B?R2hYY29VeFdUNUJrSnNac3BDTEdJdVRNazRIUFlUSGcxV2U2MzgvdHpjb2tZ?=
 =?utf-8?B?Y0tNM0NkcmpNT2ROMjViWk5BOWpMZXlwWlNvK3A0dmwxOGNBQ0VqYlJubGhu?=
 =?utf-8?B?M0tiU2NVTUNjdEs3TUgyRlpINWFTSDBEYlFBQzNRbHB2dHFaeitKTi9sL3ZT?=
 =?utf-8?B?ZnB4a0pJcFlpdWNORzVDbkNPeWx4OWhJWTh3dUZmY2RMaW9wUlpHYXlmbjRC?=
 =?utf-8?B?ODJWVEFiOWczdXR1MVFBUzZGa3d4WGQxNjdCUW51eHB3TGx4SXRLSlFXVDdk?=
 =?utf-8?B?T1Q0ejJpVWF1VUJxa0V4LzNNUVo3YXgvWE1WZGhEM2VnajJXQW9LQzRORnVs?=
 =?utf-8?B?WHpqZG5MWXN2K3p5L055SmU0KzN2LzZCVmwxNzlsL3RXU2NJZ1F5cUFGdXN6?=
 =?utf-8?B?YTZaRHNyNVNFeHlSdlJYREdKVzJuZXQ4c2tWOGtJbEpKZE9ZSTlEdFJyQzFu?=
 =?utf-8?B?OGtoZXVoUGl2TStxSXlSbjF4VkF0L1pldXNheEtySmRsVFNPMUxvMHJuOUtp?=
 =?utf-8?B?S2FTR0NDK1lDS1FjQWF0ekdVVDlaeGtyTUhQcHJTaWZuYXpRS3g4UUlHWXVq?=
 =?utf-8?B?b0VCNFdSUFJVZDJlU2RtM2JQZW5obVhvZWpBdS9ObTFiVkl1RFFFU0ZQTFox?=
 =?utf-8?Q?eTDFX7YBhFhUB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB6541.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q2FYRGZUSVcyd1V1dWIxeWRPV1dTc09LajVFZlZlOVl2KzRvTzJ3VmNkVUY4?=
 =?utf-8?B?cUk0bzIwTlRxdDdDanljS0ZCY2prWnhiWFBnUkNmWG1ndHBvMzcvdmVGOWhD?=
 =?utf-8?B?bVd0S0pGc3UvZmVWcVJ3SElzeGhxMlhJY0VDcXJwM2lremZydG5EZG5MWWZC?=
 =?utf-8?B?R3VSdnlyZnFGNXNpTWtBOEw0a3loaU90MzZ0S2VUTkdNSTVxM3dGVVZYRVBH?=
 =?utf-8?B?RVhEZThTSmJaZlFqejBPQ1kvNTB5c2lYaE0yZXVUcU55c2NQZDBUZFNLbWNr?=
 =?utf-8?B?dmFncDFGVDBlT0xvbThuOS90K0hiM091Q2paQlZGRWJKQVVpMGphMml3ZFpu?=
 =?utf-8?B?VjNFdjR2MDRqTnY4UEhKUHB4K01BelAzZ1RmNjRpMW11eUJhMDZBVlhQeHls?=
 =?utf-8?B?ZWZ5cnN5aDM0NU40UEFiWDEyWWpoazVrWDFxdGFSc3RiMG9OZjBmODVKb05E?=
 =?utf-8?B?dVFlcnRwdS9COFpJY2p0MGNWbFBzSXVKZlgvUDVFalBFR1Q4WEYybStNTGo3?=
 =?utf-8?B?Vmg2bzhzOFNKT3lZY0lxVURudkxXd1dZNmNacWhlUXhzeWhTYzN2VFFDTEFj?=
 =?utf-8?B?WFpibXhuMUJCWllERm52RjVYQ0hyT3M5eFRHUTdjVGdpck9pVXZ0d1JwaXgw?=
 =?utf-8?B?bmtrNnBIRHlSQ3JwM09iTWtpbHpxZWlxdk5LSGhQYlFiTFNwVnp3UlJMUUhR?=
 =?utf-8?B?R3lWbTZFRUFpV0ZyMmZrMzE0OUZHNkNLSkZhdUk2M0F0QkJuT3B1UVJTM1pq?=
 =?utf-8?B?TnlCVnJjMEUxSjZCUmIvajVzb1RDQ0FKaHFDOWplS25jdGx3cXFBUjA2VXhC?=
 =?utf-8?B?OFR2NzFKdjV6WTBvcmkxc1RtMXBDNG1HT0NaYjZ0bTQ1T2NRSU8weXhVaDlF?=
 =?utf-8?B?MVB0MS9McG1sVklXYmkwL1RmNWRxdlY5YU9kS2pHc29TUGlZekl3OWFxZWVI?=
 =?utf-8?B?MmlTLy9WdG5xM1JIajF1VnZESnYvb2NZN2taQVZwVGp6SlROb01weHZOUVVm?=
 =?utf-8?B?TlgrYVdTN3BIQ1EzcDcrak5yQkcwd09DdFZQYlNMMmJQYzEzL1o5TXpjQmhv?=
 =?utf-8?B?YkRpYXp6MWNtSUlNdkNJU09qVEtkQlpKYmkybVUyRk0vbVVLa0Q2SkFNYlRt?=
 =?utf-8?B?TGxLSE45cEpRcGxLbVpGb3RDSm1nTEFlWnl5TW1zdjhtZHZlT2Mxc2I5amV2?=
 =?utf-8?B?NVRHc2lNenB6MGFsL2VIUVBLVUFPNFJTOWpEQ0FRNHJXQTVCUTVLNkhsNlBy?=
 =?utf-8?B?eXN2NEt6Nk5aVDlvY2NjK1VSbnZST0FjT1labjVGemZkRS8yeVFCbDVtWEhI?=
 =?utf-8?B?ME43bUxwQm1rTGdxU3poY3RwK3dyVDNxZUtDSjdWL2ttNEovWDh4dnV2RVVz?=
 =?utf-8?B?aUd4NEM5SzZDWXJXQ0gyTkNjcnZzcjNjQ1ArUk5PN2t4UGUyWHozWlJ1TEF3?=
 =?utf-8?B?VUU2ZGRUSGtrd3krS2dkaCtqQzcrbjhYRmF5MW42SXgwdjB0UnE1TlRUaXl6?=
 =?utf-8?B?UjhZdS9lRjV6MUp1dWFWYnRDdHlDVk9UT1lJSmx6YWdlMlZlWTN1dUUyMFd2?=
 =?utf-8?B?Ymhka3hReFN2bG9TZXZpazZsUVIrQjhNT2lNS0hOSWxrS1ZwMkNRanpjZDNO?=
 =?utf-8?B?VVVKOGtvU2YzNjhoK0hCVzZoVjJHOHNOdDRJb0U3UVlVNVlMUWlZWm4xeHAx?=
 =?utf-8?B?RmNKSVZBTFNQM0l2bDZLN0lReGt4aEgxQm00eGZSVjIyZGovYVN2K0dZVmsy?=
 =?utf-8?B?d3g3VHZ3T3pBS3A2ZGpvNVlLTndpUjJSS051T1BQT1dyUUN5TlpWVFJJWTdu?=
 =?utf-8?B?Sy9tRis1c2xJb3paVHVsSE5mR05VcFQ1WTNjcklDUmdTMDdTd1BNS0NnR20w?=
 =?utf-8?B?czlTTkg0bDlyY245WEZISmNHWC9mbHUyeXNCQm1lTlA4RjRNaER4SGgzeERG?=
 =?utf-8?B?R3hyem1wUm5Ma2JQMktjMWpXNVFoc0JTRW5hako4ZjZEclhhUFRQWnplL0J3?=
 =?utf-8?B?QnVQRnN6aDZ4d2hsQjF4ZXYzY29ZNTB3N2VIRnFLc2dLRmcyRWV3ZDdvTTNv?=
 =?utf-8?B?dmIrd3JxL1h4a1Z1VzcycVJTTmlXaWZ4cFRiRXJ3OFFxalFGSnFINTYxWDVv?=
 =?utf-8?Q?KyHo97CRXbtabTJ/2vBkiBXXO?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b68aa8e8-41f0-433b-7ad2-08dd5cf4d115
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB6541.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2025 21:21:10.9398 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8kl2kIvRtaCgr/gce8v9Hna3rk7GBQLVW7EvaCzqcZ/z8Bh/BaofMwLxE8qjkjLdqL3gdGET9KaSXLMQCvVbfA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4679
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


On 3/6/2025 10:08 PM, José Roberto de Souza wrote:
> Commit 255fc1703e42 ("drm/i915/gem: Calculate object page offset for partial memory mapping")
> was the last patch of several patches fixing multiple partial mmaps.
> But without a bump in I915_PARAM_MMAP_GTT_VERSION there is no clean
> way for UMD to know if it can do multiple partial mmaps.
>
> Fixes: 255fc1703e42 ("drm/i915/gem: Calculate object page offset for partial memory mapping")
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_mman.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> index 21274aa9bdddc..c3dabb8579605 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> @@ -164,6 +164,9 @@ static unsigned int tile_row_pages(const struct drm_i915_gem_object *obj)
>   * 4 - Support multiple fault handlers per object depending on object's
>   *     backing storage (a.k.a. MMAP_OFFSET).
>   *
> + * 5 - Support multiple partial mmaps(mmap part of BO + unmap a offset, multiple
> + *     times with different size and offset).
> + *
>   * Restrictions:
>   *
>   *  * snoopable objects cannot be accessed via the GTT. It can cause machine
> @@ -191,7 +194,7 @@ static unsigned int tile_row_pages(const struct drm_i915_gem_object *obj)
>   */
>  int i915_gem_mmap_gtt_version(void)
>  {
> -	return 4;
> +	return 5;
>  }
>  
>  static inline struct i915_gtt_view
