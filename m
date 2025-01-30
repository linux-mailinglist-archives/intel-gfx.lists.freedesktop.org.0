Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6FA0A22C09
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 11:56:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58C3310E931;
	Thu, 30 Jan 2025 10:56:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YoCxWnOs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9A3410E926;
 Thu, 30 Jan 2025 10:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738234560; x=1769770560;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=8UC1iE9DXPMtXt2a9sd6SGbmNTbxNeiBg+nPQ/pD81I=;
 b=YoCxWnOsmOvBjMFe0olgHlUSICetAweDN+iZFBqDRxyzbmKoQLYVfoAY
 SgAgNIUnaIQhv16ev/KUWJU01IZG2IeU0eLP6PcZutxCOmfDBgJ6L7eBQ
 pd7ZLbU/ij2CU3P/TrPi94t8JlJmh4uHKc6Vlps0iE7RzPMbG4qITY5tS
 5KcScaibElXNMl5CpZFCa8yQXq/R8L2FENlWeFX4WspYTE9hE17gdspcG
 xBwvm1zh2MnrSxLaDifqbvfLHFvtiyNPxpaM74vfCBJ+tZffCWXYu0IQK
 BRnaOTTA+xCcmwK272G6JIs1HnXU++O87+fl0kzkV3r8GhiR5O9eivAam Q==;
X-CSE-ConnectionGUID: e/t9hwI9QQKpt7zMqxdFuA==
X-CSE-MsgGUID: 8JBzS3TOSoqZ1bCbLQlmpw==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="61245228"
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="61245228"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 02:56:00 -0800
X-CSE-ConnectionGUID: 2EJnKvopSdS17y6iXeTOYw==
X-CSE-MsgGUID: nwxws+04Ryeysm6xUmOp7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="109146247"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2025 02:56:00 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 30 Jan 2025 02:55:59 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 30 Jan 2025 02:55:59 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 30 Jan 2025 02:55:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lWTP8EDiM7y7ujdzuIzLYhA5YIeDlRwLGxV4HS3g7XPa+g+4gu8XXgt2NbMDbzDtuXC69X7WFV/LVCZ4xbHFYy+ycxZNyLxUHuqxxuf5skz5d8Q3+QqxxlzgxnaYC7qKrzlq/NYDDaqIqsOwEYPAxzZwLmfJ0hg/kdG0V3IenpcuKBLC8iYrYwxKipWPPsP1vvw62CLHb1rMR16f/c4YI1kjcmwgX6wQs44QQxbsl7LWDiNu2MKdNmvE/591QX0728TsokmSTK+QvApVowWBikWWtIJ4LlA66ntsp4LJh6zm0ggWu94vfYRh0CoGM6+apMDoSYX00EQ22VU6IJZtCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kGvb16FgKiK7J8OW6iQDQtep9ZMUBb0OZna1Zqx28C0=;
 b=bBmwBbhLzRsVm8gXt1LYWNACUOguqnOFtanBEzb3BLLX5uDZfdQRWjaePfQ7tfWc5Zm2gJo5udp1rooKViM1uEvTzx2V9sH/ahPICbDnUUBZdqOgSvmweyLuuT5aeSKHQYgJkZ/bBx3q9hgDGRdehNAZOAaTiogIHyru+65X16fkvk3g75UhBR3nnu8I+VJb2jHRG8halXHdUGJM+XUL5l4rn1K1LmF16ah6T/h8ZNZl4H2pimpAZUePWi96QXiMToPnSElthqTOLuHvVpgIc4sS/oSg9jrXZmkgEdbHb7g06P04WU8FWRsT37GMMbBaUCsvfzvs3CJqab0w9CyU5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB4798.namprd11.prod.outlook.com (2603:10b6:a03:2d5::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.18; Thu, 30 Jan
 2025 10:55:52 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8398.017; Thu, 30 Jan 2025
 10:55:52 +0000
Message-ID: <12c6fb71-dc63-42d6-9fe3-e13e0c125577@intel.com>
Date: Thu, 30 Jan 2025 16:25:44 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 20/35] drm/i915/vrr: Avoid sending PUSH when VRR TG is
 used with Fixed refresh rate
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
 <20250124150020.2271747-21-ankit.k.nautiyal@intel.com>
 <Z5QCPJ5dCHuofJDB@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z5QCPJ5dCHuofJDB@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0031.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:97::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB4798:EE_
