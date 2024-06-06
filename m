Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5691B8FF505
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 20:57:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2236D10E206;
	Thu,  6 Jun 2024 18:56:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ReubkhcK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80E0310E206
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 18:56:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717700214; x=1749236214;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=vliv++Jtd4JlfUQz6dfLtlgxCsU/NwYzKhAp/tCMtNA=;
 b=ReubkhcKPzhSXUCUiAfZKn/Co3kR90P+66oe7rXOvbcHj3lDBTmycE4G
 nWicFEd9eGpQGEmweG1T6xptbwsiQnBMyKDoK6WuARQTGj72RN+IQ9HHN
 fluVLIqwsZaMPfxK0LZbGeNZ/W5ESwzoD3T20mxx4sGaAEZ0+g0LGVI2f
 78I5op975A1twfVAc9hYjLb17OGzk+bWX3B0XIJ65nXeslTOaQOxF+5TV
 c/lZUWyEKaKwm+GeUj7u1M5/4MpI/bEbvaO6Cl/LmKkKErB6HDby1QOvQ
 rFAEoVEQurbRgTh1G2F8QWQMps5fGNO2CDtzt3C33jjiU5V9+51ICJeF/ A==;
X-CSE-ConnectionGUID: LvqS6FP2Q6+xv/ebsSnltA==
X-CSE-MsgGUID: vjsXcKVfR8Gghr7C4rWp4A==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="25025458"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="25025458"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 11:56:54 -0700
X-CSE-ConnectionGUID: M+wOr+z1TUiqVxurNu5fBQ==
X-CSE-MsgGUID: EGATfoizRzykPSQliQNlnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="61274191"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 11:56:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 11:56:54 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 11:56:54 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 11:56:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KpXCJ+egoUZLOSoR5vmAYIrEah1YGDfmoEX0yXLu22AADStOrod+GeyRTwSc/CA05vwSmReWewayJyQfwwX8sQ6Rhnv72htdR6+zn3nXj1Gq1Ro/Ve3uSxtADUMtgPnsSFwUVHck/cE0N/EciL0z9xCEbSHuomwykQuqGzYkZH7ETXotdOLEPA02jh2GHuH4FeVL9Vsnz/1l9kh4zrQ4BhNJn1R3eJ93989QlLbZfC726twTilqXZHTxf7KP4qW3LL/ICtEdTJRekqGznASvfc0gEpG631AwFv1SeprAUvLO+jjKUTMtc07lK9MPqBnV96gGu+GpM5lo6xTUFXz8og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vliv++Jtd4JlfUQz6dfLtlgxCsU/NwYzKhAp/tCMtNA=;
 b=KZMVf+rjZpc1suOM8ZwReKp3faPcBtddVsT8ScnIPbW+8fK10vbXOvw6ndMoR/WFHcc5bK9w6WNK2XoLPKGG3PQ3dVDf7PA2j2bZ6zfrkyjornFqxYHBYJ8MtFGBAUUsBkcAqKPUVXupMtPOQbu9QdQU/2fETqwCttDJoaCJWBML5+JXIdVhdeACHj2J9K+kLEABmHfqc+bCfWjVqoXOx3hoXcPT2eSftHpxm4DsOyY/QWtP9bEThBUCha4cuptyHq1x94JaYzK7jqopj+hRnS1cknwYjG+igOFzo1ED1qs2A2gPEAG4+I1K6xh+9x/j3Ya+NpR0sBcSA0quqOzbow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA1PR11MB6566.namprd11.prod.outlook.com (2603:10b6:806:251::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.33; Thu, 6 Jun
 2024 18:56:44 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7633.018; Thu, 6 Jun 2024
 18:56:44 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 3/4] drm/i915/dsb: Pass DSB engine ID to
 intel_dsb_prepare()
Thread-Topic: [PATCH 3/4] drm/i915/dsb: Pass DSB engine ID to
 intel_dsb_prepare()
