Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C20E4B08FF3
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jul 2025 16:59:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3446D10E01F;
	Thu, 17 Jul 2025 14:59:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JEnK3MDm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE56210E01F
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jul 2025 14:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752764344; x=1784300344;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=re3JY0Xcg0YNqTc9aCOQFLcwM7KSe4mbb/dXvk8Ilio=;
 b=JEnK3MDmFwcNRqzMXiOslOHPLVd8V4bv7L1IpGoTfA7QF3IT3aiiyyQE
 RnRHeRrGI0fzGTccrq1+Yqp4Y3eyT/aB1LiShjT3gZuExicWAOZovOhzJ
 IJK5tV70xZ9qsAHererUKdL+A2NRKFDS4gfB/UHtaB4tISJZKi48AaDQD
 VuhOLqjGBsNqxBzsN94CgAVW41BZqoUtXB8KIduOO2kT+pnH3qJ1h8IFb
 jEiD2PFERl2Ml3nidoGEwZtRfNCXUBicJb4p6gr9y3vXnP//5PwOAY7oY
 nSnEN1V6DmVeRrFTpA+vLu3CNkyiEIawNKHpg+cKOBwZdQk9gjB2xFfWm w==;
X-CSE-ConnectionGUID: +XVknH2fS/aH3U+NVpJneA==
X-CSE-MsgGUID: 7NSuWQsyTHyiZZHip6/Eog==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="55129250"
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="55129250"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 07:58:54 -0700
X-CSE-ConnectionGUID: nExlhkN2RkSv+oenhaqleA==
X-CSE-MsgGUID: CS1t2BCoSeSEjWZowwsMBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,319,1744095600"; d="scan'208";a="158373849"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 07:58:54 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 07:58:54 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 17 Jul 2025 07:58:54 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.61) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 07:58:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iM9y10m3d6V0YwHp5aDG6DiQazzNZCbFGd/MoDETdGWfGoN4GXbzu2U6PIxgdN1cYyaWOghA0o+VErE/c7cjKLW7uO1RJsTv53LCpJ2EHepAYG9PFfL7pltCtnQD7RuT72IyXvfIZHkVrrH5E5GQfGOdf3xW3gsPIj5PV+/oxsfOcookm2AUptqgEUT0XyjouFK4jrOpl95EyxN5wwQJc1JjJulu5urx12F8cKOYDxu3hELzMxdmc0wr+IaN4KZLkzXoQqYRZXD6IqK9XEgfhelw3/vOmNOqG+izMmo9GB5+NIfP7VOmH+w/F8F5HXOfZWacA6hjlGB5FbIsQ2/g0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=otTa5AN/l9m7HMggmAQxza4MyBq0GFi09Axaj/aVIqU=;
 b=p/urwwSxPxcZ3nsK3ckAiwDpivE1PKsesujMSXEG8pMZ9iPuMwAxq/iPlXPNg+U1vbtExOXJ9xooDavqm3q+9W5NjVlgsG3wzBS/jW6lG63/ZQBsPbZMQQKnWMG5CrhIahEizTWGrbmDHR+fnEPijvn3h7K3EfpZQn+21eKVYOpSiHehhbXkUukRUmgYNr0DbQ/vXXexnd9GKRp5/2tIvEfEnCdDcF5O8fBlMVH9TFNHD/OaWSx5HXcZK577qASMTYqhzDnyWDQIaOQZNu2kqB0fZDdCGcOFnXehqkteYnrMOeR8VsiNSdeZ8RtYZYEZ40x2Kb3qL4p+hOyjYntjBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by DS7PR11MB6173.namprd11.prod.outlook.com (2603:10b6:8:9b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.36; Thu, 17 Jul
 2025 14:58:51 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%4]) with mapi id 15.20.8922.037; Thu, 17 Jul 2025
 14:58:51 +0000
Date: Thu, 17 Jul 2025 14:58:42 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>
Subject: Re: [PATCH v2 3/3] drm/i915: Replaced hardcoded value 4095 with
 PAGE_SIZE - 1
Message-ID: <oeukmh463plotuftmw4il7jmd7xl2u4bbv64ixorrxwmgrn456@eeouoxvqwc2v>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20250717123824.676605-1-sebastian.brzezinka@intel.com>
 <20250717123824.676605-4-sebastian.brzezinka@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250717123824.676605-4-sebastian.brzezinka@intel.com>
