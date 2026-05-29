Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EMr9NvxoGWpMwQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 12:22:52 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCEE600BD0
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 12:22:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 393C510FC96;
	Fri, 29 May 2026 10:22:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dHDi54Rb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1743610FC96;
 Fri, 29 May 2026 10:22:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780050169; x=1811586169;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=C/fDN5vu9EvNyr+JyHzxLGxnGaiOsvuPcKBtXc/XZig=;
 b=dHDi54RbTtF0gsuRDreXTACYhkVYHCInjw+IOC66D9OhJpHqsWFJ9mbK
 Xq5AjqnR0TthJBFVx78aK7gMFa8xp5ZbPd5UrZZcXbzdJ5f5BxOV9tWJv
 ABc0w6f9dnfHP4wRlMBscnB7IsbkkpOCgj1vagsrTn5fRcCbV1oHJAJoF
 96Nbb7BF9oCXDzS2LL1yxl+HSo23IvqBkRafiLUp3nNaIuAlwQ/8rSon6
 NY/udTYcwI4HNlihV65Jrntbe1FSWdrM5kX8g//RptRfxrqoUMNMc6lGW
 nVDHNfzbCmO2NHCGixaRBkmI5lUzzxmOkLHdLqPbvp4nw83xrw7dOWzME g==;
X-CSE-ConnectionGUID: HGam4EnxQfW8dnGGp1U1XA==
X-CSE-MsgGUID: 0JVEuQuqSBS+Jq0lM2Yimg==
X-IronPort-AV: E=McAfee;i="6800,10657,11800"; a="92375070"
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="92375070"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 03:22:48 -0700
X-CSE-ConnectionGUID: LTn/YPJITMW4cvR32pOCIw==
X-CSE-MsgGUID: 7AyRNcr2SwyraocE8w+W7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,175,1774335600"; d="scan'208";a="238413643"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2026 03:22:48 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 03:22:47 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 29 May 2026 03:22:47 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.25) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 29 May 2026 03:22:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NHcD+IqwUDDF6HZfVTEC6BAmrWIxegcKxlGcmxegjG0xjqcctVknhXSNgTlHQupeSEcEg8uavId8ApyfHpEqlbgUEJR1W5PqhC2wLWgizqDXu54URZr7MFYB16CUpyuUJdOUwMqrKvOskbVgkTvAc7JQ5JHzO6IRMe4pqiMVCXWxkcSLuJEkK/EROx3esvtkRr4mWJpE6jxdvKLsRh50Iz7jiuvuAF1A4HMK4xhDXu/kdijRfUH5WpUEc45BS8YaxXOVWKHgeE7s3oFU5F/IIK5ioAlDSVO4GKkwSQVzPNCXTqjYt63yZ7NcDGnxh3oXkfGvY/NB46g+OXlvfJIzlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ILIXt/+JzI3pCtagn+rzPYqExrajTF7OXZBooxFPNjM=;
 b=KS1mvp8WNzAwtKa4E+gDgVKWL7LjGlVFPSrL+0ej1hUYpZ1L4a8x4LQz+UoG4s8y6HUUvlGMyyO0XbXl6gIe6gkcirR0sOxIZi9extpb+cSIVz5nkh4bt3ohmZ8x3A6y9sbmIvSnjKgb+s3b9m4ruPxXkc4oR7pifTUCZrjlw95pyOe6dULAVpxYXqXJP+DAdxvWjZQx3OH61OVQ9MqEL8imtM72awWBKYYG43CivGAfPxWTLFA+oqPs26dfr3pn6zd+LnWf5xvwmx+v0gmqHBP8COSKqsW7VvvFGey+8bf/0wGqPquIFyznUWhAdmjm+pC8rFNWl9kDe0cOiJ3m0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by DM4PR11MB7400.namprd11.prod.outlook.com (2603:10b6:8:100::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.14; Fri, 29 May
 2026 10:22:45 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%5]) with mapi id 15.21.0071.011; Fri, 29 May 2026
 10:22:43 +0000
Message-ID: <219a4781-8551-4d5a-a9e4-06626824737b@intel.com>
Date: Fri, 29 May 2026 15:52:35 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 01/15] drm/i915/cmtg: Add intel_cmtg_is_allowed() for
 CMTG
To: Animesh Manna <animesh.manna@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <uma.shankar@intel.com>, <ville.syrjala@linux.intel.com>,
 <jani.nikula@intel.com>
