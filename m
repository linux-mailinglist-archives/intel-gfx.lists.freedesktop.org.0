Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F76E908435
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 09:11:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6101E10E147;
	Fri, 14 Jun 2024 07:11:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fht8Njop";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC56B10E21C;
 Fri, 14 Jun 2024 07:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718349082; x=1749885082;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=0tqrBg4esgb9ID7/1jbSO5CZPMiwbcqUnOk4oUweRwA=;
 b=Fht8NjopTwkQXRvjKWN+P5nBD71Eqq3T0G4ehB1SgaqrCgaucNch4kc7
 O2k0dVx8b2MDJ8Usis1Gqn48KDDmdr+wgsT/gXVl2+uScbV6Kp1URZYRf
 DC0kjXV+pNEG2p9mnDQVgE5h8TSRBC49aFa8rN0PDGL27zEsH4LFj9iCV
 n/SObYAQHWOs+hvhdGjpT326yf9Ydd5n8poodI5njUoEVClzV8V0uJvq6
 g4qjZ2LiwBrkDodN7JpVqAM4gd4i+jW+iMdmGhbd0vVZsEACEI29H7a6H
 xaR11c76cCgpf+YX6nlXlYCHxFHHK2D8e8E2aH3BXBddQioIVV8TguH0R g==;
