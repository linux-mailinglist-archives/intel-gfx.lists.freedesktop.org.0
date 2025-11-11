Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2519C4B79B
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 05:44:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38E5A10E319;
	Tue, 11 Nov 2025 04:44:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HPjkO5qo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DCE510E319;
 Tue, 11 Nov 2025 04:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762836247; x=1794372247;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Oy0CJjt4eZxFMRQyNt8bBkU99QlGisVexJbOaIxHH/0=;
 b=HPjkO5qoF21D614DtP8CwyrPcOGw/g7gkZWRnxZSUxJb6+Se5S4mOgi5
 RZ0qBPkRduPP9eNPNjf70MEc3seMRNHQwNY6UqBJ2mYPc3TsB6vnAI/8o
 EGbbbpct629KHSwV5X6lANBIA6jeil+UBIXlaCLePTQaLmp6ZWN8QKUMs
 1eQf4J9GH3vuYk1xrvlv/s88zoiONZH3j8QTmQWLfR0CAWLTbew55PKae
 tN8OGOpnBzgxcGMe3KsMRTRbryZlAeVsxe0LY34dTlJ9AhDutyvuTbYQg
 Hqkm2ZYK07qoWmNtMuJUUfe4EcHk95jIxequDY5IZJq3XWotNfGzPOLuI A==;
X-CSE-ConnectionGUID: 4oTj5ATwRQiFTGBIovbUnQ==
X-CSE-MsgGUID: 0IIACPEwTqChXzOlpgKukg==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="52451641"
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="52451641"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 20:44:06 -0800
X-CSE-ConnectionGUID: jXS82Z9wQk21dSdlnaj/dw==
X-CSE-MsgGUID: gKxXnf8WR+qdgg6QV3p5MQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,295,1754982000"; d="scan'208";a="188189024"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 20:44:06 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 20:44:05 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 10 Nov 2025 20:44:05 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.45) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 10 Nov 2025 20:44:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FGtzvWj5xNmE8huEnI02TQoLW9xbhKHUfAWd7HN4v22t3qLdIgVVIxkyrYS7k0EPLCchX3od7wgp4/hpIN8OhwOryuLzmiIVrAjLYknLW9TASxWd7ERp1/n06iuZ5iZGJ6C+Wv5ARbH5lZhwjUzybKMChjBz0KhUp2w/rSdLMJ5NYvgksCPgmoP7Ymj1Von5m/w7B18Bmx49oTz1fkYfqBtbtQuqhTC0Ro/y9awo+P9GLvQrkwaEmwirFnvRnM0/OZV5ghBJ2FuQS3YWSYkOVMXShHBgCtP4ZnCSoDNHdI8tUARn0zxRPlemjvIMh5Jkwo3ErR95Bw+TFiYBLaE8kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Oy0CJjt4eZxFMRQyNt8bBkU99QlGisVexJbOaIxHH/0=;
 b=ccZQaB8yACcAhrUvbztKBvYx+OlxhQKcKjaFJShwBmco5qLuPXdWD2LnEHh+rCJUuUZcCv9fGdkogVjxYCSocPmNHwchXj5LB3ydbFqukALB6aQxWAEAniOHEqyHzkWkDTvReWmyWUsmY+wQ02ew8XSNJTUCh6pfPsygREP1r2ceFpi0A/tio1Os9PHcm8auMcn4svYl9a8rWTbwkZ3VUl+JKDeyrFE14K5gtuo9EuCVFB5KI8VWhQing/2rlyEu7miORnKCzecZ+MD6SAHjEr2rwu3qXxXHy238YMn4fKv9xTPK0fkqjyZ8JJYDKiSH8FDl13S7dqIEaspIgFjrLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8937.namprd11.prod.outlook.com (2603:10b6:208:57c::14)
 by CO1PR11MB5059.namprd11.prod.outlook.com (2603:10b6:303:9a::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.16; Tue, 11 Nov
 2025 04:44:01 +0000
Received: from IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3]) by IA3PR11MB8937.namprd11.prod.outlook.com
 ([fe80::7fcb:5ca0:942b:bfb3%4]) with mapi id 15.20.9298.015; Tue, 11 Nov 2025
 04:44:01 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 12/16] drm/u195/de: Replace __intel_de_rmw_nowl() with
 intel_de_rmw_fw()
