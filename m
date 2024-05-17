Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 915BA8C8D6E
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 22:43:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00B2710E028;
	Fri, 17 May 2024 20:43:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E7OpK+yE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BF5910E028
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2024 20:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715978626; x=1747514626;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=BviRocXAPggXmk3Vow2CGL9Yrduf+YXLVSgYaZa6uSo=;
 b=E7OpK+yEVVa3kyoA3frHJPleY8oMcOpXfXQ0opKToiVPlqJudCasA2qp
 Lr5NdRwgxI5tk3k4im2O1ye/Fc7RKBjlXklprfuR6MYhAwQBLjb9Za12F
 I5Cn9SwzWnpkHiI0Kr7OJ+r/oBakAOnSz80zq40+XC1onGZAW0j/27ScW
 0rh32hhbTnYpV9q3oDdMex1PJYF9PZmA4MQqNsFS60Y65+8bJYVQk3v4h
 K79K5w7KacJ61Y9IkmL+TAyqQ2aOrkzn1go5EW9Y7b9jJ1FpgptGKGJA4
 5tWW/tTIBshvF4W7Ive1uSHVWYmVtyZwhaSDF4YHMVnq0R/TrvMqpulQ5 A==;
X-CSE-ConnectionGUID: osMK6eKVTliZQppPEonhcg==
X-CSE-MsgGUID: duwFCCDQSQilzlqXGc5GCA==
X-IronPort-AV: E=McAfee;i="6600,9927,11075"; a="23593866"
X-IronPort-AV: E=Sophos;i="6.08,168,1712646000"; d="scan'208";a="23593866"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2024 13:43:45 -0700
X-CSE-ConnectionGUID: AHy8y9PQR/GJKjhotpzoyg==
X-CSE-MsgGUID: 76hjIWomRkC8WamMQR81RA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,168,1712646000"; d="scan'208";a="32011886"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 May 2024 13:43:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 17 May 2024 13:43:45 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 17 May 2024 13:43:44 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 17 May 2024 13:43:44 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 17 May 2024 13:43:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=izl0buHPDF/SkvPTmwuhI8nUT6NnqHfWENkyIoilOUL/960mecVVu6iIEpraEvrrZ3SDD2gXiUt/vYaElW7JFcj1tScPspXOmDT1IZDC0offcZ5IirCr3xNIWam65M/rUbeyNCKQAbnyzrHXLy4k644Fn5fC7jANss2xsQKxsnXyIXfT/WNXL3iwmFcuNV5bIo9F3dvji/u675UYDQJI8Ub59fsGOlJgJvKwB0YpK/Xo5/6rWhX0iyILU7TeuvlnziB/LFJ8I8PdXmM6gQLuaImvw+fVEkWeO+Gpu5/6IaK23q3LFYKXdAmIijf/EYdQ4+mIaz4B64kJS5mvxDodbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EcWX9F94/rAzl0iDmR9As6jiB1vT52Soi3P/1IRW2p4=;
 b=dQKQaXhOavGFoiq5KoKMjvR+AOClmokP4JDv5aaOa33jg1t99fhxw8+Yo00mc0/etNqQwHe+jqMhHZMCtTnKUVOXpuIaIUbTIGxHZlJ26YKYI+WsTQEhb+dSn2OPoUq/NY0kCJqanIdPICeOv2feC4mfuwhZ4YLUYIqAuprLCbnwQkI2XLKLRrJSjgnc28S5xMoMqqTIrqA5ap9wv6+ZzpE/2TSYiDjkla4AJyaDuEcmHIj+EDvWhmKPEeCdHe8SExk2HJ31myyP8iCifAcOYG9fB9uAOivZM8B+WpUwPVJUsx12At8b43JQ2wDIiiExjy3gKX812aHWRIdGmQbWMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7408.namprd11.prod.outlook.com (2603:10b6:8:136::15)
 by PH8PR11MB6754.namprd11.prod.outlook.com (2603:10b6:510:1c9::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Fri, 17 May
 2024 20:43:42 +0000
Received: from DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::24f2:8bf0:3dbd:dc8c]) by DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::24f2:8bf0:3dbd:dc8c%3]) with mapi id 15.20.7587.025; Fri, 17 May 2024
 20:43:42 +0000
