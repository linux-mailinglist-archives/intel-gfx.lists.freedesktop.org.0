Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cGOTFqu53GkvVwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 11:38:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD083E9EEB
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 11:38:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C2E510E3A6;
	Mon, 13 Apr 2026 09:38:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SAGwQ/2M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34C3410E3A6;
 Mon, 13 Apr 2026 09:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776073128; x=1807609128;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2I6bdlZrVy4v7pRmcifkwYDB2M74jqITkcL8j3Cf0RQ=;
 b=SAGwQ/2MSPdebUzQ2bLxmmsgV+s3DoI7NFuuo++jZi7cnOecxoBmhIrj
 rTgO3/fhqlQBZF+d+eRjyqhJSrhWwXZvTRYIZuv14oHUf9/N3jWe5pjbN
 J/KYMMsbVNoIIan3j7GgGHVnl/O/uQ2v7uyCMpwnLXLnrCRKM3b4Q4cuY
 Hp0qMHfXb5RA6CgpEwG4HDb+rePIkrs5J5Zarm0A0Cfpa2I4o746C1B2z
 esKOzHIEVp6b093DvGYE0fqsxphJ3beV78aXvTuauZEmRnOUICqVVEP09
 bGQjc2GdSUnHxGVBViHfyv9uGcPK5FA3VeiyXW05A5x7C8lepBDYhmotK w==;
X-CSE-ConnectionGUID: Md3jyzb4SC2OAuH6OGgy+w==
X-CSE-MsgGUID: usTR00iVQzKg291KoCbKTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11757"; a="94392797"
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="94392797"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 02:38:47 -0700
X-CSE-ConnectionGUID: 0rXEhLgYSOm7RLgYf9tBEg==
X-CSE-MsgGUID: KylR9Pz+SNy75DNciFILsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,176,1770624000"; d="scan'208";a="267725494"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 02:38:47 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 02:38:46 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 13 Apr 2026 02:38:46 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.67) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 13 Apr 2026 02:38:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m7NXOoVrdo3h/7hnG/89TWrGHMt1lT6ye6cq0fJfwvmKfEr/aG6F+8HGljWpPGQxDrVzsekzQFT2IhVKj+6+hMJeKbAqixSsZ6oa/9h+m9A/fRigB7Sr10/BL8ZsHbuRVVCq5jX/9wkSmjkuEUY7i5S1CNgDNG2okz0hxUpwTaCa1xdhgQbrYUqy1Ga5LFLurNwHcF1RhHgcw7t5z6MlMGzfb/8a9jSDcC1cnE5WpHG+XC24nIeE/vkOYd3FIc5+rr1n+9NOWflBGMbpgQ7yVCZ2bqPpM5ICqOuuaF80uJ+oVPiNyIzcsrhqJmmnfJeQIuv45/7s03fUjQJIZiDcWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0k3GYsq+cYv5GqjpHijx/oHMbHHAn1jxvMs8jBWMcxs=;
 b=ILog5AVUBmPHhBjcZtVvQx/pezokgJRNzIGjgDG1ftCsGIQmiEyDp8u4vQTDRRZZKdovHFLF+PszkLpJM7Q8DEy3bTuPkEpyNdP3/07UxGtcvHkU2sZ456gbiQae89oHf0ComCZ6e8YapoWmFXIQKkrlGTEn+q/ftFbuUdTjfj4kdVVypwMQQPVGsnDWAGOsbYcYRGuW5zTNNV4bkGjK+FO282G5SGb1pCaKqxA4rYnSdNPj3XvdO5CkxFTR2Glph382CNalFWx7GpJluPNwsf2u6LHlZggdEuvig7S3aeCKs4TSGZUW1oik0i/GZy20D2KqCs6iswKju332LbEA+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SAWPR11MB9733.namprd11.prod.outlook.com (2603:10b6:806:4ca::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.48; Mon, 13 Apr
 2026 09:38:44 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9818.014; Mon, 13 Apr 2026
 09:38:44 +0000
Message-ID: <6d7bec96-8a62-4764-9469-882eec1699ab@intel.com>
Date: Mon, 13 Apr 2026 15:08:37 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/12] drm/i915/dp: Add helper to get AS SDP Transmission
 Line
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>, <arun.r.murthy@intel.com>
References: <20260413035349.1730312-1-ankit.k.nautiyal@intel.com>
 <20260413035349.1730312-5-ankit.k.nautiyal@intel.com>
 <60b491e73f722548e1d40f4aafccd1096c4807cf@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <60b491e73f722548e1d40f4aafccd1096c4807cf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0069.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b7::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SAWPR11MB9733:EE_
