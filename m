Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 040369E4D17
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 05:48:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF18310E11B;
	Thu,  5 Dec 2024 04:48:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lJHTKkHN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFBA310E021;
 Thu,  5 Dec 2024 04:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733374104; x=1764910104;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=S39Bjyd0hLOZWl3o4JzYppv96mge3HkLV4vCEpLn/28=;
 b=lJHTKkHNAwrb4lbhj4g83wMS2ZNUHehqtR+NFBgFKf9bob3bKxtLDdZy
 nrX0nLLZSNr57GTGSHqBiHckEhdCnHnp474gkgWtEvNRZbBGGCUikfxZg
 yZOWejjka+2SpPZgsgdDTkYjWKmhqMmmLu7HTjp7Y5s78+HYIyCVD+BVS
 mg0VZDZUJFl/VS1C0JqvFG/06+Gd35yvoNumWMMYxGWzJJd2DS3izmnlX
 FhNm3LRDFxGRzh87LLsj9f4ICFP/kK2J6CM3iGaMeQ2Y2rxeYdzFMdOJk
 mJZ5EihG4dbGGSFSEJLwhr1F1lYdd4oLeVeKieCbMLUgOYKbugVDDieji g==;
X-CSE-ConnectionGUID: +51hsFh6QFOBsHGq1DfQYQ==
X-CSE-MsgGUID: +xZIpvA8TjSvIopkZCRIhA==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="44273975"
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="44273975"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 20:48:23 -0800
X-CSE-ConnectionGUID: UDHK8V5yRkavIcMUKTQ/sg==
X-CSE-MsgGUID: J4OFcB/9SOGe2RKffg0WTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="124794514"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2024 20:48:23 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Dec 2024 20:48:22 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Dec 2024 20:48:22 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Dec 2024 20:48:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Qbkqj5XTYRVMpcEtu/sGt+Yqt3a7VhWdrGS9OvQL5uFOnVXf/6gWMqGZE9E1pzvoy6VLs7MeVY8E1Bp27PBNiQDfrHkK6GIF64qWGgI6b56LfsSserx/hs9TtLr1XWrFwOPx48fuoNIzwzkLHuw9ejHhIEOLVlQbxtZJPN2NbUJE6SgJWDHWy3vqL7FEDELvKdrEIeFCZmPwWVNu+LD8Rh5ojyKwzblSgS5hJiuRhWszEQmuwoCu1nsWW8RtgPr8GW/BHnelahPIvWCmsbwp4unZLBBi0MCp6A+RsMruxj/IGPTHCBsvhhIhrlLtqwapvlHLyOo0iP6UkyB755xoXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AQH+CSbZYNTSkIkzGkNBcOl0WytHpf1TumvVR20/HP0=;
 b=VMKxqjqR4aoQw0b8t/GkQVioeuTBMC0eiaj5vLtmozqOZKvPxPWl75UznOG0RX8beWxrC1ZHM/mCfthj2LQw7QHUXN4z0CiNgC94M11F8tVISZe8LTwr3w5WphNHHybGCi/CluBiGF7w4K2BLvoQpOhG81fsFXd8J6xqn69fPVFZtASTB09xLMH91BiDQW9OAhZ9IofJ+FnY/lruCQft0pRCKFT6+DGnGgSVj+hX7jRDj5DwEErvR6zbri5IhUEetBbwKZHJQhWmc7+wcEy3/50jh0kE+DtwRFm1SfO7m7IeLMSCURjf5vrIVoXkk5EEmNU3BJgxi6SSt/k9ZZh/Mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW3PR11MB4588.namprd11.prod.outlook.com (2603:10b6:303:54::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.11; Thu, 5 Dec
 2024 04:48:20 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8230.010; Thu, 5 Dec 2024
 04:48:19 +0000
Message-ID: <d0c7dcad-e63c-428a-95c5-e5574d76a1e1@intel.com>
Date: Thu, 5 Dec 2024 10:18:13 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/6] drm/i915/vrr: Add crtc_state dump for vrr.vsync
 params
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>,
 <jani.nikula@intel.com>
