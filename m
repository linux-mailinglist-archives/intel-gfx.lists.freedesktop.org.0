Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E489A96F5B
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Apr 2025 16:54:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4B7710E5EA;
	Tue, 22 Apr 2025 14:54:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k2LYnwKB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 599F910E5E0;
 Tue, 22 Apr 2025 14:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745333696; x=1776869696;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yx9xSN1rPGTyMyUPgC0f33c1Man0SAQCHDk/2fQg2UM=;
 b=k2LYnwKB+4ikGuFIBccRuMDis/tnTJwLsfXwB9bzhlvFoPfPVAQm8KTo
 DEx5BPjxKzWOiovRne4lk1Ll9IzFXa2zGSBOQc2Wzl/QQmlBS1c9hU+S4
 /+g/GU1/JZItxTqZiPaSMsj4gfFvYCtJGnXXrLTcCDFvZDNWV2wP8GbPP
 d3TimoUgQ2yFTARln4w5un6cCpTi//u9j/fxLHiCYIQKxGqpWsupTe1YY
 jlAQIqQpb9wOpzALNug6iulHAB+6Bc/MUL6Ap8I+LdSK6y7UUwx0pned1
 YpjEC8Fxv5j9uTQzdwsuIqxu8COIMD+Q+e6mc1deQZYNVHjIKzACzaWxW Q==;
X-CSE-ConnectionGUID: ybBqQrkNRF2QGetsub9CBw==
X-CSE-MsgGUID: 7Fy8V2j/QmiDErW3EfO48Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="64425611"
X-IronPort-AV: E=Sophos;i="6.15,231,1739865600"; d="scan'208";a="64425611"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 07:54:56 -0700
X-CSE-ConnectionGUID: 8Xl6tNuoTHWHL5ba+hhBjg==
X-CSE-MsgGUID: OBJ607mPS6OWyo7byREE7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,231,1739865600"; d="scan'208";a="137119920"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 07:54:55 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 22 Apr 2025 07:54:55 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 22 Apr 2025 07:54:55 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 22 Apr 2025 07:54:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CJ2X/k0kKm5FNVosq/l1uknHd21klbqOIp+M5xHhQD9u+pWbTsFbAlDAHEgMAMWXum+AHlM3+e2NtHCkJpKYyCLL4a2cmEIXhPhSHdSGVEPceIS/xVFecE65tmkTPdB/MBtHzEsoE+RgkhHsezhvUwqY1qF3o6fXvyYnqHHzqaIcnrFoA7yP3BVD+WUwUdgeHfH63w1MrLs2N5qteUJtbvO8YDWEcbC1Bo7JTKCGg4GWpm0KZ3yam1dFH8/UvAlc0/FqU4aYpz0MIUkYAUpJ/dyHZGfywnllPK7+n43gHLdMAlbQllw/kLvFPh7fGghr2LlhzdOP0PEja9zxFDRRQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yx9xSN1rPGTyMyUPgC0f33c1Man0SAQCHDk/2fQg2UM=;
 b=AYKOGJhHSLMbdOeOmGfWSFVxU9EZmHqvlsHIrUJK1wVFXhZoOzW5hRtjfyN7cZPcYk0b8uaoqjUuIH0SSuu0PZxuUMoD9N6jVdpQ6Hx2KZiuWv/0qjkijVovLgGD7uzpnDECeaWGMzZz7LT8XD+8E9SdKesFZBd1rm/V0oJ0MVrRGixCcbMcWFksylu/oxJ8Xh6qI9glNaXMYrZttSr3LRSMteWgKjF+mUTrSjxGIAgHLrRVZuhdBbDWlGl3DYkX2yauAT7UFFNKBu6dphChb2iVXu61bp/1whlmoOu3J9W1OU7DheQYtSLoplghhgmKTybrHo/szD+WxhxCTJpkhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by PH7PR11MB7028.namprd11.prod.outlook.com (2603:10b6:510:20b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.33; Tue, 22 Apr
 2025 14:54:52 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%5]) with mapi id 15.20.8655.033; Tue, 22 Apr 2025
 14:54:52 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: RE: [PATCH v9 06/10] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Thread-Topic: [PATCH v9 06/10] drm/i915/lobf: Update lobf if any change in
 dependent parameters
