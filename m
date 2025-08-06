Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C66FEB1C674
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 14:56:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 622E410E765;
	Wed,  6 Aug 2025 12:56:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WOG/HYwa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC9D510E3DC;
 Wed,  6 Aug 2025 12:56:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754484988; x=1786020988;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=b4KcbeOzr/oC159nMRvmG1dOE70+ZR1pcIQkTMOMKsk=;
 b=WOG/HYwaUwJn6g94xTA002cvM/K1Y9fXLqwQAR1dS1dHKD5tMslwtZ0d
 PE8Sp6sjOtQgU58Zisz9U6tQT4G/TNd0HoWa7iNpvZhDXIno+KkuFw6TP
 0QxZEXZwrRiYJZ/sLELqieQK4B9KTxej1zO38oPuq8a6yQnN7Sz8U4Qjp
 krSUAAQ4ekzUdGqnJ4oQ/v70P8V0MVP4khwihzfN7uUbiWMXO+BkE3NbJ
 bs9a24BHp9t11G1lidyHLDSqSXujRAKKcdLmy6VRqlHvsX9+s8OjSZ5Pt
 fHh0Er5jpJ55jP157eHz9aAHaTE/LbqcgitCvJMYtuJnC3Kb8pbTNTtTe A==;
X-CSE-ConnectionGUID: 0r3oRsUUTaiMTTe1ByTTMQ==
X-CSE-MsgGUID: bKEzVTiSQ+iNJxmlhsKm5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="56010415"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="56010415"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 05:56:27 -0700
X-CSE-ConnectionGUID: 4OkdkRdlRQK1vDb0MhS1tA==
X-CSE-MsgGUID: GR5tLTWITymTzcxHZQKvhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="168941837"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 05:56:27 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 05:56:26 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 6 Aug 2025 05:56:26 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.71)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 05:56:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KFV/HggJVrwKvki/GZBEF89tbWJZykapDruVtK+yQMnlfqd2PltdUC4e7ruh6p2qQAkNW3kSR8dMTHbcqR5KBn7mJ1K8IpdpQ/sc7/uT/hkMR5YPIZsQytoVocMZ7FlgDgBRvrBvft2T08uP5oy8kOQL0S7ePNtFdO9RK/My0KzCoC1Rg4+IODruljdZ7NKTx0h+sBUGLraC/HvsmB0sXHtrzLColnoiWn26t7IDFsQ8wJ1bXRqUA9of4txyGHom+EJFTJUy2BgwMYzGfOi06C63nACcH/8OpqNdVJ5GiBtGv5NE5JpBFL5RaEOMkdY5u9/pzW70SJ0pgWhelWzehA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b4KcbeOzr/oC159nMRvmG1dOE70+ZR1pcIQkTMOMKsk=;
 b=x97Sgdbacsemm3xBVZLOOMnSmnVmF3TMHYP2yYlvrQZVL1poCiVTFdDIuYY4A6Wy4/UXAfCHATC43oXcCgMawhygpr2iDIX2O7uonMWgp33YoF5K7bpgQb9Fzlx0ygCNOQWZMT7622TOCQlhKG3sXXgA0CyLjO+zhCpOyDztodc+bopSaj0OokSUAmFNx5+KzRr0xYeXinSO4x79aaCp9cmCcWQRXicdWlHOOlO2WaCIlpai7t34tw3+OG0kAy1DNMljFd2J5EIRg65k5ak2s0W+aCElPoUZfvDWNLh1bYUUH+Jp/fh6BrCuhNPwILpllT7vwVcreheRCP3yy7uG5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by SA0PR11MB4606.namprd11.prod.outlook.com
 (2603:10b6:806:71::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.13; Wed, 6 Aug
 2025 12:56:24 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::a67b:4a39:4af2:43d8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::a67b:4a39:4af2:43d8%8]) with mapi id 15.20.9009.013; Wed, 6 Aug 2025
 12:56:24 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 07/19] drm/i915/tc: Move getting the power domain before
 reading DFLEX registers
Thread-Topic: [PATCH 07/19] drm/i915/tc: Move getting the power domain before
 reading DFLEX registers
