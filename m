Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F24B8A21D56
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 13:54:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9F1010E7E9;
	Wed, 29 Jan 2025 12:54:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ea8onlaJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3EA810E7E9;
 Wed, 29 Jan 2025 12:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738155279; x=1769691279;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OwD5X8aT9pkzBw3aMiyGfGit6LHMWQXrHp3U37XR4Zg=;
 b=ea8onlaJOtA+mtCDHapTqtGmboQPW/Q6pJ4PJ2Tm00ZmwMAEPfEuPoQf
 dPCnoNCE6GCC8CunjlqLq+JndZD+lX95TQk7LS+LzcfUhEwPz47VbGD+Y
 44EXuQnmlE7/NlNaJDjhuXmAzwPyGQ199hG4RIAYBDsQB9ZSno5GRVq4c
 pgH9sLuZ5ynUbyRT49btGhl3gP6Ew2F8Piv6+qHM2Vn4RyAT9XsjC/jiZ
 iH7mlRqH2/3DcysOgIE2n4cF2JdctXpVLbLDNqriLeuKHOaTkHsJLu6fu
 7mDQfpJaZ15tP2dw1yyH+mKX9ediR1nTz0cXXmoHZaFJsqlWXuiyF9tsh Q==;
X-CSE-ConnectionGUID: WWMw20gmSOqRaqu1w35bhw==
X-CSE-MsgGUID: bQCbgK4DSACytNHPO6c1xA==
X-IronPort-AV: E=McAfee;i="6700,10204,11329"; a="38551201"
X-IronPort-AV: E=Sophos;i="6.13,243,1732608000"; d="scan'208";a="38551201"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 04:54:38 -0800
X-CSE-ConnectionGUID: lxb7g61aRF+NDdnOA2Wy+Q==
X-CSE-MsgGUID: OiQXXnkNTNCPaI3f254oKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,243,1732608000"; d="scan'208";a="109608898"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jan 2025 04:54:37 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 29 Jan 2025 04:54:36 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 29 Jan 2025 04:54:36 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 29 Jan 2025 04:54:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R7OVZaaOPb93c9y/TJ4CcqpURcaNHnnryjZ1Xl0UAi2+1WDAP9pdLbQRVGLSzu/dS4y4HioQOQgEH+kYheFcjMNGQ6MxUmMSWxThTcBEDvaktppIhHrZof3CL9HGVBtL9LVerx9lsmUQkUnbpJTv3oVs3vbd2l6AQDXR1ZNWS1CDjYcITLduLXNK5FnH4DlDFpe2OVRt97hCR8qZDv9Qwmabn/yiYrXLDAct8Dn/I41Q3m4ysKcBq67JaUuZvly+AT9q+QNjOP2q5QhdJWv2zGpqlNVIGW+a4jh8tW5pUleQCinBhSHKp6Cf6ZFvEHU0ZT7PkcCKyt/DKqhtDBcNVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OwD5X8aT9pkzBw3aMiyGfGit6LHMWQXrHp3U37XR4Zg=;
 b=xSRtwFX8R+LNbIJa7fDLVr7M4Vr6DtY+VMb6O6ChzWxq3lTKjOvxg1PrF7hmaosrXQoW14xqI7Cz2TNxbunwAfwraYa33QP5ovfjyGjP7Wa30sp0KXFBCrfoGCrnn+brt5Mqd7C4z9ijseGInKHD5SCwXCTJAYvMdTC6cd65NhGZIzQShhVn7ioJduiFLCbfhZZFG2/BtgoJ6Q3mtelPhIcFa7SGV4MyS6KjydbU2siAneMFHoSaaATteyYxRS3UqGmXDD7/hCpjt+nxbyiiJO8yowFSonYjX9uw8+GAMAxBFMkpt+d7fnia5KTJrs1RnRlq6Z6ndQ5KNZYNzIQDsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6477.namprd11.prod.outlook.com (2603:10b6:8:88::17) by
 IA0PR11MB7884.namprd11.prod.outlook.com (2603:10b6:208:3dc::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8377.22; Wed, 29 Jan 2025 12:54:34 +0000
Received: from DM4PR11MB6477.namprd11.prod.outlook.com
 ([fe80::708c:96d6:bf31:36b2]) by DM4PR11MB6477.namprd11.prod.outlook.com
 ([fe80::708c:96d6:bf31:36b2%4]) with mapi id 15.20.8377.027; Wed, 29 Jan 2025
 12:54:33 +0000
From: "Garg, Nemesa" <nemesa.garg@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 1/2] drm/i915/display: After joiner compute pfit_dst
Thread-Topic: [PATCH 1/2] drm/i915/display: After joiner compute pfit_dst
Thread-Index: AQHbTKKl84d6Mr7ID0mlhFrRHWMxiLLtxYSAgAEdswCAPxvIkA==
Date: Wed, 29 Jan 2025 12:54:33 +0000
Message-ID: <DM4PR11MB64776FA8B6BD6856D5AE7144E3EE2@DM4PR11MB6477.namprd11.prod.outlook.com>
References: <20241212143329.938202-1-nemesa.garg@intel.com>
 <20241212143329.938202-2-nemesa.garg@intel.com> <Z2RDkcPdNv5vMJOl@intel.com>
 <Z2UzOhulIWgjP7oL@intel.com>
