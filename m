Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37503A1371A
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 10:55:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F8F510E926;
	Thu, 16 Jan 2025 09:54:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RTiBEwx6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3047E10E920;
 Thu, 16 Jan 2025 09:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737021294; x=1768557294;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SLKEjeCr6pHiaF2Mev2V4joQ+1KRdg3l8jpDyTpKVCM=;
 b=RTiBEwx6hdu+mleY6705kvlQO0TpLdVBGBdaXXTSv/j0kvz3DSZqIWmc
 57J9sGsLMnQ5j4fPofdBtgP9DpxbmDZB30ON8fy+9bAE9Rdcv8HEBhRSX
 ifV+qyAzfad4GxOXFEpkppmN9jmkjMWKrkvZksqedH2pC9EhJHY+GV2b5
 RigOzEDjbtzMqyIJ/krhAN53wz6lz7yQYyFGQuJxYZmR0e+HNc7HcqzWv
 SW6zOBSZCSi721Sz/ZcmgN4C+DnQsA7+/UYI9ToDQ8Nq8n3QeMNguGlHV
 fYboPMhOE7GHMyVdxEoSJM29Uxy3j+Hj2E3MFCDNR1dQnPeC69n5h3Laj A==;
X-CSE-ConnectionGUID: RLvM3b8gRoi5en8zn6pWCA==
X-CSE-MsgGUID: DnFX3+1URc6N+o7fYvZQzw==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="54943624"
X-IronPort-AV: E=Sophos;i="6.13,209,1732608000"; d="scan'208";a="54943624"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2025 01:54:29 -0800
X-CSE-ConnectionGUID: YPJOidOTSIC5KpECB8SVyQ==
X-CSE-MsgGUID: DDQE55V9QFW1F4und/RK5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="105284194"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Jan 2025 01:54:30 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 16 Jan 2025 01:54:28 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 16 Jan 2025 01:54:28 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 16 Jan 2025 01:54:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mk22vkU/nSVWWbPAvTIlqRGOJgrV6vcI89NierIL/Mxi7AA2+PCBd9+W371ydFW6d/kjKOkjHOQ/2VwOWj85QK9kmCkIeIxSO4p94T44pfATWzvEe5GdJiExiH+PvuT4pK/22WeQIMvw2/9Oxq9a/Gbgaz5TllSPzHLjrSu2rMNEhbh/zPQyLnBuVTHEfSJnXvVcMiVQ7WonyyuBknAuc0cWu83BhU34T9qT9mcGLw5dEKk3TH4eoZe501Emf116S560o36qAlprB5JdJFnhONJryGw3XNe9RmF05htkY5nwycpEyqyon6gWwzefzVccPHQjbzcvT0PY9XzTtbBHBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SLKEjeCr6pHiaF2Mev2V4joQ+1KRdg3l8jpDyTpKVCM=;
 b=MECmFYNvZrIduV0YhtJIxgyGj0svsctEAq5GddzreWpshf4UkD13UqlSRSV2wEHbVIMy2eh6ArhtJWyL91GfMRECX1LqfegE7xIW8GT8LDoVvszx9izNg36EThDTFo7gTZsXqmsEubDpz2dzyKVTuC/VTT843r/oA43G+UOrSQXfq8R86OmuVQdazjuO+BcdPdWsi5xddeELfnLlnP7ImANY5jHLsRxad2Cp8GQF0dQnd0IdjD8IbksA9+7Tal5r7DZyEAbgq/SJGnreZOVlQpqhZzOee0jP1oVpGtErVPrlZ2+kZj3r0dK3MrSzX110fyxMC/VJXcUZFUrTox2phA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CYXPR11MB8661.namprd11.prod.outlook.com (2603:10b6:930:e4::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.13; Thu, 16 Jan
 2025 09:54:26 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%2]) with mapi id 15.20.8356.010; Thu, 16 Jan 2025
 09:54:26 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Kumar, Naveen1" <naveen1.kumar@intel.com>
Subject: RE: [PATCH v3 1/5] drm/plane: Add new plane property IN_FORMATS_ASYNC
Thread-Topic: [PATCH v3 1/5] drm/plane: Add new plane property IN_FORMATS_ASYNC
Thread-Index: AQHbYZGvPisuwAJycE+nq9/hhj3OyLMSzJmAgAFxpdCAAMJ3gIACTrfg
Date: Thu, 16 Jan 2025 09:54:26 +0000
Message-ID: <IA0PR11MB730783DA1E4950F621A7A20CBA1A2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20250108-asyn-v3-0-f4399635eec9@intel.com>
 <20250108-asyn-v3-1-f4399635eec9@intel.com>
 <SJ1PR11MB61292EA1EF93BB7B78EAAD45B91E2@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <IA0PR11MB7307C9002F145EEAF4ABDBC3BA1F2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <SJ1PR11MB61297CCE8B4B1BD5C09C7F3CB91F2@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB61297CCE8B4B1BD5C09C7F3CB91F2@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|CYXPR11MB8661:EE_
