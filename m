Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5417C4B7BF
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 05:52:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D97310E4D4;
	Tue, 11 Nov 2025 04:52:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hlRNwpp8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D958810E03C;
 Tue, 11 Nov 2025 04:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762836745; x=1794372745;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RY0HV9QfPiyEdywGRsYoVAFvFRc9xPB6QMOi0ACMdoQ=;
 b=hlRNwpp8+hd3/WOLCu6vLH/fIzDn+aVQrCC4gKi4P92b0/C3FROgixQP
 6pCJSJZWUWvtTVmx9M9AvNwPRDcjCWMLHMv6PG3+dHAVKrrbgfy8gioda
 x8DzNSlFgunK4fmXX07mrLwb7llSJlckgpsKZhWkBTa3lM5h3/GiQa6aA
 2d5Fx8CnED+ZYn6jgZEcUvKeZmRY+Yjr+FgJb8MXE579XLtZl3yzrhLAM
 Iu+H5yj0EKhOaHtgNYW0Igl16yXqS8IFO/qlgmtxE1gd9P5m/zvNg1xzH
 8w48a6Oqyqnbfvn6InOHOMeKYQ4BYhOQSDdJYmOhzEgUDZAcvSUjm3JYY w==;
X-CSE-ConnectionGUID: nqvEhMkHTPeoqCKCtlqZQg==
X-CSE-MsgGUID: qzDf+120Rhq/lSXhrQM4YA==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="63898137"
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="63898137"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 20:52:25 -0800
X-CSE-ConnectionGUID: BNfGIeofSRavetOIupcMXw==
X-CSE-MsgGUID: xidP8d4dR7mNSeaufJ2g3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="188190529"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 20:52:25 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 20:52:23 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 20:52:23 -0800
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.42) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 20:52:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GEwrhvlqbaaJdPbSG4mpQJmuVz1X43YZ/qLxtY7uAbC3VHHgW93peZBrfV13atdQWt3/FbdIaoRFNvxBq2jQ0rDC2wandyU9F5829Hx6Sd/CkbY7NqG0GhPqE0gsjA1UpqxG3QYSY+LvrqY56MGx9FNCtH3jGgNvZz8+cv+wEqDKspTiIODLhhuyiL3Ma3PFpSpg1U0CUwTeh+6GJTGEZT5HlMeojIHGYMK5z4gG922v01Ss5ZG09rVWr4g2BL9xKhAuNm98Hs6XeQs7lC+JjsqcOS1PN9uI3d7MJvk67SddbOhyX7u8hTWL8Br19dWX1yeI+4KIx40cV6WYXlp28w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RY0HV9QfPiyEdywGRsYoVAFvFRc9xPB6QMOi0ACMdoQ=;
 b=saDx739ecbYzBk1HJjaKJMKCt9Pq0yzpXCB3xRt7VksMNxykRKmUNnECE4OXE8eI/JCziK7F1IsUMrZ4P/1MtrV/pc9gBodtLvc7cANi83r6NgU/NLTByqm7WRa1hcvrp9F8NG6u2kl/2T/XRjnECfOWROJwKznahQm5ZSPZ3csRHJEle8hILYwY1xKpAQb07K5Thbd73+ZMB0saCKcgeSYr0SmKjcFkD1LCTYLVHlrmmvZ/7SGUy9dD1f3jiQeM0x3pB+j5tPY99AwGU8X87eqcaTj1WVP/JDZe2yz+R0c5sAIA8axvbPAiE8o6mfk9Wdvtjm632hmTpkVeD58Ecw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by CO1PR11MB5059.namprd11.prod.outlook.com (2603:10b6:303:9a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Tue, 11 Nov
 2025 04:52:14 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9298.015; Tue, 11 Nov 2025
 04:52:14 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 01/16] drm/i915/de: Implement register waits one way
Thread-Topic: [PATCH 01/16] drm/i915/de: Implement register waits one way
Thread-Index: AQHcUmdp+vWuW95WdUe/9ZxHRD2OZLTs6PKw
Date: Tue, 11 Nov 2025 04:52:14 +0000
Message-ID: <IA3PR11MB8937FA37642055E16322627AE3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
 <20251110172756.2132-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20251110172756.2132-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|CO1PR11MB5059:EE_
