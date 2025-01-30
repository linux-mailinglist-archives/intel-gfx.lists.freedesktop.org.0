Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4789AA22ACE
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 10:52:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC37810E919;
	Thu, 30 Jan 2025 09:52:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E8HCr/+U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F33FC10E917;
 Thu, 30 Jan 2025 09:52:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738230773; x=1769766773;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5vo4VHMInregverJ2BjFBg1STBowwfZ/USyW51u7RlY=;
 b=E8HCr/+UBJTz2817qiAP78YmP2HQjUpWlp8JlnINy9C7/MNNQaXXrD4O
 UH1nR0DYny9zXxQPYrfeAKer8FB5u/XrAFFEGRkD49dYs9NBgYRxxLuNw
 uBNG5xgqfuRv0SvowMST4DtkfqiPWqW3W0qQkMdmJ3ILpzgKGWY7tf18M
 1L5WVyxemjMX0J++Jy060XrEMLWG49w24aDETiWzGAwBrIiyMrAVMrwQl
 O/Yw2g7ZjJ68r79PWdpfEvXSfJI8TTeIIBszyS/d86Dj0IAIkjhbPtibY
 9m+iaaVQBzUczBSRG00Z6Tb+3VD/a8FWoCSo3g6TnsdUQXFmH5k44A7x8 A==;
X-CSE-ConnectionGUID: YGBROfXCSSKJqIsPIo4/Xw==
X-CSE-MsgGUID: hSUhDTD/Q6GshY3eAywEXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="39035113"
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="39035113"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 01:52:53 -0800
X-CSE-ConnectionGUID: jgQY3t+cSQq5JHpz+/R+yw==
X-CSE-MsgGUID: +v8go5uhSI2MDPUPH8+O6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="109840557"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2025 01:52:53 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 30 Jan 2025 01:52:52 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 30 Jan 2025 01:52:52 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 30 Jan 2025 01:52:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ghy1Y8t8EQDlfIt9DJgilmASQNtP9uLWYiJsohY0wHObHBL+Kb5Us3GmEpXSeEvmWp6DGGqFsuMxPUkUqmeZu1wxBUNqSkcE5m+o47OY5GvwOpCuIYHTjy6amN7AEmE+pGzNkpRULS/W2VMJgkRgSvTh+KmemZz7R9HMOSo1tBCb6+7k1DkOXHKiboTA2dEfvfCIMeXUTrISJrPZxuGcjMFnt2c/UQevPDrkEUG4pslFIKr3+QBmscLLoZy/O0wlLseOEvClKFGy8LszmT2QDziNXhp64kXy3v3s8ny4QiV5ftJoSukLkoaYHTa6fldZBiJtM58XK3VEsYbqh19X9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5vo4VHMInregverJ2BjFBg1STBowwfZ/USyW51u7RlY=;
 b=UjyCsU58KOhocpRE/pGIaj4wMKVF65tth5027wrlPcnQV8fYw/m0jajThiWebT6SoKFGBMTXC0a1bzzSs+CJ/YyFENESeR8M0NdEvt/B+Kr3EbR2RWwm9WANOueb4tNuJ9FNvvS9UqM+GLcgUUwtpimKxULs4FV33aRH2GJW+UtgvmXFVw++UwuJSOZ7+IpxJZYluFUL2/JFDEygDgIaJ0MYGhTlZc8yuxaLQ5MzE/OwmDe8mBLD7sCnbhFNw9wrLVk/qCcvlnsCzS62gbJbyZpOHvBIXIg3HTdRTFu2j+jrXRehtQn28uoa7t4gJzNBMDrv7iLAsFecSKSFItrX5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by PH8PR11MB7967.namprd11.prod.outlook.com (2603:10b6:510:25e::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.17; Thu, 30 Jan
 2025 09:52:49 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%7]) with mapi id 15.20.8398.017; Thu, 30 Jan 2025
 09:52:49 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH 2/2] drm/i915/display: Allow display PHYs to reset power
 state
Thread-Topic: [PATCH 2/2] drm/i915/display: Allow display PHYs to reset power
 state
