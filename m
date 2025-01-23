Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 321F3A1A54A
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2025 14:55:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C53DE10E80D;
	Thu, 23 Jan 2025 13:55:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WLA6sY/F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8A3810E80D
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2025 13:55:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737640510; x=1769176510;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=oAE01XOXM7dm3621g8nkzUUPsDQry9gyiAFbuwF3kyE=;
 b=WLA6sY/FrBl074nI0Xozwwd9Igqtq/OEqyPyFlO6uOslzyyHha/vrjB5
 f+rzc1LJT5mPGmHBlc/DNVFFHAKoZltF6RgFalJrAcZyofj9B1pBS5Tvq
 A12JX1kJZ8zCc2wlBO82fhb98rIDo+3WhYAEWTGcGo3HdcZ7lTsAKPiV+
 F08j3N0zt+COkpdvsvJVRF2PqNSsT24UnNsjggCJsQNsRRDCjF/YKaYXv
 xca9N37o7rfKD4I4TBZmSjhUMbVgb8/wLO10M9b3fwlRgjFJ/lG1umVdI
 FiZeyXbDACu1MUf1G4q63lgWEKHgPmnWz+rjcHu7I1tCGLoOjnxMNegli g==;
X-CSE-ConnectionGUID: wAUjtt5QT6Od122S/PwvGA==
X-CSE-MsgGUID: Vq27a48CQVWk/tJOJFyrxA==
X-IronPort-AV: E=McAfee;i="6700,10204,11324"; a="41894729"
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; d="scan'208";a="41894729"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 05:55:10 -0800
X-CSE-ConnectionGUID: SP6lGi1xR+GhoNyQDRCGvQ==
X-CSE-MsgGUID: 2ivH8l2fRZS37fU1yvDBlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; d="scan'208";a="107276233"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jan 2025 05:55:09 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 23 Jan 2025 05:55:09 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 23 Jan 2025 05:55:09 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 23 Jan 2025 05:55:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UGkGDcwnbHcIi/3F4PNZhC+uC6nCJNwtIq/ib24jET07LuO/+3xl89+z6K1PicEVjuW+YqIJeG6f+2Ps2nfWaaXAxNbRwx5HdpBCeh3nm5vHB8+jxQnH5KwYaBUgkOwhfP537pYZq+koyl84cXsuQv5B26pddMo41aIIR/WDh/H5cfV/xB1OR3WjC5pdErZFgcmjT/CWLF7POhQp/EbadDpU7ymUSfC3/9usixGe11nv8aOZMw7Ym4RRXo3eQ56N7k2rFmuhm6wQypzst9yurEcNxk+11ol1tXjVRpjRoFvIUA40J+86EaOcTQL1wGyPItx09h8QDElthRpA+uVjiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1JssDMavJnXRfyN6YmkBvzBvQEoCAbhi2xd8sfRvWSQ=;
 b=WxWfKtcyMdptxDyqrULE4lQFEzfPHnUSQ9vN6XZrKK1cELzaBfOQfVkofsmYJgkgxdq7ojG+EtoF3KqNB5D/7zATYy1wfIgn7js3+mLt+Y8HlNUsRJ0WDydHa5i1lLkICRXhPs2lyQ0xqmDaOEUXFjU6LUpFW1EoTk3oYYNjPoNzasV3/1CyTw1lrloQdN2P7qExFBrRB/OEA0o+BMa4bug4ER5fTc8khyDUu4QCqxilOFTj+tiPsUrNZrcKEYxpE15LHXecwk9WEbeiQGmi8EAygLQVIZ6mzySdR6uTh+324uBkRNa+NZgseMSo13vlu0+IKhZ8UKGklXpHkDcmpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by SN7PR11MB6677.namprd11.prod.outlook.com (2603:10b6:806:26b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.17; Thu, 23 Jan
 2025 13:54:34 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%3]) with mapi id 15.20.8377.009; Thu, 23 Jan 2025
 13:54:33 +0000
Date: Thu, 23 Jan 2025 14:54:25 +0100
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <chris.p.wilson@intel.com>,
 <krzysztof.karas@intel.com>
Subject: Re: [PATCH] Revert "drm/i915/gt: Log reason for setting TAINT_WARN
 at reset"
