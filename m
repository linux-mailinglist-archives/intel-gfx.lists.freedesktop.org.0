Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A437FA19871
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 19:31:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9A7110E726;
	Wed, 22 Jan 2025 18:31:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gf8tFhB5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B630610E00E;
 Wed, 22 Jan 2025 18:31:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737570712; x=1769106712;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=JREd0fK35o7frZPzHRc+8hPf8LeN3/L7t6SOO+d2hkg=;
 b=gf8tFhB5DZpLtskRAD0yT+Nv8NsYgNoEZI8Cipla22kEQizIzmMiwwuP
 GVJDY7+t1am770EVi/Fx5nQm+m+5U7Rb3ukOuapn7ewDrmvpHi1APZ6KG
 MpGMCk2ggmJKMWrKo5P8j+hS9zQMFt/HxiLEN8zoP/NUI/MUKAxHV8dRl
 99j+dD1GHj1n2Hh2lKh0lujzO882DRzVcrOYWQh1wVVtTVJlXLBE1C9pJ
 3Nw6Hr6Rf4eoqmml6e3GoaEFXNb5s02bUDddhh0mNlmp9CRg8hx60Sa8A
 gBNMPvlCWDMWmpx7tK1pRo7VJMBhzxUg72UUbpugGsnamrSPNcFwN2b8M A==;
X-CSE-ConnectionGUID: mJlYrk4nTMOrleplm7Rbpw==
X-CSE-MsgGUID: 6H1sMyspRHO/L5KcRIZfeQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11323"; a="37922075"
X-IronPort-AV: E=Sophos;i="6.13,226,1732608000"; d="scan'208";a="37922075"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 10:31:52 -0800
X-CSE-ConnectionGUID: WMq6Vq0qTFuIRqMOH6ZOaw==
X-CSE-MsgGUID: xYNKtdPDSaKhpxTKhGovng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,226,1732608000"; d="scan'208";a="107143282"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Jan 2025 10:31:52 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 22 Jan 2025 10:31:51 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 22 Jan 2025 10:31:51 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 22 Jan 2025 10:31:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=irJQA5jp/XBus52l6tQaJfIfN7F5rkNb0qfZWWS6vOB6XQlJizZBphYffslm8vseIqURLTO+/BbGYpyqUl/gBmhRGNPmyLuWyDTaIEmvLkmRZI8pSdKD4h12RelwibXmxDqxu0m+NdJhj807/A46BJwz8unNU2Sd3VE/kaarNqw7FemnN1yO3NzEiGnw9jP4htk6r8toXCOxZ0Z5FGqGRbkS07WgOhXCmGOySIbad316oBvgOa9AOp5x66PFKTZHcfGSSDzMkcOUD4MQa13isyD2tqdez5meimEGoya25EmBFMdrXcQsR8jdJhJGwfew56mu83XhhA/NGKiDzehXeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JREd0fK35o7frZPzHRc+8hPf8LeN3/L7t6SOO+d2hkg=;
 b=BuCJem9z++5nFz5K+MbgjZMWu/0zswhmyq6ZyACPiqOeis+Ftoq9vLaN3D40OJ5l1zBXmdRmfPcpt8WmsewY1KbMPC4fx79TrJP55wOIQVSM3yZrNiNW/OukkkHJAK9e1PfxEEaXUA8wlrt2I3oXFnnNmOtKABvhMd/3QHs2SE2KZcjAZ4DDJ8bJj654Xwj6t9wJObeU9gzYP0prffFUxqQTnNBHFZr5IkCZ6RsVlkyO90b7xif5YMDqgJDcTJ4vg65faJ2G6e14YgfSIihkdkrnwMvSEqL9ObvZRh16kvJhqp8Nw3CmBJoNS5vxG0DhOO8Bw3+a+HhD1BHtBsAw/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by PH0PR11MB5175.namprd11.prod.outlook.com (2603:10b6:510:3d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.17; Wed, 22 Jan
 2025 18:31:49 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.8377.009; Wed, 22 Jan 2025
 18:31:49 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, "Reddy Guddati, Santhosh"
 <santhosh.reddy.guddati@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v4 1/6] drm/i915/xe3: avoid calling fbc activate if fbc is
 active
Thread-Topic: [PATCH v4 1/6] drm/i915/xe3: avoid calling fbc activate if fbc
 is active
