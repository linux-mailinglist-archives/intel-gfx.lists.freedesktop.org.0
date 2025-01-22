Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE62AA18B71
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 06:53:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E99610E66E;
	Wed, 22 Jan 2025 05:53:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LIsfxziw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5192310E66C;
 Wed, 22 Jan 2025 05:53:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737525213; x=1769061213;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=QHTbMYxbd7f1t6bdlxtI5nDsGxUawKrCUKaQTTq7cXo=;
 b=LIsfxziwJWX+WUgxa6MrgzNC+aqvl8YsdSQDAM/EXt3nvxQSxfWLjGjo
 ntBg5aMkrU2FAzwuSvJ38n2N3hyxFqK1oPGmk0EUO8jbD3ajeb20YUC5y
 dFh6UIFrsQQMaTAgQvj6iktOQDf7d/heZ6m/Bl2A1i6MzsQLHbVSBx1Nd
 27x4b/2bOr6b3u0mZKZnP/F3p4tBGFFqPo/NMOX7Ci6qIXeQcdgMse6L2
 NiNlmB3OUjO0+ZRL4GUOMcdv3xv8WIJCSKhUtcttqL0+s8P6ArUt+Bg3k
 62Zr1h4Wbe38Y4iuNJuHzZojSCR3zra+VB/JBNS9K6YNzPi4DxFjF8vTK Q==;
X-CSE-ConnectionGUID: KF/HCNKXRzmJRxuFkaClIg==
X-CSE-MsgGUID: iOiP3AHUTN2EGynPD3i5pQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="38067407"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="38067407"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2025 21:53:32 -0800
X-CSE-ConnectionGUID: wNnLpg5cSrO+SpQbTOa4nA==
X-CSE-MsgGUID: iJoOUD5iRIupmexOzUkahw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,224,1732608000"; d="scan'208";a="107057438"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Jan 2025 21:53:32 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 21 Jan 2025 21:53:31 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 21 Jan 2025 21:53:31 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 21 Jan 2025 21:53:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J4l4tNVFs14yTagV5RCjGvJX7s9FxMhCbXIDKXSHbdwsAU5y6yghnuiIGALe0T4NfHh93f+qEcmgfyUXhu8Ld7Q78hZQDlufC1reHZ0HKR/LtT3ncRUSiIbxTdxhZU2uq43OU20rtU/rfx12end5dW/w3sODRDiPDDc2fwQdzWWBugPujEVUJAypXkctjnK0kTjy/866LBsA7KR9B7PzQWkMAi9FTAmNM+WJUesEWHKZj8nEVlwvMwBNauvcUfqgFrC+Rq0jQjLzPSuB9LSwNssPqRWDXZAHFhIUemzQ2yxhFlEIOR4+Bhca3mwMmdKlm9hVutY2hMAEMNaps8hk+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QHTbMYxbd7f1t6bdlxtI5nDsGxUawKrCUKaQTTq7cXo=;
 b=HNbvJVMOXzBlMxxklMe0pWH+PsSC6Wc0U7fdP6iZCXazPSV2JLtaQxVMFO6RLaWqTV9zCvOz5RwZufi2Hik9nhSxgdBWhWEvmQsm6E45+B8bNn1f448AGkwyN+GOQ80vyHzvlUC8qXCfcH/+Oz0eS1hVntxLiY6MTsfgkCTvbz9FJIIu420CaQaFzJuqWIN6GWh33FgDDGsQW6yJjk3TGllFLLwc3Gmoge9P7ufRcwUilGJ4TD0z/Mz0O0/mvQARtx2ZW1CmG/mQKT4nvAb8GFEke7OkWmLMEM+oPqDLiSYe+J0lDilDxtfEJpjJNFNfSRFHMHfuBBVkw6umQB+kCQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA1PR11MB8593.namprd11.prod.outlook.com (2603:10b6:806:3ab::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Wed, 22 Jan
 2025 05:53:29 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%7]) with mapi id 15.20.8356.020; Wed, 22 Jan 2025
 05:53:29 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 10/10] drm/i915/psr: Allow DSB usage when PSR is enabled
Thread-Topic: [PATCH v3 10/10] drm/i915/psr: Allow DSB usage when PSR is
 enabled
Thread-Index: AQHbYmicUVMqJDBACEK/KcKt7SOrMrMbdaCAgAAurICAA7DKgIAAeEsAgAFMewCAAE7nAIAA9lWA
Date: Wed, 22 Jan 2025 05:53:29 +0000
Message-ID: <97feca4cf244f76ce35d8d3e9e702b9141ef3a23.camel@intel.com>
References: <20250109073137.1977494-1-jouni.hogander@intel.com>
 <20250109073137.1977494-11-jouni.hogander@intel.com>
 <Z4q7ge2MMHAmDvNJ@intel.com> <Z4rip_oW6n7HxsN_@intel.com>
 <432d2de82fe7696193e37af7079b48149ab24340.camel@intel.com>
 <Z45gHGoV2RiWK7D_@intel.com>
 <cf5315fe0475ce61aab49cbc4eaaf922336018be.camel@intel.com>
 <Z4-5NKUlZdlGioN8@intel.com>