X-CSE-ConnectionGUID: QrP7HZ66TNuSYtawJYftzg==
X-CSE-MsgGUID: WrIuvyM6T++qRJtHU0IAQA==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="40635200"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="40635200"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 00:11:21 -0700
X-CSE-ConnectionGUID: rTOXa8FsTkKNIS//eHYnhQ==
X-CSE-MsgGUID: ovHuJjjzRoKynpT0DLK3Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="40380828"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jun 2024 00:11:21 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Jun 2024 00:11:20 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 14 Jun 2024 00:11:20 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 14 Jun 2024 00:11:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I1Aj/NM9YKakFYaqCOZVyriimbyOySHp9xj2ov3s8yJMwIAKlUJLFWroev+wYUHOc41ID4ygpQ5CQEK8cV6elYEmq+pb62OLEC3w/sTR3hiuRHs+PAZhTCLK9ShDraVsAzPt38jF/xMRElP81PRznI0yntvTRUEn9cfts3IFb5hpEwALfjWwS+NuuX+wb+3O2023DG3dWzFMiKfLdtTg60wdQNNiggfAUGLhRkXk4kS0W7RAA2G7pNhTyLkLNaZbt+Y6qiQaZEfBK4BoXrSThKDmn/JaTXQ8y9ERTcnRMYU/cnu65Vky/tFRaRQeGRO4UzLOPKashvshXpoJtnQvYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0tqrBg4esgb9ID7/1jbSO5CZPMiwbcqUnOk4oUweRwA=;
 b=QK5e7c6ZUwArjn9osDrQVK3bV4yAj4OWKmQKcC7++FRbga1nVFjaxRDVXlMM91UM+WfukQbYylRzlghBKrk+1TEJdLf81vRmrTIWZ+CsErKWclUUqdWSN1Zq7uEGM6cM5GiFwRtYEGy+ZzuZ/g7jPVLTE/yyYdF/iSd2f21w+qoU823emWIXunoJnlvLrdm4CbbRPS2bv0wxrjo35xrrNOIZZqtTrN8EhoSgKv8BWtCBOk6035ma+UX0ySi+ukwpbSfodsERklyOCxKEJSaxxKxMrf9kVv1NWmdFWMD9AnJ+K77sQIOncJqHDQ1tMJ9p4UAr0mKTBzK5h4jhmIKNQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA3PR11MB7435.namprd11.prod.outlook.com (2603:10b6:806:305::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7611.30; Fri, 14 Jun 2024 07:11:13 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7633.036; Fri, 14 Jun 2024
 07:11:13 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
CC: "Roper, Matthew D" <matthew.d.roper@intel.com>, "Syrjala, Ville"
 <ville.syrjala@intel.com>
Subject: Re: [PATCH v1] drm/xe: avoid the async_flip update in the initial
 plane config
Thread-Topic: [PATCH v1] drm/xe: avoid the async_flip update in the initial
 plane config
Thread-Index: AQHakmN2/fTAV9lJuk+MRG08+NfgYbHHL0wA
Date: Fri, 14 Jun 2024 07:11:13 +0000
Message-ID: <7a429d9a5f26c4a0f9b2bf1208ae1a4829d9e4c5.camel@intel.com>
References: <20240419140925.157924-1-vinod.govindapillai@intel.com>
In-Reply-To: <20240419140925.157924-1-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA3PR11MB7435:EE_
x-ms-office365-filtering-correlation-id: 6a158ccf-a81b-4bfc-0ed3-08dc8c412cdd
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230035|376009|366011|1800799019|38070700013;
x-microsoft-antispam-message-info: =?utf-8?B?THRYVTBOVWVRL0NyMFJwemNURTQ2Wk1Bdmh3THNLVHZMYTJTOEVNMFdDdlIw?=
 =?utf-8?B?NCthUmRRN3B2UVh3SWZJZlp0aDZuYWMvMEhaMVoyUzdsQzdocnk0RU02VjhQ?=
 =?utf-8?B?ajh0Z2s0UTV3Um1pTzY4dmovZ0YzWGZmY0QzVFM5cktvWmRYUFhFVW8zTVR3?=
 =?utf-8?B?OUVLbEc5alFxMGszY3ZvcXNtbk5PbXJxZ1FETktVS2FYbnJlc3JRTVZTRi8v?=
 =?utf-8?B?SExBWUNubWZ6RDZzSHdJVm12UG5SbGlqNjNtNGpZbklNSnZNTEtidnZjRnJK?=
 =?utf-8?B?eTdPZStvUE9VdkxYWGE1eGM5Y2QvUW5JSVNob1JjUXpVWitTeU1WTjk1SjFw?=
 =?utf-8?B?WWF0SkFlV0tnRG5SY2xXc3JxVU9xRGE4amtPblBwbW5jb1BweHFVNUMyM0Yv?=
 =?utf-8?B?aExYNDFiOVU5Mk91aW9GeVNwWWI1NFZyMDlZRzRuWUZqSUxZeTV5SXJYeERI?=
 =?utf-8?B?Szk4RXNzMWVpeEtSRE5EOWM4QVFkUmdJd2RHbVkwNE9xZjJaU0ZvVGhFMlJT?=
 =?utf-8?B?bEVwcEdIVGFBK3N1YVc1NUplVGdyUjJicTE5SGlVbHhEdDlPKyt0V3ZlK2Ro?=
 =?utf-8?B?MGZaTklZWWpsRDFKT1k1OVBjNFZxcHJIS2ovU0hBazUwcGZlRFA1bi82ejh5?=
 =?utf-8?B?MGg5SWdJSVByRE0ydE0rNkRvRCtFa084aDNxb28zVmNVRHRRRjRaNXFUSEpU?=
 =?utf-8?B?blFBTWt1d29pZ0FJWDdsWWw5V2MrczUzaVhnRXBEMFkrUzM0UGFIQmhJZnVU?=
 =?utf-8?B?azYraStiNEljejFCRitlOG1BOWZvOU1MUXMvMlNKRTdlR09pSUpaRlV4c2lN?=
 =?utf-8?B?ZTVxMWNjTlZUY1BrbUFVMWJmUzhYQk5pYmxBdDRQcUhNRXBKUHRKU3RYNHdn?=
 =?utf-8?B?OVc5bW8vWGRwM2lTY3ZGVmVrb1B3UmZ1VEJ2ajBjVklMV2VuY2NscSs0UWp6?=
 =?utf-8?B?MU4rUy9vMjdEbkJQWVNaUytJczVwQkNySnpDb0V0RHk1dDBZOHhYL0pORlBk?=
 =?utf-8?B?R3Q4RjNZSzRRaklRSHpvZGtIWjJMYkpMS0FuVmI4ZTU0SW9QeFkvN1VQUzBr?=
 =?utf-8?B?UGFCb3RRRW10eUxFaWxWYnV2a3B6QmQweEVxaHJIeUVjRlhxWU9UcnQ4enl0?=
 =?utf-8?B?Nld4MnI5ODJjbXJ0VnV2V29NUXNNWFExczVjbndwSVlTbWFFdGVmaDg4MDc2?=
 =?utf-8?B?VzBqME5JWEwxUFV0aFVvdkRJR2xaa1d1QnI0SGdZeUJYYnRzVUpjc01mczlk?=
 =?utf-8?B?RzhleVA3QUNucktaZVBCMjVheFpyK2VOWXB6MExSd0kyM0F5U1FIK1h4NnMz?=
 =?utf-8?B?YTRsUzhNWXltM3Vud0ZrOWNNa2dsMVF4SmZtdkpJR1hDUXB3OGRURHNWLzNi?=
 =?utf-8?B?YzBieS93NSsrMHpJTVZyRHNjL3dtMmRMajNBZ1o4ZVNZUms0dzVlREkvSU04?=
 =?utf-8?B?bUIvYnRVWGZ6YTZMaVpyaitXbUZWTTdGSkVHUERVUzZ1NE9jZXQ2Mzd3eXpn?=
 =?utf-8?B?bVBZYzA4Zkw5RmhYN25EazBGVmtYTkNxRHlhRHdkOFk4YzZuRWJGT2RCNzV3?=
 =?utf-8?B?amM0WlZRTlBxZWcxVG5oeFRKQWEzbmVUNTFDMEgwL2pFbS9TZ05GZVNjRWRQ?=
 =?utf-8?B?eXlROHplOG9FZGs5ekhlYkdZRkdweWFzSFVNWGJOb2drQStXRWE0ZW91YjlS?=
 =?utf-8?B?U3ZkQmFYZEd0bzlYT2lyL2E0cHQ2cmJMUG93bmJCaFNqMGtwMXZ0K1U0ZThr?=
 =?utf-8?B?T0RQbW9EYW1XeDQwcXZ4NEo3ekVvMXFPYVRVcXM4cVV5UjdyZEE2QUl0ZHlY?=
 =?utf-8?Q?RXZGJifegH7Sk7I8NsTKvpBJ6nOvYlHaNPfWE=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230035)(376009)(366011)(1800799019)(38070700013); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZUQxeTBUdEh1d1JwSStYRjNlM2VjMXI1T2RUbDI2bVRIdWFFL0VZVFdHUWNC?=
 =?utf-8?B?UVVWOE1IdGEreFR3bHNyd04wbTI1Q2dRd0dDc0IvM2Qwajcvd21vcTZQdm44?=
 =?utf-8?B?NEhodHJWb0JNVHM2QVZSMG5TWjJtS3d6QUtLYStXbFFIckg0NGhsalU2cG1w?=
 =?utf-8?B?SGNjQ1FRUTl6SmdRdkFWMklSMERKbzg1UW1XRFJUU28rUzZLeGtPVTdwVXo4?=
 =?utf-8?B?c1FIV01meUYrcGFTQTMwY1A1akJzSFUrK3YzSHYycmVFRmRxNFBqZi9HTFBh?=
 =?utf-8?B?S3E3VmtWSE9VdVlvak13QXFlMFhTN3dBdklkWlU4L3RSVUtCc2Y1TzdRVWl2?=
 =?utf-8?B?UnRBMVZzUXNSNUZMTUhBRVUxZjE4clkrRGx5ajRFaWJjM2ZpeWl6Qzk5WkYz?=
 =?utf-8?B?K2FVUUtzVXV3WExHK3dMUkpHWTJxemhPb1FUdzZSY2pIUnkyenBqOHVCOUFt?=
 =?utf-8?B?Vmw5Q2l2Z0VvR0QwblpLVHZxRnY5NnFrWDBJVlludmkxbjNzcmxVS2lGUkE1?=
 =?utf-8?B?dkFOWUhwMUtjUUQ4cnAxSmEyMlNwUEZrMU1TZDNUYjluVWhoa0U2VmZRNzhm?=
 =?utf-8?B?aFJ6MmJ0UGFoRjlaK3NMSzd5K1JRRSs4Y1E2ZzEvbFdGMWlKbFdMNTB6SWRs?=
 =?utf-8?B?K1hiM2UxK200bFJ6NDN1RTNFc2hSTXhkMjZIOFdaV3g4Yld5MzU2Sk5pL3Bl?=
 =?utf-8?B?dEV4MDA2dnU5eXExeDlndEVQN0dnOEFOdkM1dFMvU2RPT0NFRW9RYjI3NUx0?=
 =?utf-8?B?UlFqUWhBc1BUaUNaY3FCNFBDdjN3ZlkxTzJLSmoydi9hL1VJVWFVVCsvbXR5?=
 =?utf-8?B?SysyWVlycjA5MVQxUDVqMkZRWXF1WkdCUUMyd0dOZ0JDMGViMG9IV3RuKzNW?=
 =?utf-8?B?c0dqWktSRTJ3eENCTkpVOVh1L2kxMkwrVVZ5RTJSZUdFTUlJWkFvTHY1N0sy?=
 =?utf-8?B?UTFZcmo3N0tyMHhHOGVDblNnZXVJUk5UREFMdjh6K2xWQ3BsR0p3NXFCd2tW?=
 =?utf-8?B?Mm14OGl4QWhOa3BkRlRVb0x4T2ppNU1FcUpIcE9uam8rSzBYOTV5RS9RcU10?=
 =?utf-8?B?TmlCVHMzTmNIVG9FbmFvQm03eDB3a0pEMU1MSlUvMjNjdDZ2S1QzOElFOWtR?=
 =?utf-8?B?bjZ2eU5ucitaSFdYcDBSOEM3S3BlTVZhS3FEM0krRElkbzNJdkl4WEJyMGU1?=
 =?utf-8?B?L1QrTVIwVmlPWkxlV2hkK1FqZWRjVjJuQzlESG5oeFdPcVhGTFgwT0FtUGJ4?=
 =?utf-8?B?VXNBV2FGazg5QkhQR2dKUE15aVQ3V1ByQW5uYWNPc2drTUdBL1JsTnQxTXM1?=
 =?utf-8?B?R3BNdENhSEh0WExOZ0NvZ1pkZFlIOXhBV3RGSm9kejJHMG81RlVIaURKYW50?=
 =?utf-8?B?L2NFUDdiY1RCS1NnT2lIdHJkZ0NhWDRGV0JUT0U4L2QvY1Z3Z3QwcVF0YXAz?=
 =?utf-8?B?S0g1OTVzbTRwQXJuUnhBYlloQmtqQ3pKV3NnTW01OUpGUmNQOUkvYVFwR0tU?=
 =?utf-8?B?UTZYeXR5aWt3eUpmbzR3cFhPUFhJVXBvY0t3SENZUnZ3ZVowYnYwcHlvMWlr?=
 =?utf-8?B?RFRBOC9tdFc3UmNsY3ozV3BTNVhneGsvYWNZMXYwWEErSHcrTllwWmluaFdC?=
 =?utf-8?B?cjRySU4rR0JwVWVNdXVZOWF1QUxxb1pnSWs4KzRpeE13ZG1WUnpoZVJIa1cz?=
 =?utf-8?B?c0NaNUJhUmdOQnVGWC90N09JYi9RMU43bXdyS0lyYmJ2Rm0yQlg5WGx0K2FR?=
 =?utf-8?B?MzJCTXBzRE40cnpWYTkyeERYaTZZVGtvUDFuOTBleUFDNExnTzhheVR1aitx?=
 =?utf-8?B?dTNLM0VrdFdKSmRSb1Y4SmlXLzZ0LzY3djNKT0d1dHhNbWIxc2pFQW5hQlRT?=
 =?utf-8?B?Vy9IVVFtWVd0bDhqTVFNdHpobnpRWi9QMDkxanlKRXoxRmN6eklwV3NZSkxq?=
 =?utf-8?B?ekdRT2J1MXBlQVo3WFdOVC9IR00rV0JXbjJKRkhzVWlZeTBiYmx1TXdvSWNx?=
 =?utf-8?B?eHdKUGQxcjVyRTZTY242M1FNaXpBLzdKZyttTHZ2RWxFTjFrRHdGN1A3WFZK?=
 =?utf-8?B?a0p0MXJGdEFjME1YRW03cWp3SWFjZEhtUjNEaERyMkl3ZzN5azloaG9ZNS80?=
 =?utf-8?B?M00vdHlRM1RabHlkZGJPV3J3NWRDOVhWZmdDLy9YMi9GQ1pUdURiYXpqcTEr?=
 =?utf-8?B?cHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4BBD7BF02AF9374B9117BD27FE75CE83@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a158ccf-a81b-4bfc-0ed3-08dc8c412cdd
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2024 07:11:13.2894 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hP3N+GUO65zU6bgyEEq7iG3nHUrw0xk3WecjVrulZ01j/KrVWGAlkyWm/mwWXiAAr4Wy2GaIDK3zzThRZNL9GLUOyy+arru3H5tYh28deqY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7435
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

