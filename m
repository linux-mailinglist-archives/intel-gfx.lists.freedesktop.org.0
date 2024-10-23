Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC6469ACFA1
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 18:02:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2866610E0E1;
	Wed, 23 Oct 2024 16:02:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Asnqvmfj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFE5210E052
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2024 16:02:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729699321; x=1761235321;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4WsGDYbBGTrnPJDwf5oX5CM5lsqs5iGDCEL/Rfp5L3E=;
 b=Asnqvmfjjb2U9JLH3KOea7rii719GwIbzBvdpQP5dbh9vvLJtnTn24c4
 GNWMvZNbvoaZFJkTOvQI6NbKOYAVTxDbjfe9cAMqVic2/3TesMdjw9i0i
 gZYTYcLhOhJGl+15Zdfr/UMgty+Tb+eq1gPLIve5snvV0f5UsC5S9EFXe
 tiWT73jxSGNp4RFkNDz/ILWvbSTfITVtiC1w6OTuxR2vTF+9hi/nQfKrO
 ReoRQxToqSo0+Nv0FiSPI/WhpBcOd+RhKn0jybpP2UFc1uMwyNxTOG8aM
 BuErM5iT2HSYptC3u3c8FN9KWiXAwRDPoLVaKOispypkFwGAmJtrbTDmU Q==;
X-CSE-ConnectionGUID: uCpnJmw6RCC1fXufC2cdTQ==
X-CSE-MsgGUID: +1+d9ZRQQvOBX+NFNFX0JQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="32153127"
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="32153127"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 09:02:01 -0700
X-CSE-ConnectionGUID: Y34bIpjKRUuzG6BxKJJ/PQ==
X-CSE-MsgGUID: rKMAKjWcStyxef9UXw97Mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="80188251"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 09:02:00 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 09:01:55 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 09:01:55 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 09:01:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qJcO5OojbZ7X08BPoRucas8bm/nDdxTqleRozZdknwYLqgSl96lyUPwLSjqagL3iDdEaqUaCssRUksRMSlFiEcFUh19Awo3+KfFw1WPnXe6laSaKi+GFiVgu7IiTp5B8jAwQPGV41kg2zDPUpXHLc3phrALz26EPPnYYruKLcPC1LfuSo3Htyc05wRG1mQD0SDTLzn6U4qwhtS/3Ne4BQnmwaRcgkkfS3CKAjZ23YDPFuFPNfRuV/UFlHx1P+u9rEIv2sjHe2lOCjIuedmG7HbCdUGiNn4kQ1aY0ckJ8MDv22eFhyR4wBzLJE2syNBskvBGNLxLRwVlDbuHTW0bmMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SoT3xYpJMUXEviN/+jeFQBtA2uDwBDmYuU7kI1b+cxE=;
 b=nQm3YuE2qqUAX20vObBJ/GJYTNZdvsI7kcJ2zLyvzUfEIWjjsXvRJvPgyKmLNa3Dy5VTodPWNsvjSaun7IKr+/Nk2u227tIka09hrJBpjVybbOl/9K7pGZIPc3U+kSOWbC37GyimCTeNeOf7wb4drXjhXyAQU9nksYY1CuoYowGmOtgZrB3al+E9Jl+yw0PIpH5lx5cic9OoPMCw8iLR+G7L/KQVgGtZmzHrF5r64OgkmU6PcunlTnLdBheKoc9egXOthXuh5lVremCig2zqAShzYoWwkPYF7vg91Hoo5PcZP05frL1aIuSqUtsV2+TrSnR0zsLGjUAUnZ5cVc2U5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by SA1PR11MB6893.namprd11.prod.outlook.com (2603:10b6:806:2b4::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.29; Wed, 23 Oct
 2024 16:01:54 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9%7]) with mapi id 15.20.8093.014; Wed, 23 Oct 2024
 16:01:53 +0000
Message-ID: <3416b828-2040-4deb-8df7-e5a0e7db51b4@intel.com>
Date: Wed, 23 Oct 2024 21:31:47 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/rc6: Disable RPG during workload execution
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: Andi Shyti <andi.shyti@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <anshuman.gupta@intel.com>,
 <chris.p.wilson@linux.intel.com>