x-ms-office365-filtering-correlation-id: 5ceee1d7-dc73-43d7-a5bf-08dd3613c332
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|376014|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?akI3M3gvaGh5b2hWQmdnT05HRHh5eTBwcERURklyVUtzY1JkV0M0REZoNm4z?=
 =?utf-8?B?VTlJZUd3MmJkL2I4VFVxRFhwNWhkRjJNSUtPU2JiT3JPMW96cWZ6MG1ibVYx?=
 =?utf-8?B?ZWRVbHRoWVM2Z1RHNjhzbGRkbEZYQXlvUE5ydWMzUFhIMVFGTStHajIxS3NL?=
 =?utf-8?B?M0FwVGR0bEtDeXJJSi81NWlkS3drM1hhS0c0bm1OcTFYODdudXJyRlJuaGxu?=
 =?utf-8?B?dGxCVjh5ZzNLcFZodWQ2a3FuZ0dwRmVrWmJqa2kvTy95ZTQ4c1lhR1lPL3o5?=
 =?utf-8?B?K2RKaW05cnUrWXl2YzJjSHhFaXowTVh4RTZtNEZWUW5JNlBZbGd0QmNQcnRs?=
 =?utf-8?B?QXdZNEpBNDFqNExJODZqWlkrdVd3SHdqUkRxaUxZSFIyRnJNRHMraGFoWWRV?=
 =?utf-8?B?RXJyL3ZwaDE2MTlxMjFXWmhnbGZNNkhSMmRSL2FrR21SSGtDZ3NlRnNURUlN?=
 =?utf-8?B?a0YrdkZQaTU2N0lWVzVDbllpTnVJajc0d3JNMWltbmozQzhkU0hXb1hHdVhG?=
 =?utf-8?B?b2hYRExBK3V2L2lPNDMzdEpWdGNvT2F4MW1OMTM4VkFDRnRkaEhPM0xiZHVT?=
 =?utf-8?B?bVNXUW5keUZnazBTNXNpVUEzZ0ZoMnJmd1hRSkE4Sk40ZnZteFNZYXI3STJX?=
 =?utf-8?B?MkdWa2RaMUhhaWVjOVh6ZGpTR0VMRmtlKzZ5dlBMWG1FWTY1Z1VBV3VQSzZw?=
 =?utf-8?B?dWJHVElwUzVvWkJFNGl1ZGxJUVMxZHRiRkJwS3FENGliT01kQ0hLMzJtMG1v?=
 =?utf-8?B?Yng0NmQwZ2pxV0pYdUlycllsMjNHeXNtSzhWcnVWektMMmtCMjVySkt0QzNM?=
 =?utf-8?B?VjB4Z3NFTkxyL0VPZk1wbHk1dUl6MENsWlBXK3BuRDkvRXlLWnJvcXNuTTkx?=
 =?utf-8?B?eWd3MTNwS2tqcjhzVk1TWXpCVmRONytXb3dseUJFOEN5eHZobEdrcFlLVjZ3?=
 =?utf-8?B?TVJrdC9MaTI5MzVxSkJIeVcreG5GNDBqR1hzRHJ1Q2hTSERkR0FBbVAyaVhi?=
 =?utf-8?B?N1R3cERJVDFFRFBjUmxxdXUwdDMzQW5US2ttMkpJNnllRVBUam9hTk94Mm5Z?=
 =?utf-8?B?L0g4cy9wbGVUcnFmTlFxVUt3SlNZWmRzcFJxNDdOd0EvY1FCMVZPaUwrNUJP?=
 =?utf-8?B?d05oZ1grRUVzdldUWjRjcVVPNVhEcjR4QVp0RjR4cDVDditIai80QzlrZEov?=
 =?utf-8?B?dW9wNVNPT0ZyRFlYcWNieWd4bGhrWVNPNzgyeitHZ25PL0VvS3JnQkp0TGF5?=
 =?utf-8?B?ZXFPRkhPYk5GTjlPalhxaC8rdnVsR3Y1bmJCTmo3TlFPZFdJdFhZYWRkN1Zv?=
 =?utf-8?B?bEJsS0Q3MVFRakFCRzh2QTMvbVVQVVN4ek4zNUZwRzRhRC81U0ZpVDh5Z2ln?=
 =?utf-8?B?OE44WG1SMEZ2ekw5NGpDdEVVWTcxRXpmbCtaQllWNW95L1NiampHc3hTVHdC?=
 =?utf-8?B?c29YMnNhSmpyRk0yNldNUnBwNDVBb1RiazhZNWtkRFJla2hRVlFVNHh0R25z?=
 =?utf-8?B?REJ2dzhabkM2L0J4ekhFUC8wL0ZHMVhDWFNaQVlzOG5wZmUxTUI0dlcwVExn?=
 =?utf-8?B?MlFiV3MyL2VYSFBEN25ZUTF1NlhhSVV6UTBwQkZIUytGK3dacXpnMW9sV3Ry?=
 =?utf-8?B?dlQrUEtQWm13THozc3kwZDdtWGd5bEI0WTdUZkJEZHM2QmJXSmV3K2QrS3Y3?=
 =?utf-8?B?NDNRMGUrTi9vQ3M2dDhUSkhYQ0podndUdWpGaXNqRFQ0V2p0NWsydklSRy9V?=
 =?utf-8?B?NUM4YSs5cnVPV2hTMVBmMjlwaWtueXZlb2JLdXN5VHpQV0RBNG54R2kyWHhn?=
 =?utf-8?B?R2U4OHVySnMrbzUxZXhjVWI5TUlna1p1VWk1UW1idC9KUmpuZDlWWEplek5x?=
 =?utf-8?B?QjcwaTJVeU5Dc3RXNy9kdk9IL1k5RlhYUURWSUFmemdWSFhOL2VSbnZhaEFt?=
 =?utf-8?Q?sCJiaQmpXmU+g7KTpVofmo9UWfAP0aY5?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(376014)(1800799024)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QUV5OHpGTHRhb2NENC9IQURBWXdObTFpVGUrZ0lzR2JORCsvdnBQWmIwV0Mr?=
 =?utf-8?B?bFFjbFNqKzVjL0ZXUFZlSWgxT2xnS2VsT3FPL2RTaFFSemc5SUdINC93cUpR?=
 =?utf-8?B?OU1kaVpWTWZ4aFpWell3b09xcTRySEVrd2hvblRFNC9yMmZEZ1N1UEpmNG9t?=
 =?utf-8?B?ZUQxdkMxcFhDNm9PbEpSZUZjaXZud0wvbGxqU0hvdUhHcVcvbXI5TmJpUnBY?=
 =?utf-8?B?OUNDUExOekw0L2hYYnJsVnh1eDJRMlpPYXduUE03a0VLWnZiL1B0M09Nait2?=
 =?utf-8?B?MmczeGpIUEoxZVdMZldWaHFTUGNmOHRXbjlPMU82VXErUjVsbTY5U0VSNUtD?=
 =?utf-8?B?SGdrcTdkdjBtUzRKTUFQaDJLZlhlNVlsdnQ5aE1tTXNORmVkUUhBMGg5UjRj?=
 =?utf-8?B?VHNmUTQ3cXJCbTA0ODFhOTBnSXVmcXY2SytGTWxtTkpWS0pvb2phTWNzU215?=
 =?utf-8?B?cFc2QWNiV29yWnFZQ0tkWFloWVpzTlk5bFdLQUEwcGRKVEZpdjFwSHVvcGtP?=
 =?utf-8?B?b2FjUGJxaDlMTU05emQ3NTMrYlpWcFpJTjI1ZXMvY0d4dzN4OWhENlJNZ2N6?=
 =?utf-8?B?MEE1VmxzUXZ2SmZ0dTlyR2xzZmRzVVRtZHEwY1V3clJyRXFsY2F2NW5ZbXc1?=
 =?utf-8?B?d1JSY3BoVUgvME9vQjVCMlBKZnY0NTNJc3JiRHdTRGcwckZlVi83RkkxaTUv?=
 =?utf-8?B?Si82WEhSb3IwQWdsUEg0UGdiZXRMQ2d3RW5NK0NxZy95eFhZSmZxb0Nkazdx?=
 =?utf-8?B?UDZoTHhnNU04bjBxK3dCeE4xK2l5N3FQWXlGS2xGVU9Lak85ejRkZnV2UVp3?=
 =?utf-8?B?SjRuV2FHeFFudVpYSlA5VWRhYkRPQk9iMkVnVnJPK0IvUUdSS1Q5VnZ1VDZU?=
 =?utf-8?B?SGIyTlNoQ1F0UzE0cVZFbmN2OEJYbnpWWWZVQ0Npak53UTJEQXBFOXpxaGtW?=
 =?utf-8?B?ekhVUlI4WDNzTjBHTTJjcWc5WWFacGV3TDdZNnJONUh1U0UzT2Q1NWhmVkJh?=
 =?utf-8?B?ZGYxVDM1MlZrYmYxRHJrdVJvcWVQVnZpVVljU0JMR2M0T1RUN2lQcFdhaEdX?=
 =?utf-8?B?ZnVCd0sycFh2djlpUHNJWGk3Z1dTQnJ4alBTNW9RbUp4dzVxZlBjTE5iaVNm?=
 =?utf-8?B?MU1VcVIwTmkrS2ZvdXhwRDY5VFJMNGF3STBZT3VyWW1SSXZ5TWV0YUpxV3ow?=
 =?utf-8?B?ZEl1MnZLSXEwcFg3Vjc5Vm1qWjBGRllraEJDcU1uV3VTZU5XL2M1clVxS2ZR?=
 =?utf-8?B?N01ITjlSVVFXTUtUNnNrRzFKSDRlN05jeUFaMjdsNDhLOUpvNkFOdjM3djVW?=
 =?utf-8?B?SDg2cUM3NUpVZWFaaS83T01aUE1WMkhTd1FqTnBKeVBCTkYyOUpBaExXTXhG?=
 =?utf-8?B?MjRwOVVFdEI3Y0wwcXkrbW5hVU1MUFMyeGk5bm1vaUdmcVJFK28vaERNWWFJ?=
 =?utf-8?B?TER4cTVoZytscThEYmppQkFYZmszVHR4N2wwdTlnU2l6aXlrcG1xWEQvUXhm?=
 =?utf-8?B?M0Rld1dNNDVRNXFFTnlGTXRNWXJzWE1VU3FtTjBNTVpIYW5SR3U5ZXBnRFJW?=
 =?utf-8?B?bnhXY3JHelVnUWFGMlFrMSs4ZG5yNktJK3RxcEZLUExzalZPZVk4aFBEM2hN?=
 =?utf-8?B?OTVYc2RKRW1FaG9LTGdJVDR5bHNtL1NTTldYS3ZUY0pmcU9pVTBXMXA1L3FV?=
 =?utf-8?B?bFlLdUJYeDZlOEdwS0QvV3NLbmdqNnhLSkM2Q2pUNktpUXdkOVpCMzc5bTRs?=
 =?utf-8?B?UlFpazhmMGw4OFBZalFpUEdPdjl4N29nbGdKTlBoMEZwVEovTjhVeU5VMkJt?=
 =?utf-8?B?N1hNWHhCeXV5RkNCWExvMTZ5OEg4VnZ6QWt6YzB5Tk94THRzZ3Vsb0pJUW52?=
 =?utf-8?B?K1NFdGlucko1cTFiRnRVcFFHSmxuNHBLV2U5bkV4bm1GSkExVkxlVHV0VHZt?=
 =?utf-8?B?dG0rTHlzeUNjZlFOTjcxcmlDdEVTZW1lTEJCK21OeHgrUVg4TlNOUTZMUEx1?=
 =?utf-8?B?b01oazh4ZWh6T2VzUXh4bUZXVi94ajR3V3RMbG5TS3Jxb0hGTnR5NzZIRW9L?=
 =?utf-8?B?NG1pdFJDR3BhdWMzaElZazFFMGtEcE5PdDg0N1BkLzUyb1NXcVhhRDVwaHZQ?=
 =?utf-8?B?cjd0bmZEa3lCVnZSY1dERHNRQmdVdFFyV2FyWm9JZmszYXdyS05pWGROTGZx?=
 =?utf-8?Q?H1oQaGjeYTGfwhzK2BCv8Kmve4RV6VWjhjt+EXzCDhbH?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5ceee1d7-dc73-43d7-a5bf-08dd3613c332
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2025 09:54:26.3066 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JSU0w9LyMIUY3EGHhQdNRLK+RpXmyOytBCH2uarLPs+uaS5psAB6HxzbDl1mkM7B7C1lQBo2VMdGtPOfVk3ltA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8661
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

