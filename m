Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Bb+AG39DmrrDwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 14:41:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EB0C5A4F95
	for <lists+intel-gfx@lfdr.de>; Thu, 21 May 2026 14:41:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F4E210E4ED;
	Thu, 21 May 2026 12:41:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XDkct8+w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA0E110E4EA;
 Thu, 21 May 2026 12:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779367273; x=1810903273;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4gVzFlWxSGx8SoH37gFYfN2XckNWmLvqG3z9dzj8hCA=;
 b=XDkct8+wuPRTViUEVRpbCgrpEnSR1k7qpDxK31Tg54+obzcCkyrdEI5j
 BZyjLEFLfAHftFQ9pYJ4DkKVexDpqhw4madtqxrQmw+p0kdktoyXcuRE2
 TxC8RCgyGJz7Ql+EnKLqaPJ4fMYMIFtfBCoFvhxaWt8aKE3PTJEnLchB8
 K9xxIukmpMlJMxjUhpd+NX+MvhlehHozrbzxAyDz60xN7/tCn/7/WZhnE
 Ulmf661Lqqt7S1hyr12zKcEh7v3B/IOvAybWPEplElzYuilU8hFQdKHfC
 gi73r+G5diEJDfX1OHNKe+41ZfMul9m2+xpOy4avIXrWpMrkAbXhkIEzW Q==;
X-CSE-ConnectionGUID: dDKFc7sETIWf0C8N2z/DSQ==
X-CSE-MsgGUID: 1cAY3dJ/Rdm38/wEA+nr3g==
X-IronPort-AV: E=McAfee;i="6800,10657,11792"; a="97853958"
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="97853958"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 05:41:13 -0700
X-CSE-ConnectionGUID: qNadAwq7QDifxXw/6K44eg==
X-CSE-MsgGUID: Bolw3kReSlSiCguSS97RhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,246,1770624000"; d="scan'208";a="244797798"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 05:41:13 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 05:41:11 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 21 May 2026 05:41:11 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.68) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 05:41:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZaO77HHH2u3tYMU5sDYDDdsCWeiqysZw3LTGgu9AyMoWjTw4gA1iLWvtK6QHv5/ay0k3luFBFV1SXA1jkiYkNGuW+0ZL7+f8YM+C1bPJkxb1UOiwp3nJO48vN7P/0C/XrP9cvgEzOda75DqvaHRTC2m6k4SimWLTxP8Q022voHZl1HgdiYMpLcEvlnRzr9P/CsG4FJ8860Mr7izwTlPMSCiIdK+QT4Z+G2HXDxwTCL542/i1nYvokGX/9NiOvN9ECs3y/vQ9hgfzubOWqEQujQhf7J0q3n260QbYsFvXTNdkbY05uz3QpKuwJA0awNcRidAatdJqQHn9CeUAlkgzrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/LBCiuwFwcUw7iTQzwOtM7Un5dafm3+agXZgReAu9s8=;
 b=jJw6jJQUVzlmxNVXNNtcAHFCQOm+wj3SD+WVoYh2PNPhaEfCGMEtJdEoj0C6os2lJ+Cv8LB8+4YFN5bUIZBDk1xKjqVZhA1h7SEs1oDQRtdPbEpfASuEmEBowoCUBy//Pp5xCnvvatlqIw5RyrfSXQ9Ky0AsPCJ4Ja1AqX9+yr1Eh2b+9La4CxLU3m/a9/DsJeI2uVfQxboBdfHdVdyqNLgl3yQKBuBeZDJHJrnyW3cysqrBvVR68brGWOA5Zy0BQS9kyrfRMtbMXihBsAGBTX0j5oJf5xz6juG3njZ9KcC1WbdKBnz4DoT9uAlhhyRrAL1EqVWHSSpaca8IBKZYww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by DSWPR11MB9762.namprd11.prod.outlook.com (2603:10b6:8:354::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.17; Thu, 21 May
 2026 12:41:08 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%5]) with mapi id 15.21.0025.022; Thu, 21 May 2026
 12:41:08 +0000
