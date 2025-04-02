Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4469FA78C80
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 12:39:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0921E10E744;
	Wed,  2 Apr 2025 10:39:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MNioAfKb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A40410E743;
 Wed,  2 Apr 2025 10:39:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743590378; x=1775126378;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3567/K8dJah+ZW/Vq5goChjlPCBI7vGH3CG33WIZDo4=;
 b=MNioAfKbAHsIXHCz5eAu40V4XDqNAJtz2QSXdDFJIUS8u0kxxwwLgFsV
 6ME9xiGNrJ3JMfhK4BT2BmHUZM4/KsommqtaHIOZA4VFhZcop0TSeMJyw
 FpJ+fTSxRgFR47NgxJLznHvFyZGeJ8lWp9uuF6wM2l1qLEZBb2TQjOJkj
 wDEJ9xopmp46/P/8Hd5EA0NEDC7pGs1VbtP7k38E3kJuORwKRE5yS0tcf
 xR9rSeGRkKhC9E0qjyvS41gapNRZDRCqy4TCXNnAfiddlJf4QW+BzWXjK
 gd2zp+SwfYDZOU7HY5pmhkaXEYTsfdrAgekbAfWyFi4VWmWVdbYnqCS2G Q==;
X-CSE-ConnectionGUID: Fh/9pPNESlWZtCD8+9n8Jg==
X-CSE-MsgGUID: yjiae0llRSymPzQ2TOZ9Bw==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="44094537"
X-IronPort-AV: E=Sophos;i="6.14,182,1736841600"; d="scan'208";a="44094537"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 03:39:37 -0700
X-CSE-ConnectionGUID: UkI7JLm+Rm25nECoObb9vw==
X-CSE-MsgGUID: QS3rT07GS4WzgmxgN23biA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,182,1736841600"; d="scan'208";a="127563032"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 03:39:37 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 2 Apr 2025 03:39:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 2 Apr 2025 03:39:37 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 2 Apr 2025 03:39:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TOl1QYwgA3kh8sUhHrrJq6bKpAiUm91X/3ecpfeMmFpGX+H3DSqRHfjRi3kGNkkZ+j97nAtMJO8MruEr9b1wlhIt69HhZCQ3W8izf0q094qKR5q0DZZt13795qHf+QuF1G8I/W54EB2dCJJeAB++E5b/KByS8kd5JKdRFcAvArqyPzblVLcrpj7Gz3qdxfq6MNiFHEaImf+cuUzxMPLI4JgrK9JsHmC1XyUwoSVI6yleQaSEMl/vKcwRSy04LPjEMm5ZyaJOjMWa3wYw+0hdXSBmMDwrLfAeHubJWPLrEifTGaI1pZyTfuUza5wiUbp51ecG2TEXmMtNJHWC3Yd5Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ngFPfommiPz1obQWXV/leguEY1kzQYzqe3ElwNTlXzg=;
 b=alH+znfqqYJtlz8Ync0IXasA6Nkfu8lI4eVmAFs2NcVztnmFVmjIlZhNPJ517DuLElwnrPo0RAtQ5zT9toJ2BDiNvFoQDabq0SDUZocotWJfYcIpoQAEvPN00PfMeNzfyVS/liPi8k2re+ptptZFocwi1NBtAciPLFCtc2MLNWMLoRu3as1yWGUE+rVp4ybe92TDRg20EfhulFB1lQUYSQSfEqe+7Sy78sy4EqOcY+Hph3rBeT47u4w1BIKWNpjVpMQHYhR67IefJoDW38nvR2Qt9aBoxw/g5Mqk/V2hrouNAO7g3ZE9WdzOR7TewpnnPLJGKwyFed0WNC1oalFM9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CY8PR11MB7688.namprd11.prod.outlook.com (2603:10b6:930:75::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.50; Wed, 2 Apr
 2025 10:39:07 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%5]) with mapi id 15.20.8534.045; Wed, 2 Apr 2025
 10:39:06 +0000
Message-ID: <8111bf22-d05d-4d5c-adeb-27c1b7740e81@intel.com>
Date: Wed, 2 Apr 2025 16:09:01 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] drm/i915/display/dp: Remove UHBR13.5 for icl
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>
References: <20250402-dprates-v3-0-9e5d8ca989dd@intel.com>
 <20250402-dprates-v3-1-9e5d8ca989dd@intel.com> <8734eq3lic.fsf@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <8734eq3lic.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0P287CA0010.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::15) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|CY8PR11MB7688:EE_