PiA+ID4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+ID4gPiBGcm9tOiBkcmktZGV2
ZWwgPGRyaS1kZXZlbC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24NCj4gPiA+ID4g
QmVoYWxmIE9mIEFydW4gUiBNdXJ0aHkNCj4gPiA+ID4gU2VudDogV2VkbmVzZGF5LCBKYW51YXJ5
IDgsIDIwMjUgMTE6MDkgQU0NCj4gPiA+ID4gVG86IGRyaS1kZXZlbEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmc7DQo+ID4gPiA+IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7DQo+ID4gPiA+
IGludGVsLSB4ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiA+ID4gQ2M6IE11cnRoeSwgQXJ1
biBSIDxhcnVuLnIubXVydGh5QGludGVsLmNvbT4NCj4gPiA+ID4gU3ViamVjdDogW1BBVENIIHYz
IDEvNV0gZHJtL3BsYW5lOiBBZGQgbmV3IHBsYW5lIHByb3BlcnR5DQo+ID4gPiA+IElOX0ZPUk1B
VFNfQVNZTkMNCj4gPiA+ID4NCj4gPiA+ID4gVGhlcmUgZXhpc3RzIGEgcHJvcGVydHkgSU5fRk9S
TUFUUyB3aGljaCBleHBvc2VzIHRoZSBwbGFuZQ0KPiA+ID4gPiBzdXBwb3J0ZWQgbW9kaWZpZXJz
L2Zvcm1hdHMgdG8gdGhlIHVzZXIuIEluIHNvbWUgcGxhdGZvcm1zIHdoZW4NCj4gPiA+ID4gYXN5
bmNocm9ub3VzIGZsaXBzIGFyZSB1c2VkIGFsbCBvZiBtb2RpZmllcnMvZm9ybWF0cyBtZW50aW9u
ZWQgaW4NCj4gPiA+ID4gSU5fRk9STUFUUyBhcmUgbm90DQo+ID4gPiBzdXBwb3J0ZWQuDQo+ID4g
PiA+IFRoaXMgcGF0Y2ggYWRkcyBhIG5ldyBwbGFuZSBwcm9wZXJ0eSBJTl9GT1JNQVRTX0FTWU5D
IHRvIGV4cG9zZQ0KPiA+ID4gPiB0aGUgYXN5bmMgZmxpcHMgc3VwcG9ydGVkIG1vZGlmaWVycy9m
b3JtYXRzIHNvIHRoYXQgdXNlciBjYW4gdXNlDQo+ID4gPiA+IHRoaXMgaW5mb3JtYXRpb24gYWhl
YWQgYW5kIGRvbmUgZmxpcHMgd2l0aCB1bnN1cHBvcnRlZA0KPiBmb3JtYXRzL21vZGlmaWVycy4N
Cj4gPiA+ID4gVGhpcyB3aWxsIHNhdmUgZmxpcHMgZmFpbHVyZXMuDQo+ID4gPg0KPiA+ID4gcy9k
b25lL2RvDQo+ID4gPiBzL3Vuc3VwcG9ydGVkL3N1cHBvcnRlZA0KPiA+ID4gcy9mbGlwcy9mbGlw
DQo+ID4gPg0KPiA+IERvbmUhDQo+ID4NCj4gPiA+ID4gQWRkIGEgbmV3IGZ1bmN0aW9uIHBvaW50
ZXIgc2ltaWxhciB0byBmb3JtYXRfbW9kX3N1cHBvcnRlZA0KPiA+ID4gPiBzcGVjaWZpY2FsbHkg
Zm9yIGFzeW5jaHJvbm91cyBmbGlwcy4NCj4gPiA+ID4NCj4gPiA+ID4gdjI6IFJlbW92ZSBhc3lu
YyB2YXJpYWJsZSBmcm9tIGRybV9wbGFuZSAoVmlsbGUpDQo+ID4gPiA+IHYzOiBBZGQgbmV3IGZ1
bmN0aW9uIHBvaW50ZXIgZm9yIGFzeW5jIChWaWxsZSkNCj4gPiA+ID4NCj4gPiA+ID4gU2lnbmVk
LW9mZi1ieTogQXJ1biBSIE11cnRoeSA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+DQo+ID4gPiA+
IC0tLQ0KPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2RybV9tb2RlX2NvbmZpZy5jIHwgIDcgKysr
KysrKw0KPiA+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2RybV9wbGFuZS5jICAgICAgIHwgIDYgKysr
KysrDQo+ID4gPiA+ICBpbmNsdWRlL2RybS9kcm1fbW9kZV9jb25maWcuaCAgICAgfCAgNiArKysr
KysNCj4gPiA+ID4gIGluY2x1ZGUvZHJtL2RybV9wbGFuZS5oICAgICAgICAgICB8IDIwICsrKysr
KysrKysrKysrKysrKysrDQo+ID4gPiA+ICA0IGZpbGVzIGNoYW5nZWQsIDM5IGluc2VydGlvbnMo
KykNCj4gPiA+ID4NCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fbW9k
ZV9jb25maWcuYw0KPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fbW9kZV9jb25maWcuYw0K
PiA+ID4gPiBpbmRleA0KPiA+ID4gPg0KPiA+ID4NCj4gPg0KPiA4NjQyYTJmYjI1YTkwMTE2ZGFi
OTc1YWEwYWI2YjUxZGVhZmI0Yjk2Li5kYmJlZjIwNzUzZjgzNGE4NWFlOWRlZA0KPiA+ID4gPiA3
NDhjZmYyYjNmMGU4NTA0MyAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2Ry
bV9tb2RlX2NvbmZpZy5jDQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fbW9kZV9j
b25maWcuYw0KPiA+ID4gPiBAQCAtMzg4LDYgKzM4OCwxMyBAQCBzdGF0aWMgaW50DQo+ID4gPiA+
IGRybV9tb2RlX2NyZWF0ZV9zdGFuZGFyZF9wcm9wZXJ0aWVzKHN0cnVjdCBkcm1fZGV2aWNlICpk
ZXYpDQo+ID4gPiA+ICAJCXJldHVybiAtRU5PTUVNOw0KPiA+ID4gPiAgCWRldi0+bW9kZV9jb25m
aWcuc2l6ZV9oaW50c19wcm9wZXJ0eSA9IHByb3A7DQo+ID4gPiA+DQo+ID4gPiA+ICsJcHJvcCA9
IGRybV9wcm9wZXJ0eV9jcmVhdGUoZGV2LA0KPiA+ID4gPiArCQkJCSAgIERSTV9NT0RFX1BST1Bf
SU1NVVRBQkxFIHwNCj4gPiA+ID4gRFJNX01PREVfUFJPUF9CTE9CLA0KPiA+ID4gPiArCQkJCSAg
ICJJTl9GT1JNQVRTX0FTWU5DIiwgMCk7DQo+ID4gPiA+ICsJaWYgKCFwcm9wKQ0KPiA+ID4gPiAr
CQlyZXR1cm4gLUVOT01FTTsNCj4gPiA+ID4gKwlkZXYtPm1vZGVfY29uZmlnLmFzeW5jX21vZGlm
aWVyc19wcm9wZXJ0eSA9IHByb3A7DQo+ID4gPiA+ICsNCj4gPiA+ID4gIAlyZXR1cm4gMDsNCj4g
PiA+ID4gIH0NCj4gPiA+ID4NCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9k
cm1fcGxhbmUuYw0KPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcGxhbmUuYyBpbmRleA0K
PiA+ID4gPg0KPiA+ID4NCj4gPg0KPiBhMjhiMjJmZGQ3YTQxYWNhODJkMDk3ZDQyMjM3ODUxZGE5
YTBhNzliLi40MTY4MThlNTRjY2ZmY2YzZDNhYWRhMjcNCj4gPiA+ID4gMjNlOTZjZThjY2YxZGQ5
NyAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9wbGFuZS5jDQo+ID4g
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fcGxhbmUuYw0KPiA+ID4gPiBAQCAtMTQxLDYg
KzE0MSwxMiBAQA0KPiA+ID4gPiAgICogICAgIHZhcmlvdXMgYnVncyBpbiB0aGlzIGFyZWEgd2l0
aCBpbmNvbnNpc3RlbmNpZXMgYmV0d2VlbiB0aGUgY2FwYWJpbGl0eQ0KPiA+ID4gPiAgICogICAg
IGZsYWcgYW5kIHBlci1wbGFuZSBwcm9wZXJ0aWVzLg0KPiA+ID4gPiAgICoNCj4gPiA+ID4gKyAq
IElOX0ZPUk1BVFNfQVNZTkM6DQo+ID4gPiA+ICsgKiAgICAgQmxvYiBwcm9wZXJ0eSB3aGljaCBj
b250YWlucyB0aGUgc2V0IG9mIGJ1ZmZlciBmb3JtYXQgYW5kIG1vZGlmaWVyDQo+ID4gPiA+ICsg
KiAgICAgcGFpcnMgc3VwcG9ydGVkIGJ5IHRoaXMgcGxhbmUgZm9yIGFzeW5jaHJvbm91cyBmbGlw
cy4gVGhlIGJsb2IgaXMgYQ0KPiA+IHN0cnVjdA0KPiA+ID4gPiArICogICAgIGRybV9mb3JtYXRf
bW9kaWZpZXJfYmxvYi4gV2l0aG91dCB0aGlzIHByb3BlcnR5IHRoZSBwbGFuZQ0KPiA+IGRvZXNu
J3QNCj4gPiA+ID4gKyAqICAgICBzdXBwb3J0IGJ1ZmZlcnMgd2l0aCBtb2RpZmllcnMuIFVzZXJz
cGFjZSBjYW5ub3QgY2hhbmdlIHRoaXMNCj4gPiBwcm9wZXJ0eS4NCj4gPiA+ID4gKyAqDQo+ID4g
Pg0KPiA+ID4gSSB0aGluayB3ZSBzaG91bGQgbWVudGlvbiBoZXJlIHRoYXQgdGhlIGFic2VuY2Ug
b2YgdGhpcyBwcm9wZXJ0eQ0KPiA+ID4gd291bGQgbWVhbiB0aGF0IGFsbCBmb3JtYXQgbW9kaWZp
ZXIgcGFpciBpbiBJTl9GT1JNQVRTIGFyZSBhbHNvDQo+ID4gPiBzdXBwb3J0ZWQgZm9yDQo+ID4g
YXN5bmMgZmxpcHMuDQo+ID4gPiBUaGF0IHdheSB0aGUgdUFQSSByZW1haW5zIGJhY2t3YXJkIGNv
bXBhdGlibGUuDQo+ID4gPg0KPiA+IEkgdGhpbmsgdGhpcyBpcyBjbGVhciB3aXRoIHRoZSBhYm92
ZSBkb2N1bWVudGF0aW9uLiBBbnl3YXkgd2lsbA0KPiA+IHJlZnJhbWUgdG8gYmUgbW9yZSBzcGVj
aWZpYy4NCj4gPg0KPiANCj4gVGhlIGxpbmUgIldpdGhvdXQgdGhpcyBwcm9wZXJ0eSB0aGUgcGxh
bmUgZG9lc24ndCAgc3VwcG9ydCBidWZmZXJzIHdpdGgNCj4gbW9kaWZpZXJzICIgaW5kaWNhdGVz
IHRoYXQgaWYgdGhpcyBwcm9wZXJ0eSBpcyBub3QgcHJlc2VudCB0aGVuIG5vIG1vZGlmaWVycyBh
cmUNCj4gc3VwcG9ydGVkIGZvciBhc3luYy4NCj4gVGhpcyBjYW4ndCBiZSB0cnVlIGJlY2F1c2Ug
YWxsIGRyaXZlcnMgY3VycmVudGx5IGRvIG5vdCBoYXZlIHRoaXMgcHJvcGVydHkgYnV0DQo+IHRo
ZXkgc3VyZWx5IHN1cHBvcnQgbW9kaWZpZXJzIGluIGFzeW5jIGZsaXAuIE1vcmUgb24gdGhpcyBi
ZWxvdy4NCj4gDQpBcyBkb2N1bWVudGVkIHRoaXMgYW4gb3B0aW9uYWwgcHJvcGVydHkgd2l0aCB0
aGlzIHByb3BlcnR5IHVzZXIgd2lsbCBoYXZlIHRoZQ0KZmVhc2liaWxpdHkgdG8gY2hlY2sgZm9y
IHN1cHBvcnRlZCBvbmUgYW5kIGlmIG5vdCBtaWdodCBlbmQgdXAgd2l0aCBmYWlsdXJlIGNvbW1p
dA0KZHVlIHRvIHVuc3VwcG9ydGVkIGZvcm1hdHMuDQpXaWxsIHJlZnJhbWUgdGhpcyB0byBhdm9p
ZCBjb25mdXNpb24hDQoNCj4gPiA+ID4gICAqIFNJWkVfSElOVFM6DQo+ID4gPiA+ICAgKiAgICAg
QmxvYiBwcm9wZXJ0eSB3aGljaCBjb250YWlucyB0aGUgc2V0IG9mIHJlY29tbWVuZGVkIHBsYW5l
IHNpemUNCj4gPiA+ID4gICAqICAgICB3aGljaCBjYW4gdXNlZCBmb3Igc2ltcGxlICJjdXJzb3Ig
bGlrZSIgdXNlIGNhc2VzIChlZy4gbm8gc2NhbGluZykuDQo+ID4gPiA+IGRpZmYgLS1naXQgYS9p
bmNsdWRlL2RybS9kcm1fbW9kZV9jb25maWcuaA0KPiA+ID4gPiBiL2luY2x1ZGUvZHJtL2RybV9t
b2RlX2NvbmZpZy5oIGluZGV4DQo+ID4gPiA+DQo+ID4gPg0KPiA+DQo+IDI3MTc2NWUyZTlmMmRh
NjJhYWYwZDI1ODgyOGVmNDE5NmUxNDgyMmUuLjBjMTE2ZDZkZmQyNzcyNjJiMWE0YzBmMA0KPiA+
ID4gPiA5N2ZjZTJkNzE5ZjQzODQ0IDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9pbmNsdWRlL2RybS9k
cm1fbW9kZV9jb25maWcuaA0KPiA+ID4gPiArKysgYi9pbmNsdWRlL2RybS9kcm1fbW9kZV9jb25m
aWcuaA0KPiA+ID4gPiBAQCAtOTM2LDYgKzkzNiwxMiBAQCBzdHJ1Y3QgZHJtX21vZGVfY29uZmln
IHsNCj4gPiA+ID4gIAkgKi8NCj4gPiA+ID4gIAlzdHJ1Y3QgZHJtX3Byb3BlcnR5ICptb2RpZmll
cnNfcHJvcGVydHk7DQo+ID4gPiA+DQo+ID4gPiA+ICsJLyoqDQo+ID4gPiA+ICsJICogQGFzeW5j
X21vZGlmaWVyc19wcm9wZXJ0eTogUGxhbmUgcHJvcGVydHkgdG8gbGlzdCBzdXBwb3J0DQo+ID4g
PiA+IG1vZGlmaWVyL2Zvcm1hdA0KPiA+ID4gPiArCSAqIGNvbWJpbmF0aW9uIGZvciBhc3luY2hy
b25vdXMgZmxpcHMuDQo+ID4gPiA+ICsJICovDQo+ID4gPiA+ICsJc3RydWN0IGRybV9wcm9wZXJ0
eSAqYXN5bmNfbW9kaWZpZXJzX3Byb3BlcnR5Ow0KPiA+ID4gPiArDQo+ID4gPiA+ICAJLyoqDQo+
ID4gPiA+ICAJICogQHNpemVfaGludHNfcHJvcGVydHk6IFBsYW5lIFNJWkVfSElOVFMgcHJvcGVy
dHkuDQo+ID4gPiA+ICAJICovDQo+ID4gPiA+IGRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1f
cGxhbmUuaCBiL2luY2x1ZGUvZHJtL2RybV9wbGFuZS5oDQo+ID4gPiA+IGluZGV4DQo+ID4gPiA+
DQo+ID4gPg0KPiA+DQo+IGRkNzE4YzYyYWMzMWJmMTY2MDZmM2VlOWYwMjVhNWIxNzFjZDFlNjcu
LmU4NzQ5ZTZmYzNiYzBhY2ZjNzNiYmQ4NDANCj4gPiA+ID4gMWY4NWMzMTI2ZTg2NzU5IDEwMDY0
NA0KPiA+ID4gPiAtLS0gYS9pbmNsdWRlL2RybS9kcm1fcGxhbmUuaA0KPiA+ID4gPiArKysgYi9p
bmNsdWRlL2RybS9kcm1fcGxhbmUuaA0KPiA+ID4gPiBAQCAtNTQ5LDYgKzU0OSwyNiBAQCBzdHJ1
Y3QgZHJtX3BsYW5lX2Z1bmNzIHsNCj4gPiA+ID4gIAkgKi8NCj4gPiA+ID4gIAlib29sICgqZm9y
bWF0X21vZF9zdXBwb3J0ZWQpKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLCB1aW50MzJfdA0KPiA+
ID4gPiBmb3JtYXQsDQo+ID4gPiA+ICAJCQkJICAgICB1aW50NjRfdCBtb2RpZmllcik7DQo+ID4g
PiA+ICsJLyoqDQo+ID4gPiA+ICsJICogQGZvcm1hdF9tb2Rfc3VwcG9ydGVkX2FzeW5jOg0KPiA+
ID4gPiArCSAqDQo+ID4gPiA+ICsJICogVGhpcyBvcHRpb25hbCBob29rIGlzIHVzZWQgZm9yIHRo
ZSBEUk0gdG8gZGV0ZXJtaW5lIGlmIGZvcg0KPiA+ID4gPiArCSAqIGFzeWNocm9ub3VzIGZsaXAg
dGhlIGdpdmVuIGZvcm1hdC9tb2RpZmllciBjb21iaW5hdGlvbiBpcyB2YWxpZCBmb3INCj4gPiA+
ID4gKwkgKiB0aGUgcGxhbmUuIFRoaXMgYWxsb3dzIHRoZSBEUk0gdG8gZ2VuZXJhdGUgdGhlIGNv
cnJlY3QgZm9ybWF0DQo+ID4gPiA+ICsJICogYml0bWFzayAod2hpY2ggZm9ybWF0cyBhcHBseSB0
byB3aGljaCBtb2RpZmllciksIGFuZCB0byB2YWxpZGF0ZQ0KPiA+ID4gPiArCSAqIG1vZGlmaWVy
cyBhdCBhdG9taWNfY2hlY2sgdGltZS4NCj4gPiA+ID4gKwkgKg0KPiA+ID4gPiArCSAqIElmIG5v
dCBwcmVzZW50LCB0aGVuIGFueSBtb2RpZmllciBpbiB0aGUgcGxhbmUncyBtb2RpZmllcg0KPiA+
ID4gPiArCSAqIGxpc3QgaXMgYWxsb3dlZCB3aXRoIGFueSBvZiB0aGUgcGxhbmUncyBmb3JtYXRz
Lg0KPiA+ID4gPiArCSAqDQo+ID4gPg0KPiA+ID4gV2Ugc3RpbGwgaGF2ZSB0byBob25vciB0aGUg
SU5fRk9STUFUUyBwcm9wZXJ0eSwgcmlnaHQ/DQo+ID4gU29ycnkgZGlkbuKAmXQgZ2V0IGl0LCB0
aGlzIG5ldyBwcm9wZXJ0eSBpcyBpbiBwYXJhbGxlbCB0byB0aGUgZXhpc3RpbmcNCj4gSU5fRk9S
TUFUUy4NCj4gPiBXZSBoYXZlIHJldGFpbmVkIGl0IGFzIGlzIGFuZCBhZGRlZCBuZXcgcHJvcGVy
dHkgZm9yIGFzeW5jLg0KPiA+IEFueXdheSB3aWxsIHJlZnJhbWUgdG8gYmUgbW9yZSBjbGVhci4N
Cj4gPg0KPiANCj4gLi4uDQo+IA0KPiA+ID4NCj4gPiA+ID4gKwkgKiBSZXR1cm5zOg0KPiA+ID4g
PiArCSAqDQo+ID4gPiA+ICsJICogVHJ1ZSBpZiB0aGUgZ2l2ZW4gbW9kaWZpZXIgaXMgdmFsaWQg
Zm9yIHRoYXQgZm9ybWF0IG9uIHRoZSBwbGFuZS4NCj4gPiA+ID4gKwkgKiBGYWxzZSBvdGhlcndp
c2UuDQo+ID4gPiA+ICsJICovDQo+ID4gPiA+ICsJYm9vbCAoKmZvcm1hdF9tb2Rfc3VwcG9ydGVk
X2FzeW5jKShzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSwNCj4gPiA+ID4gKwkJCQkJICAgdWludDMy
X3QgZm9ybWF0LCB1aW50NjRfdCBtb2RpZmllcik7DQo+ID4gPiA+ICsNCj4gPiA+ID4gIH07DQo+
ID4gPiA+DQo+ID4gPg0KPiA+ID4gU29tZSB0aG91Z2h0cyBhZnRlciBnb2luZyB0aHJvdWdoIGFs
bCB0aGUgcGF0Y2hlcy4gVGhlcmUgaXMgYSBiaXQgb2YNCj4gPiA+IGFtYmlndWl0eSBob3cgYSBk
cml2ZXIgY2FuIGhhbmRsZSB0aGUgSU5fRk9STUFUU19BU1lOQyBwcm9wZXJ0eSBpbg0KPiA+ID4g
Y2FzZXMgd2hlcmUgdGhlcmUgYXJlIG5vIHNwZWNpZmljIHJlc3RyaWN0aW9ucyBpbiBmb3JtYXQg
bW9kaWZpZXINCj4gPiA+IHBhaXJzIGZvcg0KPiA+IGFzeW5jLg0KPiA+ID4NCj4gPiA+IFR3byBh
cHByb2FjaGVzIGhlcmUuDQo+ID4gPg0KPiA+ID4gMS4gVGhlIGRyaXZlciBzaG91bGQgbm90IGV4
cG9zZSB0aGUgcHJvcGVydHkgYXQgYWxsLg0KPiA+ID4gMi4gVGhlIGRyaXZlciBzaG91bGQgZmls
bCB1cCBJTl9GT1JNQVRTX0FTWU5DIGJsb2IgdGhhdCBpbmRpY2F0ZXMNCj4gPiA+IHRoYXQgYWxs
IGZvcm1hdCBtb2RpZmllciBwYWlyIHN1cHBvcnRlZCBmb3Igc3luYyBhcmUgYWxzbyBzdXBwb3J0
ZWQNCj4gPiA+IGZvciBhc3luYw0KPiA+IGZsaXBzLg0KPiA+ID4NCj4gPiA+IEFwcHJvYWNoIDEg
c2VlbXMgdG8gYmUgYmV0dGVyIGZvciBiYWNrd2FyZCBjb21wYXRpYmlsaXR5LiBJZiB3ZQ0KPiA+
ID4gZm9sbG93IGFwcHJvYWNoIDIsIHdlIGRvIG5vdCBuZWVkIHRvIGV4cG9zZSB0aGUgZnVuY3Rp
b24NCj4gPiA+IGNyZWF0ZV9pbl9mb3JtYXRzX2Jsb2IoKSBhbmQgaXQgY2FuIGJlIGhhbmRsZWQg
dGhyb3VnaCB0aGUNCj4gPiA+IGZvcm1hdF9tb2Rfc3VwcG9ydGVkX2FzeW5jKCkgZnVuY3Rpb24g
aW50ZXJuYWxseSBkdXJpbmcgcGxhbmUNCj4gPiBpbml0aWFsaXphdGlvbi4NCj4gPiA+DQo+ID4g
PiBFaXRoZXIgd2F5IHRoZSBkb2N1bWVudGF0aW9uIHNob3VsZCBiZSBtYWRlIGNsZWFyIHdoYXQg
d2UgZXhwZWN0DQo+ID4gPiBmcm9tIHRoZSB1c2Vyc3BhY2UuDQo+ID4gPg0KPiA+IERvY3VtZW50
YXRpb24gYWRkZWQgc2F5cyB0aGlzIGlzIGFuIG9wdGlvbmFsIHByb3BlcnR5IHRvIGNvbnZleSB0
aGUNCj4gPiB1c2VyIHdpdGggdGhlIGxpc3QgZm9yIGZvcm1hdHMvbW9kaWZpZXJzIHN1cHBvcnRl
ZCBieSB0aGUgcGxhbmUgZm9yIGFzeW5jIGZsaXBzLg0KPiA+IENvbXBhdGliaWxpdHkgd2lzZSB0
aGlzIGlzIGEgbmV3IHByb3BlcnR5IHdoaWNoIGlzIGluIHBhcmFsbGVsIHRvDQo+ID4gSU5fRk9S
TUFUUyBhbmQgaGVuY2Ugc2hvdWxkIG5vdCBicmVhayBhbnl0aGluZy4NCj4gPiBBbnl3YXkgd2ls
bCByZWZyYW1lIGFuZCBiZSBtb3JlIHNwZWNpZmljLg0KPiA+DQo+IA0KPiBZZXMsIHRoZXkgYXJl
IGRpZmZlcmVudCBwcm9wZXJ0aWVzIGhvd2V2ZXIgd2UgaGF2ZSB0byBjbGVhcmx5IGRlZmluZSB0
aGUgcG9saWN5DQo+IGZvciB0aGUgcHJvcGVydHkuIEZvciBleGFtcGxlLCB3aXRoIHRoZSBjdXJy
ZW50IGltcGxlbWVudGF0aW9uIHRoZSAgcG9saWN5DQo+IHNob3VsZCBiZSBzb21ldGhpbmcgbGlr
ZSB0aGlzLg0KPiANCj4gMS4gVXNlcnNwYWNlIGNoZWNrcyBpZiBJTl9GT1JNQVRTX0FTWU5DIHBy
b3BlcnR5IGlzIHByZXNlbnQuIElmIHByZXNlbnQgY2hlY2sNCj4gaWYgY3VycmVudCBmb3JtYXQg
YW5kIG1vZGlmaWVyIHBhaXIgaXMgc3VwcG9ydGVkLg0KPiAyLiBJZiBwcm9wZXJ0eSB0aGUgSU5f
Rk9STUFUU19BU1lOQyBpcyAqbm90KiBwcmVzZW50LCB3ZSBoYXZlIHR3byBvcHRpb25zDQo+IA0K
PiAgICAgICAgICAgICAgICAgICBhLiBUaGUgdXNlciBzcGFjZSBkZWNpZGVzIHRoYXQgbm8gbW9k
aWZpZXIgaXMgc3VwcG9ydGVkLiBXZQ0KPiAqY2Fubm90KiBnbyBieSB0aGlzIGJlY2F1c2UgSU5f
Rk9STUFUX0FTWU5DIGlzIGFuIG9wdGlvbmFsIHByb3BlcnR5DQo+IAkgICAgICAgIGFuZCBtYW55
IGRyaXZlcnMgbWlnaHQgbm90IGltcGxlbWVudCBpdC4gQmVjYXVzZSBhbGwgdGhlIGZvcm1hdA0K
PiBtb2RpZmllciBwYWlyIHN1cHBvcnRlZCBmb3Igc3luYyBhcmUgYWxzbyBzdXBwb3J0ZWQgZm9y
IGFzeW5jLg0KPiANCj4gICAgICAgICAgICAgICAgICAgYi4gVGhlIHVzZXIgc3BhY2Ugd2lsbCBj
aGVjayBpZiB0aGUgZnJhbWUgbW9kaWZpZXIgcGFpciBpcyBwcmVzZW50IGluDQo+IElOX0ZPUk1B
VF9TWU5DLiBUaGlzIHNob3VsZCBiZSBleHBsaWNpdGx5IGNhbGxlZCBvdXQgaW4gdGhlIGRvY3Vt
ZW50YXRpb24uDQo+IA0KT2sgc3VyZSB3aWxsIGJlIG1vcmUgc3BlY2lmaWMuDQoNCj4gSWYgbm8g
Zm9ybWF0IG1vZGlmaWVyIHBhaXIgaXMgZm91bmQgYWZ0ZXIgdGhlc2UgdHdvIHN0ZXBzIHRoZW4g
d2UgY2FuIGNvbmNsdWRlDQo+IHRoYXQgbm8gbW9kaWZpZXIgaXMgc3VwcG9ydGVkLg0KPiANCj4g
SXQgaXMgaW1wb3J0YW50IHRvIGNhbGwgaXQgb3V0IGJlY2F1c2UgaWYgeW91IHNlZSB0aGUgY29k
ZSBwcm9wb3NlZCBieSBOYXZlZW4gaW4NCj4gY29tbWVudHMgaW4gdGhlIE1SWzFdDQo+IA0KPiBp
ZiAobWV0YV9vbnNjcmVlbl9uYXRpdmVfaXNfdGVhcmluZ19lbmFibGVkIChvbnNjcmVlbl9uYXRp
dmUpKQ0KPiAgIGNydGNfbW9kcyA9IG1ldGFfa21zX3BsYW5lX2dldF90ZWFyaW5nX21vZGlmaWVy
c19mb3JfZm9ybWF0IChwbGFuZSwNCj4gZm9ybWF0KTsgZWxzZQ0KPiAgIGNydGNfbW9kcyA9IG1l
dGFfa21zX3BsYW5lX2dldF9tb2RpZmllcnNfZm9yX2Zvcm1hdCAocGxhbmUsIGZvcm1hdCk7DQo+
IA0KPiBUaGlzIG1ha2VzIHRoZSBwcm9wZXJ0eSBJTl9GT1JNQVRfQVNZTkMgbm9uLW9wdGlvbmFs
LiBUaGF0IGlzIHRoZSBhYnNlbmNlDQo+IG9mIHRoZSBwcm9wZXJ0eSB3aWxsIGxlYWQgdG8gbm8g
Zm9ybWF0IG1vZGlmaWVyIHBhaXIgc3VwcG9ydGVkIGV2ZW4gdGhvdWdoIHRoZQ0KPiBkcml2ZXIg
ZGlkIG5vdCBpbnRlbmQgaXQgdGhhdCB3YXkuDQo+IA0KVGhhdCBjYW5ub3QgYmUgdGhlIGNhc2Us
IGFzIHRoaXMgaXMgYW4gb3B0aW9uYWwgYW5kIG5vdCB0aGF0IGFsbCB0aGUgZHJpdmVycyB3aWxs
DQpoYXZlIHRoaXMgcHJvcGVydHkuIFRoaXMgaXMgYSBnb29kIHRvIGhhdmUgdG8gYXZvaWQgZmFp
bHVyZSBkdWUgdG8gdW5zdXBwb3J0ZWQNCmZvcm1hdC9tb2RpZmllci4NCg0KVGhhbmtzIGFuZCBS
ZWdhcmRzLA0KQXJ1biBSIE11cnRoeQ0KLS0tLS0tLS0tLS0tLS0tLS0tLQ0K
