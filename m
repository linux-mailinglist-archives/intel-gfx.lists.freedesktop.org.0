Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DDF197F1C4
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 22:48:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A3C210E496;
	Mon, 23 Sep 2024 20:48:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IzYZT+0s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47EAA10E496
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 20:48:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727124523; x=1758660523;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=Mr/m/eIndd6SNthlKt1pM9XT5U5IwEpnt/YirJiZhQY=;
 b=IzYZT+0sO0un9ArnZ5pkHlsMaokw8y540gnzsgeFEik74Vlm0jvmjNCS
 FsZnNXAS6kSUuwT4sbE/L0Yo5/HGXK+9cT0ZdpjLJGNA9hwpAiiiUcI1U
 2w41xM8eEH6PwtHEwe8PQT5MsZyonxYWhgBq/Op3Dayn3DISx5UZRF8Vf
 xLFzhOAyZ5fwFQovXe+HtnT3XRT+gt7QKQyaQ2l0xkekEYwFWFbBvhX+q
 X9mZ3Z5tWjXnLg3P5tQ4pby0/ozb3zDQtj5Mr6tfUdXreVZgDybuJDwhX
 zV1erZWTX+E3DbdkQcbhMtFKsQCugtgZKvqAJ805Lfa0ktPCpN3S74T5C g==;
