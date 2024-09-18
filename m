Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC3897BC0A
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 14:15:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E02AD10E597;
	Wed, 18 Sep 2024 12:14:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G69Dzgm9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC53510E58E
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2024 12:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726661699; x=1758197699;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=z9YxAe0F/hEk8DRfAvA+sKh0xNpMaqatJ+oLU4NGItc=;
 b=G69Dzgm9s2q5OwEnv6Z58PALB+nGx3vemv5SDPCVIqbYieuTMObtgKd+
 h9ODF+J7jYLIof7FL09oLhKwYWDLQBRJV4chRC3b8CDHJvXuAnIOuFMuu
 gCEM91KlcxBpj7Ylky6Nlz4GFMvAQyF/iikWGlyGCwNIBnrH/gzV/zGkH
 3xlF7Hz3aqibGDpXlKfLaE3mrtsYvuKM7hZeZ8Gn9Hd4GblJtyS+cEhxN
 NTkCrpi4AOCD3/6iLN/UOBSF/8TI/pTlkzsd4w46tcLmHqDpqZLe0wvpH
 0tU8mwBH/KTCZuDBdwU9AX92OBKYXhEyikgx/XfNxwStm8VFZLwfopLPF A==;
X-CSE-ConnectionGUID: 2yRFOEE2S2yTXui404C/zA==
X-CSE-MsgGUID: JfPoiWbpRkS6hT0KVXy2Eg==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="36929775"
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="36929775"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 05:14:59 -0700
X-CSE-ConnectionGUID: JN3DRF+aSZil3AB00GRThQ==
X-CSE-MsgGUID: 6EqZUQpIRaGv4wwZye6u9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,238,1719903600"; d="scan'208";a="70348261"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Sep 2024 05:14:58 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 18 Sep 2024 05:14:58 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 18 Sep 2024 05:14:58 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 18 Sep 2024 05:14:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aVNtjpeBodm3vJQ7rCXiBfMXR1NqPjQyg28hNcTkkKCmXqG7ijLKKqJuMluDGUbkPmb1ic51d9yYVp6zaQIZPvE1TToQQF2COzJBwxbbMelSYu5qKCs1kJelnKWwYwfLcIp2rmrOpKPSeh9KqyZSs0EVNu2Gquij0xO5Hw3qvulDtc5FW7b6ny824ER8pJwlEMXeQGfd2fjvkAE5tVEqnxTWoU3zoFDQv1DbG/G2eKqMa0ukufaJaa2dDl1UPJuhYSCp6e2i0P96AtCQKMtFeMAp32nh/RVC+8blaMYhLLLJGRjsb6eHNC4yK/e5Dm0NDUahALtsOotwK1BEgi+ANA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oFYN+5G26kF+4Gdw+of4UWt7n5Z2LWCc1n4Ol+14oCo=;
 b=DrvAUPT04QhBw9JmIEqOQPfJmrH0Bcl61RdyO8FjjiAFCJ5jpZ9BfswyTTrI1FBQTd3OwYXq2ITQqeHpBkoQs1Cd9I0dhzIl5IOYyAXrGJwRS3T2OnJd/f36XFzaMVAimGYt6mgpPQygMD21L/bcNdIb71m4+CXWeZfiYOHQotleKR6UEzbJ/8bM5PQJ95zeve2QmiODPdQkrCWySQNl51V9XxLBGRRXs87WTNDLcQyQCDyAsh7taMUtfzrYB24Dnp1+ngIGl3fQqizXhM47kzbPpdTLxWyHYxoZJCxeShJoQc5x0c/PzD4GXUK6o0+xrwnIEKvDN/uI8dAAPCP2RA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB7632.namprd11.prod.outlook.com (2603:10b6:8:14f::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.26; Wed, 18 Sep
 2024 12:14:55 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.7962.025; Wed, 18 Sep 2024
 12:14:55 +0000
Message-ID: <7b863191-adca-4389-92ec-c47fac4c20e9@intel.com>
Date: Wed, 18 Sep 2024 17:44:48 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Check whether platform supports joiner
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <suraj.kandpal@intel.com>, <ville.syrjala@linux.intel.com>
References: <20240912132931.1320686-1-ankit.k.nautiyal@intel.com>
 <87h6alf0w7.fsf@intel.com> <875xr0g9z4.fsf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <875xr0g9z4.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0075.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::16) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB7632:EE_