T24gRnJpLCAyMDI0LTA0LTE5IGF0IDE3OjA5ICswMzAwLCBWaW5vZCBHb3ZpbmRhcGlsbGFpIHdy
b3RlOg0KPiBBc3luYyBmbGlwIGNhbGwgaXMgbm90IG5lZWRlZC4gVGhlIHVwZGF0ZWQgZmIgbWFw
cGluZyBpcyB1cGRhdGVkDQo+IGFzIHBhcnQgb2YgdGhlIGZpeHVwX2luaXRpYWxfcGxhbmVfY29u
ZmlnKCkgY2FsbC4gT3RoZXJ3aXNlIHdlDQo+IGVuZCB1cCB1cGRhdGluZyB0aGUgUExBTl9TVVJG
IHJlZ2lzdGVyIHR3aWNlIHdpdGggdGhlIHNhbWUgaW5mby4NCg0KYXN5bmNfZmxpcCBpcyB3cml0
aW5nIFBMQU5FX0NUTCBhcyB3ZWxsLiBJcyBpdCBvayB0byBsZWF2ZSB0aGF0IG91dD8NCg0KQlIs
DQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiB2MjogYXZvaWQgYXN5bmNfZmxpcCBpbnN0ZWFk
IG9mIHJlbW92aW5nIGZpeHVwIGNhbGwgKFZpbGxlKQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlu
b2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+DQo+IC0tLQ0K
PiDCoGRyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5L3hlX3BsYW5lX2luaXRpYWwuYyB8IDEwIC0t
LS0tLS0tLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgMTAgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfcGxhbmVfaW5pdGlhbC5jDQo+
IGIvZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfcGxhbmVfaW5pdGlhbC5jDQo+IGluZGV4
IDk2OTNjNTZkMzg2Yi4uYjVmODM4MWI1OTNkIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0veGUvZGlzcGxheS94ZV9wbGFuZV9pbml0aWFsLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L3hlL2Rpc3BsYXkveGVfcGxhbmVfaW5pdGlhbC5jDQo+IEBAIC0xODksOCArMTg5LDYgQEAgaW50
ZWxfZmluZF9pbml0aWFsX3BsYW5lX29iaihzdHJ1Y3QgaW50ZWxfY3J0Yw0KPiAqY3J0YywNCj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB0b19pbnRlbF9wbGFuZShjcnRjLT5iYXNl
LnByaW1hcnkpOw0KPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpw
bGFuZV9zdGF0ZSA9DQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdG9faW50ZWxf
cGxhbmVfc3RhdGUocGxhbmUtPmJhc2Uuc3RhdGUpOw0KPiAtwqDCoMKgwqDCoMKgwqBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9DQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqB0b19pbnRlbF9jcnRjX3N0YXRlKGNydGMtPmJhc2Uuc3RhdGUpOw0KPiDCoMKgwqDC
oMKgwqDCoMKgc3RydWN0IGRybV9mcmFtZWJ1ZmZlciAqZmI7DQo+IMKgwqDCoMKgwqDCoMKgwqBz
dHJ1Y3QgaTkxNV92bWEgKnZtYTsNCj4gwqANCj4gQEAgLTIzNiwxNCArMjM0LDYgQEAgaW50ZWxf
ZmluZF9pbml0aWFsX3BsYW5lX29iaihzdHJ1Y3QgaW50ZWxfY3J0Yw0KPiAqY3J0YywNCj4gwqDC
oMKgwqDCoMKgwqDCoGF0b21pY19vcihwbGFuZS0+ZnJvbnRidWZmZXJfYml0LCAmdG9faW50ZWxf
ZnJvbnRidWZmZXIoZmIpLQ0KPiA+Yml0cyk7DQo+IMKgDQo+IMKgwqDCoMKgwqDCoMKgwqBwbGFu
ZV9jb25maWctPnZtYSA9IHZtYTsNCj4gLQ0KPiAtwqDCoMKgwqDCoMKgwqAvKg0KPiAtwqDCoMKg
wqDCoMKgwqAgKiBGbGlwIHRvIHRoZSBuZXdseSBjcmVhdGVkIG1hcHBpbmcgQVNBUCwgc28gd2Ug
Y2FuIHJlLXVzZQ0KPiB0aGUNCj4gLcKgwqDCoMKgwqDCoMKgICogZmlyc3QgcGFydCBvZiBHR1RU
IGZvciBXT1BDTSwgcHJldmVudCBmbGlja2VyaW5nLCBhbmQNCj4gcHJldmVudA0KPiAtwqDCoMKg
wqDCoMKgwqAgKiB0aGUgbG9va3VwIG9mIHN5c21lbSBzY3JhdGNoIHBhZ2VzLg0KPiAtwqDCoMKg
wqDCoMKgwqAgKi8NCj4gLcKgwqDCoMKgwqDCoMKgcGxhbmUtPmNoZWNrX3BsYW5lKGNydGNfc3Rh
dGUsIHBsYW5lX3N0YXRlKTsNCj4gLcKgwqDCoMKgwqDCoMKgcGxhbmUtPmFzeW5jX2ZsaXAocGxh
bmUsIGNydGNfc3RhdGUsIHBsYW5lX3N0YXRlLCB0cnVlKTsNCj4gwqDCoMKgwqDCoMKgwqDCoHJl
dHVybjsNCj4gwqANCj4gwqBub2ZiOg0KDQo=
