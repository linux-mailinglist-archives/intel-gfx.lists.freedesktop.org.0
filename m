Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4507AA1429A
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 20:48:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE36110E02B;
	Thu, 16 Jan 2025 19:48:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OVETAcIW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B2E410E02B;
 Thu, 16 Jan 2025 19:48:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737056895; x=1768592895;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=CeP9Upcz+uDHvAOAA/u/Px8015bfhPSV1uobZ1cCC+g=;
 b=OVETAcIWsmCIOR/XXltLGmlqNJQjVqLmny0FeeowypqNdVQ+qNghlc8l
 3zg73HRqkIKC1XZryJCchmNPFFNmObEiJQ7+8AJ9xai7kNiv71Ixwrhyq
 p2p8nvxnLstNYcojpWNAxkoWXvhlmj38iYf62KzHlpDJe4rnROLr5BLKV
 nbfskOT9wJ6ypAgRpY+/6LYZk5dE2cloBX7HyEG8j7kWCAcs1ScuZv4UD
 xKvnWR6OPF+3SR3dr97moF7grjf4JgVAw6c4FWtbuPKX9pCV23yxhx3r8
 ES8AT8hGbAlo6szs9jmcDS567264POLxdHAloGBn3HgSijt6WQYavXCTn A==;
X-CSE-ConnectionGUID: 4zSyUoMlTGubZvvRMsnEGw==
X-CSE-MsgGUID: tUo3uxtGSCKr7w0uxvPh3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11317"; a="37346579"
X-IronPort-AV: E=Sophos;i="6.13,210,1732608000"; d="scan'208";a="37346579"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 11:48:15 -0800
X-CSE-ConnectionGUID: w0DUriAMQRi9g7baRF4/Ig==
X-CSE-MsgGUID: hRD6Fg5jRGyU9RnGYlY5CA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110224032"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Jan 2025 11:48:14 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 16 Jan 2025 11:48:14 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 16 Jan 2025 11:48:14 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 16 Jan 2025 11:48:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mO4cV3CqbyHv7Ab6QcF6HrZBegaIbtE6/kan8nxXNBaHFmnTZOS0iWJ04tZko0fAY3XFewX3d+1KMchTBtLVZl8DnxmDU3CyJBsvPfvM2bhZWsOMFz7ekD+V/bof/d9IgRzSEPoG/mZkqa+Mu1IOWnk+rWKrC4Vhk4kYG8RukIzsx5pocPcFspJTOaB0wnaIfZZcBbrPXkKwycepPpTezBt4Gbgh1UmCiBe6HvMMPK9Kexms66ddwYEEIjL4F7BG8QYfSCLKhI3UPvGjjJI/r0NfRkrWxSEFkjgTrhvAyFRvKu3j/E3DnlhVYrcypVhH488CzTCPpoqUIc+7I/KUCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jC9j3v3nDYcso92aoxS8GRYeqZ/NUZvDwjaFdl1kCPk=;
 b=G5y7/nGlBJggDAF6lgBPq2B7qtuqT8yh0J+p0YGCga6oSDDPNRP9UIEV5voVgl0LReZse/At8w21Z8MfRCbna1ZXNVk0Q3MDim1SVEYUgZnoPJMVWi0gxC5nFIR2FjSBSpIy9DND38gDYUZVq6a9gxn6kWv6cwSu5qnYfIyGToo2YstzWQnT8zv3bdlrzfk4zXymoMdfYKl7npniazs1VFvHLhl74jFnuDBpRPcQ1oQbDHS0dCnrZw8zfs7AGN7zmx7+ZLODYnALiwpZckwj3Kqkwrc7T9NlFCByjKQG9EqCyYM3Too6w5+hbjgAiTxWSHx0ctBRKQtfgkj36UoTNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB7200.namprd11.prod.outlook.com (2603:10b6:208:42f::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.14; Thu, 16 Jan
 2025 19:48:10 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8356.010; Thu, 16 Jan 2025
 19:48:10 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <173697245092.4080507.2846980537876873973@b555e5b46a47>
References: <20250113204306.112266-1-gustavo.sousa@intel.com>
 <173697245092.4080507.2846980537876873973@b555e5b46a47>
Subject: Re: =?utf-8?b?4pyX?= i915.CI.Full: failure for drm/i915/dmc_wl: Track
 pipe interrupt registers (rev3)
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
To: <I915-ci-infra@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Date: Thu, 16 Jan 2025 16:48:04 -0300
Message-ID: <173705688464.1623.8745302554589099449@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0267.namprd03.prod.outlook.com
 (2603:10b6:303:b4::32) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB7200:EE_
X-MS-Office365-Filtering-Correlation-Id: 85461ed5-5122-4861-c368-08dd3666b4ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SGxHczczejlVWmR0aDZtcS91L1RGQ2NBZktrcFdMMm5TU01abnVDM09LbXUr?=
 =?utf-8?B?MGV2WWszTmJaaHRuY2V1MU5wRldlZ0ZtZ3F1eFBFbzhMU1lmNWgyckZOTGgy?=
 =?utf-8?B?ZkdMSW5qK05zYStGT1RiZGtCQXVoUk10Sk1zYTBSWHE1OTFvekZSdW1OUXV6?=
 =?utf-8?B?R1FwUUFwaWVpaTRtdTJ2dXhTQWpBRGRTY2FrdWhoTldEbEtSWTlZbnp5NDJ6?=
 =?utf-8?B?L3FQWGJCanpxT29MVkNFeGtDUDM0eU5Wc2VleWxPdTFtRlNJSG5oS3g0OTR0?=
 =?utf-8?B?WTFxNm5Vc0lkNUM3RE1EaXNyTmU0Vy9zVXdXTklHMXhWTzJjSlhBbk9NWW0y?=
 =?utf-8?B?Tjhtb3cwZlBQZW9QMmNERk1mcmIwVU1IbFQ1eU5BM3ZZdTM0ZHI2UWFrQkRM?=
 =?utf-8?B?dm9PK3ZkcnhPU2lDR3lkNEt6Zy8rT3llVVBzcnc0RmdYWnFFWmdMQ0d1Sm5r?=
 =?utf-8?B?Tkd1QTJHWWs4T2xnSHgybVliOEtEN3pwN2ZLNWdVR1F2UzM4MzlTWmNhN1p3?=
 =?utf-8?B?SXFWaXgwT0NEc24wZk01RWdqRUhUa0xYRkYwMGtnY2VLYVV2OGlIUlpNU0oy?=
 =?utf-8?B?TEhmdUVnbUNQV05kTWYxMUdveUNQL0czNSs2QjU4Qm40L29mYjdqMzA3VWZB?=
 =?utf-8?B?eDlicklKTHBUa3RGOStXQkZUcG5PZWhLZmthb1Q5Y1dlbjBUSnliaVJWL0dE?=
 =?utf-8?B?cUJDQkVIcnZiRExhcWpDNm5qZEFJN3Nuem1xc0IwNXgwejJFQ1Z2OE51NDVU?=
 =?utf-8?B?Tk14Y25kSzAzRnpsdzhuSFNYM3JISlBRM0ZTK3hzanR6ellQZHVJalFjSkNM?=
 =?utf-8?B?RHFKenVwOHNPYmpiSHFvSWNrc1RjV3dUUEdJaGVhdDRORzZYL1NTQlJvbncz?=
 =?utf-8?B?c0JRelUrZnFVR2RxT2p1TFRzU29SQ2NCeXhXemxWZjNNSlhRN2w5YXRxbWRI?=
 =?utf-8?B?emt3VjhrcTRITG9IeTNYem94MkpON1pJbWZUWGlMaHN0VXNKTGszRXMyOTFo?=
 =?utf-8?B?QUJtUEdGNjJOdjdzcUtldWNQL2N4MUFNL0hFdnBiSjIwajBvMFFBMUtXRGRK?=
 =?utf-8?B?eUdZMUNhNGpzQ3dhaTNDdFJYb2p4alNNQndOZFpVZ1RCOFdBNmNkWWVyUmhB?=
 =?utf-8?B?bTV0Y0k5T1JQQXBZaVk0eThMS3YvbVdlZnAwZ1d6dTVSNEd6aDhYYmloeXZo?=
 =?utf-8?B?cXRoTDdhRlV6VTlBVTVvaVFDOWdtTXp1WHN2V29NajZWaEZ5WHVrRmIyVFB4?=
 =?utf-8?B?a2E5Ry9mL2R6K3NBeUpjZTFEY3Q2T0YzY2ZvNktBV1RBZHErNWxDQ0s3Y2k3?=
 =?utf-8?B?OEpNZURJUS90M2dhc0d0dm00ckx1Y2RxbnV5RVlJSWkyY3YrZE5SakJXSkE4?=
 =?utf-8?B?clBzV0JRdmxSMVdFUmEyWGRoRDRGdk5qUFlGbzJLNmZPcUIxUGFVMGFTV0NZ?=
 =?utf-8?B?UmozK1lQRkE2Vldvd0JMTVNLeDdIektEd2cyK3JvdE10bi9SU052RjFqckdP?=
 =?utf-8?B?eWh1Lzl4RlZNWXZxaXMvdFdHMjJLK0V4UUhpdzQ1U0VjZHU4WG05Y1pFN2xw?=
 =?utf-8?B?a0J4aWNOQXNEK3MrVjVVa2VWTDlMdUxZQXV6ajVHakJ6OFRCcGFYVHBlZDQz?=
 =?utf-8?B?YU93Tmc2N3YvanZTYit2MzVsWkk5VE0xL1RtOFRtZ3loMmQ5dEF0UEg2cFZ3?=
 =?utf-8?B?bmVXN095WGRRQ3UwcUg4dG1WZVFGN1ByTWJieFdOQzQzNWZTc2hRVVdyQmN1?=
 =?utf-8?B?NkUrNWNKeDRjRHJSNmVnM2pIcDRtQWZ3Wmc0SkMrcHp6R2tXL0c0eW9YMHB5?=
 =?utf-8?B?dFNmOVZjalZlMGE2aStSUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K2hUYWxFREpmUm00a0l0TlhyeE9DNVNmYnR4ckFOVURncWVNbnBUdGtPb3RE?=
 =?utf-8?B?VlNvZVc3Y3lrbGp5NlIzY09CbnJGL1RuZ1gvWEw0Z3NVSlBxc3JURkZJVm8r?=
 =?utf-8?B?MDd5OUU3YmNabEJPcW1mUTFvOWhqQXQ0Mk1lM3hrMnYzWVFBT0ZYcjEyaFND?=
 =?utf-8?B?ZnBqWTd0cGh2MnNaZFo0a1VZSFF1Y2xSdEZyRW1LNEE3MCt6OUxsbU9hbjJM?=
 =?utf-8?B?b0g3eUhHSWIzbmMwelJVdGsycEZKVE5CVDN0dWo4WjRyMTBKcHo0bnkwZnRa?=
 =?utf-8?B?dEo2U2hwOEN4ODdBVjhha2FmMk1BdDkwTFUvSlc0MlM2K3RDbU1maFdVSXAv?=
 =?utf-8?B?aDRTSUhnS04zYlVDb0hUbFNBN1lML0l5dG1ld25FZi9keGxIYzEyak52OTNn?=
 =?utf-8?B?Y0QzZnpGeDlKK3ZqZEZER1YwYkZIYlh0ZE03RHlKNVdzWnRWcjBCVFJGalh5?=
 =?utf-8?B?Tk1vc2VWRXhYODd0VzhVUnBycXpSanpDcXl0Tk0rYk5STFpyUkc1Q3NGWElH?=
 =?utf-8?B?SGRqTVJ0K2Q2dlMrRlZjS0hlSFhsbWtidzJqNlBFVTFVb0JDNnV1Y0ZTbFVH?=
 =?utf-8?B?MnRpOGdUakZUR1JYbVJRNkRqb2VZbnV4SHo5Qm9RaUxhMlFQRVlEeE1relFa?=
 =?utf-8?B?VVVZUERRWHRIMy96d004Q0VJNy8vaEc5VjJFS2tEZ1hkbUVWNFB6dnpDYlN1?=
 =?utf-8?B?SGxSbnA1eXBHL0prQ2x4TUk5SFk0M3NSTVJoSmQrL01LSnA4dWJLVWF6K29o?=
 =?utf-8?B?Q0d1eGlrZk53cmpWdzJqeERNQU9WQWp0cnlLTzhZN0llZnZwckNQQy9pdW9o?=
 =?utf-8?B?YmpuclE3dU5wa3QwM256RDJBOHRnZ0lXQ1dWZ1dHb2RDci9uZHNXelFpR0xn?=
 =?utf-8?B?Z0N6SEVDK0NsSkx4d0FHUm1aMGNxRnFyRi9tOEpZdjdPUUVQWGwrU1BlV2xY?=
 =?utf-8?B?azd1Wi9qVWJoL0QrVjlmVTJnZk93RjZ4dUZ6eTQzZmkvQnZndmxIbVBGdkVV?=
 =?utf-8?B?M25NWGg5cHgzV3M3clhDaWFZcVJqM3dzdEFremJ4QktOelV0Wm9Lelk0ZlMr?=
 =?utf-8?B?Q25YYTFIOTVqYTJvS3pBWGRUbDNoWUVaWkFwRUtoamJhUFFDSzhjYmlXSncv?=
 =?utf-8?B?VkgrTStmYVpTTlNnWWp2SU1rUXQwdWMrZVR3UE9ONUlFM0prMG1TNkVJMkVW?=
 =?utf-8?B?N1lxUkxnQkpYSHdYb0UrempGNHlCVHRvZnVPQWd1RS9BMTc4Nm9CT0F1Wk9O?=
 =?utf-8?B?eTBOTm9vWWc3Z2drVjNiMThpT1dOS3RvVjlHT096a1c2TUY4dEg4ZXk4cmZX?=
 =?utf-8?B?UDBsaStpVlk0SlJzSUExRjl5VmxreWZaYmhCUG8xT1M3MEo3aTEvRHFuVmxi?=
 =?utf-8?B?dk5ON0hYVGg3QU5jd1pjQzJDM0dCK2x0b2xHczRzaW52cCtvbDBJM2lCcWhT?=
 =?utf-8?B?Y2hDRHpmSE9MZXoxODVnSE1ESzVQQm5qdXAzUUR3N0ZlakFKTXVvNlNpZ0da?=
 =?utf-8?B?b2p4SXpPenllMTBnTUxDbWZ3SnNUREhQYktpaExkY2k1QXQ3QmhueUZxUDk0?=
 =?utf-8?B?dytoWmdNT09NMTU0Um5sclpFWTN3Y2FOMGx1azJMd1hnNmJHa2tqbnZVRVZp?=
 =?utf-8?B?djBsem9kWUV6RHE2Ny95NlRBL0pyQ2tDcXJkTGxINkgzWHlSdXFyenhrSXZ5?=
 =?utf-8?B?RmtjODZYaVpxMWZiVjFxQ0VWTm96OE95VTBhaEtWek5qN3p2cEtHd0NqSnc2?=
 =?utf-8?B?SThrNXZvTmZvT2hrR01CYjFGUEx6ZjdlMElZMEVmeUVpcWVmcEV2Wm9hWWEw?=
 =?utf-8?B?RHNpVnNrbmJlUlJ6OGxtS3l5L1FYQXR1V0tKRnhsalJrNjU1UzdBZnFXYlBm?=
 =?utf-8?B?RDhXU0oyaEpkUjJjbzRCWU82UCtOU3AxVzlFZjJQa0xkNVN0M2RNenFNWGlh?=
 =?utf-8?B?d2FTTFZMQ2FoeU4xWFpJWG1JMEVESW1YaE4rckRiWCtjeG4wVHB0eEhjcDJP?=
 =?utf-8?B?QlNaUGNKUkE5cGx4LzJZZldJdXkrVGdGdlVWV0h2U0FYeWhNUDFGUFhmNHc3?=
 =?utf-8?B?Y0NtOVh4RE8xSDRUK1hBeXNlb21BbWU1RFVjMUpsZWpxVkQ5MVJSejk2ODVa?=
 =?utf-8?B?am96S1owK3c3d3dRNitvZ0pTdmlBeUlQeElLN1dYRHNIL3FSUnA3UHlpWEY3?=
 =?utf-8?B?Zmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 85461ed5-5122-4861-c368-08dd3666b4ab
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2025 19:48:10.4320 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5Ppz5e3EV+mY3Oeq3BjgZvqsrVwGVHnSDaKD2Obtth3K7wXMjSm0DsRepizWGEOLgnjZKsr7i+WQLbKAYtCkZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7200
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

Quoting Patchwork (2025-01-15 17:20:50-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: drm/i915/dmc_wl: Track pipe interrupt registers (rev3)
>URL   : https://patchwork.freedesktop.org/series/143104/
>State : failure
>
>=3D=3D Summary =3D=3D
>
>CI Bug Log - changes from CI_DRM_15950_full -> Patchwork_143104v3_full
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_143104v3_full absolutely n=
eed to be
>  verified manually.
> =20
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_143104v3_full, please notify your bug team (I915=
-ci-infra@lists.freedesktop.org) to allow them
>  to document this new failure mode, which will reduce false positives in =
CI.
>
> =20
>
>Participating hosts (11 -> 12)
>------------------------------
>
>  Additional (1): shard-glk-0=20
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_=
143104v3_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@gem_create@busy-create:
>    - shard-mtlp:         [PASS][1] -> [INCOMPLETE][2] +1 other test incom=
plete
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15950/shard-mtlp-7=
/igt@gem_create@busy-create.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/shard-=
mtlp-2/igt@gem_create@busy-create.html
>
>  * igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1:
>    - shard-snb:          NOTRUN -> [INCOMPLETE][3] +1 other test incomple=
te
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/shard-=
snb1/igt@kms_flip@2x-plain-flip-ts-check-interruptible@ab-vga1-hdmi-a1.html

No useful logs found for these. Furthermore, the changes in this series
are about using wrappers that call the original functions, and the
wakelock get/put calls are effectively a no-ops for those platforms.

>
>  * igt@perf_pmu@module-unload:
>    - shard-glk:          [PASS][4] -> [ABORT][5]
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15950/shard-glk9/i=
gt@perf_pmu@module-unload.html
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143104v3/shard-=
glk2/igt@perf_pmu@module-unload.html
>

This abort should not be related to this series. See some examples
already seen by CI bug log that could be related:

https://intel-gfx-ci.01.org/tree/drm-tip/IGT_8182/shard-snb2/igt@perf_pmu@m=
odule-unload.html
https://intel-gfx-ci.01.org/tree/drm-tip/IGT_8179/shard-tglu-7/igt@perf_pmu=
@module-unload.html
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15951/shard-mtlp-5/igt@perf=
_pmu@module-unload.html

--
Gustavo Sousa