x-ms-office365-filtering-correlation-id: 116038cc-1114-41cf-a0b6-08de20de153b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?STBtNXVEeTBmemp2dkpoaytKT2FvdjRhTm9vd3JOd1FHaTRmMHlieVJCZFRi?=
 =?utf-8?B?WnhMMGVyTk04MmJrNzZFL0hRc0Vwb3l1NU1PeXYvbGFmV3V0cjJwc2JQRlJi?=
 =?utf-8?B?QW5oMVgzSUQzYXczUnNldWN0TnFOejNWUzlEc0hTak05SWR3a1EvYUpnZDFK?=
 =?utf-8?B?SkZQWERBcGNXbThxSmpoRVdRYURyakZqT2pIek16cmlhNmpRdFpuOTVweTRo?=
 =?utf-8?B?MDlNcmRQbGlYbWJxYVRkdkNiNjZrdStWWjNrNllwK3UzeFpud2xROFJaRUhC?=
 =?utf-8?B?cFVoQmRjcmtaclIyTzhJb2JGMkFpTktnZ1dibGFVeW1UYUNubXFwOVVGc2ww?=
 =?utf-8?B?U24wSGFwcVpqNGxtald2QkFnTXc1WnRZSHVuYTcrMjE0eHZwQlhUNmJBV1VE?=
 =?utf-8?B?MFk4dmdYU2Q2MU1OV0lnaytERWFSNFg2MDc4dkxNWE96WjloUEZSN0UrWEo2?=
 =?utf-8?B?VDh4SVRjUTdGTDVMTjFLb1BtVVRPa2RJbTdPMVRzWEtxbXkzRzJIVkZKY2Ro?=
 =?utf-8?B?Q2dGZjdtd3FxSHVPQ0xXUE94MnlBak9VZU8xWWhwZGNNVDhPdGNzREt4azUy?=
 =?utf-8?B?NGJQNmhYc0hGY0VrMW1rMXpGTTNhb2luWVBLa2VwWXdIdS9VcWgvQUVISkJ4?=
 =?utf-8?B?aEl4bUhhMkRUUmN4ZnpyVlpyZDNTMlEzRDFSd08wanVCTEYyTk9BcktpbXhQ?=
 =?utf-8?B?ZVpMM2I4SzAxK3FtOHJuQ1BNUGE4dzFBNWhJeStpWFdiZG5YV1hnRC9TYmpQ?=
 =?utf-8?B?VmpFeFRUYkVmNnduclRFZXcrb0pUb2ZqZHU3d0p0L3NiTjVjdm1DZUJWQW5o?=
 =?utf-8?B?VUhGT0xzZkhhSGJKTklRL25FUC9UUkxvRXRwL0I1QjVDc0lUTk5icEFVdnI2?=
 =?utf-8?B?VnBDcEloM0oveUJlSFhWL2RTenJ5U3l1Y2g3SnkxWTBzdWNOcC9uSzZ6czV2?=
 =?utf-8?B?S3VPNDc0WmY5Zm1tdWV5eHRlcG1xQXkyQ05FQXdhRERJZWlySVFRZzRGMmxy?=
 =?utf-8?B?cGZRZzRxZDhiU002WDRvTlZmY1l2QlQzVHlnOHZpTXI0UWVpQTE5S0FvSFZZ?=
 =?utf-8?B?MVkvTjVYK0RyS2RXb2pwK05ab0pGSDdzbnBTeThRQ3dWZHUyTVd2Qnl2eE4v?=
 =?utf-8?B?djIrZE44ZVpsY0k2L1VRbHZXK2ZyR1d3ZWRGcWVHZG1naXF3c283NTJHd2tS?=
 =?utf-8?B?cHk4TU1TR2E3alY4SXowa0l3Z1I5eVZ1eURaOHNPOGhNYkx0QjFkbXlGbVJ5?=
 =?utf-8?B?V1RvemFxVlFRb2FpZENIeUczeGxyL1dQdmtWVG5CUnRScERrUjZRU0sxTllO?=
 =?utf-8?B?dThtQWFOZjdlc2VLamdyTU8yejZGcmxOYnE4QU9aMlQvdHEyUU1CcG9VRkNy?=
 =?utf-8?B?Y1VsZ3NPQ2NuT2l1dkpWdHdmWG9hZUg2RFFmRjdYZnJvOXkyWHJMdzlXYlFr?=
 =?utf-8?B?Q2ovSG1nQ1Vqd0ZXKzAydUpBWmVWVm5tZXhoYTdnZU84cU83dWEzY0h2cktk?=
 =?utf-8?B?a1VjOVpJQ1kzeEhsYkZvNWh1d1VKVzBKbFI5SGVlSlVkdDFMUjVZZzdWak45?=
 =?utf-8?B?WVdUNVJpZHFsUWFHVFQ3S0VJOG0rbmF6ampjb0VYRHhQbWhjZEI2RHVVZWFt?=
 =?utf-8?B?T21SbGJLN3FiTUc4emczWFVQQWlFQVhHbGNPZlVONWVoWkJIY2R6cnREZ2lS?=
 =?utf-8?B?eTF5bnFwVTkwQzJlR3Zmajgza0N6cTZMc0lBZG12LzV0UCtJQ09lRFF5OU5h?=
 =?utf-8?B?Zm9ocFhjNnFxYUh2aGRwSHRReUgrbE4xRVRSN2IweHRJZjB6ZzVGNVJrcnpE?=
 =?utf-8?B?Unh4UHB6NS9vWU9zNENQZXNJQmgzOGd4NVpWME53eTFMNmlZSGNTQ3BhbWwy?=
 =?utf-8?B?dEhaSGdCdHRReVFIQmFPakc5S0g1ZFRmZTlVQnI5cHhXbXhzRTZpZzJvbWhB?=
 =?utf-8?B?TnZPWEdJMWJNbG55R2Q5NC90RkVVcUVIamUveGJ6RlUvdGl0ODhCNGRRNU1u?=
 =?utf-8?B?ZEhaUFlKNDlXSmFXamlSQy9PSnlQZ2hOOE5HSE0yUEVDZEs0dldPTWRRV1NG?=
 =?utf-8?Q?KEigRI?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NG53Tm1ESnRJTkdybUs2cjBybjRGSTY5RXFCWVQrTUprMTlaL2c2SmNZaE41?=
 =?utf-8?B?TnpQTWJFeXAycG5JMFBuRzE3OTVkVWxOdU0yU3l4R21OUmwzemZ1KzlqL0J5?=
 =?utf-8?B?TXIwVUpDelBoSnVGSEt4VlpvdHIydnhpSG9jajBMNnFCRGw0cEJiSFo3Qms4?=
 =?utf-8?B?ekJMVCtwdnk1MmorSzVKUEx1cFVob05OWWRGcFpQcm43RFhnRE5LRGhGUzRM?=
 =?utf-8?B?U0oyTGh3anZLdStWOEpoWWVYUWpobi9TbUJucERkY1lSR1RHSUUrU25NdE0x?=
 =?utf-8?B?RkJGMkYxWHN6UjRQMWFZU1JwSFRtUzB0bHNRUnpoV2w4cXM0dTRTYitzN21W?=
 =?utf-8?B?dHpiZW1WV0NRdHgyb2dWMlM1YkErNjA4NGZ3VW1MMVlMOWZWN0ZOeGVzNUFU?=
 =?utf-8?B?OW1rOXRJZ0dDY01peUlZN3RYK1RpYktxa0JsOXU1RklLWWlHRGJTSE90clJK?=
 =?utf-8?B?dk05WWdrbzRBWGwrdGkwQnNlTDRtb3RxMEhzU2JyQUsxNkI2NHZIWG5BR3Zh?=
 =?utf-8?B?YkRNTS92NUM4SWY3U1hCb0VjMFQ4QUVIRlpyUTZqblptb2luWFBoeENRZDBi?=
 =?utf-8?B?Z0liRUJDY2pkNHNNQm5LRTFaUUpZWVJBeEo3Q2dIMzNsWjRZOWlyRitySEty?=
 =?utf-8?B?RktkbFJVa3dxdHlIcEJOYXJOTUYyNFArRUd2bUkwQ1ArR2tKSERuMnF2MTBL?=
 =?utf-8?B?WmlNbjRVdGhQNENOVUsrdkZSUVRzdWxXWjZGWDg2UVB5ejFEV0FQWmJsM1hr?=
 =?utf-8?B?SHFodXRRY3VVVkxlRGdqQzV6Y05LREk1TGZDRGpFblZ5OFRxVFl0Tk03Q0F4?=
 =?utf-8?B?b0F1Z3ZZRnZPazcyT002RUNaOGdqazU1UkY2VW8rYy82WGpXWnAxRndvdGtp?=
 =?utf-8?B?YXk3YUM3bDBDL3FQWWNzZHZhbnJWVVprZTFyeGt6YlJXb0kvVXloVGFKMkdY?=
 =?utf-8?B?V1FDbmx4T0d2TkR0RWZVWjV2d012UVlrdnVZS3BEWXNBTmJubnVnM1pzNzlU?=
 =?utf-8?B?bmpMWEtSN0dJdEk4c3BDNWJRdlJNNkdKZ05NbXhWZ3RRV2pGckpVSDdISkcw?=
 =?utf-8?B?N3FsUGpnSEU2M1k3MjU3NVhxMHBZNyt0NXBsa2hPT0JDdjRFbGZBbHFrMlUw?=
 =?utf-8?B?eU9Ua0s3VTJMWkRiaWtKWmZWN3FaU3UwWjQ4K1JNd1I2ODE3K2xza25nem13?=
 =?utf-8?B?WUxqdHVYNXptcm91SHV4bXNHS2tHbkgxSFdRRmplcEhtZFdkTGxUWlRkTU5W?=
 =?utf-8?B?NjhFVkltQmJRanRycDc5OHlXZCtzUXkrNXJxQ1Z6NHdZWFJvTDhDb2k1eWll?=
 =?utf-8?B?RnpQaHpIWVByL2lFSkNwZmltY0R2aXFya3ZzZ2QyWERnOWFZcUE3UER3WVFJ?=
 =?utf-8?B?TEJNZmRhWmR0UzBjUllPWnlYT0V5eDZ1Rmc3MkpUQXo2TnV5L2V1UkJ5YlVP?=
 =?utf-8?B?Y3hBeTFSckpvWFB0bHlhVGtJelFoVXVsc1JJUzRPbkllU21zZnNIUndvQUw0?=
 =?utf-8?B?RGlEaVk5SlRWeFU1N0Nuby8wdFpka1cwdTROeEFjMUNYeldzVzVyZUxuOEkv?=
 =?utf-8?B?MjNHR1dJYUNrN2QxNmY4UzJJbTZjcnZCb0xJQmxpbndYcEtWUGxhbGYrV1p4?=
 =?utf-8?B?OWs1aVhTQ3M1ZWtPQk1ISWVtNHp4QmFYdm1yYWQ4YW52TUVlM2Q5SWlKRjBJ?=
 =?utf-8?B?bVdYbkdUV0xrZ0wvRE45UWJNQXRmeTg3a0R1VWZDcXRVS3FOdklsTWxkQ1pG?=
 =?utf-8?B?ZlBHNTkyR0pYcjJxN2hXelNwdUQ1WUtIVzcwRWxLSXp4K1M0RHkxQTZXMS9u?=
 =?utf-8?B?K0JDcGl3MlY1TlBJeVJYNXAweUVQUkxQRGlaSUYzRzdPTS9uWU9BRTRYTE1h?=
 =?utf-8?B?T1JzTTA5ekN6bDhqdlJYVzVnR1JaWUdzbk85aTJqM2hMRW5XZG9BclN6Wnox?=
 =?utf-8?B?MmNIblZKTVR6a1ptU2hCUHdNUG5SQUViVThEbVZPU2pUZUFBZ29hdVF3WVBD?=
 =?utf-8?B?bktUWU1BYnFIMGMwTkg3N0JDU3cra2FFWjVDSHNzUHJmMnB0RTdwQklzeGkv?=
 =?utf-8?B?dytERVUvanFoaUVhcjlQeEpYMEFqc1RVWFoxL3dLa0Y0TStBSVhxNGRhMm9Q?=
 =?utf-8?Q?51rDhOVmOATAc2T8u6/Z3jBfs?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 116038cc-1114-41cf-a0b6-08de20de153b
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2025 04:52:14.3724 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FU/ZzvDg4S6xYNaKvyLBtulIzttLkNMo+RU3U7bkuup9G9hXA3/3cRDUFxCJHS6B8dVSjfUxORpjqY/Iojba9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5059
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