In-Reply-To: <Z2UzOhulIWgjP7oL@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6477:EE_|IA0PR11MB7884:EE_
x-ms-office365-filtering-correlation-id: b672dcb6-abc8-4335-5174-08dd4064141a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?YVBpekJhVzRDdnN2bFp4UUsvVUJJajVNVGU1Y0FMdXhoRkFxbTdZNE1xR1B1?=
 =?utf-8?B?d0lsZmx2TFBtellFc0xYb210NGllSmh0NS93YXQybEVNWnF3VnNNbGxyazR3?=
 =?utf-8?B?SDhOV2FuemdGb1M0WEwzTkxEUnQ4a2NnWTZIcGNWODlpd3FFanliUncxbzVK?=
 =?utf-8?B?eWxHWGRMWGhTeExGUzQrYWpvSlVMTVVuaWs2b1h2VXRNY3k1MGJ0bGlKa2JL?=
 =?utf-8?B?OGZHam9JSjhoZ1ZHRHV6cm1HWlM5c3F2MVNvSWN1VDE5aFF0SmZMb2xyaDZG?=
 =?utf-8?B?YVJFdUVWajl6aHR1Y1htQ29zYVpwMVUyVmpmY3NjSzdjUlpEOTVtRUFoTkNx?=
 =?utf-8?B?WnpBN3ZxSm80S3VidTF0SHdMdEt2MUtzZi9SMEIyZ1RtR3dIem9Tazc5eWkr?=
 =?utf-8?B?Q2w2amVBaEIzRS9EbUJzcW1NRkdvTi9vRGYwUmMxVE5pd3FucUtxV1RLSnlY?=
 =?utf-8?B?anFvTEp4UnlqbW03Ump3bzY2Ump1U0p1TXd5ZE02VGpKeWw3cXZKZGUzSklz?=
 =?utf-8?B?UjBBQmduQmo4ZEgrTVRvYkM1YVBobHREZ21xQmNWRFR3SWNDZmJIbTA0OW00?=
 =?utf-8?B?MzJyN3VlanVMZk1NU294VFlDRzhpMVQrb09mZFlLR0F0RTF0WEswcktuUHJG?=
 =?utf-8?B?UXh2NGx1WE5CZ25rcTk0RUhHZk5lRXMxOHlLUFA0Nk02NytSUGZSMDFwMElQ?=
 =?utf-8?B?RGNRVUttUHZnTkhTQmJUS2hBQWw4QktWQmFKZkZYMC9LNFp3RTJPWHlUZ2hY?=
 =?utf-8?B?ZVRhQjZWMDZ3amsyQnhUcnpPVHNrWCt6RlBUZGs2bHlpUHFiWXZtL3MzL0Rt?=
 =?utf-8?B?eFJYMkJWdG16TkU1R043SDk3MCtBS0F1NzNkOHRRZUNTcmNYbFVzL1o4SnhB?=
 =?utf-8?B?OTBObzdDNWt3bGlQQU5DVU5tMUNOekcyaUlQY0dWZUNLcmxYcXpGSXJqR0J3?=
 =?utf-8?B?U3BsMmsyUnV5QTdVcDlaczRuaUJCQWwrMHJ2dU8rQm1saEhuL2EyU2JSektz?=
 =?utf-8?B?d1JzVjkrV1N0MjJWUUh5Q09NL0h5aHR3dHAzSGR2Q2VOaVFoU3c5UklpbEVQ?=
 =?utf-8?B?R1IxWmRnS283bGM0eGt5K0xzUU5XL3lQYmVDemhYV052ZkVvN3dOb0t1Q0FX?=
 =?utf-8?B?dG9SY1JQK0FoNi9POWRaYWtBQURvMEk5RmlQWlpWUENsUlJzd1BzdWdkblph?=
 =?utf-8?B?UEhHcG5pMy82aTlIUWcvZDh4TzRaNGRNUytsZFY0dTRsRXgzL21YZWNpUWlm?=
 =?utf-8?B?Vk0zUWl0b3hSTUV6aSsvZ0pseWFFZTJPYkNQNmRJTVQ1eXEvR05QWEtEdTVp?=
 =?utf-8?B?NENzRW4rR0JMR2F0aThWVFM4NnIrd0RkM2dDRHNiZmU0MmEwOFp2SUlxSy9J?=
 =?utf-8?B?R0NUZUcrUjgrQ3lxdkFaOTRndFBvYm53Yk1PazhKa0tLYnFFQW91UUJVSWlK?=
 =?utf-8?B?emRiOHJzQkh0U3ZJaU0yR3RFOVJEOG00ZGtjTnFCalJCcHVPSllMdkR1ZFRH?=
 =?utf-8?B?YzgwU1p0VXdKZldyaFZFWk1mSFpLdWYrSHcwSjN2WGRBM1JEY2NPcjZWdlI0?=
 =?utf-8?B?Yjk2elkzdmVvRjV2VVZoRDBXS01hZFJENnVVMzIzWXMrbDBWT1Z1VWJlTzBB?=
 =?utf-8?B?KzVENDBYaHZXejRWa3ZsQXY3R01vRHRrSkVIMDdrbVdFOEVRbldONVZuSmV0?=
 =?utf-8?B?YzFXNWdUZHhLZ2w1Y0FoeXhLNldXRGYwTXRxL2dtUWRQaS94R1YxbTlGT3Fv?=
 =?utf-8?B?bjd3eVJ2eWtQNkRjWlJFNEFQeDB4RTkyczhwU2hNUWtLYTF4MDdUYUNVdk9T?=
 =?utf-8?B?bnNqNnFWWk9KRHNvYWNnRU5CcTRPQXVrQzVIZzJEY3JYSHUwMFlNMlEvTmps?=
 =?utf-8?B?M2N6N3lLcUliVEcyQUxnS1RDYzcyK1VrVnNrL3FUbHB0VS9xNnJFOUl5akVO?=
 =?utf-8?Q?6GWavHKx1vyFjdszXXjW+x0R9rmrlvxL?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6477.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U2xhOG1jYzZNSlZnMmowTkROMk9VeGxMNUFkeFdhUDRlbVNDRDBaeDlCL0FE?=
 =?utf-8?B?dWw1SGR0dVdjOWZlNlZhUUR1RjdWR2xBdll3cUtnYVk3dWRzeHhTZ09wYjJR?=
 =?utf-8?B?ZW9jUXBaOEREYmc1QlcxblJiVHROdUlITFZoUzBBNU1MTlBYdllRSGRGbFNF?=
 =?utf-8?B?Q0QvcGdhREpmTlh6QWp0VFhLdG5qbjdkb1ZmSGpzL2dubHorT0t1WlBQVG95?=
 =?utf-8?B?c2xRM2JUNHh0S29lZ1VmTjZaVzBKYk9ycHFlMk1ZYnlYeGxQbWk0NXFIUnZE?=
 =?utf-8?B?NEJqcjVVQWZIU3Q1dDd6UE81ZkFmQnZQVHJyWnpFMU1pMWJEaDJwYkNCRXJM?=
 =?utf-8?B?bnVTdUVWZzcwVTd4SkdFNTlURTFPRzZXeHJRdmRzdTBSZ1BWb1N5VElOK0Vv?=
 =?utf-8?B?b3p1RmU4QzBZZStpQ0luOTVsOGlxRFZ2QlJNTTlWRFpQYlMrdWllT1VWekIx?=
 =?utf-8?B?UFNXdklqRkN6UmFPZTkxOXBJZnM0anZLL083bnpNOUNVMHVETjNyQWRlZHo4?=
 =?utf-8?B?Zm9DRnVkOW9kejdWS0FhYXQxbk1FMUIwV0NMRTA3MWRwQTZ2ODlRWmJFbzZT?=
 =?utf-8?B?QlBlTlB0TkxYaU5ndDRkOU4wUU1td1A2NTQxU3I4dlowMk9Xb0M0QWgvWlow?=
 =?utf-8?B?ZW5Pb1cvNmpGeGowRDVjeU5LRUE4Yll6VjNWNEpLVEFwNWNicHRyWkp0eEZM?=
 =?utf-8?B?SjFyYUx3NnBKWGRZZkFIbWZXbUJKMFA4VFlzQlVTczdEUTRWa1Z0cldLSkVV?=
 =?utf-8?B?eEM1ODlEcHFXbDZqaktBSEpHRjZKZ05PaG4xMURnektiZWF6Wk1hMnFHbWNu?=
 =?utf-8?B?LytuR3VDL0Y4M2pUNHpBb0dHdmdhaVJSTWJDaUJXNlRHNXFMZElGdnlOUEpL?=
 =?utf-8?B?WlBuSmNvZXhPaE5OaGQ3L0cvK2VuZFQzUzBwZlpQSGRNcW1jb3pGU0JMMXNy?=
 =?utf-8?B?SG4zbkxHaVBhY2piYjJZMUtuaHV1MnFsWEJ6MHBtNFk0YnZTRTNDWmVYd2dm?=
 =?utf-8?B?L3FsUDFPTjRLRGVqWFVEby95SGdESXR5dXpESlErdE9lREJoSGIvc0NZUk5z?=
 =?utf-8?B?RVlzaWNmOXpDbm5iQ3lTOUV1c0NsNFVIcC91eTdoeGk4YVFHNTZScDZ2VlJ2?=
 =?utf-8?B?cFBublhyTUYwVUJaRlpIWXd0cnlnOFJrR1BJZTMwRzlyMHdJRWp1NldKZWE0?=
 =?utf-8?B?OTZ5YW9yTjZXeWNXQ21QL01YQVlQK2RKSWtGdGRxN0NHRjRPWXJ3VlpWWlZi?=
 =?utf-8?B?c1BRQ1ZodEduL3BFL3kvUlFOVVVISnNkaVQ4ZUpLdU16Nmw2UXdSQjZrRG1F?=
 =?utf-8?B?dWxqUnZJbkhndGhpRDBVVkg1UDNvd0lhT01STmlJeTZWZXZSekY5eHVjVHpQ?=
 =?utf-8?B?SEloUVplZTcvTEJxUUorSzlVaW1NZnNFRXpCenRQNEVSM256MitVZkZXcStM?=
 =?utf-8?B?MDZmWHl3ZzJIQXZDVGRndDFoSXMxQjF5RzdyZnpqRlFZN2czZ3BsU0I1cXhh?=
 =?utf-8?B?Y1l2djFBeS9YZHdtZjJCZnZ0Umo2WVV5WDROdFIxUXZuNFJESnpaRWFZRENq?=
 =?utf-8?B?K01PdkpNWUpMRDFzbG9NaGUxTVdLL0RiUUYxZXpZNzRnZ2F5SlQ3bndxeFJy?=
 =?utf-8?B?WC9yT3VBMUdoN3pJcytuNFU2OFVxQkxDbnI2bkpidzg5dGVrbUovbmJlSGkz?=
 =?utf-8?B?bXpqRjg1clFMcUo2OUpzMkZuUmtuTGV4am9pNVh0Wm4wTUZxeWpySDZoRG4w?=
 =?utf-8?B?TTBTSjBaVkFqQ25CU09ESFVjYURTY2RMc1hJK28rL1huM2tMRUFMNjdnRmpW?=
 =?utf-8?B?djNyZG9jVWQveFRtNU91dFdUNE1jcEx0OFZMZXVBREJ3eHY5eUgvY1dKVVQw?=
 =?utf-8?B?SVZYS0xqMTBGL3FWaFJJT1FwSGRKeTNRWGw2U2loMjFIcXVuRkpqWWYxNFZN?=
 =?utf-8?B?VFkwbWgva1FxY3pQWXMvVERKWkJCTTZ6cTB4eUZxTXNEQUlVS2xwYVJadThx?=
 =?utf-8?B?b1N2QWpPNlg1dEpERnBmSUlnTUN5OHVFZ0IxZU95UUZMTXJlTC9aelBrbm45?=
 =?utf-8?B?a2JMdWNLaW1vUnRGeGtvU3Q1N2k0MnJZQzhDOUZsc21KeFZVY2ErWThjSXBk?=
 =?utf-8?Q?WzuO2cMFzYFLNNai+HtN5jA0V?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6477.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b672dcb6-abc8-4335-5174-08dd4064141a
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jan 2025 12:54:33.4561 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a9uT8iylaBxL8dCMc6z4y4DyUEyi3Mj49lC/hBCvJYheMxsCJ4GR/g7cXONMaJQPtzGZ5gRvP2IWbyvEzNZmeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7884
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogRnJpZGF5LCBEZWNlbWJl
ciAyMCwgMjAyNCAyOjM1IFBNDQo+IFRvOiBHYXJnLCBOZW1lc2EgPG5lbWVzYS5nYXJnQGludGVs
LmNvbT4NCj4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxp
c3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDEvMl0gZHJtL2k5MTUv
ZGlzcGxheTogQWZ0ZXIgam9pbmVyIGNvbXB1dGUgcGZpdF9kc3QNCj4gDQo+IE9uIFRodSwgRGVj
IDE5LCAyMDI0IGF0IDA2OjAyOjI1UE0gKzAyMDAsIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToNCj4g
PiBPbiBUaHUsIERlYyAxMiwgMjAyNCBhdCAwODowMzoyOFBNICswNTMwLCBOZW1lc2EgR2FyZyB3
cm90ZToNCj4gPiA+IEluIHBhbmVsIGZpdHRlci9waXBlIHNjYWxlciBzY2VuYXJpbyB0aGUgcGNo
X3BmaXQgY29uZmlndXJhdGlvbg0KPiA+ID4gY3VycmVudGx5IHRha2VzIHBsYWNlIGJlZm9yZSBh
Y2NvdW50aW5nIGZvciBwaXBlX3NyYyB3aWR0aCBmb3INCj4gPiA+IGpvaW5lci4gVGhpcyBjYXVz
ZXMgaXNzdWUgd2hlbiBwY2hfcGZpdCBhbmQgam9pbmVyIGdldCBlbmFibGVkDQo+ID4gPiB0b2dl
dGhlci5TbyBvbmNlIHBpcGUgc3JjIGlzIGNvbXB1dGVkIGFkanVzdCB0aGUgcGZpdF9kc3QuDQo+
ID4gPiBJdCBjYW4gYmUgZG9uZSBieSBjb21wdXRpbmcgcGVyIHBpcGUgb3V0cHV0IGFyZWEgZmly
c3QgYW5kIHRoZW4gYW5kDQo+ID4gPiB0aGVuIGZpbmQgdGhlIGludGVyc2VjdGlvbiBvZiBhYm92
ZSBhcmVhIHdpdGggcGZpdF9kc3QgYW5kIHRoZW4NCj4gPiA+IGFkanVzdCB0aGUgY29vcmRpbmF0
ZXMuDQo+ID4gPg0KPiA+ID4gU2lnbmVkLW9mZi1ieTogTmVtZXNhIEdhcmcgPG5lbWVzYS5nYXJn
QGludGVsLmNvbT4NCj4gPiA+IC0tLQ0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jIHwgNDENCj4gPiA+ICsrKysrKysrKysrKysrKysrKysrDQo+ID4g
PiAgMSBmaWxlIGNoYW5nZWQsIDQxIGluc2VydGlvbnMoKykNCj4gPiA+DQo+ID4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+IGlu
ZGV4IDIxMzE5Zjc1M2EzNC4uN2JlMmVhMTFiOGIwIDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gPiBAQCAtMjU2Myw2
ICsyNTYzLDM2IEBAIHN0YXRpYyBpbnQgaW50ZWxfY3J0Y19jb21wdXRlX3BpcGVfc3JjKHN0cnVj
dA0KPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+ID4gIAlyZXR1cm4gMDsNCj4g
PiA+ICB9DQo+ID4gPg0KPiA+ID4gKy8qDQo+ID4gPiArICogVGhlIHgtY29vcmRpbmF0ZSBmb3Ig
UHJpbWFyeSBzaG91bGQgYmUgY2FsY3VsYXRlZCBpbiBzdWNoIGEgd2F5DQo+ID4gPiArICogdGhh
dCBpdCByZW1haW5zIGNvbnNpc3RlbnQgd2hldGhlciB0aGUgcGlwZXMgYXJlIGpvaW5lZCBvciBu
b3QuDQo+ID4gPiArICogVGhpcyBtZWFucyB3ZSBuZWVkIHRvIGNvbnNpZGVyIHRoZSBmdWxsIHdp
ZHRoIG9mIHRoZSBkaXNwbGF5DQo+ID4gPiArZXZlbg0KPiA+ID4gKyAqIHdoZW4gdGhlIHBpcGVz
IGFyZSBqb2luZWQuIFRoZSB4LWNvb3JkaW5hdGUgZm9yIHNlY29uZGFyaWVzIGlzIDANCj4gPiA+
ICsgKiBiZWNhdXNlIGl0IHN0YXJ0cyBhdCB0aGUgbGVmdG1vc3QgcG9pbnQgb2YgaXRzIG93biBk
aXNwbGF5IGFyZWEsDQo+ID4gPiArICogZW5zdXJpbmcgdGhhdCB0aGUgZnJhbWVidWZmZXIgaXMg
Y2VudGVyZWQgd2l0aGluIFBpcGUgQuKAmXMNCj4gPiA+ICtwb3J0aW9uDQo+ID4gPiArICogb2Yg
dGhlIG92ZXJhbGwgZGlzcGxheS4NCj4gPiA+ICsgKi8NCj4gPiA+ICtzdGF0aWMgaW50IGludGVs
X2NydGNfY29tcHV0ZV9wZml0KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+
ID4gKwkJCQkgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgew0KPiA+ID4g
KwlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSA9ICZjcnRjX3N0YXRlLT5ody5waXBlX21v
ZGU7DQo+ID4NCj4gPiBjb25zdCBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqcGlwZV9tb2RlID0g
Li4uDQo+ID4NCj4gPiA+ICsJc3RydWN0IGRybV9yZWN0IGFyZWE7DQo+ID4gPiArDQo+ID4gPiAr
CWlmICghY3J0Y19zdGF0ZS0+cGNoX3BmaXQuZW5hYmxlZCkNCj4gPiA+ICsJCXJldHVybiAwOw0K
PiA+ID4gKw0KPiA+ID4gKwlkcm1fcmVjdF9pbml0KCZhcmVhLCAwLCAwLA0KPiA+DQo+ID4gVGhp
cyBuZWVkcyBhIHByb3BlciB4IG9mZnNldCB0byBtYXRjaCB0aGUgcGlwZSdzIHBvc2l0b24gaW4g
dGhlDQo+ID4gb3ZlcmFsbCBzY3JlZW4gbGF5b3V0IChjYW4gYmUgZGV0ZXJtaW5lZCBzaW1pbGFy
bHkgdG8NCj4gPiBpbnRlbF9qb2luZXJfYWRqdXN0X3BpcGVfc3JjKCksIGV4Y2VwdCB1c2luZyBj
cnRjX2hkaXNwbGF5IGFzIHRoZQ0KPiA+IHdpZHRoIGluc3RlYWQgb2YgdGhlIHBpcGVfc3JjIHdp
ZHRoKS4NCj4gPg0KPiA+ID4gKwkJICAgICAgbW9kZS0+Y3J0Y19oZGlzcGxheSwNCj4gPiA+ICsJ
CSAgICAgIG1vZGUtPmNydGNfdmRpc3BsYXkpOw0KPiA+ID4gKw0KPiA+ID4gKwlpZiAoIWRybV9y
ZWN0X2ludGVyc2VjdCgmY3J0Y19zdGF0ZS0+cGNoX3BmaXQuZHN0LCAmYXJlYSkpDQo+ID4gPiAr
CQlyZXR1cm4gLUVJTlZBTDsNCj4gPiA+ICsNCj4gPiA+ICsJZHJtX3JlY3RfdHJhbnNsYXRlKCZj
cnRjX3N0YXRlLT5wY2hfcGZpdC5kc3QsIC1hcmVhLngxLCAtYXJlYS55MSk7DQo+ID4NCj4gPiBB
bmQgdGhpcyBuZWVkcyB0byByZW1vdmUgdGhlIHNhbWUgb2Zmc2V0IHdlIGFkZGVkIG9yaWdpbmFs
bHkuDQo+IA0KPiBIbW0uIE5vdyB0aGF0IEkgbG9va2VkIGF0IHRoaXMgYSBiaXQgSSB0aGluayB3
ZSBuZWVkIGEgbG90IG1vcmUgdGhhbiB0aGlzIHRvDQo+IG1ha2UgdGhpbmdzIGFjdHVhbGx5IHdv
cmsgY29ycmVjdGx5Lg0KPiANCj4gSSB0aGluayB3aGF0IHdlIG5lZWQgaXMgcm91Z2hseToNCj4g
LSBtb3ZlIHBpcGVzcmMvcGZpdC5kc3QvcGl4ZWxfcmF0ZSBjYWxjdWxhdGlvbnMgb3V0IGZyb20N
Cj4gICBpbnRlbF9jcnRjX2NvbXB1dGVfY29uZmlnKCkgaW50byBzb21lIG5ldyBmdW5jdGlvbiAo
Y291bGQNCj4gICBjYWxsIGl0IHNvbWV0aGluZyBsaWtlIGludGVsX2NydGNfY29tcHV0ZV9jb25m
aWdfZmluYWwoKCkpDQo+ICAgd2hpY2ggbmVlZHMgdG8gYmUgY2FsbGVkIGFmdGVyIHRoZSBqb2lu
ZXIgc3RhdGUgY29weSBoYXMgYmVlbg0KPiAgIHBlcmZvcm1lZCAoaWUuIHdoZXJlIHdlIG5vdyBj
YWxsIGludGVsX2pvaW5lcl9hZGp1c3RfcGlwZV9zcmMoKQ0KPiAgIGluIGludGVsX2F0b21pY19j
aGVjaygpKS4NCj4gLSByZWRlc2lnbiB0aGUgcGlwZXNyYyByZWFkb3V0IHRvIGl0ZXJhdGUgdGhy
b3VnaCBhbGwgdGhlIGpvaW5lZA0KPiAgIHBpcGVzIHRvIGFjY3VtdWxhdGUgdGhlIHggb2Zmc2V0
IGZvciB0aGUgcGlwZXMsIHNpbmNlIG5vdCBhbGwNCj4gICB0aGUgam9pbmVkIHBpcGVzIG5lY2Vz
c2FyaWx5IGhhdmUgdGhlIHNhbWUgcGlwZXNyYyB3aWR0aA0KPiAtIHJldXNlIHRoZSBzYW1lIGZv
ciB0aGUgdWFwaS5tb2RlIGhkaXNwbGF5L3ZkaXNwbGF5IGZpeHVwDQo+IC0gc3RlYWwgdGhlIHNj
YWxlZCBjbGlwcGluZyBjb2RlIGZyb20NCj4gICBpbnRlbF9hdG9taWNfcGxhbmVfY2hlY2tfY2xp
cHBpbmcoKSB0byBwcm9wZXJseSBjYWxjdWxhdGUNCj4gICBib3RoIHBpcGVzcmMgYW5kIHBmaXQu
ZHN0DQo+IA0KSGkgVmlsbGUsDQoNClNvcnJ5IGZvciBsYXRlIHJlcGx5LiBBZ3JlZSBpdCBuZWVk
cyBtb3JlIHdvcmsgYW5kIEkgZ290IHlvdXIgcG9pbnRzLiBJIHdpbGwgd29yayBvbiB0aGlzIGFu
ZCB3aWxsIHNlbmQgdGhlIG5ldyByZXZpc2lvbi4NCg0KVGhhbmtzIGFuZCBSZWdhcmRzLA0KTmVt
ZXNhDQo+IC0tDQo+IFZpbGxlIFN5cmrDpGzDpA0KPiBJbnRlbA0K