X-MS-Office365-Filtering-Correlation-Id: eb395e59-c7b5-4ae0-f139-08de99407478
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: HJPB9YVJL6ZGWD40kUrkraplu2yQxUUYC5p6IkgipOl8F8uiRAyx8MivCKW/TIqb/LrT7GjKt4WolCebX9TSlTzkoJQ5z0daj9Y3iuXaDzomAXmtXCZizaJ2teQvi+dJLVwbByoqhXNBuuDKp/Cke2qgVrB8M08AneUyseOLONTqStHURfPRO3QxQTF8xarS4BpYvgAQ0fCUsNmX6EcgJ6ScfriK8X4+Akgbs+sbd62kLvsVdhln7Nlkb5T9q9FlOtvsa7JhU1fqg7fwYyzEW1PtL5vBck2bMfyw0aqmRE3qYLLKufpyJx1cotv9LTk2znC7GGZE/b1qk/HZTNMVtdsv+rsFF53H+jIiYNe/mXGEvtfo/BrhbZ7JTO084fEiG3xG8ZEKdQDfpWZXxSYLn86b1S+w+n65tjW5Q5Fth6w1IyxIMbatoBOYTlZgCLmSuHTQILNNzmUvjmPaE7/c9ZDLVmS8kuFbFPvUsb4zW7lffA0Nqf3ZWf/z/9kGYPpRYVrCyrey8gXN7RwCSnmj+DXxkZe8B4aFVNVbiZ8Dxmui54oqN/13jmOm0NEZzvuBvKTA0uJuJkAywCr/2HgyZb6EfdSSU2Wl29Fo4bMPCywTIkK4YGuhqAL7cPIQVqoNY0X9+lC/W9yrVoY/sn8S7Kmypv9zT8RbWToelJgwsmjUSgWNo3CgkE38ybWwBMwrZu923nUS+A0MWUsCkaGL0HsjYeIsR7RnFt3YUrTwdn4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UEVvN3A4aitUd2V2c3RtSXBxTVlzMEFqYklVeXoyZmUwR3lLTlZlRjdoeVpV?=
 =?utf-8?B?dVRMbnJGMzFWdmVmOVdDbG5qTXQ1SXRTUi9NbFlTTlVWVVduZVppUTRxMUp0?=
 =?utf-8?B?c0laTlFCdmF0RmNZSngveCtXTUo5M2F6MkRidHRvM291OGg0dFhaaGV4RHpj?=
 =?utf-8?B?aUZYb1dHNnBYOTh6MjlDOE5hSlFmbDBsb1dmWjFGcExaRlNISThTVFpGMTF5?=
 =?utf-8?B?K253aFZEaEkzMFN3cExaWmpnNUhFUlVsL09HeW51QUpYdHhtSWdDdXlpQ054?=
 =?utf-8?B?K3V1SzlvVFdkcmswL3JRd3dGZHZpbE1RVkVNT0JjcU90SGZMbnFXeWJoTjNI?=
 =?utf-8?B?allRbGRVZXVGYkhzZEsyYWFTZTFNUFNpNEZFYThoK0NSREtZaDBHRHY4VEpQ?=
 =?utf-8?B?aXFzTFkwQWZCUjk2QkhlQVYweFlHdDdVa3R5NjdxaEdKRHd1Wk4wYzFQdHlU?=
 =?utf-8?B?cGtHeG9VRXgyNlRRbFFnNGpiK1I3YnVjdW9PV080YlJzUjVKcm50ak5RMkRU?=
 =?utf-8?B?VjVGZTZva2JUQWhuQlk3cGswSjV0ZytzaFVkVHVlZk9YUFJ3NUhuYWNmalFU?=
 =?utf-8?B?Y3hkSGZXV2xvRlA1dzgzV2IwMTRVSG1vUmg0dXBEOGMvRUNFWTlNRHhHNUNY?=
 =?utf-8?B?OHhaVkVVSHhyaVBmcDIwOHhITVlTLzUyVFBFMTlTYkprODZkVzJPUTBFVFA3?=
 =?utf-8?B?OWFMOWloUFdHWk53Y3N4c2Q2Z3grcTNGMkg0N0d1ek9jNzIwSytoRk5PMHJx?=
 =?utf-8?B?NHFvYkx0Zm9hdWgyMVRrNVA1bjJkem9CSEFaeVV1cmhkcmxCQTVaa3NubldM?=
 =?utf-8?B?TndGYWJmMmd5K25ZZjlYU1JSTWdKdGoyTm9pVlhYT2ZMR3hNQVBQV21icjJj?=
 =?utf-8?B?ZS9GZkZKaGtGYzlyeGswM0h0TzY1bXN6WllvZXhobStpK1Zhb2I4YXJsQlBH?=
 =?utf-8?B?YmdVTHNqVVgva0F6K3gvTHJGQlpqdG1rRFdkVXZwR3Y5Q1lNY09iUUU3enhr?=
 =?utf-8?B?VkNHMmJBRHFlcDNPMlFOdU5SSEgxeGMxWGRRaFdBMUk4Q2tPTVNOVWFTN2lx?=
 =?utf-8?B?WG0rVnFYWG52UVYramhKalFGK2NCRkM1U1p2ZnRuMnRsWkFtZjZWTERJT1FB?=
 =?utf-8?B?K1lva2laRnpwamQ3cTBFWUtqUkRBa1ZkNkg5RWxiOXBsNkFsRWcvV3Erbisx?=
 =?utf-8?B?NVVlYXV5MXBZRUJ4cFErazg5SkFtYUdLZ2RNcU1yOU9MSW9SZGtpTFkraWZy?=
 =?utf-8?B?MUExSGV6WFpaZm52MWVQVTc5UnRTUmNaVGFhbmI1UW9jR3RWbUhRblRjU1BN?=
 =?utf-8?B?Tks5bHE4Q2dOSEpiK1ZJc3g4VzRjSlQrWW0zU0hxUlMzSVFDSTlOUytacnVJ?=
 =?utf-8?B?aVVQemRvMEJzTFlOdmw4ZzRLWmV4N04xK0FJR09yU1h3UXl3cUpma0pVTzZ0?=
 =?utf-8?B?dE41eG9mODVPd3hFOG9kYkJmdmNkZ3hzUFVoTXNFUDBNbndlSUNQNDd6cGV4?=
 =?utf-8?B?c240aEZqaGpCMnFReStpb3lEYmRvblV5akNrUmJyYzRhTGZUcXdsWXplSWJw?=
 =?utf-8?B?SlV1bDZlcEtXWWR0VVh2RHVGK2xIMzJYdVZqbGZxZXBhVER1cHI5czlITTFk?=
 =?utf-8?B?VUZ6Y2xYK3ZuMS84ZFZ1S200c2ZramxwY3MvS1VUY0FzU1BYWXgyYTRGKzdt?=
 =?utf-8?B?ZW9ZRmhIZWc2NUF1Smxoa2VCNkp6YU1VbUJlUm8wYmloSi83aGpGNEoxcDJC?=
 =?utf-8?B?N0toYnJWenpDb2I1d3VydWpERDlkWjBaMk5NWld3OUhidXRibkR4YkQ5blF2?=
 =?utf-8?B?eGJMaG5wd2xGNjZaSVEvcUhudThDZHRva2RzZGJuWnBsWFczN2N6NGhucjUz?=
 =?utf-8?B?L29lYkc4V2xLVWFaSWdhRk9IbUpnOVdIL0JqUFZ5WlZ1a2lEVThqK3NoWDJD?=
 =?utf-8?B?Mkt4RTB2T1VGb0VmSnl0MTI5ZlBPODIxakdRdFNSbnhmb0JiSVpxUGJ0RDdJ?=
 =?utf-8?B?dVllMVJoOEtnVmZzYlJTd1dZbU5LK244UmMwbzFqdmt4cTNJaUp4OTVUaGFu?=
 =?utf-8?B?ZE9EdmFiM2JETUxUSVAwN0x0VnNsOXE1cG5xTmlKSkU1VVY4V0dwdzE2aWpE?=
 =?utf-8?B?SkI1d0NlczhWbTh3bFRSZ1B0ZEpKc0NBcGdna2FvL1pZbHllbVFHZWh5RFlR?=
 =?utf-8?B?WjZCUk1SbGM0TkRObU9TRjZ6aFQ4RDlvQmw1MHozQ3NWVHAyQ1BOZTNRenp1?=
 =?utf-8?B?RnBFaUZUWHFjaWhKZHBwNVMxYVg4Mll1T2g2Zm9WRkkvWEV6UVhqMFJ2Ym0z?=
 =?utf-8?B?QzEzd2gvVnMxVk9JdHlKSHJ6L3pMSDQrWkZ5UTh6enQ5bXhBS0FGQ0QrMGE2?=
 =?utf-8?Q?tEBOR0i7ZtY5AFwI=3D?=