References: <20241022132226.1110383-1-badal.nilawar@intel.com>
 <Zxeoi1baLtbqDKIr@ashyti-mobl2.lan> <ZxfcPLgi8tmLiomr@intel.com>
 <c94a44fc-0211-4b83-9faa-cb8d0765f76e@intel.com> <ZxkMo6BVeb7xvhs2@intel.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <ZxkMo6BVeb7xvhs2@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0063.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ac::17) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|SA1PR11MB6893:EE_
X-MS-Office365-Filtering-Correlation-Id: e21098a6-23ae-468d-1c27-08dcf37c030a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YUZRNlJNRlJDbFJYZjlraUZmRXZOSS9DQm5IYUVoRFU3MlkzY0FqRzdLM2pL?=
 =?utf-8?B?b0p3bk9LYWo4SUlFT2cxVTc3WXBsaGlsK2NtN2Q0ay90b0RZeXRFVzQ2SERX?=
 =?utf-8?B?NjJ6ZXFaeEsyZmJjampabXJqemJaMTVJYkFxd1JKd2szSTNkSWxwVHpJSXVn?=
 =?utf-8?B?ekx1ZHJOYUZ4dEdzMVZtUmR4RnJYWUs5bm8xMGFPdTJvV2xqUWF6VEZNeVov?=
 =?utf-8?B?VnRkTTlRaFFnRlgxWEVVVUZrVzllYm9iam9ObDlXTkYvblRFT0lhWnZTTWhK?=
 =?utf-8?B?RzlCUVEwRzdrM2NwOE12NUVJSHoxUjZoa1RYc3BXSFhiUFlvWlVPQUJNd0tK?=
 =?utf-8?B?dlpWVVhldXlXOFllbWN5TEkzTVZWUjB3ZkYwQ2xwVitMaW1xczQ3SUxJK0hO?=
 =?utf-8?B?cStRZWdrVG9IemRlbHZMc3ZhaUowbUJDYzhPa3YzOXNJV01iWXV3M3hiU0I4?=
 =?utf-8?B?MS9TWll3VG81VEtDTEhwRUlNRWpsbHFUWEM3eTR1Z3EzQmVRU0VkN0lYb3NJ?=
 =?utf-8?B?S0JaNHFtQ1hRampmZU5BN3NUNkNQYXFScnFEOGZRSlg2Z1pmQlYvS3g3RGpP?=
 =?utf-8?B?WDdYRlMvcDE0Vm5Ebk94SHViMUVMdGxTTFUvWmh2eXZuamVZT2g2Vk43K1ha?=
 =?utf-8?B?andrRkx3WHFyYlk0N09zdFdzSyt2LzR5UWFNb1QreGNpYXplRGxLUXhpY2Ey?=
 =?utf-8?B?d1FtM3Q1aFhNWUVmdW9MUU4wWFdVY2t3THlaTWd0MTBYV2VGQ2xtdkcvMm5J?=
 =?utf-8?B?azFXcklVVXEyY3B3WEt4U2g5UE1Jai9vVXY1TXZlK0hwcVNmSEk4d3FrN1RZ?=
 =?utf-8?B?VE9nM1RFQVJUelFyMXZ0MFQ4MWxMTTJ6NDhiSkRjaGU0cnBYWWVNVnIzMzJV?=
 =?utf-8?B?Y0JIN3ZqM3VYL09lcEtZQ1AvYUJKandMZDBsbmt5L2VncVpJTnVZZ3J3MUhD?=
 =?utf-8?B?a2UxamZ1SXo2WnBWUFVyQ1FGbUNTbjQyc09IY2ZUR0Zmdm5aeGl2QVpKdmhx?=
 =?utf-8?B?ek9udzYrUlFHaXNZWnp3Tzk1dnlKVStQKzlFcDIxK3MxNXU1OWFLaEpiY0xD?=
 =?utf-8?B?NDEwdXFHWk8rditJZndrN0xPenU2N0pLd0hwZkIxbFljbytzOG04SExrZytq?=
 =?utf-8?B?SC9OTTI2TGs2MXFCZjdib21GOTBYVjNBRE1HcS9LUXpaeldQem1zM25iOHpx?=
 =?utf-8?B?T0RtaFh1Vk1PQnd3TDlNUHdVWEJGTzBvTHBVTFNEWHRwQi9FVlY3R094TTJK?=
 =?utf-8?B?VnVRMXFzYUdvdGZ6d1ZyVXo0d2tYeUJuRmVBTFo2Vkh4ck5vZ2xPZnluRUNJ?=
 =?utf-8?B?MjNYVHFCbDNvbXJYTmwyOUlFZkFzOGxnWDJ0WEFZWFN2ZGI1Z2lXUjlrSUpK?=
 =?utf-8?B?MGt6MXFxT0l3eTgvQzQwcG92R1lyaDg4YVlqcG5hUkxpZWdudVI1M2hmNVJQ?=
 =?utf-8?B?a3doclF6NWpLeWZwT2Fjak5pNHczYjJSZ2MyL2E2MGs4Zy92R3N4c3ZjeFNU?=
 =?utf-8?B?RGQwN214UXhhSE5YVE04cFVibFUyUDFzRk9OUjVDRDd6UkFUQ1BOU3VhR3VP?=
 =?utf-8?B?bG5EbHRpWjlRRHRGczVaeFlVWFVEbVJFdzZpSFVOalI2RngyeGNQUVpCRjVI?=
 =?utf-8?B?eUhTWHJ6aVNzUmgwdVh0bGgrN2tMYzV6ZHVvU24zWXgvMUFJc1FtcWVBaEZB?=
 =?utf-8?Q?bb+yLveJbOiH3o/3lSM/?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cnVzL0J0MWlpQnVpd3VzVTltczdzamVIdklKa1U5V010K1NiR3VSVzk2MmNC?=
 =?utf-8?B?ZHlqRjY3eXR1R2FnVTg2WkdyUGVSMVJLWEp5SUV0elErWi9YeTJZK0R1bFls?=
 =?utf-8?B?N2Jzc1d2bHJNWjVaRUdSd0MrOTJTdDloU3dzTGhhZkFzckI1bVQ5QnVyRG5o?=
 =?utf-8?B?Y1dvZDl6Y0docTRHeUJTbm1qdVA3d2pYcmRZZHd2MTU2WEp6cEZSVG5LaWdH?=
 =?utf-8?B?OU5WbGlkT3VzYjg1enBCT001K3lyV2ZzWk8vbVJVb2R5UnZpRTVENXVFNDVT?=
 =?utf-8?B?TjdkZnZvQlBxQVFMY1o3eGVkaFcwWHZnTGpPRWFUR2tUNFAyZW45cnorTkl5?=
 =?utf-8?B?RWFQUEt0cG5rU0hEYStLc0xWa3I5MHdxWFFwY1pLUmZ1NGpBMEFtMENVZDFR?=
 =?utf-8?B?RVlLc25HMC9MRkNuWXJKbHJBL3JORSt0WStwaGlwRjh6c1VxVlNSdUxJRkxk?=
 =?utf-8?B?ZWZqYzhpUkhOQ3RteU1Zd1QxWXVpdWhrQTNRY1hkRjRmREdXdnVFNGtBQ3lv?=
 =?utf-8?B?dGhmeW1uNFpWSnVXMkp3LzZpL1lBakVXeEJTOTYxeWZZdHVPM1VYeGtrRldp?=
 =?utf-8?B?MjNTdVhwRzNKUGd2R0RFRnp0Z2twaDd2RmJOeTJuenNid1ZQblcyOHNDbUJ0?=
 =?utf-8?B?cXBYdmNxOE0wR3BjcGRTRkxIdXhkcWJNdFFWV2VQRXl4ZDdZTDFRUk5EbHBD?=
 =?utf-8?B?QmYzY0l6VDdESU8rQXd5OFdvMjYwT1ZjQnJ0VVpsS0hNV0YxTFlheWI5cERD?=
 =?utf-8?B?MEYvT3N5MkRzWUN4SHoxMUZiM3FsRkV1RzMvOUVvTW5RM3B5cVd4UXZ5Q0JN?=
 =?utf-8?B?V2wzWUtYbUlNNmpEalZNWnJLZzFIWXVoZzRTTUQwTm1Yc1Zlbzl4QkN4dW10?=
 =?utf-8?B?aE9oSjFQMDRCODIzSnRkZzc1MXF4akVTODVzMEFUb3JtTlEzd2dKQ2NOaHN4?=
 =?utf-8?B?WmEzd1dvRDltTEQ2Q1pCTU9XSk0zU3BrbDNKQ1dYZHJVVjdXVTNhNnRtNW4z?=
 =?utf-8?B?bnNQRGJwY3BySUlKdmFHWlNMVlJyODZFclpKdk05cFZBbUVXSURES1cxWDUw?=
 =?utf-8?B?d0RtR0VKOTREeTVuRTlXSExkUXY0eklSY0NCTFRHZGJTMTF5Z2NmeVNEUXRh?=
 =?utf-8?B?VzBUekRaUm1SSXBJbERuQi9rb0lQQ29oMVVPVGhEOUpWVm1zb003YnhzY3Zz?=
 =?utf-8?B?dEdGbGZjc0xMRzZvUi9Ma3B4aXJRNmFHNSt3QUVtcVgvdzhjUXZzVE5KcDhs?=
 =?utf-8?B?V2poeTYwc3UrYWR3dDdtTUttOG8xR2lLQUc2dXpGc0c0VnZQMmFoVHd1ZndZ?=
 =?utf-8?B?Uys0MnNzdytBNmZ0UEg5L0pvbGt4MXQ0ODRkbUlweCsvcVJ6MFVKTVhmZ3pQ?=
 =?utf-8?B?TmtZeW84OWRPc2YrOWRTN0NaeXJNc1g4SDNSV0I2YUs5QUZGSzhGcDBWRFNu?=
 =?utf-8?B?ZzR1VkQ5MUM3MkN1YzNmdGhvcXRYYXM1aDA0Q0ZrbjFTWEZHdyt5MjFtalFG?=
 =?utf-8?B?ZzhqdFZoeTlDQnFmd2NRakRvNEJBMFJZa3UyQmZPd2NGL1FIRTFwZGxKMXQ1?=
 =?utf-8?B?amprVFlJMjlCOWtuWkZsWkRKTm5HdFJtVWY4TWE4TWFFN0dnVno1UTlaaFVq?=
 =?utf-8?B?TlZSaDJpUE1TRElING5xNGk2RmM3RmI5RUlLZVNhV1IvME94a3ZueEIwMjFv?=
 =?utf-8?B?SjZFVEVoV0lZRTV4ME9NQUZ2UlR4Y3Vic0hXcWNYOGtORkh3WXNUUmljVjZa?=
 =?utf-8?B?bXpJMGVTcXpsS2Jma0h6bG81MC9xYlN6eXpQMURrOTRFaGh2MXFDN3dZbGdq?=
 =?utf-8?B?bWZWWUl6eWRVdG5nV0R1UXY1MGljdGNmT3lwdTdTS1R5STBEd1k2UUMwTk5v?=
 =?utf-8?B?bXBjY3FCY0tYOGxxdWZVaHZBd1gwMGdZY0FUQUFBaHFKRlJ4WW1DbUhSSWFl?=
 =?utf-8?B?cFBvdDE0eHhIRXVmMUtOMjVSYWxEZEVNaTZjS1FRQnpGUm4wK3VFSXQ2dmhP?=
 =?utf-8?B?QzVZZWppb0lDZE5XZGRzc0RFRU56TjIxQUZpZ1FtYm1UYnYyaUtOcHdORWww?=
 =?utf-8?B?aFphM1R0NHNjUUp0RnE3TjY3WFJTcFJZNldXRG4zQ0hoM2g0SkZaRmY1b09j?=
 =?utf-8?Q?2r7hfkE7ZbHVLBi4K3i9kndJJ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e21098a6-23ae-468d-1c27-08dcf37c030a
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 16:01:53.9044 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DBqXrQhJGs9jIxItdki12u/VVKy88T6X0lt3KVZUQrx1NorU8a6g3L9Jf0H8V0OoOkdDZpZk9k0cSMC2LGtyjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6893
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



