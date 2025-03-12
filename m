Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37EACA5DC06
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 12:53:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C500410E776;
	Wed, 12 Mar 2025 11:53:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hoNm3ZRa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8363A10E775;
 Wed, 12 Mar 2025 11:53:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741780435; x=1773316435;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=NK2iVekpakHDy1A6UvdpbHcmz/ZdKTbjZO8vL/We7xg=;
 b=hoNm3ZRat6OIYAw3n/8a9oL2cLsEhckLcmivqDVUq/s3f00CMeOjfbSd
 sXwia6cJ4jaBYJcpjaCJRSLc+GGRj0GclaqTcGvLwRB3WYwuc1QeIaDFs
 WDDAtXaTdCWxhN/gryiOsbjxtZvBEmjJLNByWkB+2vKJe1nwLpA39Joiq
 AFSMPhM1JTRyT+/OmlUOJymHvyMTZZv0moifmwMNknfKJPlRWUP/gtS5b
 cg0rmopc3txLiBnFnHwkOUselbmCQ5ji4i3+vyp//rLXuq0WUt4x0lh5W
 QSRD3IiXM+i8Wmp9Sgabm9lDICkcJgS0I9MEetsaHJC/HyER8tCvA17sF A==;
X-CSE-ConnectionGUID: JweYt9iCTxeO2v9T9M413A==
X-CSE-MsgGUID: gtiopXoORwuey5c04e445g==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="46500875"
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="46500875"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 04:53:55 -0700
X-CSE-ConnectionGUID: npvvHvP5TJC1+cH/idfneg==
X-CSE-MsgGUID: dS95LgIuT0KwxME7PY7PBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,241,1736841600"; d="scan'208";a="151583645"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 04:53:54 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 12 Mar 2025 04:53:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 12 Mar 2025 04:53:53 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Mar 2025 04:53:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DoppjgP/3G8/UGWojb+v/xEIj2pDC07eLu8mtw5RSc33ReneP8JENFmr1psPaMZ4UJVmI/0e1xPpW/EUt17qVhrKOBapQs7Kpm9Dqpzb6+0EmEnuKolkocYD5hf00aiKyuW8fxDcwu0vS7+wee7lNxf1k+Pp1EjCzAKt/m5hzF0twX7U+5mXrTUDoRQJtYI8q9Mapob1pwZJLCwNxUI8xKp77ejdO3pgcVcZmlrZ/jgeqf4TC0lQFabHi6sOrEv7YT//mOgjGllBJKaUxLarAmhuhRkD3swxoOIVh5zj4r2Kledugy4PtgDupkOuzOB1NZstfwRctwwN38a8CDIpHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NK2iVekpakHDy1A6UvdpbHcmz/ZdKTbjZO8vL/We7xg=;
 b=aH+brhewOKiU+g8f6Dih1eqys3iutv90qajFAGx0/Yzj/AwRFba7iTGNBBARXpaWdiYGGwlFpaFnfAn18EdDUOBwa/z35ximo2kh2tuwwbLDulvnWiQg3wGXRdYBzpnXD5OJMZhssXt9pVoQzvZjmQMYZpVJWvITbfTMgsavLliyH6MXcazD4O7eTxl2w0IPqBc8pbkh/SCkTnnH1XMxpYN+eeH47fV+0ieiOnEj2zjduNCLlEP/46YqvOzT0SFjG6w1OouxhIqbE/kXSHZSAOGQkJzDo9YtvE+eqmp6096xsA2vs4iECThWxgepZAtrkk2nLrceug7+y7Hf0yxiiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 PH0PR11MB4999.namprd11.prod.outlook.com (2603:10b6:510:37::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8511.28; Wed, 12 Mar 2025 11:53:16 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9%4]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 11:53:16 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "I915-ci-infra@lists.freedesktop.org" <I915-ci-infra@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvcG06?=
 =?utf-8?Q?_Clean_up_the_hibernate_vs._PCI_D3_quirk_(rev2)?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9wbTogQ2xl?=
 =?utf-8?Q?an_up_the_hibernate_vs._PCI_D3_quirk_(rev2)?=