X-ClientProxiedBy: WA2P291CA0032.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::21) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|DS7PR11MB6173:EE_
X-MS-Office365-Filtering-Correlation-Id: ede93bf6-7b97-4985-3c14-08ddc542706d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dHB6UzVlQWdzZVBEMGpPTGh2SFdsNThDQWtNQmFFQ01vWmpNdTM0M1FQNkh5?=
 =?utf-8?B?WUNDL1NlVlBSWFlaZUl5M3N1WCtsaVFncHhrZFB1TkNnZjhNaFU4WHlkc2kr?=
 =?utf-8?B?VVpLOGlpMnlMSk15bStjQ2hNMkNvaWgwcWkrdDloVDlLU0ZlWmtMVDFhREJ5?=
 =?utf-8?B?dTR1YmRrUVRYNHF6T2puTnVLdmJ3T3BFNjM2b002UzM4dFlVTjNITko2LzhY?=
 =?utf-8?B?Zmo5cS9KeGxSMGxZc0U2dEdvOERTUG5aR3E5RlNLbmh2QWp3a3RSSkdKVFlx?=
 =?utf-8?B?a3FjWHlvd052ZzVTTHZlT0NiTVZSMkZTbTRpMy9JTlE5dkNObEtXYkdvY0xM?=
 =?utf-8?B?L29nSW5sa0k2N0c2elJzeHhrZncxV1pGOHhwd1BRRi80bVY2eGxrQSt2VVl5?=
 =?utf-8?B?MVR4YTJyRGxpV1BPZldNTko1YWVNSG53ZE9QR1pWa041Z0dac25aeUw1aTF1?=
 =?utf-8?B?U3d5RWtIRUphRGtTay9udWNaSXdBUUpSVnpzbnF1UVZ4MlNVY3ZtaGc4bms5?=
 =?utf-8?B?eDI0SmNWQVl6V1VGbWEwR2Z0TW9zU2gwNy9BaGg4ZVZLWXpudXRxMW8vVk0z?=
 =?utf-8?B?N2tTT0JobmQ3MEdWSlAwd0dmKy9Ld2gyeFQwQVFjRytNTEZEYy81bVdDdFJK?=
 =?utf-8?B?VkJmRDFOSDBUMUpJcmN5M3h0ck1Oam9udnJjMDA1aEpubnlBN3JYbGZsQlVM?=
 =?utf-8?B?VHc0ZkR2dEQwVDZFQmM4bXBUUW1PME8zcWlUNUZLZXJBcDcxejRJNnNRdjdl?=
 =?utf-8?B?Nk4wMVhDZW5QNldxeTYzSk1nOWs0YmEzOWpxSUQ0N3M5RkZwTlp5ZVQzdmV1?=
 =?utf-8?B?Z1lEdG5tcVBMd29xNXpoYmZJOXpyQ01NSWg2aDFFRFJCVXA4WkkyK0ZKMjBC?=
 =?utf-8?B?YXJEM3JTWnFyQmJWQ0c1Ulo2ZkQzZ3dFNmRPTjZPVXVwd0JRdHRDb0hrQy9C?=
 =?utf-8?B?RDVQWDRJVVorZ1phaVlKSHM2bHI2TW82cTlhS3ViZ3FxY2ZyWFF5WDRsNUtj?=
 =?utf-8?B?S0ZmYzNXTHU3V3V6YU1OcmFTeHdYTDdadkViYmVlc0pGVzFkck5zQmpZWGg1?=
 =?utf-8?B?cVpCSlc5Q01tUUxQTUptM3EyZFY3RGZ2RWNBR24yeUJhQ2l3Z09VMVJIUDhB?=
 =?utf-8?B?VSsvV3BkRExhS0dvaDhIajExOWJYMXF2NE9FbnVPcnF4dDFKOXJ5MUp0Q2xx?=
 =?utf-8?B?YkJxaEhtWVVRa2dqNmpPRGtoODNsd3FZV1gzZVBSbm5rSGFpdHc1UEVNN0FL?=
 =?utf-8?B?V3JieTVHd1lqT0NkcjU2RnNLdkVHQlVHRzcrVHIvQVg0cVdSQjdBL3FkZStH?=
 =?utf-8?B?R0laR3c3VnQzNHFNckdGY3gyTDRqUG5DTmZlMHVFNkMxc3Z4YjJ4S29xSkdt?=
 =?utf-8?B?clFFMzB2QmZwQzNhNnl4NWprZXF1SDQzdG1zamk5c3Ztc2NmcXRvZFFGUE9q?=
 =?utf-8?B?eUtmdTVoZllZT082Tmc5Y3ZnMG1jcFFnUlFWNjh1cHJhRHhybDczTlpxOGxK?=
 =?utf-8?B?azB3WTFEdHBmL1N6c1pnNFNWaHVCbFRvaDVUS0lUQWZXb0FNOUlScFJ5c2Fa?=
 =?utf-8?B?MVpXRGZUK0wva2tzeExIWDMvWVFiK0hyaGVnTmFNQXVHUHFDMU5sc2gwMDd1?=
 =?utf-8?B?Z20wQ0MzUWhPQjhqbWNFRWFKY1h0QXE4TjJBQU9jWnlSb0xqa0JFTEVvN2wy?=
 =?utf-8?B?M2JKdFZ1WG8xRCtoT2lVWW8xbEtzNVcyYVRoVXlLWWlMTlVnNnNYcHBYbmNq?=
 =?utf-8?B?WFJMY1BtZ0ZNUVBxcDZoVGVMWWNLRk80T283YXhsRllTYTZZSWN4VkJ0SzUr?=
 =?utf-8?B?VnlTbzRscWFQR2Roc0xGUXJaRGd3c0pEYkVZcHNnYjhYL0x0bmlMdU1Kclcr?=
 =?utf-8?B?dml4NitGZDBSNnluNjdOUWJaQU9PRjF4R0JYVE45Mkppd2hQUmcvZ0xGZkY5?=
 =?utf-8?Q?t2oMCTIpX00=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?czdvL3EwOGQyWSsyaVFibjcyNloyL01qK0RWSGt1dldRYkQ5a0JzM1BaSk1n?=
 =?utf-8?B?aUUrc01QRGVYaVdMQWpDS0MzQzRPbGxoSy9rMytQMy9hbCt1b1N2UU5IZjlI?=
 =?utf-8?B?QnQ4NnhXK1UzM1VtVXhrREI5UkRsbHVoR0NLTkNuMUhTN2hCR1hvU0JPWnBP?=
 =?utf-8?B?SDhWUTVVcmFuQ0g4VEJuT0ZrbC9vKzlGNmZNK2hzMTJ5bVYvaVhqOHBIQkVn?=
 =?utf-8?B?SXE3SkVjTUk3dTl3ajQ0U3NMVDdqT0pzK2l5NDNkLzRWekJielJOUWo1cnZh?=
 =?utf-8?B?TmJkSTJCS3BxRG05KzVlclFBUjlLYUlYNVdCWWYrMUdiWmp1clhLYklOUThN?=
 =?utf-8?B?TGZZLzJDWldyMVhhQlA1L3pPR0ljRVFnc1ZpQW5CNUxiNnVoTmNhNkY3Ri9u?=
 =?utf-8?B?K3RoR0ZBdVJOOTQ0VWlYUFJja3Erckw0QWNyZHhtMEU5ZHM2YURYbGt0VFI0?=
 =?utf-8?B?QWREcVFtTk5BWHN4R0FMdFhQS2hxNHoxSjBMd2VDaHkxbUp1UVdWQm9IcTEx?=
 =?utf-8?B?TW91ZEw3OUE2eERJYjlBdWIvaTlqUU1KeEJKYnBxb1RmTFNwMmtmemNmU0Fq?=
 =?utf-8?B?TGZVV1hDVG1iK3BBc2lYc2NLbHBsQkU0NDFWRmljVlRPb0dlcHhoeFFIQTAx?=
 =?utf-8?B?VUxFUmlwOEZDNTUxeUtkRDFReitEUmt4UGZUeTBEcWNqWi81RkVIM29YdVlR?=
 =?utf-8?B?MFk4cTV6T3JiVFA0T05DUzVqOTYwTUhsdnNkSXRDak9XVkhUUUV1Qis1dEhZ?=
 =?utf-8?B?d1BiTGgzYk0zcUpldWlOWEJRQkU0VXRLdGJJOFFQSE13SW9kck9rWTFPQnlW?=
 =?utf-8?B?eDJOV0Z1QiswSFp4MzdVQm1PSWdGZUNtVXZram1pUzk5eFpUOTFBMldQR094?=
 =?utf-8?B?SCtXTzF6dGpMYVlaUVE2cHFMaTBtZlJXMVZ3a1Q5V21yc0tFVzR0aUFCenVX?=
 =?utf-8?B?MnJ6U1UwbVRyKzZ5aDRjanBmOEVWWVIvVk1lRWRoWGRFMWF6TDhsYkJjNlhQ?=
 =?utf-8?B?ZzNhajd3RURKVjhLMnY4OGdSYjIrTFNqNVI5UlhGOElZczN6cUhVbSt5MS90?=
 =?utf-8?B?NlpQV2FQbkVCaHI3Q0ZoWlVPSGU1aGhTN0hGOXA5TXpRS0ppTW9YTzRqOHhU?=
 =?utf-8?B?RkttK2lFNS9NdkRYQ0Q3aWVaMEJPSUZsdDRVZjVlT0ZmTmVaWXNDNlk3eitx?=
 =?utf-8?B?QzRxcFl5SEpqRkVOaG1OdENqTFJjQmpUQnBEOFBRa1drNjduRWxzNWRramZW?=
 =?utf-8?B?NjJxKzRJSkgrZHY5R2FtNzluWDZkUytYa1VEc0tZd21NMDhWZldyUTJ0UzdM?=
 =?utf-8?B?K0xySTI0cFlHYU9sTGJ4TXQ3Nmk3VHdRenVNTTV3Uzc0YTBNOXd6WUN2cEtp?=
 =?utf-8?B?R1RaRmhuOWdVOTZpSjZLdXA2M1hwSVVDNWhQR2ozRC9QYWo2ZFJOVG1TZkd4?=
 =?utf-8?B?b094d1NGUDRkckxFbjhPQU9tTFM2dlErSWtTVGNLVWY2dmFNZWRtZnlrdlph?=
 =?utf-8?B?cWR5VXZuNHAwSU1Ba0F5UjEvS1pOQXZjUklXb0UvbnhFeHptMEVpYXhSRzlu?=
 =?utf-8?B?SUZZNlRjblhFN29WK29hSzBaMGV6bnRIem1FMVNyTUpCNEN3L21zSTZra21z?=
 =?utf-8?B?TzZlK1NpQzhYYlJ4NUNMbmRxQTZmTWtsdjZ0NUVKUE42aTBzOFFqSUo0Mnds?=
 =?utf-8?B?V0ZIQlhnTGswSUx5M20yYlZBeTZ4YnV1cWpuOStOWnFwRThnMnNtc0VSVURL?=
 =?utf-8?B?Z1VTQ2REQU9qcTcxU2pseCtRYzBvU0Y5bHN1VWtMMmlqL1RubTQ5OVdMM2Rw?=
 =?utf-8?B?bjJOMnZGYll5bkQvUHJTS0JWZzdWMmhCR1ZGY21DSHJxMDZKQnBlc0laL2M4?=
 =?utf-8?B?TmJqZXhxbVUwcTNsQkh5dTdqc3BYU2lQR21acGVrbFhKc1BMUGNqQXZwVnlC?=
 =?utf-8?B?TFh4MFFrWTV2TEl0N2tMbXNtUTVsVEhGWk1LOXVqUks3ZWlQbmR1SHBKYWZ3?=
 =?utf-8?B?OURlcVlFZ3p2OWFGeUJ4Yk1UVTg0MUhyNjYzTXVvSnJwdDlwTG9jQ3o5ZlY5?=
 =?utf-8?B?VHJxSVJiNDk3VklEcDU1S0lSYTBQMEpEYTZ2VzYwUlJ0N2NJMk5DNEJpeERN?=
 =?utf-8?B?WFdlOEhZMlRxQTBaeDJOVmtiNnNDenV1Zy9DelFYNGVOcW9tWTF1RDcwNEgy?=
 =?utf-8?B?c0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ede93bf6-7b97-4985-3c14-08ddc542706d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2025 14:58:50.8477 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uX8w3p7nfKlynRDNJbPUyp7xnfjalzqXurHjEBh6sfejZetJqRYET0g1qT03CeBKZ7HEPP/F+91vNNEWVRWl2X8SWF8XJTJvIyCpBYkmxXE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6173
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

Hi Sebastian,

> The value 4095 is most likely intended to represent PAGE_SIZE - 1.
Andi noticed in the previous version of this patch that
"most likely" might be too vague and I agree. The original
commit that introduced this magic number 4095:
5f22cc0b134ab702d7f64b714e26018f7288ffee, which explains a bit
why it was introduced:

    "commit 48ea1e32c39d ("drm/i915/gen9: Set PIN_ZONE_4G end to 4GB - 1
    page") suggests that there is a genuine problem with stateless addressing
    that cannot utilize the last page in 4G and so we purposefully excluded
    it. This means that the quick pin pass may cause us to utilize a buggy
    placement."

So in this case I'd assume that change from " - 1" to "+ 4095"
is indeed supposed to include that last page (which is of
PAGE_SIZE length).
Would you mind checking out that commit and seeing if you agree
with my assumptions? If yes, then please add a reference to the
commit 5f22cc0b134ab702d7f64b714e26018f7288ffee and change
"most likely" part in the commit message.

-- 
Best Regards,
Krzysztof