On 23-10-2024 20:18, Rodrigo Vivi wrote:
> On Wed, Oct 23, 2024 at 11:03:57AM +0530, Nilawar, Badal wrote:
>>
>>
>> On 22-10-2024 22:39, Rodrigo Vivi wrote:
>>> On Tue, Oct 22, 2024 at 03:28:43PM +0200, Andi Shyti wrote:
>>>> Hi Badal,
>>>>
>>>> On Tue, Oct 22, 2024 at 06:52:26PM +0530, Badal Nilawar wrote:
>>>>> Encountering forcewake errors related to render power gating;
>>>>
>>>> Can you please expand your explanation here?
>>>
>>> yeap. More explanation please. All platforms? really?
>>
>> We are seeing Render forcewake timeouts on ADLP, ADLM, ADLN, TWL, DG1, rpl.
> 
> Is this a regression? or a new issue?

This is old issue, first reported year back.

> 
> Is this happening with Xe on these platforms? or i915 only?

i915 only. This is not reported on Xe kmd.

> 
>> Issue disappears after disabling RPG. Instead of fully disabling RPG I am
>> disabling it during active submissions i.e. during unpark.
>> For MTL and ARL RPG is already disabled permanently.
> 
> uhm. Interesting. Why that is disabled on these platforms? 

 From commit log its temporary wa to avoid fw timeouts.