X-MS-Office365-Filtering-Correlation-Id: 155eb29b-ba4a-4454-c9de-08dd411ca9a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VUEvaE1CN2duU2dINCs3emJpTHl0NjU4QktTdU1vV0ZIek1sUXhuRm9pdWxq?=
 =?utf-8?B?TXVaanJqVVZEb04rTEtzUWYyMGtqNkhCVDB0R3BjWE5NanQ2QjY5WmRNemtn?=
 =?utf-8?B?ZWFxdm02M3NzS1pkSVlBb3lBRHIweVFuZmx4TlB0WXF5T3NQY0NrNWV3OWhl?=
 =?utf-8?B?WjErTHpDOHJodERJbFFhRUxxSitFaDNLMCsweE5Za2FTV3ZtRjVSTDZMZVRJ?=
 =?utf-8?B?MmlCSnh5NEZudi9KM0t1cU50N2xOUS9QVDZvT3UrL2dZU1lTUkRBL29TYjJV?=
 =?utf-8?B?WVdGekJ5dDgvOVZMQ1N2VDYyRG5WV0VYaFhtcWduUGZYUGg3Mi9TK1B3NlVG?=
 =?utf-8?B?WXZrNmhaU1M0UUhCcDMvR0hSRG0xd0oyTDBzTnBIUmpVcUlEbWdhdkxyNVNC?=
 =?utf-8?B?dkNNZk53TXNLL2piOHNMbzBTRkxPRXpYVzlSRzg4OS9Va2Y3cDU4NXIrNWFq?=
 =?utf-8?B?RGJpNnRURnVlbm5NSVFJR2xSa0pybWRNNkNkNmVwUlNYcG5mT2tYRmJjVVdF?=
 =?utf-8?B?bmVEQlR1bmI0LzhvcFZLd0k1QU43NUg3ZGlSY05jZjRvRSsrZ1VYbHRrUTl4?=
 =?utf-8?B?akN6SnhGaVI0UGsyUnA1TkJJN29ORVZjbG9XcEhFbkxiTEMzYjNDRHBadmFi?=
 =?utf-8?B?cTF6UlVKU0pHRFU0OTJHL2dlMXFIWjFsYUtyZ0Irek15WEQ0SldNMWlMYkN0?=
 =?utf-8?B?NmJHbitmU1VCbWR4U0lrSVBWSkllSVdmWDRRU0ZQdGJHZHQwREVjT0ZLdmdQ?=
 =?utf-8?B?WFpOOW1KeWhKR1BmOFRTbUpXUnZad1kvbFpOdlNYT0dNajhFWmgrQk5IS2Fy?=
 =?utf-8?B?UXlFbkNLY0MxUFVnY0FWWGxMckg2NnJ6VnFydzZDOTNQODhnalEzZ3NsYlky?=
 =?utf-8?B?V1RZOFNFaUhBbUJFOGpZRXV4Q1ZDMDB3R3VQc0NTR2xYRXp0V1RwbkRNRVp3?=
 =?utf-8?B?Z01LUGc2UlIrV1hPVGFpUUNCclpkOFBjU2VnVlFiRGFRa0N3NGVGa1FzZzRq?=
 =?utf-8?B?WmlVRHo3N3ZuTTJxMUxtVHc5cGJVSXFPQVgzUDQwSDN4bEZaNFFTSmRmUUVk?=
 =?utf-8?B?c0NPN2VSbjQ3eFpMd1lCT1RSVEhZUlNqMGdoeFJOMGlyVHBBTk41cmJIOGxx?=
 =?utf-8?B?WkV1aTdseWd1bkszWlJBSkVOdUlZdVdsQ1NKWXRUODRGd25zMEFTTW4raFdH?=
 =?utf-8?B?UEVDNFcyblRrMTVEVHNJeWlTaVBsOHkrOGNocWFVbWVseXJxWlBQaGxTSVFy?=
 =?utf-8?B?emNaYVhYazNWaWNLNTRZZ3RGb3FYN0M2NCtobzRDZVlLd1lhTFNGUWlPenZ0?=
 =?utf-8?B?QnAvNk92SnhUSVVORXMxS3R5KzBUdWhRTWVFc20yQ3Q1L1MrZ1VWWFluRTND?=
 =?utf-8?B?ekFaMUxsR1ZYMmVVZVY4Sk1NNHhKTGVBRGs3TE5MTW1CaFc5TjFtc1hGN3Qz?=
 =?utf-8?B?Qm1yWlFXeDVTVkc3ZEpwSG5JTlJuKzM0d1Y2dksvc3grSGUya2F0NTh3WVBN?=
 =?utf-8?B?bnBEaEM5QkJqdmZFZHhyODVKREVkMURVdXk5djR3TUJ4eFdieC9Qa04zd09m?=
 =?utf-8?B?N05xejZWdkIraXlWWDkwZ0dUa29qTXNYUkNSTEU3eVpuUVhuZENES3dRaEor?=
 =?utf-8?B?dEVycjRMZllndnV6aVhIUWk1bUxlVlZLQ3VCKzR2Q2FydG5EaE9odG9oWHBT?=
 =?utf-8?B?N09mdkFRY0J4WFkyZ3dsVHZac2hYUHdjc3h2NFd5TW5vZ0pRc1BqNnAzamJN?=
 =?utf-8?B?cFJBNllpbmExbmVYSFNFOVFpSlpPNmdCZGJNMklNQ053bGNxaCt5YWp5RWVj?=
 =?utf-8?B?WngvZUZMVVMwb0pQSzBWeUZXL3A4Q2hBVkZ2b2JvU2FGc3FYMEwvOTU4MC80?=
 =?utf-8?Q?x0VeFn+kE7f76?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RXJPMjZXUEJXNzgybzJFZWE2WDg2NkVXY25wcXQ2dDlleGFDQnNIcGZ3WWQ5?=
 =?utf-8?B?c3dWd3hQYXdPbzlzWG9NN2dZVkZKTFBNbEtJYUFtdUJEYVRKQll5MXNJeXM5?=
 =?utf-8?B?Y2I1dVVXMzdVeWJMK0E2TGR2Q2lsRGN5VUljOC9Va0hLb3dNT2xEV0x1bStP?=
 =?utf-8?B?d0dLQjlHbWVvRXd3VWJUWGRra3IzNmh5cnViZ2RvNHdhVG9oY0JZbWZHekRL?=
 =?utf-8?B?MlhBTjN4VEk1UjJRSTZOM2xqZVRpSlNpSHdKZE9xaVBmdXg0Q3RLS1BZbEhJ?=
 =?utf-8?B?aDBGUXU0ZkVodWZZZGJqOHluSTVuVkRoN2lTcnVoZ1ZIWThBZjNxd3FpTVhL?=
 =?utf-8?B?TFU2NW1XblpVeHV4aTQ4RUswK2JsekJldVFsYmJaSlEwZkFEeWkyekRGY1FQ?=
 =?utf-8?B?MVl6MUl4eDFDZnVyTzJIcGFWOENOWnBLT0JZTkY4MDE5QWUxVVZXU3BwbFNN?=
 =?utf-8?B?QVp4TjZGcUEyaE9jRGxBT2xyYm9QcTVmUFB2SHVUTzMvVlR0MjFmRkpoKzZl?=
 =?utf-8?B?STlKcmg3VlpKZzFIMGlCVU4wd3pmWllLbUtIR21SVVozVGxuR2tZRWNOUDRq?=
 =?utf-8?B?cDVuWWRDb1RvUzdmbmwyNHFVZTdnSUtZNXZGMjVsWUtiUCs1TDdtWXZHTjJZ?=
 =?utf-8?B?aUQyVlo4dzJuajhsaGlqVUxPb1Y1ODNGSWoxc0Z5cERqb2JuRE1FQlNWd0NK?=
 =?utf-8?B?Z1BqdWVzbXZmamFJdVRLV0xSOVdQaWZGaW9peGdnQ0t2MEdUeVdldWpINWRw?=
 =?utf-8?B?UjIxM2M5cUVCd2E3bW5icm1kSStNYnhyNjFDT1BmWWdqUU0ybXc3ZHN6NFVV?=
 =?utf-8?B?Umw5S1IxczZqNno1UlNKWDAwZHI5R2t2WlJ3WVA0eThzWWFIbnVCcW5tNThs?=
 =?utf-8?B?dmVDV1JrWDhMTm5UV2p6K0lXemdha2Q0L3FZLzdsYnNGSEZxeUE3aE03dlFi?=
 =?utf-8?B?WFpqbGFOQ3JsSUxxbjFLN2FaNStoL2QvTjdtNjBjaU5lZ0UzMWNFdld3T2FF?=
 =?utf-8?B?SXBpUlVZa3NpOW5JSUlSRE9HUVIwWjhSMnBxS3NDeW5jN01TOEpYcFhzWkd1?=
 =?utf-8?B?TE1WbkQvWUxZUHlUK2lxYVVlTXRJWXNoc3l4Q0xVcUovQzZWMkxOcWdWUmRV?=
 =?utf-8?B?YXQxNEsvQjREZEJVMDNIUjNlRjVTbnpjbkF0VExpbmN3MndtZUlscWZUaW55?=
 =?utf-8?B?dEZpaGNPMm45aG04aWJNcHphYjl3QWN0Z2p0K2pSakZoazJBYmlWVFhyYURF?=
 =?utf-8?B?dGY1a0dGTjQrTXNoWFJDRGxycEViS2VGaGx6RktSZXhocXhVTjZOWGlXaHYy?=
 =?utf-8?B?OVhJbVlOWlVDVmxvTHlPRGFtYXR3NkNaeGVtUmRSTzl3NTM3MnBjdS9CSFBo?=
 =?utf-8?B?RTRFV3VpWWNMMkpuSFBlOUcvNVh4Z2xwVWtFOTMySzltNlB2V2IzcVJRUkNn?=
 =?utf-8?B?Z0YvcEhIS0Z6WXo3RzEwVmVRY1JYWmxlZ0pLeWJwdkdwWHgvUE52azhKVzkw?=
 =?utf-8?B?ZnJmd0dRamg2WjZuc3BZRitrWVltSm90Q2tEbjQ1OEpINU0reWhEZVNObmZG?=
 =?utf-8?B?cWNvWDA2Rk9UNXFYdkg4Q1pydWRZOHlCTEdYQldMbE1qaFkyaWlTWTJRSFNO?=
 =?utf-8?B?N01PdVhiL3BvT1k3M2JHVWM2NitYME1DVkF1Wk96aTl2d0pLaDhLOENibEdq?=
 =?utf-8?B?S2xRcnBOOHo3TDhtU05Xb2dKaEZDM0x6b2ZEbmdyTGpzS3JoQUcxbGRSWTJQ?=
 =?utf-8?B?YXc4TTY5T24yTG1RVlVHc2o5QWtWU1BuUnFyN0Z5dFNOMWFIWTMwUFpsZ2NE?=
 =?utf-8?B?dm5zc0tzUElMTmdtcjFjU3N6NjA2T2JYdCtHaGFkQnVnT2FyR0FVYjZrelo3?=
 =?utf-8?B?NFBENkVWQVRYOHNtRGI1TDFIeVR6aTNLMjh0bmRvU3lxSGZzdHNoVHNXWlMr?=
 =?utf-8?B?MDhzdktIRGZJSzVMR1ltYUJVNWcrSTB0VHpIQjJnTzk0aE54U0tLa3FIQU5y?=
 =?utf-8?B?UHYzRWU0ejlNOVNESmJ6anQzRXByM2ltOVMyQXZ5WnE3U0lmUE5qd1JaSk5D?=
 =?utf-8?B?RXZVN0hJRmZPd0Qva0JrdnlwT2RuMjg3RlNqQWI4QXNGRnNkU0pnUG9kemFS?=
 =?utf-8?B?aU0zNFZSK2lJMGZJSm1BSTVIbnppbUE2Z0t6OHUrYlRsMWJjNFdvaXFQdHFi?=
 =?utf-8?B?ckE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 155eb29b-ba4a-4454-c9de-08dd411ca9a0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2025 10:55:52.0641 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4d5K9MizKdcOglYLVQtReJe4gR4dDEufZNKA7EcW8Yof2+FqiJlVNI5vhyDwcL0lKt9GhTjNU151SG6BOWi/KF+Vhwfsv/SIFRo1R/9VYnU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4798
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