References: <20260526133811.2621675-1-animesh.manna@intel.com>
 <20260526133811.2621675-2-animesh.manna@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260526133811.2621675-2-animesh.manna@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0170.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1af::7) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|DM4PR11MB7400:EE_
X-MS-Office365-Filtering-Correlation-Id: db5f6af0-37c8-4e2a-5b74-08debd6c385f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|3023799007|11063799006|4143699003|56012099006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: btugRPmwh0umH7GykBu3k33Snn4uCFfp6PSejwUsg4qr3LBEQbMi1w2zuGZ3JguFLKBpeJmdK5QLalHHajb3ZNVS/H8TJM8S8ngM8OtG8z3IA7zLosgj74fYiFWkJYa2kHx6+OrnlSwrGipxYGWxSYCDRk6EJI/KrhCe0/baRd3ayKLmTEpSBzBj4U1UPDv95oxekOAr0nethUagJ+RpjnKI+ENR+KSC6WPaVAP8oRfz5ON6UWWcGRpv586oK7EFe5kcV030gEm8IQeiBnCnw2HvgGNpOsfeEPNg3ffpNw8P6wFqByiMwllWkkdFvQVdheh1lpvSxtqd8MoCE6PwPpk6609CN5rrQ4GG04zS89mns+1IWbh1LruRkvujuXVxU4nCBWORcWbB7++hgAoW1Lnt7NnnkauA5PPhC87eKsCiYTABSr0ObGxmLrlYka4vdmlb/x8stw81UvfvJ3ZOHQw9CttYLSYCb+x4wW+NKtBRbTHrHJ8L43OHKsBla4PwwIV0CwursDuoEzDLJZrAm8ZLdcqQEGljtE/of+hSmt6pwBHih/nI3mmslyjfD3Ez6kPIuucjOXmz5JqlEE8B1X4n9vP55CyUS6mSyFQpBVSTeh0GmVXu0/05Sk1glCbysfZherAP69PrzCWFtBrx14azqsE9fadq1nrQYUMs3NqQ73fFjBDsBf0T5WMUuEiqOdoE539z/kbPJVT9FXo5Vw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(3023799007)(11063799006)(4143699003)(56012099006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?enBKcWQ0eExHalp0K0NMWTM1UDZpV244OE9Xa2h5enhNaFdYVk8rUFFLNjUr?=
 =?utf-8?B?NEx5OG1ZM0NwRzdXR3VUN3JBR0l3d2g4SlJqbUxZS014RDN0NDVadGRQR0xs?=
 =?utf-8?B?bHcrL0FNZ2taeHhpM3FNbHdlV1IySDBJV0k0Y1JYbXpSaGExSEFHaDhnMmht?=
 =?utf-8?B?Y0MwMGI5MEdyTDhBaDh5ZDlNakRvTUFaaXhON3lueE9pRURBME9ZV2tGbGx3?=
 =?utf-8?B?dVVBRnlzbkZTT21kYi96aFlZa3BpcDBjeENackVaSUVrZkkzdFlFai8xd0dh?=
 =?utf-8?B?UTVabHFpY1pwUXZjRk9pajJZaTdlM3hTbGxnRGhXZ2owTUF2WG5DUHdFaDY2?=
 =?utf-8?B?cFV4bDhrc21FbEJYZVNsTEMxV2pXNW5mL3phOTZ1VzBZRENvVVQxbGEwZzhx?=
 =?utf-8?B?OFdNbDZGLzFEL1Rqcy83QVAxU2Q2aWNBb3g2NTJLeWdBVkpwR1pJZmg4MXkv?=
 =?utf-8?B?eFZ1UDA0RlMvb2wvM2J2RmVscy82VVVrZk1FVDdyQUlLbUVvYnkxblRCOWFP?=
 =?utf-8?B?UEI5bys0QmEyUmdPdDkyZGpNSXpYRWdCUW1xT1RiRzJRRDRnZHJzczNVQitn?=
 =?utf-8?B?R1hUcjhIdy8rSnN4OVQvaWxDRHlTQTFTYVFEZ0pOMlBjS3dNQmtPbU9LTmE4?=
 =?utf-8?B?c21HNS9Fai9tdnFBb0V5MzVVSlhkbG5CYi9KQTA2UlFZQWNEWGdHODI5MVZS?=
 =?utf-8?B?UUJpUnhFSm5xcmNPTW5OZDhjRjFzakNrVnNzbCtFU09CTVcxMW1SVW5aUlpj?=
 =?utf-8?B?bjJwZ25xZVAwNlBXUFV5SnN6V3A3QVBnSi9FQlVsNG15UmFGNjhqUEM2UThV?=
 =?utf-8?B?Y0tFYS9GYk95TWNuTXBWZHA4bncrcjBuUytxaHZ5NktXQ0hyN1p4RGlNOG5s?=
 =?utf-8?B?YUw2THVGeFFMTUtTUFdEQndsSER2Z1VWK0JURDhtNWZBM05kdzMxMWNDajJN?=
 =?utf-8?B?WE1URzVmT0RDbXVIYm91SVk0eHBURS9sSzVpdFQzNC9Sb0h6RHN0bi9BUUdr?=
 =?utf-8?B?eFYwdGg5eG96OFFGbnlkTEFGYjFaYlF3cVlKYVNMSVEydnVUOHJPTGlNdkR1?=
 =?utf-8?B?M2RLc1E4ak9GRC9LVFJWMjJhUEF0cnhVTWszdkg0cy9qZE1oRzVnQlBCUGZy?=
 =?utf-8?B?UE9ISElVL0JRUzF5N1k0VDJkOVhobmpwUHpBcEZZU3dNWXBSNklUOUJPZ2d0?=
 =?utf-8?B?VEdDS2RNN3BkUDEwNzRUSkFheUcyb1RncHdTY3ZucUR2NzlYU2MxOXhHelFj?=
 =?utf-8?B?VjB3aUlhTEJBVGI5dEZuUzZwWEZ6UXRhRm1INEUxSFBFS0NpN2wvc00wTjhY?=
 =?utf-8?B?eGZMQjlZajZtR1p4UERzblZIVTZ5QlVtbWMvdWl0blUzRlluOWludXRsVFVE?=
 =?utf-8?B?MFU5aERlWXE2Yk5BejdpR3ZjcGVKdWptWENiVmxYK1dsd2t6NXlKZGtRaUpG?=
 =?utf-8?B?ZDJvTUJXbG9RbVZBQlZVY1A0blo4LzRGQkYyZGhNa1AzSE5wZk5EVVpVWlhV?=
 =?utf-8?B?dlNBUVdMMWZibExSMll1VmFHb2Q2N3RwbVZGdWluZGgzK01VaDhxTHNGOGdQ?=
 =?utf-8?B?SzFleGlYLzk0QkpObitUNTlDRG1hVG01TkVMYTJOc1NBLzA5SkFUOWNDL1hp?=
 =?utf-8?B?Si9PdlBYNElzekJJTSttMU81c3RneU9WUnVVZVlDM1VNd1A4dm03eUx6SVZn?=
 =?utf-8?B?RS9Ua2MrRGlBUmhPdDZJRGdEVkYwbmVlQmIzSGI4bDIvblV2NXJSK1pkNzBa?=
 =?utf-8?B?dENXT1U3RnBNdVVTeGd5RDhaUGQvNFFTVXMxK3p4MVVPTUgrOFlTdFQxYXB5?=
 =?utf-8?B?T0ttK2VpQUtFSURDeDROcXBhY1NuZVUycEYveXcxc0pYZkwvekJGOEpvYS9Y?=
 =?utf-8?B?UjZwZFdYY1IzeHE3aTNkYTlubFl6WTRxY1lVR2ZpK3c1THA4aHU5MG5DZ3Np?=
 =?utf-8?B?OTNxNys3U000SGpNaGxLc2RRYWgvR1JkajVtQjZESUxzb2hQYzh5SElRQzk3?=
 =?utf-8?B?d1UyZEgva2NpOUR6Q0tkWnBmSEpnWlUvZzVaeEliZzg2WFVEblJNcWxHQWVn?=
 =?utf-8?B?RWIvRVZYZTVQQWZDZ0xIQU1yeVZQaWUwMkExMW5Dbm1vbi94MlkvSE81QkJq?=
 =?utf-8?B?SlgrWUJNQTBLVTFHL0lDSHV2THV2Mm95c1pRTGp4NFVSRGtCSHkvUWZoYUg5?=
 =?utf-8?B?d3JjOUM1clJYZjNhbHR3eUFGRUJFT2pzbGU4NjNnWkJxM1I0WTNnZlErL1dV?=
 =?utf-8?B?RnRBWjZKVnd0bVBNYXM4aUkrRjE3alczMjQxZmtabkJpZEtkRVYxODF0U2R5?=
 =?utf-8?B?SkFIbHlBWXNvVFdTOEMwMmt4THhZYnREMzZHdHJsSU1EZFk5SEJ4Y0NHbXky?=
 =?utf-8?Q?cC9DtNZR4cE2EeVNZ4Ss7hzcCT8gOr1T7sAsy?=
X-Exchange-RoutingPolicyChecked: bppFIsxFJ7FuvwrCUu8qglFdsFGuICSoVY+lj3tLqsvxZ9SB1BLYR5TK2lO0ZYERNPjpqscgZZjsL3ghgAYUW7cuITw0WuJjl9q5nvjNhClHVLuMVIEyaxVkwc29uT8l6FQoTr7FJ8X42ZLx0SnJq05N/IMEE4JT+KL+xKfU0DAzAh3GKVO7/72h4m+iE8lPCVbN8jJb0zF/woOnPB3xaPkM0n1v8mQQNL8v+F3TMab3P+OJQH6VWvWb44pz29b9R21cxY5eoS66gt9HPkz3umODbciy0+188wFbu5LWIBiq5RNQhsfCGr0abMNTuSqw/LKtBAVwo8rQk2dzVDY2Nw==
X-MS-Exchange-CrossTenant-Network-Message-Id: db5f6af0-37c8-4e2a-5b74-08debd6c385f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2026 10:22:43.5677 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XDDwwi+vBPEt4bbItwBxm5rbvtAa5DHaHThzXkM+C7qKPAW7TWrMFC1OkEEEuTxqE2FiVq5iIW7luJxTe87L8v3WYFxYaKmBaYWya+lCGyyuUoA1/DytKSmPAKY6psTT
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7400
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 3BCEE600BD0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 26-05-2026 19:07, Animesh Manna wrote:
> CMTG will be enabled only with DC3co, so add a separate function
> intel_cmtg_is_allowed() to check the prerequisites for enabling CMTG.
> DC3co will be enabled in a separate patch.
>
> v2:
> - Remove separate flag for DC3co from crtc_state. [Uma, Dibin]
>
> v3:
> - Do not access power domain members directly. [Jani]
>
> v4:
> - Remove check for DC3co state now. if needed add Dc3co allow check
> later once Dc3co patches are merged. [Uma]
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cmtg.c | 14 +++++++++++++-
>   drivers/gpu/drm/i915/display/intel_cmtg.h |  4 ++++
>   2 files changed, 17 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index e1fdc6fe9762..a279f3dcd1ec 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -4,7 +4,6 @@
>    */
>   
>   #include <linux/string_choices.h>
> -#include <linux/types.h>
>   
>   #include <drm/drm_device.h>
>   #include <drm/drm_print.h>
> @@ -16,6 +15,7 @@
>   #include "intel_display_device.h"
>   #include "intel_display_power.h"
>   #include "intel_display_regs.h"
> +#include "intel_display_types.h"
>   
>   /**
>    * DOC: Common Primary Timing Generator (CMTG)
> @@ -185,3 +185,15 @@ void intel_cmtg_sanitize(struct intel_display *display)
>   
>   	intel_cmtg_disable(display, &cmtg_config);
>   }
> +
> +bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	if ((cpu_transcoder == TRANSCODER_A || cpu_transcoder == TRANSCODER_B) &&
> +	    DISPLAY_VER(display) == 35 && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
> +		return true;
> +
> +	return false;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index ba62199adaa2..ed540581738f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -6,8 +6,12 @@
>   #ifndef __INTEL_CMTG_H__
>   #define __INTEL_CMTG_H__
>   
> +#include <linux/types.h>
> +
>   struct intel_display;
> +struct intel_crtc_state;
>   
>   void intel_cmtg_sanitize(struct intel_display *display);
> +bool intel_cmtg_is_allowed(const struct intel_crtc_state *crtc_state);
>   
>   #endif /* __INTEL_CMTG_H__ */

It would be helpful to mention the relevant BSpec number
describing the TRANSCODER restriction here.

Reviewed-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>

