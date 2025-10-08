Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA16BC539B
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 15:34:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FC7F10E814;
	Wed,  8 Oct 2025 13:33:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jqTP19JQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A298610E814
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Oct 2025 13:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759930438; x=1791466438;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2dpqD6m2/kLxz0Robv1tEhy27Jvx9gBOB1xvtrsftyw=;
 b=jqTP19JQ4m9DZMZNZKdSAKjR02jvQDH3jxQfZyB3AsYAcGQZig9v5WQX
 g8+k6ICK/7fSyfD/ycLbfXdT1KHNqpb9G+gvy//HzWVSxOIeUZOUYKr6C
 83/s+hC8B2M78BLuW+kyeYlVx56XCpdRA1A+Aku++WHhhOsc/d3SDGJen
 bsgefCFocoi57OwTwp6uZ7NbJrzBUbzO/uLmuPCntqZwVlstudarkI8tS
 VoKXq8NQ19sOLF+iZHApqJ5KY75N/qLtaJWAq1b4LxkVEw7m21Fnm1dTO
 OSdgqgqZ5qa6bZH7CeAQ5JL8I/X0lXTOxDrDo4TaGiGLnyrlHFm74Ua9m Q==;
X-CSE-ConnectionGUID: 3cYUaM4+QAWFK9b2KAEMjw==
X-CSE-MsgGUID: VxRf9sv6QImUKJLDaPFG5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="62219690"
X-IronPort-AV: E=Sophos;i="6.19,213,1754982000"; d="scan'208";a="62219690"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 06:33:58 -0700
X-CSE-ConnectionGUID: 5n5CWqbjS9OqOO7hbSAn+Q==
X-CSE-MsgGUID: 7+9U0QEzRWOLFDqM7SUTdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,213,1754982000"; d="scan'208";a="180270872"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 06:33:57 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 06:33:56 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 8 Oct 2025 06:33:56 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.50) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 06:33:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ae+9OilUnbaYsaPClsW+8Be5BFyujW/Tszgkzi4iJpjr8FAJQinA0R1+EPSgwp+XxuTVTuYvmZq9/DOl13vkFjfujWLkzx6Usjca4tk1+58SXRQVwz4FfWmNIpbQIPYRZLsA2Eve+yGWcdlunwuCBBLT7ksSOOBEAEjDd59/Q6pWv+Chx9D93gqpaot7Dzx8owxMEiTq/WwFEwNERH02La4el2TRTZ8R63/0GGFg2fO2WsyxaNbPomr1WSSlcqJolfaXNF7qIwQDFYRG9TRSU/NeyR5qcVPa9lE8wFQrqbDfaWFtUojE/LWvvMaPQHB5s1iMACv2dFMoohSmifTIeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YOnz9Tkb4ZYK2vzmke6/qdtwxfkjLu5jdXVyNcOzNLc=;
 b=XudlbzfIuNQKdxM6/R7D6hQ1P9sbrpaXLbFxDnjG0cWZz391ASHDrkk1g8hrFcStHFUcLS56tQnpk8vDzYc1g3l9x0tZ1op0vP1s2huY/Z0WXSU+3HAsDW3sKn34hzZcGE+z09DY2SYcFJeHMRsCXXLbL523nv4ARePxe5EDplHEDKZYxOwCkja3TmLhpWae9nyQmlx0wDIKV7CqZi/ePtmkF8SFHYrwrFXe4yNQoi8UHpVdrJWwMUUgPSfAbEeWKu8j0UoXgP4rXLUZ79ZSUlq6Xd1vaFS02mERsC76pMb+sbIjHYCWZOwox5DxHuJle3qRvsXfR+NYbylwJcen9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB8200.namprd11.prod.outlook.com (2603:10b6:208:454::6)
 by DM3PPF529E923C8.namprd11.prod.outlook.com (2603:10b6:f:fc00::f22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.18; Wed, 8 Oct
 2025 13:33:47 +0000
Received: from IA1PR11MB8200.namprd11.prod.outlook.com
 ([fe80::b6d:5228:91bf:469e]) by IA1PR11MB8200.namprd11.prod.outlook.com
 ([fe80::b6d:5228:91bf:469e%4]) with mapi id 15.20.9203.007; Wed, 8 Oct 2025
 13:33:47 +0000
Message-ID: <d7787f25-4d1d-4a00-9193-a637cdad52c9@intel.com>
Date: Wed, 8 Oct 2025 09:33:44 -0400
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?Q?Re=3A_=E2=9C=97_i915=2ECI=2EFull=3A_failure_for_drm/i915/?=
 =?UTF-8?Q?guc=3A_Skip_communication_warning_on_reset_in_progress_=28rev4=29?=
To: <intel-gfx@lists.freedesktop.org>
References: <20250929152904.269776-1-zhanjun.dong@intel.com>
 <175991414936.17212.12512716386740648905@6aec98b87f92>
Content-Language: en-US
From: "Dong, Zhanjun" <zhanjun.dong@intel.com>
In-Reply-To: <175991414936.17212.12512716386740648905@6aec98b87f92>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR06CA0025.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::38) To IA1PR11MB8200.namprd11.prod.outlook.com
 (2603:10b6:208:454::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB8200:EE_|DM3PPF529E923C8:EE_
X-MS-Office365-Filtering-Correlation-Id: e7ee6a6a-d009-4a2b-9ef9-08de066f4f1d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|366016|376014|13003099007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZzQrOU5VK1NVV0NjWmM2SStYeWxwYWNwQWxoZUY0VEVGeUhoZVR4VytQTC9N?=
 =?utf-8?B?R2gxZDFja3huNWtaY0VVM200dXVpVkRCYmdRTFhqSG8zdVJaTks2UytXKzlV?=
 =?utf-8?B?S0RwcnNpTFNQb2p5eTRpdDE5clBJd01jckMzQmhvY1VoOGVOcUQ5aGVrRTVE?=
 =?utf-8?B?VGc0OHJzMnE5czZWdis5alNWY1hueEdCaVpqeWVuVWJhaUtJKzRUaHV5S3R1?=
 =?utf-8?B?VVNnYmlYaDZReEhMRnQ2aTNDWmhJV1lLOVoyU2dDNWpESU9nZ1lxQUU2Unho?=
 =?utf-8?B?UjdBR0FnS09WVis0UlMzWXBJWHZXZFlaRFkzVUlpSEVaVk9hR3JMMkpKV00r?=
 =?utf-8?B?MW5NVWtDcEtTWE5DRjFZcEtpcnF1aDd0d1IrblVuNGxBWXV4Z3RvTEtMUlVH?=
 =?utf-8?B?VmdLeDN3NVA2dnBUSTgvN2dNNmEwcnVoS0w5MEY2am5VOThrb01BSHpWcWhL?=
 =?utf-8?B?RDBJYS9McGd0d3R0SzFhWm1pbHlhWkNRaERjNXpyL01rZU90TTlNODNibGNH?=
 =?utf-8?B?UW95Q2JXeUpqVkVRUmY3S1FkQXBud0t5TXJQeDFZTGQ4Nk1TVGhacHZTdHJK?=
 =?utf-8?B?ckMyWmhENTB4N2huVG0rbFR6ZnovRnk3TkQvYnBGYm5YUTJTYmFzV1lrYytY?=
 =?utf-8?B?c0ZUV05yTytlNklxWUNxTDRTOW90SnhPcmRoRWdQYllhMCsydGRpVFJ6bm0y?=
 =?utf-8?B?NzREZ1NBM2kwRExkcXc5a2tlMEhHUXYzUjk5cmRPTENRb1Jjbk85b0dVYndR?=
 =?utf-8?B?MkNKQVU2VEpuVmE1Q0dhcjdHenRtR2E1bmZYaE94dS94RmgzZklURG4yMXlI?=
 =?utf-8?B?VzJGUmJUYk40VlArOHhrbDdYUG1YS2tJT0NJRG80aTBqcUhxVlNIanBRL0d4?=
 =?utf-8?B?L0xRcWRUeDZ6dEtaeW1vem1PbVlNeURzSnV5d2NtOWpyeC80all4c0JxeVBX?=
 =?utf-8?B?aC9xNGJTZEY0RHE2anA4RFYyN1dzdUpuNk5ya1dFcXhrYXN6ZmdZZ2dmNmlk?=
 =?utf-8?B?anJpWHJuVVpDYlRSUGJjSkg2RmQzSXZNaXZQUG12c0QvNjlhVGJobDlMTC80?=
 =?utf-8?B?KzNGdmU4VU42TkdQejFudnlXajdxeVh4N0cwa3drZTZ3RlpBRDQycHg2UkFz?=
 =?utf-8?B?dzV2QUJMeThxVUgzNE9YWkhPS2pITFE0ekIwZkFjanN2UnVFTCsyQVFCME1O?=
 =?utf-8?B?MGp0UXgrZ2FKclVVaFdOMDQ3MU5SUHBlMExXVnBsa2tOd2ZIRzZaMC9IVDJG?=
 =?utf-8?B?WTliNGMydHhxcklxUnZNRVNOTHhlQm1lWWUyOWNTbEM0ZlcrVHl6QlRhaGV5?=
 =?utf-8?B?YTVjTzdhZjc5Qk5xanlReDNNUXRDLy9sclZoRUxtUDNmZEhqcEFhT1dvVEVL?=
 =?utf-8?B?Kzg0YnhKS2J2QWVEQXlPajlvdXdmSU5uRzFnS2lDaWtsNUpiT1NYd1NEZm5o?=
 =?utf-8?B?V0lOTkRwSjBPdFhjdUlQdldpWisyZWNGL0t4WkRNVmorMlprSitkOWxISXJM?=
 =?utf-8?B?dkQyYXFIeWE4U0I1dmpUU1JWM1E5N0JyRHk2TEpyTklOSDU3bEhINXMwOEx6?=
 =?utf-8?B?Uk42SkljQkozOFViYmQvbFU5S2VzZVlDMm16eHAxRis1cXVQMVBlVUJmMEwy?=
 =?utf-8?B?NVpoMjUzenFMamFVODFWU0ZHVWU2TXdYWWhjYTE5clM0cDBPOW9KRld0MnU2?=
 =?utf-8?B?OHpXL0ZBNFdtZDNnL3luMk9OWHNQTitiZ2RpTWhvZWZCZ294VDRCQTNkRXF0?=
 =?utf-8?B?WTIvZkpyYmVVS1EyU3NGc25yZXdLLy9URFppZlU4SEVHVVlpaEREdndjcHpi?=
 =?utf-8?B?NDZRZzJKOFNjZmRCM0tpL0VoZ1Ird3hRbWdhL1BsK1VSS1Nyam9MN25QMXA4?=
 =?utf-8?B?V0xxUjdWczNxaUk0bHJrWDJjV25MK3lvamZFS2RmbFdGVlE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB8200.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(13003099007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ti8rUHpLb0d2a0ZuWHhnUDlyaGgyWWNndXNvMmVteHQzN01tak9laFVhS0ha?=
 =?utf-8?B?dDk5VW9TY1JTKzdRU2k0Z1pYL0M2MXZUeFdhMGlMc05CZSs0blYxd0MyY2lX?=
 =?utf-8?B?R2c0TzNRdkt5Zm1aTnFaeXEydjg1YmRpR094WStZcmNFOHVpNm1xRXpMY0la?=
 =?utf-8?B?aUNNUGliTzNQeFRVYlcvT2VrMlBUdFB3Y2VuWHlzQ0Q5MEYyWGVPN1lmRFJD?=
 =?utf-8?B?NnJqOFBFYXAyTy9iZmROaVhKTGdHQXFkZXI0S3EvQ25VZ3h2Vm5XZDhrajFX?=
 =?utf-8?B?T0FLdzJBczNvd2treEY5TUkyMWdmNjd2ZVJQTmNTb1lkVmRXcmdTMnV5WnVV?=
 =?utf-8?B?VTBieGxjOEV5Y3RaeEFmMnJJbDYvdndGTGkyL0F4YlA5YjRLejFnWkJ2YjF6?=
 =?utf-8?B?Unp1MC9kUWpKaEdOR1hEdVVpVnpNVkJNL0NyRFpXVlBScEZWa1ZlV3BoYjUv?=
 =?utf-8?B?S25FZTNTbzFLMk1vQkZUYmhlT1FwZkhiaGNtMHZXeW54VkJqblBaM0V6OU41?=
 =?utf-8?B?cE8wejljSlMvRlRtK09URUxPcHJkbm1FaEZBN1NTUFBYc3hZcjZmblZwZWNq?=
 =?utf-8?B?OE5pZjd0RXVBMUNOZmJ3WS8yMGwzdmFYa3hWOW5qUzdJZHB5TWRGOGl5dGVx?=
 =?utf-8?B?NGZCcDRXMkNhay8xMkhoTHhOdDRqK0Z3dy80c1BnRWFiVzFFdmQ5Y3g2dWJi?=
 =?utf-8?B?YUJlTlZSZmNzaTFrU1RFaEZsUlJuelNlaWdPTU1lekpTTmdxaWhOOURvSFIv?=
 =?utf-8?B?SzBEdE5saFVqTTJHZ3grV3hhSS9YelM3aHdpbFBaYkpSYXVDOFhQMm5rZTEv?=
 =?utf-8?B?dlNFY0hhNGtZWUZpRXV2ekt6VlFtRFpWUnRRcllkblJ1NUE4U2VXY0phMHQz?=
 =?utf-8?B?QitVb3BaR0JtVEJiajFJblQvenlUZXpFM1U4dmtaTHNPQnp2Q1o5V2hpeURs?=
 =?utf-8?B?V1dmRVRCTlZoc2J1ZGdyVENCU3BOOWNYN0VnMWNLUEFqdXNyK0loZVl2RDlY?=
 =?utf-8?B?MjhpcTdJU3JCeEpjdVJ3VTRZQmQ4anlwU0dxUnF2amkzUlljY2VIalpoRUll?=
 =?utf-8?B?REZ2emxqdFhVUXdoWmUwRldNL0paeUg3VXB4T3VXWEg4NHJrNFJFa21EcG9W?=
 =?utf-8?B?cUZVc3FrYjQ2N0lDU3VyNXdzcjRKVVpOMm80bWNLR1hhYnRDYXVOZ1pRbHhB?=
 =?utf-8?B?Z3ZnOUhicSt1YnczbHVBQk1vZDcwNU02SisvU2dienVRL0VGTFFaMUIycng1?=
 =?utf-8?B?Wi9maUpzcjBzdituUWpNNmhVYnRsTUJVeTJVVkJ3TWZqczRpWlR2L1dteFRL?=
 =?utf-8?B?RUw5QzU4RFNkdXBXZnk1Z1FhRU5PY2phenE4dlFmSWkxQ21PYW5IaWRmK2Jm?=
 =?utf-8?B?d2xGeTZUTVRqejNOVGUyaDFzdVJMSGc4UkhKMzNJRlRuaDBRcm90Tko5MUs5?=
 =?utf-8?B?dTAyRkpJcVd6amF2NEs3c2xQS3RncmRZdkRaemRTdXppaDFnUW9jbFdVWVJC?=
 =?utf-8?B?ZHA4OG5rdm9iNzkwMDFaZVRrdFdmV2FITG02alJ5NmFsZVRkKzg0b1lQZXpy?=
 =?utf-8?B?TlRXblNMYnJiYUVFR1lZNnRtcHJ6U0E1dm1OSW01dDU2RlV0ZmhualB4ZjV6?=
 =?utf-8?B?U05FQW1YTS9ldU5aSWdtb2dvSitBaEw3TmFVUWVFYk1BQzcwanFlYjNpcGc2?=
 =?utf-8?B?SkxhMUNEbUZVSGd3M0tIWUFiQkprWDZ2ajh3NkdRMlY1Q2YzaUFhd2xsS1BR?=
 =?utf-8?B?bkx0YkVQZForUDlVcGhLOWtuVlB0d0xPYnNNZTM2Znl4eC9paVpTNXRNbHdX?=
 =?utf-8?B?YkJrY2g5ZUVSU1d6bkx4NmxUb09jc1hCOUE2LzcxMGppUmJPQnk3dThXKzAz?=
 =?utf-8?B?MEhJd2dQM05sN0J0QzdMSVFmZjdZNzZ4SnI2WDQ3L3Uvc1RaL00rWDB3dGdF?=
 =?utf-8?B?SWhrQWNGdWJScUc4elhGN1FVSXAwQ0lSdC83c2kvYi81QnVYTVNXdnVLaWky?=
 =?utf-8?B?cGN0Z3FMd3ZRbEZkdDN2WGhXaHZJVDRtYWM4Wk1HeHdXbFNZOHdiYzlxYTZL?=
 =?utf-8?B?MENTYjMrbkVoanpINGwrQzU4V3ZrVlBLOHh5SHZTdTdoNWxGbk5RNVNlMnJW?=
 =?utf-8?B?T0FPTU85VCsxNGFkYTcxZjlZM1pOSHZPbEFVNWtpRmN0SStJS1NiUGdldHF2?=
 =?utf-8?B?VXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e7ee6a6a-d009-4a2b-9ef9-08de066f4f1d
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB8200.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2025 13:33:47.6754 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cOW9tOAZeGQPv8o1Vr/TbcCMrsOf1Or1M9hLxkyt5iiOmvCyFExwnkpLwaSWyfpAqE9v0DdPL2PBlAqxCsro3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF529E923C8
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



On 2025-10-08 5:02 a.m., Patchwork wrote:
> *Patch Details*
> *Series:*	drm/i915/guc: Skip communication warning on reset in progress 
> (rev4)
> *URL:*	https://patchwork.freedesktop.org/series/154423/ <https:// 
> patchwork.freedesktop.org/series/154423/>
> *State:*	failure
> *Details:*	https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/ 
> index.html <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/ 
> index.html>
> 
> 
>   CI Bug Log - changes from CI_DRM_17323_full -> Patchwork_154423v4_full
> 
> 
>     Summary
> 
> *FAILURE*
> 
> Serious unknown changes coming with Patchwork_154423v4_full absolutely 
> need to be
> verified manually.
> 
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_154423v4_full, please notify your bug team 
> (I915-ci-infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives in CI.
> 
> 
>     Participating hosts (12 -> 12)
> 
> No changes in participating hosts
> 
> 
>     Possible new issues
> 
> Here are the unknown changes that may have been introduced in 
> Patchwork_154423v4_full:
> 
> 
>       CI changes
> 
> 
>         Possible regressions
> 
>   * boot:
>       o shard-dg2: (PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-dg2-8/boot.html>, PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-8/boot.html>, PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-
>         dg2-8/boot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-
>         tip/CI_DRM_17323/shard-dg2-7/boot.html>, PASS <https://intel-
>         gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-7/boot.html>,
>         PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/
>         shard-dg2-7/boot.html>, PASS <https://intel-gfx-ci.01.org/tree/
>         drm-tip/CI_DRM_17323/shard-dg2-6/boot.html>, PASS <https://
>         intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-6/
>         boot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-dg2-6/boot.html>, PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-5/boot.html>, PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-
>         dg2-5/boot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-
>         tip/CI_DRM_17323/shard-dg2-5/boot.html>, PASS <https://intel-
>         gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-4/boot.html>,
>         PASS <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/
>         shard-dg2-4/boot.html>, PASS <https://intel-gfx-ci.01.org/tree/
>         drm-tip/CI_DRM_17323/shard-dg2-4/boot.html>, PASS <https://
>         intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-3/
>         boot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-dg2-3/boot.html>, PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-3/boot.html>, PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-
>         dg2-1/boot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-
>         tip/CI_DRM_17323/shard-dg2-1/boot.html>, PASS <https://intel-
>         gfx-ci.01.org/tree/drm-tip/CI_DRM_17323/shard-dg2-1/boot.html>)
>         -> (PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-dg2-8/boot.html>, PASS <https://intel-
>         gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/
>         boot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-dg2-8/boot.html>, PASS <https://intel-
>         gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-8/
>         boot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-dg2-7/boot.html>, PASS <https://intel-
>         gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-7/
>         boot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-dg2-7/boot.html>, PASS <https://intel-
>         gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/
>         boot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-dg2-6/boot.html>, PASS <https://intel-
>         gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/
>         boot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-dg2-5/boot.html>, PASS <https://intel-
>         gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-5/
>         boot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-dg2-5/boot.html>, PASS <https://intel-
>         gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-4/
>         boot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-dg2-4/boot.html>, PASS <https://intel-
>         gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-3/
>         boot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-dg2-3/boot.html>, PASS <https://intel-
>         gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-3/
>         boot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-dg2-1/boot.html>, PASS <https://intel-
>         gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-1/
>         boot.html>, PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-dg2-1/boot.html>, FAIL <https://intel-
>         gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-10/
>         boot.html>)
> 
> 
>       IGT changes
> 
> 
>         Possible regressions
> 
>   *
> 
>     igt@drm_buddy@drm_buddy:
> 
>       o shard-glk10: NOTRUN -> DMESG-WARN <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v4/shard-glk10/
>         igt@drm_buddy@drm_buddy.html>
>   *
> 
>     igt@gem_exec_suspend@basic-s0:
> 
>       o shard-snb: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-snb7/igt@gem_exec_suspend@basic-s0.html> ->
>         ABORT <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-snb1/igt@gem_exec_suspend@basic-
>         s0.html> +1 other test abort
>   *
> 
>     igt@kms_fbcon_fbt@fbc-suspend:
> 
>       o shard-dg2: NOTRUN -> ABORT <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-8/igt@kms_fbcon_fbt@fbc-
>         suspend.html>
> 
> 
All 3 failures above is not related to this patch.

Regards,
Zhanjun Dong

>         Suppressed
> 
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
> 
>   * {igt@drm_buddy@drm_buddy@drm_test_buddy_fragmentation_performance}:
>       o shard-glk10: NOTRUN -> DMESG-WARN <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v4/shard-glk10/
>         igt@drm_buddy@drm_buddy@drm_test_buddy_fragmentation_performance.html>
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_154423v4_full that come from 
> known issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@api_intel_bb@blit-reloc-keep-cache:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-6/igt@api_intel_bb@blit-reloc-
>         keep-cache.html> (i915#8411 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8411>)
>   *
> 
>     igt@api_intel_bb@object-reloc-keep-cache:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/igt@api_intel_bb@object-
>         reloc-keep-cache.html> (i915#8411 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411>)
>   *
> 
>     igt@device_reset@cold-reset-bound:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-1/igt@device_reset@cold-
>         reset-bound.html> (i915#11078 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/11078>)
>   *
> 
>     igt@gem_basic@multigpu-create-close:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-10/igt@gem_basic@multigpu-
>         create-close.html> (i915#7697 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/7697>)
>   *
> 
>     igt@gem_ccs@block-multicopy-inplace:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-7/igt@gem_ccs@block-multicopy-
>         inplace.html> (i915#3555 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3555> / i915#9323 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9323>)
>   *
> 
>     igt@gem_ccs@large-ctrl-surf-copy:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-1/igt@gem_ccs@large-ctrl-
>         surf-copy.html> (i915#13008 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/13008>)
>   *
> 
>     igt@gem_ccs@suspend-resume:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-dg2-6/igt@gem_ccs@suspend-resume.html> ->
>         INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-dg2-7/igt@gem_ccs@suspend-resume.html>
>         (i915#13356 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/13356>)
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-10/igt@gem_ccs@suspend-
>         resume.html> (i915#9323 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9323>)
>   *
> 
>     igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-lmem0:
> 
>       o shard-dg2: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-dg2-6/igt@gem_ccs@suspend-resume@tile64-
>         compressed-compfmt0-lmem0-lmem0.html> -> INCOMPLETE <https://
>         intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-7/
>         igt@gem_ccs@suspend-resume@tile64-compressed-compfmt0-lmem0-
>         lmem0.html> (i915#12392 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/12392> / i915#13356 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356>)
>   *
> 
>     igt@gem_close_race@multigpu-basic-process:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-6/igt@gem_close_race@multigpu-
>         basic-process.html> (i915#7697 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/7697>)
>   *
> 
>     igt@gem_eio@reset-stress:
> 
>       o shard-dg1: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-dg1-17/igt@gem_eio@reset-stress.html> -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-dg1-16/igt@gem_eio@reset-stress.html> (i915#5784 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/5784>)
>   *
> 
>     igt@gem_exec_balancer@hog:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/
>         igt@gem_exec_balancer@hog.html> (i915#4812 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4812>)
>   *
> 
>     igt@gem_exec_balancer@parallel:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-10/
>         igt@gem_exec_balancer@parallel.html> (i915#4525 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525>)
>   *
> 
>     igt@gem_exec_balancer@parallel-dmabuf-import-out-fence:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-1/
>         igt@gem_exec_balancer@parallel-dmabuf-import-out-fence.html>
>         (i915#4525 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4525>)
>   *
> 
>     igt@gem_exec_big@single:
> 
>       o shard-tglu: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-tglu-2/igt@gem_exec_big@single.html> -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-tglu-7/igt@gem_exec_big@single.html> (i915#11713 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713> /
>         i915#14756 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14756>)
>   *
> 
>     igt@gem_exec_capture@capture-recoverable:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-5/
>         igt@gem_exec_capture@capture-recoverable.html> (i915#6344
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6344>)
>   *
> 
>     igt@gem_exec_flush@basic-batch-kernel-default-cmd:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-8/igt@gem_exec_flush@basic-
>         batch-kernel-default-cmd.html> (i915#3539 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3539> /
>         i915#4852 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4852>) +2 other tests skip
>   *
> 
>     igt@gem_exec_flush@basic-uc-prw-default:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-4/igt@gem_exec_flush@basic-uc-
>         prw-default.html> (i915#3539 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/3539>)
>   *
> 
>     igt@gem_exec_reloc@basic-gtt-active:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/igt@gem_exec_reloc@basic-
>         gtt-active.html> (i915#3281 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3281>) +3 other tests skip
>   *
> 
>     igt@gem_exec_reloc@basic-softpin:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-4/igt@gem_exec_reloc@basic-
>         softpin.html> (i915#3281 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3281>) +6 other tests skip
>   *
> 
>     igt@gem_exec_reloc@basic-write-wc-noreloc:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-7/igt@gem_exec_reloc@basic-
>         write-wc-noreloc.html> (i915#3281 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>) +3 other
>         tests skip
>   *
> 
>     igt@gem_exec_suspend@basic-s0:
> 
>       o shard-dg2: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v4/shard-dg2-4/
>         igt@gem_exec_suspend@basic-s0.html> (i915#13356 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356>) +1 other
>         test incomplete
>   *
> 
>     igt@gem_fence_thrash@bo-write-verify-y:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/igt@gem_fence_thrash@bo-
>         write-verify-y.html> (i915#4860 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/4860>)
>   *
> 
>     igt@gem_fenced_exec_thrash@no-spare-fences:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-6/
>         igt@gem_fenced_exec_thrash@no-spare-fences.html> (i915#4860
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4860>)
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-7/igt@gem_huc_copy@huc-
>         copy.html> (i915#2190 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/2190>)
>   *
> 
>     igt@gem_lmem_swapping@heavy-verify-random:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-7/igt@gem_lmem_swapping@heavy-
>         verify-random.html> (i915#4613 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/4613>)
>   *
> 
>     igt@gem_lmem_swapping@parallel-random:
> 
>       o shard-glk: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-glk9/
>         igt@gem_lmem_swapping@parallel-random.html> (i915#4613 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>) +4 other
>         tests skip
>   *
> 
>     igt@gem_lmem_swapping@parallel-random-verify-ccs:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-1/
>         igt@gem_lmem_swapping@parallel-random-verify-ccs.html>
>         (i915#4613 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4613>) +1 other test skip
>   *
> 
>     igt@gem_lmem_swapping@random-engines:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-10/
>         igt@gem_lmem_swapping@random-engines.html> (i915#4613 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>) +2 other
>         tests skip
>   *
> 
>     igt@gem_mmap_gtt@hang:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/
>         igt@gem_mmap_gtt@hang.html> (i915#4077 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077>) +4 other
>         tests skip
>   *
> 
>     igt@gem_mmap_offset@clear-via-pagefault:
> 
>       o shard-mtlp: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-mtlp-4/igt@gem_mmap_offset@clear-via-
>         pagefault.html> -> ABORT <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-mtlp-5/igt@gem_mmap_offset@clear-
>         via-pagefault.html> (i915#14809 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/14809>) +1 other test abort
>   *
> 
>     igt@gem_mmap_wc@write-wc-read-gtt:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-8/igt@gem_mmap_wc@write-wc-
>         read-gtt.html> (i915#4083 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4083>) +6 other tests skip
>   *
> 
>     igt@gem_partial_pwrite_pread@reads-display:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/
>         igt@gem_partial_pwrite_pread@reads-display.html> (i915#3282
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
>         +2 other tests skip
>   *
> 
>     igt@gem_partial_pwrite_pread@write-display:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-4/
>         igt@gem_partial_pwrite_pread@write-display.html> (i915#3282
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
>         +1 other test skip
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-7/
>         igt@gem_partial_pwrite_pread@write-display.html> (i915#3282
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>)
>   *
> 
>     igt@gem_pxp@create-regular-context-1:
> 
>       o shard-rkl: NOTRUN -> TIMEOUT <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-rkl-7/igt@gem_pxp@create-
>         regular-context-1.html> (i915#12917 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917> /
>         i915#12964 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/12964>)
>   *
> 
>     igt@gem_pxp@hw-rejects-pxp-buffer:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-5/igt@gem_pxp@hw-rejects-
>         pxp-buffer.html> (i915#13398 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/13398>) +1 other test skip
>   *
> 
>     igt@gem_pxp@protected-encrypted-src-copy-not-readible:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-6/igt@gem_pxp@protected-
>         encrypted-src-copy-not-readible.html> (i915#4270 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>) +1 other
>         test skip
>   *
> 
>     igt@gem_pxp@reject-modify-context-protection-on:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-8/igt@gem_pxp@reject-modify-context-
>         protection-on.html> -> TIMEOUT <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v4/shard-rkl-5/igt@gem_pxp@reject-
>         modify-context-protection-on.html> (i915#12917 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917> /
>         i915#12964 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/12964>)
>   *
> 
>     igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/igt@gem_pxp@verify-pxp-
>         execution-after-suspend-resume.html> (i915#4270 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4270>) +2 other
>         tests skip
>   *
> 
>     igt@gem_render_copy@y-tiled-ccs-to-x-tiled:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/igt@gem_render_copy@y-
>         tiled-ccs-to-x-tiled.html> (i915#5190 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190> /
>         i915#8428 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8428>) +2 other tests skip
>   *
> 
>     igt@gem_render_copy@yf-tiled-ccs-to-x-tiled:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-6/igt@gem_render_copy@yf-tiled-
>         ccs-to-x-tiled.html> (i915#5190 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/5190> / i915#8428 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8428>) +2 other
>         tests skip
>   *
> 
>     igt@gem_userptr_blits@dmabuf-sync:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-5/
>         igt@gem_userptr_blits@dmabuf-sync.html> (i915#3297 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297> /
>         i915#3323 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3323>)
>   *
> 
>     igt@gem_userptr_blits@map-fixed-invalidate-overlap:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-8/igt@gem_userptr_blits@map-
>         fixed-invalidate-overlap.html> (i915#3297 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297> /
>         i915#4880 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4880>) +1 other test skip
>   *
> 
>     igt@gem_userptr_blits@readonly-unsync:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-6/
>         igt@gem_userptr_blits@readonly-unsync.html> (i915#3297 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3297>) +2 other
>         tests skip
>   *
> 
>     igt@gem_workarounds@suspend-resume:
> 
>       o shard-glk: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v4/shard-glk6/
>         igt@gem_workarounds@suspend-resume.html> (i915#13356 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/13356> /
>         i915#14586 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14586>) +1 other test incomplete
>   *
> 
>     igt@gen9_exec_parse@bb-large:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-10/igt@gen9_exec_parse@bb-
>         large.html> (i915#2527 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/2527> / i915#2856 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2856>)
>   *
> 
>     igt@gen9_exec_parse@bb-secure:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-6/igt@gen9_exec_parse@bb-
>         secure.html> (i915#2856 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2856>) +1 other test skip
>   *
> 
>     igt@gen9_exec_parse@bb-start-out:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/igt@gen9_exec_parse@bb-
>         start-out.html> (i915#2856 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2856>)
>   *
> 
>     igt@gen9_exec_parse@unaligned-jump:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-7/
>         igt@gen9_exec_parse@unaligned-jump.html> (i915#2527 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>)
>   *
> 
>     igt@gen9_exec_parse@valid-registers:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-1/
>         igt@gen9_exec_parse@valid-registers.html> (i915#2527 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527> /
>         i915#2856 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/2856>)
>   *
> 
>     igt@i915_drm_fdinfo@all-busy-idle-check-all:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-8/igt@i915_drm_fdinfo@all-busy-
>         idle-check-all.html> (i915#14123 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14123>)
>   *
> 
>     igt@i915_drm_fdinfo@most-busy-idle-check-all@vecs1:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-4/igt@i915_drm_fdinfo@most-
>         busy-idle-check-all@vecs1.html> (i915#14073 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14073>) +7 other
>         tests skip
>   *
> 
>     igt@i915_drm_fdinfo@virtual-busy-hang-all:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-6/igt@i915_drm_fdinfo@virtual-
>         busy-hang-all.html> (i915#14118 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/14118>)
>   *
> 
>     igt@i915_module_load@resize-bar:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-10/
>         igt@i915_module_load@resize-bar.html> (i915#6412 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6412>)
>   *
> 
>     igt@i915_pm_sseu@full-enable:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-5/igt@i915_pm_sseu@full-
>         enable.html> (i915#4387 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4387>)
>   *
> 
>     igt@i915_query@query-topology-coherent-slice-mask:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-6/igt@i915_query@query-
>         topology-coherent-slice-mask.html> (i915#6188 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6188>)
>   *
> 
>     igt@i915_selftest@live@workarounds:
> 
>       o shard-mtlp: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-mtlp-7/
>         igt@i915_selftest@live@workarounds.html> -> DMESG-FAIL <https://
>         intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-
>         mtlp-2/igt@i915_selftest@live@workarounds.html> (i915#12061
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061>)
>         +1 other test dmesg-fail
>   *
> 
>     igt@i915_suspend@debugfs-reader:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-5/igt@i915_suspend@debugfs-reader.html> -
>          > INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-rkl-3/igt@i915_suspend@debugfs-
>         reader.html> (i915#4817 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4817>)
>   *
> 
>     igt@i915_suspend@fence-restore-untiled:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-8/igt@i915_suspend@fence-
>         restore-untiled.html> (i915#4077 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077>) +4 other
>         tests skip
>   *
> 
>     igt@kms_addfb_basic@addfb25-x-tiled-legacy:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-4/igt@kms_addfb_basic@addfb25-
>         x-tiled-legacy.html> (i915#4212 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/4212>)
>   *
> 
>     igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/
>         igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy.html>
>         (i915#4212 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4212>)
>   *
> 
>     igt@kms_async_flips@alternate-sync-async-flip-atomic@pipe-c-hdmi-a-1:
> 
>       o shard-glk: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-glk5/igt@kms_async_flips@alternate-
>         sync-async-flip-atomic@pipe-c-hdmi-a-1.html> (i915#14888
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14888>)
>         +2 other tests fail
>   *
> 
>     igt@kms_async_flips@async-flip-suspend-resume:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@kms_async_flips@async-flip-suspend-
>         resume.html> -> INCOMPLETE <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-rkl-3/
>         igt@kms_async_flips@async-flip-suspend-resume.html> (i915#12761
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761>)
>       o shard-glk: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v4/shard-glk6/
>         igt@kms_async_flips@async-flip-suspend-resume.html> (i915#12761
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12761>)
>         +1 other test incomplete
>   *
> 
>     igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-a-2:
> 
>       o shard-rkl: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v4/shard-rkl-3/
>         igt@kms_async_flips@async-flip-suspend-resume@pipe-a-hdmi-
>         a-2.html> (i915#12761 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/12761>)
>   *
> 
>     igt@kms_atomic_transition@plane-all-modeset-transition-internal-panels:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/
>         igt@kms_atomic_transition@plane-all-modeset-transition-internal-
>         panels.html> (i915#1769 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/1769> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>   *
> 
>     igt@kms_big_fb@4-tiled-16bpp-rotate-0:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_big_fb@4-
>         tiled-16bpp-rotate-0.html> (i915#5286 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>) +2 other
>         tests skip
>   *
> 
>     igt@kms_big_fb@4-tiled-addfb:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-7/igt@kms_big_fb@4-tiled-
>         addfb.html> (i915#5286 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/5286>) +2 other tests skip
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip:
> 
>       o shard-mtlp: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-mtlp-5/igt@kms_big_fb@4-tiled-max-hw-
>         stride-64bpp-rotate-0-hflip.html> -> FAIL <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-mtlp-4/
>         igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip.html>
>         (i915#5138 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5138>)
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-180:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-10/igt@kms_big_fb@4-tiled-
>         max-hw-stride-64bpp-rotate-180.html> (i915#5286 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>) +4 other
>         tests skip
>   *
> 
>     igt@kms_big_fb@x-tiled-32bpp-rotate-90:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-7/igt@kms_big_fb@x-tiled-32bpp-
>         rotate-90.html> (i915#3638 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3638>)
>   *
> 
>     igt@kms_big_fb@x-tiled-64bpp-rotate-90:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_big_fb@x-
>         tiled-64bpp-rotate-90.html> +6 other tests skip
>   *
> 
>     igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-4/igt@kms_big_fb@x-tiled-max-hw-
>         stride-64bpp-rotate-0-hflip-async-flip.html> -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-
>         hflip-async-flip.html> (i915#12964 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964>) +11
>         other tests dmesg-warn
>   *
> 
>     igt@kms_big_fb@y-tiled-16bpp-rotate-180:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_big_fb@y-
>         tiled-16bpp-rotate-180.html> (i915#4538 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4538> /
>         i915#5190 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5190>) +4 other tests skip
>   *
> 
>     igt@kms_big_fb@y-tiled-32bpp-rotate-0:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-8/igt@kms_big_fb@y-tiled-32bpp-
>         rotate-0.html> (i915#4538 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4538> / i915#5190 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190>) +5 other
>         tests skip
>   *
> 
>     igt@kms_ccs@ccs-on-another-bo-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_ccs@ccs-on-
>         another-bo-y-tiled-gen12-mc-ccs@pipe-c-hdmi-a-2.html>
>         (i915#10307 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/10307> / i915#6095 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/6095>) +29 other tests skip
>   *
> 
>     igt@kms_ccs@crc-primary-basic-y-tiled-ccs@pipe-a-hdmi-a-1:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-4/igt@kms_ccs@crc-primary-
>         basic-y-tiled-ccs@pipe-a-hdmi-a-1.html> (i915#10307 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/10307> /
>         i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/6095>) +67 other tests skip
>   *
> 
>     igt@kms_ccs@crc-primary-rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-8/igt@kms_ccs@crc-primary-
>         rotation-180-4-tiled-mtl-rc-ccs@pipe-b-hdmi-a-2.html> (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +40 other tests skip
>   *
> 
>     igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-a-hdmi-a-3:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg1-13/igt@kms_ccs@crc-primary-
>         rotation-180-y-tiled-ccs@pipe-a-hdmi-a-3.html> (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +129 other tests skip
>   *
> 
>     igt@kms_ccs@crc-primary-suspend-4-tiled-lnl-ccs:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-6/igt@kms_ccs@crc-primary-
>         suspend-4-tiled-lnl-ccs.html> (i915#12805 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12805>)
>   *
> 
>     igt@kms_ccs@crc-primary-suspend-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-4/igt@kms_ccs@crc-primary-
>         suspend-4-tiled-mtl-rc-ccs@pipe-c-hdmi-a-1.html> (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +13 other tests skip
>   *
> 
>     igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-2:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_ccs@crc-primary-
>         suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi-a-2.html> (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +4 other tests skip
>   *
> 
>     igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-c-hdmi-a-2:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-8/igt@kms_ccs@crc-primary-
>         suspend-yf-tiled-ccs@pipe-c-hdmi-a-2.html> (i915#14098 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098> /
>         i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/6095>) +37 other tests skip
>   *
> 
>     igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-cc:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-5/igt@kms_ccs@crc-sprite-planes-basic-y-
>         tiled-gen12-rc-ccs-cc.html> -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/
>         igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs-
>         cc.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/14544>) +23 other tests skip
>   *
> 
>     igt@kms_ccs@crc-sprite-planes-basic-y-tiled-gen12-rc-ccs@pipe-d-
>     hdmi-a-1:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-4/igt@kms_ccs@crc-sprite-
>         planes-basic-y-tiled-gen12-rc-ccs@pipe-d-hdmi-a-1.html>
>         (i915#10307 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/10307> / i915#10434 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/10434> / i915#6095 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +1 other
>         test skip
>   *
> 
>     igt@kms_ccs@missing-ccs-buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-5/igt@kms_ccs@missing-ccs-
>         buffer-4-tiled-mtl-mc-ccs@pipe-d-hdmi-a-1.html> (i915#6095
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>)
>         +54 other tests skip
>   *
> 
>     igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_ccs@random-ccs-
>         data-4-tiled-dg2-rc-ccs-cc.html> (i915#6095 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +39 other
>         tests skip
>   *
> 
>     igt@kms_cdclk@mode-transition@pipe-d-hdmi-a-3:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-6/igt@kms_cdclk@mode-
>         transition@pipe-d-hdmi-a-3.html> (i915#13781 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/13781>) +4 other
>         tests skip
>   *
> 
>     igt@kms_chamelium_edid@vga-edid-read:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-7/igt@kms_chamelium_edid@vga-
>         edid-read.html> (i915#11151 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/11151> / i915#7828 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>) +3 other
>         tests skip
>   *
> 
>     igt@kms_chamelium_frames@dp-crc-fast:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/
>         igt@kms_chamelium_frames@dp-crc-fast.html> (i915#11151 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151> /
>         i915#7828 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/7828>) +2 other tests skip
>   *
> 
>     igt@kms_chamelium_frames@hdmi-crc-fast:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-1/
>         igt@kms_chamelium_frames@hdmi-crc-fast.html> (i915#11151
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/11151> / i915#7828 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/7828>) +2 other tests skip
>   *
> 
>     igt@kms_chamelium_hpd@dp-hpd-storm:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-6/igt@kms_chamelium_hpd@dp-hpd-
>         storm.html> (i915#11151 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/11151> / i915#7828 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>) +6 other
>         tests skip
>   *
> 
>     igt@kms_chamelium_hpd@vga-hpd-without-ddc:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-5/
>         igt@kms_chamelium_hpd@vga-hpd-without-ddc.html> (i915#11151
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/11151> / i915#7828 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/7828>) +4 other tests skip
>   *
> 
>     igt@kms_content_protection@dp-mst-type-0:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/
>         igt@kms_content_protection@dp-mst-type-0.html> (i915#3299
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3299>)
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-1/
>         igt@kms_content_protection@dp-mst-type-0.html> (i915#3116
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116> /
>         i915#3299 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3299>)
>   *
> 
>     igt@kms_content_protection@legacy:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-4/
>         igt@kms_content_protection@legacy.html> (i915#7118 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118> /
>         i915#9424 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9424>)
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-7/
>         igt@kms_content_protection@legacy.html> (i915#7118 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/7118> /
>         i915#9424 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9424>)
>   *
> 
>     igt@kms_content_protection@lic-type-0:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/
>         igt@kms_content_protection@lic-type-0.html> (i915#9424 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>   *
> 
>     igt@kms_content_protection@lic-type-1:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-7/
>         igt@kms_content_protection@lic-type-1.html> (i915#9424 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9424>)
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-1/
>         igt@kms_content_protection@lic-type-1.html> (i915#6944 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6944> /
>         i915#9424 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9424>)
>   *
> 
>     igt@kms_cursor_crc@cursor-offscreen-max-size:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-1/
>         igt@kms_cursor_crc@cursor-offscreen-max-size.html> (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         +1 other test skip
>   *
> 
>     igt@kms_cursor_crc@cursor-onscreen-128x42:
> 
>       o shard-tglu: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-tglu-5/igt@kms_cursor_crc@cursor-
>         onscreen-128x42.html> -> FAIL <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-5/
>         igt@kms_cursor_crc@cursor-onscreen-128x42.html> (i915#13566
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566>)
>         +1 other test fail
>   *
> 
>     igt@kms_cursor_crc@cursor-onscreen-256x85:
> 
>       o shard-tglu-1: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-1/
>         igt@kms_cursor_crc@cursor-onscreen-256x85.html> (i915#13566
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566>)
>         +3 other tests fail
>   *
> 
>     igt@kms_cursor_crc@cursor-sliding-256x85@pipe-a-hdmi-a-1:
> 
>       o shard-rkl: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-4/igt@kms_cursor_crc@cursor-
>         sliding-256x85@pipe-a-hdmi-a-1.html> (i915#13566 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/13566>) +3 other
>         tests fail
>   *
> 
>     igt@kms_cursor_crc@cursor-sliding-32x10:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-8/igt@kms_cursor_crc@cursor-
>         sliding-32x10.html> (i915#3555 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/3555>) +4 other tests skip
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-5/
>         igt@kms_cursor_crc@cursor-sliding-32x10.html> (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         +2 other tests skip
>   *
> 
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/
>         igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html>
>         (i915#4103 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4103> / i915#4213 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4213>) +1 other test skip
>   *
> 
>     igt@kms_cursor_legacy@cursorb-vs-flipa-atomic:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/
>         igt@kms_cursor_legacy@cursorb-vs-flipa-atomic.html> (i915#13046
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/13046> / i915#5354 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/5354>) +1 other test skip
>   *
> 
>     igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-4/
>         igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions.html>
>         (i915#13046 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/13046> / i915#5354 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/5354>) +1 other test skip
>   *
> 
>     igt@kms_cursor_legacy@cursorb-vs-flipa-legacy:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-7/
>         igt@kms_cursor_legacy@cursorb-vs-flipa-legacy.html> +8 other
>         tests skip
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
> 
>       o shard-glk: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-glk8/igt@kms_cursor_legacy@flip-vs-
>         cursor-atomic-transitions-varying-size.html> (i915#2346
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346>)
>   *
> 
>     igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_dirtyfb@drrs-
>         dirtyfb-ioctl.html> (i915#9833 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/9833>)
>   *
> 
>     igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-1:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-7/igt@kms_dither@fb-8bpc-vs-
>         panel-6bpc@pipe-a-hdmi-a-1.html> (i915#3804 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3804>)
>   *
> 
>     igt@kms_dp_aux_dev:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-7/igt@kms_dp_aux_dev.html>
>         (i915#1257 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/1257>)
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_dp_aux_dev.html>
>         (i915#1257 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/1257>)
>   *
> 
>     igt@kms_dsc@dsc-fractional-bpp-with-bpc:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-8/igt@kms_dsc@dsc-fractional-
>         bpp-with-bpc.html> (i915#3840 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/3840>)
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-5/igt@kms_dsc@dsc-
>         fractional-bpp-with-bpc.html> (i915#3840 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>   *
> 
>     igt@kms_dsc@dsc-with-bpc:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-6/igt@kms_dsc@dsc-with-
>         bpc.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3555> / i915#3840 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>   *
> 
>     igt@kms_dsc@dsc-with-formats:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_dsc@dsc-with-
>         formats.html> (i915#3555 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3555> / i915#3840 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>   *
> 
>     igt@kms_dsc@dsc-with-output-formats:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-7/igt@kms_dsc@dsc-with-output-
>         formats.html> (i915#3555 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3555> / i915#3840 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>)
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_dsc@dsc-with-
>         output-formats.html> (i915#3555 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/3555> / i915#3840 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>) +1 other
>         test skip
>   *
> 
>     igt@kms_feature_discovery@chamelium:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/
>         igt@kms_feature_discovery@chamelium.html> (i915#4854 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4854>)
>   *
> 
>     igt@kms_feature_discovery@display-2x:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-4/
>         igt@kms_feature_discovery@display-2x.html> (i915#1839 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839>)
>   *
> 
>     igt@kms_flip@2x-busy-flip:
> 
>       o shard-glk: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-glk6/igt@kms_flip@2x-busy-flip.html> -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-glk8/igt@kms_flip@2x-busy-flip.html> +4 other tests skip
>   *
> 
>     igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_flip@2x-flip-vs-
>         absolute-wf_vblank-interruptible.html> (i915#9934 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>) +3 other
>         tests skip
>   *
> 
>     igt@kms_flip@2x-flip-vs-dpms:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-5/igt@kms_flip@2x-flip-vs-
>         dpms.html> (i915#3637 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3637> / i915#9934 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>) +7 other
>         tests skip
>   *
> 
>     igt@kms_flip@2x-flip-vs-fences:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-4/igt@kms_flip@2x-flip-vs-
>         fences.html> (i915#8381 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8381>)
>   *
> 
>     igt@kms_flip@2x-plain-flip-fb-recreate:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-8/igt@kms_flip@2x-plain-flip-
>         fb-recreate.html> (i915#9934 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/9934>) +5 other tests skip
>   *
> 
>     igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset-interruptible:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-7/igt@kms_flip@2x-single-
>         buffer-flip-vs-dpms-off-vs-modeset-interruptible.html>
>         (i915#9934 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9934>) +2 other tests skip
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_flip@2x-single-
>         buffer-flip-vs-dpms-off-vs-modeset-interruptible.html>
>         (i915#3637 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3637> / i915#9934 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9934>) +2 other tests skip
>   *
> 
>     igt@kms_flip@bo-too-big-interruptible:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@kms_flip@bo-too-big-
>         interruptible.html> -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-rkl-6/igt@kms_flip@bo-too-big-
>         interruptible.html> (i915#14544 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/14544> / i915#3637 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637>) +4 other
>         tests skip
>   *
> 
>     igt@kms_flip@flip-vs-fences:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_flip@flip-vs-
>         fences.html> (i915#8381 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8381>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-upscaling:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-6/
>         igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-
>         upscaling.html> (i915#2672 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2672> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-
>     upscaling@pipe-a-valid-mode:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-6/
>         igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-
>         upscaling@pipe-a-valid-mode.html> (i915#2672 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>) +1 other
>         test skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-
>     downscaling:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-8/
>         igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-
>         ytilegen12rcccs-downscaling.html> (i915#2672 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672> /
>         i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555> / i915#5190 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/5190>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-
>     upscaling:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/
>         igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-
>         ytilegen12rcccs-upscaling.html> (i915#2672 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672> /
>         i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555> / i915#5190 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/5190>) +1 other test skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-
>     upscaling@pipe-a-valid-mode:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/
>         igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-
>         ytilegen12rcccs-upscaling@pipe-a-valid-mode.html> (i915#2672
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>)
>         +3 other tests skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-7/
>         igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-
>         downscaling.html> (i915#2672 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/2672> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-1/
>         igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-
>         downscaling.html> (i915#2587 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/2587> / i915#2672 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672> /
>         i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-downscaling:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-10/
>         igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-
>         downscaling.html> (i915#2672 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/2672> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) +1 other
>         test skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-
>     downscaling@pipe-a-valid-mode:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-10/
>         igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-
>         downscaling@pipe-a-valid-mode.html> (i915#2587 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587> /
>         i915#2672 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/2672>) +1 other test skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-downscaling:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@kms_flip_scaled_crc@flip-64bpp-
>         linear-to-16bpp-linear-downscaling.html> -> SKIP <https://intel-
>         gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/
>         igt@kms_flip_scaled_crc@flip-64bpp-linear-to-16bpp-linear-
>         downscaling.html> (i915#14544 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/14544> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) +1 other
>         test skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-1/
>         igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-
>         upscaling.html> (i915#2672 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2672> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-
>     upscaling@pipe-a-valid-mode:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-4/
>         igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-
>         upscaling@pipe-a-valid-mode.html> (i915#2672 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672>) +2 other
>         tests skip
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-1/
>         igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-
>         upscaling@pipe-a-valid-mode.html> (i915#2587 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587> /
>         i915#2672 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/2672>) +1 other test skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/
>         igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-
>         upscaling.html> (i915#2672 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2672> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) +1 other
>         test skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-mmap-wc:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-
>         primscrn-pri-indfb-draw-mmap-wc.html> -> SKIP <https://intel-
>         gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/
>         igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-
>         mmap-wc.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544> / i915#1849 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/1849> /
>         i915#5354 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5354>) +4 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-move:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-5/
>         igt@kms_frontbuffer_tracking@fbc-2p-primscrn-spr-indfb-
>         move.html> +60 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-render:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-7/
>         igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-
>         render.html> (i915#3023 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3023>) +4 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-4/
>         igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-
>         mmap-wc.html> (i915#8708 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8708>) +11 other tests skip
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-7/
>         igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-
>         mmap-wc.html> (i915#1825 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/1825>) +9 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-gtt:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/
>         igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-
>         mmap-gtt.html> (i915#8708 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8708>) +5 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/
>         igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-
>         blt.html> (i915#3458 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3458>) +6 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
> 
>       o shard-dg1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg1-14/
>         igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-
>         blt.html> (i915#3458 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3458>)
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-blt:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-8/
>         igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-
>         blt.html> (i915#3458 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3458>) +13 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-mmap-cpu:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/
>         igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-
>         mmap-cpu.html> (i915#5354 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/5354>) +17 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-move:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-4/
>         igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-
>         move.html> (i915#5354 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/5354>) +14 other tests skip
>   *
> 
>     igt@kms_hdr@bpc-switch-dpms:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-6/igt@kms_hdr@bpc-switch-
>         dpms.html> (i915#3555 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3555> / i915#8228 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>)
>   *
> 
>     igt@kms_hdr@invalid-metadata-sizes:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-10/igt@kms_hdr@invalid-
>         metadata-sizes.html> (i915#3555 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/3555> / i915#8228 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>) +1 other
>         test skip
>   *
> 
>     igt@kms_hdr@static-toggle:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_hdr@static-
>         toggle.html> (i915#3555 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3555> / i915#8228 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>) +1 other
>         test skip
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_hdr@static-
>         toggle.html> (i915#3555 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3555> / i915#8228 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>) +1 other
>         test skip
>   *
> 
>     igt@kms_invalid_mode@bad-vsync-end:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@kms_invalid_mode@bad-vsync-
>         end.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-
>         end.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/14544> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> /
>         i915#8826 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8826>)
>   *
> 
>     igt@kms_invalid_mode@zero-hdisplay:
> 
>       o shard-glk10: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-glk10/
>         igt@kms_invalid_mode@zero-hdisplay.html> +157 other tests skip
>   *
> 
>     igt@kms_joiner@basic-force-big-joiner:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-4/igt@kms_joiner@basic-force-
>         big-joiner.html> (i915#12388 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/12388>)
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-7/igt@kms_joiner@basic-force-
>         big-joiner.html> (i915#12388 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/12388>)
>   *
> 
>     igt@kms_joiner@basic-ultra-joiner:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-6/igt@kms_joiner@basic-ultra-
>         joiner.html> (i915#12339 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/12339>)
>   *
> 
>     igt@kms_joiner@invalid-modeset-force-big-joiner:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_joiner@invalid-
>         modeset-force-big-joiner.html> (i915#12388 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12388>)
>   *
> 
>     igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-6/
>         igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html>
>         (i915#4816 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4816>)
>   *
> 
>     igt@kms_panel_fitting@legacy:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-7/
>         igt@kms_panel_fitting@legacy.html> (i915#6301 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301>)
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-1/
>         igt@kms_panel_fitting@legacy.html> (i915#6301 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6301>)
>   *
> 
>     igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-1/
>         igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html> +42
>         other tests skip
>   *
> 
>     igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-4/igt@kms_pipe_b_c_ivb@from-
>         pipe-c-to-b-with-3-lanes.html> +10 other tests skip
>   *
> 
>     igt@kms_pipe_crc_basic@read-crc-frame-sequence:
> 
>       o shard-glk10: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-glk10/
>         igt@kms_pipe_crc_basic@read-crc-frame-sequence.html> (i915#11190
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11190>)
>   *
> 
>     igt@kms_pipe_stress@stress-xrgb8888-ytiled:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-8/igt@kms_pipe_stress@stress-
>         xrgb8888-ytiled.html> (i915#13705 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/13705>)
>   *
> 
>     igt@kms_plane@plane-panning-bottom-right-suspend:
> 
>       o shard-glk: NOTRUN -> INCOMPLETE <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v4/shard-glk1/igt@kms_plane@plane-
>         panning-bottom-right-suspend.html> (i915#13026 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/13026>) +1 other
>         test incomplete
>   *
> 
>     igt@kms_plane_alpha_blend@alpha-basic:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-5/igt@kms_plane_alpha_blend@alpha-
>         basic.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-
>         basic.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544> / i915#7294 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/7294>) +1 other
>         test skip
>   *
> 
>     igt@kms_plane_multiple@2x-tiling-none:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-1/
>         igt@kms_plane_multiple@2x-tiling-none.html> (i915#13958
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958>)
>         +1 other test skip
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/
>         igt@kms_plane_multiple@2x-tiling-none.html> (i915#13958
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958>)
>   *
> 
>     igt@kms_plane_multiple@tiling-yf:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-7/
>         igt@kms_plane_multiple@tiling-yf.html> (i915#14259 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259>)
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-4/
>         igt@kms_plane_multiple@tiling-yf.html> (i915#14259 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259>) +1 other
>         test skip
>   *
> 
>     igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-
>         factor-0-25-with-modifiers.html> -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/
>         igt@kms_plane_scaling@plane-upscale-factor-0-25-with-
>         modifiers.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544> / i915#8152 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152>) +1 other
>         test skip
>   *
> 
>     igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-a:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-
>         factor-0-25-with-modifiers@pipe-a.html> -> SKIP <https://intel-
>         gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/
>         igt@kms_plane_scaling@plane-upscale-factor-0-25-with-
>         modifiers@pipe-a.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247> /
>         i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544>) +1 other test skip
>   *
> 
>     igt@kms_plane_scaling@plane-upscale-factor-0-25-with-modifiers@pipe-b:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@kms_plane_scaling@plane-upscale-
>         factor-0-25-with-modifiers@pipe-b.html> -> SKIP <https://intel-
>         gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/
>         igt@kms_plane_scaling@plane-upscale-factor-0-25-with-
>         modifiers@pipe-b.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247> /
>         i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#8152 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8152>) +1 other test skip
>   *
> 
>     igt@kms_plane_scaling@plane-upscale-factor-0-25-with-rotation@pipe-d:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-10/
>         igt@kms_plane_scaling@plane-upscale-factor-0-25-with-
>         rotation@pipe-d.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>) +4 other
>         tests skip
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-75-upscale-20x20:
> 
>       o shard-dg1: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-dg1-18/igt@kms_plane_scaling@planes-
>         downscale-factor-0-75-upscale-20x20.html> -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-dg1-16/igt@kms_plane_scaling@planes-downscale-factor-0-75-
>         upscale-20x20.html> (i915#4423 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/4423>)
>   *
> 
>     igt@kms_pm_dc@dc6-dpms:
> 
>       o shard-tglu: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-5/igt@kms_pm_dc@dc6-
>         dpms.html> (i915#9295 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/9295>)
>   *
> 
>     igt@kms_pm_dc@dc9-dpms:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_pm_dc@dc9-
>         dpms.html> (i915#4281 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/4281>)
>   *
> 
>     igt@kms_pm_rpm@modeset-lpsp:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_pm_rpm@modeset-
>         lpsp.html> (i915#15073 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/15073>)
>   *
> 
>     igt@kms_pm_rpm@modeset-lpsp-stress:
> 
>       o shard-rkl: PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@kms_pm_rpm@modeset-lpsp-
>         stress.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-rkl-8/igt@kms_pm_rpm@modeset-lpsp-
>         stress.html> (i915#15073 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/15073>) +1 other test skip
>   *
> 
>     igt@kms_pm_rpm@modeset-non-lpsp-stress:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_pm_rpm@modeset-
>         non-lpsp-stress.html> (i915#15073 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073>)
>   *
> 
>     igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-exceed-fully-sf:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-7/igt@kms_psr2_sf@fbc-pr-
>         overlay-plane-move-continuous-exceed-fully-sf.html> (i915#11520
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
>         +2 other tests skip
>   *
> 
>     igt@kms_psr2_sf@fbc-psr2-overlay-primary-update-sf-dmg-area:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_psr2_sf@fbc-
>         psr2-overlay-primary-update-sf-dmg-area.html> (i915#11520
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
>         +3 other tests skip
>   *
> 
>     igt@kms_psr2_sf@pr-cursor-plane-move-continuous-exceed-fully-sf:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_psr2_sf@pr-
>         cursor-plane-move-continuous-exceed-fully-sf.html> (i915#11520
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
>         +3 other tests skip
>   *
> 
>     igt@kms_psr2_sf@psr2-cursor-plane-move-continuous-exceed-sf:
> 
>       o shard-glk10: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-glk10/igt@kms_psr2_sf@psr2-
>         cursor-plane-move-continuous-exceed-sf.html> (i915#11520
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
>         +3 other tests skip
>   *
> 
>     igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-exceed-fully-sf:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-10/igt@kms_psr2_sf@psr2-
>         overlay-plane-move-continuous-exceed-fully-sf.html> (i915#11520
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
>         +5 other tests skip
>   *
> 
>     igt@kms_psr2_sf@psr2-overlay-plane-update-continuous-sf:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-6/igt@kms_psr2_sf@psr2-overlay-
>         plane-update-continuous-sf.html> (i915#11520 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>) +5 other
>         tests skip
>   *
> 
>     igt@kms_psr2_sf@psr2-overlay-primary-update-sf-dmg-area:
> 
>       o shard-glk: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-glk6/igt@kms_psr2_sf@psr2-overlay-
>         primary-update-sf-dmg-area.html> (i915#11520 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>) +6 other
>         tests skip
>   *
> 
>     igt@kms_psr@fbc-pr-sprite-render:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-10/igt@kms_psr@fbc-pr-
>         sprite-render.html> (i915#9732 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/9732>) +14 other tests skip
>   *
> 
>     igt@kms_psr@fbc-psr-basic:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-6/igt@kms_psr@fbc-psr-
>         basic.html> (i915#1072 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/1072> / i915#9732 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +13 other
>         tests skip
>   *
> 
>     igt@kms_psr@fbc-psr-sprite-blt:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_psr@fbc-psr-
>         sprite-blt.html> (i915#1072 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/1072> / i915#9732 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +10 other
>         tests skip
>   *
> 
>     igt@kms_psr@fbc-psr2-cursor-mmap-gtt:
> 
>       o shard-glk: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-glk5/igt@kms_psr@fbc-psr2-cursor-
>         mmap-gtt.html> +182 other tests skip
>   *
> 
>     igt@kms_psr@psr-sprite-plane-onoff:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-1/igt@kms_psr@psr-sprite-
>         plane-onoff.html> (i915#9732 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/9732>) +11 other tests skip
>   *
> 
>     igt@kms_psr@psr-sprite-render:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-7/igt@kms_psr@psr-sprite-
>         render.html> (i915#1072 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/1072> / i915#9732 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +4 other
>         tests skip
>   *
> 
>     igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/
>         igt@kms_psr_stress_test@invalidate-primary-flip-overlay.html>
>         (i915#9685 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9685>)
>   *
> 
>     igt@kms_rotation_crc@primary-rotation-270:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-4/igt@kms_rotation_crc@primary-
>         rotation-270.html> (i915#12755 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/12755>)
>   *
> 
>     igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-1/
>         igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html>
>         (i915#5289 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/5289>)
>   *
> 
>     igt@kms_rotation_crc@sprite-rotation-90-pos-100-0:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/
>         igt@kms_rotation_crc@sprite-rotation-90-pos-100-0.html>
>         (i915#12755 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/12755>)
>   *
> 
>     igt@kms_setmode@invalid-clone-single-crtc-stealing:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/igt@kms_setmode@invalid-
>         clone-single-crtc-stealing.html> (i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) +3 other
>         tests skip
>   *
> 
>     igt@kms_tiled_display@basic-test-pattern:
> 
>       o shard-glk: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-glk5/igt@kms_tiled_display@basic-
>         test-pattern.html> (i915#10959 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/10959>)
>   *
> 
>     igt@kms_vrr@flip-basic:
> 
>       o shard-rkl: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-7/igt@kms_vrr@flip-basic.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555>)
>   *
> 
>     igt@kms_writeback@writeback-check-output:
> 
>       o shard-glk: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-glk5/igt@kms_writeback@writeback-
>         check-output.html> (i915#2437 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/2437>)
>   *
> 
>     igt@kms_writeback@writeback-fb-id-xrgb2101010:
> 
>       o shard-tglu: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-10/
>         igt@kms_writeback@writeback-fb-id-xrgb2101010.html> (i915#2437
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2437> /
>         i915#9412 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9412>) +1 other test skip
>   *
> 
>     igt@perf@global-sseu-config:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/igt@perf@global-sseu-
>         config.html> (i915#7387 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/7387>)
>   *
> 
>     igt@perf@non-zero-reason:
> 
>       o shard-dg2-9: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/igt@perf@non-zero-
>         reason.html> (i915#9100 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9100>) +1 other test fail
>   *
> 
>     igt@perf_pmu@module-unload:
> 
>       o shard-tglu: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-10/igt@perf_pmu@module-
>         unload.html> (i915#14433 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14433>)
>   *
> 
>     igt@perf_pmu@rc6-all-gts:
> 
>       o shard-tglu-1: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-1/igt@perf_pmu@rc6-all-
>         gts.html> (i915#8516 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/8516>)
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/igt@perf_pmu@rc6-all-
>         gts.html> (i915#8516 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/8516>)
>   *
> 
>     igt@prime_vgem@basic-gtt:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-6/igt@prime_vgem@basic-
>         gtt.html> (i915#3708 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3708> / i915#4077 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077>)
>   *
> 
>     igt@prime_vgem@basic-read:
> 
>       o shard-dg2: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-dg2-6/igt@prime_vgem@basic-
>         read.html> (i915#3291 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3291> / i915#3708 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708>)
>   *
> 
>     igt@sriov_basic@bind-unbind-vf:
> 
>       o shard-dg2-9: NOTRUN -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg2-9/igt@sriov_basic@bind-
>         unbind-vf.html> (i915#9917 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9917>)
>   *
> 
>     igt@sriov_basic@bind-unbind-vf@vf-1:
> 
>       o shard-tglu-1: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-1/igt@sriov_basic@bind-
>         unbind-vf@vf-1.html> (i915#12910 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910>) +9 other
>         tests fail
>   *
> 
>     igt@sriov_basic@enable-vfs-bind-unbind-each-numvfs-all:
> 
>       o shard-tglu: NOTRUN -> FAIL <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-tglu-10/igt@sriov_basic@enable-
>         vfs-bind-unbind-each-numvfs-all.html> (i915#12910 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12910>)
>   *
> 
>     igt@sysfs_heartbeat_interval@mixed@vecs0:
> 
>       o shard-rkl: NOTRUN -> DMESG-WARN <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v4/shard-rkl-7/
>         igt@sysfs_heartbeat_interval@mixed@vecs0.html> (i915#12964
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964>)
>         +12 other tests dmesg-warn
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@gem_workarounds@suspend-resume-fd:
> 
>       o shard-rkl: INCOMPLETE <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-3/igt@gem_workarounds@suspend-resume-
>         fd.html> (i915#13356 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/13356>) -> PASS <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v4/shard-rkl-7/
>         igt@gem_workarounds@suspend-resume-fd.html> +2 other tests pass
>   *
> 
>     igt@i915_module_load@reload-no-display:
> 
>       o shard-snb: DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-snb4/igt@i915_module_load@reload-no-
>         display.html> (i915#14545 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14545>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-snb1/
>         igt@i915_module_load@reload-no-display.html>
>   *
> 
>     igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_ccs@crc-primary-suspend-y-
>         tiled-gen12-rc-ccs-cc.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-4/igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-
>         ccs-cc.html> +25 other tests pass
>   *
> 
>     igt@kms_color@degamma:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_color@degamma.html> (i915#12655
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/12655> / i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/
>         igt@kms_color@degamma.html> +1 other test pass
>   *
> 
>     igt@kms_cursor_crc@cursor-random-256x85:
> 
>       o shard-rkl: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@kms_cursor_crc@cursor-
>         random-256x85.html> (i915#13566 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/13566>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-8/
>         igt@kms_cursor_crc@cursor-random-256x85.html>
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
> 
>       o shard-rkl: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-3/igt@kms_cursor_legacy@flip-vs-cursor-
>         atomic-transitions-varying-size.html> (i915#2346 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-
>         transitions-varying-size.html>
>   *
> 
>     igt@kms_flip@flip-vs-absolute-wf_vblank:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_flip@flip-vs-absolute-
>         wf_vblank.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544> / i915#3637 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3637>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-4/igt@kms_flip@flip-vs-absolute-wf_vblank.html> +3
>         other tests pass
>   *
> 
>     igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1:
> 
>       o shard-tglu: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-tglu-8/igt@kms_flip@wf_vblank-ts-check@a-
>         hdmi-a1.html> (i915#14600 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14600>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-tglu-2/
>         igt@kms_flip@wf_vblank-ts-check@a-hdmi-a1.html> +1 other test pass
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-
>     upscaling:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-
>         ytile-to-32bpp-ytilegen12rcccs-upscaling.html> (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#3555 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3555>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/
>         igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-
>         ytilegen12rcccs-upscaling.html> +1 other test pass
>   *
> 
>     igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_frontbuffer_tracking@fbc-
>         rgb565-draw-render.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#1849 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/1849> / i915#5354 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/5354>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/
>         igt@kms_frontbuffer_tracking@fbc-rgb565-draw-render.html> +3
>         other tests pass
>   *
> 
>     igt@kms_invalid_mode@bad-vsync-start:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_invalid_mode@bad-vsync-
>         start.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> /
>         i915#8826 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8826>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-rkl-4/igt@kms_invalid_mode@bad-vsync-
>         start.html>
>   *
> 
>     igt@kms_plane@plane-position-hole:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_plane@plane-position-hole.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#8825 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8825>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/
>         igt@kms_plane@plane-position-hole.html>
>   *
> 
>     igt@kms_plane_alpha_blend@alpha-transparent-fb:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_plane_alpha_blend@alpha-
>         transparent-fb.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#7294 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/7294>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-rkl-4/igt@kms_plane_alpha_blend@alpha-
>         transparent-fb.html>
>   *
> 
>     igt@kms_plane_scaling@invalid-parameters:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_plane_scaling@invalid-
>         parameters.html> (i915#14544 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/14544> / i915#8152 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-4/igt@kms_plane_scaling@invalid-parameters.html>
>   *
> 
>     igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-75:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-
>         factor-0-25-downscale-factor-0-75.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247> /
>         i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#3555 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3555> / i915#6953 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6953> /
>         i915#8152 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8152>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-rkl-4/igt@kms_plane_scaling@planes-
>         upscale-factor-0-25-downscale-factor-0-75.html> +1 other test pass
>   *
> 
>     igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-
>     factor-0-75@pipe-a:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-
>         factor-0-25-downscale-factor-0-75@pipe-a.html> (i915#12247
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/12247> / i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/
>         igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-
>         factor-0-75@pipe-a.html> +1 other test pass
>   *
> 
>     igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-
>     factor-0-75@pipe-b:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_plane_scaling@planes-upscale-
>         factor-0-25-downscale-factor-0-75@pipe-b.html> (i915#12247
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/12247> / i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544> / i915#8152 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8152>) -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-4/igt@kms_plane_scaling@planes-upscale-factor-0-25-
>         downscale-factor-0-75@pipe-b.html> +1 other test pass
>   *
> 
>     igt@kms_vblank@wait-forked-busy-hang:
> 
>       o shard-rkl: DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-4/igt@kms_vblank@wait-forked-busy-
>         hang.html> (i915#12964 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/12964>) -> PASS <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v4/shard-rkl-8/igt@kms_vblank@wait-
>         forked-busy-hang.html> +5 other tests pass
>   *
> 
>     igt@perf_pmu@busy-double-start@vecs1:
> 
>       o shard-dg2: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-dg2-1/igt@perf_pmu@busy-double-
>         start@vecs1.html> (i915#4349 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/4349>) -> PASS <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg2-6/
>         igt@perf_pmu@busy-double-start@vecs1.html> +4 other tests pass
>   *
> 
>     igt@perf_pmu@most-busy-idle-check-all:
> 
>       o shard-rkl: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@perf_pmu@most-busy-idle-check-
>         all.html> (i915#4349 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/4349>) -> PASS <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@perf_pmu@most-
>         busy-idle-check-all.html> +1 other test pass
> 
> 
>         Warnings
> 
>   *
> 
>     igt@api_intel_bb@object-reloc-keep-cache:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@api_intel_bb@object-reloc-keep-
>         cache.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544> / i915#8411 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8411>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-4/igt@api_intel_bb@object-reloc-keep-cache.html>
>         (i915#8411 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8411>)
>   *
> 
>     igt@gem_bad_reloc@negative-reloc-lut:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@gem_bad_reloc@negative-reloc-
>         lut.html> (i915#3281 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/3281>) -> SKIP <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v4/shard-rkl-6/
>         igt@gem_bad_reloc@negative-reloc-lut.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#3281 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3281>) +8 other tests skip
>   *
> 
>     igt@gem_ccs@ctrl-surf-copy-new-ctx:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@gem_ccs@ctrl-surf-copy-new-
>         ctx.html> (i915#9323 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/9323>) -> SKIP <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v4/shard-rkl-6/igt@gem_ccs@ctrl-
>         surf-copy-new-ctx.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#9323 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9323>)
>   *
> 
>     igt@gem_close_race@multigpu-basic-threads:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@gem_close_race@multigpu-basic-
>         threads.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544> / i915#7697 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/7697>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-4/igt@gem_close_race@multigpu-basic-threads.html>
>         (i915#7697 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/7697>)
>   *
> 
>     igt@gem_ctx_sseu@engines:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-5/igt@gem_ctx_sseu@engines.html>
>         (i915#280 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/280>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-rkl-6/igt@gem_ctx_sseu@engines.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#280 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/280>)
>   *
> 
>     igt@gem_exec_balancer@parallel-balancer:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@gem_exec_balancer@parallel-
>         balancer.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544> / i915#4525 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4525>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-4/igt@gem_exec_balancer@parallel-balancer.html>
>         (i915#4525 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4525>) +1 other test skip
>   *
> 
>     igt@gem_exec_balancer@parallel-keep-submit-fence:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-5/igt@gem_exec_balancer@parallel-keep-
>         submit-fence.html> (i915#4525 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/4525>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/
>         igt@gem_exec_balancer@parallel-keep-submit-fence.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#4525 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4525>) +1 other test skip
>   *
> 
>     igt@gem_exec_reloc@basic-gtt-cpu-active:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@gem_exec_reloc@basic-gtt-cpu-
>         active.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544> / i915#3281 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3281>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-4/igt@gem_exec_reloc@basic-gtt-cpu-active.html>
>         (i915#3281 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3281>) +4 other tests skip
>   *
> 
>     igt@gem_exec_schedule@semaphore-power:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@gem_exec_schedule@semaphore-
>         power.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544> / i915#7276 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/7276>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-4/igt@gem_exec_schedule@semaphore-power.html>
>         (i915#7276 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/7276>)
>   *
> 
>     igt@gem_lmem_evict@dontneed-evict-race:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@gem_lmem_evict@dontneed-evict-
>         race.html> (i915#4613 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/4613> / i915#7582 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-6/igt@gem_lmem_evict@dontneed-evict-race.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#4613 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4613> / i915#7582 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/7582>)
>   *
> 
>     igt@gem_lmem_swapping@parallel-multi:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@gem_lmem_swapping@parallel-
>         multi.html> (i915#4613 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/4613>) -> SKIP <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v4/shard-rkl-6/
>         igt@gem_lmem_swapping@parallel-multi.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#4613 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4613>)
>   *
> 
>     igt@gem_lmem_swapping@parallel-random-verify-ccs:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@gem_lmem_swapping@parallel-random-
>         verify-ccs.html> (i915#14544 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/14544> / i915#4613 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-4/igt@gem_lmem_swapping@parallel-random-verify-
>         ccs.html> (i915#4613 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/4613>) +1 other test skip
>   *
> 
>     igt@gem_media_vme:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-5/igt@gem_media_vme.html> (i915#284
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/284>) -
>          > SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-rkl-6/igt@gem_media_vme.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#284 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/284>)
>   *
> 
>     igt@gem_partial_pwrite_pread@reads-uncached:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-5/igt@gem_partial_pwrite_pread@reads-
>         uncached.html> (i915#3282 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3282>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/
>         igt@gem_partial_pwrite_pread@reads-uncached.html> (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#3282 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3282>) +1 other test skip
>   *
> 
>     igt@gem_pxp@hw-rejects-pxp-buffer:
> 
>       o shard-rkl: TIMEOUT <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-4/igt@gem_pxp@hw-rejects-pxp-buffer.html>
>         (i915#12917 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/12917> / i915#12964 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/12964>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-8/
>         igt@gem_pxp@hw-rejects-pxp-buffer.html> (i915#13717 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/13717>)
>   *
> 
>     igt@gem_readwrite@beyond-eob:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@gem_readwrite@beyond-eob.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#3282 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3282>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/
>         igt@gem_readwrite@beyond-eob.html> (i915#3282 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3282>) +2 other
>         tests skip
>   *
> 
>     igt@gem_set_tiling_vs_blt@tiled-to-untiled:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-5/igt@gem_set_tiling_vs_blt@tiled-to-
>         untiled.html> (i915#8411 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8411>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/
>         igt@gem_set_tiling_vs_blt@tiled-to-untiled.html> (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#8411 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8411>) +1 other test skip
>   *
> 
>     igt@gem_userptr_blits@create-destroy-unsync:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@gem_userptr_blits@create-destroy-
>         unsync.html> (i915#3297 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3297>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/
>         igt@gem_userptr_blits@create-destroy-unsync.html> (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#3297 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3297>)
>   *
> 
>     igt@gen9_exec_parse@allowed-single:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@gen9_exec_parse@allowed-
>         single.html> (i915#2527 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2527>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/
>         igt@gen9_exec_parse@allowed-single.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#2527 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/2527>) +1 other test skip
>   *
> 
>     igt@gen9_exec_parse@bb-start-far:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@gen9_exec_parse@bb-start-far.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#2527 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2527>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/
>         igt@gen9_exec_parse@bb-start-far.html> (i915#2527 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2527>) +1 other
>         test skip
>   *
> 
>     igt@i915_pm_freq_api@freq-reset-multiple:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@i915_pm_freq_api@freq-reset-
>         multiple.html> (i915#8399 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8399>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/
>         igt@i915_pm_freq_api@freq-reset-multiple.html> (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#8399 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8399>) +1 other test skip
>   *
> 
>     igt@i915_pm_rpm@reg-read-ioctl:
> 
>       o shard-rkl: DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@i915_pm_rpm@reg-read-ioctl.html>
>         (i915#12964 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/12964>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-4/igt@i915_pm_rpm@reg-read-
>         ioctl.html> (i915#13328 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/13328>)
>   *
> 
>     igt@i915_power@sanity:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@i915_power@sanity.html> (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#7984 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/7984>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/
>         igt@i915_power@sanity.html> (i915#7984 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/7984>)
>   *
> 
>     igt@kms_big_fb@4-tiled-16bpp-rotate-0:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_big_fb@4-tiled-16bpp-
>         rotate-0.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/
>         igt@kms_big_fb@4-tiled-16bpp-rotate-0.html> (i915#5286 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/5286>) +2 other
>         tests skip
>   *
> 
>     igt@kms_big_fb@4-tiled-addfb-size-overflow:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-5/igt@kms_big_fb@4-tiled-addfb-size-
>         overflow.html> (i915#5286 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/5286>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/
>         igt@kms_big_fb@4-tiled-addfb-size-overflow.html> (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
>         +2 other tests skip
>   *
> 
>     igt@kms_big_fb@linear-64bpp-rotate-90:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-5/igt@kms_big_fb@linear-64bpp-
>         rotate-90.html> (i915#3638 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3638>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/
>         igt@kms_big_fb@linear-64bpp-rotate-90.html> (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
>         +2 other tests skip
>   *
> 
>     igt@kms_big_fb@x-tiled-8bpp-rotate-90:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_big_fb@x-tiled-8bpp-
>         rotate-90.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/
>         igt@kms_big_fb@x-tiled-8bpp-rotate-90.html> (i915#3638 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3638>) +1 other
>         test skip
>   *
> 
>     igt@kms_big_fb@yf-tiled-addfb-size-overflow:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_big_fb@yf-tiled-addfb-size-
>         overflow.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/
>         igt@kms_big_fb@yf-tiled-addfb-size-overflow.html> +9 other tests
>         skip
>   *
> 
>     igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_ccs@bad-rotation-90-4-tiled-
>         bmg-ccs.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/
>         igt@kms_ccs@bad-rotation-90-4-tiled-bmg-ccs.html> (i915#12313
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12313>)
>   *
> 
>     igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@kms_ccs@ccs-on-another-bo-y-tiled-
>         ccs.html> (i915#14098 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/14098> / i915#6095 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-6/igt@kms_ccs@ccs-on-another-bo-y-tiled-ccs.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544>) +5 other tests skip
>   *
> 
>     igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-b-hdmi-a-2:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-8/igt@kms_ccs@crc-primary-rotation-180-
>         yf-tiled-ccs@pipe-b-hdmi-a-2.html> (i915#6095 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-5/igt@kms_ccs@crc-primary-rotation-180-yf-tiled-
>         ccs@pipe-b-hdmi-a-2.html> (i915#14098 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14098> /
>         i915#6095 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/6095>) +1 other test skip
>   *
> 
>     igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@kms_ccs@crc-primary-suspend-4-
>         tiled-bmg-ccs.html> (i915#12805 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/12805>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/
>         igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544>)
>   *
> 
>     igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-hdmi-a-4:
> 
>       o shard-dg1: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-dg1-18/igt@kms_ccs@missing-ccs-buffer-yf-
>         tiled-ccs@pipe-a-hdmi-a-4.html> (i915#6095 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-dg1-16/igt@kms_ccs@missing-ccs-buffer-yf-tiled-ccs@pipe-a-
>         hdmi-a-4.html> (i915#4423 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4423> / i915#6095 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/6095>) +1 other
>         test skip
>   *
> 
>     igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_ccs@random-ccs-data-4-tiled-
>         mtl-mc-ccs.html> (i915#14544 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/14544>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/
>         igt@kms_ccs@random-ccs-data-4-tiled-mtl-mc-ccs.html> (i915#14098
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14098> / i915#6095 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/6095>) +5 other tests skip
>   *
> 
>     igt@kms_chamelium_frames@hdmi-cmp-planar-formats:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@kms_chamelium_frames@hdmi-cmp-
>         planar-formats.html> (i915#11151 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151> /
>         i915#7828 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/7828>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-rkl-6/igt@kms_chamelium_frames@hdmi-
>         cmp-planar-formats.html> (i915#11151 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151> /
>         i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#7828 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/7828>) +4 other tests skip
>   *
> 
>     igt@kms_chamelium_frames@hdmi-crc-fast:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_chamelium_frames@hdmi-crc-
>         fast.html> (i915#11151 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/11151> / i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#7828 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/7828>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-rkl-4/igt@kms_chamelium_frames@hdmi-
>         crc-fast.html> (i915#11151 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/11151> / i915#7828 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/7828>) +2 other
>         tests skip
>   *
> 
>     igt@kms_content_protection@content-type-change:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-5/igt@kms_content_protection@content-
>         type-change.html> (i915#9424 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/9424>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/
>         igt@kms_content_protection@content-type-change.html> (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
>   *
> 
>     igt@kms_content_protection@dp-mst-type-1:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_content_protection@dp-mst-
>         type-1.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/
>         igt@kms_content_protection@dp-mst-type-1.html> (i915#3116
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3116>)
>         +1 other test skip
>   *
> 
>     igt@kms_cursor_crc@cursor-offscreen-512x512:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@kms_cursor_crc@cursor-
>         offscreen-512x512.html> (i915#13049 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-6/igt@kms_cursor_crc@cursor-offscreen-512x512.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544>) +1 other test skip
>   *
> 
>     igt@kms_cursor_crc@cursor-random-max-size:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_cursor_crc@cursor-random-max-
>         size.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/14544>) -> SKIP <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v4/shard-rkl-4/
>         igt@kms_cursor_crc@cursor-random-max-size.html> (i915#3555
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>)
>         +1 other test skip
>   *
> 
>     igt@kms_cursor_crc@cursor-rapid-movement-512x512:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_cursor_crc@cursor-rapid-
>         movement-512x512.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-4/igt@kms_cursor_crc@cursor-rapid-
>         movement-512x512.html> (i915#13049 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/13049>)
>   *
> 
>     igt@kms_cursor_crc@cursor-sliding-256x85:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_cursor_crc@cursor-
>         sliding-256x85.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-4/igt@kms_cursor_crc@cursor-sliding-256x85.html>
>         (i915#13566 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/13566>)
>   *
> 
>     igt@kms_cursor_edge_walk@256x256-right-edge:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_cursor_edge_walk@256x256-right-
>         edge.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/14544>) -> DMESG-WARN <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/
>         igt@kms_cursor_edge_walk@256x256-right-edge.html> (i915#12964
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964>)
>         +2 other tests dmesg-warn
>   *
> 
>     igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
> 
>       o shard-dg1: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-dg1-15/igt@kms_cursor_legacy@2x-flip-vs-
>         cursor-legacy.html> -> SKIP <https://intel-gfx-ci.01.org/tree/
>         drm-tip/Patchwork_154423v4/shard-dg1-15/
>         igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html> (i915#4423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>)
>   *
> 
>     igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@kms_cursor_legacy@basic-busy-flip-
>         before-cursor-varying-size.html> (i915#4103 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-6/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-
>         varying-size.html> (i915#14544 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/14544>)
>   *
> 
>     igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-5/igt@kms_cursor_legacy@cursorb-vs-flipb-
>         atomic.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-rkl-6/igt@kms_cursor_legacy@cursorb-vs-
>         flipb-atomic.html> (i915#14544 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/14544>) +10 other tests skip
>   *
> 
>     igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transitions:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_cursor_legacy@short-busy-flip-
>         before-cursor-atomic-transitions.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-4/igt@kms_cursor_legacy@short-busy-flip-before-cursor-
>         atomic-transitions.html> (i915#4103 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103>)
>   *
> 
>     igt@kms_display_modes@extended-mode-basic:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@kms_display_modes@extended-mode-
>         basic.html> (i915#13691 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/13691>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/
>         igt@kms_display_modes@extended-mode-basic.html> (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
>   *
> 
>     igt@kms_dsc@dsc-with-bpc-formats:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_dsc@dsc-with-bpc-formats.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-4/igt@kms_dsc@dsc-with-bpc-
>         formats.html> (i915#3555 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3555> / i915#3840 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3840>) +1 other
>         test skip
>   *
> 
>     igt@kms_feature_discovery@display-4x:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-5/
>         igt@kms_feature_discovery@display-4x.html> (i915#1839 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-6/igt@kms_feature_discovery@display-4x.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#1839 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/1839>)
>   *
> 
>     igt@kms_flip@2x-absolute-wf_vblank-interruptible:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-5/igt@kms_flip@2x-absolute-wf_vblank-
>         interruptible.html> (i915#9934 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/9934>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/
>         igt@kms_flip@2x-absolute-wf_vblank-interruptible.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#9934 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9934>)
>   *
> 
>     igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_flip@2x-blocking-absolute-
>         wf_vblank-interruptible.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#9934 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9934>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-rkl-4/igt@kms_flip@2x-blocking-
>         absolute-wf_vblank-interruptible.html> (i915#9934 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9934>) +1 other
>         test skip
>   *
> 
>     igt@kms_flip@flip-vs-fences:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_flip@flip-vs-fences.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#3637 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3637>) -> DMESG-WARN <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/
>         igt@kms_flip@flip-vs-fences.html> (i915#12964 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-
>     downscaling:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/
>         igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-
>         downscaling.html> (i915#2672 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/2672> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-4tile-
>         to-32bpp-4tiledg2rcccs-downscaling.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555>) +2 other tests skip
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-downscaling:
> 
>       o shard-dg1: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-
>         yftile-to-16bpp-yftile-downscaling.html> (i915#2672 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2672> /
>         i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-dg1-13/
>         igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-
>         downscaling.html> (i915#2672 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/2672> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> /
>         i915#4423 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4423>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-
>     downscaling@pipe-a-valid-mode:
> 
>       o shard-dg1: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-dg1-18/igt@kms_flip_scaled_crc@flip-64bpp-
>         yftile-to-16bpp-yftile-downscaling@pipe-a-valid-mode.html>
>         (i915#2587 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/2587> / i915#2672 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2672>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg1-13/
>         igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-
>         downscaling@pipe-a-valid-mode.html> (i915#2587 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/2587> /
>         i915#2672 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/2672> / i915#4423 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4423>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_flip_scaled_crc@flip-64bpp-
>         yftile-to-16bpp-yftile-upscaling.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-rkl-4/
>         igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-
>         upscaling.html> (i915#2672 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2672> / i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555>) +1 other
>         test skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-mmap-cpu:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-5/igt@kms_frontbuffer_tracking@fbcpsr-1p-
>         primscrn-cur-indfb-draw-mmap-cpu.html> (i915#3023 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3023>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-
>         indfb-draw-mmap-cpu.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#1849 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/1849> / i915#5354 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/5354>) +9 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-1p-
>         primscrn-pri-shrfb-draw-mmap-cpu.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#1849 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/1849> / i915#5354 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/5354>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/
>         igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-shrfb-draw-
>         mmap-cpu.html> (i915#3023 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3023>) +9 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@kms_frontbuffer_tracking@fbcpsr-2p-
>         scndscrn-shrfb-pgflip-blt.html> (i915#1825 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/1825>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-
>         shrfb-pgflip-blt.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#1849 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/1849> / i915#5354 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/5354>) +14 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-blt:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-
>         scndscrn-spr-indfb-draw-blt.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#1849 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/1849> / i915#5354 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/5354>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/
>         igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-
>         blt.html> (i915#1825 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/1825>) +20 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-
>         offscren-pri-shrfb-draw-pwrite.html> (i915#10433 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/10433> /
>         i915#3458 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3458>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-dg2-5/
>         igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-
>         pwrite.html> (i915#3458 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3458>) +2 other tests skip
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt:
> 
>       o shard-dg2: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-dg2-1/igt@kms_frontbuffer_tracking@psr-1p-
>         primscrn-shrfb-plflip-blt.html> (i915#3458 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-
>         plflip-blt.html> (i915#10433 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/10433> / i915#3458 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>)
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-mmap-gtt:
> 
>       o shard-dg1: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-1p-
>         primscrn-spr-indfb-draw-mmap-gtt.html> (i915#8708 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8708>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-
>         indfb-draw-mmap-gtt.html> (i915#4423 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423> /
>         i915#8708 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/8708>)
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
> 
>       o shard-dg1: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-dg1-15/igt@kms_frontbuffer_tracking@psr-
>         rgb565-draw-render.html> (i915#3458 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3458>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-dg1-15/igt@kms_frontbuffer_tracking@psr-rgb565-draw-
>         render.html> (i915#3458 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3458> / i915#4423 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423>)
>   *
> 
>     igt@kms_hdr@static-toggle:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_hdr@static-toggle.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-4/igt@kms_hdr@static-
>         toggle.html> (i915#3555 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/3555> / i915#8228 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8228>) +1 other
>         test skip
>   *
> 
>     igt@kms_hdr@static-toggle-suspend:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-5/igt@kms_hdr@static-toggle-suspend.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555> / i915#8228 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8228>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/
>         igt@kms_hdr@static-toggle-suspend.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>) +1 other
>         test skip
>   *
> 
>     igt@kms_joiner@switch-modeset-ultra-joiner-big-joiner:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_joiner@switch-modeset-ultra-
>         joiner-big-joiner.html> (i915#13522 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522> /
>         i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-4/igt@kms_joiner@switch-
>         modeset-ultra-joiner-big-joiner.html> (i915#13522 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522>)
>   *
> 
>     igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@kms_multipipe_modeset@basic-max-
>         pipe-crc-check.html> (i915#4070 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/4070> / i915#4816 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4816>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-7/igt@kms_multipipe_modeset@basic-max-pipe-crc-
>         check.html> (i915#4816 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/4816>)
>   *
> 
>     igt@kms_plane_lowres@tiling-4:
> 
>       o shard-dg1: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-dg1-18/igt@kms_plane_lowres@tiling-4.html>
>         (i915#3555 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3555>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-dg1-16/
>         igt@kms_plane_lowres@tiling-4.html> (i915#3555 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555> /
>         i915#4423 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/4423>)
>   *
> 
>     igt@kms_plane_multiple@2x-tiling-none:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_plane_multiple@2x-tiling-
>         none.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/14544>) -> SKIP <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v4/shard-rkl-4/
>         igt@kms_plane_multiple@2x-tiling-none.html> (i915#13958
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13958>)
>   *
> 
>     igt@kms_plane_multiple@tiling-4:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_plane_multiple@tiling-4.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-4/
>         igt@kms_plane_multiple@tiling-4.html> (i915#14259 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14259>)
>   *
> 
>     igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-a:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-
>         factor-0-75-with-rotation@pipe-a.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-
>         with-rotation@pipe-a.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247> /
>         i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544>)
>   *
> 
>     igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pipe-b:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@kms_plane_scaling@plane-downscale-
>         factor-0-75-with-rotation@pipe-b.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-6/igt@kms_plane_scaling@plane-downscale-factor-0-75-
>         with-rotation@pipe-b.html> (i915#12247 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12247> /
>         i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#8152 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8152>) +1 other test skip
>   *
> 
>     igt@kms_pm_dc@dc5-psr:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-5/igt@kms_pm_dc@dc5-psr.html> (i915#9685
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9685>)
>         -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-rkl-6/igt@kms_pm_dc@dc5-psr.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#9685 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9685>) +1 other test skip
>   *
> 
>     igt@kms_pm_dc@dc6-dpms:
> 
>       o shard-rkl: FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-4/igt@kms_pm_dc@dc6-dpms.html> (i915#9295
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9295>)
>         -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-rkl-8/igt@kms_pm_dc@dc6-dpms.html>
>         (i915#3361 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3361>)
>   *
> 
>     igt@kms_pm_dc@dc9-dpms:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_pm_dc@dc9-dpms.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#4281 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4281>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/
>         igt@kms_pm_dc@dc9-dpms.html> (i915#4281 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/4281>)
>   *
> 
>     igt@kms_pm_lpsp@kms-lpsp:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-3/igt@kms_pm_lpsp@kms-lpsp.html>
>         (i915#9340 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9340>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-rkl-7/igt@kms_pm_lpsp@kms-lpsp.html>
>         (i915#3828 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/3828>)
>   *
> 
>     igt@kms_pm_rpm@modeset-lpsp-stress-no-wait:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_pm_rpm@modeset-lpsp-stress-no-
>         wait.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/14544> / i915#15073 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073>) ->
>         DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-rkl-4/igt@kms_pm_rpm@modeset-lpsp-
>         stress-no-wait.html> (i915#12964 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964>)
>   *
> 
>     igt@kms_pm_rpm@modeset-non-lpsp-stress:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_pm_rpm@modeset-non-lpsp-
>         stress.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544> / i915#15073 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/15073>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-4/igt@kms_pm_rpm@modeset-non-lpsp-stress.html>
>         (i915#15073 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/15073>)
>   *
> 
>     igt@kms_prime@basic-modeset-hybrid:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-5/igt@kms_prime@basic-modeset-
>         hybrid.html> (i915#6524 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/6524>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/
>         igt@kms_prime@basic-modeset-hybrid.html> (i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#6524 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/6524>)
>   *
> 
>     igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-exceed-fully-sf:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-5/igt@kms_psr2_sf@fbc-pr-cursor-plane-
>         move-continuous-exceed-fully-sf.html> (i915#11520 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-6/igt@kms_psr2_sf@fbc-pr-cursor-plane-move-continuous-
>         exceed-fully-sf.html> (i915#11520 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520> /
>         i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544>) +3 other tests skip
>   *
> 
>     igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_psr2_sf@fbc-psr2-overlay-plane-
>         move-continuous-exceed-sf.html> (i915#11520 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520> /
>         i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-
>         tip/Patchwork_154423v4/shard-rkl-4/igt@kms_psr2_sf@fbc-psr2-
>         overlay-plane-move-continuous-exceed-sf.html> (i915#11520
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11520>)
>         +3 other tests skip
>   *
> 
>     igt@kms_psr2_su@frontbuffer-xrgb8888:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_psr2_su@frontbuffer-
>         xrgb8888.html> (i915#14544 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/14544> / i915#9683 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-rkl-4/igt@kms_psr2_su@frontbuffer-xrgb8888.html>
>         (i915#9683 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9683>)
>   *
> 
>     igt@kms_psr2_su@page_flip-p010:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-5/igt@kms_psr2_su@page_flip-p010.html>
>         (i915#9683 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9683>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-rkl-6/igt@kms_psr2_su@page_flip-
>         p010.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/14544> / i915#9683 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9683>)
>   *
> 
>     igt@kms_psr@fbc-psr-primary-page-flip:
> 
>       o shard-dg1: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-dg1-18/igt@kms_psr@fbc-psr-primary-page-
>         flip.html> (i915#1072 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/1072> / i915#9732 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_154423v4/
>         shard-dg1-16/igt@kms_psr@fbc-psr-primary-page-flip.html>
>         (i915#1072 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/1072> / i915#4423 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/4423> / i915#9732 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>)
>   *
> 
>     igt@kms_psr@fbc-psr2-sprite-render:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_psr@fbc-psr2-sprite-
>         render.html> (i915#1072 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/1072> / i915#14544 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544> /
>         i915#9732 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9732>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         Patchwork_154423v4/shard-rkl-4/igt@kms_psr@fbc-psr2-sprite-
>         render.html> (i915#1072 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/1072> / i915#9732 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732>) +9 other
>         tests skip
>   *
> 
>     igt@kms_psr@psr-cursor-plane-move:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@kms_psr@psr-cursor-plane-move.html>
>         (i915#1072 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/1072> / i915#9732 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9732>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/
>         igt@kms_psr@psr-cursor-plane-move.html> (i915#1072 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> /
>         i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#9732 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9732>) +8 other tests skip
>   *
> 
>     igt@kms_rotation_crc@primary-4-tiled-reflect-x-0:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@kms_rotation_crc@primary-4-tiled-
>         reflect-x-0.html> (i915#5289 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/5289>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/
>         igt@kms_rotation_crc@primary-4-tiled-reflect-x-0.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544>)
>   *
> 
>     igt@kms_scaling_modes@scaling-mode-full-aspect:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-5/igt@kms_scaling_modes@scaling-mode-
>         full-aspect.html> (i915#3555 <https://gitlab.freedesktop.org/
>         drm/i915/kernel/-/issues/3555>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/
>         igt@kms_scaling_modes@scaling-mode-full-aspect.html> (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
>   *
> 
>     igt@kms_tiled_display@basic-test-pattern:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@kms_tiled_display@basic-test-
>         pattern.html> (i915#8623 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8623>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/
>         igt@kms_tiled_display@basic-test-pattern.html> (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14544>)
>   *
> 
>     igt@kms_vrr@seamless-rr-switch-drrs:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@kms_vrr@seamless-rr-switch-
>         drrs.html> (i915#14544 <https://gitlab.freedesktop.org/drm/i915/
>         kernel/-/issues/14544>) -> SKIP <https://intel-gfx-ci.01.org/
>         tree/drm-tip/Patchwork_154423v4/shard-rkl-4/
>         igt@kms_vrr@seamless-rr-switch-drrs.html> (i915#9906 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9906>)
>   *
> 
>     igt@kms_vrr@seamless-rr-switch-virtual:
> 
>       o shard-dg1: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-dg1-15/igt@kms_vrr@seamless-rr-switch-
>         virtual.html> (i915#9906 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9906>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-dg1-15/
>         igt@kms_vrr@seamless-rr-switch-virtual.html> (i915#4423
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4423> /
>         i915#9906 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/9906>)
>   *
> 
>     igt@kms_writeback@writeback-check-output:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-2/igt@kms_writeback@writeback-check-
>         output.html> (i915#2437 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2437>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-6/
>         igt@kms_writeback@writeback-check-output.html> (i915#14544
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#2437 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/2437>)
>   *
> 
>     igt@perf_pmu@rc6-all-gts:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@perf_pmu@rc6-all-gts.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#8516 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/8516>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/
>         igt@perf_pmu@rc6-all-gts.html> (i915#8516 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/8516>)
>   *
> 
>     igt@sriov_basic@bind-unbind-vf:
> 
>       o shard-rkl: SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/
>         CI_DRM_17323/shard-rkl-6/igt@sriov_basic@bind-unbind-vf.html>
>         (i915#14544 <https://gitlab.freedesktop.org/drm/i915/kernel/-/
>         issues/14544> / i915#9917 <https://gitlab.freedesktop.org/drm/
>         i915/kernel/-/issues/9917>) -> SKIP <https://intel-gfx-
>         ci.01.org/tree/drm-tip/Patchwork_154423v4/shard-rkl-4/
>         igt@sriov_basic@bind-unbind-vf.html> (i915#9917 <https://
>         gitlab.freedesktop.org/drm/i915/kernel/-/issues/9917>)
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_17323 -> Patchwork_154423v4
> 
> CI-20190529: 20190529
> CI_DRM_17323: 90c02675d5fedea7f1d28c4e5c45f958de9bfee4 @ git:// 
> anongit.freedesktop.org/gfx-ci/linux
> IGT_8575: 7efc313da1339df43a1b11bba57fef6c1257e65f @ https:// 
> gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_154423v4: 90c02675d5fedea7f1d28c4e5c45f958de9bfee4 @ git:// 
> anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git:// 
> anongit.freedesktop.org/piglit
> 

