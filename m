Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C32FA365D6
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 19:42:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83BDC10ED36;
	Fri, 14 Feb 2025 18:42:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IZ/JrJqw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F40A10ED35;
 Fri, 14 Feb 2025 18:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739558556; x=1771094556;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=hPxotM8ma5diuxriwS3lD8B4xi2hm0WBO+zzNjWfxuo=;
 b=IZ/JrJqwkjyrlh1XEnmOB9gqmbHCsxM8BueIyA4hSWevCiGHx2LPgeCR
 Vbu2+8cXJLmAw0vfBQojPMKufq5yJ+X83ZKLj+u1nkC+nzjl56TS+tOTz
 DhYpOUpdpAuW+QYxZs5fCiCQETZPHyPIJHAd2fltnaeQxALpBcWZVSynV
 3bQ9XZ+0NvCXeJNs2mQufA9VNun4f7QgStaNMId+Njjn0qxYg0DMBuwPv
 YXhRt6K8BiZdGGDd48dPrrhdp17GRwMPe0oEABtqEBZbZsOAty0jPeNID
 HPw3vi2yvrINbQuuwteEO69ssv5hCUFuQVchVWYiR6KJx1xG+KRc093Mv w==;
X-CSE-ConnectionGUID: lMFxwpTXTHuRdYfQcFxc3A==
X-CSE-MsgGUID: Dk8hfZRiTS2+UT/Pep7tjQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="50947656"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="50947656"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 10:42:36 -0800
X-CSE-ConnectionGUID: GtKhbR/1Tf2KKIV04R/7+A==
X-CSE-MsgGUID: vnkA5bHaT5yEI/APCrnUWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="113257067"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 10:42:36 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.1544.14; Fri, 14 Feb 2025 10:42:35 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 14 Feb 2025 10:42:35 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Feb 2025 10:42:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Mr/IvutQBVkwMdC6InjcufYdUhmfiCxIOnrRu9qkRNUJPAZ7OuopJA8yByUDswozwQhH99bQrKObckAM71CeMaq6qAXNgcOKr3jwTOvwocvM1v174CjrIHqpcUdemAXZV1Y1gq8BxGkbA9KtY7hYzxkuF62XGHgWZoS9DLsS3eyrRJxeii11LzPMsWpE60xPXQ4mM4lRKAnj+EARWV8Bh5b4lDtazXn6gp19oojSmSdEhuvAn4Hh5aOwqu8zhAgJK2NBkn8Kk6ulrUbqtXkmYK//6+XqmsLW6nCIXGnM7RUMm2EpoEkM6f4BrQ9oGrvB3alVd5zb/Vro6rwmtePd7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W5wSs3PcwiHlw6Z2nth2ho0Dmzc3e52jT9ok0lS0pCs=;
 b=gNFuy/fwfoByVTFp7qplRyPfhbLGpOrDOHlyIRa+onbs2y+xlLknDe/t06nniD+K9K/QsW6udrj16YREDpjWqps1eHWgH0FzBAWyJKKt6WFgXP2ZpSEPV38oUE8fT9I2ip3BzjWaSgEmY1FFcG6mgJizdQD270H+DhOX55dfJSHj3JC86hwvCGSCy6Y4Ac3SYXDoUumzNWV7URyGuoWdVk9SFt1unIUvaCkf+5EUJktCOArofSj1cNVvGkUnAzTdesMYtiTYphGvynp2z0DBk1WDMVa2040UF0rZZeYV3DtizHk3D/qyRwaoFdGHbgfOUohFdCvWrBNi2BVqMlOEiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7408.namprd11.prod.outlook.com (2603:10b6:8:136::15)
 by SJ0PR11MB7154.namprd11.prod.outlook.com (2603:10b6:a03:48d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.13; Fri, 14 Feb
 2025 18:42:32 +0000
Received: from DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543]) by DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543%4]) with mapi id 15.20.8445.015; Fri, 14 Feb 2025
 18:42:32 +0000
Date: Fri, 14 Feb 2025 10:42:30 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <igt-dev@lists.freedesktop.org>, "Riana
 Tauro" <riana.tauro@intel.com>, Lucas De Marchi <lucas.demarchi@intel.com>,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Subject: Re: [PATCH i-g-t v8 2/3] lib/igt_perf: Add utils to extract PMU
 event info
