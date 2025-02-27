Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6D6AA477E7
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 09:35:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8125710EA61;
	Thu, 27 Feb 2025 08:35:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J/Lm7rbH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20A0710EA5D;
 Thu, 27 Feb 2025 08:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740645314; x=1772181314;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Y/4t+nFWblXEyc/y+Ph0uEHx+wzzvCjhNABMNzu65Z4=;
 b=J/Lm7rbH3bEAfk1K9okzTQQO5reXkSJg7N3hZWKt5/jm3Dq2gUhJ0aXb
 zf0w5C3v+ngDvYJwjRWPtusP310bwtgQlM8bGPLiOS3l5EYMO6mBgXibe
 25Mu9QPwzwSKlPaUWYlzBv/dE6eorxjpX+WjryCBrq3srFyLmt9MT7Sb8
 zap+Zyw0kmlLQyq3c0xu9k8JpPhg6CX+f5ip9NZYbr35znhustmNHPqPL
 oaW9I7YShij0/r4Xj0neECrB7FauiYktiLrFZuoOdP7Me4sFw1DH+SHik
 WJ5GU18Tdeq/CiaO/qWJXRx6YIUijqg3aZ8BUvz1Ah9GHb0eZHlcKVSQ2 Q==;
X-CSE-ConnectionGUID: CxkSGxHaTcaaIe7cic+eSg==
X-CSE-MsgGUID: yrPzRvjFRTigrs7AYC8aeA==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="41406093"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="41406093"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 00:35:13 -0800
X-CSE-ConnectionGUID: +40YN9c7Qp+XGHSagvnsaQ==
X-CSE-MsgGUID: D8PT2dtwRJiqi/om10ixMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="116963101"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 00:35:13 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Thu, 27 Feb 2025 00:35:13 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Feb 2025 00:35:13 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Feb 2025 00:35:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UJBX7Fci7VuaxegljIh8xF3wiCfB04UU32IpqfnGT6tmaAjziuJ7Qn4S8dDUoOTb6Qu+MlN1LsZtGbJD21XqKzIjHn+Hn7r0SoJRERo6NJV8GHx2zahw9IhYZ+K1Twubt2ybKNTzQy8CxQuTdQ34UpwGkSorzfVIqKE4pzC+dwXCmBJQR3YY46+nPkswLMLbrqCiUQjPst7PoICDvgqFX6xzzWrXjKC2gVJrgtEpvYhQ3dCKC3d+R6HNfOYgXuFE8gklkzI7Qyo3n30Gy/Q324PQ6/69rE4pkGpVLXuGvGMs4/7z3yy7W4ZG+eyTORmxugGQyPgY4eki2le+b+xOKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y/4t+nFWblXEyc/y+Ph0uEHx+wzzvCjhNABMNzu65Z4=;
 b=hGhLeyNrUC4WPJ4Q8nDlw2nIc1laQMEvDjpHwSqktt4HD6NtKXDj/pBU5WBomEQj/6gT7b0VEuxc+rxKp4lhC08XPn6I0WZncGRhLMgUMmmiRqb5FolITr0/7YOn3LXvmVIXgFgHkkghoE1iDcvSlLWaQnA67ipAmxudP3LDd67W3H9Ii6IYRtHpFPXFTU56HfNJ0oqVcb3CjL5NYdBqmCc56Q1LwsY6lYESbWlkD95gP1vALzZYseBdZXbDdRkxCsl6HAjKDJluGsixKVTf1ZgkC3/luLKJr74mYsulOoeSiD/zX3vC8hpuVbjC/e3JkzNF+iwPY4sMdVs7krXiFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5491.namprd11.prod.outlook.com (2603:10b6:610:d6::19)
 by LV8PR11MB8697.namprd11.prod.outlook.com (2603:10b6:408:1fe::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.19; Thu, 27 Feb
 2025 08:35:09 +0000
Received: from CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a]) by CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::fc35:d6ce:8908:ef2a%6]) with mapi id 15.20.8489.021; Thu, 27 Feb 2025
 08:35:09 +0000
