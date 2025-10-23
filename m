Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 953DDBFF999
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 09:30:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CE1910E89E;
	Thu, 23 Oct 2025 07:30:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UWTiFhui";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA21810E89C;
 Thu, 23 Oct 2025 07:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761204637; x=1792740637;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=IFB8yG8KP8wlw8TpVA0iZqCnjGlbTMS7QWNgEg6yr3c=;
 b=UWTiFhuio5u4fuhfvy0Wk8cycrvl4ekhLnQcd1eRm5TDcP7pXzFC3eZf
 02x4emPO1ey8cP53f0OS7a78LxzBWa6nDSsIrThbekC+bNLvp4KrTIeBq
 ggjrPqrsliB/afh8g5a5LqLK5oDzvi65t8bxB6WyZorIfosihLk8s8W1B
 7VqMadZ61bDcrina+O7OiDT8PoE8qt/gvPZC6wJh0b9foUR5hMl4zBhPx
 cCu6hvHV/bFqkqlVzA1O4HfDmxtKo/7JQ9jRAMwOOz16d4w02sJS+X5Kw
 ubuvRrGbAInUTQbRiC/zL2mXy7shSsaqCiHIk0FHXzlEPkixMokA/rdbc g==;
X-CSE-ConnectionGUID: IGc1EBLnQwKAYaCdKDz7/A==
X-CSE-MsgGUID: tQ/eIWkfRhKexX9nEFZRWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63259480"
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="63259480"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 00:30:37 -0700
X-CSE-ConnectionGUID: Cw+5iI6IRSKZlt9qXSyUgg==
X-CSE-MsgGUID: NLWuNgR2TXmgsi931EANwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="188374669"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 00:30:36 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 00:30:35 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 23 Oct 2025 00:30:35 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.10) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 00:30:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pkKT27jS3fXpeQwioKIfAoQu0jjmg02TUj01LMNuzq+VksjzJorbK20CTPnfknHaqj4OxgX6RKsY9SCrLVbC/8w48hevYtWFSJ2Q6d/rcRHkvGgsShYJuvnADxEih7d42/z0Y8sS5eUcn2DxFUuFJAZJtHyRtPEPo8yb0/LcFipohQOC7i/L6ZcbHpREMAZfhG4gLehI3Fzxcpv5Q8UekU4L9WgR+GHBUyKLdEqqMnP1c3GBWg6o4mWg0YHSWmSHmj3nmwNvG2gZMnkRKPYmHPMg0snM9QaWC2B5pum6j1UCB6o0hCGisSPtEcFMd/OnuLQGKwlm5PrEo81g4/uUzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IFB8yG8KP8wlw8TpVA0iZqCnjGlbTMS7QWNgEg6yr3c=;
 b=iXQjs1v1QIHjGnUOTMrKkMi9LrAL4MnvYcw/WBW2HVeO34JiyHcOdWMWRQOWJyi0uBYsP+6NBz7p1jRU7DnpwMHT5X1qLCkwCsRCO463zJqmO/ACDh93KlrZ3IYO2pBwNm+1qZlpmafMkmo7eMcXp+rk4xcgayJIx8FppgooNW2XPK4w3684PbA3KeKIoed2wEsGZu+ZVvjLR8s1KnBfmUV0ltKbMUkq2WNSY+93ryyO21vTAmnPb5mDxBlb8/0PX3R0jsC1v3TqYgiKiFCI5h0yZJ7tNSMhobFGXZDCVOgzJnSzxacBfJwqBHa3DYxKw0rlpTHo0gYxORs/peGvAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BL1PR11MB5288.namprd11.prod.outlook.com (2603:10b6:208:316::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.17; Thu, 23 Oct
 2025 07:30:34 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9253.011; Thu, 23 Oct 2025
 07:30:34 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/2] drm/i915/display: drop a few unnecessary i915_drv.h
 includes
Thread-Topic: [PATCH 1/2] drm/i915/display: drop a few unnecessary i915_drv.h
 includes