Date: Fri, 17 May 2024 13:43:28 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
CC: intel-gfx <intel-gfx@lists.freedesktop.org>, <drm-devel@freedesktop.org>, 
 Andi Shyti <andi.shyti@kernel.org>, Chris Wilson
 <chris.p.wilson@linux.intel.com>, Gnattu OC <gnattuoc@me.com>, "Joonas
 Lahtinen" <joonas.lahtinen@linux.intel.com>, Matt Roper
 <matthew.d.roper@intel.com>, Jian Ye <jian.ye@intel.com>
Subject: Re: [PATCH] drm/i915/gt: Fix CCS id's calculation for CCS mode setting
Message-ID: <ZkfBcAwUcc/xxXES@orsosgc001>
References: <20240517090616.242529-1-andi.shyti@linux.intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240517090616.242529-1-andi.shyti@linux.intel.com>
X-ClientProxiedBy: MW3PR05CA0026.namprd05.prod.outlook.com
 (2603:10b6:303:2b::31) To DS0PR11MB7408.namprd11.prod.outlook.com
 (2603:10b6:8:136::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7408:EE_|PH8PR11MB6754:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ad8ed75-2145-4ca3-3150-08dc76b209b4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YmF5REdTTkhqVm1ybnQ0OUNBcFZXVDFVOWRXVzdoUlg4am9YVDVJYlhLUG0y?=
 =?utf-8?B?cjAvMEVvYXVOQmhzNWM5UysxekxSVk1GYlR0RVRaMnBTR0lpUVRNYlNEOFFz?=
 =?utf-8?B?SzBuS1o3Y2MyTENYOUpHWnp3TlhqMGZzeURZZE9mYlJOcytHaXpGbDRMRzBK?=
 =?utf-8?B?aUxNdlBZMDYzelM3eWZOWkczVlpucWgyZVVabWdUY0dHeUgwNlQ2QzZPQk9q?=
 =?utf-8?B?dGVZUFV1Q2FwT3hHaXRZSnlObFdubVcvV3NheGhQakxwVi9mUHlTeWtiWjlB?=
 =?utf-8?B?RG1Oa1RDOW4rNVJaZWE1dENteW5FN0oxSUo0WW9iSWVJeFloVFZTSHNiQndE?=
 =?utf-8?B?U0FpOFJBWXZRaHhCNUh1Q3gxSHNNcm5OQVhOaWJpR2hUeG5uTUdrbllHWWlQ?=
 =?utf-8?B?MnJvMGNPYzVBWVA2Q05CRVR4b1FuNWFmT0h2b0pQeGNLU3hDRitaRkdvQ2cw?=
 =?utf-8?B?RFJoaU1LelcvOEdtcGkwRm1zbC83eTRxaTdpSEJSdk5lR09VdXlHc2NyOWFF?=
 =?utf-8?B?Qk0ydEJSTzNpaWxmR2tKaW9WdXNWV1ZtWkh0V3lUVEhVWWdLZ3Rwb1Q1RzNo?=
 =?utf-8?B?NnIwMXhISXRyeGl0eWwvSDNRWmNWNk1rMVRMRVBCZkdENVVnUnU5Rm1Fblh1?=
 =?utf-8?B?ck92dmpsdGRMUSt0WUVSeEJLTTZPYlh3blZOemNLSW1ZUWtLck0rTXVKcDlL?=
 =?utf-8?B?NFNtU0ZKaE5lVUFHY3ZmbWJabDJVcVdYMkt3N0REbzBML3dYWlpiTXdXZDBi?=
 =?utf-8?B?TE9PSnR6N2UzaktRVnpFQTNWbmxwNklkTDRQbGpqTU1Ta2JNSmh2dWFuVTdv?=
 =?utf-8?B?c1dLNjd3cytTYmpBUTRiSDlGazQ2Vjk2K3FjVFBuQmN0QklKSG04ZnM3Umty?=
 =?utf-8?B?NEdSZldWa3BCam1zYkdva1dEd2V2SlBzMDV2RVduSnA0Qi9LaFN4S3pxQktp?=
 =?utf-8?B?T2h2Z1FNbllEbUNpVWZrS094bHhxWEh2eGRtZVc0RnI3Um1nelluZEQ1RDRK?=
 =?utf-8?B?YzV0Y1h1b2V5VCtVcnNkWWN3Z015NytrT0hVblAySFNoTXpTbWlteGs4c00v?=
 =?utf-8?B?R0Jna0kxNHBEV3JZY3BCdUxJcmV5T01GVzNJNmhqcm5JbDRrVTlTUEFNRENn?=
 =?utf-8?B?K2FzRGFKTGQ1N2psQVZmT005Q2FPSkg4MUFqanFnb1Njb2tuRXRxejVqOGZs?=
 =?utf-8?B?T3RacERvOHVwYldlWFpUTm9lZkU0SGZqRW1RTzJPZlprYmd4K2NVcXdUcjhk?=
 =?utf-8?B?MzlPWlEzc1Q1dGdldG1aR3RyaEgvQXZtUEZ5ODQ0cGRiYkR4UXpGcy9SRzZn?=
 =?utf-8?B?RHY1R0Y2KzRVREVPei9MamFyS2tCNUg1TmpjSjFiSUNFRVowR0lzSWpuOEpi?=
 =?utf-8?B?ZHZhRDlWY2hVbEtyZmlHdU9lK1NBRHVQU1FaSlZvdFNuTVJYNjVlbEJGOEtR?=
 =?utf-8?B?eWFpU2JGZFNUczFmaThoT3ROcWF5Tkp2VjRka2oxaGt6bDNlanp5MUVYNGY0?=
 =?utf-8?B?RWhSTEs1RXZvdE1STVd0cEo2R3kydVVlOXZSL3kyTm80T0VDaGhqc281c3dy?=
 =?utf-8?B?bzY4WnFYbjBuZUtiR0N2SFArLzFnaVkrT3A0YTFBakNvakMrQXgzMEx1TE5a?=
 =?utf-8?B?dkdBVlhYbm5oUnBhYUFiV25VdjZlWWdzdjB0b1B3SU14S3E3VzV2bGtRZUtC?=
 =?utf-8?B?MXZTb3N6c1RyRWxRYmJCZ3ZOWUtDaVNTZktaOTNnZUxrMHBrdWxJMFB3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7408.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R0JsbHBUaEh3QkNEWVRqYWYrbnpqYTBwSW5IcDhzeEtGQ1VrcTZ6cldNWkQ1?=
 =?utf-8?B?UWJOS2t5MndxWnRaVmdFaEdPVk5XTTMyYk5RUlNwRGl5QmFlSHFKcm9ZcUhH?=
 =?utf-8?B?NGlmeVJ6Zm1XZ1daME5LdHNkZE56TjJ1dG91OTN3OWRvRnNRbEI1UE91eFdO?=
 =?utf-8?B?ZmFNVS9SZUhYbUdEWStlaTBwTnJoM3BxUWdFK25VemJRWksrbVdiQlRpOWZO?=
 =?utf-8?B?UXZsemlDTkRzVmQ0bXhGM1Z5ek84TjZ4KzBtZ3Bqc1RrZEdZdzRoL0s3eWY1?=
 =?utf-8?B?ekVFTXpjY0gvN0ZNZFBpVzc5RlJyeXFmdkdBN3lWZ0NDV2VGaDNGRys5SUpU?=
 =?utf-8?B?NjBwTmdCRm4zcXc0cTBrZFFqQWY2a2xhTjl5QXFUdFBuYnFWMHpvSUFKaVBL?=
 =?utf-8?B?blJBanRJYjdrUkttMkRDakFPczNRUUt2dk81M0dhdG9COE9KeDd2VDZBajd0?=
 =?utf-8?B?MHAzdjVKQmU3aGo1MVUvRVJZOWl2Z3ovY3ZiODRJOXRLdCtuTU9vM3Fqekkr?=
 =?utf-8?B?aXczS1hFdHl6VUp1NHdrT3hWc3d0SmhqNG5NU25KaitUNUZvTjEzSDRodjcz?=
 =?utf-8?B?ZjFWNWJ1bnV6TkhHd0N4UkludzNiU2RhSE41S0ltMHM2Q1M0Z20zalZ0MEM1?=
 =?utf-8?B?QW1XRVFvQm1sRzRXMGRDWGdGN0RodFptVkhKbGVHK1Z3Y2d4VWlnc0Fybkkr?=
 =?utf-8?B?em9mY1JENnFxc2FnZk9lUWV1bHcyY1hDdjUwZy9CM2Y2Vkx3eHZ4eVNlUGsx?=
 =?utf-8?B?V3ZPc21aVGNrZFFaWXByQ1BlTlkzeEFXaXp6VUNaNzgyRDF2a0p6L3A3Qnp6?=
 =?utf-8?B?UHB1anpWY0xRNzd2b2hvcWthVHNNWllOYWJtdVBkZjVyUVR6N25YUlNoT3Fi?=
 =?utf-8?B?V2xSWDdIYUZRSGNYeXlUNi9OSExQU3dQQmlScFpHS29RbWVleFVCYkxDWnhC?=
 =?utf-8?B?YklabWZYUis2dWFhaUdSZDVBa0hGMjIwQlRBdW1XeDRDYy8yREdqSzFDaGNi?=
 =?utf-8?B?NEEwQVhLMDRZTFRZWDErTzhFZE12NDh5Y0ZUY0Nhdis1ZVErV3gyOXN4SXFt?=
 =?utf-8?B?MXJCVXhYeUpiRGw0R1hMTFlRbzlCT0d5Y2VpYk1CY0xtRWZjV09MUSt4bXdC?=
 =?utf-8?B?dmhPWjZoME52cGxIbWZrL2VvVXlwQjIwblo5Ykk0ZitYWHUwTjZxbnJObk5H?=
 =?utf-8?B?Zld3cG44aHJtQjl5NGY1T0F0bExHMHByNHdVMjlWQlgrTlhrbWMrVGhLdzRi?=
 =?utf-8?B?NGR5OVpvSFFRY2dTUHdCK0FkYVQrQU5tTGVxb1QrQ1lnVmNteXdXcnhTY3Nx?=
 =?utf-8?B?ZlZBNURWalYvdVZJcUxYcFAwM1VySUcxMlk5R2pFVVlUNTBVQ2M4MlFzQ3Q3?=
 =?utf-8?B?Kzl4QVIwZzVTaFQ4TDJMY2FwZG14dHM0d1ROSnhjdDg0SEMwUzFmbDF3YjFK?=
 =?utf-8?B?MG8vNXRrVkYyUVFYM3kwcmUvVlUxdlo4T1pKL2tpaS9GZHRyZzhYaFVMWVVk?=
 =?utf-8?B?N3lDQmFXZUFvRHdIZENKT0kyN0x6aTNvejJYRXBuUC9TMDQ3eGN2Z0thdG80?=
 =?utf-8?B?NnkwcmhYZnlGVE9aMkNucjBuaGtTOUEwYnlNU1VoTzZPUjFXaWFTaG5iRyt3?=
 =?utf-8?B?SjV1TGhmeVpOL1BjK0VMLzRJYUlVUytOcXBSL1Q1SitaVXBVT2Zld3RYVUtV?=
 =?utf-8?B?M1FNakd5VnUyclJvTlpwRUM4WG1VTTIxNnN2RkZGNTJ1c0ZKV1ZtSW5UL3VL?=
 =?utf-8?B?R2hOM1hZaEx4UHIwNHJzNkFJaTVkaUF5Q0RNRnRvbEJtVEU5T3puWEdJeEVT?=
 =?utf-8?B?cit0SVdiMGZ3Z3hYeUs2eFhQVUJFZlBTUUs2Qk11V3ArTTI3dWd3R2gzMTFB?=
 =?utf-8?B?WnNrbWpMSFBnOWFnaHVjRVpHV1I0Qk9lMW5YelFycThNS01xR0Rma0lhRWZU?=
 =?utf-8?B?eGhSM0E2TWl5RWpONFF0aC9weFNQeTRTR1RFQTMwckMrM2xLSEdET2dobzFT?=
 =?utf-8?B?U3FjNllYcndaOXBNckV6VFBJQjFlc1JBWStTa1E1MDFLUVdqZVVoUm9wWmRB?=
 =?utf-8?B?N0F5eHR5SmxaOStvakFzd0ptdUJqZ0szSW1hNVluRTNMS0k3ZUVNcmNLY3gx?=
 =?utf-8?B?TS9YVmxtTkVNRk9iWlI5UXlFaGFaVE9Gd0sxVFVRMW83TjRvV1BhdTl5V0Q4?=
 =?utf-8?Q?TtxtfS/OplEcCC1cUqn2iQM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ad8ed75-2145-4ca3-3150-08dc76b209b4
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7408.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 May 2024 20:43:42.0256 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jh8dL6Y3tJwFLqQmVVcKo59irtE/A9h8IRGacgWJFjmK6YtXb+z/+eyIi34Bopdnkc7th2qq7YUnFIrR53Z/C56+E6PwKSA1Gd9MVp8OERE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6754
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

On Fri, May 17, 2024 at 11:06:16AM +0200, Andi Shyti wrote:
>The whole point of the previous fixes has been to change the CCS
>hardware configuration to generate only one stream available to
>the compute users. We did this by changing the info.engine_mask
>that is set during device probe, reset during the detection of
>the fused engines, and finally reset again when choosing the CCS
>mode.
>
>We can't use the engine_mask variable anymore, as with the
>current configuration, it imposes only one CCS no matter what the
>hardware configuration is.
>
>Before changing the engine_mask for the third time, save it and
>use it for calculating the CCS mode.
>
>After the previous changes, the user reported a performance drop
>to around 1/4. We have tested that the compute operations, with
>the current patch, have improved by the same factor.
>
>Fixes: 6db31251bb26 ("drm/i915/gt: Enable only one CCS for compute workload")
>Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
>Cc: Gnattu OC <gnattuoc@me.com>
>Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>Cc: Matt Roper <matthew.d.roper@intel.com>
>Tested-by: Jian Ye <jian.ye@intel.com>
>---
>Hi,
>
>This ensures that all four CCS engines work properly. However,
>during the tests, Jian detected that the performance during
>memory copy assigned to the CCS engines is negatively impacted.
>
>I believe this might be expected, considering that based on the
>engines' availability, the media user might decide to reduce the
>copy in multitasking.
>
>With the upcoming work that will give the user the chance to
>configure the CCS mode, this might improve.
>
>Gnattu, can I use your kindness to ask for a test on this patch
>and check whether the performance improve on your side as well?
>
>Thanks,
>Andi
>
> drivers/gpu/drm/i915/gt/intel_engine_cs.c   | 6 ++++++
> drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c | 2 +-
> drivers/gpu/drm/i915/gt/intel_gt_types.h    | 8 ++++++++
> 3 files changed, 15 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>index 5c8e9ee3b008..3b740ca25000 100644
>--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>@@ -885,6 +885,12 @@ static intel_engine_mask_t init_engine_mask(struct intel_gt *gt)
> 	if (IS_DG2(gt->i915)) {
> 		u8 first_ccs = __ffs(CCS_MASK(gt));
>
>+		/*
>+		 * Store the number of active cslices before
>+		 * changing the CCS engine configuration
>+		 */
>+		gt->ccs.cslices = CCS_MASK(gt);
>+
> 		/* Mask off all the CCS engine */
> 		info->engine_mask &= ~GENMASK(CCS3, CCS0);
> 		/* Put back in the first CCS engine */
>diff --git a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
>index 99b71bb7da0a..3c62a44e9106 100644
>--- a/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
>+++ b/drivers/gpu/drm/i915/gt/intel_gt_ccs_mode.c
>@@ -19,7 +19,7 @@ unsigned int intel_gt_apply_ccs_mode(struct intel_gt *gt)
>
> 	/* Build the value for the fixed CCS load balancing */
> 	for (cslice = 0; cslice < I915_MAX_CCS; cslice++) {
>-		if (CCS_MASK(gt) & BIT(cslice))
>+		if (gt->ccs.cslices & BIT(cslice))
> 			/*
> 			 * If available, assign the cslice
> 			 * to the first available engine...
>diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
>index def7dd0eb6f1..cfdd2ad5e954 100644
>--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
>+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
>@@ -207,6 +207,14 @@ struct intel_gt {
> 					    [MAX_ENGINE_INSTANCE + 1];
> 	enum intel_submission_method submission_method;
>
>+	struct {
>+		/*
>+		 * Mask of the non fused CCS slices
>+		 * to be used for the load balancing
>+		 */
>+		intel_engine_mask_t cslices;
>+	} ccs;
>+

LGTM,

Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

> 	/*
> 	 * Default address space (either GGTT or ppGTT depending on arch).
> 	 *
>-- 
>2.43.0
>