Thread-Index: AQHbbLBRzxvJ7s2UH0ubSP2rdnAharMjGWSAgAAFBYA=
Date: Wed, 22 Jan 2025 18:31:49 +0000
Message-ID: <8d575b6ecd98575ac88eb4e3b8a7f258cf670e14.camel@intel.com>
References: <20250122093006.405711-1-vinod.govindapillai@intel.com>
 <20250122093006.405711-2-vinod.govindapillai@intel.com>
 <Z5E1XQuNBKnLn8jg@intel.com>
In-Reply-To: <Z5E1XQuNBKnLn8jg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|PH0PR11MB5175:EE_
x-ms-office365-filtering-correlation-id: bb552956-e35a-46a4-e289-08dd3b130895
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?MVVnY0pZOFNCTnBkbStaWG03blNjOW9QT1FMMG0xcHNYaktoODN6NGhUSHpK?=
 =?utf-8?B?SGYyeGQ4TVoyZUtiZEdWWEtWdGcvdGs2Z0tGZjIyRGo0Z1QrbTkwU2tONzV1?=
 =?utf-8?B?bHNtZzJWay91NE9IUkp5UitGS0lQMzk3MWVlNlgvZWhSTUMxZnMyMFlkTlBi?=
 =?utf-8?B?ZjhMRE1WUk5pQTFNTXpLam1HTFAwNUdWc3QxakVvK2c3aWdTU2I4ZDAxK2hn?=
 =?utf-8?B?OHg4MHZITlZFVFRqdTlFQ1ZOUjBXUWphNk5CTWZ0Nm4rOWJNbHNtRzhwQW0v?=
 =?utf-8?B?dlRpL1F3eFc2NVFXKzZ5Z2NkeGgwMlBuaVl5YmorRDQzcnFDM0oyYzZEemow?=
 =?utf-8?B?QUVpcG9SR2NKbks4ZjNBVjcwQWNvRlp5a29TWWlveTY4ajl1OWl6aUFmbi9W?=
 =?utf-8?B?NVhRSlA0TmRBNXl6cXE1U0JvaE1HMTRSQkV1bS9tR1RlUzRabFJvak1qd2NX?=
 =?utf-8?B?emd5Qm5FRUxDVEpxSXRaV2NOcmNETWNZb1o0ZXUwdU13MmRVc3h1TVhsZ3VH?=
 =?utf-8?B?eDdSYkZta3FIUDJnODI3cFFueEpQZU9LY014U2k5SzNocXIzUzQydlJ5NXUx?=
 =?utf-8?B?a1BDc3Mzb05XcEtKL3UzVFJYWmNXN1RPZkg2NnBPWC9EbVJvS08xazc5akZk?=
 =?utf-8?B?Rnk4bmVLdnNId0FkUUZuWGVLcHN6SUJVRTl1dldHTVYzZ0NSMDVIY3M0V011?=
 =?utf-8?B?dzIreGwwR1VIRC9sTUhhTnpXczRpQ2NZUlE5S3B4RjV1U08xRGVXWmJEWE5w?=
 =?utf-8?B?UUxDaGxOSU9KMUFhbU1Sd2FVNHRqK2h5dlZNRmErMDlqZWpqY3RYbkVtMUdl?=
 =?utf-8?B?bXVQYXgwM3FGMVVmMm96TkhOYjF3SU5KVFVLVjBndE14UVhTVEhHOVdaQnVr?=
 =?utf-8?B?S3JNNno4NkVad3dZQXZtNk1xRG9VWTFFQU9iM2RtZDIzcDJpRmorQkV6aFJv?=
 =?utf-8?B?VjEwelJGMmhjK3R0OTJqTi8wWW41Yk9iYTRrenh6Q0hrM0l0TlZwdmhmcUdh?=
 =?utf-8?B?WEUxZDIxdXVGdUFwTFJMcDBBTnJoM2dUM05hV0JiRkNTVEVuZUdaSnBjUmlP?=
 =?utf-8?B?TjNJeVlMY0N6N3o2VFVrS3dkWUVkcVNSRGk0MHFXZUszMWh1Q3B3ZG5Ib1dI?=
 =?utf-8?B?RkwvekJOV2NuY0tpYWxNTDVaTGxhc2tpcGdGelJwU3VtdGxUMXUxQWx5cCtm?=
 =?utf-8?B?TjBiRk43SFdtcXR1K21oM1lQS1RGNGsrbFB0M0Z2blQ3TnhqdTdqcUdDcjc2?=
 =?utf-8?B?NWNTMlZJRmNGQkxmYnRmRmVWa0ZQQkgyMDRhcE5FNmtKeVdVcVNydTVPOEV0?=
 =?utf-8?B?NlBNSllHWldzVm9pcFV3bFh3TFg2WjBsamFtSlczYjdpS1NGQlBmMXhQeTJP?=
 =?utf-8?B?ekpTbXhzdnAweDdrMVVDNmJSUERpaURSRjN5aldpc0l6anZueE40R3ErWnNB?=
 =?utf-8?B?Z2U5bHJCb0Y0dVk3SnlpZXZJUUtleGtOY0tKZUl0Vi9BRFB3aHV6b3FleVZY?=
 =?utf-8?B?UmE3ZWR2cFRqT25FUWd3NFJEM0lNczMvaXpya0hxZk1TNG8xNWQxbmx2bU5J?=
 =?utf-8?B?T091MVRleUhxcXZVcUFSaUI4bWdzTU9xaFI0bkdGbzliLzk0eUgrZWpFR1Zj?=
 =?utf-8?B?cFk3ZXVKRnh4VWVnLzV1Y21YdEgxRzV0c0orSVptZkFnNUtrdXdpTkxQMUdj?=
 =?utf-8?B?MEV6MU4vRHYyOXRPbWZGTGNHTGRoNTFxVitUWnY5QlhKOFVVYncxZExWeWJW?=
 =?utf-8?B?N2lhM2FkMm1jRUNWeEl4cjBDNnh2Yi92c3pobDZDZFM5WEhPNHJLZjh1T2ZC?=
 =?utf-8?B?N09KajRoMFpGMkhFYlVaeHhRek1JREh2R2w1djlPWWpDZ0RUZnVkc3QvTEtn?=
 =?utf-8?B?VUU4M2xQZVhPa2QvQzkzSndaazJBYlFpT1BsQnFuQ1Izb3ltNy9sUG5YWGpH?=
 =?utf-8?Q?hQGmRQ/D5NNKwQGvGDVks8l7oGEEOQ/G?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VkQ2R0hRQTBvRDB3L0hvVXFiWU44cko5dzdvc0FrRFdoTEtaVEZUcGpuRVli?=
 =?utf-8?B?OXJwRGlaSXgwNFowaCtjSDRaMmJHaVdrb0diWTVBeHZBL0tyaU8wQWszaHBF?=
 =?utf-8?B?dHZCMDZSbnlaTDkxbWVmNHdPb2I2cFpJamZsako3U0NtbHB3dTYvNm43NzlG?=
 =?utf-8?B?allXV2hoQyt2bXFwSi9vVUdYQUFaZUJaWlNQV3BBMXMxd0tlVHNEd3YrS0cw?=
 =?utf-8?B?cWZWcTA1OGVBQ3hkbDdXeXl5enpLQkhxMjZqZWxYSU0yWG4wUG5TRVhRcitp?=
 =?utf-8?B?cExmNUNZRXRQNHhSbmJNZjFCeEQvbDVJeXRBYWhvRkpXV1RUZHhDaSthd002?=
 =?utf-8?B?TkQ3TG8rR3NrblVSamxMK2UyY1BjWWljR1lIeXhLQVBaSDZLMUJyT0dqVXFq?=
 =?utf-8?B?ZWE0eEMwbXR0a0w0YmlrbEsySmk0eGFqVURKMThDRTd3WkIxcEI0aGY0Ymc4?=
 =?utf-8?B?MVppTHUvYUt3VU1RQ2wyeHo2UlYxVmN1NGxmbk10UVhrQlVmUW5WWDZRVlB3?=
 =?utf-8?B?ZjF4clkyNmRienFlU2UzdEp5ZXliUWVNdndiZXYrSys0bmdlOW9GSENNa1RG?=
 =?utf-8?B?clF0U29sMUx2TnNVN1JQTThhSVJDMkRYMGxMMG5NblVSQnpBZ3Q1Z1lNSFpH?=
 =?utf-8?B?UVNxMjlqNFZXNUNXQ1pOVndrWW5sdkhxYklLWUw3K0JpcmVYYVdudHFnb1pw?=
 =?utf-8?B?SXdmRVJGN1FTeVpvV3JvVWhPVFM2YXhGQkFZcFAvTWE1ZGYrOTRuM1BHUm9J?=
 =?utf-8?B?c1VjOTFMYk9FV01KOVRDY1RxSVNjMWNJRmxlejMwa3ROME1ubi9BR1VKU0tk?=
 =?utf-8?B?NUZ6WGt2dE1VUUQ1RG5GREpIa2RsVDA5M29JT2l5NGhlV3huK3kwVlkwcFdN?=
 =?utf-8?B?QWpPOS84SU9nZ0pFaHdDZVZXakVPWUhCcXZ0OUdmeTN4MUZoSHVtQ0xjbFpG?=
 =?utf-8?B?dXBlUktpd1dIWWY5TmFvbWFSd2lZZktKd0lublE0eklHb2hkbEIrM2xoTUto?=
 =?utf-8?B?WDlSRGpGOEpJVmN4MEw3cDJadlcxc001NlAvV2J3QmwySXA3cFVGNVZxZVpH?=
 =?utf-8?B?bDUwRlBWVkVvdUh1Y1h3MnRGVHViM3QrZW9vYWxGcEdQSzM3QUlXcnpGdThl?=
 =?utf-8?B?dHpocFVkempVQmpLeUZYdXd1OUdJWXlSZ2ZRTWxMNmJIaGtKT2JvRHRVOVRU?=
 =?utf-8?B?WFZyK1hpdE5sSVhzYzVXK0lFMFgyRCtHWXJvU0RsQ1k4VFhaK1RrUU1zbVJF?=
 =?utf-8?B?U0dqUCs4L0ZCRkVMZVVJOWhqN0I5SkxNZyt0SXM2dlJEdmZyVXVSVHR6T05O?=
 =?utf-8?B?aVBSZUtjazJxWDFoaUx3NllsZUI0eGlqYVV2ZlAzRWtsMUpJeWFVcG9rYVFY?=
 =?utf-8?B?dHlBVUgzSnNMZkh1OUtHTUdhMVhJQ2lsMlQ1T1RmSXppOU1KUEwvZVIzUkVT?=
 =?utf-8?B?T1IyKzZrbDlMQ3JDRnVzMDQ0SktDVlEveUVyTVZQNWJLSE0yVGxRb3dPVHdG?=
 =?utf-8?B?ZW90KzQwTlJLNk1lekk1Q3BZT1pXQjljNWV2WkgxN1VQckRsbWl3YnlydlhJ?=
 =?utf-8?B?blp2MjdSZlhBWjRjdFZXSmh6VzdkdjBFbmtPU2hnRUJ6WTBQNTg3TFpIaE4v?=
 =?utf-8?B?bjFsOVRDTVBYUW00OURVNURYellNeVpEWFVWeWxuSFRESUhlTWRBVG5uWE5Q?=
 =?utf-8?B?NGlCemhsN1RUS3RIcjdvQzNMMWRDb2l3SnNjOGVYbVN4cHkzMkY3dlg3c1pZ?=
 =?utf-8?B?aCtoRndJZDFTM1BYQUoyalNmZmo1WHFHUzhCVnhWcGtXbC9LUnczMHVPMStK?=
 =?utf-8?B?VTZIQ1ZtYitIdlJxU05jK093YjN6Wjhiem56cUt1VmJCYk1WalhaOXI0NHlR?=
 =?utf-8?B?K2VLTjR6UGpMYXlheTMzUVg2VnJ0YldUVGMzWGJDOHQzbWdoc3FvS245bXBO?=
 =?utf-8?B?STlabWFLSDRYNk5xYVRHVFpKZjJKdU9oWEF6WHh2SndwdmRuL2pFMGVKbm1S?=
 =?utf-8?B?WXB5Q01xejlab3VraW5WbndwclhlL1dEYlY1bUtOSGJDbWk2eHZpakljbDRs?=
 =?utf-8?B?eXF1WGVaKzFaV3dOWGE5aE8xdld0RDVoV2ZJaHRFYjdncEhLTnlWbWZPVU96?=
 =?utf-8?B?Y0dzYk1nOEhhemlEdFpiQ1ZOVitDRyszT3dKMU1QVzAzYllTT3NIWW9Db1Fj?=
 =?utf-8?Q?IY358GyeKMNtozaMlFSglSM=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1AEB71AF2222044CA4EC01CBB6A9CF12@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bb552956-e35a-46a4-e289-08dd3b130895
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2025 18:31:49.0811 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m8B2jVdmgPWJCM/0HQSH+lphgWyQHGGv8gj8Oxq9NtaoisAWJMRPNS4XrABA32RWzrr7ukvF6NsFIDRDcml2o+zVs8mCxzf0+GrdAipfwP4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5175
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

