Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MAJEJZPWd2mFlwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 22:03:15 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D0B8D75D
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 22:03:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFF3810E25C;
	Mon, 26 Jan 2026 21:03:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a2DouC4b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C77C10E03A;
 Mon, 26 Jan 2026 21:03:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769461391; x=1800997391;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QffHUJkVFpS/zTzn2LZ7IyXGxSXvddxahmWYpcVE/Yw=;
 b=a2DouC4bPUjrJ3bZF9rC4Y7IucwjOsUWjELJbvL9v9Lm9xVafxQjmGBo
 vd/nBKXpdE+rwGzU0HX3Es1kqwB6pRZjcFDb2RNmYzoYZ8cwBCwySrtJi
 GMwt9s6K+CWn7QQaoF+AhZQQ0FSVaX0VRLjqEY/W5Ok+Cte7scn7SPr2F
 4QQwiLpgObqttU1Y7PMM63Ce7zgQblS/PflHArGXgFfbCWbi2A3V4JpLs
 USdLJePEap1XZ/Cw4VPqWbM3ppPgT1OEavOEIwH0TMUGpU5f729bGDh0f
 5lzkWBERqf04pFWwEAm0Wf9SGN+8LjKg24eKrDVafo8EwR6U0U+0gcxE+ Q==;
X-CSE-ConnectionGUID: tagFA/T+RYWhiEWdYQ3tpw==
X-CSE-MsgGUID: 01otKES3TLaz+YngCmRRKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="81757419"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="81757419"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 13:03:10 -0800
X-CSE-ConnectionGUID: CYZ0HO+vR+avd3kuzHujWA==
X-CSE-MsgGUID: H4qwW99PTjiE3/bvwvPSIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="206908888"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 13:03:09 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 13:03:08 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 26 Jan 2026 13:03:08 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.16) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 13:03:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I4SsOplUa2GlFox/1eb+C9hCx5/Z84Idyto0mxZnTpTWvg4oQkJikh1MYoTQT3fHgL9OsMhU+Q6GYWrF691NQblZksTRev/pWtJIyiNKRKtxEmK5Lv3fOJyK/QtYU1BZLlOp/TvzgdLgKaTQQzv5JWqUP6Ca2573+a2bOyDplirONeWOfDbgXfuJB4IsEc0Gmzn9WiJgYH+NJY5SlHPLrWlN5gXkaArr6fA0eEnzmYaT0NhLMYZ1RHhbWoQ67zCO90qXQY2e3IOzo3E3ffrC5JGoHW3lY8UuGMkFid7rbhBPv5THJkemc+g8Lv0XAsruhbfSqG/+7hWdVv94ALIfmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H3Jm+cCr/tH9MI4SgNt7CnEIDmm5fNBEbyagv7l2JQU=;
 b=WJlHaUYN7ooanMz2BbVMWuQONEA45Z6hAK9zI5V06lZSk9kR0dBdlvzjY1B6wJDOpgR5PO7tDtxerZzzPjAHTVXi0eS25w8fLoYGT9wSA+AAeU3ipk38Ez4kepW0FER/6jwQqWJbxN2gvoRPw8RSxjk0i3ve9RfAUK8rY8MDy8ivOE4Tf1cVbjUIsX33pkC9sUPLFTedfQ8X8NMsBXYQm6R40yzqCCdwWDJOnL2r+DQPFvx7ighm6tYMC9nHkG8KgJVPG797b1rALwdgsWcVhQY6AhzY5TESvnHiQGky+kasgAmaWz8QPs4TncA88HqgyTgmOM5yzvZeDDkEhTq+CQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6011.namprd11.prod.outlook.com (2603:10b6:208:372::6)
 by CO1PR11MB5139.namprd11.prod.outlook.com (2603:10b6:303:95::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Mon, 26 Jan
 2026 21:03:05 +0000
Received: from MN0PR11MB6011.namprd11.prod.outlook.com
 ([fe80::3a69:3aa4:9748:6811]) by MN0PR11MB6011.namprd11.prod.outlook.com
 ([fe80::3a69:3aa4:9748:6811%3]) with mapi id 15.20.9542.010; Mon, 26 Jan 2026
 21:03:04 +0000
Message-ID: <df9ef415-b6ef-4402-ac39-f4f014ea3e68@intel.com>
Date: Mon, 26 Jan 2026 22:02:58 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/5] drm/xe: Rewrite GGTT VF initialization
To: Maarten Lankhorst <dev@lankhorst.se>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: Matthew Brost <matthew.brost@intel.com>
References: <20260126104604.988024-1-dev@lankhorst.se>
 <20260126104604.988024-3-dev@lankhorst.se>