In-Reply-To: <Z4-5NKUlZdlGioN8@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA1PR11MB8593:EE_
x-ms-office365-filtering-correlation-id: 395514e1-2428-49c2-6390-08dd3aa91899
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?VWdrSHJPU1Nvbk5vWVg5cDIrM2NYdHJtMS91Y3lGSjVzREdtbUcrdnBjS2Q1?=
 =?utf-8?B?dDNIYTMyOXkxSktnYVhsRGRSZU1oOUk0cE9TWitucCtDMHg1QXgvWEFMOGZs?=
 =?utf-8?B?KzRPKzNGcmZzT2Q1eklFRmlSZDlTN1Jka2R0eWRHa3NyMVA0OXg2aHhjOXc2?=
 =?utf-8?B?OVVUeEVnVDd4N0NpcnJnbHU0QTlWU0xuS2ZDMXRaejRqUkI3dy9MdXFvczdw?=
 =?utf-8?B?cnBaSk9oa3NyWmlzeUFJZVBBb2lWd3Z2UXB3SnRpVHlHOE53QzdBVDAyMVlG?=
 =?utf-8?B?cEs2Rk9GRjFPeDN0V2tXeXUwVWFqdis1S1pNVlhyVkloOWo0S01hOGJkK0c4?=
 =?utf-8?B?YmZnUWNrT2tKNmxrRGRtZG1tck9IWm9QejJpZmNRR2tGL1ZBd1V0WkE0MnF6?=
 =?utf-8?B?TnNyaXpQSTMxSnluOE5qM1UyZWlzM3lxbEZGWGRjR1JMMWNrWjM4RXkvT24x?=
 =?utf-8?B?T09Ca0JmRHVmWFVwMDFEZEZ3NWhpOVJlRlJkMkJLZlZnRHhrVGVOcU52WXQ3?=
 =?utf-8?B?b1d0anRPamJJREtrZ1hxOXFSUlVURHVIazZPQXM5Z0tmTVBHeDVZVVpXYjZZ?=
 =?utf-8?B?c3R5TENNSmlPT0lqbUZlRlk4NjBrYi9NVWtXcllUTzh0NlYrRWgrc3oxbVlN?=
 =?utf-8?B?V1B0Rkk5RFQwQnZ0RzRuQXFzOEdpSjJTUytvbzB1Q01pMHg4cFRSOFE4YXZv?=
 =?utf-8?B?VzlsVTU0SGJ2a044dFY3U05SWFVZU1FaRWNTMjVyS2krZVgxaGFKbjZrWStY?=
 =?utf-8?B?MVlsQzN4VWorWWE1d244bkU0ZnNVMVRUYkVmYmp4dlRVSTlQZk1KUnlLT3FY?=
 =?utf-8?B?WnpqU3FoN2s2QmNCY1RnTzV5dnNuY2xJdWF4VWFhZlE2aDcyRjBDS3gwYi9K?=
 =?utf-8?B?QWVBLytjZ1JwU2VjTGtJWmtrQ0pzbzU2UXBrS1JJb29mM1IvSzlIQ21TOUwx?=
 =?utf-8?B?VjhjOXVwQU5WMSs0U0w5Ty9YbWJkbC94QzdFZWkzOUdESXZBZFl5TE1MdU9h?=
 =?utf-8?B?MmF4bmtNQmxsSGMrZzJRM0prc0xLajF3SlNjdTNrN1NHUkRYNGtYRVVDMU11?=
 =?utf-8?B?R0Irbmd3RW5WL2xGWXJibDZDQ3hya2Rmbm82dEYzNlB5VzVOR1JlL3g1bWQv?=
 =?utf-8?B?ejUzRFMwa2VBYW5jVTdxQTEvRU1Sd0s5ZFA5bTZ5VFNPUm40Z1NMUzRMaWpq?=
 =?utf-8?B?Y2ZKOVBqUTQxdmRQRUMxR3UrS0hoc0xDTzNwSjNNcXFMVEVpbjV2dENVdFNS?=
 =?utf-8?B?V2xXZXdyQS9hc1ltZldrdGhPUWovNmFCVmI5M2dSSUlSMVlWSnowT2JXc0s4?=
 =?utf-8?B?WFlzSWQrMWNIeEJtK3lsZWpYMEpWV2JtZ1NndVpOb3FNYUdnb1BJWFNoMW9V?=
 =?utf-8?B?d1daV011Q3E2K0pxY2c5SkIzM3E2QURNelJFSnpsYitYVDFzcDM1T1k0SnFu?=
 =?utf-8?B?dUJhazVIRTNIQmFDUDlrUXA3cVFNR010V3Y0ZWMvM1RoUnBPQ0l3ajhtV1Fz?=
 =?utf-8?B?Sjh3Y3RVQnJkcmtkVmN4Z2g3ZlYwdnFLSjdhOWk0R0JmRTNZRlNhS0VRRitn?=
 =?utf-8?B?eXd1UzZQU0hlL3IrQ0I2NDNQSGdXcExVTDUyVWo0WEpVR3RCSXJEZVovdndZ?=
 =?utf-8?B?c2prVWlHeUtDNUNTTndnLzdWUHhwcHpBQ3NyRENDZHYxUm0yNm5NbFNFMHEr?=
 =?utf-8?B?blBIdHozc29PZTMyOGdLRGNna1ZoOS9VbktvSmQ0QTl3YTIwTzlFRGFMVHJP?=
 =?utf-8?B?aEg0Y3k4bmZ0MG03aUNyTEJ1Z2NmYXlVdnBSSDJGdkNVS2s1STJoaXIxY1Z4?=
 =?utf-8?B?TGsrcFk2WUoydExGK0JHaG5nV2s5Z2NudUR6eXVGYVdqS3VGUDFKQXc0dkJy?=
 =?utf-8?B?NXg4d21McGtrUjNIbEx3QS9NdzdlT253ZjV4a2xDdWNmekE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a0ZFaUFDN3pqYnF0WXdEOVRQRWx5eFNCbndaWkIrNXIvYlFQcXNoWVRHWnRT?=
 =?utf-8?B?QVh3MVg5WDJ6ZEVhdHdZYzBqeHlBNmJZc0tScWtTUVZUdng1b0pIYlB4Ny9i?=
 =?utf-8?B?NldTUHRGTzR6dGVTall5NGZ6Nkk3dlpPVWtxUVRpNW5zcml2Sk84WmtTMXJl?=
 =?utf-8?B?K3pOdXliUmI2SExyY0VIUGdIK29DN1BkSmRvL0t4UWdpWGV1ZjRwU0JRRlRv?=
 =?utf-8?B?cVhRQ3VINlVTS1I1T1FxRTdkZ2tMazNRQTJtWm9mWDYyTFhNNDBMZTR4R2ds?=
 =?utf-8?B?NHJYdzZjSGxxQlNXSmM0ckluUTBxMStmTHp1THpHNlliMW9wRE9hVnNvd3JU?=
 =?utf-8?B?ZFRLMDlCYTZHNmloY0haa1RSV3RlWGx4Vks2WnRaSEdVaUIxcThzVGZjelV0?=
 =?utf-8?B?eDNGUkhZdEt2WmlYbWdSdDZoWEl5ZHVFNXRrRlVyRHR6Q1Z4L202UjhVOXNC?=
 =?utf-8?B?SjQ4MFpxZGJDQXloendPTE9lZG5BZTlEOGZKbmVhSkVKS3NnQmxxUnNaeWZZ?=
 =?utf-8?B?eHFEYUFFZ2oraExQWFFUMmdhd0dlM08xM1ZtTlB3OWEvZTFYNzJSVkZYcjVH?=
 =?utf-8?B?VUFNUm5kQ3piejZsR25tWDlEYi9ZVFlMeWVLN1pwRkxsR08xeVRUMksyUUdX?=
 =?utf-8?B?TXQ5eGdzV0NNVytWSm1aVEVyRnNaUGsyVDl4bUF0UzZkdzU5aGtBc292QjBu?=
 =?utf-8?B?Ui9XN0QrQjNpT1VETzlnMEUxdlEzbTZpektORlFaRGNHYW03MG1qZXpYRm92?=
 =?utf-8?B?RU1BYVhRakV4bHNFN0pNVjZHWk5PQVRhTGlGM2c4YU5mTytBSTNJVDEvTzR3?=
 =?utf-8?B?blY3YVlVbWMvazRQQzhLRnlDMWhkM0hCWTZIUkVtMXh5MG1ocEM3VEFYZnBK?=
 =?utf-8?B?WHVFU3BGcDMxTktnQW5JcGtHcXk5Y1lpU3FHUlNET3RqTXNDWWNvRG5QSnNv?=
 =?utf-8?B?T3VhSUNsRVVpOW9mUDdnYTdPcjU2blhCWmZnMGdqbXlSSERwdVNISGtsWjBZ?=
 =?utf-8?B?WWpKZ2JBSTQxdmRhWk5MWDhsRWlVdThrZS90d1lSVGFad0RibDdHbWdORXZa?=
 =?utf-8?B?RHpON2VMaXJHYWxsVVNTVnVnU1ZJcnVYZ0pxMEQrQW4wNDA1SkxYUXZ5V0Vt?=
 =?utf-8?B?YkJFdGFmZXdBM213RVl5WGFVdmpmYTBtNUQ4VjlUUDBYR1ZXMjlRNHpBS1Fk?=
 =?utf-8?B?SDJqNFpOcG5XdmdSV1lJY1NXN2NxKzQ4NWZ0NGN3ZkRDMmRqKzFKNDZaR1Vs?=
 =?utf-8?B?TDhEZDlFWjBtV2plR0N1RWJUSzZIaG9YNGpUR0ZWU0NKM0N2WUg3QkV6T1gv?=
 =?utf-8?B?czBSZllvUU5uMXR0NmdEaTRXcW9pVjlwVVVjcGI0R2xtYUVGci9DQjRPdWVw?=
 =?utf-8?B?M0hPcEFadFNUSlNRb2lPYkJhckEvUnE3WExRQ0dwN0ZTcUs5ZjdWNGorQ2xH?=
 =?utf-8?B?WW1TRTFrVGNrOTZxZWdoQWM0dHgyY0V6Rk92TE96U1Z3VTFud0p6RStHbnh0?=
 =?utf-8?B?aFVqdG5JcE9KTmRqQ25wWTdUZWJCVkc3OVh1Mnh0VTNrL011NlV3WDVEbkRK?=
 =?utf-8?B?WDI3YXFIRUFsdjYzWktzNVZlKzVoaVhqREIrcnBIN2tuVkgzWUpRZkd3Y0pJ?=
 =?utf-8?B?N2xhUjd3NWlRNTZJN1F2YkNrY3ZGRWk2UVRxRmFadmVDL2RFVzdGeEpXU0Zu?=
 =?utf-8?B?d1BWWHIyV1kvOHdXK2pPZ3F5b2REUUNTb3dndm5EWjFZb29LR1Eyb3p5VTJM?=
 =?utf-8?B?bCs5dzEyMWZMalNrTnJUc1hOZXhKV0tOQWtTMmUyWkRudTBQampDVVVaQ2xo?=
 =?utf-8?B?ZUUrbGpPQUwvdHZlSWphRTFXYUhMczIzQTdEK3R4d3pMRDlzVzBOYkpUN1lG?=
 =?utf-8?B?UHpnMTBVc2laVXBrWXZoVElhMlU0ZCs4M1huSkZzRjRGUnZCV3FBWDdFek1K?=
 =?utf-8?B?NG1pVkpjb0doYnFYWVczTzZTNGZENXk4QVJoaXoxSDFoM1VTUzlDczNjTWFY?=
 =?utf-8?B?YVIyTW5rRXl0WDJyWXFKMWFWaldBdnFEUnA0cUMxTFRrV1cvZUR6YW8yZ284?=
 =?utf-8?B?K2xmeDR6SWVET05hY1dIVzFlT0ZnQWpGK2UzN2VKbDl0d3ZCY3RTWDl1OFdG?=
 =?utf-8?B?clRpQTR3TXBxRXlVdHBVQk0rbWt2eEVaK0dSQWJyMU12YmtsUklWZGk4WkdC?=
 =?utf-8?B?ZjFBcG9wWVhoRWJEcmd6VTdkK2Z0TTZ1cHFTQzRtU1VjTUpNL0VlMm5GWklh?=
 =?utf-8?B?Z3AyaUFpMEFsdXhiTDlPWUorc1dRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <AABC4ACCF7444D43BD17E347ACEF78CB@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 395514e1-2428-49c2-6390-08dd3aa91899
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2025 05:53:29.2937 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: edOl9oEwGN1I7G9auaMKWLWI7Xfay7x0SvNxOHKuLhMSbGhJYqCS3j90Gf5Ngf/XwqFVFYr2exlzCocWr650gvyaHcnOgvuauEeoiDZhd8c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8593
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