T24gV2VkLCAyMDI1LTAxLTIyIGF0IDIwOjEzICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgSmFuIDIyLCAyMDI1IGF0IDExOjMwOjAxQU0gKzAyMDAsIFZpbm9kIEdvdmlu
ZGFwaWxsYWkgd3JvdGU6DQo+ID4gSWYgRkJDIGlzIGFscmVhZHkgYWN0aXZlLCB3ZSBkb24ndCBu
ZWVkIHRvIGNhbGwgRkJDIGFjdGl2YXRlDQo+ID4gcm91dGluZSBhZ2FpbiBkdXJpbmcgdGhlIHBv
c3QgcGxhbmUgdXBkYXRlLiBBcyB0aGlzIHdpbGwNCj4gPiBleHBsaWNpdGx5IGNhbGwgdGhlIG51
a2UgYW5kIGFsc28gcmV3cml0ZSB0aGUgRkJDIGN0bCByZWdpc3RlcnMuDQo+ID4gWGUgZG9lc24n
dCBzdXBwb3J0IGxlZ2FjeSBmZW5jZXMuIEhlbmNlIGZlbmNlIHByb2dyYW1taW5nIGFsc28NCj4g
PiBub3QgcmVxdWlyZWQgYXMgcGFydCBvZiB0aGlzIGZiY19oYXdfYWN0aXZhdGUuDQo+ID4gDQo+
ID4gImludGVsX2F0b21pY19jb21taXRfdGFpbC0+IGludGVsX3Bvc3RfcGxhbmVfdXBkYXRlLT4N
Cj4gPiBpbnRlbF9mYmNfcG9zdF91cGRhdGUtPiBfaW50ZWxfZmJjX3Bvc3RfdXBkYXRlIiBwYXRo
IHdpbGwgYmUNCj4gPiBleGVjdXRlZCBkdXJpbmcgdGhlIG5vcm1hbCBmbGlwIGNhc2VzLiBGQkMg
SFcgd2lsbCBudWtlIG9uIHN5bmMNCj4gPiBmbGlwIGV2ZW50IGFuZCBkcml2ZXIgZG8gbm90IG5l
ZWQgdG8gY2FsbCB0aGUgbnVrZSBleHBsaWNpdGx5Lg0KPiA+IA0KPiA+IFRoaXMgaXMgbXVjaCBt
b3JlIHJlbGV2YW50IGluIGNhc2Ugb2YgZGlydHkgcmVjdGFuZ2xlIHN1cHBvcnQNCj4gPiBpbiBG
QkMgd2l0aCB0aGUgZm9sbG93LXVwIHBhdGNoZXMuIE51a2Ugb24gZmxpcCBpbiB0aGF0IGNhc2Ug
d2lsbA0KPiA+IHJlbW92ZSBhbGwgdGhlIGJlbmVmaXRzIG9mIGZldGNoaW5nIG9ubHkgdGhlIG1v
ZGlmaWVkIHJlZ2lvbi4NCj4gPiBBbHNvIGFueSBGQkMgcmVsYXRlZCByZWdpc3RlciB1cGRhdGVz
IHdpdGggZGlydHkgcmVjdGFuZ2xlDQo+ID4gc3VwcG9ydCBlbmFibGVkIHdpbGwgdHJpZ2dlciBu
dWtlIGJ5IEZCQyBIVy4NCj4gPiANCj4gPiBUaGUgZnJvbnQgYnVmZmVyIHJlbmRlcmluZyBzZXF1
ZW5jZSB3aWxsIGNhbGwgaW50ZWxfZmJjX2ZsdXNoKCkNCj4gPiBhbmQgd2hpY2ggd2lsbCBjYWxs
IGludGVsX2ZiY19udWtlKCkgb3IgaW50ZWxfZmJjX2FjdGl2YXRlKCkNCj4gPiBiYXNlZCBvbiBG
QkMgc3RhdHVzIGV4cGxpY2l0bHkgYW5kIHdvbid0IGdldCBpbXBhY3RlZCBieSB0aGlzDQo+ID4g
Y2hhbmdlLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZp
bm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYyB8IDExICsrKysrKysrKysrDQo+ID4gwqAxIGZp
bGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiA+IGluZGV4IGRmMDU5MDRiYWM4YS4uYWI5NjQ5ZGQ2
MDZjIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZmJjLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5j
DQo+ID4gQEAgLTE1NTYsMTEgKzE1NTYsMjIgQEAgc3RhdGljIHZvaWQgX19pbnRlbF9mYmNfZGlz
YWJsZShzdHJ1Y3QgaW50ZWxfZmJjICpmYmMpDQo+ID4gwqANCj4gPiDCoHN0YXRpYyB2b2lkIF9f
aW50ZWxfZmJjX3Bvc3RfdXBkYXRlKHN0cnVjdCBpbnRlbF9mYmMgKmZiYykNCj4gPiDCoHsNCj4g
PiArCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gZmJjLT5kaXNwbGF5Ow0KPiA+ICsN
Cj4gPiDCoAlsb2NrZGVwX2Fzc2VydF9oZWxkKCZmYmMtPmxvY2spOw0KPiA+IMKgDQo+ID4gwqAJ
ZmJjLT5mbGlwX3BlbmRpbmcgPSBmYWxzZTsNCj4gPiDCoAlmYmMtPmJ1c3lfYml0cyA9IDA7DQo+
ID4gwqANCj4gPiArCS8qDQo+ID4gKwkgKiBXaGVuIGRpcnR5IHJlY3RhbmdsZSBpcyBlbmFibGVk
LCBhbnkgdXBkYXRlcyB0byBGQkMgcmVnaXN0ZXJzIHdpbGwNCj4gPiArCSAqIHRyaWdnZXIgbnVr
ZS4gU28gYXZvaWQgY2FsbGluZyBpbnRlbF9mYmNfYWN0aXZhdGUgaWYgZmJjIGlzIGFscmVhZHkN
Cj4gPiArCSAqIGFjdGl2ZSBhbmQgZm9yIFhFMyBjYXNlcy4gWGUgZG9lc24ndCBzdXBwb3J0IGxl
Z2FjeSBmZW5jZXMuIFNvDQo+ID4gKwkgKiBubyBuZWVkIHRvIHVwZGF0ZSB0aGUgZmVuY2VzIGFz
IHdlbGwuDQo+ID4gKwkgKi8NCj4gPiArCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAzMCAm
JiBmYmMtPmFjdGl2ZSkNCj4gPiArCQlyZXR1cm47DQo+IA0KPiBEb24ndCBsaWtlIHBsYXRmb3Jt
IGNoZWNrcyBpbiBnZW5lcmljIGNvZGUuIEVpdGhlciB3ZSBzaG91bGQgDQo+IHNraXAgdGhlIHN0
cmlkZSBwcm9ncmFtbWluZyBpbnNpZGUgdGhlIGh3IHNwZWNpZmljIGZ1bmN0aW9uLA0KPiBvciB3
ZSBwdWxsIHRoZSBzdHJpZSBwcm9ncmFtbWluZyBpbnRvIGEgc2VwYXJhdGUgaG9vayB3aGljaA0K
PiB3ZSBjYW4gdGhlbiBza2lwIGNvbXBsZXRlbHkgd2hlbiBGQkMgd2FzIGFscmVhZHkgYWN0aXZl
Lg0KDQpXaGF0IEkgdW5kZXJzdG9vZCBmcm9tIEh3IHRlYW0gaXMgdGhhdCBhbnkgRkJDIHJlZ2lz
dGVyIHRvdWNoIHdpbGwgdHJpZ2dlciBudWtlIG5vdCBqdXN0IHRoZSBzdHJpZGUuDQpTbyBpbiB0
aGlzIGNhc2Ugd2UgbmVlZCB0byBza2lwIHRoZSBlbnRpcmUgaHdfYWN0aXZhdGUgaWYgdGhlIGZi
YyBpcyBhbHJlYWR5IGFjdGl2ZS4NCg0KQlINClZpbm9kDQoNCj4gDQo+ID4gKw0KPiA+IMKgCWlu
dGVsX2ZiY19hY3RpdmF0ZShmYmMpOw0KPiA+IMKgfQ0KPiA+IMKgDQo+ID4gLS0gDQo+ID4gMi40
My4wDQo+IA0KDQo=