Thread-Topic: [PATCH 12/16] drm/u195/de: Replace __intel_de_rmw_nowl() with
 intel_de_rmw_fw()
Thread-Index: AQHcUmoXksct83JKeU+f4U0Wi9QVFrTs5pgQ
Date: Tue, 11 Nov 2025 04:44:01 +0000
Message-ID: <IA3PR11MB89375C5C44A36E189BDCCC1EE3CFA@IA3PR11MB8937.namprd11.prod.outlook.com>
References: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
 <20251110172756.2132-13-ville.syrjala@linux.intel.com>
In-Reply-To: <20251110172756.2132-13-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8937:EE_|CO1PR11MB5059:EE_
x-ms-office365-filtering-correlation-id: 7cddd0fa-3334-4814-7c8a-08de20dcef7e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?UXZ4aDViQzBZemtLd0JpdzhBcUdCYzRvbnROYThrQUgyNVFhQXBtM0kzR3RV?=
 =?utf-8?B?andPSFVleHY0c2ZQdHI3c05IdW1UWmpQZkxEdnUreFVBc3hUQWwrbzJUbEVm?=
 =?utf-8?B?NDJzUnUxdUFDazI5YlNLbGx2ZmJhUzFXT1p5U0lTaTVkQ3M2dUxHY1AwcDlq?=
 =?utf-8?B?RlJHS3FOZG1ZVU1ZYzlPK0xhOFB1b1A4YlE4WW5UblVyR2xSWWlneDlsRWMx?=
 =?utf-8?B?bUcrVkV1RUhXNXFaM1hPUVhWd0RlSE11UGRqTUNKOWRxNEVybm00MlN0RE42?=
 =?utf-8?B?YWlOYTY4azFQcXpaNURrN0dQQjJVT1l5bHRQUGE5UHFQNlJvdHRCOXJFRklB?=
 =?utf-8?B?RE1NQUFSZDcxUzhZdVBGUzJZVFJRdERFUVFMSW5SSXYwVDFjSnYvczZMYnJm?=
 =?utf-8?B?bm9zeUZQYVJRN25FNk1xNDBIa2Z0aUVZamFqbHZhWHJKKzVzeG5MdjdzbW5O?=
 =?utf-8?B?dldXY1NKS2dVVGl5enhQaG9aL2F6VExyUzR6N1Jkc2dQMEM4VCtaMEFOZWZh?=
 =?utf-8?B?alZFZmp1Ymd6UVZRT012K3dlNmE5c2FnaGkzSnZzbzkvby90SDlIaE9PbzEz?=
 =?utf-8?B?Q3dra2JqZUJwSktaWkROcVV1VUNsME1VSGI3aDZieDI3TTdoS29DSTRkMHY0?=
 =?utf-8?B?OHNVT3ZUVUxRR3lEbXA3elEyNzYzbkNZaWdTZDlkbzJKaWM1eDlDUW9FZEJv?=
 =?utf-8?B?bmJ4QU5WbkdSRGlONVl2cTBPQ2xIM1kwVElIN3pkQTl4VnVwU0N4UmFHdUhZ?=
 =?utf-8?B?UVZzVm5BejcxRDBoN21veHk0dUdTOENQVlJRc3ZkdUNSOG9TYndLM3k0MUo0?=
 =?utf-8?B?QnQwaXc2K2tHRXpuaE5oQnRhVW1LVG5GdGFUbVBFN0ZTTmg4eGE4NWZkUUdO?=
 =?utf-8?B?aC9lRld6bkdnVmNMOVUrUWVDZjlpSWc1WTBjclJveE92ZUdzMG1qS0lZS3NS?=
 =?utf-8?B?OWk5VDNSb1F4d2MzUlExSVR2K0ZMNVZPOUNRM2FSN2hoT2Jpa2Jvd2hVeEhj?=
 =?utf-8?B?ZlY2KzNSaE9wZ0dyN3FwVi9JTHFTSkYvNGY3Q3VTd1prQlFrd005cSt1UXNL?=
 =?utf-8?B?UWVpZ1JVU3ppNXd1TVI3SElrejdPQzNTUXp6N2tpMFVFYWs0dEFzeS9BbEQv?=
 =?utf-8?B?SXR5bXZmTFYwQjk3YW1ibGxKL1RsYm01VUFHKzNEVnl1SGNwR0M1Y3J0Qisw?=
 =?utf-8?B?dDBKYWhSMmNVYlYvTzNnUk1mbllXVTJBWnREMmE1YjVoT1dsRkRTOWlZWUR4?=
 =?utf-8?B?NjAwR0xDS1BvSTE5VFM0QmUyVFlMR0RFeERDY2s1ZE51S2ZxM1lscEhGS0VW?=
 =?utf-8?B?WWRENUZJbnIwMC9jYkJaSWIwTFBienBLMlJUY1dWNkxpTU5jMWlnV1NiMUd1?=
 =?utf-8?B?ZTZJMlJDTGJ3dm1wcWhsbW5KMkdsUlhaK1JsSW9GS3VQaEZ3T1hiOTFVQjRv?=
 =?utf-8?B?ZE5PbnlVR2trYWxER1FsRTE0a3lnOVVZemlzNUlJUnd1dllaV0Y3Vko3K1lY?=
 =?utf-8?B?WW0yeS9ldkk3RmkvWUNHZnVFVERlYUs0Q0cvVWRkRFRGQk9yR281UitEY1Mr?=
 =?utf-8?B?YjVVbGIyRmI0S0txT1lZT1RpeWpJZDY5aFlzTzYzaHZrN2FTdmY0VXFkRzU5?=
 =?utf-8?B?bWYvVlJtNEE4dGZjOTdpcHJFakI0QU9pUWVJb3RWcGROQzVJMXpZWVZ3aW1m?=
 =?utf-8?B?ZGlMT0dSaEtzS00rdXBzR0VhMy9Na3dtUHo1QWZldnV0ODRUUExvTGhKdkMr?=
 =?utf-8?B?d2FBKzI3T0pKQUJHQjNRdEdld0tObmJvMVBsWW8vZG9JSlVqYjFBOCtYcWIx?=
 =?utf-8?B?N0xDVG5pUmVNZjlKZ0FFcUhnZWUwYmhqVWVqRkk4Tk1GRzNTVzAyd2wrNEx0?=
 =?utf-8?B?RnMvSXp4Q0NscGdpTlp6RXh4MHNsQUNIOU5oTkx5ZW00NjkweFJveEtPVlAx?=
 =?utf-8?B?SzlyNGRWUURlVHgvL2krN2YvM2t2UkxkTzNySDFTK0NJcUVJVkloNDFqOTNw?=
 =?utf-8?B?Rk5maTN5Smw1S3c2QUZhZUp1dnE3cHBaaG40VmN6TytReE5lTm93UGtFMHBY?=
 =?utf-8?Q?pfc0QJ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8937.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L0MzUXgvRjdYTTJBaTFWTC81a01TRkFZUElOT20zQTNFUkJidUFhem9SVWIz?=
 =?utf-8?B?MnVBZ2JMMTN4YWZ0VUlMeW5Zck5idktxRmJvSTVtOFNkUDRYSEtxZ3VSVzdQ?=
 =?utf-8?B?ajMzRHE5NHNvSlcxVi92S0JMSFV0UWpId3hKUW1NSXdHNzNldTdGTzVyM0I4?=
 =?utf-8?B?b250RXdhdXBON0t4ZHBsNUFPT1ljc0pDYWVISENxbmd0Wm1DYnVESWhYU0cr?=
 =?utf-8?B?THRRVVFjMXl4SVFORnNVZUM3aG9aaG82TkVmakNIWWU4L2dmWkJlM1M0eEpZ?=
 =?utf-8?B?eEtRQko3OXdDMTlBYXUzSk9zWWNMSmYxeWJDYVRMSlZoODhSZzcwdUhoSnlw?=
 =?utf-8?B?TUwxYjM1RUdwQWRmbzJaWUo0RGYvZzNsdHMrUVNaN3RSR1ZNYWFlYjN5OUhl?=
 =?utf-8?B?dEZsUGhXa1FUT2dkN0JHT3pTQnJKWDk5VlBNQnF3OFNtNEtlU0c5MmNLU2xZ?=
 =?utf-8?B?SkFLcTVkd1gxSVBOTXR1aWRwTXB2SWpyM2Z5ZzNYaEJ5UnVrVktCck1XN2lV?=
 =?utf-8?B?YUFZaTFrdGRwdVBuYVBVV2NhdWYrMThaZXB5eDVKZXRwQ2YzWlozMjBsUG8v?=
 =?utf-8?B?Vk5CSmM4SGUrVXBqSkNoVy9ValFSN2hHZzRZMjNiSnlDYXhGeG44ZWtZUmZx?=
 =?utf-8?B?S08xbVhoNDM3T2pVL0lsazMwSU80RS81dElqSDRUTEZPTTBNQ3JLR1hwQ3Bj?=
 =?utf-8?B?Z0JCcUtnNkQrbUxiS2syVTU4RFFraFo3K211Q1JMdkpkZ0s1NnJWbWhINzFk?=
 =?utf-8?B?Mm1KNU16a2VIWkMrSzYwSDJpVjdGeEpyQ2VCakdHRXJOVktPdzlIeVFYbWFR?=
 =?utf-8?B?U2tTNnV0eUpZcXZzWVlxNTRmM1Z4SkU5MWxoQ1B6VTQ1Z29ONzNLQmcvRTd2?=
 =?utf-8?B?ZHIrbXpDQzllL3cwNkQ3aUZEaEd4ZExPL1U3RWpBM2daTnZBZkZlMXp2VlRw?=
 =?utf-8?B?aTh5djR4QUQ5eUJQamttNUNpdDk5bU9SQXZKKzRFZks0QlkzMVUrTGM1VlBR?=
 =?utf-8?B?ckVBUXlFMHhkRFJBT01XTVVJQnhjRXBtc1JhOEMyOThRRUpjZndsUlk5bEN2?=
 =?utf-8?B?QllSOU4rcXJWUUduM1J2Y2J2ekdQejZmZUpwL1pScVhqVVR5QmxQWkNUbHZs?=
 =?utf-8?B?MnRIRzFsM0hXSDRXdkRoVlRpRUN3enhSa0FseHlUelEwdmFlWWMybjdSUlNx?=
 =?utf-8?B?VXdtZWhaZzRXajBWeHRhVjA4OW1kaHR1V0RqTEN6S3plR3VGdmxFVXgyakNS?=
 =?utf-8?B?cStacEZqdDhHbWZEdnF4UzhUbkhDRW1acDJqelA4UitDdnRpR01ZVmFjSUlK?=
 =?utf-8?B?WWd2SmtrSHNvc0xGbWI1dllxMTVodmp0UHNPSXlmc0Z1Z2NQa1hJaFcrcXV6?=
 =?utf-8?B?TWdobXYwc0ordnVKaHF2RUQvWmk2NXpjdHpmUWZPazVIM01DM01mL2FUbFhQ?=
 =?utf-8?B?eEE2ZDhEMWFRbEtwaHcyMlF2SlY2UVpYWkJPK1V5dTZLb2FQN3ZhTEs0QXF6?=
 =?utf-8?B?Z1czckpTTW5rNjZuQlFQeXZVMjQvKzhZV21LT0RUWVdoNUUraGRMOU1xdnBk?=
 =?utf-8?B?a1NPL0dlYnA4cXVBcFRLbTA2RzBWZTlSMXVYVmpHU2hIeEM5K0VVbXJKTVpj?=
 =?utf-8?B?cEkxZG52aCtydys3UDV3aE9IMndOZDA4UVEzRWVQbkZJRTd3ZC9VWEdKZk1U?=
 =?utf-8?B?REM4b3JTK3dWSkZ5dWtRNGZOMWtwU0JjTldEZjFlZjhtT01DVEJQaXkyYWZu?=
 =?utf-8?B?UjBuTTBEVWM0a01JdnJ5cWJhd2JEeHRKTGU0ZDFrODVmcThhQlA3YU4ySFkv?=
 =?utf-8?B?ckhFOER3UGVzQVF5ZzVWVUdUY2JYTVh3aGkraFJzcFVDOW9NSHpTWXZkekR1?=
 =?utf-8?B?bnBUdytVdUdYNm96UDgwQlJ3dTJPcU1sbFdUQThHclpBMkt0QXhhOEVEWTA3?=
 =?utf-8?B?amNEa1AvMlFSeHduYjJaTDZDVi9nTmp0Nk9qS0M2QzhET1lyV3ZPTFpEMUNl?=
 =?utf-8?B?c1U3L3pGT21YSHpHTUpLTkg1Mm04M0VuR3hic2Zoc2RBSkUvakFZMGJqbXh4?=
 =?utf-8?B?WWVDRHZ3dXVqOW5ZQWZSaDN6OU5vSUNUalpuNUFqa3NsWUZTQ01HMjFoZld1?=
 =?utf-8?Q?+5ln9+4NCYnMYkwzIIpqCGsPR?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8937.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cddd0fa-3334-4814-7c8a-08de20dcef7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2025 04:44:01.5997 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fbjEmiBgLErpC5j0FEW36jgkpa70el9XQ9c+mPu8tYZ5xy5yz7Pjlfbkee3Yuol8LZg7bEU+zBnb98m6xorirA==
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