X-MS-Office365-Filtering-Correlation-Id: 91b8f798-95aa-4526-b36d-08dcd7db8174
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WEFRZW5sbzEyTGkzVEJBcWFFSGlDbkN1eFI1czZ1RVRFc0lYb3ZzbFZYUnFy?=
 =?utf-8?B?L2I1ZCtMTkoxRGQxOG9HTTFPOGNLMll3WkU2RHU2Zkg0dkpyK0loUVFvaUh5?=
 =?utf-8?B?TEhNSWhiVU1rQzNIRTlMMHNaWHhsQmFvQjJrNTZvWVUwNVJhQzJ4TXBTTXVN?=
 =?utf-8?B?OGxTRU5GQmppSEFFRjBCZ09hYjBlNnNvbmlaMDIxZnJ1WDJkRUlYbWgwRlVU?=
 =?utf-8?B?dXhRaVc0ZkZoYURsSmJQNk83VkhLS3ZJc3V1NlAvSnVVOE1sRE1wSUE4UWZz?=
 =?utf-8?B?OUV1TGVlQlFHN2djUHNUclZvU3N2bjJoQnpDcEkrakpIay83K2xFb2ZYeGV2?=
 =?utf-8?B?QUVpZ2ZEckRCNy9pdkh0WFRuSzZPdlkzZU1IZjdxUEZ2U2MrM2xVM1pyaFBm?=
 =?utf-8?B?Q0gxTUk0RThBbVE1c1VicVB5TUhwVm41bUFST0pVNHoyZ3c3OC9tdjYzZTlu?=
 =?utf-8?B?OHpOQUdVY25SdWdqU0RVV1ZyYldhZlZQMklSZHRSbUZ3VUlQRmNJcHZ3dVIw?=
 =?utf-8?B?bUk1cmFXV0Y3VlU5aXlmQWZRb1ZWRjZrUm1wajdVU3FNbDJ3cjBQVG1TMnBo?=
 =?utf-8?B?eU8wTkZldmxCV3U5cXdUNmdrOHJKcy9kTlBXKzVyNk00dU13Sk01QUpvL29v?=
 =?utf-8?B?TWNmRVdROXlSZ2J2b29HNkJLakc5RldqbnF3ZXI4c0NFSUxGZzdpcHVNZTdS?=
 =?utf-8?B?ZGhITnU2aXIzM2IrSXl4b2UwaTlzdyszN1pHQ25neGNMRm1HMlRXckJCTEt2?=
 =?utf-8?B?UXRHSXNqNXlBWmxJZDFyblZ6Tjc3WGRCSm1nd3lYRXpFNW9Ya1dMYVlsa1U1?=
 =?utf-8?B?aHNseXllcUxMVmNmSzBxM3ZJcnFYZjliSS9GRWdqd0hrT2VEc1NqRzF6WWo1?=
 =?utf-8?B?aG5FS290TnRLaXFTRVZqYkF2RmgrOTJsS0Y4VVdaM3JOSWovUjZJamZpczNY?=
 =?utf-8?B?NjBrNE9yc3llMWFOeCtXYUMxQW0rR2ZEZzBBRTVkVHVadmFoZTlFRitYUnpP?=
 =?utf-8?B?VEwvQ0YxQUpGS2F5VWc1M0NqeVlSNFljNWphS1phZHl1aXFkVUZjTWwzbVkz?=
 =?utf-8?B?ZnBrQ3pvVDZxcHk4dWRpZHZzaXFMcE1DKytSaURBMERTRE1hbGYwSHpTbHVO?=
 =?utf-8?B?OEVjSDdXOE8rL2haMms3UmFHYU5rT3lVY2NXdDhNbWxrV0JtcTNXM1R4Z015?=
 =?utf-8?B?TmdQV0ZCNnJvSmpTckxhTExrSHB0dzlsU0VNaUdHeHVnSU45c1RZT1VqT21r?=
 =?utf-8?B?SlZHVGQxSHdZeVBydFBoTlBmdEFkNHdCaGJNUGNoSDkxRXl4RFJvaElPSllT?=
 =?utf-8?B?VmVDSGp2RlE4WEtrVjlodlVBK1ZLajhqc3FOOHQxWWFmKzhQWmNUWDY4YWN5?=
 =?utf-8?B?UGIwOEhnU2ZwSGczbHRZTVU4QWkvR0NidUpLRzgxOGphYzR1V3NwNFVQUFRm?=
 =?utf-8?B?d0xpcUEyUm9BSEI0OWp3VHhudWhxVVJPNkFNM0lCUjZSQkJTWXd1Z2prSFRR?=
 =?utf-8?B?RWpJSXNsQTFpdFl3QWJhUFJINmF4bks0RGFteW4zNlBnZVIrZ0RVRkp5aDBC?=
 =?utf-8?B?azJJem9hRFVBZGQ2c2xpWk5wRmcyQ0xHd1Z0RHlsbFRISXFEbGNBZGZzZ1B3?=
 =?utf-8?B?Znl3Mi9yMy9Zam1wUWxNYzMvYW5wY2VMN2l6TDFjZXI2R3J5VERFM2ZqWkdq?=
 =?utf-8?B?MU9EMzNaNmxkT3hRdlpySUEwV2l2WHFMZ2o3ZTltSkladHJoVkxMZkNmUm00?=
 =?utf-8?B?VFlpZFBLMGF2bS9IZGJhMTRHRENvbHdKYWl2NkVzaytydjVxb1FtbkJVVFMx?=
 =?utf-8?B?SWpoVWVZaUtPRGxpamNIdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVFCRjVzNFYwZVNOdkd3d3BGbzUyNFArQW02M2RSV2c5VzRBbWJHWVV2UUM4?=
 =?utf-8?B?ak4velRJaUhldGNJRjN0MHIxWlJCVElHbjhSSDlic3pjdmJYT1FIN0JMY3Z5?=
 =?utf-8?B?eGNqeUxJajVIVWdjTHBWb2pCbDlkZGVhODQ1V3o4dHdqTUtyNmtybEVFZEZD?=
 =?utf-8?B?ZnAxbXJYNStyWThOemhXUDBobWJxZDBzUkJ3YlZ6eEtMZjdYTURtajlkcm1H?=
 =?utf-8?B?L001czNzQUxFYm9pVDJNR2V2R1cwZzBBN25rR29xMk51WVZpbHBENW0xWEtn?=
 =?utf-8?B?WWR6bTNzZzQwWHJyQVBtS3pDTnMzQzZnZ2Q3SDZSMUVLK3hzSnk0MEoyMGJY?=
 =?utf-8?B?L09yODhxTmh0ZmpqdnU1cUpPSVorRk14V241Vm5mSHU2dVpiS0N1SFhxZzUv?=
 =?utf-8?B?Z1huUTYwQ2NHdThLY1BvU0oxTkNxclNBUEtqRGhwNkR2WGtOeVoxMTlFYlZI?=
 =?utf-8?B?eFlJbFE5Njk1aVZac0JCTVZTc2RmR0dVUktTaG9iNXlNOE42d0lkeFM0d2JU?=
 =?utf-8?B?MW04dXVHQWxIc0ZRWFNkQkU2bzUzZ281WG1La29SMVpVUzlKbTFSb1crVUZ3?=
 =?utf-8?B?eUF1UUZ4N0dqQnFvMEJVbWxsTVJ5clRkK3FvU0hyRDhYL1ZkdlAwbHF5Zy9R?=
 =?utf-8?B?Rlg0eCt6aVk1NDRBcGpSQ3VrdVBEV1orWVI2NW9xTkdKNmxlMWt5dGU2WVFX?=
 =?utf-8?B?VDlXSmgzWXF2TFIrWDdpdnVUSjU1K2svd3NhaHFMM1h5cWVJZHpza3RtMzdn?=
 =?utf-8?B?dkxRVDlSNHJ0SHhiSGp2bXRaVVA5UkY4cnJDNTJodEJNUFNJZWV5NytkVWNo?=
 =?utf-8?B?aHRjeExEWXk1QnUrcDZUSVA4Vmh2bmlpdi9zT0Uwci8wdGgwRGswNzZMbkg1?=
 =?utf-8?B?dnlHaHYwMlo4bmRaQW5MOC92ai9BUjNBOWpaTyt3V25YRkp1MmZPZlBzSjVT?=
 =?utf-8?B?Y0dsa3JzdzFpSDJYWU9ldTRDSktCaU1XR2ZxS2tkZkUzT0VKTUNzVnBCM21Y?=
 =?utf-8?B?a2dlSk54UjdvOW9oTytxcjZqOWFuNDExSUNnMTBobnduWXg5dTNrc2tLU1dZ?=
 =?utf-8?B?T1ZEZjJUVERxTEpxQkc2NncvcHVXMERJNDgwYVVBblpRNFMyek0xNVlUOStK?=
 =?utf-8?B?RklWVXFuZVNVclVvZ0JOcDZXdjRMNFhMc0IxbnpreFNJeTVRaS9EMmtKcXQr?=
 =?utf-8?B?ZTh1ZjBXWTloUFJNd0Z4MXErSkZiRjl4VzNjb0JUWDFrOHpqZTVkRXdYdGtp?=
 =?utf-8?B?UlFHYy9rMDFDRk1qY2huTjlnRUp0ZGxxU25kdkt2UVV5c3NjUkxScE9MNng0?=
 =?utf-8?B?aXVSL0k1YmVocUJKdVRhNTNXa1p2d2pGRCtrNFlJSkVHMWpXeENnTFlSTjBZ?=
 =?utf-8?B?SWVVOGc3bWVFZk9jdjh4TC9kdm9pTFREYVZmbVc4OUt6dTBxOVMvb1ZLREJI?=
 =?utf-8?B?dU9IUml4TkVZNEJKOWhyemVERGhYMENEbEVFRmlDbHFtb1ZKSkVPYSsyQ2Jk?=
 =?utf-8?B?ZFVXSFdDMWhWekpqcm84NGtvb25rVnhNQTk3YWFuVWRkVEVRZ0gvWWdvd0Zk?=
 =?utf-8?B?T3FOdlhpZndLVklrNHd4bkpZbkh3QjBTR2R0c0IvYVRkUWZxTUxVaEw1eXQz?=
 =?utf-8?B?Z0Q2UGVkVUVDRGV4LzRKZTdST1kydXZUbVVjSDhobDUySklGcHpDSUhXRE1G?=
 =?utf-8?B?MjJNdzRlVHlqVWZ2eGcvUDY2SVJwbS9XWmU4Qk15QzdhNmhGVHZyRlp6bUha?=
 =?utf-8?B?MEpnTTZTQjVGQjBpOWtoZGQ4aGg4aEFTa1J0S3hKcEl2ZTB1ZmNrL0VWZjNF?=
 =?utf-8?B?VXZzMzkvY2hwVEMvaTNaRGUrNDNWNTBkN2lNd0Fqdi9qc0NIM2lSaU5pYUVi?=
 =?utf-8?B?N1J0bTY3UUtXRDJpdlVFNERoUUVnRTcrK1p1UDZYK21BUjEvak5CdGZsTENE?=
 =?utf-8?B?V2JnbjBvYlpOb2RlSGdCZVZZa1BHTERyZWVadXhmQXpqRnR6aXhrZTNVT3R0?=
 =?utf-8?B?OG5pY0RUQ2pRY1A0SUNSOVA4R0ZoRlZrSW5RSnZPbXRFYmErYUJVT0U0N20r?=
 =?utf-8?B?WE42NEJYcGY1dklKTjB6NkI0Zjh1anA0NzU4Vzc0b2ZyZGJPQ2FmdE9LTHg2?=
 =?utf-8?B?RG1kamc0b3ZJaG9WU2pNOHpvR0hJdjFvZTN0MEVnaVNidWJTN0xkL2RSR3FV?=
 =?utf-8?B?cmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 91b8f798-95aa-4526-b36d-08dcd7db8174
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Sep 2024 12:14:55.3074 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QGNThWvfrSsOc1/9AvzCUvkqJb62TP3Zy7Uab/fhpYZ8bSJB6PdZ0o+opAF6/P95Sm4HH+gO/LEwht403hpm60ue1H79SyD5kR/Yqzi+C80=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7632
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