Thread-Index: AQHcBdvYa/+PXSoFNkqiL9eHL8BuYbRVlzPA
Date: Wed, 6 Aug 2025 12:56:24 +0000
Message-ID: <DS4PPF69154114FF5E5102F0EF667C5C363EF2DA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250805073700.642107-1-imre.deak@intel.com>
 <20250805073700.642107-8-imre.deak@intel.com>
In-Reply-To: <20250805073700.642107-8-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|SA0PR11MB4606:EE_
x-ms-office365-filtering-correlation-id: 742eccff-71f1-42c9-58b8-08ddd4e8a61c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?eklaZW1aMzJmaG5zeFFqM291Mm55cW04NVcyMWVLNUFPUFozYXo4N0J2eXU4?=
 =?utf-8?B?MmhoQmM2VHhJQUN1NTVKWDlJQlI1YXJJWUN5VVU1QzZqTnFtZ2dhb0dWYmsr?=
 =?utf-8?B?RVl2emkyR0hCSWFPT1ZubDcxN1VnWlUyVTZnWGZjS0ZKMTJhK2lKUHB1UVk3?=
 =?utf-8?B?d3JPRG1oQWsza2l2ekVDc1ZFN0hGMWpPWlJkOVpJSzhKc1QxYWwwK0IzZE5J?=
 =?utf-8?B?Vk0yV1Vuc05qMU9pUnd2cXZROGJaWmJkUExLeXZzMEVIc2kyNjE5YnVKbGw1?=
 =?utf-8?B?c0N2ZTAxUkNoeCtMeCtmcUxkcjVjVVloZW5McStjL0VHNHhNU2Fmb2ptV0ky?=
 =?utf-8?B?UUlaekpBWm5ndVc2emhWS2ZOUndrTnRmcjdSWDh4SnBxY2hHMURIUDNTeEVK?=
 =?utf-8?B?TDhxTnZQOXNvZ2dKN3Zwblc2dTRzZ1JzZElYUm5IWXRDck90cXc0M1dXNmpD?=
 =?utf-8?B?UE5oazdvbVRNNFJaZWNRM01CMTNDR2EzVzA2ZWJIR3JZTWlzRW1IRmZKbnJ0?=
 =?utf-8?B?M3BLVlpXbkJMNW42emw5YkR6UExuOXBybjJWaS9uZU1SMnliVjBrUThoOVZT?=
 =?utf-8?B?bUQ5aDJIS0xZdkgvalZmOUdkNGh5eG9GT3RFNjdocE8zMWo2MlZaVVBza2xh?=
 =?utf-8?B?MjltdTRuemx0a0lDbXJFMzlVTnZzaTZXMURZKytjUmxCN21iNUU3cnJrUTg0?=
 =?utf-8?B?RVdpL2VlZlpmZFV1ek5KSEtVLzFqcGZGNlAxWmlzajdqMUZaRHQrSkhtK1I1?=
 =?utf-8?B?aVNCWVdWK0dNNWRTUE41WGdWSnNnSWFqS0tXQldlSXVCZXR6TWNqaGtoZ3BL?=
 =?utf-8?B?VldCWUVxNEVqbGtzUEZjb0JRUjBFRXQwSFlyK09aTkN6ek1SQ3hhZVlYVHFE?=
 =?utf-8?B?KzJFa1MxWGRZS1BPQmVxaGpXZU56ZHBmUE5vYTZ1Vi9ZeWJMckJmTVY2NlNN?=
 =?utf-8?B?SjRtMEdLZUZDUVVKL2paMU12bmpheXM2Z1ZlQ1VHQ0JLWEdhMEUyRzVSUFgv?=
 =?utf-8?B?Vnd5MVRnN1FENmdlQlBjRFowOGEvS0FvZDMzeGpzNWhDY2sraTVuMTBmU2Ev?=
 =?utf-8?B?REtyMEdwdTBjSWJxb2l6MVkxNWZKRFViK3V6aEVLbnRzeVZPcWQvU3F0OCty?=
 =?utf-8?B?RWZJbHphNFBQeGt1WW5JZWdaSFpBMlZ5QjRzWk5tbTVBbk5jVkxkVE8wNnI3?=
 =?utf-8?B?M0FsTnc3ZE84NFBPVnFoV1RpVUNHUzBaWG9zb29HcWVORlcyV1FGTkQwcW1u?=
 =?utf-8?B?TjZsWDc4ZzdQUnJxeUJBOElURDZmSWRIUENlMGYwOXNJYktnbzlHd2o4TVly?=
 =?utf-8?B?TGl4L0tVaXJQWWhzVUV2aHpKQUhkZkE0QnV5QlUweTVGUlBROFVPM0s1QmVQ?=
 =?utf-8?B?eUZaRURML1A4U0Z3UURpam1STTBtS1hsRlVPMHNtQXhqVXFQMGxqMDJWUlFY?=
 =?utf-8?B?T3BJOXFWZUw4Vmc2UU1hcWJqbkcwVXVtWVNZTEJSV0kzVTRPaERJTXRjd2Nl?=
 =?utf-8?B?cEV2TS9rTEZaTzdLZHpzcTU0RHZXTjYycGVhTVBSbjBXYzlZL3BxS0NVdkxm?=
 =?utf-8?B?ZHlLM3RBNkNCUjJReGxWRnlqUFFKK3hzQXUzcnJMTWFneVhSRjVMQVNYWFNz?=
 =?utf-8?B?dEJ0UUNTOVJFd29tbzhEMnkxc0swdUhwRVNYbEF3MWFQc1JCelJBSzRtTXJ6?=
 =?utf-8?B?OEdPMlhBeSt2ZzFMM2haTEVIckNlZ0RBSm1hYmlkWks4NDd6dUQ4SzYvVzJB?=
 =?utf-8?B?ZWM1VllqZG54bU9rRmhxZ20rYmdYeUxVSVdVSzdneFNTVXdFUjFnNzQwaXlF?=
 =?utf-8?B?dnFjZjFtZ3NRem5jbEhkTk5sZTA2d1d3WDNpRlJSRnJoVG5lNERKN2k2d0RF?=
 =?utf-8?B?QUx5bHJJb1k5YWw4dDZmSG5FcTBQdUFibHhHb1V5WlVwbjVQb2FKTEh6bm9i?=
 =?utf-8?B?Z1pHaEpleTRKZ1RJQ29zeTdGK0piRUVmQzZiRVJ2TlRBd1Fza0FVaW82Qk5V?=
 =?utf-8?B?aEhIVDdJU2tnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SVREVUVMTGFOaUlNMnBQbGF0KzRoYTBEVFhabVV3ZWhsREw0UDhxVlJjTWND?=
 =?utf-8?B?M3M3L255dHRKVEcxWnhsNmpGYWtRYnUyanlMUXRjN2hRRXd1V1UvTDZQNXdu?=
 =?utf-8?B?UG1PSU1zdUt4QWJsa290MTRjbUxLWmYzZEwrTThFUGF2YzY5L04vUGpCNVA5?=
 =?utf-8?B?c3pPL1JIMHloemNyUVMrZU8xNk1oaDEreE5Ma0c3QjZLdEF3M3BJVDRkTDdI?=
 =?utf-8?B?bDVMR3BaRUhMZzNyNGs2ZnErRlphYzNxSDRlYmRxZ040QkVyWDZSNlVhNFB3?=
 =?utf-8?B?L1pYWlcxY2dFdS9aczhXYnpGalJlbzZUVmtaTXF6K1M1SFFPSlZSY1N5elBZ?=
 =?utf-8?B?Szh3Z3JuRHlNWXVuQ05mcExIdHlPTzFQb2tTeUIvREJJL1pua3M3MmZDYWg5?=
 =?utf-8?B?Y2JFb25ZVWxMMmRwUStQSHJXMnp4R29WZXU5MXZ3dVhPdTk0MGYvRFdhczh4?=
 =?utf-8?B?YmZaWXV4OWdjUlZLR29vYkxWMzAwZVNOVmJtMXFGdUN6QThTamFxUWlyRlVx?=
 =?utf-8?B?Vk83b2QzbHlCV0loY21iSlBVZ2tsNW9XWUo1M0NJRGZEWU1FUXNQVnVZQmE2?=
 =?utf-8?B?SHQxOStZQnpmcHI4UDlZczY4ZWJlRGNOV0VqVGpNd2tvUjNvdkNPN2NKbHIw?=
 =?utf-8?B?cTlML3lHMFc2ekF2OG9mdXhqeXJVdUxOVXVDY3R6UjdpU3E4eHJSWHRsQ1Ar?=
 =?utf-8?B?ZWdjZnpyckEyYmVlUzVJa0cvZkhDZVhrSUlaRGF4TFJabENyZWl4bytGRlBW?=
 =?utf-8?B?WnVRM2Q0OVh3YWx6NTRsNnBhQVVXN0Q3aE1DRTROcytoTmxuYzFCMHk4MGtI?=
 =?utf-8?B?NnhHc1FLNDR0SG9WNVllVzFySVQwT2cxR3pibFh3MFQzTGFxcXdRdW9QT1Ja?=
 =?utf-8?B?d3VHNEdDMVZ1bEpidU9jaFp3Z3cycTRNYXlRRG9xWTcybTNWcHRHK0g2dUlW?=
 =?utf-8?B?djJsL25CaEZxYTV4S3pYaW5mUHBtem5IQXdMa3REaHY2WW4rV1Q4YmZOMDcw?=
 =?utf-8?B?OHNUUEJvWStjZkN3MVNhcE14MzBQQjgzUnNreHQ2NVg3NmQvZXR1TDZDZnhH?=
 =?utf-8?B?azZMYkRFQXhHS1NCT1VvdDVEd2huclR1K1F3NHBNZ3RwSlIwTUxibFQrbkdG?=
 =?utf-8?B?SHNRTmk5c2hDZUd6QnRVMzV6cEp3UmtLL2RQZmFQTURrWklxVFZUbWZiZFFi?=
 =?utf-8?B?S3lKK2luYWU3dXNHL1p6UDJjaEZsZ2NZUmFkSHA4dzllQU5VcVVXdTlXQWx4?=
 =?utf-8?B?QXh4dDlRR0tacjdnQUE3VmhucDk2Tlc5NzlKejNSNVdLQkFlbnhJMlhuRlk2?=
 =?utf-8?B?NGE3eU5iQlBQRThRSHhTSUkxbVdJaGhPTDBFSXdmNS9rSzVscjVPYkwxT0Mz?=
 =?utf-8?B?MERpa21IMjk1U1lVbTAyeWkyb2dQaTVROEVQWUVNdUd2YmwxSC8vQ3FlQ3p2?=
 =?utf-8?B?b01JUzFHVkthcHczdFEvOGs0Q1I2NXRDelQySFRrM1pYVUdwanMyU1dmMGR0?=
 =?utf-8?B?SUVUZUtzN2JrOFk0aWRyWFFzdkc2TjRNRnEraVNqQlFxcjRWWVYza2pLa0Nk?=
 =?utf-8?B?NUVNeE1hT3F5ZVpFcEZPOXc1THk3Y1U3YklMVlVWTUprRmhOZXpuTTU5TytM?=
 =?utf-8?B?ODM3ODI4UG5reWk0WTBXQjBtdWdJQjBvNFJxV2svdmZkREtqU3JHdXdETFhy?=
 =?utf-8?B?VURhcit1RndZTm9FbXJ0UzlyaERITFVlNTkxZDJKNHBrc2JqUG96WmdVMXhH?=
 =?utf-8?B?aUY5ZFVCOWxJT1grTnVvUGsrQ3lKUFptbmthL0ZTWHdpaTZvNmJyaHpmcW9y?=
 =?utf-8?B?dm5CaXRFeHh0Tk1HRTc5eEVMM1BnSXRaZ1RXVVpsY01jeVJXMkMrbFFqc0xs?=
 =?utf-8?B?SkNqRjUrMEhHY25CeTRWbzY3Z0NSaXlCZm5BWTgvTU1BMGJPaDdTV3JEZ3ho?=
 =?utf-8?B?WjFpaThPQ0p6ZDJRK2ZCbG5keERzQ0dKOG8rczlHLzJFVFBQREFKQnNBaDFK?=
 =?utf-8?B?cG04Q2g0Z2JhbGhTaGJZUGw1ckl6ckZLVWFJSWlQditUL2lZZ2RNRG9BZVRt?=
 =?utf-8?B?VkhQcFdkTDkxR0xJTStWRDlCZ24vSmRTVTB5MzhKZ0hicW52N21ZWjFpTVRq?=
 =?utf-8?Q?4rmeLOEXBrjWIuc26BmhOYaP6?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 742eccff-71f1-42c9-58b8-08ddd4e8a61c
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Aug 2025 12:56:24.0729 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lWy6maoF6qoLDf4ABwtpKVuwFXbqQildZPF0cL7QvWbxYts5tyDN+i0RBv2nxnnkBj0bv4a/I+kHZgFriLSMYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4606
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogVHVlc2RheSwgNSBBdWd1c3QgMjAyNSAxMC4zNw0KPiBUbzogaW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1Ympl
Y3Q6IFtQQVRDSCAwNy8xOV0gZHJtL2k5MTUvdGM6IE1vdmUgZ2V0dGluZyB0aGUgcG93ZXIgZG9t
YWluIGJlZm9yZSByZWFkaW5nIERGTEVYIHJlZ2lzdGVycw0KPiANCj4gTW92ZSBnZXR0aW5nIHRo
ZSByZXF1aXJlZCBkaXNwbGF5IHBvd2VyIGRvbWFpbiByaWdodCBiZWZvcmUgcmVhZGluZyB0aGUg
UE9SVF9UWF9ERkxFWERQU1AgYW5kIFBPUlRfVFhfREZMRVhQQTEgcmVnaXN0ZXJzLA0KPiBzaW1p
bGFybHkgdG8gaG93IHRoaXMgaXMgZG9uZSB3aGlsZSByZWFkaW5nIHRoZSBvdGhlciBUQ1NTX0RE
SV9TVEFUVVMgUEhZIHJlZ2lzdGVyLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxp
bXJlLmRlYWtAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fo
b2xhQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfdGMuYyB8IDE4ICsrKysrKysrLS0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDgg
aW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF90Yy5jDQo+IGluZGV4IGQ4OWMxNzRiY2I4MzYuLjRiZDgyN2MyMTg3ZjUg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gQEAgLTI2
OSw5ICsyNjksMTEgQEAgc3RhdGljIHUzMiBpbnRlbF90Y19wb3J0X2dldF9sYW5lX21hc2soc3Ry
dWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpICB7DQo+ICAJc3RydWN0IGludGVsX2Rp
c3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGRpZ19wb3J0KTsNCj4gIAlzdHJ1Y3Qg
aW50ZWxfdGNfcG9ydCAqdGMgPSB0b190Y19wb3J0KGRpZ19wb3J0KTsNCj4gKwlpbnRlbF93YWtl
cmVmX3Qgd2FrZXJlZjsNCj4gIAl1MzIgbGFuZV9tYXNrOw0KPiANCj4gLQlsYW5lX21hc2sgPSBp
bnRlbF9kZV9yZWFkKGRpc3BsYXksIFBPUlRfVFhfREZMRVhEUFNQKHRjLT5waHlfZmlhKSk7DQo+
ICsJd2l0aF9pbnRlbF9kaXNwbGF5X3Bvd2VyKGRpc3BsYXksIFBPV0VSX0RPTUFJTl9ESVNQTEFZ
X0NPUkUsIHdha2VyZWYpDQo+ICsJCWxhbmVfbWFzayA9IGludGVsX2RlX3JlYWQoZGlzcGxheSwg
UE9SVF9UWF9ERkxFWERQU1AodGMtPnBoeV9maWEpKTsNCj4gDQo+ICAJZHJtX1dBUk5fT04oZGlz
cGxheS0+ZHJtLCBsYW5lX21hc2sgPT0gMHhmZmZmZmZmZik7DQo+ICAJYXNzZXJ0X3RjX2NvbGRf
YmxvY2tlZCh0Yyk7DQo+IEBAIC0yODQsOSArMjg2LDExIEBAIHUzMiBpbnRlbF90Y19wb3J0X2dl
dF9waW5fYXNzaWdubWVudF9tYXNrKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0
KSAgew0KPiAgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxh
eShkaWdfcG9ydCk7DQo+ICAJc3RydWN0IGludGVsX3RjX3BvcnQgKnRjID0gdG9fdGNfcG9ydChk
aWdfcG9ydCk7DQo+ICsJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7DQo+ICAJdTMyIHBpbl9tYXNr
Ow0KPiANCj4gLQlwaW5fbWFzayA9IGludGVsX2RlX3JlYWQoZGlzcGxheSwgUE9SVF9UWF9ERkxF
WFBBMSh0Yy0+cGh5X2ZpYSkpOw0KPiArCXdpdGhfaW50ZWxfZGlzcGxheV9wb3dlcihkaXNwbGF5
LCBQT1dFUl9ET01BSU5fRElTUExBWV9DT1JFLCB3YWtlcmVmKQ0KPiArCQlwaW5fbWFzayA9IGlu
dGVsX2RlX3JlYWQoZGlzcGxheSwgUE9SVF9UWF9ERkxFWFBBMSh0Yy0+cGh5X2ZpYSkpOw0KPiAN
Cj4gIAlkcm1fV0FSTl9PTihkaXNwbGF5LT5kcm0sIHBpbl9tYXNrID09IDB4ZmZmZmZmZmYpOw0K
PiAgCWFzc2VydF90Y19jb2xkX2Jsb2NrZWQodGMpOw0KPiBAQCAtMzI0LDEyICszMjgsOSBAQCBz
dGF0aWMgaW50IGxubF90Y19wb3J0X2dldF9tYXhfbGFuZV9jb3VudChzdHJ1Y3QgaW50ZWxfZGln
aXRhbF9wb3J0ICpkaWdfcG9ydCkNCj4gDQo+ICBzdGF0aWMgaW50IG10bF90Y19wb3J0X2dldF9t
YXhfbGFuZV9jb3VudChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkgIHsNCj4g
LQlzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoZGlnX3Bv
cnQpOw0KPiAtCWludGVsX3dha2VyZWZfdCB3YWtlcmVmOw0KPiAgCXUzMiBwaW5fbWFzazsNCj4g
DQo+IC0Jd2l0aF9pbnRlbF9kaXNwbGF5X3Bvd2VyKGRpc3BsYXksIFBPV0VSX0RPTUFJTl9ESVNQ
TEFZX0NPUkUsIHdha2VyZWYpDQo+IC0JCXBpbl9tYXNrID0gaW50ZWxfdGNfcG9ydF9nZXRfcGlu
X2Fzc2lnbm1lbnRfbWFzayhkaWdfcG9ydCk7DQo+ICsJcGluX21hc2sgPSBpbnRlbF90Y19wb3J0
X2dldF9waW5fYXNzaWdubWVudF9tYXNrKGRpZ19wb3J0KTsNCj4gDQo+ICAJc3dpdGNoIChwaW5f
bWFzaykgew0KPiAgCWRlZmF1bHQ6DQo+IEBAIC0zNDUsMTIgKzM0Niw5IEBAIHN0YXRpYyBpbnQg
bXRsX3RjX3BvcnRfZ2V0X21heF9sYW5lX2NvdW50KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQg
KmRpZ19wb3J0KQ0KPiANCj4gIHN0YXRpYyBpbnQgaW50ZWxfdGNfcG9ydF9nZXRfbWF4X2xhbmVf
Y291bnQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpICB7DQo+IC0Jc3RydWN0
IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGRpZ19wb3J0KTsNCj4g
LQlpbnRlbF93YWtlcmVmX3Qgd2FrZXJlZjsNCj4gIAl1MzIgbGFuZV9tYXNrID0gMDsNCj4gDQo+
IC0Jd2l0aF9pbnRlbF9kaXNwbGF5X3Bvd2VyKGRpc3BsYXksIFBPV0VSX0RPTUFJTl9ESVNQTEFZ
X0NPUkUsIHdha2VyZWYpDQo+IC0JCWxhbmVfbWFzayA9IGludGVsX3RjX3BvcnRfZ2V0X2xhbmVf
bWFzayhkaWdfcG9ydCk7DQo+ICsJbGFuZV9tYXNrID0gaW50ZWxfdGNfcG9ydF9nZXRfbGFuZV9t
YXNrKGRpZ19wb3J0KTsNCj4gDQo+ICAJc3dpdGNoIChsYW5lX21hc2spIHsNCj4gIAlkZWZhdWx0
Og0KPiAtLQ0KPiAyLjQ5LjENCg0K
