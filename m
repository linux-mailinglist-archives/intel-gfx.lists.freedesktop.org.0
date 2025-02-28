Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEFF2A4926F
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 08:49:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6934B10E217;
	Fri, 28 Feb 2025 07:49:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PyH5JYe0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D757F10E217
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2025 07:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740728988; x=1772264988;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=evk8SXlHkkIyRyubydYcAktwbpQ9mtTOI6gUy9qCL3g=;
 b=PyH5JYe07+q/b+F6PNtZqYW8pTeMKXIVusj2NF6AvFoKgZCFI6hZNVcr
 Ik6XDkvrGYnGCx152aGWVW7/KN8gnq5RneCTd75NuAdz3CKG2QMjePlZI
 xfxzg4uObdi9G7uzDR/iPfae23rVzF2B4bRXCyu6Ybz0x1Pwd0fy9BOu6
 OUSeELsx2LheOmKMijhNWgFwD8aF6egrOmh2RyyftSjRt0N4mjBwkcean
 ZqwJKGZtgPUx1RjInupbnbOs2LOcmxdXk8WyvyMmc01J0Hx+navNZeawY
 xNUQEEBYPYooWVar816/+/7bw1t+l7jOBnWzkwHkHLOoBpwNFzTruN4C+ w==;
X-CSE-ConnectionGUID: 8npIkkCESDyEz1B5YvjEKg==
X-CSE-MsgGUID: 4/nPnsfURsqVm/A5ZR21ZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11358"; a="41777175"
X-IronPort-AV: E=Sophos;i="6.13,321,1732608000"; d="scan'208";a="41777175"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 23:49:48 -0800
X-CSE-ConnectionGUID: OvvAE7nPQ5OrFLRauz2NcA==
X-CSE-MsgGUID: /HLXpaH4Rhumv5wKiEomXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="122500091"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Feb 2025 23:49:47 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 27 Feb 2025 23:49:47 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 27 Feb 2025 23:49:47 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Feb 2025 23:49:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W2+5678Li/3GmnkodCM3mXCcfT75k8s7UfHmcAuBSX/9jG+Ce5D4JD/xwbnDruZwNP5uHOB4FNWrq7JoLsUcdYheClYdR5xxhjj7y2JE8r1oO4sqLjSUYGCJnZv3uzG4BtZZcv4VOORYnLijL/OK827soulAog9xcO+KcOYxNlcn7LaFOSylKMEDnRRf3XBQ0WW79OIeuVMrd6d0R9XeRFTfLPlu4ZQudKFAycUzHDQyx9fo3iShTvoZ5YlI3ejYLTdRphA6ZCpHXdXqKZwIQw1fKTO0aZag7dBAsX18HY58yCZ94tyr3gmWcSkAPT7j6E+M4tuwF2y1zH7+Etghkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WzlusKj48rVFWr9++uDrkElrnuqKYDAVQaHGZ10rldw=;
 b=Y552fyp+XVgovtCqTd9hawjEflV0CGOSnzTjxZVXNs0lHeKQrbrS+BFNm9qK2vzYpR3r495h+Fs6iRMSMnk2FfkFko8eawBsW4tKvYAT25n8jjlRYCi59tn2pdFmRwC/Zaxn1CgU67XUSr5wCql0xqiih7aVfPpMuI33Cnt4JF63dWWa3uXAZK1jle1L76XOq+p162L/qnYJIBQ7kdRRL/4oB63tK8Umw4z1vj6VnPQf7CQuSrmygik1/JQ4HXQ3sQ5GBU4+1feBpj/4RRhAVKa1D5vQQZZR4kLF8mlJ8WgjWBH6e4K6NbsB61uiGj/LGx46ZQh7CcurqGdxveVrig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6409.namprd11.prod.outlook.com (2603:10b6:208:3b8::18)
 by DM4PR11MB7374.namprd11.prod.outlook.com (2603:10b6:8:102::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.22; Fri, 28 Feb
 2025 07:49:31 +0000
Received: from BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b]) by BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b%3]) with mapi id 15.20.8489.021; Fri, 28 Feb 2025
 07:49:31 +0000
Date: Fri, 28 Feb 2025 08:49:21 +0100
From: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] i915/selftest/igt_mmap: let mmap tests run in kthread
Message-ID: <2x5mflmsnr2uw4hpximytd6czfia4k7o2gfebyf34ovvb2mgxt@2vqna56iatm5>
References: <mqzn3acyfarzlst3tt3mh5r4bvz4ntjkz5a66pip7qmm6hslb2@qc7g7j7q4z3y>
 <th33hxf2nabfsjfdo7opte3mv3rkkasmqajguxgwcluvpvwkzq@mtoxcubwzopp>
 <6774543.4vTCxPXJkl@jkrzyszt-mobl2.ger.corp.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6774543.4vTCxPXJkl@jkrzyszt-mobl2.ger.corp.intel.com>
