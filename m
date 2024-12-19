Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A87D79F8764
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2024 22:55:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1E5610E2B6;
	Thu, 19 Dec 2024 21:55:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PlZnQwj0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4149710E2B6
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2024 21:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734645331; x=1766181331;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=w0DNnk67f7Qi9iSX9myULDVHq6rtEF0FVObYDcU4PQY=;
 b=PlZnQwj0iMvELTACNkm2fUvY8UUE5vQi/DFhkfR1ROQgSVurD/kRUcFs
 UEuLvslhim7CePrhAtketBPVeudSl8kRP8KfnMWvljJ27LoCMmxuoeNpO
 7JBafnGFztIPltGgg3Qm7ns321GaCywbDz+KNn8qvOCEh/7vFs3PvP/Uj
 04v8G5B0Bk9t6FnBz4H1gtB9XxyEowdwxtP4yQVTGHAypiF/PXaWjUSIx
 2Dfr+vMKG1gN/GMgy8rQyf0tZSwvB8W0LGMPpNPwvloJN1kaVhu7VWhMg
 5OYN2HEOwqgaRN3eP4sZTvm9WEGqy00iTOIVwtnBsW6xpgCzSvyhEf2Vk A==;
X-CSE-ConnectionGUID: /e8qx4a5Ty2Kw3WwZML4jg==
X-CSE-MsgGUID: as2dQDyARUKZ1aSPHiYmLg==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="45784689"
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="45784689"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2024 13:54:33 -0800
X-CSE-ConnectionGUID: Bvrn2tu2TCugAilcDmsknA==
X-CSE-MsgGUID: 9mWVQNboTJOjNKVWeIawcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,248,1728975600"; d="scan'208";a="98225195"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Dec 2024 13:54:32 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 19 Dec 2024 13:54:31 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 19 Dec 2024 13:54:31 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 19 Dec 2024 13:54:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W9jl+3C6lr5JRc6OZHCTKyTrDJJRzyPaJHLZn5Ze0LSssgcdRy7f5tGNRdht0Ea1crDVCxlG0LtqKaKEy63cLXgQeiejDmR4qeporLiQEvKakTEihorjk05crKhdyXmrI79IAypVubxUT1JaToZiS+v0nM+WZ0inaEkNCzz3VoTWkrj+LXy1+4sTIYmZPO1f17uwfkuWJBKBJSRngWW+QOQDO4nVSK5dfnCx5akMDSmBW8DZTVmGz8oWDCJ6ZLyC92mWUeWf9uH79xnY6z5RLZ4QNYIT+yz75368LN/jTV0MX/7tR6NH1tn3d1cz7RFWMHxJkLpRJCFFxUZo9+6nlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h4CmsnVLtbFhvFqgq37STAlk7+QwCcy+Li0dv0ft2vk=;
 b=AJLqh6J352/bxhLG+u/PJ7h7hRVcwVoNGZga+94NCVDAzUFzbVufD3bYNDWOgu0r/m9KyGkIhFLRQmM7WdOyuyRwz4Tw04R8+rNH7T17Nih7HYJfShifuN6NpzeHVkqrr8Aq4cu4hmdVjY1q0Ldwn5g6/sYfv1SDi49tfSJTKITLT+AkckOeF/hz9FIghhcb/6QR07OUARlyNWcNA80qJyqWdg/7mlaH9dIdNdlEyHITVq8GSLwv3LQnFCkMtRdsxKaDBs2XwLcdTIIjJU1/upCbkEWO0H2pSO6egbYg+iWcH7Um/36ls1iCHvDpgFXznck7i/dTMX8c5pHFEUVadQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7757.namprd11.prod.outlook.com (2603:10b6:8:103::22)
 by SA1PR11MB6992.namprd11.prod.outlook.com (2603:10b6:806:2b6::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.22; Thu, 19 Dec
 2024 21:54:23 +0000
Received: from DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1]) by DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1%2]) with mapi id 15.20.8272.005; Thu, 19 Dec 2024
 21:54:23 +0000