X-MS-Office365-Filtering-Correlation-Id: 810938f4-96b4-49e8-35b2-08dd71d29825
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TlBIcndiS1lab0VWWnBaV09jZHFYS1VmWElGdUIzS2hMOUkzeEUxUmswRDUx?=
 =?utf-8?B?MWtPd3ozQWFwQUV3a0o2TUFTNVlWd3orY0s1Nm5TbUJPblRLQ3BqSTlGWEtu?=
 =?utf-8?B?bFlFMVV3dU9VVnNGdzNNc1JTVHNPS1hhQW9HajA4Nlc5b3hkSXllRWlaM0tS?=
 =?utf-8?B?MFlJVTFxcld6bDBBM0hWdGRmeVIvVjduZ0NMdElHUjEzc21oTUw0UlpOaWR4?=
 =?utf-8?B?TkVCTzQyUzN2aUVKZjJyb1p4Q0NOZndRQjJtNTRSWEEydG0yakliMFdoR3pa?=
 =?utf-8?B?bGRacytKUmF5UTFkNXVkVDluYU5Rcmdya09DNzFJajR2dTRJNXBWODRCUjBz?=
 =?utf-8?B?SGdVaCs0bGpEeEVsaTBjdUJhT0tLWEdkZ2VWc3AxSVlOS2NldFlvSmlqK3hS?=
 =?utf-8?B?ZGVoOG9XeDMvSjdRTVljdXRmOVVmRitUdENIOGdhUEpqSk5hMHJFZU1CN2cx?=
 =?utf-8?B?UFUwN2oyKzhITjN0cUt3R0orQ1l4RExhNENvRkxWRFJOWjlwUnhsMFBiSHFv?=
 =?utf-8?B?Vk1UQ3V2WnZyeTJ1M05uS1NHMnFTa2Z3QXIzOVFIdDVlenZxSUIvcDA3bWNu?=
 =?utf-8?B?ZXVGK2Qva25od0JFcUUrMk81cC8zeG1TSFZOR1JlM3ZoK1dqM0ZLR0NWbElP?=
 =?utf-8?B?N2o4cDJGVEdqTmdQZ2ducFdiYm9ZV1k0bUxsMG1XYjlmVmNuTHlNSmVBYWMy?=
 =?utf-8?B?dlh3cEdQaWxJVnl0cXFhV082SG9yWHhyZzF2T29PQy9pRmJWMkQ2dWFsZG5k?=
 =?utf-8?B?dUlYSnJZanc0OTdiZjVoS2xUUENBWU9UbmFacWlBQ0xGOVZEdUI3dWREcE96?=
 =?utf-8?B?bzJkaDRRQnB0TGdocmh4OXdQWG10VEVtcXA2V2F5ZW9RTndOL25tK2hkdmt6?=
 =?utf-8?B?Mk0zd2tXKzhnUm04RzFQSnlDcnhDRGhRVEU0WmNQK3FuSFY0dko5eWxkT0pq?=
 =?utf-8?B?N2lPci84eC9ZMmIyeFNVeGEyb01mRkQxSk43b01aOExBOU9QK25OTVd0c0lP?=
 =?utf-8?B?UmlDL3hISk9GVjE1OCthZCtwS3JraWp5NWdGOHltTEtmdmRUb3Z2OTk5THQ3?=
 =?utf-8?B?eHNObnBNY2xLSkp4ZGpUb3Q2clpRNFZUdzRpM2NYT3Q0WGdVcEF3MTMrZE9u?=
 =?utf-8?B?RGJaMEF3Y1lpVGgyRnBMZ2d3T1JjWTV2VElmSjZJaEVucWphQ2xMZ2ZxY3c1?=
 =?utf-8?B?N0tWUHpEeE1HRWFNa1JqNm93ZU5rZ1RBZE5WZmliVkZwSTFFdGVDRnBlbGdX?=
 =?utf-8?B?OHIvQUJ5c0NlVTNDeUxZUXdUVndZSzJEeThCNXJwdG9NRFFZeXlIK282dlBR?=
 =?utf-8?B?ZjdjWDhpWVFQYkx3Uzhpak5KVXJCcERaaTdSVTFRK2sxdnRTa0wySC9mQm1v?=
 =?utf-8?B?dmVDR0t3cXJmaWlFTExWcjlaZ3Y2Vmk4WlNJcU5XSER5ODdaSUdtUmI5cVRX?=
 =?utf-8?B?bWVJVk1KRVZYR0Z4bi9JWHlxeFpsV0ZJdGFaV3hDemd1dDRZbnBhTks3Zk12?=
 =?utf-8?B?Tll3V0UwRXhzM2xlWjZISUpiYUszTVEyYldLQlRJamVJWVZCVGc0WmNySTdw?=
 =?utf-8?B?bVlONnNEb3d6b2RKQlpRR2t1NVZONnp3VndjZ09wRDVVamNFMHlZcWRESU9G?=
 =?utf-8?B?eVhubWhOdFFGUzNSQUZtSXA5aVBIQUd0dlB0VlFVSUJyVXk3ZkRVOUNkWWFI?=
 =?utf-8?B?clllZGR0Z2ZJS1lpOGY5TnY2UzVrazZWbjF0ZWs5OW5RNzdpVzltK3hiNnBX?=
 =?utf-8?B?M0dwZnBOeXUvTlZrMmhMZ3BCdjVpSVNQYmJwREJYMEhWa0ZsWEpPMjhsdmpu?=
 =?utf-8?B?bVZ2cExpNERQbjk2MkZubWVwZlVxbGNENWZzT3k5WkdKUGV3b2FjcndHejBz?=
 =?utf-8?Q?O3wQJ/wDn+5aK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V0NZMFIwSktIN3FMRjB6S1IyQVVEMUVqVkpzVVdvYTNiRFc5YzZ3b1FkN1BK?=
 =?utf-8?B?WFlPMUxJb1Q0dXl1QS83cElqTmhzZ3ZHd2ptZXE5aHdmK1VqUmlsejJ2czVs?=
 =?utf-8?B?WnFYOXhMWlh3UkdRR0RNRWdNV3FVVEV6R1dlZExGS2xtQXNyRWxxY0xseFBF?=
 =?utf-8?B?b3RIdGpqeitFUHhXOTcybjlMME9mZ3lVMjI2TVJRME5tSTFRcjBDRUh5WHhX?=
 =?utf-8?B?Szk1aEUxVTJzQTJuWEN5emdIVSt3ZmZqdktVbFRpMkVqNkptWmNCVnBVR0JV?=
 =?utf-8?B?bUc1aXFSSDE2cE0yc2dFcHV6dFgxUEVLK0x6S3ludGtLbTNnU3I5YmlaTmVv?=
 =?utf-8?B?Y0ZKdXNxSDZ5SGxQM0pWNCtMdHFSY092UDd4c0draitSNlFWRE4zbmNKMWhH?=
 =?utf-8?B?aHp0V2t6NjNMa1pUcGkwMFhraWdub1dVbXZIVEJIZ01DZjk1RjE5NmdsYVlN?=
 =?utf-8?B?UWtIWEwrbmowam8zcFVXTGs4Y0JGQzVzSjRqN3UxTkt4WHIzTjcyb0JnbjBJ?=
 =?utf-8?B?VWE5VGtGRDdzS0hLSjk5empkeTRIZUF3bjJCdWVNVFE3MUZGMHlTYWFHRDNV?=
 =?utf-8?B?MUg1c3FiTEpUVlUvbjFra3lHS3JVb0R5SXIrZTVDUjZHZUJMWlJZN2lydVg0?=
 =?utf-8?B?VFg5TDcrVlFSbEpaZnp4ZEpVRTRzN1FBOFRKbkdvdWk4bUU3TnNhM3NLTm9x?=
 =?utf-8?B?eWdnZEkwOXpwdFZ5ZStLeWE2ZTNJN3J5L2Ruakw2SS9BcDhEK0tmTkxlcDF6?=
 =?utf-8?B?aTZZMFlsbmVuRmF1amh5S3FLcFhuNDFUc3RQK2YyTnc3Vm91TXlyTFNvc1BK?=
 =?utf-8?B?cWdNUWFWVENQZFpZQkdXMkJBRXNKYzUvWWdhZERybG1XckNwT1pzYUNjYkFS?=
 =?utf-8?B?VU9rSXZDZHZ3TTdLcmxrZW9kVzNTVXd5Rlp6VElXaU4rTHdra3h4MllOZ0tk?=
 =?utf-8?B?dDRCazJIN0srTzVNZWV4VmE2R2RBTC96YjJlY1N5TTF0R25pY2ZkUnE3bDZN?=
 =?utf-8?B?d1pwbGNIN1p6Ym1sdGNRMWtVRjd5dVZJbkh2WFFRZkhNQ3NQamtjVkEzeHlV?=
 =?utf-8?B?dmpBR0t5N1YzUkhwZXpaekFORFV5QVVYbG5BOUczOVpJOCtOdWhJVzI3N2c1?=
 =?utf-8?B?SkIrYTRBcmthNHc1KzZjVUMvZGRvUHNiMGkyY0lZaFdwNy9jZjNleHZxT3kx?=
 =?utf-8?B?NENTbUZWTUVFbTlXVXJoZmhoRC9uUE5TVlhKYlBjMHpzYTJKMnRVM3Zhb1hY?=
 =?utf-8?B?RzZ4RzBNWTBJeU9yZkR1dlRQOHhYMUpDNTMxL0RtRmg2cUYvcC9IZk9pczhQ?=
 =?utf-8?B?anRadkQwUUlXMWxUTlpqRE8zS3MzckVXalJXRnBTRDB3a0RxSGlqVTZ3Vngw?=
 =?utf-8?B?UEdpUndOdTdDN1Y3WkVZVVRSaFRqUUdWbjRnd3AzSzVQOER3WndvRFdGRk1j?=
 =?utf-8?B?b0JYNm5Lcm1WQkdWU0w1T2ZyNkEwZHhLS0Q3eTBKVGJlUkFvYTR6Nm9PbzZZ?=
 =?utf-8?B?bzlrSExBTUltMlpHeVdScm1JQnR6aXk2S0w5cjJkNHVjcEF0NkNTL3o0T3JK?=
 =?utf-8?B?RjNmcTNuMFF5bXY0dWpGcjUrbkZKZEpLNFdLTVRWRjc3NVlHZTBSamNlWG15?=
 =?utf-8?B?K1QvUG1mQjZpVjRIek5jajh5QUw2ZklxSTdHZVVEV2toSjdqVWJTQVc4R0RZ?=
 =?utf-8?B?M3dEU3ArVzFYYXpaRDNSblc0Q3Avd05na09mbDcrMGw1YlJPU3psQ0Q4M1dQ?=
 =?utf-8?B?MWR1bzV2dFZndTZROUpKSmV6Y3M2M09tMGRhT2d6NTVjUXA0ZHR0WVFzMnFh?=
 =?utf-8?B?MGpxYTNDdnN2NHE3YStFWFlMWmMra1VRSU1FQjV6cG5EQ0wzNmJBNWY1TmFv?=
 =?utf-8?B?ZEE0dEJKRlhlRTB4QVZhMDJobWRmYU1FVEhWS0N6ZTlOcWhBdEdUUEpiVjV0?=
 =?utf-8?B?MU1ITE5weWhqQ2t0TjBDanN3Sk5iZ01Ua2ZUVkhMdjFQOGt5TXNSUlE2dmxU?=
 =?utf-8?B?OFhvK3JQTEZSWUtxZGxudytwZEdhelBGV0F3RWtTV1oxTjEvTCtOZkxpa1ZZ?=
 =?utf-8?B?NmV6dmlTSjlORDhMUnZNdzRGL2pyb1RHUHZweU95MjJQdSt3TVRCdFBNSXlk?=
 =?utf-8?Q?Gt1pSEp6an6Vig7QbRy7ifm0r?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 810938f4-96b4-49e8-35b2-08dd71d29825
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Apr 2025 10:39:06.9215 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RwX91wYYARSZMAJhe44AlRXqmjLpitAfDz9xJF09MvgthXAM7AA0AU3OdPPskS7636CGFU3zYNiAJVb8FFQJrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7688
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