Thread-Index: AQHbktuXpuGOFvYkX0y0ZRqP5FjnJ7NvQ0cAgAAB9nCAAAId4IAAHLOQ
Date: Wed, 12 Mar 2025 11:53:15 +0000
Message-ID: <DM8PR11MB5655FF659AF26F294C4DC8C3E0D02@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20250311195624.22420-1-ville.syrjala@linux.intel.com>
 <174173495369.22166.15885117229945257147@18a75f3d1eae>
 <Z9FZailpdSXuyxKv@intel.com>
 <DM8PR11MB565554EBA1295A921661128EE0D02@DM8PR11MB5655.namprd11.prod.outlook.com>
 <DM8PR11MB56557C20724881BE8724BA18E0D02@DM8PR11MB5655.namprd11.prod.outlook.com>
In-Reply-To: <DM8PR11MB56557C20724881BE8724BA18E0D02@DM8PR11MB5655.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|PH0PR11MB4999:EE_
x-ms-office365-filtering-correlation-id: 6ff23045-b3e5-4ae4-bfbb-08dd615c7980
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?QUJqUkxrcFh2a2VkazM5VkN4VVlTOURMVERZVXhtMGZnbCtxZ0hJb0NOTlJ3?=
 =?utf-8?B?N1pMdVQwRFJ5SysweUY5SGQweTlydDBWcFo2MTNtRngxZ1BuVUg3MG5wTGdU?=
 =?utf-8?B?L0VCY2NRcVZ3ZXJWV3hDUk9pd2lzMEpRc1pqbVVvNlZVOEYzb0YzYm12R2xo?=
 =?utf-8?B?R0tFSFA4T0pjb1B6MjUxZ3VQMEhQQ2VIVTc5UWtyYjh6NzBzNEc3dVNLMEhr?=
 =?utf-8?B?OEQ1alpSMGRzYWJLRjVNVlJnZm4wUlRXTVJtL09jQ25hMmVtS3M0TFRzUkRW?=
 =?utf-8?B?Z05QMjNPeDQ3bFNnNXBTUlZ1dTZYczdGM3pkRGUvazcxdmxaWGU2aFZrU0hx?=
 =?utf-8?B?WGNOK0J5WUFBcklDVHN1U1NGZ0EwZEtPNTBtOUxlWnBxUGY2cDZwb1NvRjNr?=
 =?utf-8?B?VmZaZmdXV3BicVNyM0NuVFpKdHVqS2VDRXRwQm1tNjlUdVNSZ1lMdXU0Wi96?=
 =?utf-8?B?a0tnWElzTi9tWU5SWjM1VnBrRlg3Z1VaSGNvT1Z3TXUrODJWUTFEeGRTZ2xy?=
 =?utf-8?B?VU56UTdnVXh1bTVodmZwYy9SQnRFb2p5ZHdzckowY01Wei9uRWQ4OTNablQ2?=
 =?utf-8?B?NnoydG1LWXpmSzRnK1pUcHlwRkZrMnVLZi8xeDU3RWVFU0dMdUErMDRoblFy?=
 =?utf-8?B?c0kvVFJBVFJoNFg5VjVPanRqdXIzaU1za3RUWG5USm80aVB3TGFCZEtPaFZa?=
 =?utf-8?B?bUlpWUh3NWo3MFVVcFUvRHVqQWsxMllPWXAwaEpHSk9ob1N1dGk4N3JFZFo5?=
 =?utf-8?B?L3RJQWtBdnJseHVWTzhpd3c3LzNDR3EwdTVHK05sMTBzQjl0bXlib3VPejA5?=
 =?utf-8?B?Ly94L29YV3JOWGlYS1lWNlEremQwQ05mbjBnQW5MUElBdmpyZDdkV0NiSkZS?=
 =?utf-8?B?NFo5NTUvTjJrcmxHZzZEcVU2MS9KM2RXTWJFTnR5OVB6NlhZNkJOT2hyWmVp?=
 =?utf-8?B?dFVJcXRsbUZoY2hSaWpQeExnZjlwS05FVUEvbnc1Y2lPdjVkL0d6ellGY0Nt?=
 =?utf-8?B?UGVOUGM3eHFWeDZCS1VaUjdlUU40MDMwcnhkb0RweVZHN2JDQzJBT1ArbGR3?=
 =?utf-8?B?QnVOVXZkTUo2dUM5QXFQTlkxbVA2dytGbmFXamNvTFh2RjdHcml6YmNWNzg2?=
 =?utf-8?B?Nkw4VDBRWUkxMGpTbUZHcWtwK2JaM0c5WldaZ3BlZ0oxK25SNjFlQmcxKzBu?=
 =?utf-8?B?ckRCeTM1OFNtQ0pqU1BYR0g2dE5HbW5hVUVDL1NQeWtJc3RRelhDNEZjdkFY?=
 =?utf-8?B?UkJPSzJibVhvbnhvRGJFOVJ0RGJDZnRBVm05MHMxWE15OEY5TjFjOUQxL2xa?=
 =?utf-8?B?ZnlGU0FZTVp6ZWZtSis5QWRIU2ZkMTZpb2xjYnZvSFBYaUV4U1FXZjAwTzdk?=
 =?utf-8?B?VElUdlc0YXhnblNUOURIMDlXam9JODhydVRtSDVNRWQ2MnBFdGlOMTZsYW1T?=
 =?utf-8?B?YXpkVFF4UnpjZXFkeklmTkl5Sjk1Y3lCMW1WRjdOajI1KzVHZ0ZqRi8zK3Ew?=
 =?utf-8?B?aHNiZHI4bldYM1l6Wmt4WDcvVGdDY3NVWEg4cFFkK0JRKzZmbmZwTkwvUFls?=
 =?utf-8?B?RDdSVVM5THFORXFoWm1pRDhyZTZoSzBlZm5kUW9pMkUySkRPZmo1dW1GRW1U?=
 =?utf-8?B?NWloUWZ0RTlQV0ZPY3NpMWw3UDFNQ1FPc0VwZERuT0FUVjZpd3MxY0RIOEJE?=
 =?utf-8?B?aE9XcFZXdHF1QmlNT3B4Z2JEQnptU3pCSjJzTzMyU0liSkw0OVZSRWtsWEx2?=
 =?utf-8?B?Yys4UWF1eGVjQ3NzZTNUZWRlOG9hVmM0SDRLZW52NHFHbTBidzRReitLaktI?=
 =?utf-8?B?YWlkVG5WYVBtc0szdGF3eTR6clJ1bVZZMkRTd2QyZUhYTDljK1hZaWZ3NmZB?=
 =?utf-8?B?eExVVHJoUzh4azJIY2I5Mk82R0I5NUc4OGlHVHNxRjRPc3c9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RVg2Z1ExNEpmUWFodE52SmJGY0hBUm8yU0lVSGV4anJ2b0Q0L29OSWZRc1Fs?=
 =?utf-8?B?d1k3VHV5Y01PVlJWVzJkQnJsWVk3UWxULytpc1R6Y0x0cVI1clFIMGNqVHAw?=
 =?utf-8?B?dlduRmVESE5GTi9YUkNZbm53WTRJVVlOUXV1Ri9oNnp2U2xpckZ3UEhjNnNR?=
 =?utf-8?B?TGJIRDlJM1JVcThMdEFyeWZFMGJBSlY2RjBJcEhQK0FDclNZeWVqcnNrMnBS?=
 =?utf-8?B?SUFLWGpTWnBmTC9kSzdwN3FyallURmZxMlhqQVlHeEw5aGp4ZThtQ05XNFFm?=
 =?utf-8?B?OXFCa3k0MG1mZnhvL2NmU21ESFh4OHNGVGpSYVY2SmF2bU1RRFpXRDV3KzRT?=
 =?utf-8?B?RFMvN3B5b1hNSnFwWWJYNElVdEdiZDlPMnhVY3pERlluK0Yva202aUtHUFlu?=
 =?utf-8?B?aW5YWTdWTVZ4SHRxZ3RQM21JUXNkSHlPK2YweEw0T3I5Vm9vOVRBcUlWYUF4?=
 =?utf-8?B?TTIwTS9pNFkrdW1mdUtWS0JPS0hpRkQrd1ZJT01EQlNQRXZQdE1wZnVkYk94?=
 =?utf-8?B?WGIyQUcyc2hkR29sNFU5dDFEUlo3THI0Wi9KYU1ieHRTWlNxUWNyMXFaY1Q5?=
 =?utf-8?B?eWFZTVJ0eDUwak5yU0V2Y01UbWZFNWl3dkt1Wi85WDNZbEhyTUc3SWFYcTZl?=
 =?utf-8?B?RWFidVhCZTlvRFdYOWpaOHc3SXJxNytQZzZNd083TExzVnZWWGxxUTFEa3lt?=
 =?utf-8?B?dHJtbE5sUzFJZGVMZDJwcDR2U3IyVGJGRmZkbE9HYXVGM3g3YXF1R3hBQnVY?=
 =?utf-8?B?ODdDRDdhRUFyN2k2L28rbnJrV3dESWNCaWhRR0kwYVRCZExqS0o1VkRHVmtC?=
 =?utf-8?B?SG1kRTVKY21UQjF1YWRQcUNrYnNKRW1GcTh3SHlDNEtsanlKOG5uTEhjQ0cr?=
 =?utf-8?B?MFFKRnNITVFQbmpBMUpQQ1lHWVZpQi9QU09kVEltU0NFUWI4N2t0VUt3MXFj?=
 =?utf-8?B?NjFoWnBjSktVejVhZHlxRVRZSDdYQk94ZmJONXl4V0NraWRTTUEwVzFsbXdB?=
 =?utf-8?B?Z1lHSUlNN1N2b3BlTVRvVy9SOU1kT1Bvb09TVkpLZy8rZkIrdWdUVFBJcjE0?=
 =?utf-8?B?RUZLRk1DZ28xa2lHaVpxdTl1dXVHNE1CYWY1NjJTa1MzckswSXROWVV3Rm9F?=
 =?utf-8?B?MUJzQ1R5STFDWmpFdzd5dkJHZEVUbFBDMHUrc3JoTEhsUkJnQ0lhb29TYVBH?=
 =?utf-8?B?dGZkK3hHcnFYbGJXR2p1RUVBcklYdDN3TzQ2d1ZDVFNTQnZXUmNjU0dPeFFP?=
 =?utf-8?B?MWF5bzRac0p1SUM2SmJpTGg3MTF4bC9KNkZmZXhPV25qWFNDVG4vMUdmYUs5?=
 =?utf-8?B?Vkw2SjRkdFRudytEQno1ZG9IeUJCZDc3LzVzZGV2K0hkTDIyeklnclJUMFB5?=
 =?utf-8?B?UStmM3ZMNjU3T0dRSnNJMVB6MUtHZkhlTkMxVG4xWGtFQkw1WExKYXNUVWJX?=
 =?utf-8?B?U3I5VEVIWXBFbXJUUEdTdzJ4SVIxdm9JNHVXRXN3V1RQU0ZFMGxQcUt5Wmhl?=
 =?utf-8?B?TnNZWEJwempzWWh1S2FWdzFERDJEMWsrZWFSek4zSWtwcmdZTThuMjlINjlP?=
 =?utf-8?B?TnRtZGYwRk5pdEdmZFpCVTl1Z2c5ekpscHgwcEZrT2dveHZFSW9lcXE0Z3dG?=
 =?utf-8?B?cVBBTnVYUmk4U1RkeFNpWWhGWTlRV3pVZmdSeU1FcHBqN2RnbGpJUjhtMkQ2?=
 =?utf-8?B?NGxiTDJ5REhvZ21VRkF2REdicmtUR3d6WkxSUkZUZklZYzVOTGZVS0piSExQ?=
 =?utf-8?B?bmo3cU1DYTUzOGtBVWV4R3dQWVc5OHVUNE9sTk51bDlUc1Q0Q0VzSjBiMisy?=
 =?utf-8?B?Wi9zZk5NZHEvanpyc2RFVlZ5MVdjZjkvZDFJdE9wWU5Lb0JWOG1STGhOV3ZM?=
 =?utf-8?B?YnlIeTRyTjVsRWkxbyszaUJ4TTF1NDBXL2VjNXMvN1pSblN6dGdiOFN2MU5J?=
 =?utf-8?B?aDRQSk9FeHdrTVQ5N3dkS1VFK0dJZFNjRUV6OE02M2IrN1RTMTVvN3l5YW5Q?=
 =?utf-8?B?WTJtdGhRckRMZXRSZzlNT3MwRTJIc21Cc3AwRUhSVlFCWUd3UDJGdDJPNnY2?=
 =?utf-8?B?ZW5pNDV6N1c4NVF5SGp2c2dieGJYME5OVnlSbURLWUJkUmhXei9mTlZrRnNR?=
 =?utf-8?Q?lM/iso9OEzMiBZ2Wi+XPNupbC?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ff23045-b3e5-4ae4-bfbb-08dd615c7980
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2025 11:53:15.9305 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wxl3zZ7aJ332zvuHuTDvzeFfR3TnFaBG4sj1sOsamOp+YPUDpKPDqzVeRWVR404cAXcCKlLZGhNV2OV+ZsQ/sg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4999
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