X-CSE-ConnectionGUID: yEDZ38eCT8ydG221i6h0kw==
X-CSE-MsgGUID: GZ1mcR1CTme04qjEMcHwFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="28987578"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="28987578"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 13:48:43 -0700
X-CSE-ConnectionGUID: x4LoMPkDQhy8VEOgXo9SXQ==
X-CSE-MsgGUID: ZCyzqiGaT22LAdnQIN6ELg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="75950910"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Sep 2024 13:48:43 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 23 Sep 2024 13:48:42 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 23 Sep 2024 13:48:42 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 23 Sep 2024 13:48:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bMEYQLf9BdIab8oviPFQQB/bHfnkc5eBUAu7SZ8RGh3YVgUrggkSsKf7k0k59fwhYpfmFzClgBjU8GZIOjHd31WdR7O57chlsEjw0X/rWijUK+9FeiIjYCpy4OLLbT6PuOgwpRD96ni9jhMkVyjkg8NDizxJFlgjrfq9F/DZpM/LpJVa20OPYdfuhFAR/HqIy7SKh6JR/Lbmh5819PayWf695/pS3VMQw3aUqWkoK0w+Y0wArSji+ckrK0tN0JEK1T/+gXF9xG1bLLfyNWKjTZDU8kYHeLWj2utRktnhyD66lNjouQdazCp/NCWk2Vuk6RaonF1vxfcgy33KXmK/Tg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q8+bDYL2XZpNv3aLYAaLxoaLW5HnvRg2upaGbVc3W00=;
 b=s5BjdGGvitVXlEuUY0SR1zROTFYN2LpUvDtJyL2iQKuDmQeaGRFZCQAC+/TBAwd0IGcEDkm4qX+sU9VeaOpLOdvEtM6bV156MhCbxkvNfks8sLYg8FC0RL006ADAh1G3M5Ng4oZshRQL9YdyKpN8WLZcltW+JESKGeIRquXy7AMkyWifz2z90ddGvbFeJzvdZFTXQHT40nIeJIZAJwXWfZTOx0jteLCPaBMrr2N8jY1KsmyqcNv+QPkGlk/rwOyYZ1+03i7cPAu4Izpb40NhGCGrBcwUwBHWr6unQJ4oet2MNoAaFNklba11D7uKg+PoVi8yOhYS2VUakHbPWWeTPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB7812.namprd11.prod.outlook.com (2603:10b6:208:3f7::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Mon, 23 Sep
 2024 20:48:34 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.7982.022; Mon, 23 Sep 2024
 20:48:34 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <172712442823.84255.2807821048800039833@gjsousa-mobl2>
References: <20240923190324.83013-1-gustavo.sousa@intel.com>
 <20240923190324.83013-6-gustavo.sousa@intel.com> <ZvHAL48aC8P-Lvbd@intel.com>
 <172712196055.84255.91494974908186120@gjsousa-mobl2>
 <ZvHNH20i3-zkqR2H@intel.com>
 <172712442823.84255.2807821048800039833@gjsousa-mobl2>
Subject: Re: [PATCH v2 5/5] drm/i915/display: Cover all possible pipes in
 TP_printk()
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Matt Roper <matthew.d.roper@intel.com>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Mon, 23 Sep 2024 17:48:29 -0300
Message-ID: <172712450957.84255.3530863623273085366@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0272.namprd04.prod.outlook.com
 (2603:10b6:303:89::7) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB7812:EE_
X-MS-Office365-Filtering-Correlation-Id: fd0d5679-6243-4fb9-9ac5-08dcdc11171b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M0V0TkhHeDFvTnprWldNYmxmMHBwWjBlYVp0TWlSNTJyMFBlMUp1L1VyV2xJ?=
 =?utf-8?B?c0t4YUNsKzlMbit5Q2lGUzIxaWx0dE5nNENzeVpHOUxSd1RvaEdmcW9UbnNm?=
 =?utf-8?B?WVhvaVNvM3RMV000M2habEx5dVpiSlVLT3ZZMDJKTDZXYitUSmZLalB2OStt?=
 =?utf-8?B?b0d0QVJSbk1jY3Q5SHQrWUFCQkFMRVVjNHk1OWNkeUFCRVRhTlVxVjJESlVY?=
 =?utf-8?B?NUhoZzN4TGJpZitRaE9mSnlheFhaS3l2cGVuZFNoazBHbHQ1RkZmNEZ5NHdG?=
 =?utf-8?B?c3kxL00yenNidUNuYk9McEpTVUxOZDcrRld3R24ybXVsUFo3cEpPWDE4QkYx?=
 =?utf-8?B?TG55RkltUzVGUHJZbWdxU0g4bDFidiswQkVubGpaZW5QL01YZU1wQUZEd0dK?=
 =?utf-8?B?L2lWb1N5emFnUXBhcUNOd25BSFR0QWFuV1lybUNaWkZHOG95VXVXbzg4WldQ?=
 =?utf-8?B?VlYrWGxITWtWUEpJNWxWanpZRHcvbnVIdmt2dkh2dFZtVnJlZ294dXFrbHVx?=
 =?utf-8?B?bVZxK1lxRzljdzhoVm91NnV6Zld3QmxSTmI4cktRcHJiaEJJY1BCWGhGdWdW?=
 =?utf-8?B?QnVYS25NQ2lXbnFPbVJrcVF4QVp5c3J6Ri9sQnFhYUFqSkhnYmxUd0s3aHEx?=
 =?utf-8?B?RVB2MlNZd1UrampOQVllT0duSnZGS29rZlhWOGVka25CQmFNYWhtcnI3U0x2?=
 =?utf-8?B?RmRKdW9OZnNNelVxS2g2OUZYWlFZZFJhYlltTFZxWjBML1psTXFhSThaU3ZK?=
 =?utf-8?B?TXFxZjREZkI0NlNqNHhVSVhwc08vNE5HSUovbjVGai8rYzRPbmJjQ08zbFAx?=
 =?utf-8?B?ZXBzQXc4MDUxTkIrSDNjSGx5NlRiQmt1OUN4V0hNR3RGZU9DS3lvZTdsYU43?=
 =?utf-8?B?LzZYSCsrL3JoVXc2Z2lrdkVabVRtL2VVdkVwMWxvTVZMZ1NkbVdyNnJtSFJC?=
 =?utf-8?B?aU9EK0htZkE3aVBTeWJ5ZjkvS1dsa25jNG82NTRWcUY0RVVNM1R5dEVPRXk3?=
 =?utf-8?B?WmkzeGZOY0RXQkI0N05hU2pxTEYwYzcyaU54V1haM3dzTnBXV3BmZ3IyODlm?=
 =?utf-8?B?cGM4TUhhZGlHc3lwVE5vaE95RnZYSkNWQURPZ2RLdCt2QTVxTEd5N1lTZmNC?=
 =?utf-8?B?SlgweWpnNVpQSnlWSDJzbk8zeEtJb08yN3pUR0FZSGZvRHFFUGF5KzJrbjhv?=
 =?utf-8?B?anl1cWd3NXhMNzBxOVZyd1BrcXB0MGNJV0wxenZTeFc2L0hhRkpFek5Qd3d6?=
 =?utf-8?B?dkFhdjdWSlZEWXEwZTBOVDQ3b3pra1NycjVBWW9XVDNGQ0VhVlJlTEF5Zkwy?=
 =?utf-8?B?c0FsZkYvcjYyczhUMk1VMEQ5UGZzQnJ1d3R5ZXcwanlBRWhPcUhnL3k1Tjdl?=
 =?utf-8?B?Q3ZPRzVVZnZ5YmYxZHZ4NXZ5NzVKVDB0ZU5WQmI5Q1AycFJHTDBIUk9NSnJO?=
 =?utf-8?B?YmpyNG1VRnJSak1vbU9rMGQycFVrL0UrM2x4dE03eFB6SzVWVm1xRDE0R3I2?=
 =?utf-8?B?YzAzb1lXcDhwZU83R0ROMVhZNXNFVU0xODNhQ1Y3SDlXT0s5WlBWcWFtYXgr?=
 =?utf-8?B?ODhyZnlzOGZpUm9hemZjWU5aOW5ZTUJvZHNidFRRNENQV3QxVG9RcndEVzM1?=
 =?utf-8?B?SVRQRmJwbWNSOWwrWEFoYk9HYzFUbTZJQURHODl1MVgydmtkTXZZcC9jeHlT?=
 =?utf-8?B?TzVCYzh3TkFZdXdSWkZva3ZFenVETnpQL0xXR3MxZjZLN0orcEtCUnozekRK?=
 =?utf-8?B?b2hud1pYcU5sN1R2dVRaRVA2WXhkZGVtQWpkSU9LWi9HSlNmNmZJbWdpamFY?=
 =?utf-8?B?aXA2LzJyR0JaaFJPODgvODA5clFHS2V6UWFFQ3FLL3BXSFhLUFhoNVBjQmFy?=
 =?utf-8?B?WHhPNURMTlpTNjJNUGxjc3MxTkM3QlUzOEVEdXVKZTRSYnc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WnJKRU1VeTE2bGFFa1gxZWFuV2UvbWZSZjBsc0RNYWkvOS8wbEV5dmtWOGth?=
 =?utf-8?B?Rk5ubmY3QTNlNURkQU1SSTFPWmxlSEhQNHAvUXVDMTVYOXFxWlVvZndSS1pv?=
 =?utf-8?B?UGVsd0E4VzlLY3NDRkpPMXA0WmovSC9TcTMzS3hKbzRoRTNnOXhaYWNlbGt2?=
 =?utf-8?B?eFNtcTA5MCtmeUFKOUxLTEtZbVE1dnVQakFpQVMwbFlOeFRzb3VRcVhHSjUz?=
 =?utf-8?B?d1VmM2cyM0hSc3ROOWFlM0JWd25NS21jU3pHZW9HdHkyeUlLYUhESTVpdWhL?=
 =?utf-8?B?MldDcGZoVXNDUUkrTEQvS2pSOHYvSUtuRVRVZHZoQ3I2Yi9KY1BQZk0xVlk2?=
 =?utf-8?B?NlhqeGdsMXkwVXJvZ1ZuV2NyOTREVWRFUXdBVWtjRW1NSzRyMlpncHVheFJw?=
 =?utf-8?B?em56QVNFMW9ZRXJ2bnNQYkFnY3VrbHpEYWJDZEFyYzZwVUplVkFjYzcvT2hT?=
 =?utf-8?B?WFgxakx3cjhYWUw0eWZnU2RhcThzRUh5YXcxVzJLSTM5ZzNhKzU0Y1c2eGZn?=
 =?utf-8?B?b09TaElmaEhMaGFTOGF0eXk3SnBYRC9xdXZvTDc5M1Y0R3Z6MjRWMzRrdVl4?=
 =?utf-8?B?TGZBdDNWWDJYakg5MTZ6WTFXOTltZks4dkNWM3Rjc0FLTmpSNytLSDEyb3pn?=
 =?utf-8?B?aFlQamFmRm5ET2E0MGpzbnFLbGVUQ1ZKSk13bktkb1BpK1BFN0xsT0N2ZkNl?=
 =?utf-8?B?SlFudENPdXdWVDg2Z2xSaFNHcHk5UWRpbUJSRlZyRUVDaEtQRmxQZTkvV05P?=
 =?utf-8?B?bDU2aWR0S0Vyb2RlUG5lcWZUNlF2REV2aC94NEdFMFlUYUxIQ3NNZk85Y2o2?=
 =?utf-8?B?T3drbDdYWGZnQmUxQkd1MkNzbGwvNVUxNVIzcHdEaGtraWpwYW9HQld5M0Fa?=
 =?utf-8?B?SE5ZUS83MDFPYlZIdmdhbzBjUEZONTFLSUZjeENuYzJYcVRueFhjT1VPNGw1?=
 =?utf-8?B?Q3NFN05wc3BKc29tUTNZeElNQWg0bTVCSzNObVI3bUZBV0xpdjBFUXorM2JT?=
 =?utf-8?B?Q2RQY0tDQ0tOWjdlVTkvVTNvMHpyOUNBZ3F1UXZ1ZG51RnJFbWFVY05IZVo0?=
 =?utf-8?B?R0kxMW96N041Y0dNVy9xc1BadkRNem0yTllCM29DYmxkNWZpZ1pwREt1YStk?=
 =?utf-8?B?dVorcnZ4NzBjSHd5eXZuOHJISCtWaHJidHVUWE11Mkc1Um0vSnRXTjdKYlFX?=
 =?utf-8?B?SE5zaHVvbnJCZVJlRVVRWThNK0ZXYitqZTBHMVNUYWdSa3hGeUZnMHUrUUc2?=
 =?utf-8?B?bVY0SFNsc3JscXFQRm80NUxhVC9IVGJsZlVIOGlZeHBDY3BkZElpVGczTUw3?=
 =?utf-8?B?b09jMjE4UmNKdWJ0WkZkZTRFS0tyWHZnSEcybXBaRm5nNEYrbXk0SGZlUjdw?=
 =?utf-8?B?RlVqU3JOWTFvWmdBT3RHOG1JQUFyWGdnMDcyaURPRHJHRDlIQmNQT2xnL2Yx?=
 =?utf-8?B?ajBUVWRITmd5MnFZNGhvbUdNK2V4V2FVWXpkclo3WjJpZGtacWNvdWRLQ0dT?=
 =?utf-8?B?SlV6TExWZWpvWDVDdFZIZDVweTgraXRwcjcyK0JZN3hEQmdtNXdjeUZEYkNx?=
 =?utf-8?B?SUliRFl6VkZLZHE0TVk0djNPQWZqUGhZZEkxdDdBL3o2RmRXWDZUd0UwUytK?=
 =?utf-8?B?aGtXSmhzV2NIaDZEcnRIaHB1Mks2azZSNm43a2tXUWJ0VHdDeXNKTHlSUlZU?=
 =?utf-8?B?Y1Roa0gzcGd3amFIZVFjbWpPMkVIREkxMVV4bENXU2VvRkF0YlQ4K3p6Z05H?=
 =?utf-8?B?VlNSVmRscSs3MzdPbzA5eVVwTllhTGpqendBOFZvMGU2b0Z4c2NvbHZxYzJ6?=
 =?utf-8?B?MEZDY0FtV3ZHZmc1aFFGUFByUG55QXRNRng0YnhtazliWXFxN2xvVXNlbkp3?=
 =?utf-8?B?ajVwRjFDeldaZ0VRaWwxaTZEaGJ6Sjh2Ni84MVRFUVcxOC91UEpMaHc1RnFB?=
 =?utf-8?B?MnJpSitGaVBuMDk1blFpSVhWTXcxVStuNm1pQjhQQWk3UmlvZG5SWW01Vk4v?=
 =?utf-8?B?TERmSkhZdlp4Z3J5MXg5S3Jmb1pYZWd5QzJqS05ZSmh6djBnNG5IRWpXL05v?=
 =?utf-8?B?ZEpsTkRKSW1XLzhEUWcxelM0QXNNSElIR243cEdLUXZKV0lUZnpISGY3d0c0?=
 =?utf-8?B?NGM0V2VFaXlvQjJ1cU0ycldpNFBzTkZ5YVFFR0RyM3psZWZDajJPT29nQTRN?=
 =?utf-8?B?aWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fd0d5679-6243-4fb9-9ac5-08dcdc11171b
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2024 20:48:34.2209 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RCql3Ax55L1VkrXbpPBCGnGV3GKaZUZyHC7AmZcszZecHnbJpTXboKauqhABPBJguSQrX06iJiUtnWtF5Nv4Vg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7812
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

Quoting Gustavo Sousa (2024-09-23 17:47:08-03:00)
>Quoting Ville Syrj=C3=A4l=C3=A4 (2024-09-23 17:18:39-03:00)
>>On Mon, Sep 23, 2024 at 05:06:00PM -0300, Gustavo Sousa wrote:
>>> Quoting Ville Syrj=C3=A4l=C3=A4 (2024-09-23 16:23:27-03:00)
>>> >On Mon, Sep 23, 2024 at 04:02:54PM -0300, Gustavo Sousa wrote:
>>> >> Tracepoints that display frame and scanline counters for all pipes w=
ere
>>> >> added with commit 1489bba82433 ("drm/i915: Add cxsr toggle tracepoin=
t")
>>> >> and commit 0b2599a43ca9 ("drm/i915: Add pipe enable/disable
>>> >> tracepoints"). At that time, we only had pipes A, B and C. Now that =
we
>>> >> can also have pipe D, the TP_printk() calls are missing it.
>>> >>=20
>>> >> As a quick and dirty fix for that, let's define two common macros to=
 be
>>> >> used for the format and values respectively, and also ensure we rais=
e a
>>> >> build bug if more pipes are added to enum pipe.
>>> >>=20
>>> >> In the future, we should probably have a way of printing information=
 for
>>> >> available pipes only.
>>> >>=20
>>> >> Cc: Matt Roper <matthew.d.roper@intel.com>
>>> >> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>> >> ---
>>> >>  .../drm/i915/display/intel_display_trace.h    | 43 +++++++++++++---=
---
>>> >>  1 file changed, 29 insertions(+), 14 deletions(-)
>>> >>=20
>>> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/dr=
ivers/gpu/drm/i915/display/intel_display_trace.h
>>> >> index eec9aeddad96..9bd8f1e505b0 100644
>>> >> --- a/drivers/gpu/drm/i915/display/intel_display_trace.h
>>> >> +++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
>>> >> @@ -31,6 +31,29 @@
>>> >>  #define _TRACE_PIPE_A        0
>>> >>  #define _TRACE_PIPE_B        1
>>> >>  #define _TRACE_PIPE_C        2
>>> >> +#define _TRACE_PIPE_D        3
>>> >> +
>>> >> +/*
>>> >> + * FIXME: Several TP_printk() calls below display frame and scanlin=
e numbers for
>>> >> + * all possible pipes (regardless of whether they are available) an=
d that is
>>> >> + * done with a constant format string. A better approach would be t=
o generate
>>> >> + * that info dynamically based on available pipes, but, while we do=
 not have
>>> >> + * that implemented yet, let's assert that the constant format stri=
ng indeed
>>> >> + * covers all possible pipes.
>>> >> + */
>>> >> +static_assert(I915_MAX_PIPES - 1 =3D=3D _TRACE_PIPE_D);
>>> >> +
>>> >> +#define _PIPES_FRAME_AND_SCANLINE_FMT                \
>>> >> +        "pipe A: frame=3D%u, scanline=3D%u"                \
>>> >> +        ", pipe B: frame=3D%u, scanline=3D%u"        \
>>> >> +        ", pipe C: frame=3D%u, scanline=3D%u"        \
>>> >> +        ", pipe D: frame=3D%u, scanline=3D%u"
>>> >
>>> >Hmm. We have a lot of tracpoints that just print these for a single
>>> >pipe. Is there any decent way to make this macro just for one pipe,
>>> >and then resuse it for all the tracepoints whether they trace one
>>> >pipe or all of them?
>>>=20
>>> Maybe what we could do is to have a local struct pipe_counters type
>>> and have _PIPE_COUNTERS_FMT and _PIPE_COUNTERS_VALUES for it. Then they
>>> could be used here as well as for the single-pipe cases.
>>
>>Can we use structs here or would that confuse trace-cmd as well?
>
>Ugh... Right. I'm afraid that would not work indeed.
>
>I quickly scammed through libtraceevent's event-parse.c and it looks

Oops!

s/scammed/scanned/

:-)

--
Gustavo Sousa

>like it does not support that.
>
>--
>Gustavo Sousa
