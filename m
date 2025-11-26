Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB491C88041
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 05:09:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E6D889C49;
	Wed, 26 Nov 2025 04:09:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NfKIEK5a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43AC98952F;
 Wed, 26 Nov 2025 04:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764130189; x=1795666189;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ag5AWupk/HMDdhLaM5CrWNkM2411FXPYD6O7ADXUxXQ=;
 b=NfKIEK5aYfsiTC2hrcDQY31ZvfYqo+bH2PiMmNVoBWVsoIN7qyh4MiZP
 o2a8vR3Y+hngEjOyviPvh05fpu8IQlPfPzIEptGu0onM6VUbX5Ldm8DNy
 /TFflgOMhF24zpcn/ZdVL8T+Ddy2EB+hyu/A7elix5PF10JHvThppjjZl
 TZUlKuARhGbqvveaqzw8ySvH1pFbXapt44HvwFunjGpwPSD4684iyLSky
 0scUBb4wXfojqAIfV6sZikpHW3dFQIKaDSapU4VoEKfisEv9zgGm7fKa8
 TNCAA1MhF+3y41BSkmkrG1rOC22ZYcmzjx61oT3irL6zhvribsEOYzz8H w==;
X-CSE-ConnectionGUID: +XIlqrSiSYSFnEhqCKqnfQ==
X-CSE-MsgGUID: 40Hi9vO4R8GNXhc311nlGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="76482480"
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="76482480"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 20:09:48 -0800
X-CSE-ConnectionGUID: iGhQCIDBTdSYI48Iz6+LyA==
X-CSE-MsgGUID: sxepxsE6RJqg0NOtEvnyTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="192916904"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 20:09:48 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 20:09:47 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 20:09:47 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.12) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 20:09:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gZpY6ha2eU2RMr0WkPkGShhaIRH7vhHafkcC+sZ0V0eitGp9ZOEtbILtQ4ZHC+6GBvMLXADdF6+BRIj73zkmnUVLHEipRbqrR3yVgVfOPVS0xGbtI1vRMJ0dnnibY+YMxsQkIOjBlLThL+R+p2pXR5bl/HSf1IFkWlhxjbDa4IOkc4G4lc6pXWiYcgdckfluKmMUrz7P9BJAoRZM0sQC+KhgsN4ZmWDFmtb+A65eNVjQnRmbSnRgz1hpdfAjMoWf6z2qTY7lym1xlRx1eYkbccoJHGGZERn5i+UkiBdXLAeOjLjtJbEYAOpURN+u/jnXk2S6+Si66NO5EsuFzAV0AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=judk5fvkbxZMCepdwuqa0Mb2SMk4GRKQ4Kb84fFScBA=;
 b=NuXYSpMK5eNUftMDF5GArbOAYneOdST2DWbWcKsZyh3cg6OJnNKqINx5xlkSm328rcVG6ilyNSZddWidjmTuIEQtRBOYB2mLaDnHL/s3A1QcRpSh3JDc0X+0vPcMMSHogX+3mzbBj2ygy6ECFAapA0uzkZ8F0O9IqAZMd+wQc4tSsBWFE4HHbsFe70c15yd80APy8N+mGT0tbNSYbyEfwsUduOnAr0JPsOLetYaXTf9L6c7krOgQF1O6YVTdcDWmHcFQyF9HpXFF4lrvlVXrNzwkhBhSHlMx4IZhnIvJSWTzWizqNRn7PxERlkqlnKw2oBBR11DLd1XaE6DHo7xOBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB7898.namprd11.prod.outlook.com (2603:10b6:930:7b::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Wed, 26 Nov
 2025 04:09:44 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9366.009; Wed, 26 Nov 2025
 04:09:44 +0000
Message-ID: <cb8a8373-19af-4749-9638-ccee5620c61c@intel.com>
Date: Wed, 26 Nov 2025 09:39:38 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 07/18] drm/i915/vrr: Add compute config for DC Balance
 params
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>
References: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251117054442.4047665-8-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251117054442.4047665-8-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0179.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1a9::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB7898:EE_
X-MS-Office365-Filtering-Correlation-Id: 69321f1a-6788-4d8f-dbbf-08de2ca1a131
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VlJPU092UjFBQ0FxTCtyZDhKR0VsN3c0WWVrMzNtMWwzb3M2TXVPRzN0RnFt?=
 =?utf-8?B?WEJnMFd3RzRXTGdhYWZYM3E2NTNmK0dOeEJVT0NJeHhjb2FVZDRranhFeXI2?=
 =?utf-8?B?VmpVRTV2K1RNZHIzT0Jwb1VlN3YvR3BhMVE3L3dyL0d3RStINHhHby9tNHY0?=
 =?utf-8?B?ajJ0blh6bFA1RlBYU29ZYTN6aG1SdkJpclpBb0FhOXY1aHRLWWtkUVZvRTdX?=
 =?utf-8?B?cTFSR3NpMWZQZ3Z3M3g0dDNXczlJTERCS0oyQkZPRVJhZEpsOWtKNVQzcHhn?=
 =?utf-8?B?K1gzcWduRDhyaTBWTVJ4M29JVWxxRHFzOWI4VVM3UG9CSmc1ampoZjAyd0Vt?=
 =?utf-8?B?QlhMY1VwWk0wUVlSaExJODlGWnpXYjlRckFlQ1RJT2I4bG11Q1JWc21aUGpG?=
 =?utf-8?B?d29wUTNkTmNWQjdUamVLNytSQWJUVUpkV3NhRGk2ZHlMdkRqMW10RnhiK1pm?=
 =?utf-8?B?Y2RnMC8vQWg4TGpkelFqUVN1TDROQmVYUHVrUGhoZ3Q5SkF0Q084M0NZYTJ4?=
 =?utf-8?B?T3BDamJlWFAzdFd2dkYzZzdoWG95RW9qMzVzL21kS0tWNjc4ck1lM3dKQitp?=
 =?utf-8?B?cVovbm41OE1LMDVETWxzS0RqemIzOWk2eTJuTEhocHhvTUlTQUJiSkZWaXQ4?=
 =?utf-8?B?TGFCSG1XNHJZeUxxV0lFeXB3VytEaFU2Wm9uYjhLNFllcjFDby8rb2twbGVi?=
 =?utf-8?B?cUNOVzJScU9jZjY1M05qRGhZM3hZQzhDbzVQY1pIb2V2RnFTREVhUUx1WjU4?=
 =?utf-8?B?TTc5dEJ6bzhGaFlWVWZpOXVLWWpyUVVjQmsvdWUrZ1pIV3lqSnZNMXpCMXho?=
 =?utf-8?B?U0hicDV0R3lpQkJxRDFHZWYzaE5RNlpFb3FJS2xNVUtUb2lDVE5KaWJ3OW5Q?=
 =?utf-8?B?V0ZScG1acmpwNWNrMDNPcWpzM1k1U3FaRUFnbVRIcWlER01HSzgyQmpQVmtz?=
 =?utf-8?B?c3duTlp3N2VoeTc5eTZYM3dSNm15VG1ubDRIVkJVd2NxN0hKSzdOQ3RZcEc5?=
 =?utf-8?B?VWZjZEFMeVRiVVdsazZYeGpzZjJ0V2xONzF2NjV6MGplV1EzRG9MQWVIdHlQ?=
 =?utf-8?B?RFlZR2J0QzAwQnNFZ3dLbEtnMkVONlNiWjZEK0FoMEFmY2Y4L0FqVC92cVdz?=
 =?utf-8?B?emJEdVpRZGNRdXB5V2dsZTVTNHovaFR4TUtsL1Zadkd0QkRIV294STNJcXhD?=
 =?utf-8?B?S0V6c0E1cHNWVUprREVlVGhCL1Bpa2ZJcXNwMjl3dkZzcmdQSFdwS1VvblJ2?=
 =?utf-8?B?QXU4NXlxWmlKOGNIL2ljK3V2Q1N5bktpQ2o4Nzk3MG5lallSbDFmR1FnTGZv?=
 =?utf-8?B?aCt3Y3NoOWFORkpxcjQ3Wm5FS1Qrelo5SW9rTnNXM3JPRXlVeWlIbVc3NHBT?=
 =?utf-8?B?Wlp4cnJuTkxMb3JXdThLYWZydkhGOTZPRjVRSVdXb09CdGszT1lkTU1NLzBk?=
 =?utf-8?B?b2d6Z1I2ZDFxVlRic29oREtNY21PTElScUZPUWpXcjNnem1ETlIyaWJmMUg5?=
 =?utf-8?B?MVFmS2l1d09jKzM3S2ZGeXBEZldETWlTQk9VcmZXODRqMktwSFlucmpCcFdC?=
 =?utf-8?B?Ykc2cXNnUEo2aXdkbmtxUlJlaWRrS0JsYWxpZ1EwS3kyTFdmd0F5RFNhOVdG?=
 =?utf-8?B?QjRQYXVBZlVtYkZ5eW5DdDROMkN1d2p2Z2hKaWlzY2tzK0M0Q3Nrbm1jdSto?=
 =?utf-8?B?Uk5PK0wyaGRJNDVJZHdtTWJ2MXlYUnRVb3ZBb2E1Rzk1aS9lZ0NzY3k1NlFq?=
 =?utf-8?B?T3FSVURsemoxTnc5c0ljK1ZxWHFXaG1PaWRic3ZoRVJWWlMyeTNjU1llWGNZ?=
 =?utf-8?B?VzVyYzNvNWpnVWdSTDl0ckNPa3lBeC9qT01DbC9ZWUg5RDRRYWJVWU1OeXdq?=
 =?utf-8?B?ZURxUHg2eVRBdlJ3bG13T2hQWU5saGZuRDNkZ2ducU9sVk1lZVkrRnQybi9a?=
 =?utf-8?Q?5p8XRUeBdVy5VQNF/kMQaDfkcG2/fcKE?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TndQZ3FiSkt0UXJteElqeDlxNE5ESHQ4bFBWMngwZDlZUlZsZVMyZlNQTFY4?=
 =?utf-8?B?NDlCZTJ3MjRESXRMcWNvckY5TjZ0SmlxMmt3L1lWSU5ueVdVRUkzWDlHUHQv?=
 =?utf-8?B?RjZHc3c1TTFkcVpPdWp1c0FaNy9vZDhtd0ZiUVk0bGVZVmJBQ2IybVhWMFg3?=
 =?utf-8?B?T3ovWGtQcVJHb0hVTExtbW5QRnFtTCtRSTM3elNhYnE5cDUrQWpvU09QaVRJ?=
 =?utf-8?B?a293dG1xZ0ttU1V4dVRlanBLcXVFRGE2OU5WQXdQdEJkTG1VcHJtbkNLa1lp?=
 =?utf-8?B?bk5qalU2UnFFOU9zTjRQRk9CV3hSRkV3VG1USHppWDJUOHZpaXZ4MHZlMXgx?=
 =?utf-8?B?SjNyZW85SU5QZW1OcFBKUUNPSWt0Wm5XRDZoVkl2MTFHVkxWM09IRmpWT3RC?=
 =?utf-8?B?c25nTDc2ckZCTGk1UmhOZ1lTZGtrNlFSTEhkZCtVKytwbVJqTWR1dUR2VHVx?=
 =?utf-8?B?WlNURzlwYWgwM0kxK1pBeExEQmIvTlNJdmJqSE13RmFWeWlqMDQ1MkQ0dWZB?=
 =?utf-8?B?VE1vT3NwaHBjOUpyZHhMK0pUaXdTMTh5YzZYQXFYTnQ0QURnRG5OdGFLUUpi?=
 =?utf-8?B?MDJON1BFK0EvZDJpd0ZtaXBndjZycCtMck5YNVo3Zlo3NmVLRFFZNVdIOWtC?=
 =?utf-8?B?WEt2NHJ2aVBXTlpRbisvUDloTFYxTkMxdm9JYVcwQnJkZHVXc1c4N0s0OUc1?=
 =?utf-8?B?RXd1TGxWNWEzZE94VXBSTFhnMHVrYnQ3cE02UEVrb3lhSnhKQkZ2alJsNkdH?=
 =?utf-8?B?bGIyTDhzeit3ME1HVHJ4cGc0ZnFacUY0ak5ZMUREMHB4VThJcUl1c1BmUjYx?=
 =?utf-8?B?QXVRaGpadlhMY0REemM2T0JmSGduVG5vSTFOQ29iOVZmdG9LNElMNTNXSmk5?=
 =?utf-8?B?Ull1cWtZS05wdGZxeDR0NkZRK2EreTJMclJWbHJPZUpyZzBwOEtJSTdjVEFQ?=
 =?utf-8?B?K1J1dTZRd1J5UW9EbUV0bkt4T1huZmljY3YrNzdmU2taWUNYQlZKS21aVkI3?=
 =?utf-8?B?ak5iNE5uV2hTYytONjNSdUFxaUM5U1p0NDVFSnJoVVRnOHQ0UTY3My9UYUtJ?=
 =?utf-8?B?alFMOTk4cDRlN05CREw0YjFZbm1ZN2JOR2V1M3ROaThVQ3JMbEoyYUt1YldX?=
 =?utf-8?B?S2l3SzFWM0cxemFkMTgrSHFPOFBOaWZISzZtY3pCaUEzVTYrSUxrWHp3aVlV?=
 =?utf-8?B?QjdwY0JYWnRNaEtqRTMxbUZyMEZuZkJIbTE0YXUrcVBhVzR5L2lFUWpOU0la?=
 =?utf-8?B?U2RTaDlxbmR2NTNZcnFhOCtadUlSQU9EUHhjTDA2VDR1QWxsVnFqTmNIM2hS?=
 =?utf-8?B?TlkrT2ZvMTV3amJqTlRCeU1JelpKSGFlK3BIYUhIZ0hNR3Fyand1VkMxbWdL?=
 =?utf-8?B?RjFyYUVPckJFV01CNzUwNnd1WkpHWEIybUo3S1FmdCtvbUI4Y2l3WENLekNU?=
 =?utf-8?B?bHRVaXp0cjNUZGxVTUtWR1VoR1BjbGJIaDFLdTZIMVZoSk9NeXh4NWJRUm5P?=
 =?utf-8?B?OHRjYTNkSStzSUtlVnRtdDhoNXIwMnRxaTl5TWVqQkZWS0NVeG11M1BJV3JU?=
 =?utf-8?B?cFI1MDUvWFNFR2NnYkJJSHlNUmEyaDFVQ2hzNWxyMVlYWTRySHF4blY1elVG?=
 =?utf-8?B?NzFPNW5ydG1RWnBDZ21BcmlnV2kybHFJWSt6WjN6dTE5TXQ5VUs0UFJRZlVp?=
 =?utf-8?B?U1d1ZGNVdkJJV2hCTHdRRGd2NmhuY1BYclpBR04yeUVNR21VMlBmUFlBbDFj?=
 =?utf-8?B?c1oyaC9temtuclZlTVNFUU1zWEN1QStRL2hBRnFLdXR1Ym8yRTlidmt2WHkw?=
 =?utf-8?B?RVJobHpXNEdVQmVMcmI3eDNnVkRtRnFQN0srNGRLUUdiaDhiY25YcnY3Q25S?=
 =?utf-8?B?bmF1dnc2ek1ETWRtalBrRzJadXZMT3NYaW9mM25Ia2x2VlBmL0t4d2ZMY0Vo?=
 =?utf-8?B?NkZ0aFNJOFFDc2FGL1hRR2xQMFFRblJZbjB1eGZEaG5GSWY4TWZ2L2RtZjR5?=
 =?utf-8?B?bUpuaXIvUXZrUHFWVkVLM0ZQdjVSTUdPY284QUtyZk5jMmNreXQ0cFFVYXpT?=
 =?utf-8?B?Y1R5UGdwZkRDVi9FekZpQjA4bGFpYnNURy9Mc1RjYUlTRFFDYjlzV3Z4TEpD?=
 =?utf-8?B?UUt5bHF4U0xqQUo3ZzRhaXZ4dHNsRUVzRkc2a1dHQm1JcGF1enV5WktTbmNh?=
 =?utf-8?B?RlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 69321f1a-6788-4d8f-dbbf-08de2ca1a131
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 04:09:44.7304 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UCoJ140QYqY27/p3U5IW5e4LVEEfuj0DjHVyhKs1vhyBn3P3IUgCD3PU/oBnz8qG6v0IQotBWKAqONsiTTLq2nUDpIy+QaBjUksN7d936aM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7898
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


