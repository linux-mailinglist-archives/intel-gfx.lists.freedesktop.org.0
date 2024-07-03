Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6D7925FC6
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2024 14:10:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0086210E7D2;
	Wed,  3 Jul 2024 12:10:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jo/IDSzi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABF8D10E7D2
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2024 12:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720008643; x=1751544643;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=H+RHOQJBRrV8ev9BViNQw0eXxZw83KM+tyTDQaB8D/Y=;
 b=Jo/IDSzifMFhbPPccx8d+q/CUWg+8yRBGEvoUWoYetB557aQojbouOL2
 f0kTC6XAhVuIC5pAAnavXKk4eb6LV+s5A0UkzV5Fz+M4wW/SBHpiZ3DhP
 /6LLtqd0BUN09YabfAfC3LCQN/zeQID8kO7on2nulb9ANKg6eojBh0VkB
 4sFTFhqw3WJmWgYggu/fX8J0lmkN/7dMIi7m7nJo1GvHan4dnyWdNQaeg
 pDkHR0skDOJnYl5EsgkvB9vBZsJ9USxPi2wxZDMjKgC0hnhx4X5rga7+Z
 g0IocSBQv5idEurB/E1fI0AAydEOlcYye8UZDEsabmgo+P8/28EqCWBr/ Q==;
X-CSE-ConnectionGUID: I8X7AvZgQFKlUKX2hJDD0Q==
X-CSE-MsgGUID: pRADkGErTKiavdnX4FZHlQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11121"; a="17366297"
X-IronPort-AV: E=Sophos;i="6.09,182,1716274800"; d="scan'208";a="17366297"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2024 05:10:43 -0700
X-CSE-ConnectionGUID: OaG/xynqRNuiHetFvzmgRw==
X-CSE-MsgGUID: RjaV7RNPS+y2wgBqc9xzvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,182,1716274800"; d="scan'208";a="51191005"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jul 2024 05:10:43 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 3 Jul 2024 05:10:42 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 3 Jul 2024 05:10:42 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 3 Jul 2024 05:10:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ULrIfWNJwk/oHK9jEfF3E0cPkGrDvfLHuT3mRAWs8KbTspXrKvJbJQPhpyxeNFlbI3nd25deFnqJP/t0kfLFuyaXJOm36WaPR9aXRaxci4D2nuiiUPY6F5SlDTBkT3t40/4cetDbnvJ18vF4Oo2YUY4bMFiiKoYQBfRSr0DgTfLAtwg0/4vAnGxkkl5l6DzhjlJILLbglLchVwuVyuHCqldNKuRElSGnY/Kh6QPxQ80miUuIPHiJIaT0+31UfjIJoHWimk7aMEo2pOLljRqzocKBcEd2ODBNBV9+AnF60sMMni7q2O5ccZwjJ9jzJ/dLHDVnLjTNYAxr1UpsRFP2cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H+RHOQJBRrV8ev9BViNQw0eXxZw83KM+tyTDQaB8D/Y=;
 b=KzepD3fGlSGdvcaoAS53+kW3jixK0kPKdn+nPmUNDcGmnuL2JqIl9dPQO8rktqnm3P34OGhN+rVj3GHHKesxL46sgwg31SA/AwtM0Ym12nbtF+4yc/GnOMWeYkH6bDRrmIRK+zSmKX+7eVhVOwAIFx0OIF6PYbku3D2RwdoHnMnSPhlUjDVpgcZZbWBWSK++Q1c01x8aj94VNS8WivlgMM/ocW7b5aY0BK3VxDHA5JfG9AmCRbMxLlJG1wCoddAbKyEZSKGi9jzKQexo9h3FsPToiB9miiOkLrt+ScLkr61NGUOCzcyB/McPIR2ddp3vi/v7hhPann1hX2cqN88oDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by PH7PR11MB6884.namprd11.prod.outlook.com (2603:10b6:510:203::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.33; Wed, 3 Jul
 2024 12:10:38 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%4]) with mapi id 15.20.7741.017; Wed, 3 Jul 2024
 12:10:38 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 10/14] drm/i915/dsb: Introduce intel_dsb_chain()