From: "Ravali, JupallyX" <jupallyx.ravali@intel.com>
To: "i915-ci-infra@lists.freedesktop.org"
 <i915-ci-infra@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Nikula, Jani" <jani.nikula@intel.com>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvcGZp?=
 =?utf-8?Q?t:_panel_fitter_refactors?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9wZml0OiBw?=
 =?utf-8?Q?anel_fitter_refactors?=
Thread-Index: AQHbiEV9CXgjogp7mUaNDHdH/RWNq7NZfVKAgAAnJ3A=
Date: Thu, 27 Feb 2025 08:35:09 +0000
Message-ID: <CH0PR11MB5491A6ED3565BB56F8853655EFCD2@CH0PR11MB5491.namprd11.prod.outlook.com>
References: <cover.1740564009.git.jani.nikula@intel.com>
 <174057097908.2320629.13610250296780902229@b555e5b46a47>
 <DM8PR11MB5655AA1F78661E68C90E9FBBE0C22@DM8PR11MB5655.namprd11.prod.outlook.com>
In-Reply-To: <DM8PR11MB5655AA1F78661E68C90E9FBBE0C22@DM8PR11MB5655.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5491:EE_|LV8PR11MB8697:EE_
x-ms-office365-filtering-correlation-id: f622732f-008b-461d-f529-08dd5709a516
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|13003099007|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?OFUyKzBtYUVJTGkwNnB1Y3ZVUGg5d0dORkY1SzhtN3ZKY2sxeFp4d1ZXYWcr?=
 =?utf-8?B?SENpSmFyT21RVlVqMWRQR0lYbU5mWUdnUEFJdWg0alR1bkoyWXF3THF1czhq?=
 =?utf-8?B?US9HRXpHaW9EbjdTUGFtU1VwV3BwYzlTTjBxbjJyV29mSnlOMXRSazFQai94?=
 =?utf-8?B?bVVmYnpRRjZ0NzU0Z0ptTGpFVnNsdnZ4dHRDcWtadEdxTE1YSUhzQjNwaVVa?=
 =?utf-8?B?OFRyaHZqc0o4UGlRdlVReXJiNlhNVkh0SkMvYVpkZldzdlFHMnVDMUQvZDdn?=
 =?utf-8?B?VVBNS3k4YUR5RG5vblFDcERoQ3dEY3BJSktWQUdKWk9ZVkk1UEdYZDNkaEla?=
 =?utf-8?B?Q0F0Ull4TVpZa2dBTk94V1RBZVc0WXk4Z2srb1N5eXUzdFZMZmhJQjV5ckxH?=
 =?utf-8?B?eS9vcEFvWGxzOVRaQ2h2bDhSaGtvNXBiUnhvUnRrWGwvWVEzL2ZoalpoTDNo?=
 =?utf-8?B?WnlyVVMvTkZ0dTdFODdtNUtKbmxYTFprdFFPZ3l0c3BvZGpybUtRVEVBQXll?=
 =?utf-8?B?cWpmVmIxNkdkaUs5REpVaWp0dUI4WEM2WUZUdjlxaG0zdng2SUlHakNWZDVp?=
 =?utf-8?B?N0d3bk5jQThZQ1JQUmM0VVJSRmRlcVhjNk9ma3owZlJlNGtWdW8wNk92NHU3?=
 =?utf-8?B?a1FadVZHQ0xlVlFnc0o0QnBVak5VbFZIc2UxT0U5RUNFWVB0clNWT0ZaNGQv?=
 =?utf-8?B?SWxXaWx5L2pVUjh1N2p1OXlKajVtSjBCQnZ0L2d4Qkd0TlFuVTV0L1BiU2RD?=
 =?utf-8?B?dzhja1FUdWVQcUtKUFk3anA5NlI5NGcrbE1ZdERZckFYVnJPT0lvQ2VvaDRt?=
 =?utf-8?B?Y21IcHROUlRxTmRoZTZtQnd6THhDMzAyRmUzYldxNHNvTnNRZ3hNWGVnNWpK?=
 =?utf-8?B?S3ptYXJCNzlqaFluWkVDcjNwWW1zUGt1ZlJCeDUzSGIyTVJSdDc2cWsyVFl4?=
 =?utf-8?B?a25YcFNtaTlCZ1lsWThXeWFlTVY1WUg3Zm5VUURKUDh2amZVTDRTV2FjOW1z?=
 =?utf-8?B?TWMwMDhnMm5MTXNaTEY5RE5WZFp5U20wUTk2N1dGT3Nlb3luYUVlZnp5QkhK?=
 =?utf-8?B?QVpVVFQ2TldVeG1RR1R3TkladUNTSmgzOXVLbm1IdC9ZQzdSTExobmpWM3FK?=
 =?utf-8?B?UjBTNjJHaWQyWEhabHBjQmpyS1Z6czltbzhPNFRIdytYVWhDMVFCbkdFYmJH?=
 =?utf-8?B?WjJLa2ZjcTVHeFlIQjAxNWx1bnp1Vlducml1dmhLeWdXM3RqUUtEb0J3Z0FP?=
 =?utf-8?B?VkpQTzZNdGlUVHl1Vm5DcGZ3VU9FbDVBUjF6UXgvK1lod2xvRTl5bWoyakxp?=
 =?utf-8?B?THo4QytSUHZidExGTHZMWlVXVy83a3VMZlZ0WDBVMlFvZTB3ajZBUjdQRDhI?=
 =?utf-8?B?cXM2NlJCYW1xSzRWZHRoVU1HekJMTmh2MllFR1pzOEJ0SWJQTy92YnlhYTQ4?=
 =?utf-8?B?ZGlLcjdJd2JqYklDN3FlQmJJWktmRjY2cGp3a01lR2duNFdTelIyOExRYlQz?=
 =?utf-8?B?L3dTeXRaOTNRanNreXVCcGtxeERsM0dnVmtSSzFGeEpHRk9IZUkxcGx2Ujkv?=
 =?utf-8?B?eklmcUtIdEtpOTJPdHA2bDBBK2RCNnIyN1lrbmxuTEhVZ091M3VoWnRnWmtB?=
 =?utf-8?B?R3dmaGdqSW1mdi82M3JvczNOVmFOSzF0cDJUbVh6czB6UFJJN2M4WkJYU2pX?=
 =?utf-8?B?WERqa2VHbDFqNnFpQlgrQ3dhcmErUW9RWlpDT3pYblFvREhpRFA1Y0hVdnpp?=
 =?utf-8?B?OVRIeC9HZTU5YzVGb2x0VnY3Q1VDRGY4UVorV2JGRUZqT3pMWDhUdnNFVEFW?=
 =?utf-8?B?dDQrekpMdkJKbUNPZXVhTUtVSUU1cFpoNWJ2WjJnMmo2Q0xYRENWazZpSUlt?=
 =?utf-8?B?aXlubVhjc3VmUGlOT0s5TXhEaXZmK1Jva09wUXEvRGROa2c9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(13003099007)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UzhkUkVwaTBKOWNxclA5OXh2QjlHU0xCR2l2RWp6d2V1M0tGN1p1S29DR0tN?=
 =?utf-8?B?T1V4WE9mbms5SG9rS3lGbXlGWUY4ajdOWEMrN1pZUDg5MFVXWWNEODJvODN0?=
 =?utf-8?B?RVovM2xTcDNTZ01uM3ZSSDVod0NEL1BObnZyNzBzR0VEb0U1Ymdaa1VGZlNL?=
 =?utf-8?B?dm5kMStQc3RVcCtsQWhCUm9kcjN5UWQzemJ6QWFkMHJPb2QyUDRrclRHN0JY?=
 =?utf-8?B?ZHlkNUgyZk1MZ0M5MDBWUnZxZzQwU2M5MVhVUHNwUTRCTDQvNnlmUUhyZ3Bx?=
 =?utf-8?B?Tk01RlVmWHhRdWlyNTFnMEJ2dzZUZXAwQjN2QzZVcDg1eDhiQWQyNFNhbWE2?=
 =?utf-8?B?bU1IbWR3akk3R2Y1YjZXdll3UjVud3F1SWJFWG9ENFlPcnZvWFdlRmgxVDds?=
 =?utf-8?B?OHAvR2Y5aE11Z3BvS2RmY2h1NDlqd2lWZmdVclpjeUFmc1l6cW5mSlpJV1Ft?=
 =?utf-8?B?R1g1eGtjbkV3SkI0cGkrcEd1dDBqM1FiQUNYYUxYdmN0R1d6Q0I2ZHpRZHF3?=
 =?utf-8?B?SVliN2RHT2d4bUpJekFLSlY1SE9BTW1vRWpraXVCMEJ4ZXUxWC81YURiNnJK?=
 =?utf-8?B?TUF3N0VpRUtXR2RpeWpBQlNBWWd3dGgwcUxZR25QNUdkOFVWWXpNcC9jMWpW?=
 =?utf-8?B?MnB1bllHUjV5b3ZDTDVBeFdybFY4eFpFcjBqK0VHM3hVMit2bG8wMUlMcjIr?=
 =?utf-8?B?ajdKeHI5dDM0TmFNcDh2c3JNcVJrR0pWdE91cFZMb3BxdGc5eU0zT2JYK2V4?=
 =?utf-8?B?ak1RSyszQUhraU5yNWIzZGo1R3RycURKUU80Y1FLV2duREQ0WWNraUpYdS9a?=
 =?utf-8?B?emZ6OCtIVjFrbXI0OFJKV1BhQXpXV0U2WVdLMzJWNnVnR1M4b3NnZ3laUW5n?=
 =?utf-8?B?Y2NWMWR6UzdWdGw5Yis3S2hmT2lCSkNYMHVUcDc2NmJPRHpNL2o1YVArMTN6?=
 =?utf-8?B?UldlbWEweThpcWE5RkVZaWQ5TUp3ZnpYZGhnS0QzcWVzNnFXMlZHM3RUTTlT?=
 =?utf-8?B?SjdZUEdCZW1OK0h3YUhqSXRGOWZrUXlxVEVuVFZFck5ucFlCL3NQNU90K0FR?=
 =?utf-8?B?RnRwWWc0RDBja2szblppL0xBK0psMXErdmtPOFU3Um5pOWhBVjJkZFpUVEhi?=
 =?utf-8?B?NUNyOGNZYWJNbDdxR2JBUmsrb0Z4L3poWjhTeXRIWXNWNFhGSnVkdWRCd1Q2?=
 =?utf-8?B?eDhlUW0vaUR1M21nN1ZWeHlXWjN6T1RPeFNNNklUaHVFZHM2UnpzdlhwWjZI?=
 =?utf-8?B?cmo5ZGdrMWI5czVIRnowZ3ZWNElUalRXZWt3eDc1cGtCRTduVDcrOTMyMzZx?=
 =?utf-8?B?Vnh0eDN1bGFDQncwZm92MzNMU2EwekN3V2t4WlNTVXA5T2dXQ0N6QjBvLzky?=
 =?utf-8?B?S1MrRVl0enRNUGxtdjJvb002T3drN1hEVVIrY2N0aHB1cVI0MDFGLzBqakh1?=
 =?utf-8?B?U00rUnBSWkNwY0wwVkFnNGRPVU51N1RIcGVuYXYweExEY01VSllMOGxQdHgx?=
 =?utf-8?B?bDIzM3daZFdiZFJqMnk5bWhyaEVoYys4a1B3QnRSbWtUUHBCVDdMMUd3R29z?=
 =?utf-8?B?VWxjOFdCcEZBNHB1cnJycUwzcjJLUzkvTTY3aHF0SDhsbldKb2E2cGZPazIz?=
 =?utf-8?B?eG5VdFRJbnU4WXhBY08wRC9mTy9ha1JoN2hwVXJGclJUdTU3M000V1FJblB6?=
 =?utf-8?B?bUxRazVFWU9nWC9rdzh1TnZ0UmNvSzJPZGRMNUd3KzQwdUl6ZUNTSEpEaVpN?=
 =?utf-8?B?RFlvV29Tbmo3MUxCWnhtVW01WVFVb2ZnMHR1RjUweE8vZzRVQWtBRlNKVFNS?=
 =?utf-8?B?YlNFaDQrMThKOVpIOUF1UFJ6RlZ2UnpYb1N5SzFJL1B2ZDdxN2V4T1JNaEFx?=
 =?utf-8?B?T0gxYVdudXNsdkk4cHFmaHorZEdESzhmUmxyQ3RRanVHSWRpSEpaa1BzUjV0?=
 =?utf-8?B?YVdnS0twd1lDdmhJLzNmL1A3aEw5TEYyREVCT3lxYXdDWnovbFdUbmFPRXI1?=
 =?utf-8?B?WDlHcHN1aGp0YktaRHcxMU5pMGxoUUc0bURPQmZXOTh3OXdQYXlMQlUvamJV?=
 =?utf-8?B?LytUK1UyNFc4aFhuZXJuWGJBOW10MXVkSnYxeFduVGVnRENRNTEwRUhaOE44?=
 =?utf-8?Q?GLrzFwn6Lm+7eICgMT+Z/Fi6q?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f622732f-008b-461d-f529-08dd5709a516
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2025 08:35:09.2245 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a9jdo3atc1GN07zbVLuj7XW06D6InF/gxxaTTfoe9F8IFInm5sS4hbWIfAFn1TYLXKjBkEjaWqwFXCNqtPDCADf6eiIfYfcxt2GBfFOQXQA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8697
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

SGksDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTQ1NDcxLyAt
IFJlLXJlcG9ydGVkLg0KaTkxNS5DSS5CQVQgLSBSZS1yZXBvcnRlZC4NCg0KDQpUaGFua3MsDQpS
YXZhbGkuDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBJOTE1LWNpLWluZnJh
IDxpOTE1LWNpLWluZnJhLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYg
T2YgU2FhcmluZW4sIEphbmkNClNlbnQ6IDI2IEZlYnJ1YXJ5IDIwMjUgMTc6MzgNClRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGlu
dGVsLmNvbT47IEk5MTUtY2ktaW5mcmFAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpTdWJqZWN0OiBS
RTog4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXJlIGZvciBkcm0vaTkxNS9wZml0OiBwYW5lbCBmaXR0
ZXIgcmVmYWN0b3JzDQoNCkhJLA0KU2VlIHJlbGF0ZWQgZXJyb3IuIFBsZWFzZSByZS1yZXBvcnQu
IA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8aW50
ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgDQo+IFBh
dGNod29yaw0KPiBTZW50OiBXZWRuZXNkYXksIDI2IEZlYnJ1YXJ5IDIwMjUgMTMuNTYNCj4gVG86
IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiDinJcgaTkxNS5DSS5CQVQ6IGZhaWx1cmUg
Zm9yIGRybS9pOTE1L3BmaXQ6IHBhbmVsIGZpdHRlciANCj4gcmVmYWN0b3JzDQo+IA0KPiBQYXRj
aCBEZXRhaWxzDQo+IFNlcmllczoJZHJtL2k5MTUvcGZpdDogcGFuZWwgZml0dGVyIHJlZmFjdG9y
cw0KPiBVUkw6CWh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTQ1NDcx
Lw0KPiBTdGF0ZToJZmFpbHVyZQ0KPiBEZXRhaWxzOglodHRwczovL2ludGVsLWdmeC1jaS4wMS5v
cmcvdHJlZS9kcm0tDQo+IHRpcC9QYXRjaHdvcmtfMTQ1NDcxdjEvaW5kZXguaHRtbA0KPiANCj4g
Q0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fMTYxODMgLT4gUGF0Y2h3b3JrXzE0NTQ3
MXYxDQo+IA0KPiANCj4gU3VtbWFyeQ0KPiANCj4gDQo+IEZBSUxVUkUNCj4gDQo+IFNlcmlvdXMg
dW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xNDU0NzF2MSBhYnNvbHV0ZWx5
IG5lZWQgDQo+IHRvIGJlIHZlcmlmaWVkIG1hbnVhbGx5Lg0KPiANCj4gSWYgeW91IHRoaW5rIHRo
ZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzIA0K
PiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xNDU0NzF2MSwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1
ZyB0ZWFtIA0KPiAoSTkxNS1jaS0NCj4gaW5mcmFAbGlzdHMuZnJlZWRlc2t0b3Aub3JnKSB0byBh
bGxvdyB0aGVtIHRvIGRvY3VtZW50IHRoaXMgbmV3IA0KPiBmYWlsdXJlIG1vZGUsIHdoaWNoIHdp
bGwgcmVkdWNlIGZhbHNlIHBvc2l0aXZlcyBpbiBDSS4NCj4gDQo+IEV4dGVybmFsIFVSTDogaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvUGF0Y2h3b3JrXzE0NTQ3
MXYxL2luZGV4Lmh0bWwNCj4gDQo+IA0KPiBQYXJ0aWNpcGF0aW5nIGhvc3RzICg0NCAtPiA0NCkN
Cj4gDQo+IA0KPiBObyBjaGFuZ2VzIGluIHBhcnRpY2lwYXRpbmcgaG9zdHMNCj4gDQo+IA0KPiBQ
b3NzaWJsZSBuZXcgaXNzdWVzDQo+IA0KPiANCj4gSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdl
cyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbg0KPiBQYXRjaHdvcmtfMTQ1NDcxdjE6
DQo+IA0KPiANCj4gSUdUIGNoYW5nZXMNCj4gDQo+IA0KPiBQb3NzaWJsZSByZWdyZXNzaW9ucw0K
PiANCj4gDQo+ICoJaWd0QGttc19mbGlwQGJhc2ljLWZsaXAtdnMtbW9kZXNldEBjLWRwMToNCj4g
DQo+IAkqCWZpLWtibC03NTY3dTogUEFTUyA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3Ry
ZWUvZHJtLQ0KPiB0aXAvQ0lfRFJNXzE2MTgzL2ZpLWtibC03NTY3dS9pZ3RAa21zX2ZsaXBAYmFz
aWMtZmxpcC12cy1tb2Rlc2V0QGMtDQo+IGRwMS5odG1sPiAgLT4gRE1FU0ctV0FSTiA8aHR0cHM6
Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvUGF0Y2h3b3JrXzE0NTQ3MXYx
L2ZpLWtibC03NTY3dS9pZ3RAa21zX2ZsaXBAYmFzaWMtZmxpcC12cy0NCj4gbW9kZXNldEBjLWRw
MS5odG1sPiAgKzEgb3RoZXIgdGVzdCBkbWVzZy13YXJuDQpTYW1lIGFzIGh0dHBzOi8vZ2l0bGFi
LmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTM3NzAgDQoNCj4gDQo+
IA0KPiBLbm93biBpc3N1ZXMNCj4gDQo+IA0KPiBIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBp
biBQYXRjaHdvcmtfMTQ1NDcxdjEgdGhhdCBjb21lIGZyb20ga25vd24NCj4gaXNzdWVzOg0KPiAN
Cj4gDQo+IElHVCBjaGFuZ2VzDQo+IA0KPiANCj4gSXNzdWVzIGhpdA0KPiANCj4gDQo+ICoJaWd0
QGk5MTVfcG1fcnBtQG1vZHVsZS1yZWxvYWQ6DQo+IA0KPiAJKgliYXQtcnBscy00OiBQQVNTIDxo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9DSV9EUk1fMTYxODMv
YmF0LXJwbHMtNC9pZ3RAaTkxNV9wbV9ycG1AbW9kdWxlLXJlbG9hZC5odG1sPiAgLT4gDQo+IEZB
SUwgPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0
NTQ3MXYxL2JhdC0NCj4gcnBscy00L2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWw+
ICAoaTkxNSMxMzYzMyANCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkx
NS9rZXJuZWwvLS9pc3N1ZXMvMTM2MzM+ICkNCj4gDQo+ICoJaWd0QGk5MTVfc2VsZnRlc3RAbGl2
ZUBtZW1vcnlfcmVnaW9uOg0KPiANCj4gCSoJYmF0LXR3bC0yOiBOT1RSVU4gLT4gQUJPUlQgPGh0
dHBzOi8vaW50ZWwtZ2Z4LQ0KPiBjaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xNDU0
NzF2MS9iYXQtdHdsLQ0KPiAyL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAbWVtb3J5X3JlZ2lvbi5o
dG1sPiAgKGk5MTUjMTI5MTkgDQo+IDxodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJt
L2k5MTUva2VybmVsLy0vaXNzdWVzLzEyOTE5PiApDQo+IA0KPiAqCWlndEBpOTE1X3NlbGZ0ZXN0
QGxpdmVAd29ya2Fyb3VuZHM6DQo+IA0KPiAJKgliYXQtYXJscy02OiBQQVNTIDxodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9DSV9EUk1fMTYxODMvYmF0LWFybHMt
Ni9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzLmh0bWw+DQo+IC0+IERNRVNHLUZB
SUwgPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS0NCj4gdGlwL1BhdGNod29y
a18xNDU0NzF2MS9iYXQtYXJscy0NCj4gNi9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91
bmRzLmh0bWw+ICAoaTkxNSMxMjA2MSANCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9y
Zy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTIwNjE+ICkgKzEgDQo+IG90aGVyIHRlc3QgZG1l
c2ctZmFpbA0KPiANCj4gKglpZ3RAa21zX3BpcGVfY3JjX2Jhc2ljQG5vbmJsb2NraW5nLWNyYy1m
cmFtZS1zZXF1ZW5jZToNCj4gDQo+IAkqCWJhdC1kZzItMTE6IFBBU1MgPGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS0NCj4gdGlwL0NJX0RSTV8xNjE4My9iYXQtZGcyLTExL2ln
dEBrbXNfcGlwZV9jcmNfYmFzaWNAbm9uYmxvY2tpbmctY3JjLQ0KPiBmcmFtZS1zZXF1ZW5jZS5o
dG1sPiAgLT4gU0tJUCA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0
aXAvUGF0Y2h3b3JrXzE0NTQ3MXYxL2JhdC1kZzItDQo+IDExL2lndEBrbXNfcGlwZV9jcmNfYmFz
aWNAbm9uYmxvY2tpbmctY3JjLWZyYW1lLXNlcXVlbmNlLmh0bWw+DQo+IChpOTE1IzkxOTcgDQo+
IDxodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVz
LzkxOTc+DQo+ICkgKzMgb3RoZXIgdGVzdHMgc2tpcA0KPiANCj4gDQo+IFBvc3NpYmxlIGZpeGVz
DQo+IA0KPiANCj4gKglpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHJlc2V0Og0KPiANCj4gCSoJYmF0
LXR3bC0yOiBJTkNPTVBMRVRFIDxodHRwczovL2ludGVsLWdmeC0NCj4gY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fMTYxODMvYmF0LXR3bC0NCj4gMi9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZl
QHJlc2V0Lmh0bWw+ICAoaTkxNSMxMjQ0NSANCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9w
Lm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTI0NDU+ICkgLT4gDQo+IFBBU1MNCj4gPGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE0NTQ3MXYx
L2JhdC10d2wtDQo+IDIvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUByZXNldC5odG1sPg0KPiANCj4g
KglpZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzOg0KPiANCj4gCSoJYmF0LWFybGgt
MzogRE1FU0ctRkFJTCA8aHR0cHM6Ly9pbnRlbC1nZngtDQo+IGNpLjAxLm9yZy90cmVlL2RybS10
aXAvQ0lfRFJNXzE2MTgzL2JhdC1hcmxoLQ0KPiAzL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAd29y
a2Fyb3VuZHMuaHRtbD4gIChpOTE1IzEyMDYxIA0KPiA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0
b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMjA2MT4gKSAtPiANCj4gUEFTUw0KPiA8
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTQ1NDcx
djEvYmF0LWFybGgtDQo+IDMvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3JrYXJvdW5kcy5odG1s
PiAgKzEgb3RoZXIgdGVzdCBwYXNzDQo+IAkqCWJhdC1hcmxzLTU6IERNRVNHLUZBSUwgPGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS0NCj4gdGlwL0NJX0RSTV8xNjE4My9iYXQt
YXJscy01L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAd29ya2Fyb3VuZHMuaHRtbD4NCj4gKGk5MTUj
MTIwNjEgPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLQ0K
PiAvaXNzdWVzLzEyMDYxPiApIC0+IFBBU1MgPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90
cmVlL2RybS0NCj4gdGlwL1BhdGNod29ya18xNDU0NzF2MS9iYXQtYXJscy0NCj4gNS9pZ3RAaTkx
NV9zZWxmdGVzdEBsaXZlQHdvcmthcm91bmRzLmh0bWw+ICArMSBvdGhlciB0ZXN0IHBhc3MNCj4g
CSoJYmF0LW10bHAtOTogRE1FU0ctRkFJTCA8aHR0cHM6Ly9pbnRlbC1nZngtDQo+IGNpLjAxLm9y
Zy90cmVlL2RybS10aXAvQ0lfRFJNXzE2MTgzL2JhdC1tdGxwLQ0KPiA5L2lndEBpOTE1X3NlbGZ0
ZXN0QGxpdmVAd29ya2Fyb3VuZHMuaHRtbD4gIChpOTE1IzEyMDYxIA0KPiA8aHR0cHM6Ly9naXRs
YWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vlcy8xMjA2MT4gKSAtPiAN
Cj4gUEFTUw0KPiA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRj
aHdvcmtfMTQ1NDcxdjEvYmF0LW10bHAtDQo+IDkvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUB3b3Jr
YXJvdW5kcy5odG1sPiAgKzEgb3RoZXIgdGVzdCBwYXNzDQo+IA0KPiANCj4gV2FybmluZ3MNCj4g
DQo+IA0KPiAqCWlndEBpOTE1X3NlbGZ0ZXN0QGxpdmU6DQo+IA0KPiAJKgliYXQtdHdsLTI6IElO
Q09NUExFVEUgPGh0dHBzOi8vaW50ZWwtZ2Z4LQ0KPiBjaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJ
X0RSTV8xNjE4My9iYXQtdHdsLQ0KPiAyL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmUuaHRtbD4gIChp
OTE1IzEyNDQ1IA0KPiA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tl
cm5lbC8tL2lzc3Vlcy8xMjQ0NT4gIC8NCj4gaTkxNSMxMzc2MSA8aHR0cHM6Ly9naXRsYWIuZnJl
ZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tDQo+IC9pc3N1ZXMvMTM3NjE+ICkgLT4gQUJP
UlQgPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS0NCj4gdGlwL1BhdGNod29y
a18xNDU0NzF2MS9iYXQtdHdsLTIvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZS5odG1sPg0KPiAoaTkx
NSMxMjQzNSA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8t
DQo+IC9pc3N1ZXMvMTI0MzU+ICAvIGk5MTUjMTI5MTkNCj4gPGh0dHBzOi8vZ2l0bGFiLmZyZWVk
ZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLS9pc3N1ZXMvMTI5MTk+ICAvDQo+IGk5MTUjMTM1
MDMgPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLQ0KPiAv
aXNzdWVzLzEzNTAzPiApDQo+IA0KPiANCj4gQnVpbGQgY2hhbmdlcw0KPiANCj4gDQo+ICoJTGlu
dXg6IENJX0RSTV8xNjE4MyAtPiBQYXRjaHdvcmtfMTQ1NDcxdjENCj4gDQo+IENJLTIwMTkwNTI5
OiAyMDE5MDUyOQ0KPiBDSV9EUk1fMTYxODM6IDViY2I2N2EyYTRjNjEwMzRmNWEyNWMwMjQ2MzFj
NWZiZjM1MWVlOGQgQCANCj4gZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZ2Z4LWNpL2xp
bnV4DQo+IElHVF84MjQ4OiA4MjQ4DQo+IFBhdGNod29ya18xNDU0NzF2MTogNWJjYjY3YTJhNGM2
MTAzNGY1YTI1YzAyNDYzMWM1ZmJmMzUxZWU4ZCBAIA0KPiBnaXQ6Ly9hbm9uZ2l0LmZyZWVkZXNr
dG9wLm9yZy9nZngtY2kvbGludXgNCg0K