Thread-Index: AQHbck9QYVglSGb1bUmvn3m1nmVk8rMt1A0AgAE5cbA=
Date: Thu, 30 Jan 2025 09:52:49 +0000
Message-ID: <MW4PR11MB705452C012171CADA21F1E3CEFE92@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250129130105.198817-1-mika.kahola@intel.com>
 <20250129130105.198817-3-mika.kahola@intel.com> <87r04l8ysj.fsf@intel.com>
In-Reply-To: <87r04l8ysj.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|PH8PR11MB7967:EE_
x-ms-office365-filtering-correlation-id: 642a6710-5e21-4f16-1de3-08dd4113db27
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?RzJXb2ZxT21TQVdIdGZBZnZsVm53cTVZbUlPZDlrV1FTWDR2OGdka3N1UG9Y?=
 =?utf-8?B?T3lQSmNZNDJVN0VubFFiREUrN1V3alRuSlRvclVhR3Z0N0hzWWRsTDU4NnBI?=
 =?utf-8?B?OGgwOVJGdGV4K042eklCVWNxckxEWGFMenVNWUJvZ2lBM1dObkVDdzB3MnY3?=
 =?utf-8?B?S0E2UkIvTkRVMGc5aEYxZEd5bjROT3pyTHFqYVdJcnVETGVReU95SHk3SHdr?=
 =?utf-8?B?WUpLdi9zcE02RXZjemJqRnhHREo4ZTR4Qm55Z2FqNFhrUUw4RFhsTDdtZnZu?=
 =?utf-8?B?eFduY1UyTlhsZ01WWGdmc3NTN3l3S3NuRC9OQXlLR29qcEt1SktFR3ZmRVhj?=
 =?utf-8?B?SFRyWVQ1a0EvSWhCUVB0dDE1TjYwUTFJSkVaUXJBZ0RRdDdzOXZCMDJGS1lG?=
 =?utf-8?B?RVVxbDV3d1RNNFFZT1FGeThHd05WaFRTWWVlY2MxcEc4Kys0aEdVNnpBSkFU?=
 =?utf-8?B?M1FESlhkbjVrRGYxOEE3eHhpT1p6THpUcmxSWW9ycktuTExZdEs0VUx5Rjh1?=
 =?utf-8?B?U3Y5TVNQbFViZGh4V21UNEpNNkpyazl2c2RHOW1PRVUrbk5KZ2djU0U2Vi9W?=
 =?utf-8?B?NjJJMFRWTGlWbmViZ3V3ai9hTjdDMnNZckVBMGNlT2VzZGovWFU5b3FheFcr?=
 =?utf-8?B?dS9Vc0RmM3ZWaGZUK3UzNytoVk81V3Q2UjBKUlZ0UDBWZ1JDZS9UZjQyYS9C?=
 =?utf-8?B?Q3hkaVlnNnV0UUFjNWUyck9OcldMZTR5L01GU3lTbmVySndwZEVvdWR5OHRj?=
 =?utf-8?B?TVk0TlpZbVNDVGNUOVQ0N0hWVm81MnJCL2J1MmVSck1XZnFBR0pFcHN5d05v?=
 =?utf-8?B?TlBXbWZEYlBSeHU1TkpJT2VGYmo2ZERJWVZ2RCtNRzIrYktudWk0NVVvc2JD?=
 =?utf-8?B?T1lBaVdHbytMOVRCTk9HL1E2NGR0ZlEyVWtEdnRGUWFCRWJYSzVLbHFLY3Bh?=
 =?utf-8?B?Y0VxeEtDMmdndDBpTjUzcXhMdS91Sks1eEFYdWFJRW9VVXIycGRpZnE2Wk9W?=
 =?utf-8?B?QUpGSWZjMm9rMTJoVkhHNlhhYVlmK1Q1dDBQWFcvS2dTMnMzZUlZYWFXdjAy?=
 =?utf-8?B?ZXhCajgra1JsZ3A5UW1xOU9mUWVTVzcrS3dtemhhYVRvTzVLYjNXVE9OaEo5?=
 =?utf-8?B?Z3dtc1V5Z1hLTitoUEp1YjB3OS80QlpZTWpFbVlVNkQyWWVVZXYvNXB4ZlFG?=
 =?utf-8?B?YkQ2R2xvK3J3Z3VWUFdpWjJDcXpCRUsvK1cwZG5ibEtSZGVIcDF1WTJvZnZn?=
 =?utf-8?B?L0QrQWZpUnRIUU5JR1NsUzV4L1Eza0NlQkVlUFNDTjl3WlFzd0V5S1JUY2FK?=
 =?utf-8?B?Nm5WTmZjNjkvUmUzNU1nODF3V1Nva3pSQURJdVFtNS9HaUhKVFVMbndvalVX?=
 =?utf-8?B?eDF6VkhOeGtaU3VEMEI4b05lR3FmRENYTWUwN3Fna1NFbXBjWFNGOTN6WUIw?=
 =?utf-8?B?VU9JUmtiTjE4dnJxUS9CUmhYaFo5bmhTZkZBV3B0ZWM3SDVsZ2Z4ZUhvYjdQ?=
 =?utf-8?B?ODB1eklzeCt3NXcyMmpvUjM4ZVcvOUcxcDZLc09uUlFuMmNnWkIxdGpiKzlt?=
 =?utf-8?B?WnljTEl5c3AwaHl6RURrRDhOSlV3bkZTWUxPaHhoN0YzdU1JR0VLSXNoeThU?=
 =?utf-8?B?a0R6UFR5T29mblQzTlc0d3pVS1BHZDhnR1RPRk1XY200RUZVQ2VIazNvdGJu?=
 =?utf-8?B?dklDSTRkQmdlMTNZcnZYRnpmdWlIUlh1dzlwMC9MY0tPM1UwS3BVWS9iaUNj?=
 =?utf-8?B?SDhtTHRHajV1dkhOYlk5eHBlTEdmUGUrQ1l5L3FxbG9VYm1UL3R1V3BVdDJG?=
 =?utf-8?B?YzJNL0JUbU9Td1ZsWUZQY0tNV2hrU0hkVkQvM0VaTExGVXRMZUtaUUpWT3Nw?=
 =?utf-8?B?aDYxRVZOQlVhekVKK1VaQVZUazRsT2hUR2FpSmtiUm1LWVJGU2xkN1pqbU5P?=
 =?utf-8?Q?z1BrzD8WYQiezTlLTfhPXtDKLHAITDGh?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N1JPaFlxMkdCUmpXYTBpL3B1cjR2WmJtQ0xkbVpnNXdlb1FwbXNSb2RmS28x?=
 =?utf-8?B?VXpPVkxTejJRVlhGcmhKZTl3MnhPUGQvMmJBelI3Tms0M3lCQUFibEdZNmVM?=
 =?utf-8?B?QmhWL0xFRDhvZDJBUnJEVURNUUEzQmF1YTZQRGlDbUQ5QkVQTHVuOTBydFV5?=
 =?utf-8?B?NS9FQitNQmx3UHRZNmtKTnp2MlJzbmlpbk03M2EvTzNaQ3I5aHpTT25QZVFn?=
 =?utf-8?B?dnE4Y3NsaW01d2k4WjFueVdGSDhvTmJUUXlKeGNTeTRUZVBvaTdTSk1CdWlp?=
 =?utf-8?B?amFJZGJ5eXpXYzdqbFJiSzFGSUdJb29BaDJVSDA3SnoyOEZtWStxNU5lQjhJ?=
 =?utf-8?B?MWVyNld1d2h3Sk90dmxCNDlnV1k4bUF2YnhGUTNOQk1CZFF2dWFlSUlNcmU3?=
 =?utf-8?B?YzZ1OVpyc3ZjSmhGR05VdkFzWTZxWGlRSUoxUi9hMHBvNVc1bnY4YmNXa3c0?=
 =?utf-8?B?cFR0TW1kVTFiTFlnYXJHRzRnbXg0ZDlVdFZsQ2ltS0VqQ2Z5aGtVYWk2NlJU?=
 =?utf-8?B?WXR1UWZjWHY0SUZFYnV2ZGpRd2l3cUdaY0N3Y0NvamRadjJOZjNPek84ZUhR?=
 =?utf-8?B?WnJwL2xHbll3YTJUdnRLbjdOYjZYeC9sSkZlNlBMRE5VU0trd2E2QjljNEpl?=
 =?utf-8?B?YW9GTXM2a0kxenI3N2Zua2tTSmdvVW04SHBKQmxPU2p0M3ErQSttNHhPTzda?=
 =?utf-8?B?bDJwTFExSTY5eittdEY5TTJwWkRzVGQvUDdGQzBZSjBZSnQ0RitFSUwxNTlR?=
 =?utf-8?B?aG5kRWlHYTBPb1dzZjg4K1ltVDQvb2NhS2l0L1h6SlFySGhKZk1OWnBzWFFx?=
 =?utf-8?B?NUExYWQvbXJKNWhhbGVzV1RabGh3QVNGeTVrWlRIMGlLb1M4SUY4QU1GYXp4?=
 =?utf-8?B?SGJVU2daalZHa0lkb3pjMExSSHhoU2JYWldWMXFWZENNRnZaVzJ1a2tYMzJs?=
 =?utf-8?B?ellmc2lNSFYvY0pnVFRnQlJXREZhSGZzYVNMSm1tNHU1THR6Z29SQ21TODda?=
 =?utf-8?B?aGx2MTNFUzBqZDNvKzJxdk9GNE92dkxrN3VYenVZQVExc3JEYWd2M2g5Y3BM?=
 =?utf-8?B?WkMwVTlUc2pEV0d5NkdmNWIyNW1sNmRmSWxYZXJjMlZDMDdaLzBZRUtTUU9U?=
 =?utf-8?B?aUE0VXJ1WXRheWtaZzFsUUVLZHh1VFlONzZWVUk2SWp4WlllTFdCN2ZXNDMx?=
 =?utf-8?B?cnhodGJROWFjZjRVZC9SaENLQmlIM0NDVDhjSWN2VHc5bmlKd2NiczEzS2Nz?=
 =?utf-8?B?eXJqZmJIV3lPMUJySzRxY0pkUmR4WGF1NDR4a3FEMjFzb3Q0SVRTVnhkQk9G?=
 =?utf-8?B?YTBHM01KMkptK0pkVDVqNGNtT1J1NWFUSVVSRFY5N0wvTlo5K2ZzbDQ2OHBD?=
 =?utf-8?B?K0dKNDMydWJGb0kzQWtnc2YwejhNYk93czRrekdndzJjNUtPbTRxKzdTVENt?=
 =?utf-8?B?ckZ2NjJtT1QxaG0rdU1abWNQSXJyRXFRNmkyV0dGTGdsbDFiNGNxNUh5Mmd0?=
 =?utf-8?B?Y2FlcjZhZ2xkSGpmVVk5Y2V5aWJyZ2JlMEZHaVpXdHp2c1JQK1NrQWl4eFZn?=
 =?utf-8?B?K01xT1ZEZjFyU3hrN01abnowL2lyT1Zud1J5YWFPSGdlTEhYVmQ5TW9CR1ZW?=
 =?utf-8?B?VGVqVkNXWllPRHZDMVlCeVdZZkw0VkozUVN6UG5nVEFyM1plQnlaNnNiRjd0?=
 =?utf-8?B?MEpCUk5vZjQrdzBSdUlFYlBMMTdHeUg3dG9iZHZKOGxHalBYQmlEQUpmcDkx?=
 =?utf-8?B?SXlITVFlYTh0cXcveW51amMvWUd4T29vVEU5K3Y0dkx1ZExGWFVZK3AvQWM0?=
 =?utf-8?B?VjhnanZLZ2s1SzYwcGRUbkRQNlJxSjBIUlpFcHhkNVY0azVQVGJCeHAwS3d4?=
 =?utf-8?B?TW5UaUk0MFJtTFFkdVNFNUlCYU5ydkNrNEp2YmJOY2hIaGoyalJkTkZKVHVI?=
 =?utf-8?B?RDN1SUdXSHZlN1Jtc1FUeDN1SHJ1aEF3ZnpyYmdnZ05tMTZUT0lGeE5hWTJY?=
 =?utf-8?B?Q2EzVU82NWF3cTdJdVRXM0Zia1RkUlVmTmtHd1kwWW82KzU3NzNMUzdsa2pP?=
 =?utf-8?B?SEYxMTExVTVGRS9uLzIyMk40ZDhaMHFjQ2h0dEI1VTNqN3p5U2FHeXN5K3F5?=
 =?utf-8?Q?qiCO0p+owzx5Utq/wXXhrRFlN?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 642a6710-5e21-4f16-1de3-08dd4113db27
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2025 09:52:49.2826 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EQWQiFQiAVNr0dgcTvsP4L390MuNLZhZLT1JeX+EgJl8hjQSF/gg6+yHIVsy8s3Au4v1Ptb3p49Im6yqHSyERw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7967
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBKYW5pIE5pa3VsYSA8amFuaS5u
aWt1bGFAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIDI5IEphbnVhcnkgMjAy
NSAxNi40NQ0KPiBUbzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC0NCj4geGVAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnDQo+IENjOiBEZWFrLCBJbXJlIDxpbXJlLmRlYWtAaW50ZWwuY29tPjsgS2Fob2xhLCBN
aWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggMi8yXSBk
cm0vaTkxNS9kaXNwbGF5OiBBbGxvdyBkaXNwbGF5IFBIWXMgdG8gcmVzZXQgcG93ZXINCj4gc3Rh
dGUNCj4gDQo+IE9uIFdlZCwgMjkgSmFuIDIwMjUsIE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBp
bnRlbC5jb20+IHdyb3RlOg0KPiA+IFRoZSBkZWRpY2F0ZWQgZGlzcGxheSBQSFlzIHJlc2V0IHRv
IGEgcG93ZXIgc3RhdGUgdGhhdCBibG9ja3MgUzBpeCwNCj4gPiBpbmNyZWFzaW5nIGlkbGUgc3lz
dGVtIHBvd2VyLiBBZnRlciBhIHN5c3RlbSByZXNldCAoY29sZCBib290LCBTMy80LzUsDQo+ID4g
d2FybSByZXNldCkgaWYgYSBkZWRpY2F0ZWQgUEhZIGlzIG5vdCBiZWluZyBicm91Z2h0IHVwIHNo
b3J0bHksIHVzZQ0KPiA+IHRoZXNlIHN0ZXBzIHRvIG1vdmUgdGhlIFBIWSB0byB0aGUgbG93ZXN0
IHBvd2VyIHN0YXRlIHRvIHNhdmUgcG93ZXIuDQo+ID4NCj4gPiAxLiBGb2xsb3cgdGhlIFBMTCBF
bmFibGUgU2VxdWVuY2UsIHVzaW5nIGFueSB2YWxpZCBmcmVxdWVuY3kgc3VjaCBhcyBEUCAxLjYy
DQo+IEdIei4NCj4gPiAgICBUaGlzIGJyaW5ncyBsYW5lcyBvdXQgb2YgcmVzZXQgYW5kIGVuYWJs
ZXMgdGhlIFBMTCB0byBhbGxvdyBwb3dlcmRvd24gdG8gYmUNCj4gbW92ZWQNCj4gPiAgICB0byB0
aGUgRGlzYWJsZSBzdGF0ZS4NCj4gPiAyLiBGb2xsb3cgUExMIERpc2FibGUgU2VxdWVuY2UuIFRo
aXMgbW92ZXMgcG93ZXJkb3duIHRvIHRoZSBEaXNhYmxlIHN0YXRlDQo+IGFuZCBkaXNhYmxlcyB0
aGUgUExMLg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xh
QGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jeDBfcGh5LmMgIHwgMzUNCj4gPiArKysrKysrKysrKysrKysrKysrICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuaCAgfCAgMSArDQo+ID4gIC4uLi9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcmVzZXQuYyAgICB8ICAyICsrDQo+ID4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyB8ICAyICsrDQo+ID4gIDQg
ZmlsZXMgY2hhbmdlZCwgNDAgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+IGluZGV4IGJmZmUzZDRi
YmU4Yi4uMGJkNzRlODk5MjIxIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiBAQCAtMzU1OSwzICszNTU5LDM4IEBAIHZvaWQg
aW50ZWxfY3gwcGxsX3N0YXRlX3ZlcmlmeShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSwNCj4gPiAgCWVsc2UNCj4gPiAgCQlpbnRlbF9jMjBwbGxfc3RhdGVfdmVyaWZ5KG5ld19j
cnRjX3N0YXRlLCBjcnRjLCBlbmNvZGVyLA0KPiA+ICZtcGxsX2h3X3N0YXRlLmMyMCk7ICB9DQo+
ID4gKw0KPiA+ICsvKg0KPiA+ICsgKiBXQSAxNDAyMjA4MTE1NA0KPiA+ICsgKiBUaGUgZGVkaWNh
dGVkIGRpc3BsYXkgUEhZcyByZXNldCB0byBhIHBvd2VyIHN0YXRlIHRoYXQgYmxvY2tzDQo+ID4g
K1MwaXgsIGluY3JlYXNpbmcgaWRsZQ0KPiA+ICsgKiBzeXN0ZW0gcG93ZXIuIEFmdGVyIGEgc3lz
dGVtIHJlc2V0IChjb2xkIGJvb3QsIFMzLzQvNSwgd2FybSByZXNldCkNCj4gPiAraWYgYSBkZWRp
Y2F0ZWQNCj4gPiArICogUEhZIGlzIG5vdCBiZWluZyBicm91Z2h0IHVwIHNob3J0bHksIHVzZSB0
aGVzZSBzdGVwcyB0byBtb3ZlIHRoZQ0KPiA+ICtQSFkgdG8gdGhlIGxvd2VzdA0KPiA+ICsgKiBw
b3dlciBzdGF0ZSB0byBzYXZlIHBvd2VyLg0KPiA+ICsgKg0KPiA+ICsgKiAxLiBGb2xsb3cgdGhl
IFBMTCBFbmFibGUgU2VxdWVuY2UsIHVzaW5nIGFueSB2YWxpZCBmcmVxdWVuY3kgc3VjaCBhcyBE
UA0KPiAxLjYyIEdIei4NCj4gPiArICogICAgVGhpcyBicmluZ3MgbGFuZXMgb3V0IG9mIHJlc2V0
IGFuZCBlbmFibGVzIHRoZSBQTEwgdG8gYWxsb3cgcG93ZXJkb3duIHRvDQo+IGJlIG1vdmVkDQo+
ID4gKyAqICAgIHRvIHRoZSBEaXNhYmxlIHN0YXRlLg0KPiA+ICsgKiAyLiBGb2xsb3cgUExMIERp
c2FibGUgU2VxdWVuY2UuIFRoaXMgbW92ZXMgcG93ZXJkb3duIHRvIHRoZSBEaXNhYmxlIHN0YXRl
DQo+IGFuZCBkaXNhYmxlcyB0aGUgUExMLg0KPiA+ICsgKi8NCj4gPiArdm9pZCB3YV8xNDAyMjA4
MTE1NChzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSkNCj4gDQo+IFBsZWFzZSBkbyBub3Qg
bmFtZSBmdW5jdGlvbnMgbGlrZSB0aGlzLiBUaGVyZSdzIHplcm8gaW5kaWNhdGlvbiB3aGF0IHRo
aXMgaXMgYWJvdXQuDQo+IFlvdSdyZSBhZGRpbmcgYSBsb25nIGNvbW1lbnQgd2hhdCdzIGdvaW5n
IG9uLCBzdXJlbHkgeW91IGNhbiBuYW1lIHRoZSBmdW5jdGlvbg0KPiBhY2NvcmRpbmdseT8NCg0K
T2ssIEkgd2lsbCBjaGFuZ2UgdGhlIG5hbWUuIEkgd2Fzbid0IHJlYWxseSBzdXJlIGhvdyB3ZSBz
aG91bGQgbmFtZSB0aGVzZSB3YSdzLiBJJ3ZlIHNlZW4gYm90aCB3YXlzIHRvIGJlIHVzZWQuIEl0
J3MgdHJ1ZSB0aGF0IHRoaXMgaXMgbm90IHZlcnkgZGVzY3JpcHRpdmUgbmFtZSBmb3IgYSBmdW5j
dGlvbi4NCg0KPiANCj4gPiArew0KPiA+ICsJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXI7
DQo+ID4gKwl1MzIgdmFsOw0KPiA+ICsNCj4gPiArCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA8
IDMwKQ0KPiA+ICsJCXJldHVybjsNCj4gPiArDQo+ID4gKwlmb3JfZWFjaF9pbnRlbF9lbmNvZGVy
KGRpc3BsYXktPmRybSwgZW5jb2Rlcikgew0KPiA+ICsJCWlmIChlbmNvZGVyLT5wb3J0ID09IFBP
UlRfQSB8fCBlbmNvZGVyLT5wb3J0ID09IFBPUlRfQikgew0KPiA+ICsJCQl2YWwgPSBpbnRlbF9k
ZV9yZWFkKGRpc3BsYXksDQo+IFhFTFBEUF9QT1JUX0NMT0NLX0NUTChkaXNwbGF5LA0KPiA+ICtl
bmNvZGVyLT5wb3J0KSk7DQo+ID4gKw0KPiA+ICsJCQlpZiAoUkVHX0ZJRUxEX0dFVChYRUxQRFBf
RERJX0NMT0NLX1NFTEVDVF9NQVNLLA0KPiB2YWwpID09IFhFTFBEUF9ERElfQ0xPQ0tfU0VMRUNU
X05PTkUpIHsNCj4gPiArCQkJCXN0cnVjdCBpbnRlbF9jeDBwbGxfc3RhdGUgcGxsX3N0YXRlID0g
e307DQo+ID4gKwkJCQlpbnQgcG9ydF9jbG9jayA9IDE2MjAwMDsNCj4gPiArCQkJCWludGVsX2Mx
MHBsbF9jYWxjX3N0YXRlX2Zyb21fdGFibGUoZW5jb2RlciwNCj4gbXRsX2MxMF9lZHBfdGFibGVz
LCBwb3J0X2Nsb2NrLCB0cnVlLCAmcGxsX3N0YXRlKTsNCj4gPiArCQkJCV9faW50ZWxfY3gwcGxs
X2VuYWJsZShlbmNvZGVyLCAmcGxsX3N0YXRlLCB0cnVlLA0KPiBwb3J0X2Nsb2NrLCA0KTsNCj4g
PiArCQkJCWludGVsX2N4MHBsbF9kaXNhYmxlKGVuY29kZXIpOw0KPiA+ICsJCQl9DQo+ID4gKwkJ
fQ0KPiA+ICsJfQ0KPiA+ICt9DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2N4MF9waHkuaA0KPiA+IGluZGV4IDU3M2ZhN2QzZTg4Zi4uYWJlYmU3ZmQyY2Yy
IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gw
X3BoeS5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBf
cGh5LmgNCj4gPiBAQCAtNDIsNSArNDIsNiBAQCBib29sIGludGVsX2N4MHBsbF9jb21wYXJlX2h3
X3N0YXRlKGNvbnN0IHN0cnVjdA0KPiA+IGludGVsX2N4MHBsbF9zdGF0ZSAqYSwgIHZvaWQgaW50
ZWxfY3gwX3BoeV9zZXRfc2lnbmFsX2xldmVscyhzdHJ1Y3QNCj4gaW50ZWxfZW5jb2RlciAqZW5j
b2RlciwNCj4gPiAgCQkJCSAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpOyAgaW50DQo+ID4gaW50ZWxfbXRsX3RidF9jYWxjX3BvcnRfY2xvY2soc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIpOw0KPiA+ICt2b2lkIHdhXzE0MDIyMDgxMTU0KHN0cnVjdCBp
bnRlbF9kaXNwbGF5ICpkaXNwbGF5KTsNCj4gPg0KPiA+ICAjZW5kaWYgLyogX19JTlRFTF9DWDBf
UEhZX0hfXyAqLw0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfcmVzZXQuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3Jlc2V0LmMNCj4gPiBpbmRleCAwOTNiMzg2Yzk1ZTguLjkzYjI2OTdh
MDg3NiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfcmVzZXQuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV9yZXNldC5jDQo+ID4gQEAgLTcsNiArNyw3IEBADQo+ID4NCj4gPiAgI2lu
Y2x1ZGUgImk5MTVfZHJ2LmgiDQo+ID4gICNpbmNsdWRlICJpbnRlbF9jbG9ja19nYXRpbmcuaCIN
Cj4gPiArI2luY2x1ZGUgImludGVsX2N4MF9waHkuaCINCj4gPiAgI2luY2x1ZGUgImludGVsX2Rp
c3BsYXlfZHJpdmVyLmgiDQo+ID4gICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3Jlc2V0LmgiDQo+
ID4gICNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgiDQo+ID4gQEAgLTExNiw2ICsxMTcs
NyBAQCB2b2lkIGludGVsX2Rpc3BsYXlfcmVzZXRfZmluaXNoKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlDQo+ICppOTE1KQ0KPiA+ICAJCWludGVsX3Bwc191bmxvY2tfcmVnc193YShkaXNwbGF5KTsN
Cj4gPiAgCQlpbnRlbF9kaXNwbGF5X2RyaXZlcl9pbml0X2h3KGRpc3BsYXkpOw0KPiA+ICAJCWlu
dGVsX2Nsb2NrX2dhdGluZ19pbml0KGk5MTUpOw0KPiA+ICsJCXdhXzE0MDIyMDgxMTU0KGRpc3Bs
YXkpOw0KPiANCj4gQ29udHJhc3Qgd2l0aCBpbnRlbF9wcHNfdW5sb2NrX3JlZ3Nfd2EoKSBjYWxs
IGFib3ZlLg0KDQpHb3QgaXQhDQoNCj4gDQo+ID4gIAkJaW50ZWxfaHBkX2luaXQoaTkxNSk7DQo+
ID4NCj4gPiAgCQlyZXQgPSBfX2ludGVsX2Rpc3BsYXlfZHJpdmVyX3Jlc3VtZShkaXNwbGF5LCBz
dGF0ZSwgY3R4KTsgZGlmZg0KPiA+IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcGxsX21nci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwbGxfbWdyLmMNCj4gPiBpbmRleCBiOGZhMDRkM2NkNWMuLjc2Mzk0NDExZGQ3YSAxMDA2
NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdy
LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdy
LmMNCj4gPiBAQCAtMjcsNiArMjcsNyBAQA0KPiA+ICAjaW5jbHVkZSAiYnh0X2RwaW9fcGh5X3Jl
Z3MuaCINCj4gPiAgI2luY2x1ZGUgImk5MTVfZHJ2LmgiDQo+ID4gICNpbmNsdWRlICJpOTE1X3Jl
Zy5oIg0KPiA+ICsjaW5jbHVkZSAiaW50ZWxfY3gwX3BoeS5oIg0KPiA+ICAjaW5jbHVkZSAiaW50
ZWxfZGUuaCINCj4gPiAgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfdHlwZXMuaCINCj4gPiAgI2lu
Y2x1ZGUgImludGVsX2RrbF9waHkuaCINCj4gPiBAQCAtNDU1Miw2ICs0NTUzLDcgQEAgc3RhdGlj
IHZvaWQgc2FuaXRpemVfZHBsbF9zdGF0ZShzdHJ1Y3QNCj4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSwNCj4gPiAgCQlyZXR1cm47DQo+ID4NCj4gPiAgCWFkbHBfY210Z19jbG9ja19nYXRpbmdfd2Eo
aTkxNSwgcGxsKTsNCj4gPiArCXdhXzE0MDIyMDgxMTU0KCZpOTE1LT5kaXNwbGF5KTsNCj4gDQo+
IENvbnRyYXN0IHdpdGggYWRscF9jbXRnX2Nsb2NrX2dhdGluZ193YSgpIGFib3ZlLg0KDQpHb3Qg
aXQhDQo+IA0KPiBJbWFnaW5lIGFsbCBvZiB0aGVzZSB3ZXJlIHdhXzMyMTQ4MTkxODI3KCksIHdh
XzY1MDkxNDMzNCgpLA0KPiB3YV8xMzQxNzQzNDEoKSwgZXRjLiBJdCdzIGZpbmUgZm9yIGNvbXBp
bGVycywgbm90IGZvciBodW1hbnMuDQoNCkkgZG8gYWdyZWUuIEkgd2lsbCBmaXggdGhlIG5hbWlu
Zy4NCg0KVGhhbmtzIGZvciB0aGUgcmV2aWV3IGFuZCBjb21tZW50cyENCg0KLU1pa2EtDQo+IA0K
PiA+DQo+ID4gIAlpZiAocGxsLT5hY3RpdmVfbWFzaykNCj4gPiAgCQlyZXR1cm47DQo+IA0KPiAt
LQ0KPiBKYW5pIE5pa3VsYSwgSW50ZWwNCg==