Thread-Index: AQHbr4A0MxWcSQqjWUy4/RMUmaYNOrOvmgeAgAAmUVCAAA0KcA==
Date: Tue, 22 Apr 2025 14:54:51 +0000
Message-ID: <PH7PR11MB59811DB4EEE05D017CD1D7A1F9BB2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20250417094123.1662424-1-animesh.manna@intel.com>
 <20250417094123.1662424-7-animesh.manna@intel.com>
 <86e796f84ea8be39f62434b9bb4f53b00b71d679.camel@intel.com>
 <PH7PR11MB59813454F889264DD1E511E1F9BB2@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB59813454F889264DD1E511E1F9BB2@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|PH7PR11MB7028:EE_
x-ms-office365-filtering-correlation-id: 25526f15-71f9-41cb-8f5f-08dd81ada2f2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?SUtteGtvMjFoTnJLZWp1RlMrdTJqMnVEM3h3S2pCSnc3aTFsRFZOZ1JJelR0?=
 =?utf-8?B?bHNYbjdqR203WGwvZ3B2L2s5cE93bVVEWXBKUmVROTJkNHFPS3dxbTFnY1VK?=
 =?utf-8?B?KzRGaWtwMzVTOG4yZGg5ZVpBUktySnN3a1hXbkY5MTJ2OWRIZ1cvSjkrNWRq?=
 =?utf-8?B?MHJVUnU4UG5GdjdkN0Yxcmk4VkcxeXdFMWN1VWZFVFdpZTJqODlDd3hxR2dy?=
 =?utf-8?B?aTVja3hiWWlNdmY3ZXpydjdaNGNOQW5jMnVIQ3EyVkZJckNPQytaVGZ5ek1D?=
 =?utf-8?B?QlNhUjZOMGxzVEZmcmZOMEFBV0FMTGFDVkV1dzNlT016d2daSlNUVGZidExB?=
 =?utf-8?B?WVl6Vjd6aExRYUFBd2JoY3pPdXhiUWJsT21ZN0pmMldDdTJLT2dtR0s1aHZX?=
 =?utf-8?B?K1hXQjQrMHhpZlBnWnJBc1AxU3R1VlRCTnIycHZ3bXF0SXVLQmVpUXZSMldp?=
 =?utf-8?B?UjZ4SDg3ZFZJdjU5TERnMVBJd0RXZnNCL01QbHY4cW8xMHJleTFJSVlqWjdz?=
 =?utf-8?B?cHcyYkg5OGNBblJKaFhoc2QvaWlZdU1SMGRDV2lnbW1VeThDYlhJN3Z0VVN4?=
 =?utf-8?B?a3dpck5KZXVWTXVJNEg2SlU1M3R5bzhnQ2F5NzJxQjd2c2FFQ0Z0amxlU2xS?=
 =?utf-8?B?Y2R1Y3VLVkJKTk52bUY3cU9HbGM1dHhpWkdJZ1lUUUFJSXRCSUlnby8vazcy?=
 =?utf-8?B?TXVjdng5TVdiTHpycEVCa3o4Y216a1pwVXlPREJtWDZnUkpiT0xjd3E5M2xU?=
 =?utf-8?B?ZVJibm96Z0FucjN2SGJ4blV0YTAzTTNYd1ZnbnoxcXhVSCsyMUdKRlJkL3I4?=
 =?utf-8?B?THZuMWd6WlVOVFNXZ05pTkZmYmdwdVpJc0k5K3Z6U0J6QjNWbU1HeGtPbkoy?=
 =?utf-8?B?L3E3bUpCdEZBM1pEbkdUblRXd3dFcUNBWDhxaEFmV05kSEQyMFdhSFFLR1RI?=
 =?utf-8?B?bzRITjhMTjllaFJVWUMwcXppU09xQ2VMNmg2QXRiL2Y3dkhCLzZDYU1TTFRH?=
 =?utf-8?B?OEhxUFNyQkw0VVQ1bUJSYm55TnJxZWxCVFpTYTBlQ09nR0IzeCtRTytweEds?=
 =?utf-8?B?bmtOenc0NVorRlZvMzREaiszMm5PRG5zWWVaeUpkLzRKSjY5RzNXSGZ4VmtL?=
 =?utf-8?B?TEdCTGpBRHY2VzA1VzhsSlpJSG9iTmk0WVMyYWxWY0pQbWEwcGZvUFZ4UjNL?=
 =?utf-8?B?ZEVXQStBVUNZM1NLd3B2dVh5YlJJeXdZL1pvM3YrK043WGRBR040RVQ2aE03?=
 =?utf-8?B?NzdXa2lRTHZHbzhpMGhkaVYxM2F3eXRLK1hZdHpyWnRya21WMkJ5Q0tIVXJ6?=
 =?utf-8?B?V3poR0EzNXVJeWI2NG5nMkdXcW5acUpLZEVacUdaY1I2SVJjYnUramlMOWVk?=
 =?utf-8?B?T0tZWDc1RFRJUlZKVksyTGlva1VVeHJCcHZJVUpWSGsrMHNIV3pzYnRmSFlR?=
 =?utf-8?B?SFh5a0hBMWhQem01N1QyZ1ExY2hLMHVTTVlDT2E4ZjJHK2lSczhvS3hjRnlY?=
 =?utf-8?B?S2dGVGI3Q0NSUnp4MkpEeEpBL3E5N2VjVS9NSDB2bUlFUUxXaHNoWVY1YWFj?=
 =?utf-8?B?S1ZNOGY4TWE1c1ZGNWg0MlUvZUZMK0NwcE1RSytvNnZnVGd2eThCNEl4ancv?=
 =?utf-8?B?R1FpcGRrL2J3V2hFT2E5MFpuR2FkZXpsMnNyM1gzOVZZV0hMd1JiZHRhWkN0?=
 =?utf-8?B?Y0sxV1JkRDVtZUFrQVcra3M1aTN4dXNDdkZHQ09TUk1Uc1ZGU1ZLczJvTUU2?=
 =?utf-8?B?ZXROSDdNRkdoaUtYdU5PRkRmbjBFQjF4bmdNYXd6SHdtQ0ZRTTJIQUVUWCtY?=
 =?utf-8?B?eDNVUmVablJxa0xqcDJ4enI2dzNvaHA2QitOWGl1MTBqTlBzZSt5NHFZa3FX?=
 =?utf-8?B?cVYzekNjTHFCTGowNXhSY1dYWC9zazN1Sm9ZdXdoUlcvUVRUbnhpWS9iQWph?=
 =?utf-8?B?VlJraEs2Mmh5N3h3a3hmMGxiZkJWRFI5YWlCVThwakdPN0o2NDErOEludWJB?=
 =?utf-8?Q?ZitUb6DjEEDVbfdYqSAt7H1+pKjRBc=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RVpQWHdKUnhHSmo5ZDNvOGM3b0swSi90SVN1YnYzRWpLV2ZEU1U3TzVvS1Bk?=
 =?utf-8?B?eHRFSkRSWFhsVDlnaXBESGJSTHU0MDNtSlN1SmRWZ0h1TkF6R3NxbDVxdWoy?=
 =?utf-8?B?d0N1aEZMWUNRa2phckN4cWxRWVNoaW0wTnRRTjgrWktRdDFEbHhycWE3M0Qy?=
 =?utf-8?B?SE5PMmRIclJtY0ZTV01mRGVLenk0UVE1VFBnbDVPVUxoOEFLTm1ZQ1kxaUZC?=
 =?utf-8?B?T3hWU3NERTlGZ212T2JOaTk3NDVDYjQ4Sk1TengrWFN2Y05UNjNrUEhHZThB?=
 =?utf-8?B?SnBicWQwR1JyN2pEeHFsZDFJUWpzTlpnbzVUUU5obTFUdGt2bW8xcFZqeDJ4?=
 =?utf-8?B?MHZia0VKbjlpanZXUzE3SlpNRVFURS9maW1xZzYyVndDamNFN0x0enpKQVNT?=
 =?utf-8?B?eDhyS3loZ29mZWw0VXREdVFmdVdpNFBSYkxxS1gzd1FaVUVHL2tPazZjczVh?=
 =?utf-8?B?Q3owdlVTV3ozNnN5VDRpYjE5VTZrcEdMSHdieWpqWmNMb2Z4S1UyVGlYWVV4?=
 =?utf-8?B?MHgza3YyTEZ0WE50cTJ4ZHZhQUJvZ1A4d1Z5Y21nUGlKV01hTHdSbnA2RkJF?=
 =?utf-8?B?ZXlTNHpOWUFkUFVXb1cxZWNuMjJCU2V1VnQySmVNa3BZSmQ0ZXZCU3EzWUZv?=
 =?utf-8?B?eUd2WkhNRzBhWXhycTVMZCtsYVlTWWU4RW5xb2hHRkJmYk8yYXlQYTFPUldn?=
 =?utf-8?B?V3hxZW80bkc0ZWozcHY2RW05Q2FkaFNrZ0V6djZHWHlwMXQxaGVkYlVvNkxW?=
 =?utf-8?B?amZvWEF5MTFMVk01cU5Eek85V1JpVXRiV3hjUGJqdWxRSW1LVk8wOVJLcW9G?=
 =?utf-8?B?QWNJYk9xZjRUempua08vcGJqWnpEbmZIM3g1bmQ0L3pkWGQvU0NBZWlkTC9B?=
 =?utf-8?B?d0NBUUhGb2grVUdUUldmTTg4L2Nva2QvVzlPdEJCM1lyOFVDMjNUdUQ4ZFJx?=
 =?utf-8?B?dEExUzFWbVhHeFF6SVpOalNBcHZKMkpLNm5PbExFTk9ienFGMlBIbmxPcjh1?=
 =?utf-8?B?bjFTcG5ZdFhHUTFRNXB1Z1AxVmxGRXVyRDdJWDJsMHlWQUdOU3pRVXk2WXVQ?=
 =?utf-8?B?VVo5L0N0NVE3QUtyODlMb2NHdTE1SHdkUXZsUjdhU25tS25FeUpZN3JkcDFX?=
 =?utf-8?B?dktERjNXdmY4M2wvejI0S0hqaldzeGZyWU8yS2RPOEJOTTRDMGx1dW5JVG5r?=
 =?utf-8?B?V2l2KzZwSGdYUmhYUlZNUUwyRkZHWlJKT3hRdWE2YmkwT2FRMy9EdytJdm5P?=
 =?utf-8?B?czhTbjBYcUV6U2dEZWxSV3hPMWRINDJCbjdWVHhHVjBubVk4L0RYdURpclAy?=
 =?utf-8?B?bEJqOFdYWXd5aGN0dEVoMWlGa3lnYWZROWtNT1kzZllQUXFKdDJ5REozMUpW?=
 =?utf-8?B?OERVMG1LK2RUdUxNRjgwNlNrVlp5SWM1eU1qa1lVUlhPZHlicmtBVVlwR3Y3?=
 =?utf-8?B?bm5mZGZuSmE5Y1IzbVphRWdkQnBmTDNNU0ZZS0pnKzlKamVNejV3dkhtODRR?=
 =?utf-8?B?TVM5TnMzUHlYZnZmL3YweEdESjRWRWYzNlJ6ZWNpREJJU0drUytTK1NUV0F1?=
 =?utf-8?B?eGdvSlNnalJBd0xjd0h2MWcvT0hDbVFXNEpBOWlDN2FJNjQ5WE9mejN0dFRz?=
 =?utf-8?B?TGthSVhjUHFrWHBLQWRPc1ZUWXFJWWRyb2t1R3I0S2w2WWdWOHVHTnNmWkMy?=
 =?utf-8?B?dmtscVBIdFM2V2pMYVd6dVZ3aitxUUhtUjIweFZLQzdZWnlLUUhhMXJrYUho?=
 =?utf-8?B?amF0WEJ2bHZjWmhtQXRYQWxvMC9oVnd3K1JRd01KVFUwRXlXa01UTDdxR2pY?=
 =?utf-8?B?YlhUeDRZTTRCNHdLU0pHOHZDTG80bGk1QWQvczhyaHM2NUV5Q0NlSkw5cWRV?=
 =?utf-8?B?TXNtN2h0Z1BlendoamtBaDljQjdFUEt4Yng3RFlsa1c1V2FhOU4vNTR6NWRT?=
 =?utf-8?B?UEZDQ2FqaytzbGFPdHA5ZUR1QTd3RHE0SXlaSTdjVUYzZ3l2V2o2Z3BxM05k?=
 =?utf-8?B?UnVFWVFsbVdxQUdOU1Z0akQ1TWpXd3pVbDZqQVRMbjhUYnh1alhHSGJuUGUw?=
 =?utf-8?B?Rm1yRmtGYUZCeVpCWkZWR1ZlOVo1WXJrY1J3YVpISk9MZGJTL1RJaHRvWjRU?=
 =?utf-8?Q?Ci9o8OJD7ZUb2WFR7NkUmq3JI?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25526f15-71f9-41cb-8f5f-08dd81ada2f2
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2025 14:54:51.9065 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i+BVOTyXyhV4hwfpdRzVjFwBvQJc7WGlPmI9CpI/UTcm3wdTt046lCSW1lUF/9v/nIR5qI6yPDK+GP8oaZiWeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7028
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWFubmEsIEFuaW1lc2gN
Cj4gU2VudDogVHVlc2RheSwgQXByaWwgMjIsIDIwMjUgNzo0NyBQTQ0KPiBUbzogSG9nYW5kZXIs
IEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+OyBpbnRlbC0NCj4geGVAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnOyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1
bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47IEIsIEplZXZhbiA8SmVldmFuLkJAaW50
ZWwuY29tPg0KPiBTdWJqZWN0OiBSRTogW1BBVENIIHY5IDA2LzEwXSBkcm0vaTkxNS9sb2JmOiBV
cGRhdGUgbG9iZiBpZiBhbnkgY2hhbmdlIGluDQo+IGRlcGVuZGVudCBwYXJhbWV0ZXJzDQo+IA0K
PiANCj4gDQo+ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBIb2dhbmRl
ciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiBTZW50OiBUdWVzZGF5LCBB
cHJpbCAyMiwgMjAyNSA1OjE5IFBNDQo+ID4gVG86IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZzsgTWFubmEsIEFuaW1lc2gNCj4gPiA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4gQ2M6IE5pa3VsYSwgSmFuaSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPjsgQiwgSmVldmFuDQo+ID4gPGplZXZhbi5iQGludGVsLmNvbT4NCj4g
PiBTdWJqZWN0OiBSZTogW1BBVENIIHY5IDA2LzEwXSBkcm0vaTkxNS9sb2JmOiBVcGRhdGUgbG9i
ZiBpZiBhbnkgY2hhbmdlDQo+ID4gaW4gZGVwZW5kZW50IHBhcmFtZXRlcnMNCj4gPg0KPiA+IE9u
IFRodSwgMjAyNS0wNC0xNyBhdCAxNToxMSArMDUzMCwgQW5pbWVzaCBNYW5uYSB3cm90ZToNCj4g
PiA+IEZvciBldmVyeSBjb21taXQgdGhlIGRlcGVuZGVudCBjb25kaXRpb24gZm9yIExPQkYgaXMg
Y2hlY2tlZCBhbmQNCj4gPiA+IGFjY29yZGluZ2x5IHVwZGF0ZSBoYXNfbG9iZiBmbGFnIHdoaWNo
IHdpbGwgYmUgdXNlZCB0byB1cGRhdGUgdGhlDQo+ID4gPiBBTFBNX0NUTCByZWdpc3RlciBkdXJp
bmcgY29tbWl0Lg0KPiA+ID4NCj4gPiA+IHYxOiBJbml0aWFsIHZlcnNpb24uDQo+ID4gPiB2Mjog
QXZvaWQgcmVhZGluZyBoL3cgcmVnaXN0ZXIgd2l0aG91dCBoYXNfbG9iZiBjaGVjay4gW0phbmld
DQo+ID4gPiB2MzogVXBkYXRlIExPQkYgaW4gcG9zdCBwbGFuZSB1cGRhdGUgaW5zdGVhZCBvZiBz
ZXBhcmF0ZSBmdW5jdGlvbi4NCj4gPiA+IFtKb3VuaV0NCj4gPiA+IHY0Og0KPiA+ID4gLSBBZGQg
bG9iZiBkaXNhYmxlIHByaW50LiBbSm91bmldDQo+ID4gPiAtIFNpbXBsaWZ5IGNvbmRpdGlvbiBj
aGVjayBmb3IgZW5hYmxpbmcvZGlzYWJsaW5nIGxvYmYuIFtKb3VuaV0NCj4gPiA+IHY1OiBEaXNh
YmxlIExPQkYgaW4gcHJlX3BsYW5lX3VwZGF0ZSgpLiBbSm91bmldDQo+ID4gPg0KPiA+ID4gU2ln
bmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+ID4g
PiAtLS0NCj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmPC
oMKgwqAgfCA0Mw0KPiA+ID4gKysrKysrKysrKysrKysrKysrKy0NCj4gPiA+IMKgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmjCoMKgwqAgfMKgIDIgKw0KPiA+ID4gwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8wqAgMSArDQo+ID4g
PiDCoDMgZmlsZXMgY2hhbmdlZCwgNDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiA+
ID4NCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2FscG0uYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0u
Yw0KPiA+ID4gaW5kZXggMDE5NDliOTBjMGMzLi4zZmJlOGVjYTEzMDEgMTAwNjQ0DQo+ID4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYw0KPiA+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiA+IEBAIC0z
NzYsMTUgKzM3Niw1NiBAQCB2b2lkIGludGVsX2FscG1fY29uZmlndXJlKHN0cnVjdCBpbnRlbF9k
cA0KPiA+ID4gKmludGVsX2RwLA0KPiA+ID4gwqAJaW50ZWxfZHAtPmFscG1fcGFyYW1ldGVycy50
cmFuc2NvZGVyID0gY3J0Y19zdGF0ZS0NCj4gPiA+ID5jcHVfdHJhbnNjb2RlcjsNCj4gPiA+IMKg
fQ0KPiA+ID4NCj4gPiA+ICt2b2lkIGludGVsX2FscG1fcHJlX3BsYW5lX3VwZGF0ZShzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiA+ICsJCQkJIHN0cnVjdCBpbnRlbF9jcnRj
ICpjcnRjKQ0KPiA+ID4gK3sNCj4gPiA+ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkg
PSB0b19pbnRlbF9kaXNwbGF5KHN0YXRlKTsNCj4gPiA+ICsJY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUgPQ0KPiA+ID4gKwkJaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0
Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ID4gPiArCWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNj
b2RlciA9IGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyOw0KPiA+ID4gKwlzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqZW5jb2RlcjsNCj4gPiA+ICsJdTMyIGFscG1fY3RsOw0KPiA+ID4gKw0KPiA+ID4g
KwlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAyMCkNCj4gPiA+ICsJCXJldHVybjsNCj4gPiA+
ICsNCj4gPiA+ICsJaWYgKGNydGNfc3RhdGUtPmhhc19sb2JmKQ0KPiA+ID4gKwkJcmV0dXJuOw0K
PiA+ID4gKw0KPiA+ID4gKwlmb3JfZWFjaF9pbnRlbF9lbmNvZGVyX21hc2soZGlzcGxheS0+ZHJt
LCBlbmNvZGVyLA0KPiA+ID4gKwkJCQnCoMKgwqAgY3J0Y19zdGF0ZS0+dWFwaS5lbmNvZGVyX21h
c2spIHsNCj4gPiA+ICsJCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHA7DQo+ID4gPiArDQo+ID4g
PiArCQlpZiAoIWludGVsX2VuY29kZXJfaXNfZHAoZW5jb2RlcikpDQo+ID4gPiArCQkJY29udGlu
dWU7DQo+ID4gPiArDQo+ID4gPiArCQlpbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVy
KTsNCj4gPiA+ICsNCj4gPiA+ICsJCWlmICghaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkNCj4g
PiA+ICsJCQljb250aW51ZTsNCj4gPiA+ICsNCj4gPiA+ICsJCWFscG1fY3RsID0gaW50ZWxfZGVf
cmVhZChkaXNwbGF5LCBBTFBNX0NUTChkaXNwbGF5LA0KPiA+ID4gY3B1X3RyYW5zY29kZXIpKTsN
Cj4gPg0KPiA+IEhvdyBhYm91dCBpZiBpbnN0ZWFkIG9mIHJlYWRpbmcgeW91IHdvdWxkIHJlbHkg
b24gb2xkX2NydGNfc3RhdGUtDQo+ID4gPmhhc19sb2JmIGFzIGlzIGRvbmUgaW4gaW50ZWxfYWxw
bV9wb3N0X3BsYW5lX3VwZGF0ZSA/IEkgdGhpbmsgeW91IGNhbg0KPiA+IHdyaXRlIDAgaW50byBB
TFBNX0NUTC4gUGFyYW1ldGVycyBhcmUgYW55d2F5cyB3cml0dGVuIGluDQo+ID4gaW50ZWxfYWxw
bV9wb3N0X3BsYW5lX3VwZGF0ZSB3aGVuIEFMUE0gaXMgZW5hYmxlIGZvciBMT0JGIG9yIFBTUi4N
Cj4gDQo+IFdyaXRpbmcgMCB0byBBTFBNX0NUTCBtYXliZSBub3QgZ29vZCBhcyBzb21lIGJpdGZp
ZWxkcyBvZiBBTFBNX0NUTCBhcmUNCj4gdXNlZCBieSBETUMgQW5kIGR5bmFtaWNhbGx5IGVuYWJs
aW5nL2Rpc2FibGluZyBMT0JGIGNhbiBiZSBpbXBhY3RlZA0KPiB0aG91Z2ggaXQgaXMgbm90IHZl
cnkgY2xlYXIgZnJvbSBic3BlYy4NCj4gU3RpbGwgZG8geW91IHNlZSB0aGlzIGNoYW5nZSBhcyBu
aWNlIHRvIGhhdmUgb3IgbXVzdCBoYXZlLg0KPiANCj4gUmVnYXJkcywNCj4gQW5pbWVzaA0KPiAN
Cj4gPg0KPiA+IEJSLA0KPiA+DQo+ID4gSm91bmkgSMO2Z2FuZGVyDQo+ID4gPiArDQo+ID4gPiAr
CQlpZiAoYWxwbV9jdGwgJiBBTFBNX0NUTF9MT0JGX0VOQUJMRSkgew0KPiA+ID4gKwkJCWFscG1f
Y3RsICY9IH5BTFBNX0NUTF9MT0JGX0VOQUJMRTsNCj4gPiA+ICsJCQlpbnRlbF9kZV93cml0ZShk
aXNwbGF5LCBBTFBNX0NUTChkaXNwbGF5LA0KPiA+ID4gY3B1X3RyYW5zY29kZXIpLCBhbHBtX2N0
bCk7DQo+ID4gPiArCQkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAiTGluayBvZmYgYmV0d2Vl
bg0KPiA+ID4gZnJhbWVzIChMT0JGKSBkaXNhYmxlZFxuIik7DQo+ID4gPiArCQl9DQo+ID4gPiAr
CX0NCj4gPiA+ICt9DQo+ID4gPiArDQo+ID4gPiDCoHZvaWQgaW50ZWxfYWxwbV9wb3N0X3BsYW5l
X3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiA+IMKgCQkJCcKg
IHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiA+ID4gwqB7DQo+ID4gPiDCoAlzdHJ1Y3QgaW50
ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoc3RhdGUpOw0KPiA+ID4gwqAJ
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQ0KPiA+ID4gwqAJCWlu
dGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpOw0KPiA+ID4gKwljb25z
dCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUgPQ0KPiA+ID4gKwkJaW50
ZWxfYXRvbWljX2dldF9vbGRfY3J0Y19zdGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ID4gPiDCoAlzdHJ1
Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcjsNCj4gPiA+DQo+ID4gPiAtCWlmICghY3J0Y19zdGF0
ZS0+aGFzX2xvYmYgJiYgIWNydGNfc3RhdGUtPmhhc19wc3IpDQo+ID4gPiArCWlmICgoIWNydGNf
c3RhdGUtPmhhc19sb2JmIHx8DQo+ID4gPiArCcKgwqDCoMKgIGNydGNfc3RhdGUtPmhhc19sb2Jm
ID09IG9sZF9jcnRjX3N0YXRlLT5oYXNfbG9iZikgJiYNCj4gPiA+ICFjcnRjX3N0YXRlLT5oYXNf
cHNyKQ0KDQpUaGUgYWJvdmUgY29uZGl0aW9uIGNoZWNrIHdpbGwgbm90IGFsbG93IHRvIHJlcHJv
Z3JhbSB0aGUgQUxQTV9DVEwgdHdpY2UgZHVyaW5nIExPQkYgZGlzYWJsZW1lbnQuDQoNClJlZ2Fy
ZHMsDQpBbmltZXNoDQoNCj4gPiA+IMKgCQlyZXR1cm47DQo+ID4gPg0KPiA+ID4gwqAJZm9yX2Vh
Y2hfaW50ZWxfZW5jb2Rlcl9tYXNrKGRpc3BsYXktPmRybSwgZW5jb2RlciwgZGlmZiAtLWdpdA0K
PiA+ID4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaA0KPiA+ID4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaA0KPiA+ID4gaW5kZXgg
OTFmNTFmYjI0Zjk4Li43N2JhZTAyMmEwZWEgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaA0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmgNCj4gPiA+IEBAIC0yMyw2ICsyMyw4IEBAIHZv
aWQgaW50ZWxfYWxwbV9sb2JmX2NvbXB1dGVfY29uZmlnKHN0cnVjdA0KPiA+ID4gaW50ZWxfZHAg
KmludGVsX2RwLA0KPiA+ID4gwqAJCQkJwqDCoMKgIHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRl
DQo+ID4gPiAqY29ubl9zdGF0ZSk7DQo+ID4gPiDCoHZvaWQgaW50ZWxfYWxwbV9jb25maWd1cmUo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiA+IMKgCQkJwqAgY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUNCj4gPiA+ICpjcnRjX3N0YXRlKTsNCj4gPiA+ICt2b2lkIGludGVsX2Fs
cG1fcHJlX3BsYW5lX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4g
PiA+ICsJCQkJIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsNCj4gPiA+IMKgdm9pZCBpbnRlbF9h
bHBtX3Bvc3RfcGxhbmVfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0K
PiA+ID4gwqAJCQkJwqAgc3RydWN0IGludGVsX2NydGMgKmNydGMpOw0KPiA+ID4gwqB2b2lkIGlu
dGVsX2FscG1fbG9iZl9kZWJ1Z2ZzX2FkZChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yDQo+ID4gPiAq
Y29ubmVjdG9yKTsgZGlmZiAtLWdpdA0KPiA+ID4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYw0KPiA+ID4gaW5kZXggOTZhOTViYzlkNWJmLi5mOTE0MDFlYmRkMWEg
MTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMNCj4gPiA+IEBAIC0xMTc3LDYgKzExNzcsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9w
cmVfcGxhbmVfdXBkYXRlKHN0cnVjdA0KPiA+ID4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwN
Cj4gPiA+IMKgCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsN
Cj4gPiA+IMKgCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsNCj4gPiA+DQo+ID4gPiArCWlu
dGVsX2FscG1fcHJlX3BsYW5lX3VwZGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ID4gPiDCoAlpbnRlbF9w
c3JfcHJlX3BsYW5lX3VwZGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ID4gPg0KPiA+ID4gwqAJaWYgKGlu
dGVsX2NydGNfdnJyX2Rpc2FibGluZyhzdGF0ZSwgY3J0YykpIHsNCg0K