X-Exchange-RoutingPolicyChecked: TYnwHKlHkkkH51GuGFEM2vxFmSZ4szl9mBPu2R9SIn0QwPwtxZQjmjZoeqYkSjEYYectypTfSAsdaM3bHPkKcr7ic36AMojCZ9Kh4WS+/qj9HoqkyF9c9Khz00nFAGJsflR+UfyaX3LkursNoABmVXDhmm4y9HLaAWePD6jxoUtUBgzhBrmqV5MRt2okXIATkzuoN1qzSSqLRn4F028n66asUgcFu0tZbBB05jKGyMg4KDkPsLW0A0qZ0MThAzq0IWh0WZlyX7539vo6ltOUFuBvfwEoxpWXe9DBRROFxtRb1iGPD+ANcqh5JPK4X6l5U/FXHVWIvVSC5qx/0u3Mgg==
X-MS-Exchange-CrossTenant-Network-Message-Id: eb395e59-c7b5-4ae0-f139-08de99407478
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2026 09:38:44.7242 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N7aJX2JQoJWadkBKRhHroapEBEd5zlHMtefxmzRdTaHNJ/GZnThjnYykUFcCmy8/1TQA2XClKSo7Fsa4vehN1BvTPT91RJFcijpGyTz4rYw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SAWPR11MB9733
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: AFD083E9EEB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 4/13/2026 2:04 PM, Jani Nikula wrote:
> On Mon, 13 Apr 2026, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Introduce a DP helper to compute the Adaptive Sync SDP transmission line
>> and use it when programming the EMP_AS_SDP_TL register.
>>
>> Currently the AS SDP transmission line is programmed to the T1 position.
>> This can be extended in the future to support programming the T2 position
>> as well.
>>
>> While at it, improve the documentation: the AS SDP transmission line
>> corresponds to the T1 position, which maps to the start of the VSYNC
>> pulse.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c  | 12 ++++++++++++
>>   drivers/gpu/drm/i915/display/intel_dp.h  |  2 ++
>>   drivers/gpu/drm/i915/display/intel_vrr.c |  4 ++--
>>   3 files changed, 16 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 4955bd8b11d7..fd668babd641 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -7415,3 +7415,15 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>>   
>>   	return true;
>>   }
>> +
>> +int intel_dp_sdp_as_tl(const struct intel_crtc_state *crtc_state)
> So the name of the function is Intel display port secondary data packet
> adaptive sync transmission line.
>
> The function name doesn't say what the function *does*.

