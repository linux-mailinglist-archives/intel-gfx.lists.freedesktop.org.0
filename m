Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C509EA9B3
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 08:38:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5521A10E122;
	Tue, 10 Dec 2024 07:38:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ngjbSIjW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA72310E122
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 07:38:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733816323; x=1765352323;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IJJFNYIHaJCtqcLWuiRkBCQRj2zCbVHyr1GHR+mKMlA=;
 b=ngjbSIjWpO/XNoPgrDFcXgvYQpszOPwCHgY7w/wDDxQXHY8Wpo0H4vUA
 4NxLhWLppRvrnF8RAMscOV0PMc748GgGTJ2xuj5eVybAMHaaKwZnir4HO
 RG885HFLalECE4A3rQhAhTiDGraX8WYeyOi+NVF4avre79YiVy9Hj5S2v
 3jfU7iqQQlg0IolFp2ySmTv5FarAWxqMdQbACsuFlWuGhRpSmHnCZX8+4
 5yOnkcVyvBQwhruC1OtAvAS52NSvK9PNp+PTVRwVf2igWde9A0UbPNrwK
 yyddp1KtKDPN1F6e/dzYTifHY6R8aQtj4TkF4bUpPOWsN2vwXd8rY+ZLI g==;
X-CSE-ConnectionGUID: /ezQ5gBOTUOX2xz+Ijcq8w==
X-CSE-MsgGUID: DPdMYCEaTr6lotcIIw0jGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="34281611"
X-IronPort-AV: E=Sophos;i="6.12,221,1728975600"; d="scan'208";a="34281611"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 23:38:42 -0800
X-CSE-ConnectionGUID: YdD/8cFHT5OzW5Oy3JWLyg==
X-CSE-MsgGUID: Tfo9k8YyReOzGxLtD5haZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,221,1728975600"; d="scan'208";a="95520014"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Dec 2024 23:38:42 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Dec 2024 23:38:41 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 9 Dec 2024 23:38:41 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 9 Dec 2024 23:38:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RYpXCHym0bbz6zrFM4bJTXDtlf6r1TRuzd/Wmd3MQeUcOTn15hIaoU0hhEgSQF6yWekA0krXV7JxOwR87xzCGyoDCipX/mThTrt8/0bRQS5BnJ3BM9eliQCHG+qX4ET9JKqTBrmkhKRCIessREe5T65j3/IXI4ArNZoHZBO1KvttZtHG1zO6S/bkiy1Hzmi8WN7xAf0QpBzX/0xf3bZh9PimNkBAn63CGKlTYhQUeP9+bDL8S8jGA9cMbSL2QjX4HxqnyZYg3Y080fE1mVLq7y0MH2eSeZm25aQGBuF1BQN7ovnnhteJnnClEkMh5YgKI/rpyR2ZJBG96fSMlbem7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=otAhUK9i9/2tAaFV2ydQIehQypgcFlvkATbJwuhhf9A=;
 b=Mz3w2q7mZjdMaMcrWgiEl2hiRe71cvJyJRIss4fID/c6R0IN6BxvCyrLjQQKNUx07rUggUpf+5Qz/kP1w5qP7iP5LlFTkpiTd5dF2p7uIcjouk/2S30TyUzSXKBYhO/VNn0dXL+nXaCQT8qIxWgkbBuSKXia3fmKEjp/SocpJdJXKrN3C1Pd8VhAtmsCWPVtyO0VjT4ERwZTMoTP1PZHGwF2y6b7VY/vobSQIPYEF33oyqL4fj7yuJnSWMZx/Jgc6/Xvjl7rrqJiJY5j2aw3WUEsq8gUdaI1GM1uitR5hbZev/X5ZBhUiABsaYp9Ln4nlfe3WFiCU6pRKGC/2E2MWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY8PR11MB7947.namprd11.prod.outlook.com (2603:10b6:930:7a::11)
 by PH7PR11MB5982.namprd11.prod.outlook.com (2603:10b6:510:1e1::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.20; Tue, 10 Dec
 2024 07:38:38 +0000
Received: from CY8PR11MB7947.namprd11.prod.outlook.com
 ([fe80::f7a9:be93:778b:8d6]) by CY8PR11MB7947.namprd11.prod.outlook.com
 ([fe80::f7a9:be93:778b:8d6%5]) with mapi id 15.20.8230.010; Tue, 10 Dec 2024
 07:38:38 +0000
Message-ID: <90511d81-4205-4730-b01e-c07f353728e8@intel.com>
Date: Tue, 10 Dec 2024 13:08:31 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] drm/i915: Introduce intel_cpu_info.c for CPU IDs
To: Raag Jadav <raag.jadav@intel.com>, <jani.nikula@linux.intel.com>,
 <joonas.lahtinen@linux.intel.com>, <rodrigo.vivi@intel.com>,
 <matthew.d.roper@intel.com>, <andi.shyti@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <anshuman.gupta@intel.com>,
 <badal.nilawar@intel.com>