Message-ID: <916d3184-7f00-4a90-85e8-43cb9a8b3466@intel.com>
Date: Thu, 21 May 2026 18:11:01 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 02/16] drm/i915/cmtg: Set CMTG clock select
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>, "Nikula, Jani" <jani.nikula@intel.com>
References: <20260513163857.1541888-1-animesh.manna@intel.com>
 <20260513163857.1541888-3-animesh.manna@intel.com>
 <79f55f66-805f-473c-b7f6-f3e9b1fead37@intel.com>
 <DS0PR11MB8049D2B45198589AD80248F1F90E2@DS0PR11MB8049.namprd11.prod.outlook.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <DS0PR11MB8049D2B45198589AD80248F1F90E2@DS0PR11MB8049.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0195.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b2::6) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|DSWPR11MB9762:EE_
X-MS-Office365-Filtering-Correlation-Id: 4ad7a75a-0518-4a65-5a79-08deb7363b73
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|6133799003|18002099003|22082099003|56012099003|11063799006|4143699003;
X-Microsoft-Antispam-Message-Info: BWMmw2he0Zq/D3KlhmO/ni1E1hK5mVsAZy0NwIf/eJv+6lxrafqn/EYmX6DO/h8hd7ZwpJrcXnYGGbNxmHsOsTUo9tr40u9k0zIT/D8ViwSehngJzDTX+6KZBnbZBO0yhSpG9LN33r3zBR/yNkIJc+Asb15YDIDjdE7cp+8GfdF/F1JT3Rw9ZKi+vQI3t8mnhVHnoDf6xHKRpgv/10nm2fzPPae238IKaweqXxL0pWRRMaeAo8yft0xu9XPeakZAtAnIFRK2ju0xwuaLXQnUI4st6bEmbXLggbq4xy7FxzFmLs/48PS+hKm3ZjLh6Swgh1CXFsQEAZ8Lph6QBVWHLG5XjLbTm89fSEwxCxWsnvLQMSPUsH+w4N1d4Ymsne9GCyeNTdDdPw1iB36107uGOb4qu1dHSGgUQKv8FcCYT/I8SGQiupvV7zR9xp2+NnzQ8e7gwUHmYi4qaIXlaVvUPiaaFSR7MP/OEkNUkJZNun2wl3p24iacAO8/2njQzSkoVNx3YXg83MTUdQ1i7Lc9NpcTJheIyF5jnhNWZo9LWnaXLKnVjUE6tM5uSJOO7z1Ixn2LZKnFklzRUgDryBt/WTKPfpLZNkAjQ1nO220MiL9zu6caBRU1gE/th4oUeiJMh9h+IHTKu9n3gQ4cYDg57BckMow5vwBHLw0eSUajMfYdzoq6NoliBM9RiSGQf3S1
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(6133799003)(18002099003)(22082099003)(56012099003)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aXBtaTU1OEd2OGQrd056WXRaOWFJOHRvZTMxMmsxZVNTeXMvSkc0ZFRsZlF3?=
 =?utf-8?B?NjN3L2tVZDU2VnFGWkl5Vnh2bW05bUt4RkRvNmZoVFpwaHRzQ011T2Y5OVA1?=
 =?utf-8?B?MFIxZTBUTGF3SFJocFViZWJyMytEcmtNU2lmSG1uZmFwVW5OdVNKcHMvWkpD?=
 =?utf-8?B?VWljdml0UERTNExBQUtFdG9veS9ZMkZGNm1rMXpFUWU1YlNCZEVSRXV2YmE4?=
 =?utf-8?B?QUZKN25Cci8ydEs3M09yczBWYjNjYXV1QkNPMDhvY3BKeTVEVHhZcEJFQVI4?=
 =?utf-8?B?enRGTWtBK2JoODV1a2dkbGtnM1VETU5JTjk3OUFqTWtucVpSUk1pYTJadS82?=
 =?utf-8?B?Y0xyRm9oMm5MOXNsdjRkVytmYklrMlVPbDhTQkFOOXZSWWZmbU1hd2cvUkNH?=
 =?utf-8?B?N2VMZTN6TlNEcy9WMGVXVTZwdGp2V1FrWTRkSlkwaEQ4aGpzd01DL2RnMkd6?=
 =?utf-8?B?VHJyckR3U2dZMFlCTkUxS1lBVEw2ajB1TzVwb25qbTcydUdKdEt4WFZpbENT?=
 =?utf-8?B?NFgwM2hwQVZTZnFSYVBEY1NER1Z4L2JhQWVId2NJTTEzL3lrQTdma1l2R21I?=
 =?utf-8?B?cnpWSUlTNjRuQTFqRWgyNmF6ZkxQWXdNYWdqUGNsSEpJK1drL3hwMlRaSmRj?=
 =?utf-8?B?bElrbXVyemlHdGFrRTR3SHlCLzJLZTFvc0xiYTF5OVRrZzdlem4wNmc0TTRJ?=
 =?utf-8?B?QmdqSEwxU2I5RTROamNUVllXcTNjTHNhTEcyalFtRnkzTkNFUjJSU2psTmpk?=
 =?utf-8?B?VkRjSVZjWGFlNWZPVnhvVkZxcG9xZjhvZFp4Qk1QVFA1OWU4SUFGaGo2Rm10?=
 =?utf-8?B?YWNhTjNra3daZG9QbWt0VWtaaVdFSFpIclhLdVFITFBOREp3Q0RCYzBSTHBl?=
 =?utf-8?B?NzRaVzhFdkozTmxhVE9vYW9oRXoxRERES3ZUWmJNdDd1MkNFOE5OUEJmUVhK?=
 =?utf-8?B?QkllSkpVcDZ6TDlLbGdFcTYwTmMyMWpoTkZHeE91YzVidXk0Q0k0RU9ZREk2?=
 =?utf-8?B?TXdyV21CWHI5aHIveEY2cldidXk2UFF3b004TUQzbzVpelpnZEE3c1FFanJV?=
 =?utf-8?B?ZkRJRnlBQlBGL3JOTnhxdjZhYlkxZ0c0S0V2MFF6U01Lc3lYSTRQclNkZVZH?=
 =?utf-8?B?N1kyQ2dhMVduTHFYZDVvK2p2RlNSZVhCem1TNFRYT00ycHZRTTA0d2lXUjhY?=
 =?utf-8?B?Y05vbXRiNWp1TjNmSWN0V2xNeGlTOEQ3UFZ6T1hxR2s2cSthVjlWZXZ2RkFl?=
 =?utf-8?B?b2xacTVFUlVpK2ZpNHdyZHdzNzc4aEU1L3VwVlByM0x5MlZqbDBMeE1rRnV5?=
 =?utf-8?B?ajRoSWg3UG1jMjBZdFlJanY0K21MNk42MzdoSHc0UzZySm5YQ0VIWkd1RGti?=
 =?utf-8?B?eUFJWDErSkxZN0hHSGJLQkhTdTVwdVR2N0g5VjhWOVVhVXVhV3E4eUpoenpz?=
 =?utf-8?B?NTBKTk4vcUx6NWNaMlVRRTNjM0FDd3R1NExiZ2lFTWJmN3hhcnd6Wk5vQjU5?=
 =?utf-8?B?c3FySkZmNDA4RWlPWnZXSjRybHFmbHdIT0lTMXl5dTJyYzFINjBkVG9uamxr?=
 =?utf-8?B?RWFadmlIekZlL0FTNHZBeVBrUUpHNE84STJxdFBweWFkVktySk5ybVpMc1dk?=
 =?utf-8?B?NWFvUWxiRW9teG9wVEQ0dkJCK05xT3J1TVFPcWdNVGkzMlVFV3BZRFFNMXl3?=
 =?utf-8?B?bEtGczRwT0F1anFhTkF2YWRlTXY2Mk9waXNNRXRuamc4eGx4cGNuVGxjUWF6?=
 =?utf-8?B?SFk0MHlHOEtuZTJLWTc5ZFg1cGtyNmhPOUZsWThDb3U3TGQ5b1B3d1JsVXhy?=
 =?utf-8?B?NFBFRGNqY2FON1MvekM0R0F5U0FIQUZVMkRuR1U5TTNWTVhUVVh5ejdtQm5P?=
 =?utf-8?B?cU5EclUwTWhuQTBjTFI4RzZJQnBXa0lDMkV1Z3l2ZThuZnZqL2tpRWQ3V2tp?=
 =?utf-8?B?bzBxWTV5UFR1T3J3NDNYcytGZjdnQ0xwSVFWc1hVYjV5cklJWHQwd0t5elZk?=
 =?utf-8?B?RnRCTGluTFh1OUlzSkdMTlExd1ZxcVZvcDNlV2xHRG5JQnFNY2JUOXhYZ2FN?=
 =?utf-8?B?TnFuZ2J3YmUyQ0NqTU4rRktseGJKdnF1YlcycHNVWkY2WUY2WWllTFlncFZ2?=
 =?utf-8?B?a0lRbEZRMkUrbFZyOEtEQjlaU0toVFdTT0ZYQXhkbDR3YXZlN1J1ODMrR3Mx?=
 =?utf-8?B?cUJ1cnAzUlFSeTZzS2tabzJUQ3IvejNBM1NpS2JUSkg4Y3FTYjYzbHhNQnE1?=
 =?utf-8?B?K05nYnhHTGkzWUxxdE5VL29sSVhLUWNRZnRGZTVwbWxTcngxaFRHYUtaTWJK?=
 =?utf-8?B?SE91cGxKdlg1ZnpNbkNZQXM0cUpaYXNhcDB5b2NneVB3eDRvNWU0N0FQT1FE?=
 =?utf-8?Q?SdjHlyb720nRk2WbAKw2YRA1IsrecxzOq2RTTrTQ3GxjM?=
