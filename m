Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE51A9AB55D
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 19:44:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7269010E0F1;
	Tue, 22 Oct 2024 17:43:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HB4MGT6x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DCA610E00A;
 Tue, 22 Oct 2024 17:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729619039; x=1761155039;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=f66VFiITbFS+Tv8sYmdpIK2lhi5P0MOeaxcEJpfGSEA=;
 b=HB4MGT6xm4MPKzmGr9wUob5oFG+jnWdhRDZGxFBUzEYqzN77/bOE45Yb
 f5EXiPZ5vcnCX0SBJ+o9VFlsiS8H2XpCsgqX9iL+7nlyF6pSbHbNDOOB0
 49/gKlihw+OdFHvOH7p1cpK1nTlsBZ6btnnF/5lL8xS1Bwy2ERYadx0CI
 XaYoRFEwme84I+hhtcYZ92Gin8T5ju+GJCKGqTwf8UIuAx4blroexrc//
 a2Kzt/M0e9ZXv1mZUk6T8aJWuWG6uPZLfQ+VGSpUJsoa1J/h2ZwqObRXi
 2oF6pkRtrWzuFv96HGyBKeRzfRx7GmDsco7n6cs/hXH6Z3NKz5AbBNtFI g==;
X-CSE-ConnectionGUID: hKJrEnL1RaWS39e3qvpkVg==
X-CSE-MsgGUID: JqZ6m0xdTMOb+5artjYOGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="40566396"
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="40566396"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 10:43:57 -0700
X-CSE-ConnectionGUID: l52ZOm6WTeOlBI/uvHfEgQ==
X-CSE-MsgGUID: vtVDYXUXQFizur53mFhMzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="84762564"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 10:43:56 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 10:43:55 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 10:43:55 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 10:43:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R4kOXXtOdaReA2Tid/PMHZMLsM71Mq2BY1hJbfDLSVWNpDB7MtDwCzAhIJ28d89peucuCr0+ao8c8ygOp9ZY/JPnHPGbY0t+l3FyzFS7ew3tMbQTbwBGmqFZ3NAQ7U8NbghRmJLZkI3Hp56hbLWTFelI5LMabABLMqs6KcYN+GO/86d2afBDtFm2ITvsSn8JhMwykzqZqQokMMUifU+fB8j5khUmTaJSMAvxhjDfynVbyx8kQ0uN80jyvR26Vi5M3xc9Ti1m+AroMH20jwIEceej0S3MukSKtNv58kM3vzgBvg7xykRCOySkj4dMLuitLBHrIlIq+Osrvn6a5PNeiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f66VFiITbFS+Tv8sYmdpIK2lhi5P0MOeaxcEJpfGSEA=;
 b=Z0ExTCfR3qn8tVAzLY/FaQuFLbVBpuD6mgan9x9usIz9pQ/IIHjIIiAJHKDe//i5HGpsFZqaJxe3zfs16tPRH4JnR0ed9XMgciWsubC8wKNYmCGSaZgam1+nE3d6XXbmLqA020oRCWuRc9+VKoa+KTfZYfsll8wgfhStxdGN9ezyJG0DNmLjRDbdkXVqVwZjfVT3j5Dp9pjSdWSgGpWkyj089meKEquGcA2D63PIR7U56il9JOjtsUm7Lew6ggHDIXpKmgn75sk87eQXA2KZKCRemdoZHCeHBbe7X5gB7g29Cn++AtiYqsNP+yWh65ZI8e/feAqdlHnrLiNKLXCsiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN0PR11MB5711.namprd11.prod.outlook.com (2603:10b6:408:167::22)
 by SA1PR11MB7014.namprd11.prod.outlook.com (2603:10b6:806:2b9::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.28; Tue, 22 Oct
 2024 17:43:52 +0000
Received: from BN0PR11MB5711.namprd11.prod.outlook.com
 ([fe80::4137:d45e:2206:50aa]) by BN0PR11MB5711.namprd11.prod.outlook.com
 ([fe80::4137:d45e:2206:50aa%5]) with mapi id 15.20.8093.014; Tue, 22 Oct 2024
 17:43:52 +0000
From: "Taylor, Clinton A" <clinton.a.taylor@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Sousa, 
 Gustavo" <gustavo.sousa@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/xe3lpd: Load DMC
Thread-Topic: [PATCH] drm/i915/xe3lpd: Load DMC
Thread-Index: AQHbJJpl+7uSpeVC90+foFwh6iz+ebKTCrSA
Date: Tue, 22 Oct 2024 17:43:52 +0000
Message-ID: <af1f74e92773a150ce4e2ddc553ac00c415e4671.camel@intel.com>
References: <20241022155115.50989-1-gustavo.sousa@intel.com>
In-Reply-To: <20241022155115.50989-1-gustavo.sousa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN0PR11MB5711:EE_|SA1PR11MB7014:EE_
x-ms-office365-filtering-correlation-id: a5f36691-7230-4fb8-2daf-08dcf2c11800
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?RHZETnVJYk9QV1RvR21oS2hoSjNYaWRKZFVHR2tWcHhDT3cvVTZkOEhzbldH?=
 =?utf-8?B?NWo3SU82YVpsVkRZd1lEOVFBZDcxT0JYdk1RTFhkaEVlYzExQzgxVXgwOTNz?=
 =?utf-8?B?NG1PTitla1dKVXhJbjE4RG00aFl6ZmZFcjVGREt3eFdrMGZxMTZqVTlsSmha?=
 =?utf-8?B?S1NId2l0WVNleDJTazA2ZmtyMExEUjYzVjZKV3dpK2pUS3l6VzQ1ZS9pTVdk?=
 =?utf-8?B?RTk3YWp6ZVhxN1J4UFh1WWVOTVdRQkJyVVphTDhjMmpjSjJnN3BjSXhFbVl5?=
 =?utf-8?B?ck5hMGtFWDMvRG1Pc3BuRUJvUUsveWluN3NBT3NTNTNQZkhMWmp1WStrcDVY?=
 =?utf-8?B?K0NCVnhGRXhMdVBEZWNiMWVNWC9RTTVoREV1TlFrSUsvL0dJTURmNjdka3ow?=
 =?utf-8?B?eDdRWkowV2pPUlA4Zk9QWG1tT0dtMTUyRjk0N0NmeWRHVHBZdGpORU5mNk9Z?=
 =?utf-8?B?bVpLQXhmUzIwQmdEbkd3UEhqR0JoRGQ2dGI1SXZoSWlJM05xejhidjduKzl1?=
 =?utf-8?B?R1BBY1hVVFJna1dtSS9TelhBdHY0UEZoaXgvZkJqVEFVMUI0QXlObmpTQVJ2?=
 =?utf-8?B?MUpDKzNiek1ZN0RpSDJQMFlScjJ4OW43VkI2dG02eG4rcUcrRXdLOUx2NC9E?=
 =?utf-8?B?QmprYk15aFBKcFQ5bGRpbjM4b2RZR1kvSmtrT0VweDF6SWpIZS8wdWhITCt6?=
 =?utf-8?B?NnZHVTZVOVp0Mit1dHV0ZHR2Q1BVRmdMb29WcDZwQ0NYZlZNcEZOMVUwNFJx?=
 =?utf-8?B?cDBGTXkwQys2T2NmNWNMeTlnRDBrMmVNc2l3dHRvTFFwN0R1QzFuVUsxeE0r?=
 =?utf-8?B?OHJwQ3d2YkVGS3dteFZLN1E2NlhLUktOUTN6K1NrYkJGUFdrNFYvS3FKRHFr?=
 =?utf-8?B?L0UvcFJaVmpIQlFodkh6MEMyWTd6cE5HaGNtd1puQVZpL1R0a0t5ZEcyV0N5?=
 =?utf-8?B?cUZuS2NXQlFtbFZIUVBDdExlVkwvNHVlbXAwaTUxeHVHTDBlRWljZjhYTEl0?=
 =?utf-8?B?UVRES3VGb3JlZzRteVVoWTRYM2xHdmc5NnZROGMxcWl3Wndhb2piczVRSXF6?=
 =?utf-8?B?azhYYWowcmZib3UrWVNsRlM5UjRXYnlwVFhZc1B5b0pvWmFJdHBvWkVOdytM?=
 =?utf-8?B?dWpFcjFXSHhGa0hPdElYVXd5ZTAxVWoveTNsRzVSa05OcHZ1Z0ZuR2Z3ZnlP?=
 =?utf-8?B?YmdxVlpaWk9IV2ZrU2c0ZXB6ektwWFlCclZtdUxuSUtqSmV0S24yanJLbGRy?=
 =?utf-8?B?SWJHblBFOUV1bFF4RkZmbWF2V041V2RDMGRWUS9STStSaC9EYWwzQk9BNmhM?=
 =?utf-8?B?bWNER0ZaTjBRV2N6ZlFUOUhFOGRmU0lVRTh2cStycysyUkNFOGZLUFRGVGt4?=
 =?utf-8?B?dVZ2bndIS05WcEhWSVVoTThYK2ZwaTgwOVFHTzhQdm8vcGZVZWdyV2o5dzFI?=
 =?utf-8?B?WlZyK01sbThTWklPMnlwZFd5THB3QjFrblk4YmFqRUZYTFYzRjVPaUNoMkpB?=
 =?utf-8?B?YU9QcDdWb3RmU2VBbTF1WVZGeHk0U2c1VnJBQVhpVlM3N2NLYU11RzBFb21h?=
 =?utf-8?B?RW1hYVVJMFNHZDJMMjdEWENvYkxIQVM2U2JPd0JrU25aZ0sxbkJLY0NpYmVs?=
 =?utf-8?B?YTlWaUowK0V3TklLbXlEcnVxUVpvSzE3OTltbFRtUlVHcnArVEt4TXJPVWpX?=
 =?utf-8?B?OUEyRU1tYWJPcXpPMUVBSzJpVDRFc0ZSQ3ZyQmMwR25IeWw5dGVzaWhyY3lk?=
 =?utf-8?B?bDkxK0ZnNk9rNUp1bTZDK3lGRnpzd3lLenVCVm5RWHZhSDVVdHpIUjdjcEZV?=
 =?utf-8?Q?iN1BKBEvgqLv9DkvY+GPRUQC5aSw221G/R67o=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN0PR11MB5711.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cVduUThITjdYUXd5VnFtall1eDBNeUY0VksvbUhHZGF0T2pPU2N2UkJNR3BW?=
 =?utf-8?B?TytIRjRoVXJEZS9jNVQzVVQxZVZkajZGaGlKSHdrOFFwQUM5TUl3OE1qQW9l?=
 =?utf-8?B?M1dleDE4cklBMVo4WEVtd09WQk04TmYwTlY4Y09BUmVCdGRMU2IxZHJhYnR5?=
 =?utf-8?B?TmxFSkRnUWROWmlzNmloYWllRFYrMkJhT3ZwSEREUVdISDlpYlV5NHpLbG9l?=
 =?utf-8?B?cXVOUkR4ejZxZFlPMEhZSlQySlA2R0hhMEtMY0VLN1dLcXltbThJekIzMmJK?=
 =?utf-8?B?RWR3d2F5dmtKVW8wazdKaHdHS3JZVWJ6WHRNY1BySmtHT0dNMWRiV0I0TmNF?=
 =?utf-8?B?VjZYN0NtejZBZDUwbDZGb3VFdVJYemZTOC9BU3hrZW5MdVRBMVNuRGk4NzZ2?=
 =?utf-8?B?Y2d1Ulp4MmRwb0JUM1BTRDZUamZWWGNBVVIzUXhvbEY0amxCMlh5YjZYQVll?=
 =?utf-8?B?Wkw5TnMxaE9LVXE3SytIUG5qa0crNkJGcjJ1WXh1ZXhQbGFhK1lTeU5yMjVt?=
 =?utf-8?B?OGVpQ3RzUmk3RHJHYWVYMVgwN2cwak1VcXJVZERLSTY3QWVLWVRpZ1llVlVu?=
 =?utf-8?B?alVNRHQ1MEhEMU1ub3htNHlzcVhjY29QQ3hnTWErejVxOGg4MWl1aHZsRFlk?=
 =?utf-8?B?S0hHRGxXUm01bS9zWjY5Nm1nZ2tPbStjS2x4MTNwd0V1cWhTQnY2dWZYZ1U4?=
 =?utf-8?B?dlNzKzAxNy9qYmJTTUdMSHBDaWpvYVNuc1Y5UFl6emdVMi81ekVtK0V3ZDF2?=
 =?utf-8?B?UUxCZ256YnhJTFJza2E2MjVjNitFZUc0eHdEcUtsTjFOTlArc3FRY0hoUkR1?=
 =?utf-8?B?TW56ajBaelpBcmFZKzhFcUcxMFcvZXJOUVE4eUFIcTF1L3N0ZHJTQXF5bnc4?=
 =?utf-8?B?czVMM1d4U0w5ZVU1d2MvY2hhZ1pSNXRvQmNsYTV2MXE2WVdFeEk1ZWZrMVZa?=
 =?utf-8?B?K2JhcTNBRzIyQkJiMWxNVzllQkJvVEZ5a2VmZFpCVlJCRk4xUTM3MElVdWZY?=
 =?utf-8?B?Z3pGZXhvVjVTekZVTFpRQ0xsYjBYSnc5cktkblJ1UkxleDdSUkIzMzQvOVNJ?=
 =?utf-8?B?WDJ0cjMxNVd4WXI3NjBHTm9RbFBvZ3Fad3RMY2dUWERoMTc2dkhMUzRBM2U4?=
 =?utf-8?B?d3hWQjdmU3RCdUVUSGFDVDJ6d20zR0JySEorTXhoOWpkVGg1dGEvRFhFVUtq?=
 =?utf-8?B?ZkRXUERtazM5K1F4UTBocmxta1J3K2kyWmJnU2NxRTJZTzNGeGNaL0NKanFr?=
 =?utf-8?B?amZDRncyU0NlMFFNSWlCbWFOWTE0TUFoYkQ2RkpTZlpZSFQ0YnA4ZzFtS3JC?=
 =?utf-8?B?OUVMMElHVWR2VlY5MHlTR3RmQTJ4Qjk0TkJ1UlJvdVJBVGhZUEpZdWdZWlgz?=
 =?utf-8?B?TFF5VmFNUS8wNDdhTE1mZnNOOFRhcm00aHNPTmhoMmVCZTdlellnalNVNlBx?=
 =?utf-8?B?M1V6NFhRSHduK1BPUUgvUlJsaTFSS1hIVGF3TmpYaDNQak9WWUNSTkxCdHIr?=
 =?utf-8?B?aVFMRkZWK0hDdXRlWjZzNENjaDFiUmFMajJpdW8wVUFqZWYxK2MxR1krN0Uw?=
 =?utf-8?B?dHJoZkptNHYzQ2pHWHk5SGRrcVFKNDZ1emFKV05obG5kZFFHUkVoa3Z1REQw?=
 =?utf-8?B?Q3RiOUNDSkx5WG1US3BrUnJhb2VJZUxwcUhWd1RjaFJjeVVFZjZpNzNZTXdY?=
 =?utf-8?B?R0ZGMzBtUDB4NkhJa0xXS2tBNnBoR2NHaGJhc25FZzY1N0U2c2U1LzJLWGFN?=
 =?utf-8?B?NEoxWlZ1emlBSXkyTExUTjRLazAvSHcrb1pJWi9Ta0FybGlxNy9Pd3ZQMGNs?=
 =?utf-8?B?Z2pSd0tiandueVIwQ2pYUTNFYTArbThlK2V5NW1zK2V1dXdtcUxXQ1ErUnY5?=
 =?utf-8?B?ZDFWQU9OVTN6M0g4aWkzWXUwU2pmZWpEWlQrQlQ5UVlyNHp5aVpsc2JGNERD?=
 =?utf-8?B?ZUp4c2VrelE4VW1pWnd6TTI2WDB4cXB2MGtkZ3N3bUl4d1JCV1FsTkUvQ3dv?=
 =?utf-8?B?LzB6Q3A3SnFwU3FrVU00Tm82b3lJN01VRy8wYWEwN0t1NlYyZFV3V1NVU1p3?=
 =?utf-8?B?eEJrOFlwbnFpYlFCNldjMlcyVjBiamEzRWdJZHRCSUovSFR0a3hPeU00bEgr?=
 =?utf-8?B?cTVkRzVVUlZHWC9nU2hoTHFTR3RIY09MZHU3cm5lQStmZWZwekVYakNqZE9u?=
 =?utf-8?B?a0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8F42CD3BA861E44B87D400345126C1DD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0PR11MB5711.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5f36691-7230-4fb8-2daf-08dcf2c11800
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2024 17:43:52.4468 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dcwjQvS+XhfxMtB7ekxwdEwHXOVGHP/Q6pZziFVeRD6Gmae+7kro6ngz577DCG35tgVzaRs8X0KdjMQRCzQ6Blgz3mBaLPgdkgc1SyeVhSM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7014
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

UmV2aWV3ZWQtYnk6IENsaW50IFRheWxvciA8Q2xpbnRvbi5BLlRheWxvckBpbnRlbC5jb20+DQoN
Ci1DbGludA0KDQpPbiBUdWUsIDIwMjQtMTAtMjIgYXQgMTI6NTAgLTAzMDAsIEd1c3Rhdm8gU291
c2Egd3JvdGU6DQo+IExvYWQgdGhlIERNQyBmb3IgWGUzTFBELg0KPiANCj4gU2lnbmVkLW9mZi1i
eTogR3VzdGF2byBTb3VzYSA8Z3VzdGF2by5zb3VzYUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYyB8IDggKysrKysrKy0NCj4gIDEg
ZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jDQo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiBpbmRleCA0OGJiYmY4ZjMx
MmMuLjUzOTJiNjg2MjdhZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kbWMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RtYy5jDQo+IEBAIC0xMTMsNiArMTEzLDkgQEAgc3RhdGljIGJvb2wgZG1jX2Zpcm13YXJl
X3BhcmFtX2Rpc2FibGVkKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ICpkaXNwbGF5KQ0KPiAgI2Rl
ZmluZSBESVNQTEFZX1ZFUjEzX0RNQ19NQVhfRldfU0laRQkweDIwMDAwDQo+ICAjZGVmaW5lIERJ
U1BMQVlfVkVSMTJfRE1DX01BWF9GV19TSVpFCUlDTF9ETUNfTUFYX0ZXX1NJWkUNCj4gIA0KPiAr
I2RlZmluZSBYRTNMUERfRE1DX1BBVEgJCQlETUNfUEFUSCh4ZTNscGQpDQo+ICtNT0RVTEVfRklS
TVdBUkUoWEUzTFBEX0RNQ19QQVRIKTsNCj4gKw0KPiAgI2RlZmluZSBYRTJMUERfRE1DX1BBVEgJ
CQlETUNfUEFUSCh4ZTJscGQpDQo+ICBNT0RVTEVfRklSTVdBUkUoWEUyTFBEX0RNQ19QQVRIKTsN
Cj4gIA0KPiBAQCAtMTY4LDcgKzE3MSwxMCBAQCBzdGF0aWMgY29uc3QgY2hhciAqZG1jX2Zpcm13
YXJlX2RlZmF1bHQoc3RydWN0IGludGVsX2Rpc3BsYXkNCj4gKmRpc3BsYXksIHUzMiAqc2l6ZQ0K
PiAgCWNvbnN0IGNoYXIgKmZ3X3BhdGggPSBOVUxMOw0KPiAgCXUzMiBtYXhfZndfc2l6ZSA9IDA7
DQo+ICANCj4gLQlpZiAoRElTUExBWV9WRVJfRlVMTChkaXNwbGF5KSA9PSBJUF9WRVIoMjAsIDAp
KSB7DQo+ICsJaWYgKERJU1BMQVlfVkVSX0ZVTEwoZGlzcGxheSkgPT0gSVBfVkVSKDMwLCAwKSkg
ew0KPiArCQlmd19wYXRoID0gWEUzTFBEX0RNQ19QQVRIOw0KPiArCQltYXhfZndfc2l6ZSA9IFhF
MkxQRF9ETUNfTUFYX0ZXX1NJWkU7DQo+ICsJfSBlbHNlIGlmIChESVNQTEFZX1ZFUl9GVUxMKGRp
c3BsYXkpID09IElQX1ZFUigyMCwgMCkpIHsNCj4gIAkJZndfcGF0aCA9IFhFMkxQRF9ETUNfUEFU
SDsNCj4gIAkJbWF4X2Z3X3NpemUgPSBYRTJMUERfRE1DX01BWF9GV19TSVpFOw0KPiAgCX0gZWxz
ZSBpZiAoRElTUExBWV9WRVJfRlVMTChkaXNwbGF5KSA9PSBJUF9WRVIoMTQsIDEpKSB7DQo=