On 11/17/2025 11:14 AM, Mitul Golani wrote:
> Compute DC Balance parameters and tunable params based on
> experiments.
>
> --v2:
> - Document tunable params. (Ankit)
>
> --v3:
> - Add line spaces to compute config. (Ankit)
> - Remove redundancy checks.
>
> --v4:
> - Separate out conpute config to separate function.
> - As all the valuse are being computed in scanlines, and slope
> is still in usec, convert and store it to scanlines.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 38 ++++++++++++++++++++++++
>   1 file changed, 38 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 650077eb280f..7cb484dd96df 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -6,6 +6,7 @@
>   
>   #include <drm/drm_print.h>
>   
> +#include "intel_crtc.h"
>   #include "intel_de.h"
>   #include "intel_display_regs.h"
>   #include "intel_display_types.h"
> @@ -20,6 +21,14 @@
>   #define FIXED_POINT_PRECISION		100
>   #define CMRR_PRECISION_TOLERANCE	10
>   
> +/*
> + * Tunable parameters for DC Balance correction.
> + * These are captured based on experimentations.
> + */
> +#define DCB_CORRECTION_SENSITIVITY	30
> +#define DCB_CORRECTION_AGGRESSIVENESS	1000


As mentioned in comment in last version, we can just have this value as 
1000 * 10 instead of multiplying 10 where we are using this macro.

