Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B103AA002D
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Apr 2025 05:12:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78EBC10E137;
	Tue, 29 Apr 2025 03:12:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XycvOBa8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F88410E137;
 Tue, 29 Apr 2025 03:12:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745896358; x=1777432358;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=g3l12t9Xkp7stMFupqlMI4l6IFZkPqhivoebysFLu+w=;
 b=XycvOBa8cbqhjhHaUWwNFe8F0Ps3lGczQIbzje7cW3QgK0CfOrWWI7WE
 7pLvhj8p3IzMqFQMMoSTOgr6X98Vu3L/kQHrkWohnq2gptvI+nXO9TVSY
 /Eg6yfBhyRLXY7ccGjFCxcnEJ5AKNZVagfUf+VPjmquO2DeytWWYg28CV
 3RwBfWMRfNmpxGoYd9ZATzdGY/NAEjtm8u5s9hSAZCMj10P/IYIqGcqs+
 p0nBoLf9G4b9u9dFc3flaNeIOa8vSlFTcvhHsNpp8LBCHANdSbZWzCVew
 wwKSZYjCIdx9nSsmd+RquKl48PjoAc8b11Gq1VQ+Qex4yQjkuPulX6glO w==;
X-CSE-ConnectionGUID: 8phx/7DPTWC/0sysLRiBtA==
X-CSE-MsgGUID: qKQDbwSrQraJQyyL5d/J2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11417"; a="58871842"
X-IronPort-AV: E=Sophos;i="6.15,248,1739865600"; d="scan'208";a="58871842"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 20:12:37 -0700
X-CSE-ConnectionGUID: w+4ucErxTHKAcSakYoHYOg==
X-CSE-MsgGUID: mTWBFhXSQo66Lie3AA96FA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,248,1739865600"; d="scan'208";a="170931401"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 20:12:37 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 20:12:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 20:12:36 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 20:12:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Iy8+Xozs4J5FNBj46WG8J1/ZnhaldSeGWl8/5BlYkRhhkU6mWy8oCIhFsDTj1UX58czFv8MXsieUzQ8Sz4PO/KBHytu6MgbGfJptfNThHc1R772VUD0cTujlUKsXj7cShi2ncAKJFe3Rt4qhggP5lLm/LmV8I60bmd4IsfYDnjD6t+OFgFsh8wzEmN09W6/rOOjH9WfEwhRs2GCRonbmjELFhcntNoIXASQREL/WYb9UqLKsZq0j9FrA+hFXFzffVMHBSvOiuSQrBrMwYEDSz+i7sN4ABrpN6bPA9JniSq/anPgB7gTm9hXrOOVoN0xrRbDwqLU6BE75fj+r/NQPUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nEYaMEE2fFRdwpBde1TT8KtMru+9C5wC/7EjjMh2Z0M=;
 b=AxZFAU8MHRtx1yk6qFnApcujzNdVICoKY9G3sfUaxr/zfhyC5A711AmU1FjtGdeuc23KnAj+7TKlX7XMeDpQ9KTRmhTPA9i38BG9dgEzZYKllWKFIIK7TyOsFkFZcexC5KasWahSeSIFmh+AtKnUzijXW2xr+8j8qnmE9CadniltVOw5gBUNwYpP9pvVGPS19N9P5f7MKlHmNISNr3/p7WAJ6hOMUvZ67lyFCS2Huj4cB3SL9L7SO30K0wMuXjHxhGiWYvZxH7HsqFh7FyTvJaTQVQqvt/He16hLY4NF81fd7gmBMkWPfpiISUkKoXfn6Pz3vcp8yvmhszDiJ6V3kQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV8PR11MB8772.namprd11.prod.outlook.com (2603:10b6:408:200::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.27; Tue, 29 Apr
 2025 03:12:20 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8678.033; Tue, 29 Apr 2025
 03:12:20 +0000
Message-ID: <8b0c7109-3e7a-4424-af8f-58446fcac25f@intel.com>
Date: Tue, 29 Apr 2025 08:42:13 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 09/15] drm/i915/vrr: Write DC balance params to hw
 registers
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@intel.com>
References: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250428062058.2811655-10-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250428062058.2811655-10-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXPR01CA0103.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::21) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV8PR11MB8772:EE_
X-MS-Office365-Filtering-Correlation-Id: 9e9c37c1-b724-4ea1-e446-08dd86cba76f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U0tYS0swMGhMK2FlclFCTHhobmI0WDBuUjNPNXlsSW1jVjQwdXBkTVlVLzNq?=
 =?utf-8?B?T09ncDI4c1haQW1XRDdwRnV3Tm9MY2VqcnhXK1lzbGhoaG5yWnNvN3hSalI1?=
 =?utf-8?B?MVQ0a1o1TGh3NXc1b1lhQTVkeEJhRFFLMWc3WjltYWlqNGZVQzg0ZjZ4US9J?=
 =?utf-8?B?eGFZRnNXQThjdHBOdXhacE9lazlZU0kraHN5c1BycEx4YlJXWEkvLytqV2Jw?=
 =?utf-8?B?alJidUttS3ltbmNPZzFlZ1h3UC85SW5ZcmxaZzRSbUlqSWdmajBZMXNXeDIy?=
 =?utf-8?B?WlhKZndSOTQvMXVPM1E4RU1oR0pMOGZiUjBYY0RiMmZ6RXNSTUFQTkhNRWQy?=
 =?utf-8?B?SmoxTW1FMkk3SmsvdW9hVms3c1NJeWp6Z1E0Um91cVpQWHFsTytuaWppWWFW?=
 =?utf-8?B?emsxSE9obFl2L1ZKWm9oZkQ1dXUyRGNLdVkvRjBXekNMNlU3UEdBMFdkeGdw?=
 =?utf-8?B?elpVSk5XaFVHeXRWSU42SjkzNUZaTGFRY0VxWE8rTlM4YVdCeEg3OEY5a1I4?=
 =?utf-8?B?b2ZFd2k0Y1NSdmthcitKcmlmeGsvVHkvbkFGSmhpSXpNQitiSHFoZ3poT2No?=
 =?utf-8?B?cHdQeGkxb2x6SGFZbzU3YThaZDE0NTl3aTRHL2lNLzFwRFFmckp4L01OcGY2?=
 =?utf-8?B?OFBqbXhwbHBXOUpwR2xKck1EMCtHUFp4RGVzQlJyM2huUUdlV09MWkMzZmFI?=
 =?utf-8?B?UWNnRnN2K2EvcmJPQ2IwNE9FRmhRMjdocng4eGZTc1FOQ2RkZkh2WExMRTQ4?=
 =?utf-8?B?ZG1ZaXNkVmxhemhZYTFXT1lURk15ZEQ2ZkpndWNoaTc0Q283d01VTFVvY2Nq?=
 =?utf-8?B?Y05LVWd1UE9ZTFBDd0dXZi9jYytEcWMyci9CeXV0U2tmckp1MVI3V2RneU1T?=
 =?utf-8?B?T1AvTkJvOFdMVCtJbW9aUk5CdFdjcW9yWDhxWTdDNXdqcXRDZTR6d3c2dThI?=
 =?utf-8?B?d3p2MUk2TEJlRHh0YWhGRTQ0QVVQRDd6cHovNlhKYVVka0FlNWtlNStkQ09u?=
 =?utf-8?B?Z2RuK25qbXR3eklwTUs5L1BmODVNY2pLSXBSZmJTUTUyQW5yK0ZXd05OVWlr?=
 =?utf-8?B?dWNsM2FrSkVxMTdaOTJtT3duelR0SHhYOVRFWlRmZkV1N3VRcWQ0K1E2YVRL?=
 =?utf-8?B?bm5teDhaS3BDbkxGRnVlb0pRMFFYamN0c1hSTTMzck5lS3ozWEdRSVNtNUdN?=
 =?utf-8?B?VGtLTUFONDlTaVArQitmZjh3UURBQjVUTTVKdUhEbnVRbjd2MVU2ZXpRYURR?=
 =?utf-8?B?SzJja0V2SUM2QkdSbTJQTkdNZ25tbURwWVhGY0RWWFg1M3ZDSGN6TUhYenha?=
 =?utf-8?B?NTNxSUVwYmNrYmFreGN3L01sa2pIcEk3NktOV1VPVlY0MDV3eGhvUUJ1cW1Q?=
 =?utf-8?B?TFMwcE1VZnhJdGN1Z2JMOGxiM29XcERtWmc5cjFqS1dzRUJKaG5QSnNiV3N1?=
 =?utf-8?B?VThwMC9OYkllblQrcTJ4eEVid25XQWI0WklvZzJzWTJnZUdnMHB1a09RWE5i?=
 =?utf-8?B?MVB0NVVkbjdWWm0zZndSa0pjOTlVbmk3SmVoTUpLMFU0cHVzTGZzWUpuamNq?=
 =?utf-8?B?MC9MMU93blBpeTFhZGtTMmVyY0JJWUc5aHp6YjhsL1VVQlhzbENqbDh2WnlI?=
 =?utf-8?B?ZERUaGFlTGJmWDg2a3ExRU9XNFhIdXNiMS8rRHhMUFd1QmxtZXNoQ052Q01T?=
 =?utf-8?B?UCtHUmZLbDloQURWRFRUUWZiV3R3VE9zbWZNcWZLQitlRkNGc2xyL2llZ09n?=
 =?utf-8?B?eWswaHRsZ0hnVitmdzJxdzNtcUUra1RHRk5yOEhQM0p5SlZCZXVaVmlkNDNE?=
 =?utf-8?B?OHhSRnV3aW5uYmZPeVNwdm0vRWtqdGZDaU9EOWduUFFYQWZQaGxFUGtBQ3la?=
 =?utf-8?B?UzVFNGI5ZDdqQ1Rhd1N3SktjaVdYbHdhd1kwSVVPOE90VEdmQUk2N21wcnlz?=
 =?utf-8?Q?/0gLFfGy3no=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UVg4RVBZRWR0L3k1T1NzWW1sdGR4YWxnekU4VFJFQnJDZHhhcU1vVk9IZ1NU?=
 =?utf-8?B?djN6dEJLdFUwSGhONFhNUU5odjlGUDVJSU45YU0wY3VIWGlQWW1UZzNFeDEx?=
 =?utf-8?B?b1NVK3lmdlJuNDJmVmlvUWFOVUp2VUJMdGtGSnRVRW02bXp6RWEzRWtaNXJv?=
 =?utf-8?B?Q1dHcHRSM3A2dmxHaEExTllOb3hrOTJlN3BBYitBeThvb2MrL0xpc0Jndzhj?=
 =?utf-8?B?cGJUUFpOU3dVcTRNN0dxOXhhdWNVcnAzR2YzMFJ1cXhnTjNlZU9ibHl3WWFm?=
 =?utf-8?B?d2ljNVR3S0NxYUtNOEdwVEgzbElxVjVmSlBVWUFsNDF4bHREZXNDWm9wMDR2?=
 =?utf-8?B?S0lGbkZQV24yZnJtUm9EVzU2ZjYzLzVWeExOelpMazltZHp2dGFmdlNYeTVS?=
 =?utf-8?B?cG1QekE0YVRQZVlTa3FOMTM3dmZrREY1eDRpR2djZ0lCbXkvR0hFOWRuTkxH?=
 =?utf-8?B?TTdqOG83SDNGeWpzZmtycWY0cDhKY3BuWkNFSHAvY3NJMXdpMERRdXZmUDBj?=
 =?utf-8?B?WXRiaXY4UmNhUHFUd3lnQ05HdjA1MW5PNjM4ZmV4ekdRSFFueXUyYTRrd0pT?=
 =?utf-8?B?WmEvREdaVDdvcGpOamkwa0c3YkJjMFVxdmNKK042NEFHMUc0a1N1TE9aV2Zr?=
 =?utf-8?B?NDZCdWRCTGZPSmVvOFluTzRNNytPMWRVMVpMemlxTHFJRkozNVliaXcyWUYr?=
 =?utf-8?B?RFV6dVBROFJobDJJdzRoUk1uNGVySlVaUGJnQzF6TkxoblJtcXZHSnVkQnlx?=
 =?utf-8?B?YzN5THhVaG9IallTcG8wUjR6Q0xHYzBHaFoxTlVENGxSRktiR2Z1YlBXWFRj?=
 =?utf-8?B?MFdERnZXbVhORmtFMXQxTTVpUWo0SXp1eFp6ZUdlc0JTWWlYUmVHR2Q5RUhN?=
 =?utf-8?B?dVgrU1RNaTVvK0Fndlhpcm84ZU5YSDlsMTY4Y1ozU0hVQWUvdktnSlpQdjdL?=
 =?utf-8?B?Sk5nQm9jeDZrUUxIay84RmdjZExyM092d3lzR2JpT2hxbmx1UFlKNWxockwv?=
 =?utf-8?B?QXNuby9ocEVaQTdBVFBIQ3dOQjI2Z213TzdHZnZKZCtKbU9kN2FxUG9RenpL?=
 =?utf-8?B?U01qc3dWV2ZHb2xuUmwzelVQN2M2bnBYRXFlNTkvY212SUZ2U2RiUkxUbE4v?=
 =?utf-8?B?Y2FCSXJTQjVpYUNzcys3bGpUcG1SOS9VdmlwaWxHOFY4cy9oRVRKd1FQRnhL?=
 =?utf-8?B?dUNldUJXVTVRMmpYRWN5WDJGelh0VHIyUTg4cEx3QjlSRWxEZDN0UTJ5Q2FD?=
 =?utf-8?B?N2l6c1kyK25uUldqaEk4a0JoQ0pBM3hIRFlIUHFYN3Y2TTlhQ01FSTlVQ2Ra?=
 =?utf-8?B?S3pYaEJDNWRoM2Q4SFhJdVpYSFR2WnBGRE5uTlVwNEdwaXVoejFlODhwWGds?=
 =?utf-8?B?c2pBeER2SHc0cmRZKy9QYVlON2tpY0V1akVyS1gzenJQR3VDa213MGdBc3lS?=
 =?utf-8?B?NUh0S05Cc1kybTAvVTZYVlVpNmNlTHdHUWs1ZE1YS0pnWnZQZ1hSbjJuUEVP?=
 =?utf-8?B?VEhjNG9ENjFkYmlXdU1NcnVrL0VaS2dTZWRsVEJBcDI2OHZXVGs2aHUzOVl4?=
 =?utf-8?B?cjUzUS9NUzg3U2NoQU1CMUtaa20xdkE0alhNa0QvMStJa3YveDFibGNCU2tJ?=
 =?utf-8?B?VlYvUGtVWUc5UnhQL0NNaXBVakcydWdYRThITHIvazlIVUUwRjFRY1RTS2Jn?=
 =?utf-8?B?RFZ6L2p4KzRxVm9nTHNubVJXSWNlazFTL0oyNkZWQUxZWjJ2cVlFV0lLY25q?=
 =?utf-8?B?WW9DZlcrUG9wNnRncmxDM29vRzZkS1h5b0pqKzJ4YnBjNTBkNlpOdVBCR09Z?=
 =?utf-8?B?SnZPbVUrclkrejRDVDBNVFhxeXdrRVJxc3dXK0NoWTJJWEVmUWxUN01HV0J6?=
 =?utf-8?B?UjNtWlhYUUJCYkQ3ZjNZZkE5SC9NQ1VLVzE3cTdjUmY0UTRDYmgxRFIxNktR?=
 =?utf-8?B?Z1VtZHhqR0hITXR6OHpjYWliS0w2WXlFZnFxTUtXaCtvdnRZNlVBbitlUUxL?=
 =?utf-8?B?b3N5N0k0WlZLUW1iRWFRc1IzOE9JdFdQVk81WTFxVUE3ZVl1cHVVNlVMdDZL?=
 =?utf-8?B?bm1DMzFzZ3g0SFZRL01RaXduT1ZmT2F4d0tOYnp0UWVnTFlzY3lPWXg3VE1l?=
 =?utf-8?B?ME1NbjNnaGYrYVoySVVNYk5UNmdxM0pBSGU5algxYXhTaVVKNUg2WjdzdHFi?=
 =?utf-8?B?R2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e9c37c1-b724-4ea1-e446-08dd86cba76f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2025 03:12:20.3666 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RxVyQxKeDTn2dBz/Qcux+rmp8rHCnnhTrOCDdCvMQIVZ0NKlJKrIANlUfMV9/Wd9wY7Jg+ZtT5UPMJHrLJAcY00haVVs67L2N9m8wGxAM8g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8772
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