Message-ID: <ja7pu6redaaas5uxmornnmdp3c2acqtal2c53h3z7r4qactwow@fk3o6g4qcxkf>
References: <yawjxnu62q6obpz6yy2ksrrwfprafdq5b23lktvcu2oiydbmgt@oag7ts74jxu4>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <yawjxnu62q6obpz6yy2ksrrwfprafdq5b23lktvcu2oiydbmgt@oag7ts74jxu4>
X-ClientProxiedBy: MI1P293CA0029.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:3::15) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|SN7PR11MB6677:EE_
X-MS-Office365-Filtering-Correlation-Id: a05d2e8b-43eb-49d6-c175-08dd3bb5778a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?b0lKOUNaU0tsTmN6Z3IxY2FBZlA1VXJGWlR3NXRhTTRtQWtzQnJZOS82NnUr?=
 =?utf-8?B?TDlyZU5NMDUwZTNOaGI0RmJXTzBibTZBS1NsbHdrTm82VlAza1VHbk9IWWFz?=
 =?utf-8?B?Yzk1RG1zQXFhc3FPZkpMTUl4ZEZHOFNjR3orS0FPTkhyc3llLzZkZFhZUVdJ?=
 =?utf-8?B?NmZPNkNhelNFcGpoSllkTmRJUi96MWdxeTQyb2VkTmovK2xFMVAwQmZGdGdN?=
 =?utf-8?B?L2pVYXlXc1ZadmVqVWdEVGlVWkdQa3VwSUtJbysxQi9LT1p1RGFiNk5BK1cz?=
 =?utf-8?B?dm9TRXYvQzVlTm5PZ3NWK1U5bG5RUWRWWlpkbzAvdU4vb1RPQ3dDclJacUxH?=
 =?utf-8?B?dC9adnhtQ3hjQ05BVVdkRlNlY0lEcUk4WHRyV2x5OUp3UlZwZHFlNzNXalM1?=
 =?utf-8?B?WFJUMlRFakVNNndJTXV1aVBsVGZJVlNOc1hVNTRWVFl6a2YyTFFINmgvQWhE?=
 =?utf-8?B?OE9sK2g2MGFYekMxRk9wZ1I5L3ZMa1VPaG1JYXo5N0Z6ME5PeUtFNFh4T2Vx?=
 =?utf-8?B?ZmlmZ2FVNkJ2aUpCM1RWWGJiS2JYWTVIVUVXcFFwa3FJRzZaSnFndWROL1dM?=
 =?utf-8?B?RndFRFZXK25ob1NVOEl0OWU3b2VqYnpOMXNWVXROUHV3YXQwclAxUlczcVlD?=
 =?utf-8?B?SmRXZEJOZExwMTd2YlVNWGQ1c252aWxKQzcvLzIzeW8rd25oa29wd2liOWE0?=
 =?utf-8?B?MnVnV3M3cnQwQ3A4djlhK0p6VWEwYnBGYnF4WXJaeVFzS2cyTjZmV0djQ01w?=
 =?utf-8?B?ay9BWkJaYmJVaWdianRkWG43QmRDUW04SjNpZ2c2MHh6UGFJQUVKSlBYcjdV?=
 =?utf-8?B?RHZEdzJNYjc4UHVTeEc3VFk0YmxvVmdBRndPaGw5WlVqcHpXZjU5Q0JJalJ3?=
 =?utf-8?B?YzY4R05TSVppY3ZMQmtIZ0xCLzM3bHhRSTkyOHJXOEVKVEtEaXl1STZCRVpE?=
 =?utf-8?B?S0NqTlVaaHpxa3Q3bC8xK1JzZ1h5QWREalVndVdzK1h6SUR3cEtWbFByVWJO?=
 =?utf-8?B?MnFHaFFjRjlUSUdxY3VuYlI4M0FmTGdES1pyQjhnK1cyMmFVNDBQOE9Jb3VB?=
 =?utf-8?B?c1dFa3dBZnBOU1FVY2tsL05xTVFXejB0MnJRaUNCK01nQndLWkpoZEVHdU92?=
 =?utf-8?B?T1hJaTVQbVdwdGM2MkFkTm43U3FRQTBPRTVjbjl6TENIVE1EUGZUbkFsc0tT?=
 =?utf-8?B?UXRvVlkwVmtaVUVrZmxzQldja2ZEZnlKaW14VEVLSE5lZVN1anRRb252aHlv?=
 =?utf-8?B?N0lacGx1UlBZTDFQdTlNSHF1cVFZUkpiQTNQVkxnTGVLUlZFakpHSW5WUGxm?=
 =?utf-8?B?d1NnRm82a2VETktGaDMzSG90K0poNFdPUjNJTmRWelloZzcrcHBwZk96ZWlC?=
 =?utf-8?B?Yjg3Vk9KREc5VXB5OHZNUnZnaGZkYnZObmdTeitxd1NtUU5oejhBSlc2WVZi?=
 =?utf-8?B?S0d1R1F3cHRvVzI4azZFc0hqTS9DZzFrZmpWT1JSQ3pXNVdMUFFKQlIxS0Fz?=
 =?utf-8?B?OXlhYTZNaXpub0RTeHZMOWtzWjQ1VzgrcFlOZWk0WGFqYWVERW1PSzdRK241?=
 =?utf-8?B?Vy9vajJjMmdKYUtaYkF2OEoxLzh1TUJRK0h2YjBDeW43YklLemo1RDZmV3Zj?=
 =?utf-8?B?VFpFdGNkUFl0VEJnOTFSR0VLSU1scS92NHl2TEZTRzh5N3NEMEFhYjhtQUdH?=
 =?utf-8?B?UU55eTU4blplL25hZDQzdWpQYnZkRWExUmROTEZEYmZYTFdiZStRS2xKYURm?=
 =?utf-8?B?WkY1bnJzRi9pTGZPSW9wZXRkQm9ORENJVVpXUUFyYUFpZHBMRHMvVUpsQ2FJ?=
 =?utf-8?B?NGlrNUt1RUlWQXZReEplc2tmbFpJZ3NrZ0t0RU5oQ0Z6dTJ6VTJXSkQ5ck1s?=
 =?utf-8?Q?d17Yrd3+Gn6R+?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QUJEcmtSV1AyM2ZCdlAzSnR4UzJUQ0lXV2VpYUE1TEVNc3dmV3B1enhJdTls?=
 =?utf-8?B?c2xXT2oxOWtiejVOU0tMVmt1bytzbTFEdEJyc1hQeE40VDN4a2NPUkZ0WXB1?=
 =?utf-8?B?VHJleTFDL3dCckthaENLVldpNFBvM1RmVDc0aGIzdDB1RSsvZmJuVTExVCtk?=
 =?utf-8?B?WDlaWXRYaVV3MFgwKy91ZDl2RlhXM1NTYllRcno4d3Y2WVhpdUdlNzhwVyto?=
 =?utf-8?B?RkFNbk1SNHNMY0dXOVJRWTA3M25CT1NqV1phN2RCWTdFSlBGcGxTa0QwSVh5?=
 =?utf-8?B?UXM2Y1UwYU9zWEcrcUdnTERWUnFZZ2g0ZEw0VjUrcmNwYzBPUVprdjY2S0RN?=
 =?utf-8?B?YnFSZm05bTl4MzR1R3NVQ2hUTm5HOGlkVDJwWmc0YTUzK3lMZVBwbTNpOFh2?=
 =?utf-8?B?anJtR0pzdW10eGV5YjRROC9CbEphQmFtUkFzZXh0Yi9WbURUOUFLNi9ySGx3?=
 =?utf-8?B?VHQ1UjlzYjNmQXlHUjZnUnQ4aVNtc2ZQemtuWWdtL3F0MDVlUFRRVzFTMnJH?=
 =?utf-8?B?NFBVL2lGNFVTVC9lK0FUSldKbS9wekpSMFAvczErdWFzaDFYa0kzV1J0aDJx?=
 =?utf-8?B?WXpHTnpIZTRnRTEwNG5QdURucll2NGlUSTFUWi93UDV3UXhhUGVoM2R6RjBn?=
 =?utf-8?B?UW5Qd3VLWU83c1I2SkpaTDFueUNoZXpDKzhWdHpWRG9OZ1JtUXpsM2p0MTUx?=
 =?utf-8?B?ek5sVjl1VHhnYWszUmdaaDJkdE9Pckt1NEk5YThvS2pJQXd4NSsvcjFwejBk?=
 =?utf-8?B?Z0VNanYva0JNUlBHRjVUNUN2MGY5TTVhR2UydU1ldHdQeDdxcndBZWZTZDhK?=
 =?utf-8?B?VThRSUdOOHN4UE9LL1dDNTYvM0lHUm5PVzhLVG13UnR4Y0kxZkVpUjJJNXo5?=
 =?utf-8?B?TGMxVGdudG5zTE5tQ1cwc1JSK2owZjhiQUFzRTJVeFBiRURUV2RCVk9xNm5q?=
 =?utf-8?B?amw3Z29tUzRtVTlVRFRZN0VNTENvenhLWlFucjNjb1VwRks0MlNqT1o3QVRV?=
 =?utf-8?B?M0xxM1IyTm01bFlIaU5Dc0FaMW43UEluejVMdnp2N0JKME50MmtBNUxTRE5p?=
 =?utf-8?B?NUhXTm14bWNndU9QaGpCd2prNnNjUXpIUldNSk8rSmZUZ0lNM05UcmlBZ1Q0?=
 =?utf-8?B?RG9DRWNsaGc4VUtWQjJENU9tSmpDVUhlM1BtRDFZSEMvVXhxRW5Obnp3alM3?=
 =?utf-8?B?TUpqQndMcllzdUtjcFZad2dpSzlrVCtydGVyRzF1dEx1ZnNZU0c1aEs5OWRS?=
 =?utf-8?B?R01kZUxrd3FKdFcyZStSclE1cGdqdWtBZUs5bHBUNm5xa1FFMGtXSWdQN1dz?=
 =?utf-8?B?c0tFRHNaWEIxMUh4RW54cE00MHhKWmVWL1ArejFlbEZEbmtOeFZSc0J4eGN4?=
 =?utf-8?B?Z29QaEhldlU4U0RSazF2b0hFTWFMTUtPM1dnMkFaVDFRekxscTAwVlp3alhH?=
 =?utf-8?B?Wm4wTzhPSkpnbzR0YXRYdFZzSXlFdDJOejBwUWMxTDVkQ09GcytONnhvNmRC?=
 =?utf-8?B?U3lSS3hpOWVlcDRsSHB3SFlMVm5wZmJyUGw1OHovVVRlSjFXb01XOWkvcGdV?=
 =?utf-8?B?c1FQV1JNYTRQcDdqTGdsL2ZHczU1QkJmYVZIK0IrS0ZnTzJ2SVFCcXJyZmxw?=
 =?utf-8?B?bGx5Ny9xNmY2Y3F2N3FnWkxVNHFqRFd6amEwUjNYOUs4dFVUUWl4VTJKN0ly?=
 =?utf-8?B?NUNJNVlTcHpJZDRjZEpFQ3hsUlF4MjY4Zy9JODg3UlFCU2pZZnM4TlJ0RDg1?=
 =?utf-8?B?UnJlcGF5MURldnNCa1pmdTdTaXA5Q1h2SlZ2QUdBeVlwOVEyU0hQSW1JVmI5?=
 =?utf-8?B?UkdVbHlCK2hHTVJsQ1pEbloweUY0MEREcjZzU2plaVRxVGtkdzdQazhzaEk2?=
 =?utf-8?B?eFRvQ0hRZHhQOEw4UndVYms3U1FqR0p5cTlIVFoyZS9LS0lob2NHYkRoVEtp?=
 =?utf-8?B?RW1PbGQ0aVZmQXVibzd6bWxUUkhRYWE4RXhCcXROL2luL0JZM0FUV2gxREhD?=
 =?utf-8?B?UXVjL1NxNThicnRYRnlULzVDeVFOY2RESlY5WFNnblhBVmIrUHREMkYvQnlv?=
 =?utf-8?B?TnFvdnN3TmNVS3RBL005UEUrWXpydURWeDZ1aWVjUUwyMGFnZk81QzY1OStY?=
 =?utf-8?B?bk4rdXZwcjJPd0Q4akw2TXdVdmZIVWs4dGdzRjhERWROLzQyckRIdmtKK000?=
 =?utf-8?B?K3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a05d2e8b-43eb-49d6-c175-08dd3bb5778a
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2025 13:54:33.8737 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qf3SDSi5WP/cL1313RRQGeE+8SBFPkY/TAZJCm1iBWK+tsw/HPVAJJ0sgdCWhMUTS6jh2TDlyRu5EwSRGb702rHKrW4h2MHCJFgs+cogaiE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6677
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

On 2025-01-23 at 11:33:00 GMT, Sebastian Brzezinka wrote:
> This reverts commit 835443da6f50d9516b58bba5a4fdf9e563d961c7.
> 
> Kernel taint information is present in dmesg already, and in
> the case of an unrecoverable error, the CI restarts the device
> accordingly. Raising an error causes intentional error injection
> to report an undesired error notification.
> 
> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

I'd rephrase the last sentence of the commit log a bit. It's a little
unclear why the patch should be reverted, e.g.:

- turns out that logging with gt_err() causes CI to pick up an error
  even in intentional error injects,
- the unintentional (real) errors are already reported correctly by CI,
- a gt wedge is already being logged without this patch, so we should
  revert the new message instead of, for example, relaxing the loglevel.

I obviously have the context on this so I know exactly what's happening,
but the maintainers might not be as familiar with the issue, so going
into more detail in the patch log would be good.

Thanks
Krzysztof