Thread-Index: AQHas097L5XfNXfwn0m6oDz5KwM3zbG7HThw
Date: Thu, 6 Jun 2024 18:56:44 +0000
Message-ID: <PH7PR11MB5981F9DFA87519CF4D8BD975F9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240531114101.19994-1-ville.syrjala@linux.intel.com>
 <20240531114101.19994-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20240531114101.19994-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA1PR11MB6566:EE_
x-ms-office365-filtering-correlation-id: 770c4020-5b1b-40fd-049d-08dc865a68cb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?Y0pJeXBsaXpXZ2RPT0tSNHlKemd6elRHSjJRMEtQS1lKcExOMHRkdGZ6S0c3?=
 =?utf-8?B?OS9JTjZKS1hIbldCSXdOU1ZqWkVRZStCRXU1VWVyTWdDc2JXNy9zVTl5M1lZ?=
 =?utf-8?B?dGF2K0ZlQVZtVG50VWxwUjZUb2JjZFl2aGcweGNKeEl6dVJRZ3VGNDNCSENP?=
 =?utf-8?B?YU81UjYyNElSaW5qZEYwUzZUWWY2ekhlRFlRS0dFb2d2dHdrWE5wdHIwdFNy?=
 =?utf-8?B?bW8xNEdkVnRiM3lzQVpibU05QVlFOXRocnF6d0xPck12QzFQVUlVN0Z2bEsw?=
 =?utf-8?B?eVFVR1RVMjBEbUhKRE1EMjZpd1RtZmQ0cStLS2VEUEdYeXBOWUp6QzdzbG1Q?=
 =?utf-8?B?SDNCMTZXajVyU2dyMHNsY20ydGFjeEZXSWlNakhYdDU3TERiZnc5NHBheGxo?=
 =?utf-8?B?cC9mVnFzS2cwOHhhd1lLSWRJRmxtMkNCSWlpZnMzc2RySkRmK2FXdmlTb3Ev?=
 =?utf-8?B?c0hhUUV4Y3ZIRU4xdGFUenRVOFlBd0dIWHFMM0F1MkY3SXJYeDQwQS9WNFFK?=
 =?utf-8?B?aksrWnRqaFFPWGs1bGtUN0d1T1IrQzRoMkpXLzVUZHAxOUUwLzY0QXZjeFYy?=
 =?utf-8?B?UWhXTCtKWlJXSlZXRlJadUdZN3hEekZDcFNucHFQSWw3TW1Pb2hiZUZWUFQr?=
 =?utf-8?B?MVVRS1ROMWNRM1lYcVVMcDdnQmNvdFVmZWpQSmUwYXVSL0RTTnBXUkMraGov?=
 =?utf-8?B?R1JqNDdyN2VuS3FIcW5NTFhFQWdqZ1l1bzBCY2RXeDdXV1FtYmZ3NDhzYkVn?=
 =?utf-8?B?OHVic050eGNFUU9NRmdsdFN3UVhsRHdnMjJncmgzSURxaWs0cXhCMDFyaGc4?=
 =?utf-8?B?MVk0YXR5Z1krNCtZaCtEWWtyRUg1ZFBKUFUxUW02SUFjcmJUUE9rUTlwMWRJ?=
 =?utf-8?B?OFY4WmZ1c2hKWWY2YVloU0RFcDZTYXBQWktLL1gwYzZwcTlWQW0xR0ZwVVhq?=
 =?utf-8?B?M0hpL1ArcThqSWxESXpsNjhnRlFnZ3pyaXdpczQ1UGZ0TTE2SUNBdFVHNjRG?=
 =?utf-8?B?MFRLRHcrak5xOE9saXpjb1kwMHN2WUNiTXBvU21iSTZybUN2L3RxNVNOQW82?=
 =?utf-8?B?WnNKWGhXUzNUVGxiTzE4STgyRzc2bzFYaTZmcWFISGpjSys3Zncxam50UnMx?=
 =?utf-8?B?UTFidGQ0S0c5MFliWUZsWElCNldSUXFKcGRqNXlSM0czQm9Sc1BDQ2NRWnBJ?=
 =?utf-8?B?VGVSM2JqYVFyQ3ExUEw3N21iSFkzMFJFdTdWNGwzMUtQOFRvUFdDNWNmMmNX?=
 =?utf-8?B?R0Rvb3haQzY5UDl3eGRtT2E1QTVRbzYvZWEreW1DMzk2TmlEVWJHOXpUdE8r?=
 =?utf-8?B?WHRpbXV0bUM3aDc3QXZ0cmZtdHhVSllXZWI0UGwvY21mRmFVZjM0djJwMTB4?=
 =?utf-8?B?Q2NNVjhhVnZTRkZ1TXZRTVpkR0dsTFN2citCWFFuS2JXbmVGM1dQVDIvVmlx?=
 =?utf-8?B?aSsrWG1FY2dzVDVXYjlZVkdpQlBvbWJNZjYvSWZ3N043ZkhTSS9oWGltSkV6?=
 =?utf-8?B?VGt2Z3RKcFNPVTZidWdNUHlPYkRrOElIRS8rdEhvd2lRejJKTElEVXpNcDJu?=
 =?utf-8?B?cEVEMW9LQS94TWd4WFlMcDFXLzFCUmxWVkRnYmhnclpHanArMzFXaE15ZzZY?=
 =?utf-8?B?dkVXaHNFdUlOQTdoMU5CM1U2dDVwczlSVWVYS1FiNFBudHNJUUhMdnpVSnZl?=
 =?utf-8?B?ZDVCc1BXRUFvWXhpMlNwVERPemlxYkllTVdNT1gvY2xrbU9oYzJxa2RWM3NX?=
 =?utf-8?B?WUducnZSRG5qczVoZGhLenBrRnVMUVJnK3RuODE0OEozZWNUWHBjcElVZnFQ?=
 =?utf-8?Q?NBQ33LyxH+wai7m/0VVI5JRklOg6SG1atS92M=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d2g0S3FscTVEVlA5VTlETXZ5QVN5Y3B2d253UWlFejVWZnVXVHhjNE1oRDZy?=
 =?utf-8?B?WG5JNlJCS2E5c0lrTGZPRHNzOGUyTDk2bEFMUWgzRmgzTGlMcjRORGZCUThE?=
 =?utf-8?B?NEd6OE1tK250aFBpWm0rVTQ3eWppUEZRc1R0aUdOZ0xJL015bitjcUR4TWVH?=
 =?utf-8?B?a2Q0K094RmtwZWtiMHZKcG5IMGlLcmFkUHh1eVJTS2J6cEFYbHRXZWFya3d5?=
 =?utf-8?B?VFo3WHhxNWpuSGtBZ3VHT24rTGYyVlFKQVFTZ2NIUS9GMWpWQnB1V0RldVhz?=
 =?utf-8?B?RURQN2tFNDZ0ck0yQm9NZjUvcjJRQXRxT0M4V2J5QlVDSkpWWVZOQ2lTVzNo?=
 =?utf-8?B?UWtNejVGLzlpVXBjTTlsTGtiZ3FzQTB2YkJtaitCYzJUOWZ2bHphSW9DNUcy?=
 =?utf-8?B?YzR6K3EwaTJhejZGeFZoY2QzQkV6ZXRDWURvYzBCTzV3OUYyeHZycFhGZlA1?=
 =?utf-8?B?bUdiNHY2UkNTVGZFT0l6MXhESjVYais0NkJucnBsT1B1WXZrWVJScUl5T1I5?=
 =?utf-8?B?bGJPMExacTRYQ2hDUnJUV1llbG5RMmlVQXIwWHJKbFBqOXhlaStWWUFaOEUx?=
 =?utf-8?B?R3VHSlBtRGR0SlBjVU9zMEZDV29ZVjJWbWhFUDROTDhHOFRDZWltc2xQTEtw?=
 =?utf-8?B?UXFxNy9xbEdPLytzamxqY21hK3ZNVnNQb05mcDNPSjNhSVIvYWFnVFJ4bkxj?=
 =?utf-8?B?TFlwbEhXS0RGQ09WV0p6UERoOXd6NGdIckx2a1NlaEtYMGp2eHdkZHRDZlZ3?=
 =?utf-8?B?MUcrNUVDeUJxSitNSUZmWklOUzRVUDFrb0t4RGNEZjBaR1pHSUVTUWVVMGc5?=
 =?utf-8?B?YzVmT1g0bGpkSXhtOFZrdmwvV0JtVkhZQWpPN01zT1pwOXVrZnJsanN0OG1i?=
 =?utf-8?B?aW9IMGh5Y2xBb2JvbU5PZGdxa3RiY0xLd1A1S1cxUDYrdVlITlRvVkU4WDho?=
 =?utf-8?B?Tm9yZlRmSU1GUFQ0a3lnaDI1TWZWQ3VqdDV6V1FOR2hpc3p4ZmJWdzRjR3pk?=
 =?utf-8?B?dkxBa252YnZzMnNwcHZVZXF1NHIzUG1aQnVSVUgzaEdnTmxiVi9tMDVHZ25Q?=
 =?utf-8?B?Z2xtZmhGRm82Q0pBZnVqNnlUOEMvOEt2WVA4MWJNZkVTdWtuOU5xRlhVSkcr?=
 =?utf-8?B?bjZsZXJ4dlVhcmhwMzBoenhFK3N6ZUlwdGg2V0ZFYjZwenBreW0zTGJPV0Nr?=
 =?utf-8?B?NnRhSkY0WE5UbkdLdmpraDBvZDNtc3NKY1loZFhhWWFKeTBGZHM0eG0rTzk1?=
 =?utf-8?B?U0l6SENnUm1qZjU0YnczeGhwY0NKWC9SL1p3SFpmZnpEd2sxNU9BVE15eXhk?=
 =?utf-8?B?SS9wejQyUTdMNjR6WTVKZUgzR1NoYXlINmJZY1lIZlV2aEIrSXM1SkJMSm0r?=
 =?utf-8?B?aG8wU0VzdEQyWi9LRWNqT3YwOFhUd0VqOWFvTmdaMWg4Vk45a3FGUy9sNk1Y?=
 =?utf-8?B?ckZRdllPNW9FVVVGRUVUKzhzUmEwSHhMeVhHbDRxTGZOdEc0RFRZYUVBSnFR?=
 =?utf-8?B?U0pTNHVlSUUrbU95d2Q4dytCR2ptNkJXNE1RODQ1Q3NaOGhPVVo2UktpMU5Q?=
 =?utf-8?B?bmt4WEZsODE1U2RxNTZ5c1Q2Zk44WEIzV1NNK2xvYVdWakZJbkxwbVFWVVJq?=
 =?utf-8?B?c0ZPcDgyRDYrbzhlTXpMWW9PS0syNHNKMjN2OEh1T0MzNldLYnNhcC9sNWdP?=
 =?utf-8?B?ZTdvb3J4RmZVRHBwL0tHZjZBWmNLd2VKM0RydXpaRG1PdHplUmduazhUU2JY?=
 =?utf-8?B?NXJtb0sxOFN0QnRrbGc5aXJUbkVJN0JJeFZtVllJbzVLeDhrM3ZNZW41NmhZ?=
 =?utf-8?B?bS93RHY4ZFhKOGpXRlAvWGlkaVVscU5zbTRuRWNpNmZZNTdIZTJ2cmk1QmRY?=
 =?utf-8?B?ajRwV21qSEFyTkVDcnl0eHd1TzhUNmZBQzkxVzZZajV2Q0ZyRCtHNnMzN1FI?=
 =?utf-8?B?eXpXKzk5ZkQ0bEFIWkZzMnJVd1Vrd3FEbVVyTk5vL1ZENzNqaUdJUkJiOWl6?=
 =?utf-8?B?SzRCTXEvNnBRajZJUk1Wd1VaQTNMNFR0U1ZkUlo3dHc2L215SXpGK3FPKzIr?=
 =?utf-8?B?ZFJUbzVFa0RVU1pYR0Y2UjVzR2xtemRmZjNoL0twVjl2VTNjRTlTaWVBVlVS?=
 =?utf-8?Q?FORFGcjLWsd4XeTtobZogFcuu?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 770c4020-5b1b-40fd-049d-08dc865a68cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2024 18:56:44.2411 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dmel2k9IVvuWGPYlj3krkXwZhEz1+Zq9XyvhwNzD8whWysRKDirJGNJiIT/CtlvqZ7rJY2I/XWQHw/3n5k9Qxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6566
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IEZyaWRheSwgTWF5IDMxLCAyMDI0IDU6MTEgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDMvNF0gZHJt
L2k5MTUvZHNiOiBQYXNzIERTQiBlbmdpbmUgSUQgdG8NCj4gaW50ZWxfZHNiX3ByZXBhcmUoKQ0K
PiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NCj4gDQo+IEFsbG93IHRoZSBjYWxsZXIgb2YgaW50ZWxfZHNiX3ByZXBhcmUoKSB0byBkZXRl
cm1pbmUgd2hpY2ggRFNCIGVuZ2luZSAob3V0DQo+IG9mIHRoZSB0aHJlZSBwb3NzaWJsZSBwZXIg
cGlwZSkgdG8gdXNlLiBUaGlzIHdpbGwgbGV0IHVzIHV0aWxpemUgbXVsdGlwbGUgRFNCDQo+IGVu
Z2luZXMgZHVyaW5nIHRoZSBzYW1lIGNvbW1pdC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQoNClJldmlld2VkLWJ5
OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyB8IDIgKy0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgICB8IDYgKysrKy0tDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oICAgfCAxICsNCj4gIDMgZmlsZXMg
Y2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0KPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYw0KPiBpbmRleCA5MTczY2FiYTNm
MGYuLjk4NTUzZThhNTE0OSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jb2xvci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY29sb3IuYw0KPiBAQCAtMTkxNCw3ICsxOTE0LDcgQEAgdm9pZCBpbnRlbF9jb2xvcl9w
cmVwYXJlX2NvbW1pdChzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4g
IAlpZiAoIWNydGNfc3RhdGUtPnByZV9jc2NfbHV0ICYmICFjcnRjX3N0YXRlLT5wb3N0X2NzY19s
dXQpDQo+ICAJCXJldHVybjsNCj4gDQo+IC0JY3J0Y19zdGF0ZS0+ZHNiID0gaW50ZWxfZHNiX3By
ZXBhcmUoY3J0Y19zdGF0ZSwgMTAyNCk7DQo+ICsJY3J0Y19zdGF0ZS0+ZHNiID0gaW50ZWxfZHNi
X3ByZXBhcmUoY3J0Y19zdGF0ZSwgSU5URUxfRFNCXzAsIDEwMjQpOw0KPiAgCWlmICghY3J0Y19z
dGF0ZS0+ZHNiKQ0KPiAgCQlyZXR1cm47DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHNiLmMNCj4gaW5kZXggZjNiZmE1YjE2NzJjLi4wMTRkNjk1YzEzYzkgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBAQCAtNDM2
LDYgKzQzNiw3IEBAIHZvaWQgaW50ZWxfZHNiX3dhaXQoc3RydWN0IGludGVsX2RzYiAqZHNiKQ0K
PiAgLyoqDQo+ICAgKiBpbnRlbF9kc2JfcHJlcGFyZSgpIC0gQWxsb2NhdGUsIHBpbiBhbmQgbWFw
IHRoZSBEU0IgY29tbWFuZCBidWZmZXIuDQo+ICAgKiBAY3J0Y19zdGF0ZTogdGhlIENSVEMgc3Rh
dGUNCj4gKyAqIEBkc2JfaWQ6IHRoZSBEU0IgZW5naW5lIHRvIHVzZQ0KPiAgICogQG1heF9jbWRz
OiBudW1iZXIgb2YgY29tbWFuZHMgd2UgbmVlZCB0byBmaXQgaW50byBjb21tYW5kIGJ1ZmZlcg0K
PiAgICoNCj4gICAqIFRoaXMgZnVuY3Rpb24gcHJlcGFyZSB0aGUgY29tbWFuZCBidWZmZXIgd2hp
Y2ggaXMgdXNlZCB0byBzdG9yZSBkc2IgQEANCj4gLTQ0NSw2ICs0NDYsNyBAQCB2b2lkIGludGVs
X2RzYl93YWl0KHN0cnVjdCBpbnRlbF9kc2IgKmRzYikNCj4gICAqIERTQiBjb250ZXh0LCBOVUxM
IG9uIGZhaWx1cmUNCj4gICAqLw0KPiAgc3RydWN0IGludGVsX2RzYiAqaW50ZWxfZHNiX3ByZXBh
cmUoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ICsJCQkJICAg
IGVudW0gaW50ZWxfZHNiX2lkIGRzYl9pZCwNCj4gIAkJCQkgICAgdW5zaWduZWQgaW50IG1heF9j
bWRzKQ0KPiAgew0KPiAgCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0Yyhj
cnRjX3N0YXRlLT51YXBpLmNydGMpOw0KPiBAQCAtNDc0LDcgKzQ3Niw3IEBAIHN0cnVjdCBpbnRl
bF9kc2IgKmludGVsX2RzYl9wcmVwYXJlKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlLA0KPiANCj4gIAlpbnRlbF9ydW50aW1lX3BtX3B1dCgmaTkxNS0+cnVudGlt
ZV9wbSwgd2FrZXJlZik7DQo+IA0KPiAtCWRzYi0+aWQgPSBJTlRFTF9EU0JfMDsNCj4gKwlkc2It
PmlkID0gZHNiX2lkOw0KPiAgCWRzYi0+Y3J0YyA9IGNydGM7DQo+ICAJZHNiLT5zaXplID0gc2l6
ZSAvIDQ7IC8qIGluIGR3b3JkcyAqLw0KPiAgCWRzYi0+ZnJlZV9wb3MgPSAwOw0KPiBAQCAtNDg5
LDcgKzQ5MSw3IEBAIHN0cnVjdCBpbnRlbF9kc2IgKmludGVsX2RzYl9wcmVwYXJlKGNvbnN0IHN0
cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiAgb3V0Og0KPiAgCWRybV9p
bmZvX29uY2UoJmk5MTUtPmRybSwNCj4gIAkJICAgICAgIltDUlRDOiVkOiVzXSBEU0IgJWQgcXVl
dWUgc2V0dXAgZmFpbGVkLCB3aWxsIGZhbGxiYWNrIHRvDQo+IE1NSU8gZm9yIGRpc3BsYXkgSFcg
cHJvZ3JhbW1pbmdcbiIsDQo+IC0JCSAgICAgIGNydGMtPmJhc2UuYmFzZS5pZCwgY3J0Yy0+YmFz
ZS5uYW1lLCBJTlRFTF9EU0JfMCk7DQo+ICsJCSAgICAgIGNydGMtPmJhc2UuYmFzZS5pZCwgY3J0
Yy0+YmFzZS5uYW1lLCBkc2JfaWQpOw0KPiANCj4gIAlyZXR1cm4gTlVMTDsNCj4gIH0NCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgNCj4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oDQo+IGluZGV4IDVkNzU2MWVh
NjVmYS4uMzZmZGIxMzBhZjZlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RzYi5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHNiLmgNCj4gQEAgLTIzLDYgKzIzLDcgQEAgZW51bSBpbnRlbF9kc2JfaWQgew0KPiAg
fTsNCj4gDQo+ICBzdHJ1Y3QgaW50ZWxfZHNiICppbnRlbF9kc2JfcHJlcGFyZShjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gKwkJCQkgICAgZW51bSBpbnRlbF9k
c2JfaWQgZHNiX2lkLA0KPiAgCQkJCSAgICB1bnNpZ25lZCBpbnQgbWF4X2NtZHMpOw0KPiAgdm9p
ZCBpbnRlbF9kc2JfZmluaXNoKHN0cnVjdCBpbnRlbF9kc2IgKmRzYik7ICB2b2lkIGludGVsX2Rz
Yl9jbGVhbnVwKHN0cnVjdA0KPiBpbnRlbF9kc2IgKmRzYik7DQo+IC0tDQo+IDIuNDQuMQ0KDQo=
