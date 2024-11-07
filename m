Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD5B69C0DE5
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2024 19:36:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5079C10E8C2;
	Thu,  7 Nov 2024 18:36:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HSQ8Jokj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F235C10E8C1
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2024 18:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731004609; x=1762540609;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=VFCBMqgv+mtAVVneQYOd1kbUz1jSVZiXr1HLzBbLvEQ=;
 b=HSQ8Jokj78MfDcrT7UgA4ZHqrpF0t+GudXtvPMNWGvwS2bzJV/PRnsBP
 0ja6jymPPrOFDBc3tI/8MwU0tHMy2TJN611Sn+Xq0S8RF8qklRcierAFA
 oRhGaQAd8W5YPgRadwh9JyEtq1d/wfwANtHRjhNa8qYCYtrG9McU/Py23
 B4VoK4/AHgT3ZWiuOK5Ry/7yncON6HGQ3jPrbt4hcLHLFjvSc9x/tOEPU
 3AMMq9949gpfb3K+LUSYH3wj8Ba/AAuda71NuRQ2xMD78d6EgO291CWvy
 ZA1TE4uINdX/lJPT0zANdOeXwvbO9+dLJvUyA/HK5XKTIdqj9Y5C4zWDI g==;
X-CSE-ConnectionGUID: VWUG8fuQTBq3PmROjST2UA==
X-CSE-MsgGUID: mncys3QmTdiVdWIaBvyFNA==
X-IronPort-AV: E=McAfee;i="6700,10204,11249"; a="30971127"
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="30971127"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2024 10:36:48 -0800
X-CSE-ConnectionGUID: H3c0vH3ET0+dItapbPRTNg==
X-CSE-MsgGUID: uJ3ZyAFGRjOFv23qlqi1cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,135,1728975600"; d="scan'208";a="85987112"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Nov 2024 10:36:49 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 7 Nov 2024 10:36:47 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 7 Nov 2024 10:36:47 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 7 Nov 2024 10:36:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IjiEHk9MSFETPD1CCtO0HqC3dPrlwkkoXtM5Ahco3bV4UD0WtKHq081NnPZ0HXrQOmDb3EscactZf2xsL5qONGRkXQOggYoYHY6EwwmZcDZvc6iT/jyWDtVIExtrYBC1iYKToJu+9qa5Vv869bVebDgNlUL7z3EPNVDUKBEIUi7nHLrqSbINhx0jFC8SS8Ho60uaS2uQye2xXPzpk6mY7QV/D7dMR4WnLbXAtSM0JbTK92aff+pB9iMLBpPMZn2CnVsZZqm5fpwBDA0oOzAPm81GZjkcXyzTjUDfw6Z3/pSIZ63B1jVTCqjvb22pTNLJziKk+B1ESt5+coTIJjgeUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4Xi9RR4SiEXTMdMeyHrLgc9E4R4x/VWoydZrg/ghZ68=;
 b=ykYsIHwcAKWPuOMiuV6YyUb5KvvxC8xjLfZSPcB0VsBlX5nd406CiR7t9D82E7ToQ4zhu0tRhD8+m9gY/Cj3wAt4soU5BLEF+jWGV6A7Ft9sBuqyQEfk31fDgBKniqmgE29S8fXlnYgv4btiVUaX519SAachYVaY2p+FywxrhcW21LUr6i4hW33QJuv8nqmxr3LFUiSzcj/Tyl6/E8IbtTBOclf5JW8nuMEbG/8IOMcYL8b1+xDwdMIg0McyA7z1oKO5GwilEhHXFnS5mxI9IxnJlR1qsu1FLXjm05tRSEbfD2L15wJO5n6YftyBxHlzqhog11M4clV2gERtLIoZ9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MN2PR11MB4679.namprd11.prod.outlook.com (2603:10b6:208:26b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.21; Thu, 7 Nov
 2024 18:36:45 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8114.028; Thu, 7 Nov 2024
 18:36:45 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <173093319800.1419327.4176339865702994369@2413ebb6fbb6>
References: <20241106215231.103474-1-gustavo.sousa@intel.com>
 <173093319800.1419327.4176339865702994369@2413ebb6fbb6>
Subject: Re: =?utf-8?b?4pyX?= Fi.CI.BAT: failure for drm/i915/dmc_wl: Fixes
 and enablement for Xe3_LPD (rev2)
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>, Luca Coelho <luciano.coelho@intel.com>, 
 Jani Nikula <jani.nikula@intel.com>
Date: Thu, 7 Nov 2024 15:36:39 -0300
Message-ID: <173100459935.92682.5173344547265500219@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW2PR2101CA0011.namprd21.prod.outlook.com
 (2603:10b6:302:1::24) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MN2PR11MB4679:EE_
X-MS-Office365-Filtering-Correlation-Id: fed28d45-8c1d-4545-82bc-08dcff5b216d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|366016|376014|16122699012;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U0hxMW9KY3NmUzltTFlXeFRnVzRlRGxlWWg0NnBYUkczZHlycXdsNlkrVU4x?=
 =?utf-8?B?WVBIS1VFNEprUENsOWJsQm9WdnJlNlMvaVdRUU9oUTNRNXM2NGYrV3R3bHpz?=
 =?utf-8?B?eFBqWERZaERCV2pMOXFiWVJiVlg1OG5OMERsZENiTG9pMVF4VHZCSmY4N00x?=
 =?utf-8?B?SnV6c0JhU2tSQ2E2RElBTzNsWWhtWTJiZ3FlNTR1MGxHNlhxdUVrd2N4Rkl3?=
 =?utf-8?B?S1lPRy9JZ29wUXQ0V0RyWFZLQ2J2TXY0SHBPWk1SVkRCa1haUDErZzhKTFF4?=
 =?utf-8?B?QTZ1R2Izb21weFFybTh0Q2RuekxiNWQrS29EQUNZWkYydVpQUXo2RG1FTUZz?=
 =?utf-8?B?ZVRYMjB0aHJJaWRRWGNHNjZMNzJEcTZKZjltVkZac3hFazM4dW51SDRyckdu?=
 =?utf-8?B?dWFPUDhrU3FrYlRxdEI3dmZuQ3pLT0c3Q0h0TkwvQ3FTd0NJTEdUTmxmdUJL?=
 =?utf-8?B?ODRjN0ZFQkdaUjFWRStIQWsrbGR5ZXJYNFR0NllISGZRTzhkSHdUZGNyNkhH?=
 =?utf-8?B?QXVTUlVSR3Z5RTY2c2d3aU0vZ3VtTm0wYWxabFZxZHNTWjVwNEVyaXBoZTF6?=
 =?utf-8?B?OGRqdlVzUnRNdkFSOVRlY1Nhb3hmSkFRRDJtUkZCTUxmcWhjUW5qTmlQWXlw?=
 =?utf-8?B?Rkgxdy9UQTdWL094TWM0SWFHdGx4QnNGSVIwWVlMdmIxSkRLUmxKRTl4T09j?=
 =?utf-8?B?T2JCODRvd0xHa1cwMlptZjhvdDNKS3RhWXk5UU1wcHgrbzh1NlVKRDAzbjZQ?=
 =?utf-8?B?Q1d2aFc5QXpLYTJoczZuc1FwdXVGUTVESUtueXB1NmYxczVKT1kvaFJUaWd5?=
 =?utf-8?B?eWxYcWdTYzdLN3F3QlJxUm1EWG9hd01zUlNFOExMclltdjcyVWNCcThLSUFZ?=
 =?utf-8?B?STVhOVdiMW9TWHorNi9rTi81SkFmVnRlODlPZWtkR3hGVFRscTJPamhyUmEv?=
 =?utf-8?B?d2o3OGlTM1B3NE83THl2TitMbUtlaTF4SXVxQVRUNlVqbFNvRnVzbGx3SGRS?=
 =?utf-8?B?dFp6SFVZK2NYeC9IOHpCanB0eEpkMFhwUVhmUXE0VzFEWlFndGxwZkNMQ055?=
 =?utf-8?B?c0dsaHJGSTBTUjVvQkpaQlIzR3FIVjRhNmZuRWdxOTBud3h0a0tUMStwYTJ1?=
 =?utf-8?B?R2JtSVR1bVNCeEk0d3ZKVDhma2gzZFRRRjFvV2xBMVh6MktCOWZubk5yTUha?=
 =?utf-8?B?a3Y0MnhrSjNybmpKNU9hSEFLd0VSYUo0QmRPMDZQaXA3NmVvWE15Tld4dVhB?=
 =?utf-8?B?cHRsUEJ2QkZzeEN6dWl2czlYVmpwWnIxai9IbzFOS1ZxNHZKY3ZrR2JycCtm?=
 =?utf-8?B?TDdHUUpvT3R5Z0I1aDhjbFpUaWVTeE9zNms1eVFoQWU3UzNvb0RLcE5hWUNX?=
 =?utf-8?B?ZU1NcWhoQW5OVUJrQjVocTFsU2ZLSENNZmZjV2tFbERpVDRMb2djS3N6RFcr?=
 =?utf-8?B?Y2tzNVlYaDZFMFF2VlVzcHN0QkV0S29QaHhXSFFuRWlwTnFHTzBlaE5lMGJr?=
 =?utf-8?B?U2N6T2Z0SmFSeHlzQ3hySGkxRkZqQmgrMS8rS1FUallTNHQ3TVRMdkg5QjRY?=
 =?utf-8?B?bU9LMkFzcVBNZGJsekN4RHZYR2dUMG5oRjg4TjVIYkJLNWU1MFI5TjlobFhm?=
 =?utf-8?B?ZWxHWTl0ZDZHMFZ1MlpxUmNickxML2RJaDZLTlcrVEN2S0FVZmdlL1hqNjZl?=
 =?utf-8?B?MmQwMmdRcTE2Z0VUaTdzcWhtelBpckhidGxaUGJ1WmZXWEkvT2pQMlhOQVZE?=
 =?utf-8?B?YnlOVG5UTEMzWC9mUFRMcEF5VzNoaStpcUVwTDkxbXlVQzZJdEtPNm1tNG9E?=
 =?utf-8?B?S1BwVjN1VFZKS2Q2dEpCUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(16122699012); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZE5DdlozYndmVWZCVnkzTFYvVjgzcjJWZkhoZ25hV1Y3QjFTakNzUHdRV0VG?=
 =?utf-8?B?VkJSWWxJck1wQ0xVbnpCak85S1cxMW9wL3hmVjR0UkU4Rm9ZbXFiZHYzeHUv?=
 =?utf-8?B?MFlkeFhZOElzVjVJRk1vNDJWUWFySEt6YmlYVkp0S0JXZll5MXp2SXJ3YXdW?=
 =?utf-8?B?aUFHZkx1dWw0a3dFTXhhbjBJQTlKVW9UYjJvVFIxYlZFaXBsZEU1S1B5d01l?=
 =?utf-8?B?c2lvWko2Zk9pVllmYzY4TTV0MktXL3FablZDT3JtTFlxcTQ2MVFwQW1QSkNY?=
 =?utf-8?B?ZWFRVzlJaTZka2xrYmZpUnduMHptNWtSalZyZ1FSeVNMSUxjMEpnME1wU3Rn?=
 =?utf-8?B?ZjlLS3gzYmU5SHREN1lvaWphbmJFOGNqcUZKNC80YXlVZ2JvNFQ4L2hVVXlC?=
 =?utf-8?B?VElOUTFlQzlPYks5SnV0aFpjSldlWXNPMlh4dmlwanl1aHFCaUIvSnpJbXEv?=
 =?utf-8?B?VENkemo2WHJ2OVZkR2ZRcTFNWGtidGtTWGJjczRLVDlCa2hMeU1DSi9CWXA4?=
 =?utf-8?B?aEhUSnY2UzFFTkZpQzRBdWdZaVhWOFFKcHBIU05oZ0RuSUY0RG4rak14Y1VO?=
 =?utf-8?B?OHFIbS9jMzJWL0ptNUtUcVhsQms5Y0x6ZWVKTkxTSHFzaytEYmk5bHk1WlB1?=
 =?utf-8?B?KzVqQzREaUE0OUxDWC9yQTVCRDRLNnR1U3RzUUlydXE5aEFuVzNXU0x2K3hu?=
 =?utf-8?B?N0VVQ1ZBZ0UwMG03aENPMjJzZ1NqNDJYcytIUnFHb05lSFlZSHZZSW00ejB6?=
 =?utf-8?B?UVhGaG54TjlnUExOTmVDTW03RkN4alR3dGRlVjBiMnF1YktwNCtMcHU3QmxO?=
 =?utf-8?B?QVoxNHNKejdmMGZuVjZJS2R0cVJDSVhVVE9kTFhXYmtHQVRrSzZVOVNtOS9D?=
 =?utf-8?B?MXlvMDFHZnZSMlBkWkgwWFpscTM3QS96THViMkVIczJ0c2JFelVSZFM5MnNo?=
 =?utf-8?B?dG1iTVpFYVFnNWJzeVBhVnNWOGNrUHBraXBFbE5EZGsrREhtZ2JJNXFhb29U?=
 =?utf-8?B?cXBKQ3hqZTY4UUk3d0lZUHBTak4wQ3pTOTRPemVibVJQRUQrZVJTRTNHMDA3?=
 =?utf-8?B?SWdQM1IvZHhoRC9Kb09nNTluTisrTFl1U2wvaWNOWmQ0SncvR0xKVkVncjl2?=
 =?utf-8?B?SldRcG1vTXN2c0lvamwwK2hXRFd1ZUdONVc5WkhMN29xZFV3MkVFSHN3UVRi?=
 =?utf-8?B?RFE4SnZLTlpza05qODlYeDczUlR6eW1mUTA3a1ZtaGZFbGZYdkxLNFRWT0dG?=
 =?utf-8?B?ZjNFQjhRdmdJNS9TTlVqckhVWXE1VkNnaVZhSDFYV2hxVEI0MnRScXNHQS9r?=
 =?utf-8?B?N1dvZExPK2FwUzN4NkNjMEd0emltdi91NHdhcmx2Qncxd0RjNUNDalF1Vkh1?=
 =?utf-8?B?R1lCZVcrWWhTanE4b3daWU5UeUh0Qlc0aHFaSFlleVgxalFrTnhjTThtSUYw?=
 =?utf-8?B?QldBY1Z1S1MrTzZVUUV4WHJ4eXlOeTNpd0sxcWtyMXdOSEJuQzVKbWQ5ejIw?=
 =?utf-8?B?b2ZDbDlGMlhiZmNDZGpUYStqcnI4VXVBYVF1MVF5MkpFUHlGR1hmRnJyMU1S?=
 =?utf-8?B?bERqVlpXVFNPNnZLSS9vdmphS0duKzV0eUwyaGJ5clRrMTVIaUNNRDZZdHB0?=
 =?utf-8?B?SGN4S3lsSVl6UmlMZTFEZlYyWG1ocTdxUkxJYlhJWWVFZHhMT1NmN2xKSXp0?=
 =?utf-8?B?ZW1vaklQazRhZEQwOGtyakZGNlBHbVJ4VzZIZTY4QkdYMllGOE1HR0NlekVj?=
 =?utf-8?B?NStCdi9rbkswektGQitYWlRSQXVuZldBZHJDa0NpK3M5VUFEajE1V3JEdGN4?=
 =?utf-8?B?K1VCZWR3S3R5SUYyeVFmZ0o2NlVoSThTZTVkMGgrU2IvUUs5dmUvMkc3bC9O?=
 =?utf-8?B?RVhNVkdQc3FXK3k4UkxYNlp0UHdQT3NwZ1hjR0lTeFRKazBWbG9mODdKTzAz?=
 =?utf-8?B?Yyt0Mjh4M3lMeFVkR0lLQ0ZLbjg1QUVoOFRqWXFKMFNyN1NLLy9mMTVVYVN0?=
 =?utf-8?B?ZlNkY2ZRWnkyVFFoUXBVWkZsYWZFcEc2SGdTaWUzRnZCc3JNQy9tTzByS2w4?=
 =?utf-8?B?eGE1d29ISjhNZGdRZi9oUXorNlZyQlZaK2tSQ2tna3hwaDJIV3NqNXYrcDEz?=
 =?utf-8?B?S295NUhVWnJodmtuQ0RPMDAyelRMSlZzRmdDMjV4bEFVTi9CNG9kYVY2K3ov?=
 =?utf-8?B?dVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fed28d45-8c1d-4545-82bc-08dcff5b216d
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Nov 2024 18:36:44.9411 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f2gYctxCnYJtpBUBPErT8Z/D3QpdUyo8lW0TdFUCFHOgLTQ0ZPHb/bsDOoAKcl/JdyQOZoBsKEahoPHOAL9gtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4679
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

Quoting Patchwork (2024-11-06 19:46:38-03:00)
>=3D=3D Series Details =3D=3D
>
>Series: drm/i915/dmc_wl: Fixes and enablement for Xe3_LPD (rev2)
>URL   : https://patchwork.freedesktop.org/series/140282/
>State : failure
>
>=3D=3D Summary =3D=3D
>
>CI Bug Log - changes from CI_DRM_15648 -> Patchwork_140282v2
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_140282v2 absolutely need t=
o be
>  verified manually.
> =20
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_140282v2, please notify your bug team (I915-ci-i=
nfra@lists.freedesktop.org) to allow them
>  to document this new failure mode, which will reduce false positives in =
CI.
>
>  External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v=
2/index.html
>
>Participating hosts (45 -> 43)
>------------------------------
>
>  Missing    (2): fi-snb-2520m bat-jsl-3=20
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_=
140282v2:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@i915_module_load@load:
>    - fi-cfl-8109u:       [PASS][1] -> [DMESG-WARN][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/fi-cfl-8109u=
/igt@i915_module_load@load.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v2/fi-cfl=
-8109u/igt@i915_module_load@load.html
>
>  * igt@i915_selftest@live:
>    - bat-twl-1:          [PASS][3] -> [INCOMPLETE][4] +1 other test incom=
plete
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/bat-twl-1/ig=
t@i915_selftest@live.html
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v2/bat-tw=
l-1/igt@i915_selftest@live.html
>    - fi-skl-6600u:       [PASS][5] -> [ABORT][6] +1 other test abort
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/fi-skl-6600u=
/igt@i915_selftest@live.html
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v2/fi-skl=
-6600u/igt@i915_selftest@live.html
>
>  * igt@i915_selftest@live@uncore:
>    - fi-glk-j4005:       [PASS][7] -> [ABORT][8] +1 other test abort
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/fi-glk-j4005=
/igt@i915_selftest@live@uncore.html
>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v2/fi-glk=
-j4005/igt@i915_selftest@live@uncore.html
>
>  * igt@kms_busy@basic@flip:
>    - fi-cfl-8109u:       [PASS][9] -> [INCOMPLETE][10] +1 other test inco=
mplete
>   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15648/fi-cfl-8109u=
/igt@kms_busy@basic@flip.html
>   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140282v2/fi-cf=
l-8109u/igt@kms_busy@basic@flip.html


Some of the issues above are due to intel_dmc_wl_get() and
intel_dmc_wl_put() being called by MMIO functions before
intel_dmc_wl_init() was called. I posted a new version of the series to
address that issue.

--
Gustavo Sousa