On 4/28/2025 11:50 AM, Mitul Golani wrote:
> Write DC Balance parameters to hw registers.
>
> --v2:
> - Update commit header.
> - Separate crtc_state params from this patch. (Ankit)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 28 ++++++++++++++++++++++++
>   1 file changed, 28 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index bc99701be2b5..54b91c2a0a87 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -627,6 +627,23 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   				       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
>   		}
>   	}
> +
> +	if (HAS_VRR_DC_BALANCE(display) && crtc_state->vrr.dc_balance.enable) {
> +		intel_de_write(display, PIPEDMC_DCB_VMIN(display, cpu_transcoder),
> +			       crtc_state->vrr.dc_balance.vmin - 1);
> +		intel_de_write(display, PIPEDMC_DCB_VMAX(display, cpu_transcoder),
> +			       crtc_state->vrr.dc_balance.vmax - 1);
> +		intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(display, cpu_transcoder),
> +			       crtc_state->vrr.dc_balance.max_increase);
> +		intel_de_write(display, PIPEDMC_DCB_MAX_DECREASE(display, cpu_transcoder),
> +			       crtc_state->vrr.dc_balance.max_decrease);
> +		intel_de_write(display, PIPEDMC_DCB_GUARDBAND(display, cpu_transcoder),
> +			       crtc_state->vrr.dc_balance.guardband);
> +		intel_de_write(display, PIPEDMC_DCB_SLOPE(display, cpu_transcoder),
> +			       crtc_state->vrr.dc_balance.slope);
> +		intel_de_write(display, PIPEDMC_DCB_VBLANK(display, cpu_transcoder),
> +			       crtc_state->vrr.dc_balance.vblank_target);
> +	}