X-ClientProxiedBy: VI1PR0102CA0097.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:15::38) To BL3PR11MB6409.namprd11.prod.outlook.com
 (2603:10b6:208:3b8::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6409:EE_|DM4PR11MB7374:EE_
X-MS-Office365-Filtering-Correlation-Id: b38f1387-e063-4f13-f70b-08dd57cc6f74
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a1gvL1lkYWlUNVdFeXpkS3dCbFFWaFNaT3BoQloxcTVmbHVESWVUTEprcnR5?=
 =?utf-8?B?TExEMXlFbzA3RUNxcjAwQWFXMmxEejBZeGVWUVBuYzd4cjBPOFoya3VTZFZ3?=
 =?utf-8?B?KzJva211Qmt2dVpQazdYNHQvMUl0ZkM4RVIwTGlvL01tbXQ2bVZnQm80YjA1?=
 =?utf-8?B?RTV2MlRUbW5jcmFyUHlaNTgxdWhzTjc0d1Z2cjNucUhCU1FGQ2lVeUI0RnhN?=
 =?utf-8?B?L09PQ3liN2ZTa3M4WGw2ZEw5WjlLdjUrQXVOUDRCNkplV0hEaVZhZVlCdzBX?=
 =?utf-8?B?V3RrTFkyczZGVnBUSE5RejhBakVsb3NyTlJoQm5EQ1VBcDlPRDYvOVF2cDh1?=
 =?utf-8?B?aWNDdVRMRkx0UmEvaG5nSEp6VkdkVk12MWpweU04RkRVamxIdldJbXovSXpV?=
 =?utf-8?B?NlIvM2Z4eXpqOFNsMXUxWDdIZWxOTyt2RXYxS1BWb3pNOHdicTlqdkJZdlA1?=
 =?utf-8?B?OUp1a0FOWVcyR2IvRVlzZWJ0b0MzaDU4R1N4TGhPZ2ZCRmU0a3FQOW5yNG9W?=
 =?utf-8?B?Z1BrUnFDMmphZjM1alg3dWtSSkxnQUJtc2R1bjJyNHpiYkxnTFczU2ZPSHN3?=
 =?utf-8?B?RkN4K1dtSHBrTHozaS9HZXQrNjVrcHFpM3RURHNsK1VNQmFZMWplbVUycUxV?=
 =?utf-8?B?N3grczZ0U3M5RWd3MmQvMmRiSW5vcXZVMGdHSjg4U3FUSHpwT2RoekV4aEly?=
 =?utf-8?B?MWc5TURTeVhNTERTU0FBVlJLbVVXYzRaWXViWVZqb3FuNGhjZm9qcWI3Y1BS?=
 =?utf-8?B?ZUp0T1RSRlBMVlBnQmtUMVYxOWVHSHU5Q2NGRXZSNFBBYWNoY3RaRmlXQTBh?=
 =?utf-8?B?SHlwbGJvMk5SVzRkQ3B6K2JicGhWcTByV2xhTUhjTmQzWGpzWE5DQXI0RWxy?=
 =?utf-8?B?OTc5LzVJUW1tSTFQZU42ZGRRenBUUkFRRmpXVVFYdzcvMHRkQnNmNHRMbkcv?=
 =?utf-8?B?QTd0dlE0SUh2NnZnb2c3TnppVmdYSzdLOXhacURvZjhPYkE2Ty9FVlVtRE90?=
 =?utf-8?B?bHJBVFRZQS9HcW9oZXJ3QUd6NVpDWWZsZWJxT09mYmhtZmk2NHh0SEtPWjRI?=
 =?utf-8?B?RU5jMWx0Vmg2RDZidFBNZHpLNzQrV0ZzMStQMmI4N043VUJrd2NuK1R5UDFm?=
 =?utf-8?B?UkZJYUdUZE13a1dtTGo3cFFnZGVRTStvUjRXbkRaTlMvRlpxY1h1a29iNnRD?=
 =?utf-8?B?VWlwb3dJYm9RdFR6cUpTSzhRT1oxTVJ0b3dlak0zNVlnalFFUDJ1NGtlME9U?=
 =?utf-8?B?dTlmWXA1dHo3Z0RMd3ZZS3BwR3FMTHp5T3NCNUdQNHdTSzBndjI2clFxY2x0?=
 =?utf-8?B?M0NxNkY4L084S0xLMm1ya0x3Sk1XNFJtelltNzcrL0lVdVNQZmZ1Z2EzQjRS?=
 =?utf-8?B?QTV4cmpHSjZ1NFZySG9tMDFNTEpXOEdNVmNxTGlKVmdxUHJqcUh6bVJYNWZk?=
 =?utf-8?B?WE1qS3JWNzdiR1FIQ0J3b0xlb2NHRjRSOW5MNU1hcGlaNUVrTUJxRC91Vk5Y?=
 =?utf-8?B?dWE2a2Mvemx4UzVOakNUVFBhYWNzWEl6azFDZnpUa3BOeXZ4U3RPa2RrTUI1?=
 =?utf-8?B?dk02THlKZFRNNmp5NGtCaDloU1RHUUw5VkNWSGcrbmQxRmFVcmNiY1AyZHFS?=
 =?utf-8?B?ZFBGRC9CWXFFZlc2RmorZGNRNE51RFRiczRTeThZbmhIS28ydE9NNWQ5TFhs?=
 =?utf-8?B?b3RLdUplVFNWd0w0bzUwQWtZeGxmODBCWUVlaDdEZGEvYUhvczkxUUQ5Z0J2?=
 =?utf-8?B?Q0RiSGRUQmJOM3RyUWhpbFgzdlovT1Evd0JDVEhrbXp6RU1icmhyeG8zMW1z?=
 =?utf-8?B?RkxHeldoNnhoQWhzekg5UT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RDhXY2VqWTEwWFAyd05weVQrNFJ4QkU2bHlzclpwVERBTEt2a0JkNmhOcm1K?=
 =?utf-8?B?aiszYjhLcURLR0syb2dUZEo0eDZBdWFGbnlSdSsyNHNoUmNTRHBQc2FrNWM2?=
 =?utf-8?B?TkFVSUJ3UzFpengvQldPeVdLV3Y3UDRMb2Z1V2JLQkRGRDBUUGVsRllDZDZJ?=
 =?utf-8?B?S3EzUW90M1VPa08vM3Jqb05TSEhOUjZXVkZUSU1PazEwUWE3Vjh0Y05PUEIw?=
 =?utf-8?B?ZW9wSmR4ZG9YdnBaSTltcWZuOWgvZ0VjOEQ3b0FxVEtRbkhZUG9HVHdwZkJ0?=
 =?utf-8?B?cnVWRHpDWFhJcXpzS0dGcmlGZm9vRU5JaDBaanpwZHZTTi9BTDRZSHBmOWdN?=
 =?utf-8?B?SklCSk5ZN1paaWcyT2JjSElkL0dYd0NLNE5yeGR2QTJ1UG9TSmloSnhSd0Qr?=
 =?utf-8?B?TlVkWjAxMXhxZkdZa2t2VGZOUDBWNXpvQjFNd3JFaHlCaW51dVFWOWlXOW5z?=
 =?utf-8?B?UHV2U2N1bzU1cUphQ0VhT2dHOHFSSnlsbzN5bVljb0Q3aHdKK004N1FjcDhq?=
 =?utf-8?B?b1dRdGpxc1FqWEd1M0pqSUdsV2VsOGhVdWd5Ym5BdjVwckEvaWxwVER0ZlIx?=
 =?utf-8?B?YWJ3UnJIVmJJZDJYeHdoUFR2YXJmNVFxNTAzUmZCNTdFbVdrY3ZBMXMrZDBZ?=
 =?utf-8?B?WXRWdllVWXlnM2RJeWY1VDFiM3lCazQ1ZGdlc2pTN2twb3FMZmtmU1BjV0FM?=
 =?utf-8?B?WUo3M1ZObDI0d0ZUUnVNTk5XTzk4NjVZV2hoNlpDc3F1K1E5bFJvYjlUU2Nv?=
 =?utf-8?B?Y05FUGsyeVJMQ3k1MTVxMWpjREwrOFVNUWxpeEZBUkJ0ekVhQVh4UGQzVkhV?=
 =?utf-8?B?YzJRMVVSOWFQaXVBK3RzNlB4UG1nZWJZZmV1b3h1VEVtNUhNdnQycUx6QmpE?=
 =?utf-8?B?dStGZ1dMQTV4M2FSZzdiNUhzSzllSDhWbVhTL29ZNHFWWHkyU3ZGRCtqNE8z?=
 =?utf-8?B?L083R0tSWkxQakVSNFNUbHExd1dhL1dCdkQ4dXBHajJBREdNbUJGckhPOTIy?=
 =?utf-8?B?cjhadEZNUHBoMUtKbGEwb29EM0R6b2JleXdrdWxFbHRrVUh2dFRMN0kvM1RC?=
 =?utf-8?B?bDdpNkVZb3NsNDgvVkhWSUJYMkovQ3FvdytBVGxzYVNnWXBvYXlhdlFxWFpC?=
 =?utf-8?B?VWRwLzYzWWUwcG1pRUpONEpid0p3aU5QVnd2SmRJSkx4QUlNUjFMeHlrSXNZ?=
 =?utf-8?B?WldITVAyWWtySXh5aUFQWlRxNUxVanBUN3JobGxyNnJmanljZ3ppa0ZsOXJ0?=
 =?utf-8?B?cDAxbUMzVFJFSndWNTJ0Q3pZZlJMRHNQU2tMNlhXMTB6WGpFZXducFFDVnNy?=
 =?utf-8?B?QkY1Z0tZbm1TRm1GT0Y5TzVWQnRKdk1hQzkwQ24rdXBGUVNrbGw0clFkam05?=
 =?utf-8?B?L3QxYmJ2dndweHBXUnBwV29yZkVnRDJac3hKWDJFTU5RNzFEekFybE9uVEZL?=
 =?utf-8?B?UldOMFNkcFVmendNMXZVTXBKcGRNS2Q5YzBBeTJaR3V2aVdrSVZ0cEtPT3VK?=
 =?utf-8?B?TUIvcDBhem5oTEhLbDRBa0NPT0taL01BME5BSHEvRHQ3RWxKWTBxMlFrRVQr?=
 =?utf-8?B?OW5lZUVScFhSYnFwcmo5VWxqVGpia3lKQWYwR2liQm1BY3FEcm9qYytUemlC?=
 =?utf-8?B?K1hRY2VHdExNZHdwc2piVFFhVldmbW9TZXBrOFlZbXhySlArZzBDeVFBRjN5?=
 =?utf-8?B?Zzh3cWxMUkoyMWZsYnB0VEtmNkZCLzNqWFFxSTNLRmNuOVV4T0wwMk5iU2h5?=
 =?utf-8?B?dFdMSTJMVzZEejFWNTZnd0FrdUtnOVExenlFUzI5VDg1Y1ZjVjN5aEVRQmFJ?=
 =?utf-8?B?MVZkZDF4Q3ZpK0pUM3ZkSkhqWGlnMXNIUmVzcHVhU0FhdmY1L1hCZUw5Z0kr?=
 =?utf-8?B?K09kRlh6ZGEzd1pvVjFCRzQva3BFUmV1YWdJbU5oaWdzbUdrVk5TcGxHK2lU?=
 =?utf-8?B?VGlMbGFoakdsVkNUaCtZc25xcFAwSGc2RWJCWDUzbVI4aUw5TGlkcGFNeU1u?=
 =?utf-8?B?MFYxb01IZlJSZ0p3UGpjSG45bVdQaUR0Y0RQMVdNbXU4eW9LTjcraEp2eERZ?=
 =?utf-8?B?cVB6WkF4QWlaV1RrbG9nZVdYUjB5anhvejRUQU1XbHFGem9RSEZEUm0xZG0z?=
 =?utf-8?B?V1dXZ2Q2dTAzT0xhaUdmV2NjcTRFQWNPMFBBTEVTc2V0dWNGbnI2MXJ6WERX?=
 =?utf-8?B?blE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b38f1387-e063-4f13-f70b-08dd57cc6f74
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2025 07:49:31.2796 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qNPUadw/1sFgya7BcoUIcRUveohvV8sbKwasjTnA7fDUwhAmdje8Kam5gOdN7RzFuWjOKe7vnuGwzzzS4W03cRb0zhkdNmGkcQNyY2jRwPA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7374
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

Hi Janusz,

> I agree with both Andi and Krzysztof comments.
> 
> If the issue is tracked in our bug tracker then please provide a link to its 
> record in a Link: or even Closes: tag.  Do you have call traces on hand?  
> Probably yes, so please consider adding a concise excerpt to your description.
> 
> While looking for similar cases, I've found commit 51104c19d857 ("kunit: test: 
> Add vm_mmap() allocation resource manager") that seems to have resolved a 
> similar issue for then newly added kunit tests accessing current->mm.  Maybe 
> the approach used there is worth of reusing it for i915 selftests.
> 
> Thanks,
> Janusz

Here is related bug
Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13679

I've seen commit you found. It sadly uses symbols that aren't exported
outside of mm module and kunit tests and so I can't replicate it in our
selftest.

Mikołaj
