Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E599F0C3A
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 13:29:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C43710E336;
	Fri, 13 Dec 2024 12:29:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f6S1Hqnx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CB9410E336;
 Fri, 13 Dec 2024 12:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734092949; x=1765628949;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OAtl1DW0Nx+hEzGb8F2Z7HozGxKoXXbkE1xCK5G/KjU=;
 b=f6S1HqnxqGwCMUyFoHZgCLTJYoHxjpi+xrhGNWFLmgRploObRS/6d6VP
 GbNefMdwnaKDh83ycni0gFXnG/LI9c5giwpr1cTbFB+7e2GJhcOX5IiGK
 HdY/TzidQeP9qKLRLJfza55T/V7M/94O9PkJrZj+Inlh3pIIZ2L76D9vO
 +zONTqSs4oTbdlQG5x0ys1MnsmxhTvdTJRqECBoJwiJ/spYiQH1M5kc2b
 4d/fw+U9ubXV94g6slsUvuyPg5UWrgi3BI7/tIxspN1U217kbpmcd0jEZ
 u2NmyQAgQ8LB5L+4UR5i6WH9eLuwf+ChkjkibN9NJQR7c9xNj/MO5s5PN w==;
X-CSE-ConnectionGUID: BiX/RIqpRtGjmxq/aCnOkA==
X-CSE-MsgGUID: o6yVHD8aTaG9N6nuClop/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11278"; a="45928045"
X-IronPort-AV: E=Sophos;i="6.12,214,1728975600"; d="scan'208";a="45928045"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 04:29:09 -0800
X-CSE-ConnectionGUID: 3LkFRszLSyqbwlm8BNjBCA==
X-CSE-MsgGUID: AmsCghglTA22DX+xZxvmNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,231,1728975600"; d="scan'208";a="96590827"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Dec 2024 04:29:09 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 13 Dec 2024 04:29:07 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 13 Dec 2024 04:29:07 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 13 Dec 2024 04:29:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lei/VnFRhobpp1fD8j7jpURo9SICXe37tf0QinDzbeU+Kail3IaNfqpvvfjAdT/l/U2DUKmUhIkTq+mkZiel/dWhjXFHJHJIQdpPnBYnNRoI26RRTV34wWvKLAXGnDeZjyul72p0VKe6ZwuA0asvUpjVLmGE6gwupuGpnf1hSvE7YNu0YgoVeH0Okfz5jvWh7xEtPY5sEUmqpeRCrYeNubJy9ogORt2rmGcJjN5aj5lEXs5duxQvOnomxTk+IkToZ1eDl88LMKL6fIGAKgT2RJcxnZVkQRJFiCISpVoDZbvIP7aRmSyDeGgyZ0/8iSWpxWLRwStsHmuN0AIZjkujeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eQVnxlCMAz7O91/FCOICpPlEhAU/BDw9VcZ7HP9Iyis=;
 b=yMRh+N35KDz6qxsPmHPlFt2BqOFAgxtakwUNbUcDVshn2guEvrbFxMD75ohbvF52lLDI9+tcrddHv159mhs3vDhrF2tOctR+PogdeBtvlzyF2MqveVDy4qx42ANw2xcQcd8xCDdhVLSjDrHaBsw9MRRIwQKJKJTWsNcjpwSfOjHOB869fMHscN/kFK9KTeAMsKxAx22xN91ZeP/pUb2ksHKRnNHTp04X5gFIhu8zGP9VwROOOGH7vM8RnrNlgtO08buVbKbSu0ihe+vl1el7nggHy86LAGHikVk5R6m3zkJd2A60f+OWHhtPk4EEs+hPFZ+fdgrIQhHSk8LWVkeFgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB4880.namprd11.prod.outlook.com (2603:10b6:a03:2af::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.17; Fri, 13 Dec
 2024 12:28:24 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8251.008; Fri, 13 Dec 2024
 12:28:24 +0000
Message-ID: <29ae39d6-7183-44e1-9beb-a9f0e3e63a41@intel.com>
Date: Fri, 13 Dec 2024 17:58:16 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/14] drm/i915/dp: Drop check for FEC in
 intel_dp_fec_compute_config
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
References: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
 <20241204092642.1835807-5-ankit.k.nautiyal@intel.com>
 <SN7PR11MB6750C82B8A3A14523936E81FE3302@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <SN7PR11MB6750C82B8A3A14523936E81FE3302@SN7PR11MB6750.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BMXP287CA0010.INDP287.PROD.OUTLOOK.COM
 (2603:1096:b00:2c::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB4880:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f444812-5b7b-4043-5a00-08dd1b71a320
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WkhET0RXd0pIQS94MDQvWitNZ1FsNGVPWnRTRHBaNmtVYXBhTkphRENFMCt3?=
 =?utf-8?B?RWY0TWwwZDJGQzloZ0wyTUhraXFQSDR0YitDSTJLcTFzclVvbVpteFd3bzF6?=
 =?utf-8?B?Tzk1eVB5V09SQUtyNGdEMFNnUk9ENEVDUEJSaFNBajNMWkRUVCtoRzFXN0M0?=
 =?utf-8?B?TFhMYVNmSUVRQ1NIQ1NrTU5sMWZuNUtBUmZja3JtK25RMzB2azJueUl1bkI2?=
 =?utf-8?B?OHJJRlAwRXlPRGJ5MEtWOXRYNGU4aEVVb1puTUdSMHQ4STF1NUdHOW1BWDBw?=
 =?utf-8?B?N3dYSm5zQW9uL01ONzhoNXpicWpVZ0FrZFpkQ2hkcjVyODlOU043SlgwdVA0?=
 =?utf-8?B?THBJRnBnTG9sVUxhUE9UYUhLbTlQYWQ2a3NRQ2RJRW10RGs5UnBtaFJ5amEz?=
 =?utf-8?B?SE9mVEJsK1VpMno3NjlPM01DQVlTR1lKRmxua0pHSXpNdDZlbXdYMlF3aFdz?=
 =?utf-8?B?MTIyNkhxWnN5VmNYd1BmUnRPa0lwb2tBUDJobFYvL0RMeFVyeU5ROHZoNjlv?=
 =?utf-8?B?TmlJdEU2UG9xYmcwSW4vTHVOQzlVdkpSSCttUHZocEIwNlNoZHdZOHV1ZkFB?=
 =?utf-8?B?cWpIVzBTYnV5SEtVb2hRd3FYNE9yN0dWekt4Q1BNUXBYbUZHRm5jd3doZG9O?=
 =?utf-8?B?ajZXSG9oUGROaXhTdTRNbUpvSFpvYWhoT2NJd0RSaUZsM2t3eFMyQlV0YlRJ?=
 =?utf-8?B?N3FFcER2YlE0UEtZU0lwaXRsQXFrNlQ5TUhUZklrOWRYNEhiNU1SQ0pYazNF?=
 =?utf-8?B?VXdtTitWZGpOK25QZ0xVdHRISmo3cGJidHU4ZTBZK05Sc3BjZ3g0Kzh0b2Qv?=
 =?utf-8?B?MTNGQUVtajFTR0RMOHBSVld5b0lsOCtqN1Ntc3J1eTlVUUwxeTQvazJYdTU5?=
 =?utf-8?B?QVMxZ2U5d3FXMVQvcXJWeFdJQklRa2tjVEpBVGdmQk5MbjJMR3J4UjJ6MlRz?=
 =?utf-8?B?VE9keGhEcHFIaTRFeE42dGVBT2kvZUxScWRvLzl1ZGZwNm8zZVdMRS9yRzlK?=
 =?utf-8?B?K2pWamQyRlA5enYvMGFDTDNFMktaOHEweEtJSXVLL3NxZlRsQ1JVYXc1Nnh1?=
 =?utf-8?B?eUdSVUJxcTlmMTVJUm5YMzVUQkR5QmtSYmVicGZpdWxiTG1FU09KOGlhQ3JI?=
 =?utf-8?B?RGRPWXMyUGM4bllnKzUrZG1XU2E5d09rbENwYVBsS2VsSk5JVzJPcTZrakJ1?=
 =?utf-8?B?RGdyeGM5VlNybU5hc2NBSkFPTVVtdmY2N2lNM0d5K1ZPMmt5dHJabVBBaUgw?=
 =?utf-8?B?Rmd1VHJ1SjFJV000TTNrRUxVeFBqVUxGS3BkTEU4NVJheUpTd2lneE13RkFG?=
 =?utf-8?B?U21SNlVsQjkrZmpUQlRSSGE2R3NaVXR6ZmJiRkVkSlpVQzh1aVk4Z2R6T0Np?=
 =?utf-8?B?SG1RRTY0ZVAxY1BnbXdLalNnZjBFZWp0bFI1cUlrWXFKbFAxZUF0bGFkS1E1?=
 =?utf-8?B?R2E2TVZBVURwVm5jNUUzUGVKL2ZqMlAyb1NjSDlqT1Bmc3pJQkNzYnY4dTNo?=
 =?utf-8?B?RDRnZnNLSTcybzZaUzdWY1I0b0VMSy92b0pvcFk4cTdnWW9iOU4zb29rTXhZ?=
 =?utf-8?B?RDY3ZGJoR0dVaVFTQzBLTU5mL1piU3h1Y1BNYUpGT0pwMW02WDNBTEIzVU1m?=
 =?utf-8?B?MmUrd2picmlPbDlUekpFd1U2Mk14eEJtUkJWRVg2aks5bEV1dkQ5ako2ajNz?=
 =?utf-8?B?Ylg5Y1NXYS9Kam94R3M0ekFpcUFPYXFkaVluMFZIUTZBdy8yR1gxMzNZcXBk?=
 =?utf-8?B?S2dMUThGTWY2MVptQWFhYm9xdzdZeGxzWG02STlJMWNYTDA2dzFLKy9WeDFZ?=
 =?utf-8?B?aHdnU2RvRDZrRS83WVFrUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MGR6aTdhUnl3UXJqcnYwd0lwY0l5OHpzckRrV295TElLTTdsc2NjeENFNHl3?=
 =?utf-8?B?UTBEeXVMUU01eFJBbnZEeUpZZWt1ZWM0UWd1T2dJOG5YcktTYnhyQ04xSCs1?=
 =?utf-8?B?N2YvdVFCdW5sTm15ZjJtd1NBdHBTZU5IbmZ6dkNLeFUzUVQzUEdTU1doUUN1?=
 =?utf-8?B?TDg1RFlVSzdicHpRT3p3bEpxSnFlNU5lOHc3dzNsNFdmaFJ2dHI4Y2dUWmsw?=
 =?utf-8?B?Q1pPY0V0NU55SWIvQ3dpSWJIYmJiWHBBUm5jZ3cyVVJRWFdRYis0MUszZWR2?=
 =?utf-8?B?ejJCUVlxMlZyQXdYU1JTL3Z1dDJ4ZkpsaTk3SzBCbXNGMUxobURUNTBmSzBo?=
 =?utf-8?B?RXVzcm1lR1BZdVJaVkdJT3g4Nk91TE81RHh3MUE0akxwbDM0QitpSklTcDg0?=
 =?utf-8?B?WFNwbkt2SlJBMVhiTitJVjhHME1Fell0dGhIaVNaeDYrR3NLY012aEJ0RXdr?=
 =?utf-8?B?Q0NCczgva2RSa3UwSWVNdVNzTU84MERJSWNWbng2K3FPOTJJaVJ0c2RvbGs3?=
 =?utf-8?B?ZnJYTmM5ME9LRFZXclBPbU9ONjRIOE1qTzIrQ3k1TUlPWktTS1ROTU1Ba3VG?=
 =?utf-8?B?a2w3SkFOK2V4NzV4TDUzOUJUbHVIdzl2RkR1VVl4NjhnMWJ0eU5XWnhld1pk?=
 =?utf-8?B?YktGRitwSWh2cHVsc01TQnhsVXF0OXYzcFMrMXdHWmdVR0E5TlFibWo3dHla?=
 =?utf-8?B?aC94Q2gvNFA0VWxuQU8xdWdOTktCWTVDWU1wODRKYjRIRHBCeGt1QUR6K2lr?=
 =?utf-8?B?ZVZRWTRTeG50YlJVZ0E1SW5BNDlDbm00ZTFKUFB5VFpkRkpDWVc3RXBuaXB3?=
 =?utf-8?B?QzRqUlArNENoTzg1Y1RIeTdTRFRWTTFHZ3FUSnk2ekYxYWx4ZmNvWEZiN2Ir?=
 =?utf-8?B?OWwyRzZpRGxpa3Ztdjk4T0VITFFKbEQzY0ZPYkhQZ3F1VW4xbUpoaWRBUkE3?=
 =?utf-8?B?NnFweHFhckJNYnMrS3F5Q2xLNDk4bVo1VmtPTHk4MlNlVHREcmw2N0pyZEk5?=
 =?utf-8?B?dERmbWVGK2NBOHEwcUNSNXN3dVB3M1h6WDVVSjh1Sjc4SURqK3prc0VOdDBB?=
 =?utf-8?B?SnhCMFo5bG04QUl1OHZ2amhCQlR5aUZaRlR1Z1kvQzRmUURGZkI3d3RtOGhm?=
 =?utf-8?B?QkhMNkk4eUlEWmYxYkpCRUhvSC9BeWpHVGdhbU9SNGlDeWZmYzBCZHpTY0hH?=
 =?utf-8?B?S2FZQzRKbHJESzVoYW5IdkgrQjdua01DdnlWUHI5MHJQa3Z3Zmh6T1gwMHZW?=
 =?utf-8?B?QTdGTVhRcWpwZWRjZllvbjVQZ0w3L2JJQjB5VVBRc2xnUjdnU05MeHJrN1dB?=
 =?utf-8?B?ZmJMK3Rmb0pqMEF4anJrZmdpL1UvQm01OHJ1eDVPb2Z5TGh0cFBaR2ZNeFc0?=
 =?utf-8?B?R0tyVTEzUFM0WkZPTVppUU1xejMydjArakdqVkEyZGhNSWxPcUUvSGNmZkp2?=
 =?utf-8?B?TnI2Ym5ReVRGdHByNVBIWERsVUhzVUcyS3MxeW12L3JJTFpFVzZuN1dXUEJ4?=
 =?utf-8?B?clFZcGF2TEdJVWdDZDhTOWtFUWlab3ZXQUxsVzFVU1VaTGt2YmorVXp1NmMv?=
 =?utf-8?B?VmpUc1JudlpualFqVTRPY25OM1h2VzVLdmtwT2NkRndWQVU3MHFHN2dSM0E2?=
 =?utf-8?B?WUZMbGNNUGY0Z3VrYzRiWWRIeWZlL05BVEN6YVA2VHQxVk9DL1k1cGdTRWZl?=
 =?utf-8?B?bnhmU1R4Z3dScnVPbjJKYkNJWUFpTWZYR2VOeWFXZVJvL0hLdXNHKzdoaHhl?=
 =?utf-8?B?dW9hNk5xMlQ4c20vRFVyWjZ0SEs0RVNCc1lUNlZIUlpjVDVOTmlwb1ZhVyt3?=
 =?utf-8?B?RmZOcjc1K29lNThidEtxZkxOQ2FnakNpVlJrenZEQTVsR2Q2dWJ6L0ZPRG9F?=
 =?utf-8?B?b1FHaGhUd2EzZHRTaDU2Y3pQdWJockxPOGZZNitrWHBXV3VHNEVoSmdsL0x0?=
 =?utf-8?B?ZWJhbEpsMkwrb1NhalJpNkRPdVRvM2VoWXpKdWI5c2V4MjM2N0F6clBvS3Jy?=
 =?utf-8?B?M1dEekhERGp3MEpHUGhtcU92YWxlODJ2dWRuY1A0c2xGQmxXQlNXNk1MaEFo?=
 =?utf-8?B?Q3JMaGpReG80V1JnZFpoUmVVUGVJUEp6dXJPNENVbTBrK2N6VGVOck5iY1Vo?=
 =?utf-8?B?OFhLWXpIRVVMbGhYaEZwV01ZSHl6Z2dob0VHR1ZsMDhJeG5RVUY2M0ZKK2pn?=
 =?utf-8?B?WUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f444812-5b7b-4043-5a00-08dd1b71a320
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Dec 2024 12:28:24.2469 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WOG0+GeYWGvXpqnCe9J1C50314H02qmI6mghxyCd4w3FhLd9ovlqhzKos5OY8Cw9YwxLU1rc448iN/NNsiw5qrNcOp/ZcZjwh/pj9I/+7Gg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4880
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


On 12/5/2024 11:56 AM, Kandpal, Suraj wrote:
>
>> -----Original Message-----
>> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
>> Sent: Wednesday, December 4, 2024 2:57 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj <suraj.kandpal@intel.com>;
>> jani.nikula@linux.intel.com; Deak, Imre <imre.deak@intel.com>
>> Subject: [PATCH 04/14] drm/i915/dp: Drop check for FEC in
>> intel_dp_fec_compute_config
>>
>> Support for FEC is already checked in intel_dp_supports_dsc().
>> Therefore the check can be dropped from the helper
>> intel_dp_fec_compute_config.
> I think the commit message can be improved
> "Support for FEC is already checked by intel_dp_supports_dsc() in
> Intel_dp_dsc_compute_config() which gets called before intel_dp_fec_compute_config()
>
> With that fixed LGTM,
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

Thanks, will modify the commit message for better clarity.

Regards,

Ankit

>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 6 +-----
>>   1 file changed, 1 insertion(+), 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> b/drivers/gpu/drm/i915/display/intel_dp.c
>> index ccc495842518..d48fa94b2705 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -2345,7 +2345,6 @@ static int intel_edp_dsc_compute_pipe_bpp(struct
>> intel_dp *intel_dp,  }
>>
>>   static void intel_dp_fec_compute_config(struct intel_dp *intel_dp,
>> -					const struct intel_connector
>> *connector,
>>   					struct intel_crtc_state *crtc_state)  {
>>   	if (crtc_state->fec_enable)
>> @@ -2359,9 +2358,6 @@ static void intel_dp_fec_compute_config(struct
>> intel_dp *intel_dp,
>>   	if (intel_dp_is_edp(intel_dp))
>>   		return;
>>
>> -	if (!intel_dp_supports_fec(intel_dp, connector, crtc_state))
>> -		return;
>> -
>>   	if (intel_dp_is_uhbr(crtc_state))
>>   		return;
>>
>> @@ -2384,7 +2380,7 @@ int intel_dp_dsc_compute_config(struct intel_dp
>> *intel_dp,
>>   	int num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
>>   	int ret;
>>
>> -	intel_dp_fec_compute_config(intel_dp, connector, pipe_config);
>> +	intel_dp_fec_compute_config(intel_dp, pipe_config);
>>
>>   	if (!intel_dp_dsc_supports_format(connector, pipe_config-
>>> output_format))
>>   		return -EINVAL;
>> --
>> 2.45.2