X-MS-Exchange-AntiSpam-MessageData-1: 8n6MzFEhyPiPAA==
X-Exchange-RoutingPolicyChecked: MnCl7OFSRxJ73ja3WAUGlSIA1ttXV+pHJG1q+hpitfoDerW/zGtNUs/5hoAm2tgkWuklD07nl6huiy6RZhdAQGMZTcG3/EiL6TmY1YR5FaO40y+oA4cwF9x/hevMz/KRSZ26iDxHGRsITAtJQ6hOJpK7xsBCScOEJjyIjSILSQfmZabiiqgi4N0ftbPOPxgOSky94akCxnvMzec3x1XjxrdV+PFphbEKeWuB9+Il8u6l71CeNlLWkCnAX0tkimwDU3Wvb0thtsdVroqUOx36qGZtKrisg3Vj/0HCDksWMFsNqCh/vwOA2Eqxnbq9R7ftS+g3TP9HBpQobh0XB95gdQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ad7a75a-0518-4a65-5a79-08deb7363b73
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2026 12:41:08.8151 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ELGm5D3v8KkPFhOvKuOPylvWvjKdfzZFolAz1nRPfBDf1eo+cGmA78s5jJ1JFgD9f34kLyjXvdbeefbx1MfX33PboqarkgxfcCfZ5aq2jwQcgw+O/iaDsNfJ6zhJi7Tm
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSWPR11MB9762
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5EB0C5A4F95
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 21-05-2026 17:41, Manna, Animesh wrote:
>
>> -----Original Message-----
>> From: Dibin Moolakadan Subrahmanian
>> <dibin.moolakadan.subrahmanian@intel.com>
>> Sent: Thursday, May 21, 2026 2:01 PM
>> To: Manna, Animesh <animesh.manna@intel.com>; intel-
>> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Shankar, Uma <uma.shankar@intel.com>; ville.syrjala@linux.intel.com;
>> Nikula, Jani <jani.nikula@intel.com>
>> Subject: Re: [PATCH v6 02/16] drm/i915/cmtg: Set CMTG clock select
>>
>>
>> On 13-05-2026 22:08, Animesh Manna wrote:
>>> Program the CMTG Clock Select register based on the transcoder used.
>>>
>>> v2:
>>> - Correct mask for PHY B. [Jani]
>>> - Use REG_FIELD_PREP() for enable value. [Dibin]
>>> - Extend cmtg clock select for xe3plpd. [Dibin]
>>>
>>> v3:
>>> - CMTG support removed for old platform.
>>>
>>> v4:
>>> - Optimize further with else-if. [Uma]
>>> - Correct CMTG_CLK_SEL_B_MASK. [Uma]
>>>
>>> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
>>> Signed-off-by: Dibin Moolakadan Subrahmanian
>>> <dibin.moolakadan.subrahmanian@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_cmtg.c     | 22 +++++++++++++++++++
>>>    drivers/gpu/drm/i915/display/intel_cmtg.h     |  1 +
>>>    .../gpu/drm/i915/display/intel_cmtg_regs.h    |  2 ++
>>>    drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  5 +++++
>>>    4 files changed, 30 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
>>> b/drivers/gpu/drm/i915/display/intel_cmtg.c
>>> index dc039bea452c..cfe59c604506 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
>>> @@ -198,3 +198,25 @@ bool intel_cmtg_is_allowed(const struct
>>> intel_crtc_state *crtc_state)
>>>
>>>    	return false;
>>>    }
>>> +
>>> +void intel_cmtg_set_clk_select(const struct intel_crtc_state
>>> +*crtc_state) {
>>> +	struct intel_display *display = to_intel_display(crtc_state);
>>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>> +	u32 clk_sel_clr = 0;
>>> +	u32 clk_sel_set = 0;
>>> +
>>> +	if (!intel_cmtg_is_allowed(crtc_state))
>>> +		return;
>>> +
>>> +	if (cpu_transcoder == TRANSCODER_A) {
>>> +		clk_sel_clr = CMTG_CLK_SEL_A_MASK;
>>> +		clk_sel_set = CMTG_CLK_SELECT_PHYA_ENABLE;
>>> +	} else if (cpu_transcoder == TRANSCODER_B) {
>>> +		clk_sel_clr = CMTG_CLK_SEL_B_MASK;
>>> +		clk_sel_set = CMTG_CLK_SELECT_PHYB_ENABLE;
>>> +	}
>>> +
>>> +	if (clk_sel_set)
>>> +		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr,
>> clk_sel_set); }
>>
>> This comment applies to the entire CMTG programming series, but adding it
>> here since this is the first TRANSCODER/PHY programming step.
>>
>> There are IGT cases where TRANSCODER_B is not mapped to PORT_B, so the
>> current|else if| flow can fail because PHY B may not be enabled.
>>
>> Please check whether the programming sequence here is correct and what
>> TRANSCODER/PORT/PHY combinations are supported for CMTG.
> We should restrict CMTG usage if port and transcoder is not matching. This is limitation from hardware.
> The Dc3co should not be allowed if transcoder and port is not matching.
> CMTG will rely on target_dc_state which will be set if dc3co is allowed.

