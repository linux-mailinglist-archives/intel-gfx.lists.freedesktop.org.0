Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA43591C041
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2024 16:03:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D96F10E021;
	Fri, 28 Jun 2024 14:03:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nZSQqfAy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B024010E021
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jun 2024 14:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719583431; x=1751119431;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=gWOXnn2JRLlswHbJnsOYM/Ub3vWBdde2S4XYD68z+fc=;
 b=nZSQqfAy7bRa3ydOcQRuBjtqP68qMP2YIy4/UkYeqangI7d4hAHd2h/U
 n6HrGXla6Cl0HV5u6MlODkhoWT6bVY4XSEjonHLS8bD3hIPvCXSyk0MMV
 fZgzCod9WSVUk/jPshlpmGMy525oJKvILidAT7hbHL0jTXdSs4KC4aVJo
 Lr3+csqzgIay1xG/Rq2TmuKF/x2OGNUKOXVT1jNfSGznjfCnycrOxY3ZX
 XYcmNIMlVoFmhpq1duPE2QDHmJvkBuFcl1fMAbJp0O4rw4bUNOSRlGU1b
 8YWHYk+laogeNKnwAOq9tTDzvlQ6x9ObSmpJfert5Q6Jr89mDOsnpMENR Q==;
X-CSE-ConnectionGUID: fp2PQh/fSvG38HbDuKLb4Q==
X-CSE-MsgGUID: yBhdGYQ1RU2tVlq8m7gFVw==
X-IronPort-AV: E=McAfee;i="6700,10204,11117"; a="39280707"
X-IronPort-AV: E=Sophos;i="6.09,169,1716274800"; d="scan'208";a="39280707"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2024 07:03:32 -0700
X-CSE-ConnectionGUID: 8MslQsDOQXKWekB4v5F5rw==
X-CSE-MsgGUID: qRow7yhiQyeAiTyaFlI6Pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,169,1716274800"; d="scan'208";a="49224094"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Jun 2024 07:03:32 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 28 Jun 2024 07:03:32 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 28 Jun 2024 07:03:28 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 28 Jun 2024 07:03:28 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 28 Jun 2024 07:03:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ikmh2vjn/XVrQsXT3g7wskEyFnneI7Cv0QUSo+Raou00/HEgnoIEVSQGT8V4KzX9x1dECraFWb1zKNRbSsTnoVtH+wdovwsWzROvDOcqKqRrut4K5BsrbPL2rH1h3vuoMm9/ymUISb3rf+SYP5vaN4QF68kho88jT5DUl7PxnaAWi8sUfkJL6IMMpek/viR2PBVsfSmo9nK8HzknWy5uZfiWTyR/KYVLKAzi4Ve/NZC7wHQwxb8jAtDJNqqmGo5ppNm81MU1/nHahQb4ljIoxb2W696bH6RduWVCRRRvs0xRYwH+cqwG0fsHkT0gWvfIl32bSf0OzqtYSEUaEMe+kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gWOXnn2JRLlswHbJnsOYM/Ub3vWBdde2S4XYD68z+fc=;
 b=gzp92+aEXB2iD5LMM5aJGoQZZGZO28fag7Cm7MB7/Q0V5v/RyYLB3nmqq0onmMDpDsVoRxvI+xl+4jLTiPR1YXszz1/En3Wi4BMDmw+R1bm+5VOqZ8/KinPIkUs+tgaVyIGpaA2yY1G6J5hrnZW6H3s2XxbPsYkS/X5I3wGEVDNIDhfhjtHbjs5jAOumsgM2IG+B+J+M0QOYwMdmXEzyNiMgQfrK+s6kZd27BsWcsSzb6hGCkCX74WTi/+wNLdhwbSC79SkVR4ZpY+M9BOsJYBut9uhAu/H5+u5w2QQBxVKZwi2m//hBovjF1+VV7OxqmmLaLQr5TF24DAINtWDx+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5655.namprd11.prod.outlook.com (2603:10b6:8:28::10) by
 SA2PR11MB4889.namprd11.prod.outlook.com (2603:10b6:806:110::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7719.28; Fri, 28 Jun 2024 14:03:24 +0000
Received: from DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9]) by DM8PR11MB5655.namprd11.prod.outlook.com
 ([fe80::f6db:9044:ad81:33d9%5]) with mapi id 15.20.7698.033; Fri, 28 Jun 2024
 14:03:23 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: =?utf-8?B?UkU6IOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9pOTE1OiBQUkVF?=
 =?utf-8?Q?MPT=5FRT_related_fixups._(rev12)?=
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IFBSRUVNUFRf?=
 =?utf-8?Q?RT_related_fixups._(rev12)?=