PiBTdWJqZWN0OiBbUEFUQ0ggMDEvMTZdIGRybS9pOTE1L2RlOiBJbXBsZW1lbnQgcmVnaXN0ZXIg
d2FpdHMgb25lIHdheQ0KPiANCj4gDQo+IEN1cnJlbnRseSB3ZSB1c2UgYSBtZXNzeSBtaXggb2Yg
aW50ZWxfd2FpdF9mb3JfcmVnaXN0ZXIqKCkgYW5kDQo+IF9faW50ZWxfd2FpdF9mb3JfcmVnaXN0
ZXIqKCkgdG8gaW1wbGVtZW50IHZhcmlvdXMgcmVnaXN0ZXIgcG9sbGluZyBmdW5jdGlvbnMuDQo+
IE1ha2UgdGhlIG1lc3MgYSBiaXQgbW9yZSB1bmRlcnN0YW5kYWJsZSBieSBhbHdheXMgdXNpbmcg
dGhlDQo+IF9faW50ZWxfd2FpdF9mb3JfcmVnaXN0ZXIqKCkgc3R1ZmYuDQo+IA0KPiBTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
DQpMR1RNLA0KUmV2aWV3ZWQtYnk6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwu
Y29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZS5o
ICAgICAgIHwgMTcgKysrLS0tLS0tLQ0KPiAgLi4uL2RybS94ZS9jb21wYXQtaTkxNS1oZWFkZXJz
L2ludGVsX3VuY29yZS5oIHwgMzEgKysrKysrLS0tLS0tLS0tLS0tLQ0KPiAgMiBmaWxlcyBjaGFu
Z2VkLCAxNCBpbnNlcnRpb25zKCspLCAzNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RlLmgNCj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RlLmgNCj4gaW5kZXggOWVjZGNmNmI3M2U0Li5lYTk5
NzNkYmJmZmMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGUuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RlLmgN
Cj4gQEAgLTEwNCwxNSArMTA0LDYgQEAgaW50ZWxfZGVfcm13KHN0cnVjdCBpbnRlbF9kaXNwbGF5
ICpkaXNwbGF5LA0KPiBpOTE1X3JlZ190IHJlZywgdTMyIGNsZWFyLCB1MzIgc2V0KQ0KPiAgCXJl
dHVybiB2YWw7DQo+ICB9DQo+IA0KPiAtc3RhdGljIGlubGluZSBpbnQNCj4gLV9faW50ZWxfZGVf
d2FpdF9mb3JfcmVnaXN0ZXJfbm93bChzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4g
LQkJCQkgIGk5MTVfcmVnX3QgcmVnLA0KPiAtCQkJCSAgdTMyIG1hc2ssIHUzMiB2YWx1ZSwgdW5z
aWduZWQgaW50DQo+IHRpbWVvdXRfbXMpDQo+IC17DQo+IC0JcmV0dXJuIGludGVsX3dhaXRfZm9y
X3JlZ2lzdGVyKF9fdG9fdW5jb3JlKGRpc3BsYXkpLCByZWcsIG1hc2ssDQo+IC0JCQkJICAgICAg
IHZhbHVlLCB0aW1lb3V0X21zKTsNCj4gLX0NCj4gLQ0KPiAgc3RhdGljIGlubGluZSBpbnQNCj4g
IF9faW50ZWxfZGVfd2FpdF9mb3JfcmVnaXN0ZXJfYXRvbWljX25vd2woc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXksDQo+ICAJCQkJCSBpOTE1X3JlZ190IHJlZywNCj4gQEAgLTEzMSw4ICsx
MjIsOCBAQCBpbnRlbF9kZV93YWl0KHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LCBpOTE1
X3JlZ190DQo+IHJlZywNCj4gDQo+ICAJaW50ZWxfZG1jX3dsX2dldChkaXNwbGF5LCByZWcpOw0K
PiANCj4gLQlyZXQgPSBfX2ludGVsX2RlX3dhaXRfZm9yX3JlZ2lzdGVyX25vd2woZGlzcGxheSwg
cmVnLCBtYXNrLCB2YWx1ZSwNCj4gLQkJCQkJCXRpbWVvdXRfbXMpOw0KPiArCXJldCA9IF9faW50
ZWxfd2FpdF9mb3JfcmVnaXN0ZXIoX190b191bmNvcmUoZGlzcGxheSksIHJlZywgbWFzaywNCj4g
KwkJCQkJdmFsdWUsIDIsIHRpbWVvdXRfbXMsIE5VTEwpOw0KPiANCj4gIAlpbnRlbF9kbWNfd2xf
cHV0KGRpc3BsYXksIHJlZyk7DQo+IA0KPiBAQCAtMTQ3LDggKzEzOCw4IEBAIGludGVsX2RlX3dh
aXRfZncoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+IGk5MTVfcmVnX3QgcmVnLA0K
PiANCj4gIAlpbnRlbF9kbWNfd2xfZ2V0KGRpc3BsYXksIHJlZyk7DQo+IA0KPiAtCXJldCA9IGlu
dGVsX3dhaXRfZm9yX3JlZ2lzdGVyX2Z3KF9fdG9fdW5jb3JlKGRpc3BsYXkpLCByZWcsIG1hc2ss
DQo+IC0JCQkJCSB2YWx1ZSwgdGltZW91dF9tcywgb3V0X3ZhbHVlKTsNCj4gKwlyZXQgPSBfX2lu
dGVsX3dhaXRfZm9yX3JlZ2lzdGVyX2Z3KF9fdG9fdW5jb3JlKGRpc3BsYXkpLCByZWcsIG1hc2ss
DQo+ICsJCQkJCSAgIHZhbHVlLCAyLCB0aW1lb3V0X21zLCBvdXRfdmFsdWUpOw0KPiANCj4gIAlp
bnRlbF9kbWNfd2xfcHV0KGRpc3BsYXksIHJlZyk7DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL3hlL2NvbXBhdC1pOTE1LWhlYWRlcnMvaW50ZWxfdW5jb3JlLmgNCj4gYi9kcml2
ZXJzL2dwdS9kcm0veGUvY29tcGF0LWk5MTUtaGVhZGVycy9pbnRlbF91bmNvcmUuaA0KPiBpbmRl
eCBkMDEyZjAyYmM4NGYuLmQ5M2RkYWNkZjc0MyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL3hlL2NvbXBhdC1pOTE1LWhlYWRlcnMvaW50ZWxfdW5jb3JlLmgNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL3hlL2NvbXBhdC1pOTE1LWhlYWRlcnMvaW50ZWxfdW5jb3JlLmgNCj4gQEAgLTkx
LDI3ICs5MSw2IEBAIHN0YXRpYyBpbmxpbmUgdTMyIGludGVsX3VuY29yZV9ybXcoc3RydWN0IGlu
dGVsX3VuY29yZQ0KPiAqdW5jb3JlLA0KPiAgCXJldHVybiB4ZV9tbWlvX3JtdzMyKF9fY29tcGF0
X3VuY29yZV90b19tbWlvKHVuY29yZSksIHJlZywNCj4gY2xlYXIsIHNldCk7ICB9DQo+IA0KPiAt
c3RhdGljIGlubGluZSBpbnQgaW50ZWxfd2FpdF9mb3JfcmVnaXN0ZXIoc3RydWN0IGludGVsX3Vu
Y29yZSAqdW5jb3JlLA0KPiAtCQkJCQkgIGk5MTVfcmVnX3QgaTkxNV9yZWcsIHUzMiBtYXNrLA0K
PiAtCQkJCQkgIHUzMiB2YWx1ZSwgdW5zaWduZWQgaW50IHRpbWVvdXQpDQo+IC17DQo+IC0Jc3Ry
dWN0IHhlX3JlZyByZWcgPSBYRV9SRUcoaTkxNV9tbWlvX3JlZ19vZmZzZXQoaTkxNV9yZWcpKTsN
Cj4gLQ0KPiAtCXJldHVybiB4ZV9tbWlvX3dhaXQzMihfX2NvbXBhdF91bmNvcmVfdG9fbW1pbyh1
bmNvcmUpLCByZWcsDQo+IG1hc2ssIHZhbHVlLA0KPiAtCQkJICAgICAgdGltZW91dCAqIFVTRUNf
UEVSX01TRUMsIE5VTEwsIGZhbHNlKTsNCj4gLX0NCj4gLQ0KPiAtc3RhdGljIGlubGluZSBpbnQg
aW50ZWxfd2FpdF9mb3JfcmVnaXN0ZXJfZncoc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlLA0K
PiAtCQkJCQkgICAgIGk5MTVfcmVnX3QgaTkxNV9yZWcsIHUzMiBtYXNrLA0KPiAtCQkJCQkgICAg
IHUzMiB2YWx1ZSwgdW5zaWduZWQgaW50IHRpbWVvdXQsDQo+IC0JCQkJCSAgICAgdTMyICpvdXRf
dmFsdWUpDQo+IC17DQo+IC0Jc3RydWN0IHhlX3JlZyByZWcgPSBYRV9SRUcoaTkxNV9tbWlvX3Jl
Z19vZmZzZXQoaTkxNV9yZWcpKTsNCj4gLQ0KPiAtCXJldHVybiB4ZV9tbWlvX3dhaXQzMihfX2Nv
bXBhdF91bmNvcmVfdG9fbW1pbyh1bmNvcmUpLCByZWcsDQo+IG1hc2ssIHZhbHVlLA0KPiAtCQkJ
ICAgICAgdGltZW91dCAqIFVTRUNfUEVSX01TRUMsIG91dF92YWx1ZSwgZmFsc2UpOw0KPiAtfQ0K
PiAtDQo+ICBzdGF0aWMgaW5saW5lIGludA0KPiAgX19pbnRlbF93YWl0X2Zvcl9yZWdpc3Rlcihz
dHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUsIGk5MTVfcmVnX3QgaTkxNV9yZWcsDQo+ICAJCQkg
IHUzMiBtYXNrLCB1MzIgdmFsdWUsIHVuc2lnbmVkIGludCBmYXN0X3RpbWVvdXRfdXMsDQo+IEBA
IC0xMzMsNiArMTEyLDE2IEBAIF9faW50ZWxfd2FpdF9mb3JfcmVnaXN0ZXIoc3RydWN0IGludGVs
X3VuY29yZQ0KPiAqdW5jb3JlLCBpOTE1X3JlZ190IGk5MTVfcmVnLA0KPiAgCQkJICAgICAgb3V0
X3ZhbHVlLCBhdG9taWMpOw0KPiAgfQ0KPiANCj4gK3N0YXRpYyBpbmxpbmUgaW50DQo+ICtfX2lu
dGVsX3dhaXRfZm9yX3JlZ2lzdGVyX2Z3KHN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSwgaTkx
NV9yZWdfdA0KPiBpOTE1X3JlZywNCj4gKwkJCSAgICAgdTMyIG1hc2ssIHUzMiB2YWx1ZSwgdW5z
aWduZWQgaW50IGZhc3RfdGltZW91dF91cywNCj4gKwkJCSAgICAgdW5zaWduZWQgaW50IHNsb3df
dGltZW91dF9tcywgdTMyICpvdXRfdmFsdWUpIHsNCj4gKwlyZXR1cm4gX19pbnRlbF93YWl0X2Zv
cl9yZWdpc3Rlcih1bmNvcmUsIGk5MTVfcmVnLCBtYXNrLCB2YWx1ZSwNCj4gKwkJCQkJIGZhc3Rf
dGltZW91dF91cywgc2xvd190aW1lb3V0X21zLA0KPiArCQkJCQkgb3V0X3ZhbHVlKTsNCj4gK30N
Cj4gKw0KPiAgc3RhdGljIGlubGluZSB1MzIgaW50ZWxfdW5jb3JlX3JlYWRfZncoc3RydWN0IGlu
dGVsX3VuY29yZSAqdW5jb3JlLA0KPiAgCQkJCSAgICAgICBpOTE1X3JlZ190IGk5MTVfcmVnKQ0K
PiAgew0KPiAtLQ0KPiAyLjQ5LjENCg0K