Message-ID: <Z6+OlluQ1NhiuCsZ@orsosgc001>
References: <20250205021056.1539902-1-vinay.belgaumkar@intel.com>
 <20250205021056.1539902-3-vinay.belgaumkar@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20250205021056.1539902-3-vinay.belgaumkar@intel.com>
X-ClientProxiedBy: MW4PR03CA0254.namprd03.prod.outlook.com
 (2603:10b6:303:b4::19) To DS0PR11MB7408.namprd11.prod.outlook.com
 (2603:10b6:8:136::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7408:EE_|SJ0PR11MB7154:EE_
X-MS-Office365-Filtering-Correlation-Id: 45c76f83-5498-406e-c848-08dd4d27574c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MDFBdVVIcWU4QUo2cjAwMk1RQUpucklmY3RodXFTUGRub01oT3E3bUFYNE9B?=
 =?utf-8?B?MG9ybXdQSDh3Y3k1Q3dqNmx6K2lRcmtaS20zZUFteEhMSzRrczlVZUhFUmN6?=
 =?utf-8?B?dUhuaTVRaEtGblpPL0hoaUQ3YkI2cmY0YWVhTEJUVjBSakpvRkI3YTZnV2s3?=
 =?utf-8?B?RDBPeE9ibXpHdk1CNUFEWkJrUXlzcUJxUk93Q0MrNFFOT0thUzBsak1EZ1hX?=
 =?utf-8?B?WFVWQTN5VWtmMnlBWCtuK2tHL0Y2VHErRW5vNkhkU3hzb3NLRmFhd2JoMDkz?=
 =?utf-8?B?QmJObllxV01UT1lVcjdOdHY1RVkxdmhQZWFoK21zN3VWTEFKbDBBVTF4WGhH?=
 =?utf-8?B?aUxsZ1NNQkkxRFNOSkFUclN1V294Z09yUFNEcEtFRXZRTndZNE5nVTFwTWNO?=
 =?utf-8?B?MUNaUkFzWGpjb2h0NVdCOUlNZi9xNnpzbTR4a3p4eG1CeUZveVV5SUVrajJ5?=
 =?utf-8?B?bGhTUFhvVkliRWxhNmxVdjBYb09uRWIyQlJPQzNTYUpiUFhjZW5KMTIxeEFk?=
 =?utf-8?B?UVYwWFhsSE5NKzltTGFLTjVPSm5zUFhXS0VXUG55TG15djlUbnZUY2NMZGtl?=
 =?utf-8?B?N2c5TVBnb3NpOXRBa2NBRC9PRXFSVVpoRVhWcDN0bWtqZkJjU3liaU9QZVRy?=
 =?utf-8?B?MWg1Rmk5clAyczU1YU44UThyNGFhbkpvKzNYS0wvcjZoN0RZdDZKVTUwN2NN?=
 =?utf-8?B?ejh0VDZaamtSSU5Ubzg2cXBXbEYxZm5kK3U0RzZOd3pQWU9McFhoQ0V3d3JH?=
 =?utf-8?B?bzhiWkF2NUtyVjJDY0Z5SFFSMlJaN3FIREE3WWY0ZGQzQ1ZvZ1pFKzk0NTdJ?=
 =?utf-8?B?Y0dNenFqWVVKRTJka0pVM05PMkRBTENVYUxNeHJJY3g1a1BPYmRxQjc2R0th?=
 =?utf-8?B?T0JTN25EUWJJaU5MMkI4TW92OTdtMXU3MG1sYm1qd2szWWlkY2oyMEdRNzh0?=
 =?utf-8?B?ZlRFWXI3UnNib3dyN3lVenRDZHVibHdnRkNQQmV0THd6cUV6dFFpazBDUG0y?=
 =?utf-8?B?MHA3Mk9LNkRyakg0c3FGdDFOejQzRWlMaVFBTllqbTlid0kzNGhmRzQ0UlZx?=
 =?utf-8?B?TXZOZHBzK3BHdjJXaTNOaU1xZXVpOTBkTi9oajNkYzNZN2Q3c29ZdEgrMDNz?=
 =?utf-8?B?WnpsRzZSSDhNTWQyNXNQdXZieGxUUTJIRmJiOVoxVDdPenNOVnFwU0hqSTNy?=
 =?utf-8?B?VTd5NWsrTzhBOUpkQ1pQeExMTVdHVllEeHdHZVBjZkJZRlVLdVVtNVA0N2tU?=
 =?utf-8?B?MCtTWTFVSVNJYWtFeTNXaVMreElzOU44T1g0NXRWUUhTZmxSaExWWWhBODdN?=
 =?utf-8?B?TnFDWnlXbWQybjJ1eGo1Wk90dU9RUGRCWGsrVm05UXkxek4yQTdoS2QvNEdm?=
 =?utf-8?B?YVBNdkNmMnNUZ0RLcjdLSmt3cVFBNGdhbEJBMnAwU3F5ZCtQbHhlS3R1eEpj?=
 =?utf-8?B?UXpCS1RJMkI5RmE1Z2hMeHFzelR5cjhwdm9vaGR6NGRabzV6TjYzYmpVaUpx?=
 =?utf-8?B?RERDVzJJeUMrbGpKOUtVRHZ1U2tITFM1QngxSzYxT0VXajlNalJROG9EVFdO?=
 =?utf-8?B?SU4veW9RRTlHcEtxUDRhb0RaNUNSQkl6QUpzNkJlMzMvOVFLQzBONGhJbFd5?=
 =?utf-8?B?OHJBSEF6a2xKVWpxR0t6TWw0U1hUQUE0Z3pRVmxFS0JpWUZuTlJCOEE4QUZy?=
 =?utf-8?B?RXBwRHllcXpkaEZjTjUvaSsyVmZucEdpVjVQRTlRbU5tb3NySmR5YSthRkRO?=
 =?utf-8?B?VENIejBrMEtOM1RwbGM1cFJmelVzZTU4RHhTcTQvOXhZL2RWWmdYUDE2MGpV?=
 =?utf-8?B?RGQ4Nlg1ZFV3TzhSWXRWc1JLbjBFakxvNVpXVWl3bDJLUndmSEZxajYwSFAr?=
 =?utf-8?Q?UuiSzAiO3VOeI?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7408.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Rllid2dDTmlTVmdJZ1QzM2ZsdDZNWjg3dkd0eSt4SGFJWkRvU3NGYklheW1i?=
 =?utf-8?B?anc4TCtmMCtYcmF4K1N2UUNkYU5NdFRVaVk5dE9RYWQrbXRkajdOdDhCWExH?=
 =?utf-8?B?OUNnSUM0U01rWVVBWmVXaDYzaFRKZTd4enRvengvM1BtN1dyRWJGQU02c2ZN?=
 =?utf-8?B?OE1TZUhaK09XZE1BYnlnam9JN0J1b1VEbFkyQzcyU2tJb0ozSHAwM0FDK0hv?=
 =?utf-8?B?RThwZGYweTFsMEtzWGlBRU9mRXd6RUs5N0srdVJ2UlAwTC9MY0RsZXJxdlBF?=
 =?utf-8?B?NkVLUHFhWDh4Q1RadUg0OXVOWitWTUlWUFFOYW1BUXIrMGdXY3BmS2ZlOVJ1?=
 =?utf-8?B?MHhFbVhYSjZhUkQ5SUZjc0ZicEJrLzI5ZkpJNEMxTzNjNXp1dW92bnJGSTI1?=
 =?utf-8?B?SGNUa1BoOVlqaUNGRVF0VHg4Y0p3UkFIKzNjQjdCdlVvSHc5V3JucDZKNWhk?=
 =?utf-8?B?eENWUFBqekFIS2cyNFhBWURBUzhuL0V1cHVsWlEydUtVRzNOL0lQSVJkdkQr?=
 =?utf-8?B?dzdKdS9Cd1NHZVBXL0hMcGdDdWdNbjVjMGNKZmFJRHJ1UXNsYlpCSUNFSWpY?=
 =?utf-8?B?a0tpQWN1ZDIyUUtNSzJPK1h2Y0ozU1ViWlN3eE5DSFpUKzEvWHZuOXFLWnlF?=
 =?utf-8?B?TmRqL01pTDlDU29IMXN0akhERWcySk5ldlRZdWhIQkRKVVhyemtyTjdPTXhZ?=
 =?utf-8?B?ZEFKUEdkVTR0eU1ZakZ6NHNMVjhJMFI5QmJmUmJlMFpFN3hLeTJ2QmQ4STAy?=
 =?utf-8?B?VzZRaEFYOC8rZDFIc05FNkd5Zmx5eWFycFpPSEpmcmFka1o0VHJ5MTdueHlK?=
 =?utf-8?B?OVA1L21PUlJJNzFKWVRER1owRGRoYXBxWEJpOHZwbStQV2dIb2srbWJiWTI3?=
 =?utf-8?B?dmVIRVZGb3JwejQ0S3UzOUxRdnE4OS9zZUdGeHFLTXBRdkFDL2J4cmpIaU9R?=
 =?utf-8?B?S05zZ3dWWGRGRHVEM2dPSzVZZFJacFhFTjlVNUx1VGFjazlsRWp5SFQzaGNE?=
 =?utf-8?B?S2wxRzZHZWRPQ3dIc1Vva2dXT3FJb09IcmQzTXZCRjdLUzArREJiSHJQVlk4?=
 =?utf-8?B?NmJVOGo3T09vc0FoVnh2RG0rU3lmY0F2VzB1di9wVG5oZ2VuWHY4dmkrQjJV?=
 =?utf-8?B?ZXBXU3RxQlVEWTlwYUJPQktuTWtKRUFJcFgzMkRTb25QY1l6eEl2R3FCY2Rq?=
 =?utf-8?B?V25EOVNWWkZSa2N1RFhYTlExRXFjMU5BOHZrSUd2WGpMRmE2OGRaOUcwbTdD?=
 =?utf-8?B?OHhrc0xISHVhNnZ2OHY2Z2F3QjFPM29DZGVoWjZZTGhlQXBpa08rczF4cnRs?=
 =?utf-8?B?cHc1dHJ2MDdOL1FodHpUL1JBZ1R0QXBYbjNRUjg2OGxXdEROeEowc3NJUTBl?=
 =?utf-8?B?MnFuMnh1N0RSSHlmcExaNTFUZmtOcU1nTjczbnlCZlFabVVwWGdpUjFuRENp?=
 =?utf-8?B?bi9ua2kxUTQyVyt4VVVxdUkxZFpoN09kSWcvTU1DWm5ORkNYRVh4eG5mZUVs?=
 =?utf-8?B?SXdCaE5IbkZ6YlJ6U0M2QUFMQXFkakR6M1F3OW9kY1JCb3dwNFhORXA0SFdt?=
 =?utf-8?B?KzlGaTZUZnNucTQ0TTlJbjB5UStxUWFVdzF4d3V4TzkzaVdDVGpMZTQ0K1Vn?=
 =?utf-8?B?OEhyVFdudkxXRG9EKy85dTh1akF1S1JvUDk0U09IdXAzSVZORlVBUS92RWNJ?=
 =?utf-8?B?RWdoSWpCUSswSVpxMDJrTjd0TGNnd2pubDJaM1pFNlJhUm84NXd4WVlMQ25Y?=
 =?utf-8?B?Q08yeGRZY0tlWnVkbFlKajdCRnU3OGJtZU9aU0NsbEp3MzJteDByQ2JFaW5v?=
 =?utf-8?B?dzNHd1lYK0dDWXJJTGFsRGxxOVJ4cWhLSUtlY3JablNqRkMvNW5IcFpnR045?=
 =?utf-8?B?bkJwbDI3b0h4eS9jMGpjeVdlcGRmeWRDRnFiTHR0VmNXSkZyVGYyNDFHMndS?=
 =?utf-8?B?VTc2akJZNkJrTGFwVWNWMlNxSjhEQ2ZwMnZmWXpEZ2QrbG1rL0Vpa0hEMWpS?=
 =?utf-8?B?VlE1ZkRxQmNyMUsxZXY3bGpObm1rV2MwcUF1NXpTd29rL3BoM25NUzU1Nmcx?=
 =?utf-8?B?RHZZZXVWRjkyMmE1RDhZZWw0UVd4SDFMQnpGcXlFMkorUEc3dmFFbndDY1p6?=
 =?utf-8?B?OHhKRjJPT1pIbm05RHZUWU8wdi9XTnRuQzhOS3NQZ2hFRC9Hd1padVBnK3ds?=
 =?utf-8?Q?75GGoP+66khlN6o6BZVeNe0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 45c76f83-5498-406e-c848-08dd4d27574c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7408.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2025 18:42:32.1868 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l2JDNwIhYmJzSI7fg3jkVBpvK3GU9vwDlMFYLXQJTGGQnkEZc8ENz+7KPR4ryaX2QsjZSTgpxz7L5+DKxyqKl++UOivvXk9GJ1vYMNpCf54=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB7154
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

Hi Vinay,

Reviewing this since it's also in Riana's engine activity series. Mostly 
recommendations. 

On Tue, Feb 04, 2025 at 06:10:55PM -0800, Vinay Belgaumkar wrote:
>Functions to parse event ID and GT bit shift for PMU events.
>
>v2: Review comments (Riana)
>v3: Review comments (Lucas)
>
>Cc: Riana Tauro <riana.tauro@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
>Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>Reviewed-by: Riana Tauro <riana.tauro@intel.com>
>Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
>---
> lib/igt_perf.c | 70 ++++++++++++++++++++++++++++++++++++++++++++++++++
> lib/igt_perf.h |  2 ++
> 2 files changed, 72 insertions(+)
>
>diff --git a/lib/igt_perf.c b/lib/igt_perf.c
>index 3866c6d77..f021fc3ec 100644
>--- a/lib/igt_perf.c
>+++ b/lib/igt_perf.c
>@@ -92,6 +92,76 @@ const char *xe_perf_device(int xe, char *buf, int buflen)
> 	return buf;
> }
>
>+/**
>+ * perf_event_format: Returns the start/end positions of an event format param
>+ * @device: PMU device
>+ * @param: Parameter for which you need the format start/end bits
>+ * Returns: 0 on success or negative error code
>+ */
>+int perf_event_format(const char *device, const char *param, uint32_t *start, uint32_t *end)
>+{
>+	char buf[NAME_MAX];
>+	ssize_t bytes;
>+	int ret;
>+	int fd;

You could cache the format definitions after reading them once.

>+
>+	snprintf(buf, sizeof(buf),
>+		 "/sys/bus/event_source/devices/%s/format/%s",
>+		 device, param);
>+
>+	fd = open(buf, O_RDONLY | O_CLOEXEC);
>+	if (fd < 0)
>+		return -EINVAL;

I would do an igt_assert for these since that will also print the errno 
automatically since errno will point to what went wrong.

igt_assert(fd >= 0);

>+
>+	bytes = read(fd, buf, sizeof(buf) - 1);
>+	close(fd);
>+	if (bytes < 1)
>+		return -EINVAL;

Same here. Are you expecting a specific number of bytes? an assert 
should be helpful.

>+
>+	buf[bytes] = '\0';
>+	ret = sscanf(buf, "config:%u-%u", start, end);
>+	if (ret != 2)
>+		return -EINVAL;

In short, I would recommend asserts in this helper so that caller is 
less concerned about error checking and the asserts will also dump the 
errno value for debug.

Same comments for perf_event_config below.

Thanks,
Umesh
>+
>+	return ret;
>+}
>+
>+/**
>+ * perf_event_config:
>+ * @device: Device string in driver:pci format
>+ * @event: The event name
>+ * @config: Pointer to the config
>+ * Returns: 0 for success, negative value on error
>+ */
>+int perf_event_config(const char *device, const char *event, uint64_t *config)
>+{
>+	char buf[NAME_MAX];
>+	ssize_t bytes;
>+	int ret;
>+	int fd;
>+
>+	snprintf(buf, sizeof(buf),
>+		 "/sys/bus/event_source/devices/%s/events/%s",
>+		 device,
>+		 event);
>+
>+	fd = open(buf, O_RDONLY);
>+	if (fd < 0)
>+		return -EINVAL;
>+
>+	bytes = read(fd, buf, sizeof(buf) - 1);
>+	close(fd);
>+	if (bytes < 1)
>+		return ret;
>+
>+	buf[bytes] = '\0';
>+	ret = sscanf(buf, "event=0x%lx", config);
>+	if (ret != 1)
>+		return -EINVAL;
>+
>+	return 0;
>+}
>+
> uint64_t xe_perf_type_id(int xe)
> {
> 	char buf[80];
>diff --git a/lib/igt_perf.h b/lib/igt_perf.h
>index 3d9ba2917..69f7a3d74 100644
>--- a/lib/igt_perf.h
>+++ b/lib/igt_perf.h
>@@ -71,5 +71,7 @@ int perf_i915_open(int i915, uint64_t config);
> int perf_i915_open_group(int i915, uint64_t config, int group);
>
> int perf_xe_open(int xe, uint64_t config);
>+int perf_event_config(const char *device, const char *event, uint64_t *config);
>+int perf_event_format(const char *device, const char *param, uint32_t *start, uint32_t *end);
>
> #endif /* I915_PERF_H */
>-- 
>2.38.1
>