References: <20241202024540.2578856-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241202024540.2578856-2-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241202024540.2578856-2-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2P287CA0002.INDP287.PROD.OUTLOOK.COM
 (2603:1096:c01:21b::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW3PR11MB4588:EE_
X-MS-Office365-Filtering-Correlation-Id: a455b820-2703-4361-9877-08dd14e80a41
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eGNSYlp5LzF6WCtzclBTOXo1WmRhU3NXQjZ0VlQvb0cvdkRKbVB1UHdsZzdx?=
 =?utf-8?B?Rkp2blpHNzFScjZlUTlOTUpJd2JNamhLbU1rbG13WE1YOE5ZOW9FamhuUFN4?=
 =?utf-8?B?dzFldTlwMWdQOHIwbThwR2xtczE5eWY5bkc4OUh6cXJQMVBHbHprREd6QUwx?=
 =?utf-8?B?ZHZtcHNUVHJCY1lXNVduNUxmdDRRRWVma0FObTdrYS8vVSsrcWQ5S3Y3RWl5?=
 =?utf-8?B?ejVBOUYzbWxUT1FCT2pOMDhUelFPWWNhTVoyMGg1eWhRTUxZdVFhY1FvTjV0?=
 =?utf-8?B?ZzdTUTJXL2IrbUlYbjAwd0tYdjBGeXp5dU1pNjdZL1dLc2draTVvQldOaHNu?=
 =?utf-8?B?QS9nd29EN1A1KzBWaGNmRzFBZGZ4dXNFd2llZ0lWeGtsTFVSaHdWbVlvc3Zk?=
 =?utf-8?B?UVNTMnp3SDFVcjNtYnFyZkFtSG9ubEJrY096alJXSVpra3JiYURpY3cyMjRx?=
 =?utf-8?B?SU85VGlsWUdGb2lXQ1RYLzhPeXFDVElLSU5mNXNPL3V1cm5GOUppUG5qWlNt?=
 =?utf-8?B?MGJFNlYwTXZ5RmxHKzZ6bzV5UVhObFY5RjVBWFJrZUhhbTUxanFLOVpseStN?=
 =?utf-8?B?elY3Q1A1V1VsWDRMV0FqbExnaW05dFlTUndUNTMzZ2wvbGc2cXBHZG4rV1hN?=
 =?utf-8?B?Y203Tm5pY2pwQlhDV0JldDVJenpJOWhmeklObzZsblRlWjIvT0VqekhseDNn?=
 =?utf-8?B?cjBOR1FuQzV2OHZNaTA1QTY4K08yaTdFR3gxcjdnY3BhMlNxWUQxU0U5TUVV?=
 =?utf-8?B?bFpmcGdXcmR3RW1teXdPL1htK2hDYmg4OEJid0xDNHlDNVlQSzIrbjl6enZW?=
 =?utf-8?B?SktKSEJRZ1VNRWU0RUg5NFdEODdySTBHYVdiN3ZHdTh3SW1sZ0NuU3kvMHo0?=
 =?utf-8?B?ZzdqY0ttL2lSTGF5TU91SldCWGhKeVd2VVlpTWlUL1VHR254U0pwMlFiVjdS?=
 =?utf-8?B?SnRRdmk1NDlQeTRQS1dPczVKQzdUcUhtaC9PNjgwaDd6Q0ZkNTVPNFZJZStI?=
 =?utf-8?B?b1I1RTNUV3FYc1VUdHNrRWlMVm16dXBpQkNTK0hGZDlEdkFlNXpsMjdGVHZ1?=
 =?utf-8?B?cm0vR3lkYkZLWldUUXRiaFNtR05ZNHYyQ09DbVhhWkVsaWE1VEU0SlFQSms4?=
 =?utf-8?B?QU91OG9iRVl0ODhKRWFOYlF3bEUzaUV3ZGo4RW5vRFR5Mks5dGtWV2RlSHUw?=
 =?utf-8?B?VmcvRC9FSjdqdm15RnV5cjJZV0tnZUpOT1YzbUNVaXhEeVNFa0NmM3YyREdE?=
 =?utf-8?B?cnlwdXg4cDJWbnlJV2RaTWhzUGdYdjBvdG5tL0UrYmxmOHNkL1BydkhpUHB3?=
 =?utf-8?B?NU8rRTIyUXBVcVZ5aVFEWGNOZXh4UnVMdTQzclZ5cHI2TXpYMi9JQzJYK243?=
 =?utf-8?B?SzFQYVJUUTVnM0txZElNRlZON2NEUC9HY3MzVGFJQTc5cWJwcUwxT3lTdjha?=
 =?utf-8?B?NjAveU1lZ2dpd3ZpMzVNYVR0WTVISXZiSk13cDhOWE5jZXRVUEMwamUwN1B2?=
 =?utf-8?B?RnI5dzhuNE1GZExtVkRDcHZiSWtMRld3eTF0ZFozZ29nNnZwd0NKY3lkc1lG?=
 =?utf-8?B?RlQ3WjhiRHRCOEM1UzYvVFZqQjdnVjA4Y3ZXc2twVS9NK3dJeEFLVFdDYlpI?=
 =?utf-8?B?YlVsbzltOHJodnQwRjB1OVBZOTRFcXVDNVpiOHIweVJIMGhRZmdZWmxsdXZC?=
 =?utf-8?B?Z3FxUGppeFlWWGIwSlVXOHRsSk1uZlpDMzMvd1JzUHFablUxSFp6cTVzcTBB?=
 =?utf-8?B?VUhXSUwySDBXL3MrL1RxTnZxUDlnRm9lUHRWUmJVNXpvN1lHSjA3dmZnVXhZ?=
 =?utf-8?B?Ym1pM1k2WmZHYTFWSE8zQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Mlc1czFTYXZwL1oydVZLN21NaE5BYkllbVdDSzNDbFp1dks1czhuN3laZ2Rj?=
 =?utf-8?B?K0lsM2tKZlJmSzdZWVpRR0VFZzVGeVlleWJIUE1VbDNtcXY5dWZSQjhhcTk1?=
 =?utf-8?B?bDNMdW1XWjBiQUtqODBHK050Z1dycUNZS1JCa0ZCOEhMRmJWL0xVOGV4Q0lT?=
 =?utf-8?B?Ymh4U1duQjA2d1hERkRJUmtpa2dTNTlHL3hqT04zODdvWW9MV2tVRXB0RTh4?=
 =?utf-8?B?MFdOc3hIdEloWVNvV1k1UDZ0cEFXVmQ5U21EYVZxSm9tc3AyQ25jL0lmMGhY?=
 =?utf-8?B?cEdTM2RxVHp3S2pPZHYvb3VZdURkN0FhNFhVTVNPd0o0SHVzSW5HeWVEbHpZ?=
 =?utf-8?B?V1E4d0hIa3Z6c3BPUjlGZHlQYlgvT05wa3NBZk5VN3hyN1d3MTljUzgraTgr?=
 =?utf-8?B?ejlVQWlsN0NmZUhTSm00U1ZlMTF1S3c3aXRkMDRzMDBodTVzTHJhWHM4bHY4?=
 =?utf-8?B?SFNLa0g2SXZ5L2lkWUlraWpRc1NtSnZiK01ySERkTkwrRkpJNStLLzEraDIy?=
 =?utf-8?B?YnRlNkt6aDluSUpERmdRQU4waFgrNTNQdkZPbWV5YkNJSUxabTdMLzc1eTZr?=
 =?utf-8?B?U3hTWCtQbUlySm1rWm4xWHZkM1JzOHFqM2sycklJak0zRkN0SVoyQWF6LzNU?=
 =?utf-8?B?b1JkeXJqSVN5WVFucmk2SkFDdWNjQ3NlakNKbFgrbTVma1BpZDJ4dU5XUzk4?=
 =?utf-8?B?bFNYcENJeXNmN3Z0dmFFZ2VMNTVJaUNpMjgyQmNGWVR5ZTlTSkM3a0Q3U0tO?=
 =?utf-8?B?anhPeStHdUxtOCs4NFE3T2J2TDZtazJ0ODQ5VU5pd2JUdmtyVXBPci9GOWln?=
 =?utf-8?B?Q1hyZEJIR2VROGVrUDZ3RlQ2RVVYS3BXWStBZVQ0Y2luYUg5bzlHS0lPbWND?=
 =?utf-8?B?MGczZUVXWDZpUERrZzRSUnEyU21NcTB0NVhYVEVQeGd2MUlJT1M2TkF1QXZn?=
 =?utf-8?B?eEY0V0RMaHh1cW9obEJ2OGdGQTZBWVV1Y05GM05rOGZwMERQN3YrckNEeTRH?=
 =?utf-8?B?OVZmY2RrcmNaTkF5RDBGQnRveUVZV0xPZ3ZGQmFOQ2RzTzVMNkRFTm1MQjNU?=
 =?utf-8?B?N29DZHZNd0QwTkRNa21zaWRQUHZSakxBeUFOYnNtYXF0RVpGUytVV21aTlBP?=
 =?utf-8?B?T3dBdE5xL3RXNk1hTU1iRzBkNm1xYVlLeHh5Snc3alNoakVmNHljb1pWdG9y?=
 =?utf-8?B?Vmh6QTFFWFRYemE5Sk9vVytkcUhjZFZPTytYeDFvaVBsNlBTTGxvNzFZS2Uw?=
 =?utf-8?B?SmxNREIzUEF3THBSMmlQTmEzblZ6d041LzR3NzB5SGZsdHBNcjZOOUJNemtx?=
 =?utf-8?B?VFBWeWR5UWZtNEN4RGRQSlY3bDlnZCtiZGNXdDF5b0g3Ny9NcjlUUUNrRTlH?=
 =?utf-8?B?K1FDeFBxV0tncHloRHZhejZ3bkxHRlNMay9zdCtiTys2SUI1TnJ3bDl5cG4w?=
 =?utf-8?B?LzFmUEs5TEUyWHlyQW1xdVJxLytRaWZqOXNvZVVodXN3cEtpK05LeDdwTmVO?=
 =?utf-8?B?OTQzWlN2SHVCdTA3NEg1RnN1RzlzK2lRcS9vdVpjRDBrdnYvblRIMTZMUkJ6?=
 =?utf-8?B?Mm0rcWMybGNzTDFERkhQVWxiNkJ6Q0tNU1hUWlNzWVhNYXo1ekx5NE1jWG45?=
 =?utf-8?B?ME4xMlFqMTVUTjBZK3RvQUhjSXltOE1nTmszSk9PRzVCUm03akhhZmtIU3Nt?=
 =?utf-8?B?S3pmT2VLUEM5cnJSUVh5cGtMSVlheVdGb0hwUEJrQXc2bGJmS0UwbjJBZDUz?=
 =?utf-8?B?Y2FaVWRyZXp3Nld2OTBoS01iajAxYlYxR1l1Z3Jkb2JMS1R3eFowM1cwMzlX?=
 =?utf-8?B?cDdhLzhRY3BkSmE3aXhYZWNVdkxmclFRVUZpeDZHWGFRZ3R6cEhWR1FONFQ5?=
 =?utf-8?B?R2Q5YUlpeU1DRjdiTXBQWWNuZDZRdmtYK0JnYnM2WnJwSVZ2NWJxZHhwbEd4?=
 =?utf-8?B?VndiR09yaklJUHVlTXl2VGIrQ2EwV3BxSEthQkR1Rm1WVWYvaGdEU3hvUjVB?=
 =?utf-8?B?eVhBQUxhaGo2NEYra0ZvRnVhbnN4aXZjak0rN3hROXVsYkZURHowb3hzQ0xH?=
 =?utf-8?B?NFRBNnVhV1Jka0h0RlYrNUdwdFFaTkowL1BtanYzTEdtUk1VMzZ3enh6QXFr?=
 =?utf-8?B?clpjaHpLV0dld2NRaTFUVlMwNVpqV0RIRkdMdzE3amZ1TTZCOVh1c1NQZm5N?=
 =?utf-8?B?cFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a455b820-2703-4361-9877-08dd14e80a41
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2024 04:48:19.7385 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Jes6wrj7tnr0V7RrtOyJSZ8+I3DVO/FU7gGwnXvyWpU9bfFG3/hkTJGqwMF9Dmd3f80+lgi+jQzNRIAzvtXU+o89cPJb6olo8Zi1iXsukos=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4588
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


On 12/2/2024 8:15 AM, Mitul Golani wrote:
> Add crtc_state dump for vrr.vsync_{start/end} params to track the
> state correctly.
>
> --v2:
> - remove vrr_ pretext and use space instead of underscore (Jani).
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>


Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> index 705ec5ad385c..221be4f44104 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -296,11 +296,13 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>   		intel_dump_buffer("ELD: ", pipe_config->eld,
>   				  drm_eld_size(pipe_config->eld));
>   
> -	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
> +	drm_printf(&p, "vrr: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vsync start: %d, vsync end: %d, vmin vblank: %d, vmax vblank: %d\n",
>   		   str_yes_no(pipe_config->vrr.enable),
>   		   pipe_config->vrr.vmin, pipe_config->vrr.vmax,
>   		   pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
>   		   pipe_config->vrr.flipline,
> +		   pipe_config->vrr.vsync_start,
> +		   pipe_config->vrr.vsync_end,
>   		   intel_vrr_vmin_vblank_start(pipe_config),
>   		   intel_vrr_vmax_vblank_start(pipe_config));
>   
