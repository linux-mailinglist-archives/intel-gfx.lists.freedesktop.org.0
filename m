Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 488A8ABEB09
	for <lists+intel-gfx@lfdr.de>; Wed, 21 May 2025 06:47:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F08610E09A;
	Wed, 21 May 2025 04:47:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VThy53Ch";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 582B310E09A;
 Wed, 21 May 2025 04:47:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747802876; x=1779338876;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NNgX6PqVbs7Duyjltkyr2458ghAj5ETNtXdXnVLS88s=;
 b=VThy53ChBKO5CTCXV4Fa4xG0YCIuANUKXccTK2gytAlG46DCvcvN7V12
 m1WwOfXX4t3/HZ3nwisegygC3x6MMWOxCgIjyaOy8GgXprWxaku9GJuZy
 mnswuPgpePWPUBiXGS1vxmmhekj/l//s0yRzgI76Uer1ATeTf7DDyB+40
 KtW4ngLjC7gzxIw+XnA+g8xCJjBDUgt5w5a5fAswh2lcxAH6km74DbrrS
 zVogrgAkFDEtpYgEGKdR5ZeJmypAPdtu+RKwrYQU1qc2S4eTN/s2A7l+v
 7CTd3FMK3uEa16sSK6T9bgWZXHgTUtnhS4P8dZispUhQPbpUaQhEQ1AGb A==;
X-CSE-ConnectionGUID: Eh/GZC6oRuyLc8tgNgYYIg==
X-CSE-MsgGUID: V/2DbMzOQYKPZfJsOMWLgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11439"; a="49897376"
X-IronPort-AV: E=Sophos;i="6.15,303,1739865600"; d="scan'208";a="49897376"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 21:47:56 -0700
X-CSE-ConnectionGUID: C9sR7icyQQe90mP78Mu+bw==
X-CSE-MsgGUID: 56dpwlfoQmONdfFq7x3+vQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,303,1739865600"; d="scan'208";a="139801838"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2025 21:47:57 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 20 May 2025 21:47:55 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 20 May 2025 21:47:55 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 20 May 2025 21:47:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MHdzkYXn15eoF45iiPy4GOX1tT5eN4kiGrAqmLX/NoXtiB3iqM+9s9LGRwAX+paDFcIZ2IL39Fodw4OOizxh22BVQ4PrMqAzp830IaLegZ5ZpCEkz3K+otq2pEuxm2s3gVI+ldlwcB8meAm0I2YZQMyrPytw8m7b2160YsPpKGEj6+4TwQCVo26TudBMVNzjCTDyy+S6Beghm+68wHT46iKFul7M0Rk+63U1g9ZtYRZEbSRisl/PgrFECdQlAQNhKkEXGDx8k7q7K22rlBeNogWCFo6uxQhKyNrUFfjw2x0UqUKh8WYSzF+l2BCsbzELB2IXF/107NDPo41KUxbQVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NNgX6PqVbs7Duyjltkyr2458ghAj5ETNtXdXnVLS88s=;
 b=VL2b6OZu9r8UfGdNnjLd9KuiFbApF+b/FR3w6VbSNi/wrxm4aIXg0KDa/dBPPYNl8OLvUN5rtfuUi4eTSaaOUcP00+gu7qZG63vRzULc+L5Qn2fpUxn8JTHwdy/1337r8uK+qZqJJdnPRuiznObv1aAO/Y//+Sm79GwAA5fVncZyB2RV/aqLrqQB8WHgoMxhJtNupHvJbosTSPBrREn2TGZxS8bcHJjKgtQng7mmx14IX2Lqx8ZuUMzIbfzPg2fUgvQkNl3BdSH4S/0ces2OZxMxNkSf1cpdndrIgdLhvmguGtbv2he8pYRCQiOsFhBtIHTAmY0WnlyGF+wHxau0Ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 IA1PR11MB7891.namprd11.prod.outlook.com (2603:10b6:208:3fa::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8746.33; Wed, 21 May 2025 04:47:26 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c%6]) with mapi id 15.20.8746.030; Wed, 21 May 2025
 04:47:25 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Shankar, 
 Uma" <uma.shankar@intel.com>