Message-ID: <65fd65a7-533e-4b4b-afe7-5854e32bff34@intel.com>
Date: Thu, 19 Dec 2024 13:54:21 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dg1: Fix power gate sequence.
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
References: <20241219210019.70532-1-rodrigo.vivi@intel.com>
Content-Language: en-US
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <20241219210019.70532-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR05CA0180.namprd05.prod.outlook.com
 (2603:10b6:a03:339::35) To DM4PR11MB7757.namprd11.prod.outlook.com
 (2603:10b6:8:103::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7757:EE_|SA1PR11MB6992:EE_
X-MS-Office365-Filtering-Correlation-Id: 5aeb0de0-e821-4116-0488-08dd2077b31a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RzlzNWJGaVk2bGtaTXZKdXl0R0ZOUTZGaHFOOGxYUDl4SU9WSVEzWWY2WHJR?=
 =?utf-8?B?d21VRE1rZnFEMUVpZTFmSWtpZnlqZkt5Qlh5STZJRGYvS204dEdUdTVtdUR1?=
 =?utf-8?B?bGJnRHNnOVNpdVdzaG9HclRPenFLRG1tVHk5aldXeGErRmVVU0IxdXU2d2RX?=
 =?utf-8?B?Vy9lWEM0YXNLR1A4K3p6b2FGZ0JPSUp6c0d6U0tvbWphQ3VSbDNEK01PbnlL?=
 =?utf-8?B?VmpJd1ZBK0NPVzY1ZnM0VVVJUGRRcEhxTEZ4bG81aTdtcDlia0xuUUwreGVX?=
 =?utf-8?B?aExPdWNuWGlWa3ZrNkc2WVhwUkFTdkNMRFVMQ1EwdVBac0Z2ak1jbTI4eDA0?=
 =?utf-8?B?YzdMUW9MV3R2Y0tGUytlbXlqOW4yQ1N6ZlZHTW9JVk5tNWg0MHRtdXdFLzY5?=
 =?utf-8?B?MW0rRzhxVDFod1R0dnJDZy9xQ2NHS29DelZMNGdmanZFZWQwVnlwU0w2Zkky?=
 =?utf-8?B?TDZiTkNBbnRrZTZrcWZXem4rdEtNOUVtRlQ2L0Rtb09qbitxalNWaXV6dm0z?=
 =?utf-8?B?NERnMG9KVFIwcUJmclBPR3Q3MG16VHJaeVZsaWw4UldleXp5OWxtUnEwekJN?=
 =?utf-8?B?S216V2doTlBLQlQwdS8ydk0rTEJKQ1VLbUQ0ZWtpT29nVXMzZk5ZZDJXVFY0?=
 =?utf-8?B?eWZVQ29SUXJrdnpzVDFNVlRvdU15ays5cTlMbUNMRlFtYXUzeVl6djlTbWxO?=
 =?utf-8?B?UHJHL1RZaGMxOWFoMEttTXRNdjE5aDQ5U0NEeDduSlN3OG4wdGd0eHJNand4?=
 =?utf-8?B?TC9UNVJESnYrRnBRL1pZL2dwaU8rZ1ArZE1xNjVRYXR2NjZwMGdVN3RLNXZ5?=
 =?utf-8?B?WHdwK3FCV0tTZWlxaWY0N2drZlhERVJRZ1gzK0k2S2hoaGVKaHdTNjVaa0FT?=
 =?utf-8?B?UlRFQmJ0SVlkNWtyY0N6UW0zeWx2OTJVT2RpV2lVNTJhN0lLU0NGYXR4T3N6?=
 =?utf-8?B?aytVMUVITlRCYS9aeXdFTnd6Smd6cUU4SjdaR3pGTjJrbmVvam50RncwVUR6?=
 =?utf-8?B?TDAzZUc5NDdDR0J1Z0VmWDM5STVtUng3Y28vbnh3ZEsvNUMzOHJqNi9KVkJ1?=
 =?utf-8?B?Nms4Z1d1TXdWdnl1dDNDTTdJN3UySVRQUmsycTJyQk0xcmhxbmZ6UVI4NFBy?=
 =?utf-8?B?UHZIcjBUOTBlREZickRUbmpuMTc1azRWS0xXYTNqcnpJN3ZFMHpvU1d3ZTV2?=
 =?utf-8?B?SGg2Q29OZElaNjk1dEVEandXWktSa1pJWkpXdTE5YjMySzZsdk5yMVVXejc5?=
 =?utf-8?B?U3pZblV3TEJXaFhsOXlKUmgzOGFFMGRVQzdwNGtqZmZndFNIREk5cHo4WGY1?=
 =?utf-8?B?akhUREppUHU2RFFOczZKalk5bXQ5T3JhRzhKQmtjMk8vdHprK0tBcXNhTE5J?=
 =?utf-8?B?eVAvV1pxbEU3RHFSakNjYTRmakFqY3UvTGlvaFdmcHpSTzRxQUVrMzVrN0Jj?=
 =?utf-8?B?c2ttWGZXUXFKdGpoaCtWMmxPTEk1aG41Y3NRNHo2TW1rT1FIT1BZVWw3T3V5?=
 =?utf-8?B?WTAwRWJKSGtGYjNSU3laVjZvS0pKWUtuQVZWNWNJWkk1QS9FdC80WnB1QlJn?=
 =?utf-8?B?WVU1U05xNkU0UWhmSXFjYUI1aXVENmRBMkVLSE1GNXB6TFRKTzZ4My9Edmg4?=
 =?utf-8?B?SWZRbUhlRklQVU1CYWVvakVFN1dJTnRxM05iNVZmb24rb05MeDVaSXNpQllU?=
 =?utf-8?B?SDEzZ2ZNSmlBK2ZCeEE0dHpvVzhNRzFIRldQanhzN3M1VVJDeFo0ZkR2WGdW?=
 =?utf-8?B?TWw3YThWcW9QeFgvRnBQbzI4VVdJanNEY3hPMVh6NGF0eUZMY1RrUk1nWTc5?=
 =?utf-8?B?eithZDVUWkFRaGkwazBLZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7757.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dW0wM1N5VFZsTjlpTHJiUGUycm96NzlZTzB5dUhsNXAwaXEvZHBNRVl5YUNJ?=
 =?utf-8?B?K3g4a28wK1lyNHF0MStVTDk2M2lMR24wcGJZM0VLVXdKR3ptQ3pIRk81bnVE?=
 =?utf-8?B?MVlhTEtFMFdXcU9MNCtqalRwR0RKZGFwc3NIa2JEMDhxZTVCa1RvY2cvUmQv?=
 =?utf-8?B?cWdpY1JrSTM3N2ZnNDlDbHZObVRaSlFqSjRaWXplRnV0VVJWTmU2WllxV2Ex?=
 =?utf-8?B?cXcvbWVzWXFNbEpVSTZ6eUxJYlhqWWFSc2VRNDZqQnRQVFhDcWpmSFZDL2lY?=
 =?utf-8?B?R1k4MXA3cHpBbEN6VG8wQXNIRGYxaHU0QWd3ZzFnK21vdHBlNythc3lLQTNH?=
 =?utf-8?B?VGFhU2VIb3Y2aWRWLytBQ2FxRVlqMUFOZXlzTlhqazlSZ1NrQ2Rmc3RMcGFM?=
 =?utf-8?B?cGYxeVdlVFRBZTI2SzB2VVRycFlOWEY4WXlzYTJLQ0c0Z0dpV1RwMDB1WjFa?=
 =?utf-8?B?aUpqVG02eVZNREY4clArTzlod2UxaVEyTzdNUTFCMkJjQ25ibzBzZ0l0c2I3?=
 =?utf-8?B?NHdwSTVVZmxhTWtROFBGNVpra3JhdFYzc2liRFV3anE2ZWJSTFVFRncyZ1lQ?=
 =?utf-8?B?QmI0em4rQllra1JZVHBoMDV0c1FvL3VmZ1Z0VXVKTENHRzNVN0t5YVZtWUtO?=
 =?utf-8?B?Wm5WeGxqN2NBMmk4b2dYK0lTVHp4UWdwYmFJV0lJSVY4SisyKy9CVk91Nzdn?=
 =?utf-8?B?LzArTjAwZTQ4Tit3aVpjU1dWdGUzSnlkcm5aMmVBa1NQYXUyUDBoQ25OYTly?=
 =?utf-8?B?MmRtN1JKdmh5RUFBSXBBeG0rOVI1U3BTbzNGb2hlTTNOS2pVa2JKZzczcFY1?=
 =?utf-8?B?NDBXS3BDRWJHeHZvM2N2bFJRZHpIa2JhQmkzSU9QRjVodnJ0Rko0UldhMVkz?=
 =?utf-8?B?cmdwS2JQWmM4OThPMFlIZERibkR1ZEhSQkdOVmdHZ0s5c3MyaHNaSTU3WndM?=
 =?utf-8?B?WnBBQ2VLZ2RVNzc0M2hLMnZ3SU5SY2ZtQThEM280aVZqUHF0amJ1U1BrOFA1?=
 =?utf-8?B?QzZXMG1BUnpRZVpRL0U2d0x1aExyKzAyNzhWaXp4R3E3Tno5K1IveHAzMHlN?=
 =?utf-8?B?QTV2WDdxYXlkc3dEUGJYcHQwZlVUMmZpcW1nMTQ0d1lsdlhka2JoeTJTUGgw?=
 =?utf-8?B?L1ZzYXZJNVpxWjRxWkVYMExkWllaV2RrNm9PRENmL1BmZkJ0eUQ4a2ZxaVpP?=
 =?utf-8?B?M3RWQ2gyaVpuY2t5R3VQWExtMVQwcHpuc3RPZUwwSlhmdVZQNWpRNHN3Qlo3?=
 =?utf-8?B?QUZabXJoSTkya2tCTFViNmZQcFhHVDUwa05iY0wyaEMyYXVnQmMrWVU3bnNj?=
 =?utf-8?B?UVp5WlI3R0dib2g0bWJ6bURQbFhTWWxCVm5SS3V4STdFMVRCQ3piVU8wb0U4?=
 =?utf-8?B?a0FXUkFacUR1TFUxY044SGlsMk5jYWxMaVJDTWdSNVNBM01jUittK09tZEd3?=
 =?utf-8?B?NHlBMnB4Y1ZMMVpkVEJZVkM3dHlINHlnU2xONkNKTkdUOWRGRE9JTW84RlM5?=
 =?utf-8?B?ZU5BSnVseDBzZ2NnS0NkaHFxVVR2SnhNRXRuZXlEdkUzSmR2L1F1OVdCa2hk?=
 =?utf-8?B?NW9jSDFaQmJBcm9yUHZjcGdzd2I0Z3c2eGhMQzIyaXpieXp1RzdQdXVTY0N5?=
 =?utf-8?B?a3R2ck5sME5PdSsxTkowd2lOSHFLTndicjF5cTdLZXljVWtuTklIWGRTWjk4?=
 =?utf-8?B?UUEwNzFEVW8zZHRibklVMit4R2pBdDl2dTFwTmlUMEo4eWw1YllZQXFzY0c0?=
 =?utf-8?B?L2dwOTdwdS8rRURNbjNBamNjZElmOVhuZkgwc0tFQUpocU1mUmxydStBZGVR?=
 =?utf-8?B?UG5Zc0QzL2lPd0NsNGRJUUNaR05wSUJlK2xrQlZMcVl0RW9LdjNuVlZzSlQ3?=
 =?utf-8?B?clNhWkJzb2VWaWVCVmpiUk1Db05VaWJIenVKOGtnanl3c0l3RkFuaEFqUW9Z?=
 =?utf-8?B?ajAzd1R4bDVYdFVvR21wUWFSY1ZjTTgrWm5BeTBrVUhqZWlQVkp5amlobExt?=
 =?utf-8?B?b1kxZWhjeUJYQUlHL1VtT3FxdDRMNHZSZER5b1JScllPSFN0SkNsZ2tCRHVH?=
 =?utf-8?B?NkloWlo5WnlSZjNwc2U1SWtaL3ozSlB0WXRESFEyckozck40ZXNhMjg3SjFE?=
 =?utf-8?B?akEzaTBsNWtSbHA1ZlBLUW5yY0RkT3FsazJZMTRGWHBUZFUwVUp5ZnpiUXkr?=
 =?utf-8?B?U3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5aeb0de0-e821-4116-0488-08dd2077b31a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7757.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2024 21:54:23.5958 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uCAH46oFW6wcwFKojf3/jxJJvtfA90PijR5fIUIYjjSiGc22n8TnYOGzop6tsK12pO92aU7sNjNm0y33atLpyiQUAvhqd2vBTNUdtmCYQRc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6992
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


On 12/19/2024 1:00 PM, Rodrigo Vivi wrote:
> sub-pipe PG is not present on DG1. Setting these bits can disable
> other power gates and cause GPU hangs on video playbacks.

LGTM,

Reviewed-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

>
> VLK: 16314, 4304
>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13381
> Fixes: 85a12d7eb8fe ("drm/i915/tgl: Fix Media power gate sequence.")
> Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> Cc: Himal Prasad Ghimiray <himal.prasad.ghimiray@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_rc6.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index c864d101faf9..9378d5901c49 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -133,7 +133,7 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
>   			GEN9_MEDIA_PG_ENABLE |
>   			GEN11_MEDIA_SAMPLER_PG_ENABLE;
>   
> -	if (GRAPHICS_VER(gt->i915) >= 12) {
> +	if (GRAPHICS_VER(gt->i915) >= 12 && !IS_DG1(gt->i915)) {
>   		for (i = 0; i < I915_MAX_VCS; i++)
>   			if (HAS_ENGINE(gt, _VCS(i)))
>   				pg_enable |= (VDN_HCP_POWERGATE_ENABLE(i) |