On 9/12/2024 9:06 PM, Jani Nikula wrote:
> On Thu, 12 Sep 2024, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>> On Thu, 12 Sep 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>>> Add macros to check if platform supports bigjoiner/uncompressed joiner.
>>> Replace the existing DISPLAY_VER checks with these.
>>> Additionally use it before readout for joiner stuff, where its missing.
>> Please split this to two, adding the macros and then adding the new
>> place.
> On second thoughts, it's small enough. Just merge after you get CI
> results.



Missed to update this, patch was pushed to drm-intel-next.

Thank you all, for the reviews and comments.

Regards,

Ankit

>> BR,
>> Jani.
>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_display.c         | 9 ++++++---
>>>   drivers/gpu/drm/i915/display/intel_display_debugfs.c | 2 +-
>>>   drivers/gpu/drm/i915/display/intel_display_device.h  | 2 ++
>>>   drivers/gpu/drm/i915/display/intel_dp.c              | 2 +-
>>>   4 files changed, 10 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>> index fdf244a32b24..d4a371edfcdd 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> @@ -1712,7 +1712,7 @@ static void hsw_crtc_enable(struct intel_atomic_state *state,
>>>   
>>>   		intel_dsc_enable(pipe_crtc_state);
>>>   
>>> -		if (DISPLAY_VER(dev_priv) >= 13)
>>> +		if (HAS_UNCOMPRESSED_JOINER(dev_priv))
>>>   			intel_uncompressed_joiner_enable(pipe_crtc_state);
>>>   
>>>   		intel_set_pipe_src_size(pipe_crtc_state);
>>> @@ -3546,6 +3546,9 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
>>>   	*primary_pipes = 0;
>>>   	*secondary_pipes = 0;
>>>   
>>> +	if (!HAS_BIGJOINER(dev_priv))
>>> +		return;
>>> +
>>>   	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc,
>>>   					 joiner_pipes(dev_priv)) {
>>>   		enum intel_display_power_domain power_domain;
>>> @@ -3565,7 +3568,7 @@ static void enabled_joiner_pipes(struct drm_i915_private *dev_priv,
>>>   				*secondary_pipes |= BIT(pipe);
>>>   		}
>>>   
>>> -		if (DISPLAY_VER(dev_priv) < 13)
>>> +		if (!HAS_UNCOMPRESSED_JOINER(dev_priv))
>>>   			continue;
>>>   
>>>   		power_domain = POWER_DOMAIN_PIPE(pipe);
>>> @@ -7966,7 +7969,7 @@ static int max_dotclock(struct drm_i915_private *i915)
>>>   	int max_dotclock = i915->display.cdclk.max_dotclk_freq;
>>>   
>>>   	/* icl+ might use joiner */
>>> -	if (DISPLAY_VER(i915) >= 11)
>>> +	if (HAS_BIGJOINER(i915))
>>>   		max_dotclock *= 2;
>>>   
>>>   	return max_dotclock;
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>> index b75361e95e97..8caacdd624bd 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
>>> @@ -1550,7 +1550,7 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
>>>   				    connector, &i915_dsc_fractional_bpp_fops);
>>>   	}
>>>   
>>> -	if (DISPLAY_VER(i915) >= 11 &&
>>> +	if (HAS_BIGJOINER(i915) &&
>>>   	    (connector_type == DRM_MODE_CONNECTOR_DisplayPort ||
>>>   	     connector_type == DRM_MODE_CONNECTOR_eDP)) {
>>>   		debugfs_create_bool("i915_bigjoiner_force_enable", 0644, root,
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
>>> index dfb0c8bf5ca2..5306bbd13e59 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>>> @@ -118,6 +118,7 @@ enum intel_display_subplatform {
>>>   
>>>   #define HAS_4TILE(i915)			(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)
>>>   #define HAS_ASYNC_FLIPS(i915)		(DISPLAY_VER(i915) >= 5)
>>> +#define HAS_BIGJOINER(i915)		(DISPLAY_VER(i915) >= 11)
>>>   #define HAS_CDCLK_CRAWL(i915)		(DISPLAY_INFO(i915)->has_cdclk_crawl)
>>>   #define HAS_CDCLK_SQUASH(i915)		(DISPLAY_INFO(i915)->has_cdclk_squash)
>>>   #define HAS_CUR_FBC(i915)		(!HAS_GMCH(i915) && IS_DISPLAY_VER(i915, 7, 13))
>>> @@ -152,6 +153,7 @@ enum intel_display_subplatform {
>>>   #define HAS_SAGV(i915)			(DISPLAY_VER(i915) >= 9 && !IS_LP(i915))
>>>   #define HAS_TRANSCODER(i915, trans)	((DISPLAY_RUNTIME_INFO(i915)->cpu_transcoder_mask & \
>>>   					  BIT(trans)) != 0)
>>> +#define HAS_UNCOMPRESSED_JOINER(i915)	(DISPLAY_VER(i915) >= 13)
>>>   #define HAS_VRR(i915)			(DISPLAY_VER(i915) >= 11)
>>>   #define HAS_AS_SDP(i915)		(DISPLAY_VER(i915) >= 13)
>>>   #define HAS_CMRR(i915)			(DISPLAY_VER(i915) >= 20)
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>> index cb0f6db5f8e7..c53eb8e165de 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>> @@ -2520,7 +2520,7 @@ bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool use_joiner)
>>>   	 * limitation. DG2 onwards pipe joiner can be enabled without
>>>   	 * compression.
>>>   	 */
>>> -	return DISPLAY_VER(i915) < 13 && use_joiner;
>>> +	return !HAS_UNCOMPRESSED_JOINER(i915) && use_joiner;
>>>   }
>>>   
>>>   static int