Thread-Index: AQHcQ02Ds14fTEMIJ0O9ykqzbkBdW7TPVzmA
Date: Thu, 23 Oct 2025 07:30:34 +0000
Message-ID: <17db6106392803115414cb09d5975a927b001da0.camel@intel.com>
References: <20251022121450.452649-1-jani.nikula@intel.com>
In-Reply-To: <20251022121450.452649-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BL1PR11MB5288:EE_
x-ms-office365-filtering-correlation-id: 9e1ea72d-d632-4e98-a6c7-08de12060db8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?cytUcUZmTWJqbTRqK1VXYW5BRXQ2TFNLRlhCUG5zZ1VOM3pIcis1eVFSR2k5?=
 =?utf-8?B?Q0VQeTlqc3ZiTlRFU2c1cU1qNTNNRXp0WWxGWGtpRkpQOGlyeHRaSlN3eWU1?=
 =?utf-8?B?MUhwazBzYVFxajNhZkJOTW5mWXlJUmJrUjJTdnRqcDBSZ2taeEVXRW5RMnNr?=
 =?utf-8?B?ZitoUkgzanJxOHlma0Q0dkl6TTRTZ0xzKzBGN2QyeXNsWm5WZXJ5eUtWNnlG?=
 =?utf-8?B?WWlieWF1YnVZRTNYYUt3MVNObEZtRzBNZWZYMTNlMnBZWWVDMm1MYk9EV3hW?=
 =?utf-8?B?cmZ1OW92QnZiQnZKRU50WlNUZUI2SUpId09Ba3JCVmw1QW5UTEhmbHYwcVFi?=
 =?utf-8?B?VnBOVHY0ZGRvUnkzSlFqT01scnN5MVlySlN4OGt5L0d6SWlLaFRxY3lGS3J1?=
 =?utf-8?B?UnJvdVBJNW9kaTJiNjhoU2JFaTFpZHA1RC91cjJ4b1huT1ZvWHR2UHVvNHpC?=
 =?utf-8?B?alVlYkd0eXlyVm1kSXNlMlh2aG96cVU5dGZmbGFZcnpLdmcrdEJmZFNaMUJl?=
 =?utf-8?B?UnVobHNyZWMrdFlNVjNLT3dycksrVlVEWDdEcTd5bmIraVpqZXltdUZTdjV6?=
 =?utf-8?B?UTJtbjFaeXlZUUVpVUFVVnIyYmtjcDVSTURzNUxpWEdNQW9HaUFHTXI1SUg5?=
 =?utf-8?B?S0Jack5RcysyWWFFV0xHV1ZadTVLOHNOZm55WUpKdEMveXBML2J5OWJkNjR6?=
 =?utf-8?B?MnhiTXh6ejhmQUpoN09HbG1VRGVCWHJOQkdzN0dvay82emsrckJEbkY2WFZw?=
 =?utf-8?B?TEpIWkhvQzlRN0FmTE10MVZFYllocGdjbTVlOVA4ejNjSnYxWE5jcGlhSTlM?=
 =?utf-8?B?NFRqenBEeUM2VnpoN0RnOVBCd2tncVkramdyUFV3aEJKaThReEp5WVJLaWQr?=
 =?utf-8?B?RWVBU1ZJd1NkcFZRdWY2cUZWTzJ4WXdkV1k1cnhxV0ZMY0JNQmhnY2dqbUwx?=
 =?utf-8?B?TjRudW5HK3YzTnd5TGFBOUVXck02ai9KZVlkSGlvR2U2eXhWOWFSLy9OczhI?=
 =?utf-8?B?bHFoR2h3WjlSMm5PL2l3aG93aHc2cEg3djhndGtsV3hOa1NSZ2ZKZi9udG84?=
 =?utf-8?B?bmZLNEZmRmhJYnh4NDY1UlZlRVZZTGk0OFoycDBDc0xrVUFrdW96NHNocE1T?=
 =?utf-8?B?SjZaRkp2SFFHV0J1a1hCSXNsQWRGQjF1ZTEwNzNLeHlwcDN3YnBwdEc1Mnhs?=
 =?utf-8?B?d0NkZ21GdXptTHE0bGdiQTZGY3BVZHFPdjh5QjdMb0NMdDAwdE9oMlJpNDg0?=
 =?utf-8?B?SEJEbnhSd0kzR3dRaDNtOVpRM0xDOFNmeFd6L2t1b284aVErYVgweWNpZWZx?=
 =?utf-8?B?bmVaMndQZVducEM3QW85ZVovK1pCVXczcVg3SVJIUUE1NXM4ZTdvYVNjWUxT?=
 =?utf-8?B?cEpiSWxqem9JS3VpdUx0dVFseFowdDVHYXBjOEVNK0N6QXNxWndRWU1YMTVF?=
 =?utf-8?B?WXRlZWNraEdJRHZJUmJDUis5Y28rc2t1Q2M5bCtvZnA5a0FKcVVyMXRQOXZZ?=
 =?utf-8?B?UW5McmFIa2t2WTdLcEJQUVZjS3kyTTRNVkZsamtDTEZ0MXdMdnFhUDNCN3pt?=
 =?utf-8?B?cGJPMmhzeGZyeEtOTWpFYzhKL1RXRUE3TVRYQnZqVHVkSHdYditkSW9zTkVJ?=
 =?utf-8?B?QWF4UHZLeEtsaktsTm1HQkJuci9TQUV4Q0NnT3FaZjFyTXBNTFpjNEZEOUZu?=
 =?utf-8?B?OE1hT051a2RSVmJ4RDFIUDhkMHZFQnEvdWpvS3dKc3l1dzN1ZWlXcGRSeVR1?=
 =?utf-8?B?bm1TODZJZWJZWlBoNjEreG1qU29HSEQ5cmUrRjZzL0hYSlhIL0ZyK1EvdjF6?=
 =?utf-8?B?eTZpWmJ2V2J0a0N3Y0UzeWphOHFnUUFya0E1QnloLzByRDcxdkJrVmlGckxS?=
 =?utf-8?B?SXh6K2l1RXJybVR4eTBia3M1QU1YMlEzYjI2MjFoS25tTmlkLzUwaFZjTUha?=
 =?utf-8?B?cWF0VG5GVEh5NmVBUm1udzh5aWx4czlUeGRwMmt3RHVIdUl5OFVpL0ZZcXJY?=
 =?utf-8?B?dy9zaFhJRnlQNGl6c1hKNkp1TEF1cTZBN0k0cWNNQXpMWUk5TEdkSTNQWG10?=
 =?utf-8?Q?XFJmPx?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Zk5OclRpVlRKOUNTZEQxS0hIVy9VNGcvUk9jOS9Eei8xV3R0UDNBL2pySEla?=
 =?utf-8?B?dytIM3dtbmJmeG5tNVZHS0gwWllpTHlLSFpaaWF5U0lNSm94QjJXVXNabjRX?=
 =?utf-8?B?akxyRURyb0ZBNU0wNU5CeVB0dVhQcTJBOXRTelJoSXkySnlzRGNzMlpLb0RI?=
 =?utf-8?B?Vk1CbW1vYzd0ZGNDSDJOdjRoSHhKeG1MMzFmemR1RjNTSHpDZ3c2K2l0d2Qv?=
 =?utf-8?B?N0lIa2pkeGlyaWxCdkluN1FWT2RhaHV3aE5ZNndTbVNEakJlcE5VZ0F3V3BF?=
 =?utf-8?B?YnVZTlZ2bUljMXlKOVVqZFphdUpRaGJhT28yUmVsbmdXVDZ4YUZLZFhHR3Vq?=
 =?utf-8?B?UFBYNXBHTjhzSUh0MFpTRldDN21BeW9YaDYySVgyM1NFL3E2cHpjMTNoOEo4?=
 =?utf-8?B?ZnFoNnduTHFyQzcvQWtlUVRES3puSitjVHFRbGpQa1FJcDJFTXJUelNHeVlw?=
 =?utf-8?B?UHJrWVljYlIvUCtRSUhnYTRtQk42UjVPV0p0cEUxZCtqNFZZd0lTK2JWRnVJ?=
 =?utf-8?B?RzVYZjd0VTZnQ0RjNytXWmFmbnY2Y3FHNlUwQWlWeE04UWlMRGxvL3k2UW1N?=
 =?utf-8?B?NHRWNTVBVW90ZmdlMHRob0I3RVVUMU5INUVuOXpDa0ZFb1FNOXpkcGFaRndC?=
 =?utf-8?B?R1BuNnZBZjViWnBuSm9Uck9ocjlvNkp4em14M3YxUS83TkZFcE9nc2h1WHNW?=
 =?utf-8?B?eXpESTZVYllEeWxXWnh2UmNxN3VrclJUbkF6eDlwZ295TldoN0E5dXVoR2JT?=
 =?utf-8?B?dGVoS3VHendHcDdPaGdTWEhGYyt6ZVdoUnh0QUJQVDhWYXpyUlNXVHBKR05Q?=
 =?utf-8?B?VitFQ05hajRrTkNBdDlOSFQ2VmJtTFJmcWlSbEV0RHMxeXBoZ2MwTkhqc1B0?=
 =?utf-8?B?ZzJrelpHZTVibDB4K2MzM0Z6Vlo2djJjK2hIZTkyNzIzN2FNaHFMTmFzSjA5?=
 =?utf-8?B?aVJmaHkrbGhlejNiWkZENGRDa1ZsSW52bm5yNjJFdnZMZUwvTlRtUG03bVUz?=
 =?utf-8?B?eVlwUEhpdVlCZlkxZzlYcFpOU2xVRE4rSEY4WW93cmprTklia1Zkc2F0N2w5?=
 =?utf-8?B?eWpCWG1wbEYvdGlRVlFjVTVHcjNtNWFLRXZhZGhSYWdNSW8vUUxDeWtkWE54?=
 =?utf-8?B?d3MxUlRmM290SWU4ZzZDd1lPbUN2aVdvNXpIbERSVE9GZXZDQ0lYcUd1V2k4?=
 =?utf-8?B?dDZINnV0RlZac0ZYZFpMb1dMcjdPeDU0S2JRaVhWWUJlY0o2czRnamFVeTY0?=
 =?utf-8?B?U1dURWtTd2I3TUFQVHlCRzdwTHBsKzZldDJSditWb1Zkcmw1UmhtTmw3Y2c5?=
 =?utf-8?B?NldEK0pqQ2NOdnFIWk5BcHpZQU5vRnpST3hPQks2b0NaRFh6eHRJR1RaS2hO?=
 =?utf-8?B?S2piQ3lCVVNzdnJMS3VWQ0Q2Y1M2ZlVaSXAyeWRxWGhPcWdZL0I5cUUwb3Vu?=
 =?utf-8?B?TkI3TjFvTEN1ZldPY0Y2RTJsRFpWaUk1REpQTzRvV3R3KzZMYTFSYnlyTWk4?=
 =?utf-8?B?U05YSUhsK0QyK3VkZVhkNzF0NElaTkU0TmtZY2orc1pKVFVQYlV5Y1ZVVm14?=
 =?utf-8?B?LzczbVZvOU52WGVmbE0vcTUwTlhTYkg4WThWYU9VdjdzTHRzYlBWRWlDM0dq?=
 =?utf-8?B?MVV2ZjZqc1ZETm5vMHM3Zm52WFdMbTZ4c3pteEVJVG1qQS9CUXJVanhHSTZH?=
 =?utf-8?B?aWFvNEppOXdmcGZDbi92SXRGaHZHRVg3UE9ETnhxUmtmWGQxV09jeUh2SmhH?=
 =?utf-8?B?R2JKT2wrQVUvRFA0M0ZreFJTdkRWZW5DS3NmSmlCZFZLOHo3VDBiR3pDVUdF?=
 =?utf-8?B?ekxWcWd2ejNRMUloaVR1S0FsazdzV0ZDY0JEWVJiU3U1L1plakRLZEtwTDhs?=
 =?utf-8?B?RWVaaFhJQ0NqWndNUG5UVVdGQ2xNcEwrR0d0ZDY1NGtZb0pYRkxtQWtBaW5M?=
 =?utf-8?B?U0RDMnJSYm1KM043emdwU0VXdEJtK2c1V2IwR3AvV2xwSzdDZVk1anVWVzdS?=
 =?utf-8?B?a0JxWmpCTWM3LzdzRzcyQkVZOUNkL1d6dk9kNHd1YmQxQ3E3aWpPN1RqSGZV?=
 =?utf-8?B?SnEvNlhaZ1QvM2RlR2NHaHZibEZERFFyRW5BWWlybktjZURLN3pLa2FUWWRH?=
 =?utf-8?B?Q21lNVJJaTA3dkd1ZHBTMDZ2S3BKK0lzMTBjK0xzbXJReEZLcXVKazZDMW0v?=
 =?utf-8?B?dTZya3Y1UTduVWRwQnRSQkpIaitjcW1tOGRJNjh2Z3NsRStjcmUzbTRGVzMv?=
 =?utf-8?B?OWE1eE96TDUzM0s1VXVLN013bFZnPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FF7B28C8F207E941ADB2361576CFCFA6@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e1ea72d-d632-4e98-a6c7-08de12060db8
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2025 07:30:34.1971 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JRghY/C6g54qYKbKVG1Qe7tb79K2DN7gFJaWmZqFlyV8t0fyPCyHcRwhP9IRw2EfLPSCZ6pSPT7c1yZewzOTBEG738l7oFRlRuRGTIIhtNg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5288
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