On 1/25/2025 2:42 AM, Ville Syrjälä wrote:
> On Fri, Jan 24, 2025 at 08:30:05PM +0530, Ankit Nautiyal wrote:
>> As per the spec, the PUSH enable must be set if not configuring for a
>> fixed refresh rate (i.e Vmin == Flipline == Vmax is not true).
>>
>> v2: Use helper intel_vrr_use_push(). (Ville)
>> v3: directly use the condition, instead of checking for VRR mode.
>>
>> Bspec: 68925
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> (v1)
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 14 ++++++++++----
>>   1 file changed, 10 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 65bbe40881d6..34e44cd52353 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -437,13 +437,18 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>   			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
>>   }
>>   
>> +static bool intel_vrr_use_push(const struct intel_crtc_state *crtc_state)
>> +{
>> +	return crtc_state->vrr.flipline != crtc_state->vrr.vmax;
>> +}
>> +
>>   void intel_vrr_send_push(struct intel_dsb *dsb,
>>   			 const struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>   
>> -	if (!intel_vrrtg_is_enabled(crtc_state))
>> +	if (!intel_vrr_use_push(crtc_state))
>>   		return;
>>   
>>   	if (dsb)
>> @@ -462,7 +467,7 @@ bool intel_vrr_is_push_sent(const struct intel_crtc_state *crtc_state)
>>   	struct intel_display *display = to_intel_display(crtc_state);
>>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>   
>> -	if (!intel_vrrtg_is_enabled(crtc_state))
>> +	if (!intel_vrr_use_push(crtc_state))
>>   		return false;
>>   
>>   	return intel_de_read(display, TRANS_PUSH(display, cpu_transcoder)) & TRANS_PUSH_SEND;
>> @@ -476,8 +481,9 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>>   	if (!intel_vrrtg_is_enabled(crtc_state))
>>   		return;
>>   
>> -	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>> -		       TRANS_PUSH_EN);
>> +	if (intel_vrr_use_push(crtc_state))
>> +		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>> +			       TRANS_PUSH_EN);
> What I saw on TGL and ADL is that if you don't enable PUSH then nothing
> works. So I think we just want to have this enabled whenever the VRR
> timing generator is enabled.


Then perhaps I'll drop this patch, or should we have a specific check 
for TGL/ADL (though we are not enabling fixed refresh rate on these as yet).

Regards,

Ankit

>>   
>>   	if (crtc_state->vrr.mode == INTEL_VRRTG_MODE_CMRR) {
>>   		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>> -- 
>> 2.45.2