I agree. I will make the function reflect what the function does.


Thanks & Regards,

Ankit


>
>> +{
>> +	/*
>> +	 * EMP_AS_SDP_TL defines the T1 position as the default AS SDP
>> +	 * Transmission Line, which corresponds to the start of the
>> +	 * VSYNC pulse.
>> +	 *
>> +	 * Use the T1 position for now.
>> +	 */
>> +	return crtc_state->vrr.vsync_start;
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>> index 2849b9ecdc71..7024fd0ace0a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> @@ -238,4 +238,6 @@ bool intel_dp_joiner_candidate_valid(struct intel_connector *connector,
>>   	for ((__num_joined_pipes) = 1; (__num_joined_pipes) <= (I915_MAX_PIPES); (__num_joined_pipes)++) \
>>   		for_each_if(intel_dp_joiner_candidate_valid(__connector, (__mode)->hdisplay, __num_joined_pipes))
>>   
>> +int intel_dp_sdp_as_tl(const struct intel_crtc_state *crtc_state);
>> +
>>   #endif /* __INTEL_DP_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 5164d8c354e0..b700da4e9256 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -607,11 +607,11 @@ void intel_vrr_write_emp_as_sdp_tl(const struct intel_crtc_state *crtc_state)
>>   
>>   	/*
>>   	 * Since currently we support VRR only for DP/eDP, so this is programmed
>> -	 * only for Adaptive Sync SDP to Vsync start.
>> +	 * only for Adaptive Sync SDP.
>>   	 */
>>   	intel_de_write(display,
>>   		       EMP_AS_SDP_TL(display, cpu_transcoder),
>> -		       EMP_AS_SDP_DB_TL(crtc_state->vrr.vsync_start));
>> +		       EMP_AS_SDP_DB_TL(intel_dp_sdp_as_tl(crtc_state)));
>>   }
>>   
>>   void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