One thing that I missed earlier is that these registers must be written 
after we disable VRR mode.


Regards,

Ankit

>   }
>   
>   void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
> @@ -637,6 +654,17 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>   	if (!old_crtc_state->vrr.enable)
>   		return;
>   
> +	if (HAS_VRR_DC_BALANCE(display) && old_crtc_state->vrr.dc_balance.enable) {
> +		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(display, cpu_transcoder), 0);
> +		intel_de_write(display, PIPEDMC_DCB_VMIN(display, cpu_transcoder), 0);
> +		intel_de_write(display, PIPEDMC_DCB_VMAX(display, cpu_transcoder), 0);
> +		intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(display, cpu_transcoder), 0);
> +		intel_de_write(display, PIPEDMC_DCB_MAX_DECREASE(display, cpu_transcoder), 0);
> +		intel_de_write(display, PIPEDMC_DCB_GUARDBAND(display, cpu_transcoder), 0);
> +		intel_de_write(display, PIPEDMC_DCB_SLOPE(display, cpu_transcoder), 0);
> +		intel_de_write(display, PIPEDMC_DCB_VBLANK(display, cpu_transcoder), 0);
> +	}
> +
>   	if (!intel_vrr_always_use_vrr_tg(display)) {
>   		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>   			       trans_vrr_ctl(old_crtc_state));