Thread-Topic: [PATCH 10/14] drm/i915/dsb: Introduce intel_dsb_chain()
Thread-Index: AQHaxmpjpziYxh+nP0m14qDI8j04m7Hk81JQ
Date: Wed, 3 Jul 2024 12:10:38 +0000
Message-ID: <PH7PR11MB59816D24912D1E83CC8B4CF6F9DD2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
 <20240624191032.27333-11-ville.syrjala@linux.intel.com>
In-Reply-To: <20240624191032.27333-11-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|PH7PR11MB6884:EE_
x-ms-office365-filtering-correlation-id: 2325dd34-6760-4f16-952b-08dc9b59269b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?SEU1d0hEL1BPcnZwa0hxNHpoc21yd1hoUmlyV2RqM2xMQWliNUdSbDBTenBx?=
 =?utf-8?B?ZTZpQmoycEQzOE1sTmZFdFFaYU0rTmtLQXlTenNtSFhyeFVnTkpDVTZOS0px?=
 =?utf-8?B?RDBQaDZtbW54NWEweVcvaWxPOExkNXU4cjFFT1NuUXVUU2dFeVBDWFVTS3h0?=
 =?utf-8?B?d0c1K0NQVm9hTUM0dEdtR0NBMGswejFIUHJ6QjBpcFRyM3pxb3JLa3NORERK?=
 =?utf-8?B?WHB2OTVlUWEvWWo4WG5aa2k2QXRNUm4yaHEvalZSN2JTdm43WmM3SnNrTkVL?=
 =?utf-8?B?WGFjVVVLOGVrRE1EZ0t2S0psSjQrc2pnZ1JGbThjTXh6ci9zc2RZeEdLaHpx?=
 =?utf-8?B?aFdrUXU3dnFwN2JxbzVWY2ZFNTZvdkRQejc0anZTMXhRMndDRlgybThyNjY2?=
 =?utf-8?B?eTBFY1YvcXQ5dmV0eDR4U0hUUllqNEdXVlNWNXhFVStVVENLYXIxT0phTVg2?=
 =?utf-8?B?U3FCUWZuL0V6VlBXK1MwS0RPUUlTSVdvTk5XUkF5b1FZNkhaM0VheUpsWkRG?=
 =?utf-8?B?cEdrYTRDMlRzUjljcU9IMUNHWHhScFp1WGtwWkx4R244djlJK2tMc21kZFBG?=
 =?utf-8?B?Z1ZvbHB1NGZWWCtqU1ZMSGZjdUkrdFR2TXJCcFk3Q2k2bVVSdVlDQmZpdm16?=
 =?utf-8?B?WW43MnVHTmdGRUxqMTJNcFZVRXNoYVpTMTZVNjFjYVFYWGF2eDRCUzJFSHhB?=
 =?utf-8?B?SUJQUEF4bkkzQnhrZlo1SkwyVzBObjBRSFl3KzZwSTJuTjNoeW5iNWl3bU5I?=
 =?utf-8?B?ek15VWc4N0xxWDRZN25pRk4wS3ZQWDBUbERHakVKTWZEU2s3cEVldklBMUo3?=
 =?utf-8?B?bGlSYldLZEpwOXlIbWFzdmtCWlE0Q1dYNjFRcXM0L05Ka2NmdmNESkV0d0tN?=
 =?utf-8?B?UTQyNEkxbUdqOG56Um5qS0ZnUjhZZFJTL2plN1FxN1pCSERNZlVUek82SkdQ?=
 =?utf-8?B?NFJ2SEFVNU1OblZ6b2hqdFNHaE1XbGZKSXJUQklnMHBIQXJQZjFmcXVEMTZ3?=
 =?utf-8?B?SDhKSUx0ZGtQNFZVbWZOV09ON1F4T01LUmpkQ0prU1NFWnFwRjZWMGZIZGNP?=
 =?utf-8?B?TEVYTXZ2K2lzY014UHl5cjdWUjYyVlNRQWFRVDY5WHhTbHRvNjIvK045Zk44?=
 =?utf-8?B?Mk1pTFg1a1FoYVo2bzN2bmNvZUNvL1RudFpYZUUzUm9Za3NYdVM4WnlhQk1l?=
 =?utf-8?B?QWwyNE5MaXdGOU5RV29MVUs1Z1ZyRk50RVFLaWVreGtVRkZuSXQvenJMdE9k?=
 =?utf-8?B?TUdhNFVrQm16eGsvQU12UlIxQW1WTXlEMEw4RjBTQ1lVNFk3QTdUMkVORVgr?=
 =?utf-8?B?ci90SVpoNE5NbFNiUUsyRm1qMUZzcTVOazAzTnRCRFVUNWNvbjVvU2x4MjU0?=
 =?utf-8?B?SHVyQmV4bDl6bUhXcXo4UUNXZW9nTmF3Y3ZQY2VHclBOY2xDNzk5NjRuUlpT?=
 =?utf-8?B?SWx5eStZdzFXeFJMTDJzUzhHL2YwOHUzaHFGcnkyNHNtL2dvb25nRDNZcFZN?=
 =?utf-8?B?ai9JZGdJcW8yNW92aW5BcGtZdXppMjhOQnpjKy9SVnUwWStjNXZEcGpkZml6?=
 =?utf-8?B?Rk9hZ01NelR3b3I4UmdmZXVISzdiVjBqeEl4Y0d0OTV6bHR0RzIyTjlaTTBK?=
 =?utf-8?B?N1BxRElJUWEwR0NXekk4elhWc0owTUVCVlc3ZXVsc0tQeDZ0QUVsQlUwalpZ?=
 =?utf-8?B?ZGdwcHhqZE1QSzN4OUs0QmZJRlg5Vlk1OWpqRlEzODJXVWNFL1d3Zjc4RHVQ?=
 =?utf-8?B?TC9DaVdJMU5EUVpiZzEvU2JIdjBNWngvYXNiWTF3YkRTbTJRTXJhN0drZUlQ?=
 =?utf-8?B?YUtWZ2RaQUtIN3JGNU40RVlrR1c2SzVaRkFxNCt1K1pucG1leTdnWGdpM1Yr?=
 =?utf-8?B?aVRlcjZ0OXpPanQ1K2RYUHRLTmdvL3FJQWVwVmVMSm9Rb3c9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U1NMejM1VktEZzdUT3g5QnAyZ1BpMHB2Z0RFTitEcjNvUEM2WXU1ZE9xMTdo?=
 =?utf-8?B?WVhjSi9mbWc0RnVjdlpyY3h1WjJpUU1JZ3pTWmo0UmdHNkM2SWlUaUt1NEZR?=
 =?utf-8?B?QzFPQ0lSK2h3ek1Fc3h5cVlMbWNtTkFPZllrclhuTm9xOXhVYmZqam9JUFQw?=
 =?utf-8?B?ZlRERDNGWFJVeTNRRjM5ZUFRbStQNjlvYUwrb1Z3N1BwSGNxN2ZBaXBOeHpk?=
 =?utf-8?B?dVd5ZTVIVi9ydGZFcnNialBzRG1YZTlPNXJPeVVDOC9ybmhJOWFLSE83cjkr?=
 =?utf-8?B?b01WQVZ3RXVhYkdmVEFHRWQxNVhzQjdySkk0SVFKeTVBTlFDM1JLOXlrN1Vi?=
 =?utf-8?B?MmtvY0ZGNjJUTTRCZXZxYm1aWHhrckVoVkUxWi9UQVpiRkJNallvYkZHTE90?=
 =?utf-8?B?RkVTSUEyYlJwZ0FRbjN1dU5EbmlnQUJXQlpSK3NFeXJ6NU04VWM2TXltenZ3?=
 =?utf-8?B?dzROcjVMZk9TdHNqTWEreExKTGdwN3NhYTRQaXlBc2xlUGRXZlRvUnlNa0do?=
 =?utf-8?B?SnJnSktuVkZBOU1jOE96dS91WWxxUHZteGJzODA1ZjU2QWhtd0RBamJsQU5U?=
 =?utf-8?B?OGYvZm5nZ2hoeXBRWkpOYTBhSDk0bVkxVEJEUWoyYmhMTnk1TjlLcGZxQ09C?=
 =?utf-8?B?NnB4WDBmWm9lb1d3ZGdlekNqdHo1elhVSGN1TDBuVGFqK0ZTL1YzeHh5eFY5?=
 =?utf-8?B?NklQSzdxNDFLV3VuZGJuOTEyN0hEaEh6WXhOQ1dYMUpEUG1jNlVFQzFaRUF1?=
 =?utf-8?B?ZHJMVWtUTEVFTm10czkwOUJ5dG82TnNGbCtLT2RncldHSytGQUd3NkZFWmNz?=
 =?utf-8?B?WFhCNU9BV3pjR0xxVVdObTZaS3k0K3hZMTRBdUtLMnF2cWZoRFdXUHo5SWF0?=
 =?utf-8?B?Zk10UGdUQS91ZE9PRXJudUYwWnBWUEpMQVBUME4wUTVvOVFJZndvbkZsNDJy?=
 =?utf-8?B?UlhaUHJXb2VraEtxWktlYUZTQ2d1bi9idXRaRTJJNjVoenNCLzVXeEFvNG11?=
 =?utf-8?B?TzRPNStFNWsyaGFpNlN2V1FvUm5GQ0V1bUpjaTdETXJITnBtRVB5d1RBNGpQ?=
 =?utf-8?B?cDlDT2VHYVlVY3NWNWhpeGhtSkVZZU1MVEpSZVNqQkxqRHEzRGRqMUFVMzZU?=
 =?utf-8?B?bWJMdVhyV2lWYVowUTV5a0pOcTZRc3lhMjMxYVdzckpHeEdsREVBUjkxSFpN?=
 =?utf-8?B?VVFDZHJMZGdzcjJIRThqOUowMzJYemczclpaNUp6MEZ6SVhBUkNXZnpjSEYz?=
 =?utf-8?B?ZFJrWVo5ZEl3VEtOaU0zZzZVSFJLakZJaDJ5SmpyM1ZvY2lQekYrZlNUeEpw?=
 =?utf-8?B?YkFpMzVrcDhtS29kQlpJMk9CZHIyWGZoZ1VBOWJMYXJXRGhNM2NWK1JPdU9V?=
 =?utf-8?B?YlVQN2JrV3B0QXVXZENibk1OMFdFRGh0TVZyMWhYOFdXNXVOcnhyY1ZvSzJO?=
 =?utf-8?B?WkFaRDF4b1FqQTAyTHlCRGlnM0tlazg1T09lL1A3Qi9VUFU4OXorNlJXOTVN?=
 =?utf-8?B?NWRLa3BBb2dMUFVHZzRWQTQ2cEp1NEM2NE1iMXNZRU04elZ2RE5LL2dMTTNi?=
 =?utf-8?B?M2xNRG5iSU9SMkkwbkdmU2pnR0tWRWN0YXVTbjB3Y1dMYmVuRnNjcWcrUzJ1?=
 =?utf-8?B?Q0EwWmI0TERJMlJ6TFFzOGdMUGF6MmlVc1EwZDJlSUx3R2lxbUh4MmljTWJU?=
 =?utf-8?B?STB5Q3hXSGZYL3J2a1ZEaE1pRzJxd0VBQWx1UXAzMVlGYjQ3N052aWtucDRH?=
 =?utf-8?B?OWJlR3pVdmhZa201R3N6ZVRWOVVnZWx2YnlkbXlCTnUzNlViMlBMa2xsUGhZ?=
 =?utf-8?B?Q1kzVnN0aHJkMXdUVmJiMU1JUGdhSzdpZWxmYUF4blQzRzNHdktTamdUUTRL?=
 =?utf-8?B?Y0hkV2JoSVdHUmpKWFlNWURJeHNzUndUaGNlZVlsNTlFbzUyR2RwWWRMNHlm?=
 =?utf-8?B?NS9jOTc0b2orVGVEbHRremtvaXUyMzY3NjFMcFEwaWVObEtMcFlBbWZCb1Zx?=
 =?utf-8?B?cWp4NFZnNCt5S1UwUjFjczJGRUIrQXEyK2FPWC96UjdMUzRoL2I2bUFqN3Va?=
 =?utf-8?B?NVVhUHFYK3ViYTMwN2F3UzdNamFpOGNrQ3ViU0N5ZGFPblV2Z2xCb0FLRXdF?=
 =?utf-8?Q?dGDPMuMLERQP2I96QlHt9HBag?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2325dd34-6760-4f16-952b-08dc9b59269b
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jul 2024 12:10:38.1396 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G8soP5kspG5sCVsiBHliSjRbiiEh/0jyFtANcja932VB6ObGDn5/T+w2zfZ6yMizyfGn1aj6D69JQ80TNp+qHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6884
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
PiBTeXJqYWxhDQo+IFNlbnQ6IFR1ZXNkYXksIEp1bmUgMjUsIDIwMjQgMTI6NDAgQU0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDEwLzE0
XSBkcm0vaTkxNS9kc2I6IEludHJvZHVjZSBpbnRlbF9kc2JfY2hhaW4oKQ0KPiANCj4gRnJvbTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IElu
IG9yZGVyIHRvIGhhbmRsZSB0aGUgREV3YWtlIHRyaWNrcyB3aXRob3V0IGludm9sdmluZyB0aGUg
Q1BVIHdlIG5lZWQgYQ0KPiBtZWNoYW5pc20gYnkgd2hpY2ggb25lIERTQiBjYW4gc3RhcnQgYW5v
dGhlciBvbmUuIEFkZCBhIGJhc2ljIGZ1bmN0aW9uIHRvDQo+IGRvIHNvLiBXZSdsbCBleHRlbmQg
aXQgbGF0ZXIgd2l0aCBhZGRpdGlvbmFsIGNvZGUgdG8gYWN0dWFsbHkgZGVhbCB3aXRoIERFd2Fr
ZS4NCg0KSXMgY2hhaW5lZCBEU0IgY29uY2VwdCByZXN0cmljdGluZyB0byBvbmx5IDIgRFNCIGlu
c3RhbmNlIG9yIGNhbiBiZSBleHRlbmRlZCB0byBhdmFpbGFibGUvbWF4IERTQiBpbnN0YW5jZXM/
IA0KDQpBcmUgd2UgZXhwb3NpbmcgZnVsbCBjaGFpbiBvZiBEU0IgdG8gdXNlciBvciBjYW4gYmUg
cmVzdHJpY3QgdG8gcHJpbWFyeSBEU0Igd2hpY2ggd2lsbCBjb250cm9sIG90aGVyIGluc3RhbmNl
cz8NCg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RzYi5jIHwgNDIgKysrKysrKysrKysrKysrKysrKysrKysrDQo+IGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmggfCAgMyArKw0KPiAgMiBmaWxlcyBjaGFuZ2Vk
LCA0NSBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHNiLmMNCj4gaW5kZXggMDkyY2YwODJhYzM5Li40YzA1MTljNDFmMTYgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBAQCAtNTAyLDYgKzUw
Miw0OCBAQCBzdGF0aWMgdTMyIGRzYl9lcnJvcl9pbnRfZW4oc3RydWN0IGludGVsX2Rpc3BsYXkN
Cj4gKmRpc3BsYXkpDQo+ICAJcmV0dXJuIGVycm9yczsNCj4gIH0NCj4gDQo+ICtzdGF0aWMgdm9p
ZCBfaW50ZWxfZHNiX2NoYWluKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAr
CQkJICAgICBzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsDQo+ICsJCQkgICAgIHN0cnVjdCBpbnRlbF9k
c2IgKmNoYWluZWRfZHNiLA0KPiArCQkJICAgICB1MzIgY3RybCkNCg0KSSBkbyBub3Qgc2VlIGFu
eSB1c2FnZSBvZiBjdHJsIHZhcmlhYmxlIGluIHRoaXMgcGF0Y2gsIG1heWJlIGdvb2QgdG8gYWRk
IHdoZXJldmVyIHdpbGwgYmUgdXNpbmcgaXQuDQoNClJlZ2FyZHMsDQpBbmltZXNoDQo+ICt7DQo+
ICsJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KHN0YXRl
LT5iYXNlLmRldik7DQo+ICsJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSBkc2ItPmNydGM7DQo+
ICsJZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOw0KPiArCXUzMiB0YWlsOw0KPiArDQo+ICsJ
aWYgKGRybV9XQVJOX09OKGRpc3BsYXktPmRybSwgZHNiLT5pZCA9PSBjaGFpbmVkX2RzYi0+aWQp
KQ0KPiArCQlyZXR1cm47DQo+ICsNCj4gKwl0YWlsID0gY2hhaW5lZF9kc2ItPmZyZWVfcG9zICog
NDsNCj4gKwlpZiAoZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLCAhSVNfQUxJR05FRCh0YWlsLA0K
PiBDQUNIRUxJTkVfQllURVMpKSkNCj4gKwkJcmV0dXJuOw0KPiArDQo+ICsJaW50ZWxfZHNiX3Jl
Z193cml0ZShkc2IsIERTQl9DVFJMKHBpcGUsIGNoYWluZWRfZHNiLT5pZCksDQo+ICsJCQkgICAg
Y3RybCB8IERTQl9FTkFCTEUpOw0KPiArDQo+ICsJaW50ZWxfZHNiX3JlZ193cml0ZShkc2IsIERT
Ql9DSElDS0VOKHBpcGUsIGNoYWluZWRfZHNiLT5pZCksDQo+ICsJCQkgICAgZHNiX2NoaWNrZW4o
c3RhdGUsIGNydGMpKTsNCj4gKw0KPiArCWludGVsX2RzYl9yZWdfd3JpdGUoZHNiLCBEU0JfSU5U
RVJSVVBUKHBpcGUsIGNoYWluZWRfZHNiLT5pZCksDQo+ICsJCQkgICAgZHNiX2Vycm9yX2ludF9z
dGF0dXMoZGlzcGxheSkgfA0KPiBEU0JfUFJPR19JTlRfU1RBVFVTIHwNCj4gKwkJCSAgICBkc2Jf
ZXJyb3JfaW50X2VuKGRpc3BsYXkpKTsNCj4gKw0KPiArCWludGVsX2RzYl9yZWdfd3JpdGUoZHNi
LCBEU0JfSEVBRChwaXBlLCBjaGFpbmVkX2RzYi0+aWQpLA0KPiArCQkJICAgIGludGVsX2RzYl9i
dWZmZXJfZ2d0dF9vZmZzZXQoJmNoYWluZWRfZHNiLQ0KPiA+ZHNiX2J1ZikpOw0KPiArDQo+ICsJ
aW50ZWxfZHNiX3JlZ193cml0ZShkc2IsIERTQl9UQUlMKHBpcGUsIGNoYWluZWRfZHNiLT5pZCks
DQo+ICsJCQkgICAgaW50ZWxfZHNiX2J1ZmZlcl9nZ3R0X29mZnNldCgmY2hhaW5lZF9kc2ItDQo+
ID5kc2JfYnVmKSArIHRhaWwpOyB9DQo+ICsNCj4gK3ZvaWQgaW50ZWxfZHNiX2NoYWluKHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiArCQkgICAgIHN0cnVjdCBpbnRlbF9kc2Ig
KmRzYiwNCj4gKwkJICAgICBzdHJ1Y3QgaW50ZWxfZHNiICpjaGFpbmVkX2RzYikNCj4gK3sNCj4g
KwlfaW50ZWxfZHNiX2NoYWluKHN0YXRlLCBkc2IsIGNoYWluZWRfZHNiLA0KPiArCQkJIDApOw0K
PiArfQ0KPiArDQo+ICBzdGF0aWMgdm9pZCBfaW50ZWxfZHNiX2NvbW1pdChzdHJ1Y3QgaW50ZWxf
ZHNiICpkc2IsIHUzMiBjdHJsLA0KPiAgCQkJICAgICAgaW50IGh3X2Rld2FrZV9zY2FubGluZSkN
Cj4gIHsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHNiLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oDQo+IGlu
ZGV4IGQwNzM3Y2VmYjM5My4uZTU5ZmQ3ZGEwZmMwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgNCj4gQEAgLTQ1LDYgKzQ1LDkgQEAgdm9pZCBpbnRlbF9k
c2Jfd2FpdF9zY2FubGluZV9pbihzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwg
IHZvaWQgaW50ZWxfZHNiX3dhaXRfc2NhbmxpbmVfb3V0KHN0cnVjdA0KPiBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlLA0KPiAgCQkJCSBzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsDQo+ICAJCQkJIGlu
dCBsb3dlciwgaW50IHVwcGVyKTsNCj4gK3ZvaWQgaW50ZWxfZHNiX2NoYWluKHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiArCQkgICAgIHN0cnVjdCBpbnRlbF9kc2IgKmRzYiwN
Cj4gKwkJICAgICBzdHJ1Y3QgaW50ZWxfZHNiICpjaGFpbmVkX2RzYik7DQo+IA0KPiAgdm9pZCBp
bnRlbF9kc2JfY29tbWl0KHN0cnVjdCBpbnRlbF9kc2IgKmRzYiwNCj4gIAkJICAgICAgYm9vbCB3
YWl0X2Zvcl92YmxhbmspOw0KPiAtLQ0KPiAyLjQ0LjINCg0K