References: <20241030143418.410406-1-raag.jadav@intel.com>
 <20241030143418.410406-4-raag.jadav@intel.com>
Content-Language: en-US
From: Riana Tauro <riana.tauro@intel.com>
In-Reply-To: <20241030143418.410406-4-raag.jadav@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0255.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:21a::18) To CY8PR11MB7947.namprd11.prod.outlook.com
 (2603:10b6:930:7a::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY8PR11MB7947:EE_|PH7PR11MB5982:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ade0872-0999-419a-2938-08dd18eda93b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SDVRSjBIdWs3cGdRTWwzcnkwRGtISHQzcXQ0dEZSQ0VvWnpVUUJOclVhN3dr?=
 =?utf-8?B?dTV4YUlMTUdJdG5GUzluMERLdVdrSmR4YmhhWVo3bm1hSWthY0FnaWUwRnJB?=
 =?utf-8?B?OTRuUUtiOFpwd285QVR2SVBWd0VCNGo1ODJ1cnMrUlhzbmcwTmI3c0dvdlpr?=
 =?utf-8?B?K09hUGJXZHBTOGQ5WHI4bWE0YlFLQU5qWHBLTHRVWThuNTk5ait5dERwTGVT?=
 =?utf-8?B?K2cwV1ZjSFo1Q2EvaWFYY09CRjF2L1UwYVZsRmxDSGljVzlONXJXcStBakVK?=
 =?utf-8?B?M3lCejhTWlphTTVWNURHL2V1TzNKeGUxalVFMUk3OVFscytMNFdaWEtOZ0JC?=
 =?utf-8?B?aW01K0IyTXlBQUROZ0lRZ3FDQ3k2eUxuWmY4UnhwVTgvRDdIeTZ6SkFuY0x2?=
 =?utf-8?B?ZzhJNVl1U1d1eWRSWkh0Nm90Rm9DVXVDVm1iTlhkUmhsaUtScVBqTksvblpk?=
 =?utf-8?B?eThSRVMydzkzQjErNXdwZE9HVnF3ZnVmYUQrK0hLRWZZN0VYbS9QNVNqSnQz?=
 =?utf-8?B?VzJkSVB6N3BpSGNmRGhWa0t3MHFCTEZFV3gvbUl6QVhFenU0UVE5MmM5QmVS?=
 =?utf-8?B?eHlLa1NHbE12NlYrWVNzZW1kUGkraXVMdHJGdnJyQ2R0Y2dxMVF1a3Q5UFJr?=
 =?utf-8?B?T2ZFUlBWU1JWK2RHL1BGZUpPNkI4SWw1WjV3R2kzc2xMaUFLRC81WmlhYnNV?=
 =?utf-8?B?dWVYUXI1aU1sOGdneVlDWTRRNTlORUNoUXpWdUN5Rm94YWVJOSt3NS90Mkp0?=
 =?utf-8?B?N2VDYTJwLzh0Tk9PU0g4SnNKN0R2VXpURERpbUovOE9mUy9lQzRpd08yOG9I?=
 =?utf-8?B?STlIWlAvckwzZk82SFA5MzJqdWd1VnY1TkhPRHMvaVhVam5lZjlLRDQ2bkVU?=
 =?utf-8?B?SXVCa3Jlc2tFVTdiVEErVENrdW5UeHhCSFVkZEoyMVRMYWtkR2V6bURvaVRz?=
 =?utf-8?B?ZWszMVNYZTlCbU1FYzF2SjdacDljVXZ4NG5meU5uZC8rSjNYSG9DTnVkeU9Y?=
 =?utf-8?B?U0JEOWt1Tk9EbmdXNWpCa3RqRThGZnlvTkpDZ2pWNkVwN3ZBcnRLTXo4OFZh?=
 =?utf-8?B?bnQ1UU9BL2cxR3pEMXhHcStFdit2TTF3cEFBWTV2UjU3NlZJWUw1RmVUR3Rr?=
 =?utf-8?B?UkU4cU9ycTVyVENCUm1BcjViWjB2NFVXSXNJMXM0Z0NvT1lML3RFeE9qTE9o?=
 =?utf-8?B?a3ZocW1xQ1RkbXV2cnFsV1ZUM0RsenU1eEExYjR3ZzRBQm85T2NuR3AxemlQ?=
 =?utf-8?B?NE1MRU14Vktwb0JXTEpaQW5QUHgyN01ONUtHb293b0JKd2lHY2E2MDFEOTJs?=
 =?utf-8?B?dWZuVmlLMUtnR2EvVTdBNkdsYkxxYXhzTjkyVlFLNUM0VERxZHQyTVNDcVZl?=
 =?utf-8?B?OWdaYUM3d1NsMHhJOVZKc0wxN0FtQytGNTlWWUIxSFNhNlVuSisxQkZzTXZo?=
 =?utf-8?B?VVUrL1RNdzNyWVE1SHhUWTM5MVRob2x6T0xidmZNTUxSajEwZ0lJSHBWSkFS?=
 =?utf-8?B?MkREUkpuUDdPZSt2czZuQVZWU0o2WkhnU0VHMURiSmJka2RlZUFESVdEMFM1?=
 =?utf-8?B?SGRKbi82VXcvV3RvUnNQY3J2Q1lvV3p1V3QweXpuTzlUcTRZRlg4TmttY2Nz?=
 =?utf-8?B?WDBhVG1PVGNkQm9xdS9EK2tDem5wNWs1cDBZU0NVY2d4WnFnamZ2ZmFyckow?=
 =?utf-8?B?YmlOaFNJUDZ2VDNodDFHQ2E4cmU1cWhnampRV25maWFVbDhzWGViUURRK1Js?=
 =?utf-8?B?NjE5OTJGRHY2T0h3THE2RkJ0RTU4M1NyaVA0czdqaVN5dlVqT3d6d1V2YVdz?=
 =?utf-8?B?TkJmdU9BMTIxOHhBaHpxZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7947.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dXdiRm9HcE53b1Z6TjVKeGw5bFBNNEk3bElST0tqdDNOZ2dtbkFEOVArRmF0?=
 =?utf-8?B?SmNjTDlJMnBNUUJsWGNiTW41NlllOTluYWxiUU1pbHBzZjFUTUZ3K3FjK1JS?=
 =?utf-8?B?ZFpyL2cyLy9vY25UMlpHT2l1TFpCWTJneDY4NXJodkNKWkM2YXFlV0lwanNU?=
 =?utf-8?B?ZWNISHRzN0lCcWM1eUpOams2d2JNdGF3TlFLb2dKVmJCZEQxWjNaQWJCZUh5?=
 =?utf-8?B?WWJUM2xoc2VzQTVoaENxWVE1aytqYUYwV0V2YVVpMGtacjFiSVR0SjlOMHJv?=
 =?utf-8?B?UHJrZUluN1Z1S3A1U0cwNkVkZHYzeURWeTJjeDh1L3lESElvRldMVVBXa1VY?=
 =?utf-8?B?eE5XZ29HbUxHUHZQTUxTQUxrYi82RlErK1h6cXhnRllpNTZ3bEhmaGQxR3Ry?=
 =?utf-8?B?QmpCZTczVWtQWm9JMG5KUXNaSG1lOTJFZ1hXdXNjSitQOXNGeEsvQ1g5Uk9U?=
 =?utf-8?B?L3Q2SFU1QVFmNm1vK0xUSUh2WkcvZTFUUVNQdWZDNitQc0hNT0NFUW9GdUE3?=
 =?utf-8?B?UndKNXNxRTRETUtpQXRIYk9WZDMvQWo2WE5zb2QyM0czYnYxVFFNdmtuQi9u?=
 =?utf-8?B?VVFjc29pTEQ3cUZNUEpjRHZhamFPdjVlMFp1R013c3Qzc0lsQlR5Z1pEMFJi?=
 =?utf-8?B?UDI0Z08zUFMyUkM0QWVxcEdIUERVbU1OMCtlRytGc2ZNTWlPd2g2ejczRkp1?=
 =?utf-8?B?Q0NOdnNoMUJ0ekpIMWl4cDcrRENva2MxbUllM28yNFdFNEZiSHhpUzVBRFpy?=
 =?utf-8?B?VGRzb1N6c3NjZnlDeE82SGtqbmNrWUhXdDRISTkxYmM5MXU0azVMa3E2VXc0?=
 =?utf-8?B?UHBmcEU0d1A4akJWbnJIUW1VWlZBeWJuY3hMaytCWWN4YjlDRXF6Y0FlYmF5?=
 =?utf-8?B?TmFIRmhzMVkwQVpwZjlUc0RwN0pVT0ZnempqcXBreDZwenErSnVpbjFtRE8v?=
 =?utf-8?B?YlpqMy9xbXcwVkpDWFBiQUNRLzNrU0NUTkNsc3E2SlJtL1hESkV4OHdNZG5k?=
 =?utf-8?B?aU80bGd3V1ZldFJHdTNaWExqWENZdy9PVlpFeFI4TGpTUlZUaUx1ckVZeFFl?=
 =?utf-8?B?RG5aUWNPZk4rSEdpdmRPSS9IT2RKa1FWeGJPWm4zZ2pkOU1LZFVydFlRMVdm?=
 =?utf-8?B?UEZTQ3dJbTF4ZUlDZDFjVllmNHhwM3NDWEsvUkYzNjJXQTF0ZWFYSi9USE13?=
 =?utf-8?B?NUR6RGxZUWNDNSs4cjNkQy9odXhwOE1OYUhPR3g3Uk01V1l3cU9CaUIwdmpC?=
 =?utf-8?B?WmxObFFtditDeXFoVWVmU0lHSEtvc0J6dkdDOGVwMnRvTyszNmVQbG11bUNa?=
 =?utf-8?B?U1RSYVNvMUVJQmt4UFVMRkdad2svc2Z3M1ZGTDh3bS82dVdIZmwyblJITXNz?=
 =?utf-8?B?VW9tWVFoZ2xialJOaW1QRndrRk1hQTdoZkJJWmw1VU9UWCttMEJGR2xZbGhU?=
 =?utf-8?B?RWh5MVNWQTl1aU9LQVlPaDZHekUwK1dYUmFRVXFYZENHMU54TVkrVjFFUUtH?=
 =?utf-8?B?MkwrZXhpaHRMUDI3Qng1aG9DY3U1alNnTnpCMTlUUW9CbHZ5TTlnL0JwQnUy?=
 =?utf-8?B?QWJkVzhWNGpYbCtjblArc2tkUG9uM2ZiYTBEeUZzOHdnVm5wNms2SUZ4WUJq?=
 =?utf-8?B?V3dyaWFkN0o2V3ZCU2I1WUxXSjQwWkZzZ0ZOVHlaWXRmMlI4ejh5SktlN2U0?=
 =?utf-8?B?N01Ma1d1OVVJbmRycVYzL3FSSkJyVGpPelBsNUxYWlRFSGt4MVAzVUR6bUJB?=
 =?utf-8?B?MzhMZXNaWlRvU1E4S0tUNGIzMTNkL1JHM1JUNVlhSGhTVysvbDZyQ2dLeGhZ?=
 =?utf-8?B?dkR0QzBRNDFWM3FOK3gxQnBRb0lyUklHVURQdTA2KzBVWDVHQ3NrUHpZWWdD?=
 =?utf-8?B?emQwM1I2NlZXRlFPdTlhOGY2aTRnUHUvL1ZjUkpMajA1TVJ6YTBkemN0Nzhr?=
 =?utf-8?B?ekFaVEZDMnRua0FQQlFFb3FKOXcvczdiRnByNVBHWnIvREtKaXJ6alIxVVl2?=
 =?utf-8?B?czE3MmMwbGJxT1FkVDErS1F3V1N3Y2hMejdYRlBnamtadTRXMHFMUHFCNlZI?=
 =?utf-8?B?REc4V1lBS2wrTDBGWU5qYVlmZ3hRUWZFNTdRWS9uT2FoSlV2SzBLaGg1Y3FH?=
 =?utf-8?Q?gDoAiHtQxupBvmNhvFgaAqDLE?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ade0872-0999-419a-2938-08dd18eda93b
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7947.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2024 07:38:38.6958 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rw/ntvAaFu3UKb2pw2ogvQH3kBeuwuEmWXPrDqOSO9fhxyX0bTjezGLxWt5qNhub0fXbjYjYRSgUwDzQaP0YPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5982
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



On 10/30/2024 8:04 PM, Raag Jadav wrote:
> Having similar naming convention in intel-family.h and intel_device_info.h
> results in redefinition of a few platforms. Define CPU IDs in its own file
> to avoid this.
> 
> v3: Move file out of gt directory, add kernel doc (Riana)
>      Rephrase file description (Jani)
> 
> Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> ---
>   drivers/gpu/drm/i915/Makefile         |  1 +
>   drivers/gpu/drm/i915/intel_cpu_info.c | 42 +++++++++++++++++++++++++++
>   drivers/gpu/drm/i915/intel_cpu_info.h | 13 +++++++++
>   3 files changed, 56 insertions(+)
>   create mode 100644 drivers/gpu/drm/i915/intel_cpu_info.c
>   create mode 100644 drivers/gpu/drm/i915/intel_cpu_info.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 31710d98cad5..208929358b25 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -35,6 +35,7 @@ i915-y += \
>   	i915_sysfs.o \
>   	i915_utils.o \
>   	intel_clock_gating.o \
> +	intel_cpu_info.o \
>   	intel_device_info.o \
>   	intel_memory_region.o \
>   	intel_pcode.o \
> diff --git a/drivers/gpu/drm/i915/intel_cpu_info.c b/drivers/gpu/drm/i915/intel_cpu_info.c
> new file mode 100644
> index 000000000000..9a1bfff4be7d
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/intel_cpu_info.c
> @@ -0,0 +1,42 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2024 Intel Corporation
> + *
> + * Avoid INTEL_<PLATFORM> name collisions between asm/intel-family.h and
> + * intel_device_info.h by having a separate file.
> + */
> +
> +#include "intel_cpu_info.h"
> +
> +#ifdef CONFIG_X86
> +#include <asm/cpu_device_id.h>
> +#include <asm/intel-family.h>
> +
> +static const struct x86_cpu_id g8_cpu_ids[] = {
> +	X86_MATCH_VFM(INTEL_ALDERLAKE,		NULL),
> +	X86_MATCH_VFM(INTEL_ALDERLAKE_L,	NULL),
> +	X86_MATCH_VFM(INTEL_COMETLAKE,		NULL),
> +	X86_MATCH_VFM(INTEL_KABYLAKE,		NULL),
> +	X86_MATCH_VFM(INTEL_KABYLAKE_L,		NULL),
> +	X86_MATCH_VFM(INTEL_RAPTORLAKE,		NULL),
> +	X86_MATCH_VFM(INTEL_RAPTORLAKE_P,	NULL),
> +	X86_MATCH_VFM(INTEL_RAPTORLAKE_S,	NULL),
> +	X86_MATCH_VFM(INTEL_ROCKETLAKE,		NULL),
> +	{}
> +};
> +
> +/**
> + * intel_match_g8_cpu - match current CPU against g8_cpu_ids[]
> + *
> + * This matches current CPU against g8_cpu_ids[], which are applicable
> + * for G8 workaround.
nit:

[] is not necessaray

Looks good to me
Reviewed-by: Riana Tauro <riana.tauro@intel.com>
> + *
> + * Returns: %true if matches, %false otherwise.
> + */
> +bool intel_match_g8_cpu(void)
> +{
> +	return x86_match_cpu(g8_cpu_ids);
> +}
> +#else
> +bool intel_match_g8_cpu(void) { return false; }
> +#endif
> diff --git a/drivers/gpu/drm/i915/intel_cpu_info.h b/drivers/gpu/drm/i915/intel_cpu_info.h
> new file mode 100644
> index 000000000000..dd0c5e784b97
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/intel_cpu_info.h
> @@ -0,0 +1,13 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2024 Intel Corporation
> + */
> +
> +#ifndef _INTEL_CPU_INFO_H_
> +#define _INTEL_CPU_INFO_H_
> +
> +#include <linux/types.h>
> +
> +bool intel_match_g8_cpu(void);
> +
> +#endif