Content-Language: en-US
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <20260126104604.988024-3-dev@lankhorst.se>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR0102CA0031.eurprd01.prod.exchangelabs.com
 (2603:10a6:802::44) To MN0PR11MB6011.namprd11.prod.outlook.com
 (2603:10b6:208:372::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6011:EE_|CO1PR11MB5139:EE_
X-MS-Office365-Filtering-Correlation-Id: 872ce415-2591-46de-6cef-08de5d1e4c36
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a1IwamU5TUxZaEFVeGo2amgvdjhXd2NqQzFjTmx2VlBQd3dBdVI2Q1NUN3ZS?=
 =?utf-8?B?NEZXTHQxZndBa2F3RDNoQkxrRmVFUjlleUZDTkw4TkpuSW9NSjV1UTlNYWFM?=
 =?utf-8?B?dmJUenZGdUEvNm1yeFlOaTFnM0hMOHhCNjI2cHBoUHVENW5qZGpENVZjTVV2?=
 =?utf-8?B?SFpqRGh6YjRUa1VQY3RWVFdkYW9JWGlXTTdGSDhLcENRZmhNb08zNG1xUHJi?=
 =?utf-8?B?WmdvTGJiRzlkbkt5aVFxeWNEMzEreTlVNFpxalFTeEhmb2dwRkxXNEVCUVB1?=
 =?utf-8?B?MGFZSzJFRVYrVnZHcGJMK25BbHp4OHNaaXY5NHoxL1FiVWx3UWN2TE9VYVM3?=
 =?utf-8?B?WHlxQWZzUG5hZmt1WGswbktwM2ltcWdSd2YvN2xWaFNWanZLQ09JOWRJRkZY?=
 =?utf-8?B?VmFUOG1VVHdFYlR1VlhoY3h4UWlzaUw5M3F3bzUxdlVBNVVzS1VDUDhuWFdZ?=
 =?utf-8?B?MmlLZVlOYUVyUmVTRUI4ais0N3Bmc2E5Tk54OXJuZUV1SnFaellYcDRZY0hM?=
 =?utf-8?B?WnF4NDNDV0UwbjhTYjVSb2dUSHF2VndZNm9UWFNJZjhZUEtKeFVCYytvVTZs?=
 =?utf-8?B?L29ZYlFDQzNXeklZMW01UmpYMU8xMER5VlVFdWozRUxNMEVZVDJodVJxS05R?=
 =?utf-8?B?QnRHSDhRWlE1YW4zVklnc25oVkJYYTl1SlNvQUJWNER6dUptWm8yUEFMZW0z?=
 =?utf-8?B?NnBYeHFLQU5tc0dZUW1qNUNwc3pLWTNpMmZTemJ3bWlTNmhoR0VsYVNGWFhi?=
 =?utf-8?B?aXp5S2RmUzAxN3Z0bGZDWjFPOXNzUHlPWVlqUWQxUUUxRVlQcHIyM1lBNjdu?=
 =?utf-8?B?dkxkUmNXK0wrbHFpRmJxVjRSMVJJK2Vmam5aaWpDaWgrRTFPRndEU25DZzVQ?=
 =?utf-8?B?UkwreFNrektEdWl3SmhJemFpaDlaTlZ5cFVXSlI4TXBMYWpmdVBzR3dKTS9W?=
 =?utf-8?B?dlJoT2E0TmZjbzhxMzhMSDFVYU5La3BzUlZndHBhVUVsbHlmS3NKK2xLUnNO?=
 =?utf-8?B?aWRIS2VwMmJ4NVVVbzNWejAzOVB0TkNtbFY1TEw1Qk5DLzZGbmdWY3h5UkZ1?=
 =?utf-8?B?aGxzdnVXbGFncGFVS2FLL0plWGVGYzliQnZFRlgrclJEZ0RvNDBKem5hL0ZW?=
 =?utf-8?B?ZDk5T25tYmdKSVZrWFlyWFFpNVZFMG4wR3doYXZJRnRpMVpHSWNxV09NTVI3?=
 =?utf-8?B?bDlLeWNYaG9UUTBMS20zOHlIamJPUzIrd2lPVWwvc2t6czFRaTIyL3dibVRo?=
 =?utf-8?B?eHowell0VUdpTUU5REhqWUhva2dZU05DWW9yblBEalJYYnZlWCsyZWhRMWZW?=
 =?utf-8?B?b1cybDVZazdjUWg5WnkxbE1vZWRCYmNiT1hQdDJDSGNpREs0MnRxak5oNG1p?=
 =?utf-8?B?d3h5N09NakJYekVZQUZHenVLTExYcGNTdkkwdXhwaXNoa2xPYXNWellzS0Ju?=
 =?utf-8?B?WW0rUHN3UWloRTVoMzRaU1RlQVljenpVYkNvSXdSb2JkaVZYckJkVDI4NUVl?=
 =?utf-8?B?c01ESWVWZGpMaVlSYjVHRmRlQzEwbG1PcWxpUHZYS0dPdytCRXBUVjhCSVRw?=
 =?utf-8?B?dXRiNmwyL0ZCKzFJQXd4RU5HT1ErT285SlFsTkZEdXNoZlpiUUZNV0o0T09S?=
 =?utf-8?B?SVdPMTlpbW94SUwxcEJVdTZxaDBXNUN5UWx3ZWg4SmI0Z3hjTkhRQUt5V01v?=
 =?utf-8?B?UGZmOVZTbEZxSUVnTXZ2b3J0UUxtRHR3VGRsdEJzaEZtdEZ5UzUrVGZYL3hv?=
 =?utf-8?B?b3M1QWJBeUg1NEpLRXVYZ2RJNFZEcVlPbjZ6Rk5NOHFXVG01a2FzR2tBUElu?=
 =?utf-8?B?UFZnQ0Y5ajFGNGJ0TE11aFhNcUlka0tQS2pxOEpHUXZJVmFPQVpoMytiblVm?=
 =?utf-8?B?Y0JmN2cyRVhRL2MzK2Npcm1HRDRaaU5TemVHMTcxV2poa0k2ajBvckdnaFdZ?=
 =?utf-8?B?bnhJV29GSVJaWUJOQ25UZ1hnWUdqQnVVU2NkRTIwdzNjNThyNnNtV0lHT0h1?=
 =?utf-8?B?dHZhMzNLSFpnV2ZVbis0UitpTDNKbjNsZzRMN01HSEtyVU4wN1l3d0tjbHFt?=
 =?utf-8?B?S1U4TmdrZWlTNlkvMkR4MkZoOUNpUFVuencrK0lLK0lDcDZVeHdia1l0T29l?=
 =?utf-8?Q?WQ+4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6011.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VTJyNk5YUkY0N1YzQjl5K2F2d0NudzVrbmowTjJCYUdhd3JNOWtGRkpmd0RO?=
 =?utf-8?B?dVZtdDJpREVqeVF1T1dqSEFybWZtL2Rkc2IvSXJUWmUzVEhYOG1hbGk1Mldx?=
 =?utf-8?B?Z2FJZ0FQRWpSVEEzcC82K0ZTQWxwWXUxRlFPeG5QcUxjOFptdGhSczdmOGNn?=
 =?utf-8?B?WnhSRWpvS3I2TGx3T1pSNzlwaVNCZEVmSnV3S0RVd3JNeStUbm1pRUNzWndH?=
 =?utf-8?B?UXI2S3ZacDdYbG54cWJyMmtwci83RlorMm5IWURaUTcrNlRsNE9PMGdMWFlq?=
 =?utf-8?B?bFMzbkFrd1JkSFp2OExEbVhCb0lSNzg5Yk16NVpuZE4zSFhjKzdQQy9DbURt?=
 =?utf-8?B?anQ0ZEhWOW9tRHA1eWt2ZVpFT04renRZUGMzNlBXc1Z5akdIUzBMc1JKdHhs?=
 =?utf-8?B?WkNQQjBiUUw1dm9PRElPcm1xN29ha3JyNERBMTFaalJoOEJwNVg3VXJDYW0z?=
 =?utf-8?B?QnBydGxicnBGYWNrN3Z6WXdKZEJtNW04QWRybmRpU0ZreFllcno0cE1kaFNx?=
 =?utf-8?B?d3RVUXZjN1hPREhNRnNKa0NJL2ovdjYzTzV5cFJ6aTBZbnRIVkdFVlpmbE9j?=
 =?utf-8?B?L2N1akZrU1czQkhaUHBmRkZZeG43MHFEc0s3bEFqQkozdW1KQ3FPU3dtT0Z3?=
 =?utf-8?B?VmVSeEdlbE9mVThsd2RTSmdFbmVDN2VyNk0rNzFNNDlXTC8zVU5ZYmJYM2Zi?=
 =?utf-8?B?dk4yWlAvUE4vcUlNdzNZbVZpVGZVSnJmMkljdk1keVpKZnY2UzUyTlRNOXAy?=
 =?utf-8?B?dUZuVEE0cnRhdnhiSkpDdUpreXlNeDRmbEg0UW56WjEvUkd3bm1JTk1Ma1lZ?=
 =?utf-8?B?ZjUraE9RanhNSVAyTFp2TjhYczhvYTJXclF2QjlNc0JMR2JmcjVXcEtZMVdh?=
 =?utf-8?B?N1BvWEN1VnBPdkZHQWdIRldvMWFNR1l1bVZXT01IbGxSZVF6RWpLVU0vTmVr?=
 =?utf-8?B?UFFhUTZHbGJ3RVdKazR5TlNZQUV2NVFLbTZTMGJyL25aMFY3SGJnSzBNUUlD?=
 =?utf-8?B?WG5CYUlUS3RBQ3FiNEhrTVhyaEpEK1JsbHd1dUtNc212Z0FKRDVzSlA4eDZS?=
 =?utf-8?B?MExob1BsUFJEM1JodkFoTW9jcUJod2lwR2kwWlBsSTZObGZyVmZERXMyaWw5?=
 =?utf-8?B?UFIwNElxdnFkbWFMNGdxbithanBQNUlrODhLMURieFZHclZudUlZRE1VS0xC?=
 =?utf-8?B?QWl6RUlrTVBzWmE5cFpkU1kyQkdyT0RWSGJhYzJhODZzdGl1WnU5Y1FpTWZr?=
 =?utf-8?B?TUlnR2Y2YzJPRU9uSVZ6UHNCbmQyQ0tINlN6VE1Oa21BbFVqbDdwT0hFcXpF?=
 =?utf-8?B?SFV1UENXdW1LWStoRi8yQ2tVTW8xNzFpUWtZTW0xa2tyZkNGaVBDdXdGb3dI?=
 =?utf-8?B?Z0VkQUJyYWhuazRjMnhnU0pLRDV6SGdYVHJJT2xCbVZoc2VGOUtLbGRJUGp6?=
 =?utf-8?B?YVdyckZwd29Dc05pa1ZNL0FZMkxWbng5OStlWDFtVVU1V1EvQndIa0diOTBZ?=
 =?utf-8?B?WE0xM3NnNG1abklFcG9uQ1hUK1FFamxIcTU2Y1FEWitWWUdUNHp0ajd4YkRS?=
 =?utf-8?B?bVhpekxqclp5dDloQjNZOEV3R3U3VnVCSHR4bkNOaVhwU09DQTg3K1VqbnJS?=
 =?utf-8?B?ZlFmaFdrUVNRUDBPdFV0MWhQb3p2bmVPMndkS0Vob2JjT1NvalYrKzJRa21H?=
 =?utf-8?B?RzJ3ZWV1QzVnbEwraCtCbGhXVGJYOURacDZpM1I3NTZzMGNDMDdleFh1cTVH?=
 =?utf-8?B?WGRyTnN3ZkJuM1F2emRzcXU1Q0sydXlZak1iVTI0WkhiamtrV3U3NS8yU2Zt?=
 =?utf-8?B?S1oyOEp1T1dJSG0zM2ZzTEFmeW5VcStuWHhnbStpZFhkclczTmJBVDZTaWhY?=
 =?utf-8?B?RmVWemFCK29SMm9uZkZyRWFNTWNoazZrNDhvSlVBbDRZb3pjZnNVOXhrVVpt?=
 =?utf-8?B?eXNtNjY4ekNwbHRxWkhpdWNWcTJlOXhuRzdmRmNtSTkxNDBxUVRaajh4bExT?=
 =?utf-8?B?ZE11RC9OL2JoSllBOUVXSG1rc1Jyb2RZcFdVTDhLcUVaM3dGZmJpUU42b0x6?=
 =?utf-8?B?OFdzcGJjS1QwNlk4U0pKaUg1dnMxQTA3aHJlbGlJWWZ0QktaSmJuc2xaWEM3?=
 =?utf-8?B?ZnA5alJibFYzTnJodzhocytzZnd1SGVib1Q5dkcra2FkWGhGU0hmM0NCR255?=
 =?utf-8?B?WTdUUm1pSjJFRjNIeXBjM3hKZHhncnprMVcrVExBbEZ4RktpZlhVTTBEbFp5?=
 =?utf-8?B?LzZxQ2ZJaThoMXlMa3BmZUI1OUU1Wko2bnd3OUxMZldEU3Z6NG5BREI5VUZE?=
 =?utf-8?B?eVpMb2RCSlo1NTVlQ09tb0xsVDBQT0NzV1NFZ3E3WVBWRGl5YVpuTmwxRndU?=
 =?utf-8?Q?YUpejGGkwFJ4tL8w=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 872ce415-2591-46de-6cef-08de5d1e4c36
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6011.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2026 21:03:04.5055 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YTbMug7yKjWbOc8Ev7oU9MRqATnPb3yUGDU9opgWK0rd2UARu2QyIuHt6EM3Y57TH5hjQjEjanRJXaVSR9nw/P5/xkShTmcyXQKEGwT+s80=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5139
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lankhorst.se:email];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.wajdeczko@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: C1D0B8D75D
X-Rspamd-Action: no action