perhaps we should be
> doing the same for all GuC enabled platforms?

I think so as temporary Wa.

> 
>>
>> Impact of doing this change should be performance improvement so kept for
>> all platform otherwise I will add platform check.
> 
> it could cause power consumption and battery life regressions. Better to filter
> per platform.

Sure, will filter per platform.

> 
>>
>> This is the issue https://gitlab.freedesktop.org/drm/intel/issues/9413. Will
>> add it in commit message.
> 
> Next time please include the relevant links in the commit msg.

Sure.

> 
> Thanks a lot for the info and for working on this,

Thanks,
Badal

> Rodrigo.
> 
>>
>> Regards,
>> Badal
>>
>>>
>>>>
>>>>> therefore, disable it during workload execution.
>>>>
>>>> ... and here.
>>>>
>>>>> Cc: Chris Wilson <chris.p.wilson@linux.intel.com>
>>>>> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
>>>>> ---
>>>>>    drivers/gpu/drm/i915/gt/intel_rc6.c       | 18 +++++++++++++++++-
>>>>>    drivers/gpu/drm/i915/gt/intel_rc6_types.h |  1 +
>>>>>    2 files changed, 18 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
>>>>> index c864d101faf9..459394ab5258 100644
>>>>> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
>>>>> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
>>>>> @@ -140,6 +140,7 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
>>>>>    					      VDN_MFX_POWERGATE_ENABLE(i));
>>>>>    	}
>>>>> +	rc6->pg_enable = pg_enable;
>>>>
>>>> this looks borderline racy, it's fine only because this function
>>>> is called during resume which normally runs in atomic context.
>>>>
>>>>>    	intel_uncore_write_fw(uncore, GEN9_PG_ENABLE, pg_enable);
>>>>>    }
>>>>> @@ -572,8 +573,11 @@ static void __intel_rc6_disable(struct intel_rc6 *rc6)
>>>>>    	intel_guc_rc_disable(gt_to_guc(gt));
>>>>>    	intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);
>>>>> -	if (GRAPHICS_VER(i915) >= 9)
>>>>> +	if (GRAPHICS_VER(i915) >= 9) {
>>>>> +		rc6->pg_enable = 0;
>>>>>    		intel_uncore_write_fw(uncore, GEN9_PG_ENABLE, 0);
>>>>> +	}
>>>>> +
>>>>>    	intel_uncore_write_fw(uncore, GEN6_RC_CONTROL, 0);
>>>>>    	intel_uncore_write_fw(uncore, GEN6_RC_STATE, 0);
>>>>>    	intel_uncore_forcewake_put(uncore, FORCEWAKE_ALL);
>>>>> @@ -687,6 +691,15 @@ void intel_rc6_unpark(struct intel_rc6 *rc6)
>>>>>    	/* Restore HW timers for automatic RC6 entry while busy */
>>>>>    	intel_uncore_write_fw(uncore, GEN6_RC_CONTROL, rc6->ctl_enable);
>>>>> +
>>>>> +	/*
>>>>> +	 * Seeing render forcewake timeouts during active submissions so disable render PG
>>>>> +	 * while workloads are under execution.
>>>>
>>>> Can you please improve this sentence? If I never new about the
>>>> issue I would be a bit confused.
>>>>
>>>>> +	 * FIXME Remove this change once real cause of render force wake timeout is fixed
>>>>> +	 */
>>>>> +	if (rc6->pg_enable == GEN9_RENDER_PG_ENABLE)
>>>>
>>>> is this supposed to be "pg_enable == GEN9_RENDER_PG_ENABLE" or
>>>> "pg_enable & GEN9_RENDER_PG_ENABLE" ?
>>>>
>>>> Andi
>>