Subject: RE: [v7 04/11] drm/i915/dsb: Implement intel_dsb_gosub()
Thread-Topic: [v7 04/11] drm/i915/dsb: Implement intel_dsb_gosub()
Thread-Index: AQHbyV8ywXktawN4a0qifuCWwTZYzrPcgjbg
Date: Wed, 21 May 2025 04:47:25 +0000
Message-ID: <DS0PR11MB8049E482880E254B344A655DF99EA@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20250520075537.4074010-1-chaitanya.kumar.borah@intel.com>
 <20250520075537.4074010-5-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20250520075537.4074010-5-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|IA1PR11MB7891:EE_
x-ms-office365-filtering-correlation-id: 93f00c7e-255d-4eb0-752d-08dd98229537
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?MlQzZDhleTVrUXZBK0VGcEtBQ0RLOHQ2bW94dXVBSEpocHlEUzQvWlYzUWRU?=
 =?utf-8?B?V0k1NjFWUXV3QXdvbFMra01nSDBjR0oyTC90UjRZaXdDSWVubUxpZHM0bDhT?=
 =?utf-8?B?VS8zVy94TTVrUll3MStYV1V5dDhCMUsxMnE4OUJDcDdGOGljZHZnV3pwZng0?=
 =?utf-8?B?ZFJYTVdpVnkxOTJWYk5oejhadDJ3MTdleFhaVEdoNzZTb1g5RitvZnNEalA3?=
 =?utf-8?B?NndUZ09wNWE1eU5jaUcwSUtkY0RjMXl4MUFHSm16eHEwUnhpVlErd3pkYXA2?=
 =?utf-8?B?WExFaVZiLytmRnZIQ25lQWxaMmlvK0dDdkh2dHRZZVNZcWNiVjluVlZHUnZV?=
 =?utf-8?B?QmxwbWZYbE9EVHZuZWxlRmRlYTIxY1ZWSksrdGgyZTNPRURqMC85ZnlTSytK?=
 =?utf-8?B?Z2pjVm1UeElFR0kwVWRYaUU4U3RMQ2RDbyt6SElMK0h3d3p5azl3NGgvaExF?=
 =?utf-8?B?dkt4WC91azBKdmIreDJtbFpqU1E4VVFHVXNEc0tQUUJtc0JrUE1aOEY3Vzd6?=
 =?utf-8?B?WWxuTG9ieklvditxOExjdS9KV3FZM2ZyMHU2ZXM3TlZlTStPZlkwc3h2L1U4?=
 =?utf-8?B?V0tkb2ZsZTVFUjNreUVsdzNodFJjaWxuTUxDR3BXaXp6bFZsS3lFTXhkQ1pU?=
 =?utf-8?B?Yk5id3NoSEZJK0plTEYyMHM4blVuL00xUEE1R2dPM3FYbkVFUTdYeVJaNit2?=
 =?utf-8?B?ZE1MRTk0K2pSNE44MjlFaXlZeFI4NWpDaElabTJGaHhXSDJJMXYrV0MrK3Rl?=
 =?utf-8?B?NEpIWTlGS1ZUQ3drZGtUbkU1elNjdHhpdkZIbU45N1lQV2VaTmpZTjhxOFcw?=
 =?utf-8?B?U1pydk1UQVRoK05mc1l6UU12RExjZ0VYbnpwODBSK3hlY0lRa1BqWlhENWha?=
 =?utf-8?B?YnJ4Z3ZoVnRFMjlIQ2d4SXdrZTl6TjNzeURWNDVWVTUvRlVaTnFWTWRFZSs5?=
 =?utf-8?B?SDVsaVVYdnFXTVFOc0s5RVJ2cWMzbEZBbmtJakdQU3BFRnlza3hBMTc0SzZw?=
 =?utf-8?B?L3ZjbHEvbVh0cHN0TGFVbmVsQlkwZFh2c2U1Ym11VFNuK0Y0eldMUmdSNk5B?=
 =?utf-8?B?QThzS0dHV1FrbHRSWnJmVmNObHo5WE9CVWhwSm5rM1FxdksvTzNSVGF1SUVS?=
 =?utf-8?B?MkJXWnhaQmxWWlZFUjJGUjFRb2REeHdCT2pqNnZ6dUpOekZRY1JzV0FNV0NK?=
 =?utf-8?B?OG5uNzhjVm1UVno5czBnOVpXVURaMC9Od3BNalhPZEk3MXZmb0J5SmFrNWZ2?=
 =?utf-8?B?NjBLQS9ISk03eGJyVVd1OGJHM1NCMm1PZ3BJeWU1M1BxRXdtTUVKaHVjN1JY?=
 =?utf-8?B?MXhKcGJtUGlzdHYwZC9McGNGanpuUURQM1VOdDdVMWNSYVFnZDNJMkYwTkZn?=
 =?utf-8?B?djlJYU9Qd1RGck4wS3VsUWdWRzZLTnVIek5vcTV3TXpWNkdSa0FkVEJlQWp2?=
 =?utf-8?B?MnlGWHREVUJFYzRXV3lsc2s3Wk15RzRRUFAxYlZQenJoVEs1Lzgvd2poVGFD?=
 =?utf-8?B?b3liVWdTT3d3bStTRWtQNkplVnB3TjhQS3h5S1pSVHo5N0Fjb3g0ak5xalpO?=
 =?utf-8?B?bFg4WFdQLzR0MVAzb05SMStWSGR0UG1tbUpXSmU3ZmtzVnZRbFhsZlR0NjhX?=
 =?utf-8?B?Q1ZLNVFXZ3NqeVp5VThCWUR6am5UMVUweHZKaGNodEMrelpoY3ZpR1U4NFkw?=
 =?utf-8?B?U0QwLzZBc3F6V1JNQUR2aEpsME82MHFOZ25IOXNCRm1BTTF3YVowR055eEFu?=
 =?utf-8?B?cEpRLzE5TjZGVGxrUzBoVVF1N3hza3cwZWJmeGVieG8vYkNUMkJIei9zYndG?=
 =?utf-8?B?NGJzTXpGSE1FN1MvdnA2SnFFbzVWR0MvNDd1VERnZ2J1UDlNblZVVnZkVG4z?=
 =?utf-8?B?SWZ1amVZK25vQzdyMDgySmpQUllwRVF0RnM3cGlLNG1jUUo1ODBERkF0Y3Np?=
 =?utf-8?B?cWQ0Mlkzd3RHVHMrMmFWK0NOUHcxTWVPQ2FDM3dHS3JoczUyS3BFRlovOWpW?=
 =?utf-8?B?WnlzdTU0SDZ3PT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cUVGcERHSUNwbTFDZXJaeER0ZFZIL1Rxa2lDTS83RTVTMDdLaldBbE5RQ3Ay?=
 =?utf-8?B?b3EydkJJUzJ2M0pKckZrSzQzZXhwNXFRTDA3Ri9mbjduKzZLOXlJREVsK1Nj?=
 =?utf-8?B?NlNHSm1SdkxkMlc5M3FWZ05weHgyUVVHdVJDdWRtOVhDTDRPQnpVU2RXbldy?=
 =?utf-8?B?TjhnY1ZTQjVmcnAzZlVvNWtNTmUzblIxVXgrZWxUZGhrODk3ckFtSVJQcTdU?=
 =?utf-8?B?S0tCRHNVM1d4emJ5d2JzNXBqTFR0bS9xZ3BsUkFXUm1xWWZKUGlpUTVPYWlE?=
 =?utf-8?B?cFpFL3ZhY1B0NmdPSk82a08yMWhkWURCK2pveXVjNXFUUVBSYWhxYXNTUGlW?=
 =?utf-8?B?MUtmZTkrci9WL3NxaHJBdmh3Q05ML29tM2ptU05PRE95cFpyWlVNR0Y4cnFR?=
 =?utf-8?B?Z2oxMHBURlovUVk1Q2lCbDdFUDdUelpPUEpGNDlKZmVnazJsSGNDU1hMQTlC?=
 =?utf-8?B?Q1dQaDFyNXpXVHJYSTc1NWlGR3IvcEdTZkxESndSMlB2TTRxakZmQkZqazdm?=
 =?utf-8?B?Q2M4TGZqV0JZejkzTmwwWGJIaXJaaEZ3MnFYWEh6M1VUajBvSERHZVVrR1dv?=
 =?utf-8?B?c1dWajZ3dWtzQktlTGUzSTl5Q0V4SnpEeVVjTUwxOXZzZkdBWDFnZjdFcjRq?=
 =?utf-8?B?a2x2TU8xT084aUp1SS9OL3c2M2llRmo1VkpiTDNYNHJtQjU3d2Jpa3RYeVQ4?=
 =?utf-8?B?akIvU3hieCtYbUYxcTFwbW4rbllJenZBSUNEMmVrOW1uRHFjaEl0aFVCSVVO?=
 =?utf-8?B?NUoyaEltaUNMNU83d0tySGVqYzR5QzlBY0doNE9jWHYxTnZVb21HaFlRdEsv?=
 =?utf-8?B?QTlZYUFLa2ZPNFBUblpmcDRQNy8wVUVvN1ExSnFhR3ZGMjc5MlU5Nm5tSEpn?=
 =?utf-8?B?QXhSNkVGQys4b3ZEaTJwcFNMd3E5U1R6TXRIV3pobVdrNzlEQldBaC9HZjU5?=
 =?utf-8?B?NE9DRjdZdU0rZk1wb3FzaFY4NWFyT012MS9vblJoQ2p6ZXhrVm45N2lPYyt4?=
 =?utf-8?B?Y3FwU2phWlVLOHl3OWVyb3V6Q210WFZwdGJldFJwSVUwTFZxVWZXMS8xbE9S?=
 =?utf-8?B?RzkxVFlKdG9ncXFSN2tVeGVvLytMMnVmNDJjWndZcStCK21hQ2wwTGdCWFR2?=
 =?utf-8?B?UzJ2Q04rSllOMFhWa0ZmTmxUOUZqYS8wZWk0SENINGxsb2R3YkZqK3pYaXo1?=
 =?utf-8?B?V3I0Njh5MGVhMldnTTFBVWY3ZW1OT0dSZDZ4cmUxUHlZcFljRXZwM3JCb01E?=
 =?utf-8?B?UkJyOUJuNFJyV3dKa0E5bjZYWktnRjBiOEtiMktndjBnK2xzVnNNVkVFM3M3?=
 =?utf-8?B?WmhZSDlYNVl1cEdDOTlyTmVKN0pLT1FqeVBqTStHdXIvcEVzUkt5MENXeUo4?=
 =?utf-8?B?bElKK2dLRldQcmtYcFUzQ21FZTZ5R2E5T0UvREN5Z09IWmxIenp5U29qbDln?=
 =?utf-8?B?cThsRWpQUlphR3NCTFVzbnRSb0F1eDRrbkZaUnhublZjbCsza2RIOURaZjBV?=
 =?utf-8?B?c0ozSjBWckFsK0pBdG13Z3J1a0pRcE1sTlp1WHFBVmtxdzVsb0IwU2o5eDZF?=
 =?utf-8?B?dm16WjB4d09FdXdoOTZ1ZGxkWFU4TitPcnJWUTZDVlJOL1RmODFvdUpydHgw?=
 =?utf-8?B?RTBDeDNGQmFXdG5CcTU0MjZxVGM4TGQ0WURidHQ4S3RyQnJEemphYWxvcEFl?=
 =?utf-8?B?ME5ER2Z4N3pLby9kZ0xGQnNyYUpmRkNQS1VYMzM3cnRXSDVZZjRvOHVzY0hj?=
 =?utf-8?B?Tnk4a3dSc25ZdnNScWRheUU3S1RsUlUzRnJOdnBCaEUrUzJvUTRaTkVFWndF?=
 =?utf-8?B?YzBnN2t4ZVVjcE5FSCswNmxlczUzTVJSK2pDVDAvbHVieFlXZ2I2OE9HNUxy?=
 =?utf-8?B?TzJTeTRheTFZSWFWd1BiQmZ3NVhxaGtKdCtlWWdUcUJWMWY0QkQwNGQzUjFR?=
 =?utf-8?B?TmtSOU5DaWpHUFRwSW5KMmlJYmlBcDN2MkFsWUpQRnlMUmEzSVRSSjJxaytX?=
 =?utf-8?B?ZEJBT3hST0VpenppMjg4bGVzRFJlUFpNRDhVVTRIMjhWL0V0dXZQVGxEM2hy?=
 =?utf-8?B?anpFZGRPQ29XSFhtZllvay95V3NZVytRSzJMQVgxMDF3SE5NeGpHRmlCbzda?=
 =?utf-8?Q?cpAPGdVbauP/Idq3Vl2wDtMjA?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93f00c7e-255d-4eb0-752d-08dd98229537
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2025 04:47:25.5665 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ljlyOqoEm7AFcDnONWzJAAr8AJGI4bQycrMiBaIQn3NL/Rq/qc5ihUUcSHlsw64IcuYsGS9JbcwnGjzoU2mFWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7891
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQm9yYWgsIENoYWl0YW55
YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gU2VudDogVHVlc2Rh
eSwgTWF5IDIwLCAyMDI1IDE6MjYgUE0NCj4gVG86IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZzsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogdmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb207IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsN
Cj4gTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsgQm9yYWgsIENoYWl0
YW55YSBLdW1hcg0KPiA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gU3ViamVj
dDogW3Y3IDA0LzExXSBkcm0vaTkxNS9kc2I6IEltcGxlbWVudCBpbnRlbF9kc2JfZ29zdWIoKQ0K
PiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NCj4gDQo+IEFkZCBzdXBwb3J0IGZvciB0aGUgbmV3IEdPU1VCIERTQiBpbnN0cnVjdGlvbiAo
YXZhaWxhYmxlIG9uIHB0bCspLCB3aGljaA0KPiBpbnN0cnVjdHMgdGhlIERTQiB0byBqdW1wIHRv
IGEgZGlmZmVyZW50IGJ1ZmZlciwgZXhlY3V0aWUgdGhlIGNvbW1hbmRzIHRoZXJlLA0KPiBhbmQg
dGhlbiByZXR1cm4gZXhlY3V0aW9uIHRvIHRoZSBuZXh0IGluc3RydWN0aW9uIGluIHRoZSBvcmln
aW5hbCBidWZmZXIuDQo+IA0KPiBUaGVyZSBhcmUgYSBmZXcgYWxpZ25tZW50IHJlbGF0ZWQgd29y
a2Fyb3VuZHMgdGhhdCBuZWVkIHRvIGJlIGRlYWx0IHdpdGgNCj4gd2hlbiBlbWl0dGluZyBHT1NV
QiBpbnN0cnVjdGlvbi4NCj4gDQo+IHYyOiBSaWdodCBzaGlmdCBoZWFkIGFuZCB0YWlsIHBvaW50
ZXIgcGFzc2VkIHRvIGdvc3ViIGNvbW1hbmQgKGNoYWl0YW55YSkNCj4gdjM6IEFkZCBtYWNybyBm
b3IgcmlnaHQgc2hpZnRpbmcgaGVhZC90YWlsIHBvaW50ZXJzIChBbmltZXNoKQ0KPiANCj4gU2ln
bmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4NCj4gU2lnbmVkLW9mZi1ieTogQ2hhaXRhbnlhIEt1bWFyIEJvcmFoIDxjaGFpdGFueWEua3Vt
YXIuYm9yYWhAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHNiLmMgfCA1NyArKysrKysrKysrKysrKysrKysrKysrKysNCj4gZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaCB8ICAyICsNCj4gIDIgZmlsZXMgY2hhbmdl
ZCwgNTkgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RzYi5jDQo+IGluZGV4IDliMmRlNGU3ZTY4MS4uZGFkNDgzZDRiMWNmIDEwMDY0NA0K
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gQEAgLTkzLDYgKzkz
LDEwIEBAIHN0cnVjdCBpbnRlbF9kc2Igew0KPiAgLyogc2VlIERTQl9SRUdfVkFMVUVfTUFTSyAq
Lw0KPiAgI2RlZmluZSBEU0JfT1BDT0RFX1BPTEwJCQkweEENCj4gIC8qIHNlZSBEU0JfUkVHX1ZB
TFVFX01BU0sgKi8NCj4gKyNkZWZpbmUgRFNCX09QQ09ERV9HT1NVQgkJMHhDIC8qIHB0bCsgKi8N
Cj4gKyNkZWZpbmUgICBEU0JfR09TVUJfSEVBRF9TSElGVAkJMjYNCj4gKyNkZWZpbmUgICBEU0Jf
R09TVUJfVEFJTF9TSElGVAkJMA0KPiArI2RlZmluZSAgIERTQl9HT1NVQl9DT05WRVJUX0FERFIo
eCkJKCh4KSA+PiA2KQ0KDQpQbGVhc2UgYWRkIGEgY29kZSBjb21tZW50IHdoYXQgaXMgc3BlY2lh
bCBhYm91dCBHT1NVQiBhbmQgd2h5IHRoZSBhYm92ZSBjb252ZXJzaW9uIGlzIG5lZWRlZCB3aGlj
aCB3YXMgcG9pbnRlZCBvdXQgaW4gcHJldmlvdXMgcmV2aWV3Lg0KT3RoZXJ3aXNlIHRoZSBvdGhl
ciBjaGFuZ2VzIExHVE0uDQoNClJlZ2FyZHMsDQpBbmltZXNoDQo+IA0KPiAgc3RhdGljIGJvb2wg
cHJlX2NvbW1pdF9pc192cnJfYWN0aXZlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRl
LA0KPiAgCQkJCSAgICAgc3RydWN0IGludGVsX2NydGMgKmNydGMpDQo+IEBAIC01MzMsNiArNTM3
LDU5IEBAIHN0YXRpYyB2b2lkIGludGVsX2RzYl9hbGlnbl90YWlsKHN0cnVjdCBpbnRlbF9kc2IN
Cj4gKmRzYikNCj4gIAlkc2ItPmZyZWVfcG9zID0gYWxpZ25lZF90YWlsIC8gNDsNCj4gIH0NCj4g
DQo+ICtzdGF0aWMgdm9pZCBpbnRlbF9kc2JfZ29zdWJfYWxpZ24oc3RydWN0IGludGVsX2RzYiAq
ZHNiKSB7DQo+ICsJdTMyIGFsaWduZWRfdGFpbCwgdGFpbDsNCj4gKw0KPiArCWludGVsX2RzYl9p
bnNfYWxpZ24oZHNiKTsNCj4gKw0KPiArCXRhaWwgPSBkc2ItPmZyZWVfcG9zICogNDsNCj4gKwlh
bGlnbmVkX3RhaWwgPSBBTElHTih0YWlsLCBDQUNIRUxJTkVfQllURVMpOw0KPiArDQo+ICsJLyoN
Cj4gKwkgKiAiVGhlIEdPU1VCIGluc3RydWN0aW9uIGNhbm5vdCBiZSBwbGFjZWQgaW4NCj4gKwkg
KiAgY2FjaGVsaW5lIFFXIHNsb3QgNiBvciA3IChudW1iZXJlZCAwLTcpIg0KPiArCSAqLw0KPiAr
CWlmIChhbGlnbmVkX3RhaWwgLSB0YWlsIDw9IDIgKiA4KQ0KPiArCQlpbnRlbF9kc2JfYnVmZmVy
X21lbXNldCgmZHNiLT5kc2JfYnVmLCBkc2ItPmZyZWVfcG9zLCAwLA0KPiArCQkJCQlhbGlnbmVk
X3RhaWwgLSB0YWlsKTsNCj4gKw0KPiArCWRzYi0+ZnJlZV9wb3MgPSBhbGlnbmVkX3RhaWwgLyA0
Ow0KPiArfQ0KPiArDQo+ICt2b2lkIGludGVsX2RzYl9nb3N1YihzdHJ1Y3QgaW50ZWxfZHNiICpk
c2IsDQo+ICsJCSAgICAgc3RydWN0IGludGVsX2RzYiAqc3ViX2RzYikNCj4gK3sNCj4gKwlzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IGRzYi0+Y3J0YzsNCj4gKwlzdHJ1Y3QgaW50ZWxfZGlzcGxh
eSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoY3J0Yy0+YmFzZS5kZXYpOw0KPiArCXVuc2ln
bmVkIGludCBoZWFkLCB0YWlsOw0KPiArCXU2NCBoZWFkX3RhaWw7DQo+ICsNCj4gKwlpZiAoZHJt
X1dBUk5fT04oZGlzcGxheS0+ZHJtLCBkc2ItPmlkICE9IHN1Yl9kc2ItPmlkKSkNCj4gKwkJcmV0
dXJuOw0KPiArDQo+ICsJaWYgKCFhc3NlcnRfZHNiX3RhaWxfaXNfYWxpZ25lZChzdWJfZHNiKSkN
Cj4gKwkJcmV0dXJuOw0KPiArDQo+ICsJaW50ZWxfZHNiX2dvc3ViX2FsaWduKGRzYik7DQo+ICsN
Cj4gKwloZWFkID0gaW50ZWxfZHNiX2hlYWQoc3ViX2RzYik7DQo+ICsJdGFpbCA9IGludGVsX2Rz
Yl90YWlsKHN1Yl9kc2IpOw0KPiArDQo+ICsJaGVhZF90YWlsID0gKCh1NjQpKERTQl9HT1NVQl9D
T05WRVJUX0FERFIoaGVhZCkpIDw8DQo+IERTQl9HT1NVQl9IRUFEX1NISUZUKSB8DQo+ICsJCSgo
dTY0KShEU0JfR09TVUJfQ09OVkVSVF9BRERSKHRhaWwpKSA8PA0KPiBEU0JfR09TVUJfVEFJTF9T
SElGVCk7DQo+ICsNCj4gKwlpbnRlbF9kc2JfZW1pdChkc2IsIGxvd2VyXzMyX2JpdHMoaGVhZF90
YWlsKSwNCj4gKwkJICAgICAgIChEU0JfT1BDT0RFX0dPU1VCIDw8IERTQl9PUENPREVfU0hJRlQp
IHwNCj4gKwkJICAgICAgIHVwcGVyXzMyX2JpdHMoaGVhZF90YWlsKSk7DQo+ICsNCj4gKwkvKg0K
PiArCSAqICJOT1RFOiB0aGUgaW5zdHJ1Y3Rpb25zIHdpdGhpbiB0aGUgY2FjaGVsaW5lDQo+ICsJ
ICogIEZPTExPV0lORyB0aGUgR09TVUIgaW5zdHJ1Y3Rpb24gbXVzdCBiZSBOT1BzLiINCj4gKwkg
Ki8NCj4gKwlpbnRlbF9kc2JfYWxpZ25fdGFpbChkc2IpOw0KPiArfQ0KPiArDQo+ICB2b2lkIGlu
dGVsX2RzYl9maW5pc2goc3RydWN0IGludGVsX2RzYiAqZHNiKSAgew0KPiAgCXN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjID0gZHNiLT5jcnRjOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHNiLmgNCj4gaW5kZXggZTg0M2M1MmJmOTdjLi44YjJjZjBhN2I3ZTYgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaA0KPiBAQCAtNTcsNiAr
NTcsOCBAQCB2b2lkIGludGVsX2RzYl92YmxhbmtfZXZhZGUoc3RydWN0IGludGVsX2F0b21pY19z
dGF0ZQ0KPiAqc3RhdGUsICB2b2lkIGludGVsX2RzYl9wb2xsKHN0cnVjdCBpbnRlbF9kc2IgKmRz
YiwNCj4gIAkJICAgIGk5MTVfcmVnX3QgcmVnLCB1MzIgbWFzaywgdTMyIHZhbCwNCj4gIAkJICAg
IGludCB3YWl0X3VzLCBpbnQgY291bnQpOw0KPiArdm9pZCBpbnRlbF9kc2JfZ29zdWIoc3RydWN0
IGludGVsX2RzYiAqZHNiLA0KPiArCQkgICAgIHN0cnVjdCBpbnRlbF9kc2IgKnN1Yl9kc2IpOw0K
PiAgdm9pZCBpbnRlbF9kc2JfY2hhaW4oc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUs
DQo+ICAJCSAgICAgc3RydWN0IGludGVsX2RzYiAqZHNiLA0KPiAgCQkgICAgIHN0cnVjdCBpbnRl
bF9kc2IgKmNoYWluZWRfZHNiLA0KPiAtLQ0KPiAyLjI1LjENCg0K