On 02-04-2025 15:58, Jani Nikula wrote:
> On Wed, 02 Apr 2025, Arun R Murthy <arun.r.murthy@intel.com> wrote:
>> Per Bspec display 14+ has uhbr13.5 Due to the retimer constraint none of
>> the Intel platforms support uhbr13.5.
> Those two sentences together make no sense.
>
> The subject makes no sense, because icl never supported UHBR.
Will change.
>> This has been removed for mtl
>> by the commit caf3d748f646 ("drm/i915/dp: Remove support for UHBR13.5")
>> This patch will remove the support for DG2.
> "This patch" and "will" are unnecessary fillers. And once a patch is
> committed, "this patch" is meaningless.
>
> Just "Remove ..." is fine.
Ok
> dg2_max_source_rate() *still* refers to 1350000 as max rate, and that's
> arguably more important than the rates array. And you can just remove
> the entire function because it becomes a constant.

UHBR10 is still supported. Only support for UHBR 13.5 will be removed.

Thanks and Regards,
Arun R Murthy
--------------------

> BR,
> Jani.
>
>> v2: Reframed the commit msg (Jani)
>>
>> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index f21f9b441fc2a4e644c69410e6ec6b3d37907478..d7955351dd43ff61ebfd57e5b6a4ba99c1c7a2b2 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -550,7 +550,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>>   	};
>>   	static const int icl_rates[] = {
>>   		162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000,
>> -		1000000, 1350000,
>> +		1000000,
>>   	};
>>   	static const int bxt_rates[] = {
>>   		162000, 216000, 243000, 270000, 324000, 432000, 540000