T24gVHVlLCAyMDI1LTAxLTIxIGF0IDE3OjExICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFR1ZSwgSmFuIDIxLCAyMDI1IGF0IDEwOjI5OjI1QU0gKzAwMDAsIEhvZ2FuZGVyLCBK
b3VuaSB3cm90ZToNCj4gPiBPbiBNb24sIDIwMjUtMDEtMjAgYXQgMTY6MzkgKzAyMDAsIFZpbGxl
IFN5cmrDpGzDpCB3cm90ZToNCj4gPiA+IE9uIE1vbiwgSmFuIDIwLCAyMDI1IGF0IDA3OjI4OjUy
QU0gKzAwMDAsIEhvZ2FuZGVyLCBKb3VuaSB3cm90ZToNCj4gPiA+ID4gT24gU2F0LCAyMDI1LTAx
LTE4IGF0IDAxOjA3ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6DQo+ID4gPiA+ID4gT24g
RnJpLCBKYW4gMTcsIDIwMjUgYXQgMTA6MjA6MTdQTSArMDIwMCwgVmlsbGUgU3lyasOkbMOkDQo+
ID4gPiA+ID4gd3JvdGU6DQo+ID4gPiA+ID4gPiBPbiBUaHUsIEphbiAwOSwgMjAyNSBhdCAwOToz
MTozN0FNICswMjAwLCBKb3VuaSBIw7ZnYW5kZXINCj4gPiA+ID4gPiA+IHdyb3RlOg0KPiA+ID4g
PiA+ID4gPiBOb3cgYXMgd2UgaGF2ZSBjb3JyZWN0IFBTUjJfTUFOX1RSS19DVEwgaGFuZGxpbmcg
aW4gcGxhY2UNCj4gPiA+ID4gPiA+ID4gd2UNCj4gPiA+ID4gPiA+ID4gY2FuDQo+ID4gPiA+ID4g
PiA+IGFsbG93IERTQg0KPiA+ID4gPiA+ID4gPiB1c2FnZSBhbHNvIHdoZW4gUFNSIGlzIGVuYWJs
ZWQgZm9yIEx1bmFyTGFrZSBvbndhcmRzLg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBXZSBz
ZWVtIHRvIHN0aWxsIGxhY2sgYW4gYW5zd2VyIGFzIHRvIHdoZW4gdGhlIFBTUiB3YWtlcywNCj4g
PiA+ID4gPiA+IHdoZW4NCj4gPiA+ID4gPiA+IGl0DQo+ID4gPiA+ID4gPiBsYXRjaGVzIHRoZSB1
cGRhdGUsIGFuZCBob3cgZG9lcyBhbGwgdGhhdCBndWFyYW50ZWUgdGhhdA0KPiA+ID4gPiA+ID4g
dGhlDQo+ID4gPiA+ID4gPiBEU0INCj4gPiA+ID4gPiA+IGludGVycnVwdCBmaXJlcyBhZnRlciB0
aGUgdXBkYXRlIGhhcyBiZWVuIGxhdGNoZWQ/DQo+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+IFNv
bWUgdGhvdWdodHMgYXMgdG8gaG93IHRvIGZpZ3VyZSB0aGlzIG91dDoNCj4gPiA+ID4gPiA+IDEu
IG1ha2Ugc3VyZSB3ZSdyZSBpbiBQU1INCj4gPiA+ID4gPiA+IDIuIHNhbXBsZSBUSU1FU1RBTVBf
Q1RSDQo+ID4gPiA+ID4gPiAzLiBzdGFydCBEU0IgaW4gd2hpY2gNCj4gPiA+ID4gPiA+IMKgwqAg
d3JpdGUgUExBTkVfU1VSRiB3aXRoIGEgbmV3IHZhbHVlDQo+ID4gPiA+ID4gPiDCoMKgIHNlbmQg
cHVzaA0KPiA+ID4gPiA+ID4gwqDCoCB3YWl0IGZvciB2YmxhbmsNCj4gPiA+ID4gPiA+IMKgwqAg
cG9sbCBQTEFORV9TVVJGTElWRSA9PSBuZXcgdmFsdWUNCj4gPiA+ID4gPiA+IMKgwqAgZmlyZSBp
bnRlcnJ1cHQNCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gaW4gdGhlIGludGVycnVwdCBoYW5k
bGVyOg0KPiA+ID4gPiA+ID4gwqBzYW1wbGUgVElNRVNUQU1QX0NUUiBhZ2Fpbg0KPiA+ID4gPiA+
ID4gDQo+ID4gPiA+ID4gPiBBbmQgdGhlbiBjb21wYXJlIGZsaXAgdGltZXN0bWFwIHZzLiBmcmFt
ZSB0aW1lc3RhbXAgdnMuIHRoZQ0KPiA+ID4gPiA+ID4gbWFudWFsbHkgc2FtcGxlZCB0aW1lc3Rh
bXBzLiBBbmQgdGhlbiByZXBlYXQgd2l0aG91dCB0aGUNCj4gPiA+ID4gPiA+IFNVUkZMSVZFDQo+
ID4gPiA+ID4gPiBwb2xsIHRvIG1ha2Ugc3VyZSBub3RoaW5nIGhhcyBjaGFuZ2VkLiBZb3UnbGwg
bmVlZCB0byBiZQ0KPiA+ID4gPiA+ID4gY2FyZWZ1bA0KPiA+ID4gPiA+ID4gdG8gbWFrZSBzdXJl
IGl0IHdpbGwgYWN0dWFsbHkgcG9sbCBmb3IgbG9uZyBlbm91Z2ggdG8gbWFrZQ0KPiA+ID4gPiA+
ID4gYQ0KPiA+ID4gPiA+ID4gcmVhbA0KPiA+ID4gPiA+ID4gZGlmZmVyZW5jZSAoaWYgdGhlIHBv
bGwgYWN0dWFsbCBpcyBuZWVkZWQpLCBidXQgdHdlYWtpbmcNCj4gPiA+ID4gPiA+IHRoZQ0KPiA+
ID4gPiA+ID4gcG9sbA0KPiA+ID4gPiA+ID4gaW50ZXJ2YWwrY291bnQgc3VpdGFibHkuIEkgZG9u
J3QgcmVtZWJlciB3aGF0IHRoZSBtYXggcG9sbA0KPiA+ID4gPiA+ID4gY291bnQgd2FzLCBidXQg
SUlSQyBpdCB3YXNuJ3QgdG9vIGhpZ2ggc28gdGhlIGR1cmF0aW9uIHdpbGwNCj4gPiA+ID4gPiA+
IGhhdmUNCj4gPiA+ID4gPiA+IHRvIGdldCBidW1wZWQgZm9yIGxvbmcgcG9sbHMuDQo+ID4gPiA+
ID4gPiANCj4gPiA+ID4gPiA+IEkgZ3Vlc3Mgb25lIGNvdWxkIGFsc28gdHJ5IHRvIHBvbGwgZm9y
IHRoZSBhY3R1YWwgUFNSDQo+ID4gPiA+ID4gPiBzdGF0dXMsDQo+ID4gPiA+ID4gPiBidXQgZHVu
bm8gaG93IHdlbGwgdGhhdCdsbCB3b3JrLg0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBBbmQg
d2UgY291bGQgYWxzbyB0cnkgdG8gY29tZSB1cCB3aXRoIGRpZmZlcmVudCBpZGVhcyBvbg0KPiA+
ID4gPiA+ID4gd2hlcmUNCj4gPiA+ID4gPiA+IHRvIHNhbXBsZSB0aW1lc3RhbXBzLiBVbmZvcnR1
bmF0ZWx5IHdlIG9ubHkgaGF2ZSB0aGUgc2luZ2xlDQo+ID4gPiA+ID4gPiBwaXBlIGZsaXAgdGlt
ZXN0YW1wIHJlZ2lzdGVyIHNvIHdlIGNhbiBvbmx5IHNhbXBsZSBvbmUNCj4gPiA+ID4gPiA+IHRp
bWVzdGFtcA0KPiA+ID4gPiA+ID4gZnJvbSB0aGUgRFNCIGl0c2VsZiBwZXIgZnJhbWUuIElmIHdl
IGhhZCBtb3JlIHdlIGNvdWxkIG11Y2gNCj4gPiA+ID4gPiA+IG1vcmUNCj4gPiA+ID4gPiA+IGVh
c2lseSBmaWd1cmUgdGhpbmdzIG91dCA6Lw0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiBJIHB1
c2hlZCBteSBsYXRlc3QgRFNCIHNlbGZ0ZXN0IHN0dWZmIHRvDQo+ID4gPiA+ID4gPiBodHRwczov
L2dpdGh1Yi5jb20vdnN5cmphbGEvbGludXguZ2l0wqBkc2Jfc2VsZnRlc3RzXzcNCj4gPiA+ID4g
PiA+IHdoaWNoIGhhcyBhIGJ1bmNoIG9mIHN0dWZmIGZvciB0aGlzIGtpbmQgb2YNCj4gPiA+ID4g
PiA+IGV4cGVyaW1lbnRhdGlvbi4NCj4gPiA+ID4gPiA+IEl0J3MgaW4gYSBzb21ld2hhdCBzb3Jy
eSBzdGF0ZSBhdCB0aGUgbW9tZW50IHNpbmNlIEkgbGFzdA0KPiA+ID4gPiA+ID4gdXNlZA0KPiA+
ID4gPiA+ID4gdG8gaHVudCBmb3IgdmFyaW91cyBEU0IgYnVncywgYnV0IGF0IGxlYXN0IGl0IHN0
aWxsIGJ1aWxkcw0KPiA+ID4gPiA+ID4gOikNCj4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gVGhl
IHdheSBJIHVzZSB0aGF0IGlzIHRoYXQgSSBydW4gaWd0ICd0ZXN0ZGlzcGxheSAtbyAuLi4nIA0K
PiA+ID4gPiA+ID4gdG8gbWFrZSBzdXJlIG5vdGhpbmcgZWxzZSBpcyBhY3RpdmVseSBwb2tpbmcg
dGhlIGhhcmR3YXJlDQo+ID4gPiA+ID4gPiBhbmQgdGhlbiBJIHRyaWdnZXIgdGhlIERTQiB0ZXN0
cyB2aWEgZGVidWdmcy4NCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBJIHBva2VkIGFyb3VuZCBhIGJp
dCwgdGhvdWdoIG9ubHkgb24gYSBUR0wrUFNSMSBzeXN0ZW0gKHdoYXQNCj4gPiA+ID4gPiBJDQo+
ID4gPiA+ID4gaGFkDQo+ID4gPiA+ID4gYXQgaGFuZCksIHNvIHNvbWUgb2YgdGhpcyBtaWdodCBu
b3QgYXBwbHkgdG8gUFNSMiBhbmQvb3IgbW9yZQ0KPiA+ID4gPiA+IG1vZGVybiBwbGF0Zm9ybXMu
DQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gR2VuZXJhbCBub3RlczoNCj4gPiA+ID4gPiAtIFBTUjEg
ZXhpdCBpcyB0cmlnZ2VyZWQgYnkgYW55IHBpcGUvcGxhbmUgcmVnaXN0ZXIgd3JpdGUNCj4gPiA+
ID4gPiAoZXZlbg0KPiA+ID4gPiA+IHRoZQ0KPiA+ID4gPiA+IMKgIG5vbi1hcm1pbmcgb25lcykN
Cj4gPiA+ID4gDQo+ID4gPiA+IFRoaXMgaXMgc2FtZSBmb3IgUFNSMiBhcyB3ZWxsLg0KPiA+ID4g
PiANCj4gPiA+ID4gPiANCj4gPiA+ID4gPiBXZSBiYXNpY2FsbHkgaGF2ZSB0aHJlZSBjYXNlcyB0
byBjb25zaWRlciBoZXJlOg0KPiA+ID4gPiA+IDEuIFBTUjEgaXMgY3VycmVudGx5IGluYWN0aXZl
DQo+ID4gPiA+ID4gwqAgT2J2aW91c2x5IGV2ZXJ5dGhpbmcgc2hvdWxkIGJlIHdpdGggdGhlIGN1
cnJlbnQgY29kZSwNCj4gPiA+ID4gPiDCoCB2YmxhbmsgZXZhc2lvbiB3b3Jrcywgd2FpdCBmb3Ig
dmJsYW5rK2ludGVycnVwdCBzY2hlbWUNCj4gPiA+ID4gPiDCoCBmb3IgZmxpcCBjb21wbGV0aW9u
IHdvcmtzDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gMi4gUFNSMSBpcyBhY3RpdmUsIGJ1dCBEQyBz
dGF0ZXMgYXJlIG5vdA0KPiA+ID4gPiA+IMKgIFRoZSB3YWtldXAgbGF0ZW5jeSBoZXJlIGlzIHN1
cGVyIHF1aWNrIChpdCdzIDwgMSBzY2FubGluZSwNCj4gPiA+ID4gPiBob3cNCj4gPiA+ID4gPiDC
oCBtdWNoIGJlbG93PyBJJ3ZlIG5vdCB5ZXQgbWVhc3VyZWQpLCBhbmQgYXJtaW5nIHJlZ2lzdGVy
cyBkbw0KPiA+ID4gPiA+IGxhdGNoDQo+ID4gPiA+ID4gwqAgbmVhcmx5IGltbWVkaWF0ZWx5Lg0K
PiA+ID4gDQo+ID4gPiBBY3R1YWxseSBpdCdzIG9ubHkgfjF1c2VjIChiYXNlZCBvbiB0aGUgdGlt
ZXN0YW1wcykuIEkgYWxzbyB1c2VkDQo+ID4gPiB0aGUNCj4gPiA+IGZvbGxvd2luZyBEU0IgYmF0
Y2ggdG8gdGVzdCBob3cgbWFueSByZWdpc3RlcnMgd2UgY2FuIHdyaXRlDQo+ID4gPiB0aGVyZToN
Cj4gPiA+IA0KPiA+ID4gZm9yIChpID0gMDsgLi4uOyBpKyspDQo+ID4gPiAJZHNiX3dyaXRlKFBM
QU5FX1NVUkYsIGkgPDwgMTIpDQo+ID4gPiBkc2JfaW50ZXJydXB0KCkNCj4gPiA+IA0KPiA+ID4g
YW5kIHRoZW4gaW4gdGhlIGludGVycnVwdCBoYW5kbGVyIEkgcmVhZCBQTEFORV9TVVJGTElWRSwg
YW5kIGl0DQo+ID4gPiBhbHdheXMNCj4gPiA+IHNob3dzIDB4YTAwMCwgbWVhbmluZyB3ZSBvbmx5
IGhhdmUgdGltZSB0byB3cml0ZSB0ZW4gcmVnaXN0ZXJzLg0KPiA+ID4gU28NCj4gPiA+IGRlZmlu
aXRlbHkgbm90IGVub3VnaCB0byBndWFyYW50ZWUgdGhhdCBhbGwgYXJtaW5nIHJlZ2lzdGVycyBn
ZXQNCj4gPiA+IHdyaXR0ZW4uDQo+ID4gPiANCj4gPiA+IFNvLCBmb3IgUFNSMSBhdCBsZWFzdCBJ
IHRoaW5rIHdlJ2QgaGF2ZSB0d28gb3B0aW9uczoNCj4gPiA+IDEpIGRvIGEgbWFudWFsIFBTUiB3
YWtlIGFyb3VuZCB0aGUgd2hvbGUgY29tbWl0LCB3aGljaCBkb2Vzbid0DQo+ID4gPiDCoMKgIHNv
dW5kIHZlcnkgbmljZQ0KPiA+ID4gMikgZXZhZGUgaHdfc2NhbGluZT09MCBzbyB0aGF0IHdlIHdh
aXQgdW50aWwgd2UndmUgd29rZW4gdXANCj4gPiA+IMKgwqAgZnJvbSB0aGUgREMgc3RhdGUsIGFu
ZCB0aGVuIHByb2NlZWQgd2l0aCB0aGUgbm9ybWFsIHZibGFuaw0KPiA+ID4gwqDCoCBldmFzaW9u
IGFuZCBhcm1pbmcgcmVnaXN0ZXIgd3JpdGVzLiBBbmQgb2J2aW91c2x5IGFsbCB0aGF0DQo+ID4g
PiDCoMKgIG9ubHkgd29ya3MgaW4gRFNCX1NLSVBfV0FJVFNfRU4gaXMgZGlzYWJsZWQuIEFsc28g
aWYgYWxsIA0KPiA+ID4gwqDCoCB0aGUgcGlwZXMgYXJlIGRvaW5nIHRoZSBmdWxsIHVwZGF0ZSB1
c2luZyB0aGUgRFNCIHRoZW4gd2UNCj4gPiA+IMKgwqAgY291bGQgcGVyaGFwcyBhbHNvIHJlbW92
ZSB0aGUgZXhwbGljaXQgRENfT0ZGIGRhbmNlIGFyb3VuZA0KPiA+ID4gwqDCoCB0aGUgd2hvbGUg
Y29tbWl0Lg0KPiA+ID4gDQo+ID4gPiA+IFRoZSBzY2FubGluZSBjb3VudGVyIHN0YXJ0cyBjb3Vu
dGluZw0KPiA+ID4gPiA+IGFjY29yZGluZ2x5DQo+ID4gPiA+ID4gwqAgZnJvbSB2Ymxhbmtfc3Rh
cnQtMS4gSG93ZXZlciB0aGUgaGFyZHdhcmUgc3RpbGwgY29uc2lkZXJzDQo+ID4gPiA+ID4gUFNS
DQo+ID4gPiA+ID4gdG8gYmUNCj4gPiA+ID4gPiDCoCBhY3RpdmUgZm9yIHRoYXQgc2hvcnQgZHVy
YXRpb24gc28gRFNCX1NLSVBfV0FJVFNfRU4gX3dpbGxfDQo+ID4gPiA+ID4gc2tpcA0KPiA+ID4g
PiA+IHRoZQ0KPiA+ID4gPiA+IMKgIHdhaXRzLg0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IMKgIFVu
Zm9ydHVuYXRlbHkgYmVpbmcgdGhpcyBxdWljayBJJ20gbm90IGNvbnZpbmNlZCB3ZSBoYXZlDQo+
ID4gPiA+ID4gZW5vdWdoDQo+ID4gPiA+ID4gdGltZQ0KPiA+ID4gPiA+IMKgIHRvIHdyaXRlIGFs
bCB0aGUgcmVnaXN0ZXJzIGF0b21pY2FsbHkgYmVmb3JlIHRoZSBoYXJkd2FyZQ0KPiA+ID4gPiA+
IGxhdGNoZXMNCj4gPiA+ID4gPiDCoCBzb21ldGhpbmcuIFNvIEknbSB0aGlua2luZyB3ZSBtYXkg
bmVlZCB0byByZW1vdmUNCj4gPiA+ID4gPiBEU0JfU0tJUF9XQUlUU19FTiwNCj4gPiA+ID4gPiDC
oCBpbiB3aGljaCBjYXNlIHRoZSB2YmxhbmsgZXZhc2lvbiB3aWxsIHB1c2ggdGhlIGFybWluZw0K
PiA+ID4gPiA+IHJlZ2lzdGVyDQo+ID4gPiA+ID4gwqAgd3JpdGVzIGludG8gdGhlIG5leHQgZnJh
bWUuIFRoaXMgd2lsbCBtZWFuIHRoZSB3YWtldXAgd2lsbA0KPiA+ID4gPiA+IHRha2UNCj4gPiA+
ID4gPiDCoCBvbmUgZnVsbCBmcmFtZS4NCj4gPiA+ID4gDQo+ID4gPiA+IFRvIG15IHVuZGVyc3Rh
bmRpbmcgRFNCX1NLSVBfV0FJVFNfRU4gaGF2ZSBpbXBhY3Qgb25seSB3aGVuIGluDQo+ID4gPiA+
IFNSRA0KPiA+ID4gPiAoUFNSKS9ERUVQX1NMRUVQKFBTUjIpLiBJLmUuIEluIHRoaXMgc2NlbmFy
aW8gd2Ugc3RpbGwgZG8gaGF2ZQ0KPiA+ID4gPiBhbGwNCj4gPiA+ID4gd2FpdHMgYXMgaW4gY29t
bWl0IHdpdGhvdXQgUFNSLg0KPiA+ID4gDQo+ID4gPiBUaGUgUFNSIHN0YXRlIG1hY2hpbmUgaXMg
YWxyZWFkeSBpbiBsaW5rIG9mZiBtb2RlIGluIHRoaXMgY2FzZSwNCj4gPiA+IG1lYW5pbmcgdGhl
IHBpcGUgaGFzIGJlZW4gaGFsdGVkLCBhbmQgdGhlIGRpc3BsYXkgaGFzIGJlZW4NCj4gPiA+IHNp
Z25hbGxlZCB0byBzY2FuIG91dCBmcm9tIGl0cyBSRkIgKGNvbmZpcm1lZCBieSBjaGVja2luZyB0
aGUNCj4gPiA+IFBTUiBzdGF0dXMgcmVnaXN0ZXIgaW4gRFBDRCksIGFuZCBEU0JfU0tJUF9XQUlU
U19FTiBpcyBhbHJlYWR5DQo+ID4gPiBhY3RpdmUuIEJ1dCB0aGUgbGluayBpcyBzdGlsbCBhY3R1
YWxseSB1cCAoSSdtIGd1ZXNzaW5nIGl0IG1pZ2h0DQo+ID4gPiBiZSB0cmFuc21pdHRpbmcgdGhl
IGlkbGUgcGF0dGVybiwgYnV0IEkndmUgbm90IGNvbmZpcm1lZCB0aGF0Lg0KPiA+ID4gQ2FuJ3Qg
cmVtZWJlciBpZiB3ZSBldmVuIGhhdmUgYW55IGtpbmQgb2Ygc3RhdHVzIHJlZ2lzdGVyIHRoYXQN
Cj4gPiA+IGNvdWxkIHNob3cgdGhpcy4uLikuIFNvIGxvb2tzIGxpa2UgdGhlIGxpbmsgb25seSBn
ZXRzIGFjdHVhbGx5DQo+ID4gPiB0dXJuZWQgb2ZmIGJ5IHRoZSBETUMgd2hlbiBlbnRlcmluZyB0
aGUgREMgc3RhdGUuDQo+ID4gPiANCj4gPiA+ID4gDQo+ID4gPiA+ID4gDQo+ID4gPiA+ID4gMy4g
UFNSMSBpcyBhY3RpdmUgYW5kIHNvIGFyZSBEQyBzdGF0ZXMNCj4gPiA+ID4gPiDCoCBUaGUgd2Fr
ZXVwIGxhdGVuY3kgaXMgfjVtcy4gRHVyaW5nIHRoYXQgdGltZSBzY2FubGluZQ0KPiA+ID4gPiA+
IGNvdW50ZXINCj4gPiA+ID4gPiByZWFkcw0KPiA+ID4gPiA+IMKgIDAsIFBTUiBpcyBhY3RpdmUg
Zm9yIHRoZSBwdXJwb3NlcyBvZiBEU0JfU0tJUF9XQUlUU19FTi4NCj4gPiA+ID4gPiBBZ2Fpbg0K
PiA+ID4gPiA+IHdlDQo+ID4gPiA+ID4gwqAgcHJldHR5IG11Y2ggbmVlZCBEU0JfU0tJUF9XQUlU
U19FTj0wIGhlcmUgdG8gbWFrZSBzdXJlIHRoZQ0KPiA+ID4gPiA+IGludGVycnVwdA0KPiA+ID4g
PiA+IMKgIGdldHMgc2lnbmFsbGVkIGFmdGVyIHRoZSB3YWl0IGZvciB2YmxhbmsuIHZibGFuayBl
dmFzaW9uDQo+ID4gPiA+ID4gd2lsbA0KPiA+ID4gPiA+IGdldA0KPiA+ID4gPiA+IMKgIHNraXBw
ZWQgb24gYWNjb3VudCB0aGUgc2NhbmxpbmUgYmVpbmcgMC4gU29tZXdoYXQNCj4gPiA+ID4gPiBp
cm9uaWNhbGx5DQo+ID4gPiA+ID4gdGhpcw0KPiA+ID4gPiA+IMKgIHdvdWxkIGdpdmUgdXMgfjVt
cyB0b3RhbCB3YWtldXAgbGF0ZW5jeSB3aGljaCBpcyBub3cgZmFzdGVyDQo+ID4gPiA+ID4gdGhh
bg0KPiA+ID4gPiA+IHRoZQ0KPiA+ID4gPiA+IMKgIHByZXZpb3VzIGNhc2UuDQo+ID4gPiA+IA0K
PiA+ID4gPiBBZ2FpbiBteSB1bmRlcnN0YW5kaW5nIGlzIHRoYXQgRFNCX1NLSVBfV0FJVFNfRU49
MC8xIGhhdmUNCj4gPiA+ID4gaW1wYWN0DQo+ID4gPiA+IG9ubHkNCj4gPiA+ID4gd2hlbiBpbiBT
UkQvREVFUF9TTEVFUC4gVGhlcmUgaXMgU1JEX0NUUkwvUFNSMl9DVFJMW0lkbGUNCj4gPiA+ID4g
RnJhbWVzXSB0bw0KPiA+ID4gPiBjb250cm9sIHdoZW4gZW50ZXJpbmcgU1JEL0RFRVBfU0xFRVAu
DQo+ID4gPiANCj4gPiA+IFRoZSBQU1Igc3RhdGUgbWFjaGluZSBpcyB3aGF0IG1hdHRlcnMuIFRo
YXQgc3RvcHMgdGhlIHBpcGUsIGFuZA0KPiA+ID4gY2F1c2VzDQo+ID4gPiBEU1BfU0tJUF9XQUlU
U19FTiB0byBiZWNvbWUgYWN0aXZlLiBBbmQgdGhlIFBTUiBzdGF0ZSBtYWNoaW5lIGlzDQo+ID4g
PiBhbHNvDQo+ID4gPiB3aGF0IGlzIGFmZmVjdGVkIGJ5IHRoZSBpZGxlIGZyYW1lcyBzdHVmZi9l
dGMuIEFGQUlLIHRoZSBvbmx5DQo+ID4gPiBzdHVmZg0KPiA+ID4gdGhhdCBpcyBhY3R1YWxseSBk
b25lIGJ5IHRoZSBETUMgaXMgdHVybmluZyB0aGUgbGluay9QTEwvZXRjIG9uDQo+ID4gPiBhbmQN
Cj4gPiA+IG9mZi4gQW5kIG9idmlvdXNseSBsaW5rIHRyYWluaW5nIEkgZ3Vlc3MgZ2V0cyB0cmln
Z2VyZWQgZnJvbQ0KPiA+ID4gdGhlcmUNCj4gPiA+IHNvbWVob3cgd2hlbiB3YWtpbmcgdXAgZnJv
bSBQU1IsIGhlbmNlIHdoeSB0aGUgd2FrZXVwIHRha2VzIHRoYXQNCj4gPiA+IDVtcw0KPiA+ID4g
bG9uZ2VyIHRoYW4gd2hlbiBEQyBTdGF0ZXMgYXJlIGRpc2FibGVkLg0KPiA+IA0KPiA+IE9rLCBJ
IG5lZWQgZG8gc29tZSBpbnZlc3RpZ2F0aW9uIG9uIHRoaXMuIFRoZSBmYWlsdXJlIEkgd2FzDQo+
ID4gcmVmZXJyaW5nDQo+ID4gd2FzIHRoaXMgb25lOg0KPiA+IA0KPiA+IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2ludGVsLXhlL3hlLXB3LTE0MjUyMXYyL3NoYXJkLWxubC04L2ln
dEBrbXNfcHNyMl9zZkBwc3IyLWN1cnNvci1wbGFuZS1tb3ZlLWNvbnRpbnVvdXMtZXhjZWVkLWZ1
bGx5LXNmLmh0bWwNCj4gPiANCj4gPiBJLmUuIHRoZXJlIGlzIHRoYXQgc2NhbmxpbmUgd2FpdCBh
dCB0aGUgYmVnaW4gaW4gRFNCIGJ1ZmZlci4gSXQgd2FzDQo+ID4gaGFuZ2luZyBpbiB3YWl0aW5n
IHRoZSBzY2FubGluZS4gSSB2ZXJpZmllZCB0aGlzIGJ5IGNoZWNraW5nIGlmDQo+ID4gcHJlY2Vk
aW5nIHdyaXRlIHRvIDB4NzAwMzAwIGNvbXBsZXRlcyBhbmQgaXQgbmV2ZXIgZGlkLg0KPiA+IA0K
PiA+IFRoaXMgd2FzIHdpdGggUFNSMiBidXQgbm90IHdpdGggUGFuZWwgUmVwbGF5LiBBbHNvIGlm
IEkgZGlzYWJsZQ0KPiA+IERFRVBfU0xFRVAgYnkgc2V0dGluZyBQU1IyX0NUTFtpZGxlIGZyYW1l
c10gYXMgMCBpdCBkaWRuJ3QgaGFuZy4NCj4gDQo+IEkgZ3Vlc3MgdGhhdCBpZGxlIGZyYW1lcz09
MCB0aGluZyBvbmx5IGFwcGxpZXMgdG8gUFNSMi4gV2l0aA0KPiBQU1IxIGl0IGRvZXNuJ3Qgc2Vl
bSB0byBkbyBhbnl0aGluZyAod2VsbCwgYXBhcnQgZnJvbSB3aGF0IGl0DQo+IHNheXMgb24gdGhl
IHRpbikuIE9UT0ggd2l0aCBQU1IxIHRoZXJlIGlzIGEgZGVkaWNhdGVkIGxpbmsgb2ZmDQo+IHZz
LiBzdGFuZGJ5IGJpdCBpbiBTUkRfQ1RMLCBzbyBJIGd1ZXNzIHRoZXJlIGlzIG5vIG5lZWQgZm9y
DQo+IGFueXRoaW5nIGVsc2UuDQo+IA0KDQpTZXR0aW5nIFBTUjJfQ1RMW2lkbGUgZnJhbWVzXSBh
cyAwIGRvZXNuJ3QgdHJpZ2dlciB3YWtlLXVwLiBJdCBqdXN0DQpkaXNhYmxlcyBERUVQX1NMRUVQ
LiBTbyB3ZSBjYW4ndCB1c2UgdGhhdCB0byBzb2x2ZSB0aGlzLiBJJ2xsIGd1ZXNzDQphZGRpbmcg
ZXh0cmEgQ1VSU1VSRkxJVkUgd3JpdGUgaXMgdGhlIHdheSB0byBnbyB3aXRoIHRoaXMuDQoNCkJS
LA0KDQpKb3VuaSBIw7ZnYW5kZXINCg==