On 1/26/2026 11:46 AM, Maarten Lankhorst wrote:
> The previous code was using a complicated system with 2 balloons to
> set GGTT size and adjust GGTT offset. While it works, it's overly
> complicated.
> 
> A better approach is to set the offset and size when initializing GGTT,
> this removes the need for adding balloons. The resize function only
> needs readjust ggtt->start to have GGTT at the new offset.
> 
> This removes the need to manipulate the internals of xe_ggtt outside
> of xe_ggtt, and cleans up a lot of now unneeded code.
> 
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> Co-developed-by: Matthew Brost <matthew.brost@intel.com>
> ---
> Changelog:
> - Update comments and documentation.
> - Rework the flow of vf_get_ggtt_info().
> ---
>  drivers/gpu/drm/xe/xe_device_types.h  |   2 -
>  drivers/gpu/drm/xe/xe_ggtt.c          | 164 +++++----------------
>  drivers/gpu/drm/xe/xe_ggtt.h          |   5 +-
>  drivers/gpu/drm/xe/xe_gt_sriov_vf.c   |  37 +++--
>  drivers/gpu/drm/xe/xe_tile_sriov_vf.c | 198 +-------------------------
>  drivers/gpu/drm/xe/xe_tile_sriov_vf.h |   3 -
>  6 files changed, 64 insertions(+), 345 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
> index 34feef79fa4e7..0409fa98835e8 100644
> --- a/drivers/gpu/drm/xe/xe_device_types.h
> +++ b/drivers/gpu/drm/xe/xe_device_types.h
> @@ -228,8 +228,6 @@ struct xe_tile {
>  			struct xe_lmtt lmtt;
>  		} pf;
>  		struct {
> -			/** @sriov.vf.ggtt_balloon: GGTT regions excluded from use. */
> -			struct xe_ggtt_node *ggtt_balloon[2];
>  			/** @sriov.vf.self_config: VF configuration data */
>  			struct xe_tile_sriov_vf_selfconfig self_config;
>  		} vf;
> diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
> index 5c11df67b589e..fecbdd71cec5d 100644
> --- a/drivers/gpu/drm/xe/xe_ggtt.c
> +++ b/drivers/gpu/drm/xe/xe_ggtt.c
> @@ -70,8 +70,8 @@
>   * struct xe_ggtt_node - A node in GGTT.
>   *
>   * This struct needs to be initialized (only-once) with xe_ggtt_node_init() before any node
> - * insertion, reservation, or 'ballooning'.
> - * It will, then, be finalized by either xe_ggtt_node_remove() or xe_ggtt_node_deballoon().
> + * insertion or reservation.
> + * It will, then, be finalized by xe_ggtt_node_remove().
>   */
>  struct xe_ggtt_node {
>  	/** @ggtt: Back pointer to xe_ggtt where this region will be inserted at */
> @@ -347,9 +347,15 @@ int xe_ggtt_init_early(struct xe_ggtt *ggtt)
>  		ggtt_start = wopcm;
>  		ggtt_size = (gsm_size / 8) * (u64)XE_PAGE_SIZE - ggtt_start;
>  	} else {
> -		/* GGTT is expected to be 4GiB */
> -		ggtt_start = wopcm;
> -		ggtt_size = SZ_4G - ggtt_start;
> +		ggtt_start = xe_tile_sriov_vf_ggtt_base(ggtt->tile);
> +		ggtt_size = xe_tile_sriov_vf_ggtt(ggtt->tile);
> +
> +		if (ggtt_start < wopcm || ggtt_start > GUC_GGTT_TOP ||
> +		    ggtt_size > GUC_GGTT_TOP - ggtt_start) {

nit: probably

	ggtt_start + ggtt_size > GUC_GGTT_TOP

would be more easier understand, but yeah, that's still a plain math

> +			xe_tile_err(ggtt->tile, "Invalid GGTT configuration: %#llx-%#llx\n",
> +				    ggtt_start, ggtt_start + ggtt_size - 1);
> +			return -ERANGE;
> +		}
>  	}
>  
>  	ggtt->gsm = ggtt->tile->mmio.regs + SZ_8M;
> @@ -377,17 +383,7 @@ int xe_ggtt_init_early(struct xe_ggtt *ggtt)
>  	if (err)
>  		return err;
>  
> -	err = devm_add_action_or_reset(xe->drm.dev, dev_fini_ggtt, ggtt);
> -	if (err)
> -		return err;
> -
> -	if (IS_SRIOV_VF(xe)) {
> -		err = xe_tile_sriov_vf_prepare_ggtt(ggtt->tile);
> -		if (err)
> -			return err;
> -	}
> -
> -	return 0;
> +	return devm_add_action_or_reset(xe->drm.dev, dev_fini_ggtt, ggtt);
>  }
>  ALLOW_ERROR_INJECTION(xe_ggtt_init_early, ERRNO); /* See xe_pci_probe() */
>  
> @@ -538,120 +534,27 @@ static void xe_ggtt_invalidate(struct xe_ggtt *ggtt)
>  	ggtt_invalidate_gt_tlb(ggtt->tile->media_gt);
>  }
>  
> -static void xe_ggtt_dump_node(struct xe_ggtt *ggtt,
> -			      const struct drm_mm_node *node, const char *description)
> -{
> -	char buf[10];
> -
> -	if (IS_ENABLED(CONFIG_DRM_XE_DEBUG)) {
> -		string_get_size(node->size, 1, STRING_UNITS_2, buf, sizeof(buf));
> -		xe_tile_dbg(ggtt->tile, "GGTT %#llx-%#llx (%s) %s\n",
> -			    node->start, node->start + node->size, buf, description);
> -	}
> -}
> -
> -/**
> - * xe_ggtt_node_insert_balloon_locked - prevent allocation of specified GGTT addresses
> - * @node: the &xe_ggtt_node to hold reserved GGTT node
> - * @start: the starting GGTT address of the reserved region
> - * @end: then end GGTT address of the reserved region
> - *
> - * To be used in cases where ggtt->lock is already taken.
> - * Use xe_ggtt_node_remove_balloon_locked() to release a reserved GGTT node.
> - *
> - * Return: 0 on success or a negative error code on failure.
> - */
> -int xe_ggtt_node_insert_balloon_locked(struct xe_ggtt_node *node, u64 start, u64 end)
> -{
> -	struct xe_ggtt *ggtt = node->ggtt;
> -	int err;
> -
> -	xe_tile_assert(ggtt->tile, start < end);
> -	xe_tile_assert(ggtt->tile, IS_ALIGNED(start, XE_PAGE_SIZE));
> -	xe_tile_assert(ggtt->tile, IS_ALIGNED(end, XE_PAGE_SIZE));
> -	xe_tile_assert(ggtt->tile, !drm_mm_node_allocated(&node->base));
> -	xe_tile_assert(ggtt->tile, start >= ggtt->start);
> -	lockdep_assert_held(&ggtt->lock);
> -
> -	node->base.color = 0;
> -	node->base.start = start - ggtt->start;
> -	node->base.size = end - start;
> -
> -	err = drm_mm_reserve_node(&ggtt->mm, &node->base);
> -
> -	if (xe_tile_WARN(ggtt->tile, err, "Failed to balloon GGTT %#llx-%#llx (%pe)\n",
> -			 xe_ggtt_node_addr(node), xe_ggtt_node_addr(node) + node->base.size, ERR_PTR(err)))
> -		return err;
> -
> -	xe_ggtt_dump_node(ggtt, &node->base, "balloon");
> -	return 0;
> -}
> -
>  /**
> - * xe_ggtt_node_remove_balloon_locked - release a reserved GGTT region
> - * @node: the &xe_ggtt_node with reserved GGTT region
> - *
> - * To be used in cases where ggtt->lock is already taken.
> - * See xe_ggtt_node_insert_balloon_locked() for details.
> - */
> -void xe_ggtt_node_remove_balloon_locked(struct xe_ggtt_node *node)
> -{
> -	if (!xe_ggtt_node_allocated(node))
> -		return;
> -
> -	lockdep_assert_held(&node->ggtt->lock);
> -
> -	xe_ggtt_dump_node(node->ggtt, &node->base, "remove-balloon");
> -
> -	drm_mm_remove_node(&node->base);
> -}
> -
> -static void xe_ggtt_assert_fit(struct xe_ggtt *ggtt, u64 start, u64 size)
> -{
> -	struct xe_tile *tile = ggtt->tile;
> -
> -	xe_tile_assert(tile, start >= ggtt->start);
> -	xe_tile_assert(tile, start + size <= ggtt->start + ggtt->size);
> -}
> -
> -/**
> - * xe_ggtt_shift_nodes_locked - Shift GGTT nodes to adjust for a change in usable address range.
> + * xe_ggtt_shift_nodes() - Shift GGTT nodes to adjust for a change in usable address range.
>   * @ggtt: the &xe_ggtt struct instance
> - * @shift: change to the location of area provisioned for current VF
> + * @new_start: new location of area provisioned for current VF
> + *
> + * Ensure that all struct &xe_ggtt_node are moved to the @new_start base address
> + * by changing the base offset of the GGTT.
>   *
> - * This function moves all nodes from the GGTT VM, to a temp list. These nodes are expected
> - * to represent allocations in range formerly assigned to current VF, before the range changed.
> - * When the GGTT VM is completely clear of any nodes, they are re-added with shifted offsets.
> + * This function may be called multiple times during recovery, but if
> + * @new_start is unchanged from the current base, it's a noop.
>   *
> - * The function has no ability of failing - because it shifts existing nodes, without
> - * any additional processing. If the nodes were successfully existing at the old address,
> - * they will do the same at the new one. A fail inside this function would indicate that
> - * the list of nodes was either already damaged, or that the shift brings the address range
> - * outside of valid bounds. Both cases justify an assert rather than error code.
> + * @new_start should be a value between xe_wopcm_size() and #GUC_GGTT_TOP.

nit: shouldn't we add a note why we believe that WRITE_ONCE is sufficient and we don't need lock anymore?
I assume it's because after this call we will always replay/restart all submissions, which will query each node for its new address using READ_ONCE, but maybe I'm wrong

>   */
> -void xe_ggtt_shift_nodes_locked(struct xe_ggtt *ggtt, s64 shift)
> +void xe_ggtt_shift_nodes(struct xe_ggtt *ggtt, u64 new_start)
>  {
> -	struct xe_tile *tile __maybe_unused = ggtt->tile;
> -	struct drm_mm_node *node, *tmpn;
> -	LIST_HEAD(temp_list_head);
> -
> -	lockdep_assert_held(&ggtt->lock);
> +	guard(mutex)(&ggtt->lock);
>  
> -	if (IS_ENABLED(CONFIG_DRM_XE_DEBUG))
> -		drm_mm_for_each_node_safe(node, tmpn, &ggtt->mm)
> -			xe_ggtt_assert_fit(ggtt, node->start + shift, node->size);
> +	xe_tile_assert(ggtt->tile, new_start >= xe_wopcm_size(tile_to_xe(ggtt->tile)));
> +	xe_tile_assert(ggtt->tile, new_start + ggtt->size <= GUC_GGTT_TOP);
>  
> -	drm_mm_for_each_node_safe(node, tmpn, &ggtt->mm) {
> -		drm_mm_remove_node(node);
> -		list_add(&node->node_list, &temp_list_head);
> -	}
> -
> -	list_for_each_entry_safe(node, tmpn, &temp_list_head, node_list) {
> -		list_del(&node->node_list);
> -		node->start += shift;
> -		drm_mm_reserve_node(&ggtt->mm, node);
> -		xe_tile_assert(tile, drm_mm_node_allocated(node));
> -	}

nit: maybe small comment?

	/* pairs with READ_ONCE in xe_ggtt_node_addr() */

> +	WRITE_ONCE(ggtt->start, new_start);
>  }
>  
>  static int xe_ggtt_node_insert_locked(struct xe_ggtt_node *node,
> @@ -692,12 +595,8 @@ int xe_ggtt_node_insert(struct xe_ggtt_node *node, u32 size, u32 align)
>   *
>   * This function will allocate the struct %xe_ggtt_node and return its pointer.
>   * This struct will then be freed after the node removal upon xe_ggtt_node_remove()
> - * or xe_ggtt_node_remove_balloon_locked().
> - *
> - * Having %xe_ggtt_node struct allocated doesn't mean that the node is already
> - * allocated in GGTT. Only xe_ggtt_node_insert(), allocation through
> - * xe_ggtt_node_insert_transform(), or xe_ggtt_node_insert_balloon_locked() will ensure the node is inserted or reserved
> - * in GGTT.
> + * Having %xe_ggtt_node struct allocated doesn't mean that the node is already allocated
> + * in GGTT. Only xe_ggtt_node_insert() will ensure the node is inserted or reserved in GGTT.
>   *
>   * Return: A pointer to %xe_ggtt_node struct on success. An ERR_PTR otherwise.
>   **/
> @@ -718,9 +617,9 @@ struct xe_ggtt_node *xe_ggtt_node_init(struct xe_ggtt *ggtt)
>   * xe_ggtt_node_fini - Forcebly finalize %xe_ggtt_node struct
>   * @node: the &xe_ggtt_node to be freed
>   *
> - * If anything went wrong with either xe_ggtt_node_insert(), xe_ggtt_node_insert_locked(),
> - * or xe_ggtt_node_insert_balloon_locked(); and this @node is not going to be reused, then,
> - * this function needs to be called to free the %xe_ggtt_node struct
> + * If anything went wrong with either xe_ggtt_node_insert() and this @node is
> + * not going to be reused, then this function needs to be called to free the
> + * %xe_ggtt_node struct
>   **/
>  void xe_ggtt_node_fini(struct xe_ggtt_node *node)
>  {
> @@ -1220,7 +1119,8 @@ u64 xe_ggtt_read_pte(struct xe_ggtt *ggtt, u64 offset)
>   */
>  u64 xe_ggtt_node_addr(const struct xe_ggtt_node *node)
>  {
> -	return node->base.start + node->ggtt->start;
> +	/* pairs with WRITE_ONCE in xe_ggtt_shift_nodes() */
> +	return node->base.start + READ_ONCE(node->ggtt->start);
>  }
>  
>  /**
> diff --git a/drivers/gpu/drm/xe/xe_ggtt.h b/drivers/gpu/drm/xe/xe_ggtt.h
> index 70d5e07ac4b66..49ea8e7ecc105 100644
> --- a/drivers/gpu/drm/xe/xe_ggtt.h
> +++ b/drivers/gpu/drm/xe/xe_ggtt.h
> @@ -19,10 +19,7 @@ int xe_ggtt_init(struct xe_ggtt *ggtt);
>  
>  struct xe_ggtt_node *xe_ggtt_node_init(struct xe_ggtt *ggtt);
>  void xe_ggtt_node_fini(struct xe_ggtt_node *node);
> -int xe_ggtt_node_insert_balloon_locked(struct xe_ggtt_node *node,
> -				       u64 start, u64 size);
> -void xe_ggtt_node_remove_balloon_locked(struct xe_ggtt_node *node);
> -void xe_ggtt_shift_nodes_locked(struct xe_ggtt *ggtt, s64 shift);
> +void xe_ggtt_shift_nodes(struct xe_ggtt *ggtt, u64 new_base);
>  u64 xe_ggtt_start(struct xe_ggtt *ggtt);
>  u64 xe_ggtt_size(struct xe_ggtt *ggtt);
>  
> diff --git a/drivers/gpu/drm/xe/xe_gt_sriov_vf.c b/drivers/gpu/drm/xe/xe_gt_sriov_vf.c
> index 30e8c2cf5f09a..fabefb0469d0c 100644
> --- a/drivers/gpu/drm/xe/xe_gt_sriov_vf.c
> +++ b/drivers/gpu/drm/xe/xe_gt_sriov_vf.c
> @@ -488,7 +488,6 @@ u32 xe_gt_sriov_vf_gmdid(struct xe_gt *gt)
>  static int vf_get_ggtt_info(struct xe_gt *gt)
>  {
>  	struct xe_tile *tile = gt_to_tile(gt);
> -	struct xe_ggtt *ggtt = tile->mem.ggtt;
>  	struct xe_guc *guc = &gt->uc.guc;
>  	u64 start, size, ggtt_size;
>  	s64 shift;
> @@ -496,8 +495,6 @@ static int vf_get_ggtt_info(struct xe_gt *gt)
>  
>  	xe_gt_assert(gt, IS_SRIOV_VF(gt_to_xe(gt)));
>  
> -	guard(mutex)(&ggtt->lock);
> -
>  	err = guc_action_query_single_klv64(guc, GUC_KLV_VF_CFG_GGTT_START_KEY, &start);
>  	if (unlikely(err))
>  		return err;
> @@ -510,7 +507,20 @@ static int vf_get_ggtt_info(struct xe_gt *gt)
>  		return -ENODATA;
>  
>  	ggtt_size = xe_tile_sriov_vf_ggtt(tile);
> -	if (ggtt_size && ggtt_size != size) {
> +	if (!ggtt_size) {
> +		/*
> +		 * This function is called once during xe_guc_init_noalloc(),
> +		 * at which point ggtt_size = 0 and we have to initialize everything,
> +		 * and GGTT is not yet initialized.
> +		 *
> +		 * Return early as there's nothing to fixup.'
                                                            ^
nit: stray '

> +		 */
> +		xe_tile_sriov_vf_ggtt_store(tile, size);
> +		xe_tile_sriov_vf_ggtt_base_store(tile, start);
> +		return 0;
> +	}
> +
> +	if (ggtt_size != size) {
>  		xe_gt_sriov_err(gt, "Unexpected GGTT reassignment: %lluK != %lluK\n",
>  				size / SZ_1K, ggtt_size / SZ_1K);
>  		return -EREMCHG;
> @@ -521,13 +531,20 @@ static int vf_get_ggtt_info(struct xe_gt *gt)
>  
>  	shift = start - (s64)xe_tile_sriov_vf_ggtt_base(tile);

nit: do we really need local var for this? it's used only in log

>  	xe_tile_sriov_vf_ggtt_base_store(tile, start);
> -	xe_tile_sriov_vf_ggtt_store(tile, size);
>  
> -	if (shift && shift != start) {
> -		xe_gt_sriov_info(gt, "Shifting GGTT base by %lld to 0x%016llx\n",
> -				 shift, start);
> -		xe_tile_sriov_vf_fixup_ggtt_nodes_locked(gt_to_tile(gt), shift);
> -	}
> +	/*
> +	 * This function can be called repeatedly from post migration fixups,
> +	 * at which point we inform the GGTT of the new base address.
> +	 * xe_ggtt_shift_nodes() may be called multiple times for each migration,
> +	 * but will be a noop if the base is unchanged.
> +	 *
> +	 * Since we're not holding a lock, the shift value may be
> +	 * calculated incorrectly.
> +	 * This is only used for a debug print so it's harmless.

hmm, and maybe we don't need this 'shift' at all?

for debug it should be sufficient to log only new 'start'
and if really needed, any 'shift' value can be calculated as part of the post-processing

> +	 */
> +	xe_gt_sriov_info(gt, "Shifting GGTT base by %lld to 0x%016llx\n",
> +			 shift, start);
> +	xe_ggtt_shift_nodes(tile->mem.ggtt, start);
>  
>  	if (xe_sriov_vf_migration_supported(gt_to_xe(gt))) {
>  		WRITE_ONCE(gt->sriov.vf.migration.ggtt_need_fixes, false);
> diff --git a/drivers/gpu/drm/xe/xe_tile_sriov_vf.c b/drivers/gpu/drm/xe/xe_tile_sriov_vf.c
> index c9bac2cfdd044..24293521e0904 100644
> --- a/drivers/gpu/drm/xe/xe_tile_sriov_vf.c
> +++ b/drivers/gpu/drm/xe/xe_tile_sriov_vf.c
> @@ -14,173 +14,12 @@
>  #include "xe_tile_sriov_vf.h"
>  #include "xe_wopcm.h"
>  
> -static int vf_init_ggtt_balloons(struct xe_tile *tile)
> -{
> -	struct xe_ggtt *ggtt = tile->mem.ggtt;
> -
> -	xe_tile_assert(tile, IS_SRIOV_VF(tile_to_xe(tile)));
> -
> -	tile->sriov.vf.ggtt_balloon[0] = xe_ggtt_node_init(ggtt);
> -	if (IS_ERR(tile->sriov.vf.ggtt_balloon[0]))
> -		return PTR_ERR(tile->sriov.vf.ggtt_balloon[0]);
> -
> -	tile->sriov.vf.ggtt_balloon[1] = xe_ggtt_node_init(ggtt);
> -	if (IS_ERR(tile->sriov.vf.ggtt_balloon[1])) {
> -		xe_ggtt_node_fini(tile->sriov.vf.ggtt_balloon[0]);
> -		return PTR_ERR(tile->sriov.vf.ggtt_balloon[1]);
> -	}
> -
> -	return 0;
> -}
> -
> -/**
> - * xe_tile_sriov_vf_balloon_ggtt_locked - Insert balloon nodes to limit used GGTT address range.
> - * @tile: the &xe_tile struct instance
> - *
> - * Return: 0 on success or a negative error code on failure.
> - */
> -static int xe_tile_sriov_vf_balloon_ggtt_locked(struct xe_tile *tile)
> -{
> -	u64 ggtt_base = tile->sriov.vf.self_config.ggtt_base;
> -	u64 ggtt_size = tile->sriov.vf.self_config.ggtt_size;
> -	struct xe_device *xe = tile_to_xe(tile);
> -	u64 wopcm = xe_wopcm_size(xe);
> -	u64 start, end;
> -	int err;
> -
> -	xe_tile_assert(tile, IS_SRIOV_VF(xe));
> -	xe_tile_assert(tile, ggtt_size);
> -	lockdep_assert_held(&tile->mem.ggtt->lock);
> -
> -	/*
> -	 * VF can only use part of the GGTT as allocated by the PF:
> -	 *
> -	 *      WOPCM                                  GUC_GGTT_TOP
> -	 *      |<------------ Total GGTT size ------------------>|
> -	 *
> -	 *           VF GGTT base -->|<- size ->|
> -	 *
> -	 *      +--------------------+----------+-----------------+
> -	 *      |////////////////////|   block  |\\\\\\\\\\\\\\\\\|
> -	 *      +--------------------+----------+-----------------+
> -	 *
> -	 *      |<--- balloon[0] --->|<-- VF -->|<-- balloon[1] ->|
> -	 */
> -
> -	if (ggtt_base < wopcm || ggtt_base > GUC_GGTT_TOP ||
> -	    ggtt_size > GUC_GGTT_TOP - ggtt_base) {
> -		xe_sriov_err(xe, "tile%u: Invalid GGTT configuration: %#llx-%#llx\n",
> -			     tile->id, ggtt_base, ggtt_base + ggtt_size - 1);
> -		return -ERANGE;
> -	}
> -
> -	start = wopcm;
> -	end = ggtt_base;
> -	if (end != start) {
> -		err = xe_ggtt_node_insert_balloon_locked(tile->sriov.vf.ggtt_balloon[0],
> -							 start, end);
> -		if (err)
> -			return err;
> -	}
> -
> -	start = ggtt_base + ggtt_size;
> -	end = GUC_GGTT_TOP;
> -	if (end != start) {
> -		err = xe_ggtt_node_insert_balloon_locked(tile->sriov.vf.ggtt_balloon[1],
> -							 start, end);
> -		if (err) {
> -			xe_ggtt_node_remove_balloon_locked(tile->sriov.vf.ggtt_balloon[0]);
> -			return err;
> -		}
> -	}
> -
> -	return 0;
> -}
> -
> -static int vf_balloon_ggtt(struct xe_tile *tile)
> -{
> -	struct xe_ggtt *ggtt = tile->mem.ggtt;
> -	int err;
> -
> -	mutex_lock(&ggtt->lock);
> -	err = xe_tile_sriov_vf_balloon_ggtt_locked(tile);
> -	mutex_unlock(&ggtt->lock);
> -
> -	return err;
> -}
> -
> -/**
> - * xe_tile_sriov_vf_deballoon_ggtt_locked - Remove balloon nodes.
> - * @tile: the &xe_tile struct instance
> - */
> -void xe_tile_sriov_vf_deballoon_ggtt_locked(struct xe_tile *tile)
> -{
> -	xe_tile_assert(tile, IS_SRIOV_VF(tile_to_xe(tile)));
> -
> -	xe_ggtt_node_remove_balloon_locked(tile->sriov.vf.ggtt_balloon[1]);
> -	xe_ggtt_node_remove_balloon_locked(tile->sriov.vf.ggtt_balloon[0]);
> -}
> -
> -static void vf_deballoon_ggtt(struct xe_tile *tile)
> -{
> -	mutex_lock(&tile->mem.ggtt->lock);
> -	xe_tile_sriov_vf_deballoon_ggtt_locked(tile);
> -	mutex_unlock(&tile->mem.ggtt->lock);
> -}
> -
> -static void vf_fini_ggtt_balloons(struct xe_tile *tile)
> -{
> -	xe_tile_assert(tile, IS_SRIOV_VF(tile_to_xe(tile)));
> -
> -	xe_ggtt_node_fini(tile->sriov.vf.ggtt_balloon[1]);
> -	xe_ggtt_node_fini(tile->sriov.vf.ggtt_balloon[0]);
> -}
> -
> -static void cleanup_ggtt(struct drm_device *drm, void *arg)
> -{
> -	struct xe_tile *tile = arg;
> -
> -	vf_deballoon_ggtt(tile);
> -	vf_fini_ggtt_balloons(tile);
> -}
> -
> -/**
> - * xe_tile_sriov_vf_prepare_ggtt - Prepare a VF's GGTT configuration.
> - * @tile: the &xe_tile
> - *
> - * This function is for VF use only.
> - *
> - * Return: 0 on success or a negative error code on failure.
> - */
> -int xe_tile_sriov_vf_prepare_ggtt(struct xe_tile *tile)
> -{
> -	struct xe_device *xe = tile_to_xe(tile);
> -	int err;
> -
> -	err = vf_init_ggtt_balloons(tile);
> -	if (err)
> -		return err;
> -
> -	err = vf_balloon_ggtt(tile);
> -	if (err) {
> -		vf_fini_ggtt_balloons(tile);
> -		return err;
> -	}
> -
> -	return drmm_add_action_or_reset(&xe->drm, cleanup_ggtt, tile);
> -}
> -
>  /**
>   * DOC: GGTT nodes shifting during VF post-migration recovery
>   *
>   * The first fixup applied to the VF KMD structures as part of post-migration
>   * recovery is shifting nodes within &xe_ggtt instance. The nodes are moved
>   * from range previously assigned to this VF, into newly provisioned area.
> - * The changes include balloons, which are resized accordingly.
> - *
> - * The balloon nodes are there to eliminate unavailable ranges from use: one
> - * reserves the GGTT area below the range for current VF, and another one
> - * reserves area above.
>   *
>   * Below is a GGTT layout of example VF, with a certain address range assigned to
>   * said VF, and inaccessible areas above and below:
> @@ -198,10 +37,6 @@ int xe_tile_sriov_vf_prepare_ggtt(struct xe_tile *tile)
>   *
>   *  |<------- inaccessible for VF ------->|<VF owned>|<-- inaccessible for VF ->|
>   *
> - * GGTT nodes used for tracking allocations:
> - *
> - *      |<---------- balloon ------------>|<- nodes->|<----- balloon ------>|
> - *
>   * After the migration, GGTT area assigned to the VF might have shifted, either
>   * to lower or to higher address. But we expect the total size and extra areas to
>   * be identical, as migration can only happen between matching platforms.
> @@ -219,37 +54,12 @@ int xe_tile_sriov_vf_prepare_ggtt(struct xe_tile *tile)
>   * So the VF has a new slice of GGTT assigned, and during migration process, the
>   * memory content was copied to that new area. But the &xe_ggtt nodes are still
>   * tracking allocations using the old addresses. The nodes within VF owned area
> - * have to be shifted, and balloon nodes need to be resized to properly mask out
> - * areas not owned by the VF.
> - *
> - * Fixed &xe_ggtt nodes used for tracking allocations:
> - *
> - *     |<------ balloon ------>|<- nodes->|<----------- balloon ----------->|
> + * have to be shifted, and the start offset for GGTT adjusted.
>   *
> - * Due to use of GPU profiles, we do not expect the old and new GGTT ares to
> + * Due to use of GPU profiles, we do not expect the old and new GGTT areas to
>   * overlap; but our node shifting will fix addresses properly regardless.
>   */
>  
> -/**
> - * xe_tile_sriov_vf_fixup_ggtt_nodes_locked - Shift GGTT allocations to match assigned range.
> - * @tile: the &xe_tile struct instance
> - * @shift: the shift value
> - *
> - * Since Global GTT is not virtualized, each VF has an assigned range
> - * within the global space. This range might have changed during migration,
> - * which requires all memory addresses pointing to GGTT to be shifted.
> - */
> -void xe_tile_sriov_vf_fixup_ggtt_nodes_locked(struct xe_tile *tile, s64 shift)
> -{
> -	struct xe_ggtt *ggtt = tile->mem.ggtt;
> -
> -	lockdep_assert_held(&ggtt->lock);
> -
> -	xe_tile_sriov_vf_deballoon_ggtt_locked(tile);
> -	xe_ggtt_shift_nodes_locked(ggtt, shift);
> -	xe_tile_sriov_vf_balloon_ggtt_locked(tile);
> -}
> -
>  /**
>   * xe_tile_sriov_vf_lmem - VF LMEM configuration.
>   * @tile: the &xe_tile
> @@ -330,7 +140,7 @@ u64 xe_tile_sriov_vf_ggtt_base(struct xe_tile *tile)
>  
>  	xe_tile_assert(tile, IS_SRIOV_VF(tile_to_xe(tile)));
>  
> -	return config->ggtt_base;
> +	return READ_ONCE(config->ggtt_base);
>  }
>  
>  /**
> @@ -346,5 +156,5 @@ void xe_tile_sriov_vf_ggtt_base_store(struct xe_tile *tile, u64 ggtt_base)
>  
>  	xe_tile_assert(tile, IS_SRIOV_VF(tile_to_xe(tile)));
>  
> -	config->ggtt_base = ggtt_base;
> +	WRITE_ONCE(config->ggtt_base, ggtt_base);
>  }
> diff --git a/drivers/gpu/drm/xe/xe_tile_sriov_vf.h b/drivers/gpu/drm/xe/xe_tile_sriov_vf.h
> index 749f41504883c..f2bbc4fc57347 100644
> --- a/drivers/gpu/drm/xe/xe_tile_sriov_vf.h
> +++ b/drivers/gpu/drm/xe/xe_tile_sriov_vf.h
> @@ -10,9 +10,6 @@
>  
>  struct xe_tile;
>  
> -int xe_tile_sriov_vf_prepare_ggtt(struct xe_tile *tile);
> -void xe_tile_sriov_vf_deballoon_ggtt_locked(struct xe_tile *tile);
> -void xe_tile_sriov_vf_fixup_ggtt_nodes_locked(struct xe_tile *tile, s64 shift);
>  u64 xe_tile_sriov_vf_ggtt(struct xe_tile *tile);
>  void xe_tile_sriov_vf_ggtt_store(struct xe_tile *tile, u64 ggtt_size);
>  u64 xe_tile_sriov_vf_ggtt_base(struct xe_tile *tile);