Thread-Index: AQHayWEnKLe/5zssqE2JjjylJ3q0/7HdNL0Q
Date: Fri, 28 Jun 2024 14:03:23 +0000
Message-ID: <DM8PR11MB565577849336614AD398C60CE0D02@DM8PR11MB5655.namprd11.prod.outlook.com>
References: <20240628130601.1772849-1-bigeasy@linutronix.de>
 <171958218703.185831.8019890857290957757@a6498e030952>
In-Reply-To: <171958218703.185831.8019890857290957757@a6498e030952>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5655:EE_|SA2PR11MB4889:EE_
x-ms-office365-filtering-correlation-id: ad741f41-dce8-410b-95d9-08dc977b133d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?bXJCVzVQbGlmdFVZeE5MU3JjajRHUy8rNGlvRzNmRFQ2OVgwRFJlbnhsNkMz?=
 =?utf-8?B?cmExc3dGZHAwbVQ1SG5Ob2hrVEZBVVhCdEVyU3BPQnlZaFVLMElvWVpYRXlW?=
 =?utf-8?B?Skk0TU5CcHl2dlFUcUd0SFFRQXZlTGNndFVZVGNlSEZ3TzJBWStHNzJZSkV5?=
 =?utf-8?B?TUt1ZkVmS0lNQVVhN2hlazZNZDJhSWx6VFE4MHBCb25Hc2NOWUcvZUlZRjZo?=
 =?utf-8?B?eVlYWFpOLzRnWWRBQ3ZzME1ZaG9EdzFiZXBncVArbHF0S0NlbXZqNkhiUlll?=
 =?utf-8?B?RTdMRGhZN29RSkZMZEhYSW5sR0VHM0dzZjRabXZmZk1qUXBQL3RQTGw4cDlU?=
 =?utf-8?B?NzFtcEdyY2tXckFCQjFkVnRFamEwcEhyR2hwWDBjSU9zd0ZVV2MzV1dmOUlC?=
 =?utf-8?B?cHk2enpJYUw0eTMyVWtHNEMxYWp5Q3RjTllOQnI2MTBSdDIwUHh1T1pHb2Fx?=
 =?utf-8?B?cWIxalpNaVFOMGZhbDZkY0NCUkNicFR4OW5vczVZajZEdUdrOVJadkQrMmZH?=
 =?utf-8?B?N1J6am93SFlEWWJXUEJDTTJpdkdrZVMzcXpiSndtTmw5MTBWWkdhV1hzdTdE?=
 =?utf-8?B?dFY5M0F5Tkc3SVBxR1FVVVlxUkNGUjNqRnU1YXJ0UnMyNGJqbk16QU9oNm43?=
 =?utf-8?B?Ty94czYwOW41d2RoVzlkL24vWWw0VHRKMUU4eXlxYWlQNjRJbm43UStSSWpD?=
 =?utf-8?B?eXZuU1o5OXVoa3dZZG5JTDkvVi9idnp5Y21YVWx4eHE5Q2d2RU5EMFlydVNm?=
 =?utf-8?B?ZXNKa24xVXBxU3Zxanc5T3NFYmlySHZTSktEbWI2RzRQa0Mya2JFTHV2UUI2?=
 =?utf-8?B?Qk1lY21xZGFUalFNWFQ3YlY5RFpiSWFNYTNtbmhSNER4bzNxSG9leUhhRjMr?=
 =?utf-8?B?Zkd1aWRWRXJ1dU1ReUM3a0xxcGtSMzAvendGV1FUcklHMWpHakk5MFRDTjZ4?=
 =?utf-8?B?ZVA4RHRHQUV4MFB6WXZSUC9QQVZ1MjhxaVpQdXhGUWZuUHJMV3h3d1dScXZH?=
 =?utf-8?B?NGdJWXdMaVFYUW41M3dwNUxQZ000SkJ5SUNSdnJrb1lWa3FHZzJwRjVDdUJU?=
 =?utf-8?B?VHRjV05weE5ldFJFUGtDWHMvenBrRVhibUFyVU9Za0Z1c3BXRmtvVm9VOU1a?=
 =?utf-8?B?cmJQc09HU1NXWmxwUnluOUdMVlEvTDlZaVNJYTdXK25YQmlIelROT3NqNlV1?=
 =?utf-8?B?MUhlYkxOdVdLcGxsVUY3eWVvU0dZWVREdGc1QTVOZzJUOENhckJXQ3RWT1hp?=
 =?utf-8?B?WVF4QXhJNzd2TmpqamU5QW1yaUxtVHdneVdjcjV6K3laYSttczVmY0l6a3Nr?=
 =?utf-8?B?TGNiWEVJRWRXV1dna0pZNnJodERQdmlyWXFOTXJNUE13VGVxa0ZJZ2IzNmt1?=
 =?utf-8?B?VVFLSkh1MnYrRmNQS2dNWnVIREN6TGhhdDV5N25aVlBnZUg0K2JmY0J0dWdz?=
 =?utf-8?B?NHprRXBHM3gyYml0d3lnUkRmNG9WaVNLbm0wVys2anlyMjhBNDN1N1hwcXVy?=
 =?utf-8?B?SVdXaXpSVjZiQU1ibDRlOHlrQlNlNkNicTRxM2JIdE41VGNGS25vODNZbjNy?=
 =?utf-8?B?WVRlaXdWaVd0VFFKY1c2NVg0cHRSWmlRRWhobS9sZzBlcTlEMGxYY3FXV0xX?=
 =?utf-8?B?MTVuUzEzQkxUNHROV3VURmszSkxwVnNHNkk2NXg4b1JnTzVmaWcvbTNFWll6?=
 =?utf-8?B?UXFBZjB0SnVZSDZLdFRVUWxZSEtpQ0VCc2tQUWErcjJib0xTa1Nma1RoRFZJ?=
 =?utf-8?B?eTFDcVVqbGZuMU5ONjRGMGlZUUZRRFdKOE9wSmxERjV0M2NpMnRiUmQ3SUs3?=
 =?utf-8?Q?e93BUDri1N+8f9JsB5BbOCqyis8EPeYdTfy9Y=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5655.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OXBIVmZncjBkVWZnekpKeXFVeDFUbjl4VEs5aU9FWU9kVVRGcElTZjBtdHJT?=
 =?utf-8?B?VkxwMXBqQnptUkpRWmRHZWZSTTViSHovd3JDSTVlSE16cVZMay9KV0xDSHdp?=
 =?utf-8?B?OWFUa29yOXVXTjFsYkdsK1hYcGZlN2hVcjg2MWdyMkd3V20wSGpVMzVIMWRu?=
 =?utf-8?B?NlRzbjhIRFlzUHFMMWpob0V4d3Mvb29wNkdNMjVLTEI0RVkvZ1FHQnlPTmw5?=
 =?utf-8?B?TlEyUkM2bVBtT0VqektNT3FWMWJOdnFtbE5ndVNudGplZHFUbFpPQ0E2amFs?=
 =?utf-8?B?WE1qanpCNVQ3UHNLYVk0T25OZFR5OWNtK3kzL0hSNVFGcCsxTFBwZFRhTmtl?=
 =?utf-8?B?RGlaRzk1eUd5a01QNjJ4enUvSHowQnJNTmIxampOa2NRaXpZdFE4TVNlT0RC?=
 =?utf-8?B?WDlWNW1qNVRBWjN6RXgrTW1kRE9ORGNwb1Yvc01QK1c4enFXN3hndzhYaVZu?=
 =?utf-8?B?dVlMaWpZUk9RYjM5Q3Ivazhsc1YxVi9NNlYwQjU1dTFGc3d6Vkk3OTF4VFU3?=
 =?utf-8?B?Zmc2MldCR3FLTytINGNkU0J6SUo2N3p1Qml2VVZGNTJPOTJ4NjhmUm54S0dH?=
 =?utf-8?B?MGFBdnZtbERjNmJZcmc3RUovcnZyMlpjdzlXNVdoc0RSSkxiN2VlelRsZnRo?=
 =?utf-8?B?Zm1ZVnRmNDVzakFtOXBwdkMwMFlFd1cxTnR6d2l2REsyeFl3Uy9WRFhpZmN5?=
 =?utf-8?B?U09ROGhIakkrbDlCaDVtWDFicktxUENCNitFL0RJR0toS2QvMjNGcmZYMy8y?=
 =?utf-8?B?Z2xhK3FNdjZTbzVBeURKVktFTzRvRDBkT2pFVFBpbnZIdDA0c2F0T1Juc214?=
 =?utf-8?B?MUFJenAvc21PTG5LMjRuWHpmMDEyd3JTSHUwQWlVUmlTS0xTUWY0M1NGcmpM?=
 =?utf-8?B?RVR0N1E2TDdXQVo5R1B6Z3o5NWhWRTROd01DS0liVVZYZ2lDMFZPak15eGY2?=
 =?utf-8?B?YnMzYmEyTzlYVWp1TmkxaHRCZE5RQVhUMzRUZW5INjkyWVpZQXZGNUJiR3cy?=
 =?utf-8?B?WTQxZHZDUmQ1eHFyYWFBOHYzWUdXUDdUKzkyN1Z5SlBCNVJTSnJlVkJ2WHdY?=
 =?utf-8?B?Q0lCTy9Za1dPc3B1b3M1M2lLTjRjcUZwMCtpWW00d0VBL0NLb2pRaU5JbEYz?=
 =?utf-8?B?WkFkZHoxM0J2N3grU1FxS3pzRGo5VW0vN1k3VlFaeWZGYS9HSmlsQnJZMTdL?=
 =?utf-8?B?eGFMZ0tXZVlUVFJHVEM3Y2doOVlkWXM1Ym8yN0d3bkd6NWw0d2ZnQkl3R3kx?=
 =?utf-8?B?OWlKZ0Fya3VqWHJaQ043VjEySWEyMHZ6OXlYT3U2VVhQMkVsd3lGRVlHT2Ft?=
 =?utf-8?B?QWIrVG9kemhtb3JER1R6RSs3MzFKdlJxNlY4bkpIa2N3T1RFbTZNUGg0elpS?=
 =?utf-8?B?K090VHlmTFIyV0d5Y1Vham5uZVdsMzMrTHBGZzVxcjBOTWJYK01adzBOZDB1?=
 =?utf-8?B?M09yL2s0U3pkbTY3MjJ2OEs2OUZ1NmRDbUg3UFF4SmlWN0pJdVN5S0padU1J?=
 =?utf-8?B?NkJiN0NuSmlTVjlvWnREMGVXTHJuVE9TOEpCTjlSZThDSDNPbjlBaWU4c29W?=
 =?utf-8?B?cDFLS0c0SHlQeTBEVEhIODZvbjh0ZTR1eGhvK2xOQkhzKzRJcURzRTN1cHV6?=
 =?utf-8?B?dHpOaERlYnliUWZXY3RmSmpPQXAwOWZqQU5YclBlczhIbjF0Z0NBNjMzVldh?=
 =?utf-8?B?NVpHMjF5UTVkV2t5MXJQQ2tURC9YQ21TRGpaS2lXMFNDaEUwYWlKeFBmZFA4?=
 =?utf-8?B?V2V3TGQyMW9kVGN4OWN2RVk0aE52UVo4T0hmSFVhUTNaOGpnNnV5aEtNcVlQ?=
 =?utf-8?B?YkhKc1d2ZDc4YkFGbTdWekprYnRjUURaRzFucG14UEQxWW5pQnEzTXJmR2RJ?=
 =?utf-8?B?c0dxRXdwME9xMTZURmFzaTdRTU9HM3ZrSG1FeUJCRTZiWHViT1plbUNQeFJs?=
 =?utf-8?B?QS9CeE5GSGFySkhrYlZoZDE2YzBOdTJCVHBJQXpVQjZncWNHampVYlQ4MzU0?=
 =?utf-8?B?dlgzM1JUUzd4S3V6YUp1dmlMOGw5RFlHUTZCTDJNY3BiZVBtK0wwcEE0RTcy?=
 =?utf-8?B?Y3NyQTlxTURBS0xLL29laENLQVIrdzFBMXJkRXlTQnBYK3pPanpjRjdNQk5K?=
 =?utf-8?Q?AMSCPKuDIBc1XFobuHypLgZW6?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5655.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad741f41-dce8-410b-95d9-08dc977b133d
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2024 14:03:23.9302 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sh1JHlPpEkL0KVkf/IkkUvjLJgYX+FyaB2EhNlWmDVLJCFZfDkpWAYi2a+upeSIXmPCWS4x5rr1VB4Fja2SyGg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4889
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