This is a bit unclear to me. More about this below.


> +#define DCB_BLANK_TARGET		50
> +
>   bool intel_vrr_is_capable(struct intel_connector *connector)
>   {
>   	struct intel_display *display = to_intel_display(connector);
> @@ -342,6 +351,33 @@ int intel_vrr_compute_vmax(struct intel_connector *connector,
>   	return vmax;
>   }
>   
> +static void
> +intel_vrr_dc_balance_compute_config(struct intel_crtc_state *crtc_state)
> +{
> +	int val;
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +
> +	if (!crtc_state->vrr.dc_balance.enable)
> +		return;

Here check should be for crtc_state->vrr.enable, and 
HAS_VRR_DC_BALANCE(display) and return early if these are not true.
I think this vrr.dc_balance.enable should be set in this function, 
perhaps not in this patch, but in the last patch.
Currently its set in intel_vrr_compute_vrr_timings() in #patch17.



> +
> +	crtc_state->vrr.dc_balance.vmax = crtc_state->vrr.vmax;
> +	crtc_state->vrr.dc_balance.vmin = crtc_state->vrr.vmin;
> +	crtc_state->vrr.dc_balance.max_increase =
> +		crtc_state->vrr.vmax - crtc_state->vrr.vmin;
> +	crtc_state->vrr.dc_balance.max_decrease =
> +		crtc_state->vrr.vmax - crtc_state->vrr.vmin;

> +	crtc_state->vrr.dc_balance.guardband =
> +		DIV_ROUND_UP(crtc_state->vrr.dc_balance.vmax *
> +			     DCB_CORRECTION_SENSITIVITY, 100);
> +	val = DIV_ROUND_UP(DCB_CORRECTION_AGGRESSIVENESS * 10,
> +			   crtc_state->vrr.dc_balance.guardband);
> +	crtc_state->vrr.dc_balance.slope =
> +		intel_usecs_to_scanlines(adjusted_mode, val);


This needs to be written with more clarity.

Perhaps need some comments to explain what is happening.

DCB_CORRECTION_AGGRESSIVENESS is the number of millisecs to adjust when balance is twice the guardband, as per our settings we perhaps want 10msec.

Slope is the ratio between Agressiveness msecs : Guardband msecs.
We can use ratio of agressiveness usecs : guardband usecs.

Currently guardband is in lines, (30% of vmax lines to be precise)

guardband_usecs = intel_usecs_to_scanlines(adjusted_mode, crtc_state->vrr.dc_balance.guardband);
agressiveness usecs = (10 msec) * 1000 = 10000 usecs;

slope = DIV_ROUND_UP(agressiveness_usecs, guardband_usecs)

So IMO name the macro 	10 * 1000
Use slope as ratio DCB_CORRECTION_AGGRESSIVENESS_USECS : guardband_usecs

Regards,
Ankit


> +	crtc_state->vrr.dc_balance.vblank_target =
> +		DIV_ROUND_UP((crtc_state->vrr.vmax - crtc_state->vrr.vmin) *
> +			     DCB_BLANK_TARGET, 100);
> +}
> +
>   void
>   intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   			 struct drm_connector_state *conn_state)
> @@ -399,6 +435,8 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   			(crtc_state->hw.adjusted_mode.crtc_vtotal -
>   			 crtc_state->hw.adjusted_mode.crtc_vsync_end);
>   	}
> +
> +	intel_vrr_dc_balance_compute_config(crtc_state);
>   }
>   
>   static int