SGksIGFuZCBvbmUgbW9yZQ0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206
IFNhYXJpbmVuLCBKYW5pDQo+IFNlbnQ6IFdlZG5lc2RheSwgMTIgTWFyY2ggMjAyNSAxMi4wOA0K
PiBUbzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT47IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7DQo+IEk5MTUtY2ktaW5mcmFAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJFOiDinJcgaTkxNS5DSS5CQVQ6IGZhaWx1cmUgZm9y
IGRybS9pOTE1L3BtOiBDbGVhbiB1cCB0aGUgaGliZXJuYXRlDQo+IHZzLiBQQ0kgRDMgcXVpcmsg
KHJldjIpDQo+IA0KPiBIaSwNCj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
DQo+ID4gRnJvbTogU2FhcmluZW4sIEphbmkNCj4gPiBTZW50OiBXZWRuZXNkYXksIDEyIE1hcmNo
IDIwMjUgMTIuMDYNCj4gPiBUbzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT47DQo+ID4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgSTkxNS1j
aS1pbmZyYUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBTdWJqZWN0OiBSRTog4pyXIGk5MTUu
Q0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9wbTogQ2xlYW4gdXAgdGhlDQo+ID4gaGliZXJu
YXRlIHZzLiBQQ0kgRDMgcXVpcmsgKHJldjIpDQo+ID4NCj4gPiBIaSwNCj4gPiA+IC0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdmeC1ib3Vu
Y2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmDQo+ID4gPiBPZiBWaWxsZSBTeXJq
w6Rsw6QNCj4gPiA+IFNlbnQ6IFdlZG5lc2RheSwgMTIgTWFyY2ggMjAyNSAxMS41Mw0KPiA+ID4g
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+IENjOiBJOTE1LWNpLWlu
ZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+ID4gU3ViamVjdDogUmU6IOKclyBpOTE1LkNJ
LkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvcG06IENsZWFuIHVwIHRoZQ0KPiA+ID4gaGliZXJu
YXRlIHZzLiBQQ0kgRDMgcXVpcmsgKHJldjIpDQo+ID4gPg0KPiA+ID4gT24gVHVlLCBNYXIgMTEs
IDIwMjUgYXQgMTE6MTU6NTNQTSAtMDAwMCwgUGF0Y2h3b3JrIHdyb3RlOg0KPiA+ID4gPiA9PSBT
ZXJpZXMgRGV0YWlscyA9PQ0KPiA+ID4gPg0KPiA+ID4gPiBTZXJpZXM6IGRybS9pOTE1L3BtOiBD
bGVhbiB1cCB0aGUgaGliZXJuYXRlIHZzLiBQQ0kgRDMgcXVpcmsgKHJldjIpDQo+ID4gPiA+IFVS
TCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMzkwOTcvDQo+
ID4gPiA+IFN0YXRlIDogZmFpbHVyZQ0KPiA+ID4gPg0KPiA+ID4gPiA9PSBTdW1tYXJ5ID09DQo+
ID4gPiA+DQo+ID4gPiA+ICMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMjIw0KPiA+ID4gPiAg
ICogaWd0QGttc19hZGRmYl9iYXNpY0B0b28taGlnaDoNCj4gPiA+ID4gICAgIC0gZmkta2JsLTg4
MDlnOiAgICAgICBOT1RSVU4gLT4gW0ZBSUxdWzZdICszIG90aGVyIHRlc3RzIGZhaWwNCj4gPiA+
ID4gICAgWzZdOg0KPiA+ID4gPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL1BhdGNod29ya18xMzkwOTd2Mi9maS1rYmwNCj4gPiA+ID4gLQ0KPiA+ID4gODgwOWcvaWd0
QGttc19hZGRmYl9iYXNpY0B0b28taGlnaC5odG1sDQo+ID4gPg0KPiA+ID4gQSBidW5jaCBvZiBz
dHVmZiBzZWVtcyB0byBoYXZlIGJyb2tlbiBpbiBDSToNCj4gPiA+IC0gc29tZXRoaW5nIGlzIG5v
dyBsb2FkaW5nIGFtZGdwdSB3aGVuIHdlIGRpZG4ndCB3YW50IGl0IGxvYWRlZA0KPiA+IE9uIGJv
b3QgSSBzZWUNCj4gPiA8Nj5bICAgIDAuMDAwMDAwXSBDb21tYW5kIGxpbmU6IEJPT1RfSU1BR0U9
L2Jvb3QvZHJtX2ludGVsDQo+ID4gcm9vdD0vZGV2L252bWUwbjFwMiByb290d2FpdCBmc2NrLnJl
cGFpcj15ZXMgbm1pX3dhdGNoZG9nPXBhbmljLGF1dG8NCj4gPiBwYW5pYz01IHNvZnRkb2cuc29m
dF9wYW5pYz01IGxvZ19idWZfbGVuPTFNIHRyYWNlX2Nsb2NrPWdsb2JhbA0KPiA+IHhlLmZvcmNl
X3Byb2JlPSogaTkxNS5mb3JjZV9wcm9iZT0qIGRybS5kZWJ1Zz0weGUNCj4gPiBtb2Rwcm9iZS5i
bGFja2xpc3Q9eGUsaTkxNSxhc3QgbW9kcHJvYmUuYmxhY2tsaXN0PWFtZGdwdSBybw0KPiA+DQo+
ID4gSXMgdGhhdCBub3QgZW5vdWdoPw0KPiA+DQo+ID4gPiAtIHRoZSBmdWxsIGRtZXNnIGhhcyBi
ZWVuIGxvc3Qgc28gSSBjYW4ndCBldmVuIGZpbmQgb3V0IHdoZW4gYW1kZ3B1DQo+ID4gPiBnb3Qg
bG9hZGVkDQo+ID4gQ0kgdGVhbSwgY2FuIHlvdSBnZXQgYWxsIGxvZ3MgdHJhbnNmZXJyZWQgPw0K
PiBGcm9tIHJ1bm5lciBsb2cgYWxzbyBzb21lIGRhdGEgOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9QYXRjaHdvcmtfMTM5MDk3djIvZmkta2JsLTg4MDlnL2ln
dF9ydW5uZXIwLnR4dA0KPiANClNob3VsZCB0aGlzIGZpeCB0aGUgYmVoYXZpb3IgaHR0cHM6Ly9w
YXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xNDYxNzAvIGFzIHdlIHN0YXJ0ZWQgbm90
IHRvIGJsYWNrbGlzdCBzbmRfaGRhX2ludGVsIGF0IENJX0RSTV8xNjI2MyAoZGVwbG95IHNjcmlw
dCBjaGFuZ2UpLiANCg0KQnIsDQpKYW5pDQo+IA0KPiA+IE9uIGRpZ2dpbmcgaW50ZXJuYWxseSBJ
IHNlZSBmcm9tIGRtZXNnIChzdGFydCBmcm9tIHRoYXQgZmlsZSkNCj4gPg0KPiA+IDw3PlsgICAz
OS4zNjU2MjldIFtJR1RdIGk5MTVfbW9kdWxlX2xvYWQ6IGV4ZWN1dGluZw0KPiA+IDw3PlsgICAz
OS4zNzM5OTJdIFtJR1RdIGk5MTVfbW9kdWxlX2xvYWQ6IHN0YXJ0aW5nIHN1YnRlc3QgbG9hZA0K
PiA+IDw3PlsgICAzOS4zNzYwOTFdIFtJR1RdIGk5MTVfbW9kdWxlX2xvYWQ6IGZpbmlzaGVkIHN1
YnRlc3QgbG9hZCwgU0tJUA0KPiA+IDw3PlsgICAzOS4zNzYxOTddIFtJR1RdIGk5MTVfbW9kdWxl
X2xvYWQ6IGV4aXRpbmcsIHJldD03Nw0KPiA+IDw3PlsgICAzOS41NTE3NDNdIFtJR1RdIGNvcmVf
YXV0aDogZXhlY3V0aW5nDQo+ID4gPDY+WyAgIDQyLjE5Njg5Ml0gW2RybV0gYW1kZ3B1IGtlcm5l
bCBtb2Rlc2V0dGluZyBlbmFibGVkLg0KPiA+IDw3PlsgICA0Mi4xOTcwNjVdIFtkcm06YW1kZ3B1
X2FjcGlfZGV0ZWN0IFthbWRncHVdXSBObyBtYXRjaGluZyBhY3BpDQo+ID4gZGV2aWNlIGZvdW5k
IGZvciBBTUQzMDAwDQo+ID4gPDY+WyAgIDQyLjE5ODA2OV0gYW1kZ3B1OiBWaXJ0dWFsIENSQVQg
dGFibGUgY3JlYXRlZCBmb3IgQ1BVDQo+ID4gPDY+WyAgIDQyLjE5ODkzM10gYW1kZ3B1OiBUb3Bv
bG9neTogQWRkIENQVSBub2RlDQo+ID4gPDY+WyAgIDQyLjIwMDU5NV0gYW1kZ3B1IDAwMDA6MDE6
MDAuMDogZW5hYmxpbmcgZGV2aWNlICgwMDA2IC0+IDAwMDcpDQo+ID4gPDY+WyAgIDQyLjIwMTM1
Ml0gW2RybV0gaW5pdGlhbGl6aW5nIGtlcm5lbCBtb2Rlc2V0dGluZyAoVkVHQU0NCj4gPiAweDEw
MDI6MHg2OTRDIDB4ODA4NjoweDIwNzMgMHhDMCkuDQo+ID4gPDY+WyAgIDQyLjIwMTQxOF0gW2Ry
bV0gcmVnaXN0ZXIgbW1pbyBiYXNlOiAweERCNTAwMDAwDQo+ID4gPDY+WyAgIDQyLjIwMTQyMF0g
W2RybV0gcmVnaXN0ZXIgbW1pbyBzaXplOiAyNjIxNDQNCj4gPiA8Nj5bICAgNDIuMjAyMzA3XSBh
bWRncHUgMDAwMDowMTowMC4wOiBhbWRncHU6IGRldGVjdGVkIGlwIGJsb2NrDQo+IG51bWJlcg0K
PiA+IDAgPHZpX2NvbW1vbj4NCj4gPiA8Nj5bICAgNDIuMjAyMzExXSBhbWRncHUgMDAwMDowMTow
MC4wOiBhbWRncHU6IGRldGVjdGVkIGlwIGJsb2NrDQo+IG51bWJlcg0KPiA+IDEgPGdtY192OF8w
Pg0KPiA+IDw2PlsgICA0Mi4yMDIzMTRdIGFtZGdwdSAwMDAwOjAxOjAwLjA6IGFtZGdwdTogZGV0
ZWN0ZWQgaXAgYmxvY2sNCj4gbnVtYmVyDQo+ID4gMiA8dG9uZ2FfaWg+DQo+ID4gPDY+WyAgIDQy
LjIwMjMxNl0gYW1kZ3B1IDAwMDA6MDE6MDAuMDogYW1kZ3B1OiBkZXRlY3RlZCBpcCBibG9jaw0K
PiBudW1iZXINCj4gPiAzIDxnZnhfdjhfMD4NCj4gPiA8Nj5bICAgNDIuMjAyMzE4XSBhbWRncHUg
MDAwMDowMTowMC4wOiBhbWRncHU6IGRldGVjdGVkIGlwIGJsb2NrDQo+IG51bWJlcg0KPiA+IDQg
PHNkbWFfdjNfMD4NCj4gPiA8Nj5bICAgNDIuMjAyMzIxXSBhbWRncHUgMDAwMDowMTowMC4wOiBh
bWRncHU6IGRldGVjdGVkIGlwIGJsb2NrDQo+IG51bWJlcg0KPiA+IDUgPHBvd2VycGxheT4NCj4g
PiA8Nj5bICAgNDIuMjAyMzIzXSBhbWRncHUgMDAwMDowMTowMC4wOiBhbWRncHU6IGRldGVjdGVk
IGlwIGJsb2NrDQo+IG51bWJlcg0KPiA+IDYgPGRtPg0KPiA+IDw2PlsgICA0Mi4yMDIzMjVdIGFt
ZGdwdSAwMDAwOjAxOjAwLjA6IGFtZGdwdTogZGV0ZWN0ZWQgaXAgYmxvY2sNCj4gbnVtYmVyDQo+
ID4gNyA8dXZkX3Y2XzA+DQo+ID4gPDY+WyAgIDQyLjIwMjMyN10gYW1kZ3B1IDAwMDA6MDE6MDAu
MDogYW1kZ3B1OiBkZXRlY3RlZCBpcCBibG9jaw0KPiBudW1iZXINCj4gPiA4IDx2Y2VfdjNfMD4N
Cj4gPiA8Nj5bICAgNDIuMjAyNDI3XSBhbWRncHUgMDAwMDowMTowMC4wOiBhbWRncHU6IEZldGNo
ZWQgVkJJT1MgZnJvbQ0KPiBWRkNUDQo+ID4gPDY+WyAgIDQyLjIwMjQ0OV0gYW1kZ3B1OiBBVE9N
IEJJT1M6IDQwODQzNS4xODAzMDEuMDRzDQo+ID4gPDY+WyAgIDQyLjIyODM0OF0gW2RybV0gVVZE
IGlzIGVuYWJsZWQgaW4gVk0gbW9kZQ0KPiA+IDw2PlsgICA0Mi4yMjgzNTNdIFtkcm1dIFVWRCBF
TkMgaXMgZW5hYmxlZCBpbiBWTSBtb2RlDQo+ID4gPDY+WyAgIDQyLjIyODM1Nl0gW2RybV0gVkNF
IGVuYWJsZWQgaW4gVk0gbW9kZQ0KPiA+IDw2PlsgICA0Mi4yMjg3MzRdIGFtZGdwdSAwMDAwOjAx
OjAwLjA6IHZnYWFyYjogZGVhY3RpdmF0ZSB2Z2EgY29uc29sZQ0KPiA+DQo+ID4gPg0KPiA+ID4g
LS0NCj4gPiA+IFZpbGxlIFN5cmrDpGzDpA0KPiA+ID4gSW50ZWwNCg==