SGksIA0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGlu
dGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mDQo+IFBh
dGNod29yaw0KPiBTZW50OiBGcmlkYXksIDI4IEp1bmUgMjAyNCAxNi40Mw0KPiBUbzogU2ViYXN0
aWFuIEFuZHJ6ZWogU2lld2lvciA8YmlnZWFzeUBsaW51dHJvbml4LmRlPg0KPiBDYzogaW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiDinJcgRmkuQ0kuQkFUOiBmYWls
dXJlIGZvciBkcm0vaTkxNTogUFJFRU1QVF9SVCByZWxhdGVkIGZpeHVwcy4gKHJldjEyKQ0KPiAN
Cj4gUGF0Y2ggRGV0YWlscw0KPiBTZXJpZXM6CWRybS9pOTE1OiBQUkVFTVBUX1JUIHJlbGF0ZWQg
Zml4dXBzLiAocmV2MTIpDQo+IFVSTDoJaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3Nlcmllcy85NTQ2My8NCj4gU3RhdGU6CWZhaWx1cmUNCj4gRGV0YWlsczoJaHR0cHM6Ly9pbnRl
bC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0KPiB0aXAvUGF0Y2h3b3JrXzk1NDYzdjEyL2luZGV4
Lmh0bWwNCj4gDQo+IENJIEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzE1MDEzIC0+IFBh
dGNod29ya185NTQ2M3YxMg0KPiANCj4gU3VtbWFyeQ0KPiANCj4gDQo+IEZBSUxVUkUNCj4gDQo+
IFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNod29ya185NTQ2M3YxMiBh
YnNvbHV0ZWx5IG5lZWQNCj4gdG8gYmUgdmVyaWZpZWQgbWFudWFsbHkuDQo+IA0KPiBJZiB5b3Ug
dGhpbmsgdGhlIHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNo
YW5nZXMNCj4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfOTU0NjN2MTIsIHBsZWFzZSBub3RpZnkg
eW91ciBidWcgdGVhbSAoSTkxNS1jaS0NCj4gaW5mcmFAbGlzdHMuZnJlZWRlc2t0b3Aub3JnKSB0
byBhbGxvdyB0aGVtIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUNCj4gbW9kZSwgd2hpY2gg
d2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLg0KPiANCj4gRXh0ZXJuYWwgVVJMOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9QYXRjaHdvcmtfOTU0
NjN2MTIvaW5kZXguaHRtbA0KPiANCj4gDQo+IFBhcnRpY2lwYXRpbmcgaG9zdHMgKDQyIC0+IDMz
KQ0KPiANCj4gDQo+IE1pc3NpbmcgKDkpOiBiYXQtYWRscC05IGJhdC1hZGxwLTYgZmktc25iLTI1
MjBtIGJhdC1hZGxuLTEgZmktZWxrLWU3NTAwIGJhdC0NCj4gZGcyLTE0IGJhdC1kZzItMTMgYmF0
LWRnMi0xMSBiYXQtYXJsaC0yDQpeXl50aGlzIHdvdWxkIGJlIGdvb2QgdG8gdW5kZXJzdGFuZCB3
aHkgdGhpcyBtYW55IHN5c3RlbXMgZG93biBvciB3YXMgdGhpcyBDSSBzeXN0ZW0gaXNzdWVzPyAN
Cg0KPiANCj4gDQo+IFBvc3NpYmxlIG5ldyBpc3N1ZXMNCj4gDQo+IA0KPiBIZXJlIGFyZSB0aGUg
dW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluDQo+IFBhdGNo
d29ya185NTQ2M3YxMjoNCj4gDQo+IA0KPiBJR1QgY2hhbmdlcw0KPiANCj4gDQo+IFBvc3NpYmxl
IHJlZ3Jlc3Npb25zDQo+IA0KPiANCj4gKglpZ3RAZGVidWdmc190ZXN0QHJlYWRfYWxsX2VudHJp
ZXM6DQo+IA0KPiAJKglmaS1rYmwtNzU2N3U6IFBBU1MgPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS0NCj4gdGlwL0NJX0RSTV8xNTAxMy9maS1rYmwtNzU2N3UvaWd0QGRlYnVn
ZnNfdGVzdEByZWFkX2FsbF9lbnRyaWVzLmh0bWw+DQo+IC0+IERNRVNHLVdBUk4gPGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS0NCj4gdGlwL1BhdGNod29ya185NTQ2M3YxMi9m
aS1rYmwtDQo+IDc1Njd1L2lndEBkZWJ1Z2ZzX3Rlc3RAcmVhZF9hbGxfZW50cmllcy5odG1sPiAg
KzUgb3RoZXIgdGVzdHMgZG1lc2ctd2Fybg0KVGhpcyBpcyBrbm93biBpc3N1ZSBodHRwczovL2dp
dGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVzLzExMzI4IA0KDQo+
IA0KPiANCj4gS25vd24gaXNzdWVzDQo+IA0KPiANCj4gSGVyZSBhcmUgdGhlIGNoYW5nZXMgZm91
bmQgaW4gUGF0Y2h3b3JrXzk1NDYzdjEyIHRoYXQgY29tZSBmcm9tIGtub3duDQo+IGlzc3VlczoN
Cj4gDQo+IA0KPiBJR1QgY2hhbmdlcw0KPiANCj4gDQo+IElzc3VlcyBoaXQNCj4gDQo+IA0KPiAq
CWlndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkOg0KPiANCj4gCSoJZmkta2JsLTc1Njd1OiBQ
QVNTIDxodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9DSV9EUk1f
MTUwMTMvZmkta2JsLTc1Njd1L2lndEBpOTE1X3BtX3JwbUBtb2R1bGUtcmVsb2FkLmh0bWw+ICAt
DQo+ID4gRE1FU0ctV0FSTiA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0K
PiB0aXAvUGF0Y2h3b3JrXzk1NDYzdjEyL2ZpLWtibC03NTY3dS9pZ3RAaTkxNV9wbV9ycG1AbW9k
dWxlLQ0KPiByZWxvYWQuaHRtbD4gIChpOTE1IzEwMDYyIDxodHRwczovL2dpdGxhYi5mcmVlZGVz
a3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0NCj4gL2lzc3Vlcy8xMDA2Mj4gIC8gaTkxNSMxODAg
PGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLQ0KPiAvaXNz
dWVzLzE4MD4gIC8gaTkxNSMxOTgyIDxodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJt
L2k5MTUva2VybmVsLy0NCj4gL2lzc3Vlcy8xOTgyPiAgLyBpOTE1Izk5MjUgPGh0dHBzOi8vZ2l0
bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLQ0KPiAvaXNzdWVzLzk5MjU+ICkN
Cj4gDQo+ICoJaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBzYW5pdHljaGVjazoNCj4gDQo+IAkqCWZp
LWtibC03NTY3dTogUEFTUyA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLQ0K
PiB0aXAvQ0lfRFJNXzE1MDEzL2ZpLWtibC03NTY3dS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQHNh
bml0eWNoZWNrLmh0bWw+DQo+IC0+IERNRVNHLVdBUk4gPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS0NCj4gdGlwL1BhdGNod29ya185NTQ2M3YxMi9maS1rYmwtDQo+IDc1Njd1
L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAc2FuaXR5Y2hlY2suaHRtbD4gIChpOTE1IzExMzI4DQo+
IDxodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0vaXNzdWVz
LzExMzI4PiApICs0MCBvdGhlcg0KPiB0ZXN0cyBkbWVzZy13YXJuDQo+IA0KPiAqCWlndEBrbXNf
YnVzeUBiYXNpY0BmbGlwOg0KPiANCj4gCSoJZmkta2JsLTc1Njd1OiBQQVNTIDxodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9DSV9EUk1fMTUwMTMvZmkta2JsLTc1
Njd1L2lndEBrbXNfYnVzeUBiYXNpY0BmbGlwLmh0bWw+ICAtPg0KPiBETUVTRy1XQVJOIDxodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9QYXRjaHdvcmtfOTU0NjN2
MTIvZmkta2JsLTc1Njd1L2lndEBrbXNfYnVzeUBiYXNpY0BmbGlwLmh0bWw+DQo+IChpOTE1IzE4
MCA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lzc3Vl
cy8xODA+ICkNCj4gDQo+ICoJaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYzoNCj4g
DQo+IAkqCWJhdC1hcmxzLTI6IFBBU1MgPGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS0NCj4gdGlwL0NJX0RSTV8xNTAxMy9iYXQtYXJscy0yL2lndEBrbXNfZnJvbnRidWZmZXJf
dHJhY2tpbmdAYmFzaWMuaHRtbD4gIC0NCj4gPiBETUVTRy1XQVJOIDxodHRwczovL2ludGVsLWdm
eC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9QYXRjaHdvcmtfOTU0NjN2MTIvYmF0LWFybHMt
DQo+IDIvaWd0QGttc19mcm9udGJ1ZmZlcl90cmFja2luZ0BiYXNpYy5odG1sPiAgKGk5MTUjNzUw
Nw0KPiA8aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pOTE1L2tlcm5lbC8tL2lz
c3Vlcy83NTA3PiApDQo+IA0KPiAqCWlndEBrbXNfcG1fcnBtQGJhc2ljLXBjaS1kMy1zdGF0ZToN
Cj4gDQo+IAkqCWZpLWtibC03NTY3dTogUEFTUyA8aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3Jn
L3RyZWUvZHJtLQ0KPiB0aXAvQ0lfRFJNXzE1MDEzL2ZpLWtibC03NTY3dS9pZ3RAa21zX3BtX3Jw
bUBiYXNpYy1wY2ktZDMtDQo+IHN0YXRlLmh0bWw+ICAtPiBETUVTRy1XQVJOIDxodHRwczovL2lu
dGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tDQo+IHRpcC9QYXRjaHdvcmtfOTU0NjN2MTIvZmkt
a2JsLTc1Njd1L2lndEBrbXNfcG1fcnBtQGJhc2ljLXBjaS1kMy0NCj4gc3RhdGUuaHRtbD4gIChp
OTE1IzEwMDYyIDxodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVs
Ly0NCj4gL2lzc3Vlcy8xMDA2Mj4gIC8gaTkxNSMxODAgPGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNr
dG9wLm9yZy9kcm0vaTkxNS9rZXJuZWwvLQ0KPiAvaXNzdWVzLzE4MD4gIC8gaTkxNSM5OTI1IDxo
dHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2k5MTUva2VybmVsLy0NCj4gL2lzc3Vl
cy85OTI1PiApICszOSBvdGhlciB0ZXN0cyBkbWVzZy13YXJuDQo+IA0KPiANCj4gQnVpbGQgY2hh
bmdlcw0KPiANCj4gDQo+ICoJTGludXg6IENJX0RSTV8xNTAxMyAtPiBQYXRjaHdvcmtfOTU0NjN2
MTINCj4gDQo+IENJLTIwMTkwNTI5OiAyMDE5MDUyOQ0KPiBDSV9EUk1fMTUwMTM6IDAzMThhMTJm
ZjZmYjhjMzIxNDU4YWEyYjM3M2U5MzIyODk2ZWU5NTEgQA0KPiBnaXQ6Ly9hbm9uZ2l0LmZyZWVk
ZXNrdG9wLm9yZy9nZngtY2kvbGludXgNCj4gSUdUXzc5MDY6IGFlOTFiYTI2ZjY1N2JmMTEyNjRm
NjRiZDJkYzIxZjQ3MWE1ZDE4ZjUgQA0KPiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcv
ZHJtL2lndC1ncHUtdG9vbHMuZ2l0DQo+IFBhdGNod29ya185NTQ2M3YxMjogMDMxOGExMmZmNmZi
OGMzMjE0NThhYTJiMzczZTkzMjI4OTZlZTk1MSBADQo+IGdpdDovL2Fub25naXQuZnJlZWRlc2t0
b3Aub3JnL2dmeC1jaS9saW51eA0KDQo=