DQo+IFN1YmplY3Q6IFtQQVRDSCAxMi8xNl0gZHJtL3UxOTUvZGU6IFJlcGxhY2UgX19pbnRlbF9k
ZV9ybXdfbm93bCgpIHdpdGgNCj4gaW50ZWxfZGVfcm13X2Z3KCkNCg0KKmk5MTUNCldpdGggdGhh
dCBmaXhlZA0KUmV2aWV3ZWQtYnk6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwu
Y29tPg0KDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPiANCj4gV2UgYWxyZWFkeSBoYXZlIHRoZSBsb3dlciBsZXZlbCBpbnRlbF9k
ZV8qX2Z3KCkgc3R1ZmYsIHNvIHVzZSB0aGF0IGluc3RlYWQgb2YNCj4gaGFuZCByb2xsaW5nIHNv
bWV0aGluZyBjdXN0b20gZm9yIHRoZSBETUMgd2FrZWxvY2sgc3R1ZmYuDQo+IA0KPiBBcyB0aGUg
d2FrZWxvY2sgc3R1ZmYgZXhpc3RzIG9ubHkgb24gcGxhdGZvcm1zIHN1cHBvcnRlZCBieSB0aGUg
eGUgZHJpdmVyIHRoaXMNCj4gZG9lc24ndCBldmVuIHJlc3VsdCBpbiBhbnkgZnVuY3Rpb25hbCBj
aGFuZ2VzIHNpbmNlIHhlIGRvZXNuJ3QgaGF2ZQ0KPiB1bmNvcmUubG9jayBub3IgdW5jbGFpbWVk
IHJlZ2lzdGVyIGFjY2VzcyBkZXRlY3Rpb24uDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGUuaCAgICAgfCAyMSArKysrKysrKysrKysr
LS0tLS0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jX3dsLmMg
fCAxMSArKysrKy0tLS0tLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxOCBpbnNlcnRpb25zKCspLCAx
NCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RlLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RlLmgNCj4gaW5kZXggYTgyZGE2NDQzYWY5Li4zNDViMjdhZGEwNGYgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGUuaA0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RlLmgNCj4gQEAgLTgzLDEzICs4Myw2IEBAIGlu
dGVsX2RlX3dyaXRlKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LCBpOTE1X3JlZ190DQo+
IHJlZywgdTMyIHZhbCkNCj4gIAlpbnRlbF9kbWNfd2xfcHV0KGRpc3BsYXksIHJlZyk7DQo+ICB9
DQo+IA0KPiAtc3RhdGljIGlubGluZSB1MzINCj4gLV9faW50ZWxfZGVfcm13X25vd2woc3RydWN0
IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksIGk5MTVfcmVnX3QgcmVnLA0KPiAtCQkgICAgdTMyIGNs
ZWFyLCB1MzIgc2V0KQ0KPiAtew0KPiAtCXJldHVybiBpbnRlbF91bmNvcmVfcm13KF9fdG9fdW5j
b3JlKGRpc3BsYXkpLCByZWcsIGNsZWFyLCBzZXQpOw0KPiAtfQ0KPiAtDQo+ICBzdGF0aWMgaW5s
aW5lIHUzMg0KPiAgaW50ZWxfZGVfcm13KHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5LCBp
OTE1X3JlZ190IHJlZywgdTMyIGNsZWFyLCB1MzIgc2V0KQ0KPiB7IEBAIC05Nyw3ICs5MCw3IEBA
IGludGVsX2RlX3JtdyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwgaTkxNV9yZWdfdA0K
PiByZWcsIHUzMiBjbGVhciwgdTMyIHNldCkNCj4gDQo+ICAJaW50ZWxfZG1jX3dsX2dldChkaXNw
bGF5LCByZWcpOw0KPiANCj4gLQl2YWwgPSBfX2ludGVsX2RlX3Jtd19ub3dsKGRpc3BsYXksIHJl
ZywgY2xlYXIsIHNldCk7DQo+ICsJdmFsID0gaW50ZWxfdW5jb3JlX3JtdyhfX3RvX3VuY29yZShk
aXNwbGF5KSwgcmVnLCBjbGVhciwgc2V0KTsNCj4gDQo+ICAJaW50ZWxfZG1jX3dsX3B1dChkaXNw
bGF5LCByZWcpOw0KPiANCj4gQEAgLTIxOSw2ICsyMTIsMTggQEAgaW50ZWxfZGVfd3JpdGVfZnco
c3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+IGk5MTVfcmVnX3QgcmVnLCB1MzIgdmFs
KQ0KPiAgCWludGVsX3VuY29yZV93cml0ZV9mdyhfX3RvX3VuY29yZShkaXNwbGF5KSwgcmVnLCB2
YWwpOyAgfQ0KPiANCj4gK3N0YXRpYyBpbmxpbmUgdTMyDQo+ICtpbnRlbF9kZV9ybXdfZncoc3Ry
dWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksIGk5MTVfcmVnX3QgcmVnLCB1MzINCj4gK2NsZWFy
LCB1MzIgc2V0KSB7DQo+ICsJdTMyIG9sZCwgdmFsOw0KPiArDQo+ICsJb2xkID0gaW50ZWxfZGVf
cmVhZF9mdyhkaXNwbGF5LCByZWcpOw0KPiArCXZhbCA9IChvbGQgJiB+Y2xlYXIpIHwgc2V0Ow0K
PiArCWludGVsX2RlX3dyaXRlX2Z3KGRpc3BsYXksIHJlZywgdmFsKTsNCj4gKw0KPiArCXJldHVy
biBvbGQ7DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyBpbmxpbmUgdTMyDQo+ICBpbnRlbF9kZV9yZWFk
X25vdHJhY2Uoc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksIGk5MTVfcmVnX3QgcmVnKSAg
eyBkaWZmIC0tZ2l0DQo+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWNf
d2wuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jX3dsLmMNCj4g
aW5kZXggYjNiYjg5YmEzNGY5Li44NjliZWI2ZjI4MGQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jX3dsLmMNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWNfd2wuYw0KPiBAQCAtMTc5LDcgKzE3OSw3IEBAIHN0
YXRpYyB2b2lkIGludGVsX2RtY193bF93b3JrKHN0cnVjdCB3b3JrX3N0cnVjdA0KPiAqd29yaykN
Cj4gIAlpZiAocmVmY291bnRfcmVhZCgmd2wtPnJlZmNvdW50KSkNCj4gIAkJZ290byBvdXRfdW5s
b2NrOw0KPiANCj4gLQlfX2ludGVsX2RlX3Jtd19ub3dsKGRpc3BsYXksIERNQ19XQUtFTE9DSzFf
Q1RMLA0KPiBETUNfV0FLRUxPQ0tfQ1RMX1JFUSwgMCk7DQo+ICsJaW50ZWxfZGVfcm13X2Z3KGRp
c3BsYXksIERNQ19XQUtFTE9DSzFfQ1RMLA0KPiBETUNfV0FLRUxPQ0tfQ1RMX1JFUSwgMCk7DQo+
IA0KPiAgCWlmIChfX2ludGVsX2RlX3dhaXRfZm9yX3JlZ2lzdGVyX2F0b21pY19ub3dsKGRpc3Bs
YXksDQo+IERNQ19XQUtFTE9DSzFfQ1RMLA0KPiANCj4gRE1DX1dBS0VMT0NLX0NUTF9BQ0ssIDAs
DQo+IEBAIC0yMDcsOCArMjA3LDcgQEAgc3RhdGljIHZvaWQgX19pbnRlbF9kbWNfd2xfdGFrZShz
dHJ1Y3QgaW50ZWxfZGlzcGxheQ0KPiAqZGlzcGxheSkNCj4gIAlpZiAod2wtPnRha2VuKQ0KPiAg
CQlyZXR1cm47DQo+IA0KPiAtCV9faW50ZWxfZGVfcm13X25vd2woZGlzcGxheSwgRE1DX1dBS0VM
T0NLMV9DVEwsIDAsDQo+IC0JCQkgICAgRE1DX1dBS0VMT0NLX0NUTF9SRVEpOw0KPiArCWludGVs
X2RlX3Jtd19mdyhkaXNwbGF5LCBETUNfV0FLRUxPQ0sxX0NUTCwgMCwNCj4gRE1DX1dBS0VMT0NL
X0NUTF9SRVEpOw0KPiANCj4gIAkvKg0KPiAgCSAqIFdlIG5lZWQgdG8gdXNlIHRoZSBhdG9taWMg
dmFyaWFudCBvZiB0aGUgd2FpdGluZyByb3V0aW5lIEBAIC0NCj4gMzYwLDcgKzM1OSw3IEBAIHZv
aWQgaW50ZWxfZG1jX3dsX2VuYWJsZShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwgdTMy
DQo+IGRjX3N0YXRlKQ0KPiAgCSAqIHdha2Vsb2NrLCBiZWNhdXNlIHdlJ3JlIGp1c3QgZW5hYmxp
bmcgaXQsIHNvIGNhbGwgdGhlDQo+ICAJICogbm9uLWxvY2tpbmcgdmVyc2lvbiBkaXJlY3RseSBo
ZXJlLg0KPiAgCSAqLw0KPiAtCV9faW50ZWxfZGVfcm13X25vd2woZGlzcGxheSwgRE1DX1dBS0VM
T0NLX0NGRywgMCwNCj4gRE1DX1dBS0VMT0NLX0NGR19FTkFCTEUpOw0KPiArCWludGVsX2RlX3Jt
d19mdyhkaXNwbGF5LCBETUNfV0FLRUxPQ0tfQ0ZHLCAwLA0KPiArRE1DX1dBS0VMT0NLX0NGR19F
TkFCTEUpOw0KPiANCj4gIAl3bC0+ZW5hYmxlZCA9IHRydWU7DQo+IA0KPiBAQCAtNDAyLDcgKzQw
MSw3IEBAIHZvaWQgaW50ZWxfZG1jX3dsX2Rpc2FibGUoc3RydWN0IGludGVsX2Rpc3BsYXkNCj4g
KmRpc3BsYXkpDQo+ICAJCWdvdG8gb3V0X3VubG9jazsNCj4gDQo+ICAJLyogRGlzYWJsZSB3YWtl
bG9jayBpbiBETUMgKi8NCj4gLQlfX2ludGVsX2RlX3Jtd19ub3dsKGRpc3BsYXksIERNQ19XQUtF
TE9DS19DRkcsDQo+IERNQ19XQUtFTE9DS19DRkdfRU5BQkxFLCAwKTsNCj4gKwlpbnRlbF9kZV9y
bXdfZncoZGlzcGxheSwgRE1DX1dBS0VMT0NLX0NGRywNCj4gRE1DX1dBS0VMT0NLX0NGR19FTkFC
TEUsDQo+ICswKTsNCj4gDQo+ICAJd2wtPmVuYWJsZWQgPSBmYWxzZTsNCj4gDQo+IEBAIC00MTQs
NyArNDEzLDcgQEAgdm9pZCBpbnRlbF9kbWNfd2xfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfZGlzcGxh
eQ0KPiAqZGlzcGxheSkNCj4gIAkgKg0KPiAgCSAqIFRPRE86IEdldCB0aGUgY29ycmVjdCBleHBl
Y3RhdGlvbiBmcm9tIHRoZSBoYXJkd2FyZSB0ZWFtLg0KPiAgCSAqLw0KPiAtCV9faW50ZWxfZGVf
cm13X25vd2woZGlzcGxheSwgRE1DX1dBS0VMT0NLMV9DVEwsDQo+IERNQ19XQUtFTE9DS19DVExf
UkVRLCAwKTsNCj4gKwlpbnRlbF9kZV9ybXdfZncoZGlzcGxheSwgRE1DX1dBS0VMT0NLMV9DVEws
DQo+IERNQ19XQUtFTE9DS19DVExfUkVRLCAwKTsNCj4gDQo+ICAJd2wtPnRha2VuID0gZmFsc2U7
DQo+IA0KPiAtLQ0KPiAyLjQ5LjENCg0K