TRANSCODER_A,PORT_B configuration is valid for DC3CO.

as per Bspec DC3CO is supported in below combinations.
Transcoder A to port A or B
Transcoder B to port A or B

>
> Regards,
> Animesh
>   
>>> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
>>> b/drivers/gpu/drm/i915/display/intel_cmtg.h
>>> index ed540581738f..87092ce6d67b 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
>>> @@ -11,6 +11,7 @@
>>>    struct intel_display;
>>>    struct intel_crtc_state;
>>>
>>> +void intel_cmtg_set_clk_select(const struct intel_crtc_state
>>> +*crtc_state);
>>>    void intel_cmtg_sanitize(struct intel_display *display);
>>>    bool intel_cmtg_is_allowed(const struct intel_crtc_state
>>> *crtc_state);
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
>>> b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
>>> index 945a35578284..4a80b88d88fd 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
>>> @@ -10,8 +10,10 @@
>>>
>>>    #define CMTG_CLK_SEL			_MMIO(0x46160)
>>>    #define CMTG_CLK_SEL_A_MASK		REG_GENMASK(31, 29)
>>> +#define CMTG_CLK_SELECT_PHYA_ENABLE
>> 	REG_FIELD_PREP(CMTG_CLK_SEL_A_MASK, 0x4)
>>>    #define CMTG_CLK_SEL_A_DISABLED
>> 	REG_FIELD_PREP(CMTG_CLK_SEL_A_MASK, 0)
>>>    #define CMTG_CLK_SEL_B_MASK		REG_GENMASK(15, 13)
>>> +#define CMTG_CLK_SELECT_PHYB_ENABLE
>> 	REG_FIELD_PREP(CMTG_CLK_SEL_B_MASK, 0x6)
>>>    #define CMTG_CLK_SEL_B_DISABLED
>> 	REG_FIELD_PREP(CMTG_CLK_SEL_B_MASK, 0)
>>>    #define TRANS_CMTG_CTL_A		_MMIO(0x6fa88)
>>> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>> index d832e44ef62a..6a7481578e61 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>>> @@ -9,6 +9,7 @@
>>>    #include <drm/drm_print.h>
>>>
>>>    #include "intel_alpm.h"
>>> +#include "intel_cmtg.h"
>>>    #include "intel_cx0_phy.h"
>>>    #include "intel_cx0_phy_regs.h"
>>>    #include "intel_display_regs.h"
>>> @@ -3418,10 +3419,14 @@ void intel_mtl_pll_enable(struct intel_encoder
>> *encoder,
>>>    void intel_mtl_pll_enable_clock(struct intel_encoder *encoder,
>>>    				const struct intel_crtc_state *crtc_state)
>>>    {
>>> +	struct intel_display *display = to_intel_display(encoder);
>>>    	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>>>
>>>    	if (intel_tc_port_in_tbt_alt_mode(dig_port))
>>>    		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state-
>>> port_clock);
>>> +
>>> +	if (HAS_LT_PHY(display))
>>> +		intel_cmtg_set_clk_select(crtc_state);
>>>    }
>>>
>>>    /*