T24gV2VkLCAyMDI1LTEwLTIyIGF0IDE1OjE0ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
V2UndmUgc3RvcHBlZCB1c2luZyBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSBpbiBpbnRlbF9mYi5j
IGFuZA0KPiBza2xfdW5pdmVyc2FsX3BsYW5lLmMsIHNvIHdlIGNhbiBkcm9wIHRoZSBpOTE1X2Ry
di5oIGluY2x1ZGVzLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlr
dWxhQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9n
YW5kZXJAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZmIuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxIC0NCj4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYyB8IDMgKystDQo+IMKgMiBm
aWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYi5jDQo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYi5jDQo+IGluZGV4IDM5NTg2MjhjNzNl
OS4uNmFkZTM4MTk4ZjM5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2ZiLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9mYi5jDQo+IEBAIC0xMCw3ICsxMCw2IEBADQo+IMKgI2luY2x1ZGUgPGRybS9kcm1fZ2VtLmg+
DQo+IMKgI2luY2x1ZGUgPGRybS9kcm1fbW9kZXNldF9oZWxwZXIuaD4NCj4gwqANCj4gLSNpbmNs
dWRlICJpOTE1X2Rydi5oIg0KPiDCoCNpbmNsdWRlICJpOTE1X3V0aWxzLmgiDQo+IMKgI2luY2x1
ZGUgImludGVsX2JvLmgiDQo+IMKgI2luY2x1ZGUgImludGVsX2Rpc3BsYXkuaCINCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMN
Cj4gaW5kZXggMDMxOTE3NGFkZjk1Li43NjVkMjg4Y2NlMmIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jDQo+IEBAIC03
LDkgKzcsOSBAQA0KPiDCoCNpbmNsdWRlIDxkcm0vZHJtX2JsZW5kLmg+DQo+IMKgI2luY2x1ZGUg
PGRybS9kcm1fZGFtYWdlX2hlbHBlci5oPg0KPiDCoCNpbmNsdWRlIDxkcm0vZHJtX2ZvdXJjYy5o
Pg0KPiArI2luY2x1ZGUgPGRybS9kcm1fcHJpbnQuaD4NCj4gwqANCj4gwqAjaW5jbHVkZSAicHhw
L2ludGVsX3B4cC5oIg0KPiAtI2luY2x1ZGUgImk5MTVfZHJ2LmgiDQo+IMKgI2luY2x1ZGUgImk5
MTVfdXRpbHMuaCINCj4gwqAjaW5jbHVkZSAiaW50ZWxfYm8uaCINCj4gwqAjaW5jbHVkZSAiaW50
ZWxfZGUuaCINCj4gQEAgLTI0LDYgKzI0LDcgQEANCj4gwqAjaW5jbHVkZSAiaW50ZWxfcGxhbmUu
aCINCj4gwqAjaW5jbHVkZSAiaW50ZWxfcHNyLmgiDQo+IMKgI2luY2x1ZGUgImludGVsX3Bzcl9y
ZWdzLmgiDQo+ICsjaW5jbHVkZSAiaW50ZWxfc3RlcC5oIg0KPiDCoCNpbmNsdWRlICJza2xfc2Nh
bGVyLmgiDQo+IMKgI2luY2x1ZGUgInNrbF91bml2ZXJzYWxfcGxhbmUuaCINCj4gwqAjaW5jbHVk
ZSAic2tsX3VuaXZlcnNhbF9wbGFuZV9yZWdzLmgiDQoNCg==
