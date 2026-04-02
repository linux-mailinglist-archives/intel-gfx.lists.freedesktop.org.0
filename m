Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yI5nD5IIzmkwkgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 08:11:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CEED3844C1
	for <lists+intel-gfx@lfdr.de>; Thu, 02 Apr 2026 08:11:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD73310E07D;
	Thu,  2 Apr 2026 06:11:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TuuPgLi1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8098810E07D;
 Thu,  2 Apr 2026 06:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775110286; x=1806646286;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=p0hYG4mZILKeFOycDruxed3C1DL3PdrvfA4rMAEn5j8=;
 b=TuuPgLi11aQ072kVBnpT8OHgUo9S4+VsGruI8/EhmV8PyI2owxt90SZm
 kcj7dL5AtEQJbtT7GOHQ25Lmon5Zu4iLHcGSNln/6EubfjrsRZEv6CvJe
 P6PAYZqy8dq7x/NCEBK4/F8LloX4CIz/xHE3HknCe+f4HVxn6apoVZIv5
 OhzqxT/qE4T+amzSivuDPqYKwI2MyfA2nsroBq3A8nzRbbp2S4WG+R6Ws
 /WHIXTNLsxcMH0jbv5EM5g39Tmee/QQKBhsxPrX017VnOzs71+v7iokzK
 KIbE8cbThfsAVlbUYqWgVxqICNd6jy11j/7XYlrFyf+hfLb6TmrD/V3we A==;
X-CSE-ConnectionGUID: C7033dPNTGa0VOcCLGuEfA==
X-CSE-MsgGUID: Um0VtgczR6GITaRXRNh+3g==
X-IronPort-AV: E=McAfee;i="6800,10657,11746"; a="98775572"
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="98775572"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 23:11:26 -0700
X-CSE-ConnectionGUID: lFNIwpPWQzqTCLkxBDIIrg==
X-CSE-MsgGUID: mOvCMbXvRa6SvOlfUmNEAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,155,1770624000"; d="scan'208";a="249944887"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2026 23:11:26 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 23:11:25 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 1 Apr 2026 23:11:25 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.43) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 1 Apr 2026 23:11:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BrlWl4rg9VrJAS6mwvgHBmMDkfr//IPXPyBTruWb7WxHWvlkbw0ELUUGBGkzU9hqZs1yvboxiklocAja3jzrocsxP3Y78/NXVu7iWkBCuIj3yXFMc8FcDzs3OfdTP0AnGiqSYlYkyrwwqmLW/QTwDrR/cUiiaI6FD/MXcWcKjCjlab4tD7y6fb/uLn9uEc5eWEiFgYxT9RYYBhMWKL4mCkY3VwVpwCZbf0Z8RkQgJvU4kyWBB9fvIpmjlxMyv35R1s2f8Y6rxf4Redt4JvTOA/75eu0czEohQVgclQKq4+icqg+2fxje28ccdXxl3STOdo3SEOIIx2nxGgZy/avsVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p0hYG4mZILKeFOycDruxed3C1DL3PdrvfA4rMAEn5j8=;
 b=U19EPPbTatSOQGxsKVLEv/J2TFzLCUx4h76VYHI/LxOeXmewFJErCMr8LcvQfh/SVoHi9en6nyot8sPFHcl5qbDhEgJo/WtXFFJqr3YieDFpxxPhG4puD2JqiIYbB7ahRg9H5IBsm2/mYGO5afbrl7tq6qy9qpFlqWP2KOGtQlKodD/V9SYIMmF9239zuHkTvlQChsLUDCFT6gR1cHfKLh1TqAfZcmLLHm5wlK+8mGCNWtKBbKZ4oRcG21Z0/7jAwUZjDa+J7xaOImswW42OueQoCvcxJSGzRKepyLRcsJRmoGk32ZvhIScmnhZcut7OnR3m58L+PuSdt7LIMgDpQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS3PR11MB9671.namprd11.prod.outlook.com (2603:10b6:8:38e::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.18; Thu, 2 Apr 2026 06:11:21 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9769.016; Thu, 2 Apr 2026
 06:11:21 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "stable@vger.kernel.org" <stable@vger.kernel.org>
Subject: Re: [PATCH] drm/i915/psr: Do not use pipe_src as borders for SU area
Thread-Topic: [PATCH] drm/i915/psr: Do not use pipe_src as borders for SU area
Thread-Index: AQHcvd9loYFyjPRiJUaz72xc456ue7XJ6zGAgAFoHAA=
Date: Thu, 2 Apr 2026 06:11:21 +0000
Message-ID: <62b0c55b6e6a3b2fc43bec50435913e6e9f40177.camel@intel.com>
References: <20260327114553.195285-1-jouni.hogander@intel.com>
 <DS4PPF69154114F4690423A773CAF4F9122EF50A@DS4PPF69154114F.namprd11.prod.outlook.com>
In-Reply-To: <DS4PPF69154114F4690423A773CAF4F9122EF50A@DS4PPF69154114F.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS3PR11MB9671:EE_
x-ms-office365-filtering-correlation-id: 8ba7b50d-4142-4148-96ca-08de907ea966
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|10070799003|366016|1800799024|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: JzUORAx+DWMniGL5zW9ctLXCTbMZYqQTMHvYiis44FyqN7rR5Jan+pjyOpy30HEaGZfiSjQJgD6M9RbEm8v5M2zoGabvb/BQvxieXDQgt7zf1iZ2kc1CDgPrrsD32s44XIMgnBIfg7OF/SWwx12L/UhOgo8Pf6XRlVy8U7u54zOWSAJPPl0q+TZVJ1Cs4C83JjxgasH+2fcRfq4iWT4FspemN1+TtM/ht5AfVq8QzpnOrFAC18lVNe3ppicszEt7vmWLIuIsuiJsP7kHqzdpZ0GpeR4+3vSWZs2QSCI5ltQ5VwJRvUcIcrwJXjCKwGHaSbicK832pDu1ptcTZCq+j6hvQ2P8CKvC+gwI3Y8aWP7z9IxYRDHR/HUfX+AiYroSwTB4KDSo3wcBv+7WBRpyg1d4/fhp1zpoGn/Jx6SLQEx72S2vgvFdxw44PXs46jA2eiuNmGwglAHBxl2+K1ies3DX0MJvToxN2gv1MH4CctVgPgAyAOnmJZUrUUTEr3IP4VU0NBXJs5g5ONTATJo1uJ3bBV/NFpIRgQRVnzoAJPsngpVH9+sszlM9lwc9dLBsKTzOsHtweKCnXgOFbgVLLjKFnl9QpEeZ/lpSGOvwqPPjYwLooDQui4wDdms3ESR4jX5ZQ68ZK6sP0AIDugdCFvDBs899aOExVsMDsmsH+BSJkFHxvGFWcSx7nILT1b+sszRRja/bWnRCjTqUMcqxMHYE9OcbFSC72brwBtOZWD4lFes8aIniXf+afgKfUK2dkgTb7xOfbsVhNkQ7XjsCrftArQADCWHoDtVNZl9gNnY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(10070799003)(366016)(1800799024)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T0tSR21Id0tCbkk3YitSQjBheERna1l1TDlzc2JXZFBIKzYxOVdNc1NDeWtL?=
 =?utf-8?B?MktUQXRmaE82TU9BcVZGNlI5a3JmMEhRQzV5ekFGZEZlT21rU1FvN3VuUExl?=
 =?utf-8?B?dXZPeDRNbnU5QnUwc09teHR3TWxGenEwd25qYzhPYkxRR25lUWdTYjRmRTRl?=
 =?utf-8?B?NEZkRlpQelJiVEVyeFVYNmRLMWR4a0VSOWpIeHlvbXJJNVFLVWpYcmhtclJU?=
 =?utf-8?B?bE1aekQ5OEtDVERiTDhSVFNNc1A3MVRLUWF4MDFaVDBuVGdPZ2hrYktVUUht?=
 =?utf-8?B?ZGUvcHRrV2puVmdFNWt6RmZYNW16ZmR0Z3MzcmR6UmtmL1VKMXgzcmFhOWVD?=
 =?utf-8?B?ZzZjVHZjakkzdkpiVzNLaFV0VGNZSkdZZyt1b3phcjBPb0Rhb00ya2xFZ1Z6?=
 =?utf-8?B?c05vWUh3NWJMcnVLSlhhWnNOcjNObHpGam1KMHRYRjhqdFRSSnMxV0w4b3J3?=
 =?utf-8?B?am4yMUx4NjBnUE1zVXNGemR1djJIeE12QVhpSFJwMXk4eDgwRlR3Ymk5ODE1?=
 =?utf-8?B?eUpROG9pc3hxNUhEaWhiQnV4Z2ZaVHlPRGZGUHg0eG5mTGJ2Q0daN25qdFBG?=
 =?utf-8?B?cHRGQXhpOUdiZ2hyTVlyc3lkUCswQS9QdFJTT1p2REZNQWI5Y1F1ZXM3aXhW?=
 =?utf-8?B?ekdGY1hCczV5a2o0YmhGYitxeW8vRUVWbVJjdkxoMGd4QitDc090L3k0RDNh?=
 =?utf-8?B?R0kwb2RuRUhFemdzaG5EYzJBWXdlNU81dnZQZDFPUW4vZTBwTEIzdnVHalgr?=
 =?utf-8?B?MWl2TitCaGsvMmdTb001cDk2OHZqYnNTck5nWk1uV2JtQWZLcGJuLzhnZ0ZF?=
 =?utf-8?B?S3BwZWZHdmRCZGdPOTlvUzhtK0lIbUxybDJadTUvNVlUYURDbmdTdG1jdEdI?=
 =?utf-8?B?NkVjejU4SHJ3cS9DdHpTd3NwcDBXS0pKeFd0eTNLcm0wSlZHNC9GUkQ5VnZV?=
 =?utf-8?B?OXFUcmY5T1JlY1ZsWlR2djhlN2hHcmVvYTB5OU52N1d1S3lqbFNicTdWc1lM?=
 =?utf-8?B?dm54enlLVUNxOXBuZ29HSTVjK0FFU1pXMTZqNmVBWTZJdUZ6YjMvdlFpZGFP?=
 =?utf-8?B?YzFOc3VyVXl5N2tvUlZHUE9VZkFsRmgram9oZmtzYm4rUVFxKzdBWEU3M0Fk?=
 =?utf-8?B?dDRKL08ydDlkRXh2ekl3Umcza25ucnZQR2JFOFVyd0NqdFpVWUJGRkxHYnBk?=
 =?utf-8?B?Sm5xQmUxeUcwQUJ1VE0yeFNRdlZaUEtzMHljRFliTUhsUzEwcHN2cEo1ajZS?=
 =?utf-8?B?L1d5SkRYZ2Ezblkvc2tabktVWExGVnJpS0JtTE41cUFqL1hRZ2F6eEdDUGpU?=
 =?utf-8?B?ait3NHhBWFV0cjBvcm93TmJxTmxoaWNnbGEwNlVqbStrRndEZTZveHpTdkpw?=
 =?utf-8?B?cjJjTEdRbDFtc09ZcXpraUNVeHVBbGdqSzlpb3QzUXlkcG1VRDB1cVl3Q2Zw?=
 =?utf-8?B?SXZwRUNSaFlnejZYbENHVVpTaU9kQ3Y4bGNDaDJMZ2NCSndpa1d5Z1JsNlho?=
 =?utf-8?B?aHA0VWxCZTBySkFiazNJR0ZvSTR5WGJMbEFRV2JWa1FJVW5oazJvR0NnM3Fv?=
 =?utf-8?B?QXd0aWNsdHZORmNvSHRYRmIxbStoM0Yzd2JGNUYwaTFtb1BlVHpQMlRJUVRj?=
 =?utf-8?B?RUxtV1dXSmJ6N3lERTkvNEdvVklOTVpxdHRoK29RZnVHWUoySGZkV2pZWHRZ?=
 =?utf-8?B?amJQclpCcVFFUW83Q2RranNPQWppWHZaM2JPR2xsd2RPVlQvYU5NWk5IdnJJ?=
 =?utf-8?B?V3F3ejcrdEVURkRwempSeDlFQllHaS9JN0djbjl5SVllazE3VXlRNThIaXZl?=
 =?utf-8?B?TkUzRVVocm00MGxJQmlWaHhTVWcxdjJScWh6d1poZUE0TlU2ai9UQW95L0pP?=
 =?utf-8?B?WWRPcXZvTC9CTUo4dHRKRnpXaDV1cHF0TytTTzVMcGxsaEY1S3JOSHhnS1RG?=
 =?utf-8?B?ZHVjVFVoNUtPOUlWNnZjUitYeXcwMjZKdHRseXl6K0pVQ1UzMlA1dnZ1Rm84?=
 =?utf-8?B?VWJIbmlxYjhLc1JYenV2UnJoUmRaTU9yaGNNTFI5STlEREVqanRVRVZiaHN4?=
 =?utf-8?B?OEdJZjhQQW80MmJDYnY4ZnB5N09PR0xmNjJ5WHgxakN0NDVETjZnb25tdS83?=
 =?utf-8?B?MHptZWJaU2VKdTlvK040SS9HbkF6UWpGR3pTWGZJNjBqVENKYXNKRlBLM0hn?=
 =?utf-8?B?bUVwZm9ZQ0lSa015ZittYWVmWGR6ZXZwNmZXY2ZBSWI1UVBkNHRPZmJCM1pa?=
 =?utf-8?B?Q3IvZzZsc01aOWJVeGRTajdqSTBpVzhpbGZKSXRLYmgxNk5rY01vNFgzNVNw?=
 =?utf-8?B?QmVPaDBVL0VSVmpYRE9qcjdxY1VUTlhacEordFZaUnVuTXFJQlhkN1RIWFJG?=
 =?utf-8?Q?epq/esm53EePX8L/lhSw2jnoUoTaCDUv483+VBPi2UG+m?=
x-ms-exchange-antispam-messagedata-1: PN0VfSCbYEmxmpE8bM3kSXET0r9XwuzuT5c=
Content-Type: text/plain; charset="utf-8"
Content-ID: <F254F03981D1F24AB82F91080FDFE35E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: uNxcThE2rV7zo9otTlBugKZiH/ykQSnFPDlPfloANCpuFV/P7FSSTPt9mqU55SFSlztKEcQDLBDQBRIA5KcmGVTuoyNLPZ1/iSIzw5HujOWNZMReUZZJhHKBwlbW2hT/s9Ct6Tax24sVxHaUpoc4SbLfTh0h5dmly7gsQOUl7iFBwdJffHJcHBqhDAjix370kxxqvXM3fHQSI3j8QewlPP/1NiSMEEIZa+OwS4rx+DJtMAN9qD4oIJiQnXtHqwaBmX3SJVW+FYDTIJHx1+t2rmhIZfcXtj25pUsnaV5IEXU5h/onBGztP2sMrmlbpmN4GiGAkHdkvSj4qqqxEXcGtw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ba7b50d-4142-4148-96ca-08de907ea966
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2026 06:11:21.4973 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CrM6y8ny4aiKz4agRp2BnxDIny9B/aN/Ia++zlcQ8Odye8hWt2SB/eFOxcyePYU3QyYKibH3rnDlfbRkh3FHzmz4tZmbK5tKy2ULzXtyLDQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS3PR11MB9671
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8CEED3844C1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gV2VkLCAyMDI2LTA0LTAxIGF0IDA4OjQyICswMDAwLCBLYWhvbGEsIE1pa2Egd3JvdGU6DQo+
ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBJbnRlbC1nZnggPGludGVs
LWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmDQo+ID4gT2YgSm91
bmkgSMO2Z2FuZGVyDQo+ID4gU2VudDogRnJpZGF5LCAyNyBNYXJjaCAyMDI2IDEzLjQ2DQo+ID4g
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiA+IENjOiBIb2dhbmRlciwgSm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVs
LmNvbT47DQo+ID4gc3RhYmxlQHZnZXIua2VybmVsLm9yZw0KPiA+IFN1YmplY3Q6IFtQQVRDSF0g
ZHJtL2k5MTUvcHNyOiBEbyBub3QgdXNlIHBpcGVfc3JjIGFzIGJvcmRlcnMgZm9yDQo+ID4gU1Ug
YXJlYQ0KPiA+IA0KPiA+IFRoaXMgZmFyIHVzaW5nIGNydGNfc3RhdGUtPnBpcGVfc3JjIGFzIGJv
cmRlcnMgZm9yIFNlbGVjdGl2ZSBVcGRhdGUNCj4gPiBhcmVhIGhhdmVuJ3QgY2F1c2VkIHZpc2li
bGUgcHJvYmxlbXMgYXMNCj4gPiBkcm1fcmVjdF93aWR0aChjcnRjX3N0YXRlLT5waXBlX3NyYykg
PT0gY3J0Y19zdGF0ZS0NCj4gPiA+aHcuYWRqdXN0ZWRfbW9kZS5jcnRjX2hkaXNwbGF5IGFuZA0K
PiA+IGRybV9yZWN0X2hlaWdodChjcnRjX3N0YXRlLT5waXBlX3NyYykgPT0gY3J0Y19zdGF0ZS0N
Cj4gPiA+aHcuYWRqdXN0ZWRfbW9kZS5jcnRjX3ZkaXNwbGF5IHdoZW4gcGlwZSBzY2FsaW5nIGlz
IG5vdCB1c2VkLiBPbg0KPiA+IHRoZQ0KPiA+IG90aGVyIGhhbmQgdXNpbmcgcGlwZSBzY2FsaW5n
IGlzIGZvcmNpbmcgZnVsbCBmcmFtZSB1cGRhdGVzIGFuZCBhbGwNCj4gPiB0aGUgU2VsZWN0aXZl
IFVwZGF0ZSBhcmVhIGNhbGN1bGF0aW9ucyBhcmUgc2tpcHBlZC4gTm93IHRoaXMNCj4gPiBpbXBy
b3BlciB1c2FnZSBvZiBjcnRjX3N0YXRlLT5waXBlX3NyYyBpcyBjYXVzaW5nIGZvbGxvd2luZw0K
PiA+IHdhcm5pbmdzOg0KPiA+IA0KPiA+IDw0PiBbNzc3MS45NzgxNjZdIHhlIDAwMDA6MDA6MDIu
MDogW2RybV0gZHJtX1dBUk5fT05fT05DRShzdV9saW5lcw0KPiA+ICUgdmRzY19jZmctPnNsaWNl
X2hlaWdodCkNCj4gPiANCj4gPiBhZnRlciBXQVJOX09OX09OQ0Ugd2FzIGFkZGVkIGJ5IGNvbW1p
dDoNCj4gPiANCj4gPiAiZHJtL2k5MTUvZHNjOiBBZGQgaGVscGVyIGZvciB3cml0aW5nIERTQyBT
ZWxlY3RpdmUgVXBkYXRlIEVUDQo+ID4gcGFyYW1ldGVycyINCj4gPiANCj4gPiBUaGVzZSB3YXJu
aW5ncyBhcmUgc2VlbiB3aGVuIERTQyBhbmQgcGlwZSBzY2FsaW5nIGFyZSBlbmFibGVkDQo+ID4g
c2ltdWx0YW5lb3VzbHkuIFRoaXMgaXMgYmVjYXVzZSBvbiBmdWxsIGZyYW1lIHVwZGF0ZSBTVSBh
cmVhDQo+ID4gaXMgaW1wcm9wZXJseSBzZXQgYXMgcGlwZV9zcmMgd2hpY2ggaXMgbm90IGFsaWdu
ZWQgd2l0aCBEU0Mgc2xpY2UNCj4gPiBoZWlnaHQuDQo+ID4gDQo+ID4gRml4IHRoZXNlIGJ5IGNy
ZWF0aW5nIGxvY2FsIHJlY3RhbmdsZSB1c2luZyBjcnRjX3N0YXRlLQ0KPiA+ID5ody5hZGp1c3Rl
ZF9tb2RlLmNydGNfaGRpc3BsYXkgYW5kIGNydGNfc3RhdGUtDQo+ID4gPiBody5hZGp1c3RlZF9t
b2RlLmNydGNfdmRpc3BsYXkuIFVzZSB0aGlzIGxvY2FsIHJlY3RhbmdsZSBhcw0KPiA+ID4gYm9y
ZGVycyBmb3IgU1UgYXJlYS4NCj4gPiANCj4gPiBGaXhlczogZDY3NzRiOGMzYzU4ICgiZHJtL2k5
MTU6IEVuc3VyZSBkYW1hZ2UgY2xpcCBhcmVhIGlzIHdpdGhpbg0KPiA+IHBpcGUgYXJlYSIpDQo+
ID4gQ2M6IDxzdGFibGVAdmdlci5rZXJuZWwub3JnPiAjIHY2LjArDQo+IA0KPiBXaXRoIEphbmkn
cyBuaXQgZml4ZWQgdGhpcyBsb29rcyBvayB0byBtZS4NCj4gDQo+IFJldmlld2VkLWJ5OiBNaWth
IEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQpUaGFuayB5b3UgTWlrYSBhbmQgSmFu
aSBmb3IgdGhlIHJldmlldy4gVGhpcyBpcyBub3cgcHVzaGVkIHRvIGRybS0NCmludGVsLW5leHQg
d2l0aCB0aGUgY2hhbmdlIHN1Z2dlc3RlZCBieSBKYW5pLg0KDQpCUiwNCkpvdW5pIEjDtmdhbmRl
cg0KDQo+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5k
ZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYyB8IDI3ICsrKysrKysrKysrKysrLS0tLS0tDQo+ID4gLS0tLQ0KPiA+IMKg
MSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDExIGRlbGV0aW9ucygtKQ0KPiA+IA0K
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5k
ZXggMmYxYjQ4Y2Q4ZWZkLi4zM2IyYWUxNzI3NGEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBAQCAtMjY4OSw5ICsyNjg5LDkgQEAgc3Rh
dGljIHUzMg0KPiA+IHBzcjJfcGlwZV9zcmNzel9lYXJseV90cHRfY2FsYyhzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiANCj4gPiDCoHN0YXRpYyB2b2lkIGNsaXBfYXJl
YV91cGRhdGUoc3RydWN0IGRybV9yZWN0ICpvdmVybGFwX2RhbWFnZV9hcmVhLA0KPiA+IMKgCQkJ
wqDCoMKgwqAgc3RydWN0IGRybV9yZWN0ICpkYW1hZ2VfYXJlYSwNCj4gPiAtCQkJwqDCoMKgwqAg
c3RydWN0IGRybV9yZWN0ICpwaXBlX3NyYykNCj4gPiArCQkJwqDCoMKgwqAgc3RydWN0IGRybV9y
ZWN0ICpkaXNwbGF5X2FyZWEpDQo+ID4gwqB7DQo+ID4gLQlpZiAoIWRybV9yZWN0X2ludGVyc2Vj
dChkYW1hZ2VfYXJlYSwgcGlwZV9zcmMpKQ0KPiA+ICsJaWYgKCFkcm1fcmVjdF9pbnRlcnNlY3Qo
ZGFtYWdlX2FyZWEsIGRpc3BsYXlfYXJlYSkpDQo+ID4gwqAJCXJldHVybjsNCj4gPiANCj4gPiDC
oAlpZiAob3ZlcmxhcF9kYW1hZ2VfYXJlYS0+eTEgPT0gLTEpIHsNCj4gPiBAQCAtMjc0Miw2ICsy
NzQyLDcgQEAgc3RhdGljIGJvb2wNCj4gPiBpbnRlbF9wc3IyX3NlbF9mZXRjaF9waXBlX2FsaWdu
bWVudChzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0wqAgc3RhdGljIHZvaWQN
Cj4gPiBpbnRlbF9wc3IyX3NlbF9mZXRjaF9ldF9hbGlnbm1lbnQoc3RydWN0IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUsDQo+ID4gwqAJCQkJwqAgc3RydWN0IGludGVsX2NydGMgKmNydGMsDQo+
ID4gKwkJCQnCoCBzdHJ1Y3QgZHJtX3JlY3QgKmRpc3BsYXlfYXJlYSwNCj4gPiDCoAkJCQnCoCBi
b29sICpjdXJzb3JfaW5fc3VfYXJlYSkNCj4gPiDCoHsNCj4gPiDCoAlzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9DQo+ID4gaW50ZWxfYXRvbWljX2dldF9uZXdfY3J0Y19zdGF0
ZShzdGF0ZSwgY3J0Yyk7IEBAIC0yNzY5LDcgKzI3NzAsNyBAQA0KPiA+IGludGVsX3BzcjJfc2Vs
X2ZldGNoX2V0X2FsaWdubWVudChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4g
PiDCoAkJCWNvbnRpbnVlOw0KPiA+IA0KPiA+IMKgCQljbGlwX2FyZWFfdXBkYXRlKCZjcnRjX3N0
YXRlLT5wc3IyX3N1X2FyZWEsDQo+ID4gJm5ld19wbGFuZV9zdGF0ZS0+dWFwaS5kc3QsDQo+ID4g
LQkJCQkgJmNydGNfc3RhdGUtPnBpcGVfc3JjKTsNCj4gPiArCQkJCSBkaXNwbGF5X2FyZWEpOw0K
PiA+IMKgCQkqY3Vyc29yX2luX3N1X2FyZWEgPSB0cnVlOw0KPiA+IMKgCX0NCj4gPiDCoH0NCj4g
PiBAQCAtMjg2Niw2ICsyODY3LDkgQEAgaW50IGludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZShz
dHJ1Y3QNCj4gPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+IMKgCXN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0NCj4gPiBpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRj
X3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gPiDCoAlzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKm5l
d19wbGFuZV9zdGF0ZSwNCj4gPiAqb2xkX3BsYW5lX3N0YXRlOw0KPiA+IMKgCXN0cnVjdCBpbnRl
bF9wbGFuZSAqcGxhbmU7DQo+ID4gKwlzdHJ1Y3QgZHJtX3JlY3QgZGlzcGxheV9hcmVhID0geyAu
eDEgPSAwLCAueTEgPSAwLA0KPiA+ICsJCS54MiA9IGNydGNfc3RhdGUtPmh3LmFkanVzdGVkX21v
ZGUuY3J0Y19oZGlzcGxheSwNCj4gPiArCQkueTIgPSBjcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9t
b2RlLmNydGNfdmRpc3BsYXl9Ow0KPiA+IMKgCWJvb2wgZnVsbF91cGRhdGUgPSBmYWxzZSwgc3Vf
YXJlYV9jaGFuZ2VkOw0KPiA+IMKgCWludCBpLCByZXQ7DQo+ID4gDQo+ID4gQEAgLTI4NzksNyAr
Mjg4Myw3IEBAIGludCBpbnRlbF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoc3RydWN0DQo+ID4gaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiANCj4gPiDCoAljcnRjX3N0YXRlLT5wc3IyX3N1
X2FyZWEueDEgPSAwOw0KPiA+IMKgCWNydGNfc3RhdGUtPnBzcjJfc3VfYXJlYS55MSA9IC0xOw0K
PiA+IC0JY3J0Y19zdGF0ZS0+cHNyMl9zdV9hcmVhLngyID0gZHJtX3JlY3Rfd2lkdGgoJmNydGNf
c3RhdGUtDQo+ID4gPnBpcGVfc3JjKTsNCj4gPiArCWNydGNfc3RhdGUtPnBzcjJfc3VfYXJlYS54
MiA9DQo+ID4gZHJtX3JlY3Rfd2lkdGgoJmRpc3BsYXlfYXJlYSk7DQo+ID4gwqAJY3J0Y19zdGF0
ZS0+cHNyMl9zdV9hcmVhLnkyID0gLTE7DQo+ID4gDQo+ID4gwqAJLyoNCj4gPiBAQCAtMjkxNywx
NCArMjkyMSwxNCBAQCBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdA0KPiA+
IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gwqAJCQkJZGFtYWdlZF9hcmVhLnkxID0g
b2xkX3BsYW5lX3N0YXRlLQ0KPiA+ID51YXBpLmRzdC55MTsNCj4gPiDCoAkJCQlkYW1hZ2VkX2Fy
ZWEueTIgPSBvbGRfcGxhbmVfc3RhdGUtDQo+ID4gPnVhcGkuZHN0LnkyOw0KPiA+IMKgCQkJCWNs
aXBfYXJlYV91cGRhdGUoJmNydGNfc3RhdGUtDQo+ID4gPnBzcjJfc3VfYXJlYSwgJmRhbWFnZWRf
YXJlYSwNCj4gPiAtCQkJCQkJICZjcnRjX3N0YXRlLQ0KPiA+ID5waXBlX3NyYyk7DQo+ID4gKwkJ
CQkJCSAmZGlzcGxheV9hcmVhKTsNCj4gPiDCoAkJCX0NCj4gPiANCj4gPiDCoAkJCWlmIChuZXdf
cGxhbmVfc3RhdGUtPnVhcGkudmlzaWJsZSkgew0KPiA+IMKgCQkJCWRhbWFnZWRfYXJlYS55MSA9
IG5ld19wbGFuZV9zdGF0ZS0NCj4gPiA+dWFwaS5kc3QueTE7DQo+ID4gwqAJCQkJZGFtYWdlZF9h
cmVhLnkyID0gbmV3X3BsYW5lX3N0YXRlLQ0KPiA+ID51YXBpLmRzdC55MjsNCj4gPiDCoAkJCQlj
bGlwX2FyZWFfdXBkYXRlKCZjcnRjX3N0YXRlLQ0KPiA+ID5wc3IyX3N1X2FyZWEsICZkYW1hZ2Vk
X2FyZWEsDQo+ID4gLQkJCQkJCSAmY3J0Y19zdGF0ZS0NCj4gPiA+cGlwZV9zcmMpOw0KPiA+ICsJ
CQkJCQkgJmRpc3BsYXlfYXJlYSk7DQo+ID4gwqAJCQl9DQo+ID4gwqAJCQljb250aW51ZTsNCj4g
PiDCoAkJfSBlbHNlIGlmIChuZXdfcGxhbmVfc3RhdGUtPnVhcGkuYWxwaGEgIT0NCj4gPiBvbGRf
cGxhbmVfc3RhdGUtPnVhcGkuYWxwaGEpIHsgQEAgLTI5MzIsNyArMjkzNiw3IEBAIGludA0KPiA+
IGludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSwNCj4gPiDCoAkJCWRhbWFnZWRfYXJlYS55MSA9IG5ld19wbGFuZV9zdGF0ZS0NCj4gPiA+
dWFwaS5kc3QueTE7DQo+ID4gwqAJCQlkYW1hZ2VkX2FyZWEueTIgPSBuZXdfcGxhbmVfc3RhdGUt
DQo+ID4gPnVhcGkuZHN0LnkyOw0KPiA+IMKgCQkJY2xpcF9hcmVhX3VwZGF0ZSgmY3J0Y19zdGF0
ZS0NCj4gPiA+cHNyMl9zdV9hcmVhLCAmZGFtYWdlZF9hcmVhLA0KPiA+IC0JCQkJCSAmY3J0Y19z
dGF0ZS0+cGlwZV9zcmMpOw0KPiA+ICsJCQkJCSAmZGlzcGxheV9hcmVhKTsNCj4gPiDCoAkJCWNv
bnRpbnVlOw0KPiA+IMKgCQl9DQo+ID4gDQo+ID4gQEAgLTI5NDgsNyArMjk1Miw3IEBAIGludCBp
bnRlbF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoc3RydWN0DQo+ID4gaW50ZWxfYXRvbWljX3N0YXRl
ICpzdGF0ZSwNCj4gPiDCoAkJZGFtYWdlZF9hcmVhLngxICs9IG5ld19wbGFuZV9zdGF0ZS0+dWFw
aS5kc3QueDEgLQ0KPiA+IHNyYy54MTsNCj4gPiDCoAkJZGFtYWdlZF9hcmVhLngyICs9IG5ld19w
bGFuZV9zdGF0ZS0+dWFwaS5kc3QueDEgLQ0KPiA+IHNyYy54MTsNCj4gPiANCj4gPiAtCQljbGlw
X2FyZWFfdXBkYXRlKCZjcnRjX3N0YXRlLT5wc3IyX3N1X2FyZWEsDQo+ID4gJmRhbWFnZWRfYXJl
YSwgJmNydGNfc3RhdGUtPnBpcGVfc3JjKTsNCj4gPiArCQljbGlwX2FyZWFfdXBkYXRlKCZjcnRj
X3N0YXRlLT5wc3IyX3N1X2FyZWEsDQo+ID4gJmRhbWFnZWRfYXJlYSwNCj4gPiArJmRpc3BsYXlf
YXJlYSk7DQo+ID4gwqAJfQ0KPiA+IA0KPiA+IMKgCS8qDQo+ID4gQEAgLTI5ODMsNyArMjk4Nyw4
IEBAIGludCBpbnRlbF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoc3RydWN0DQo+ID4gaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwNCj4gPiDCoAkJICogY3Vyc29yIGlzIGFkZGVkIGludG8gYWZmZWN0
ZWQgcGxhbmVzIGV2ZW4gd2hlbg0KPiA+IMKgCQkgKiBjdXJzb3IgaXMgbm90IHVwZGF0ZWQgYnkg
aXRzZWxmLg0KPiA+IMKgCQkgKi8NCj4gPiAtCQlpbnRlbF9wc3IyX3NlbF9mZXRjaF9ldF9hbGln
bm1lbnQoc3RhdGUsIGNydGMsDQo+ID4gJmN1cnNvcl9pbl9zdV9hcmVhKTsNCj4gPiArCQlpbnRl
bF9wc3IyX3NlbF9mZXRjaF9ldF9hbGlnbm1lbnQoc3RhdGUsIGNydGMsDQo+ID4gJmRpc3BsYXlf
YXJlYSwNCj4gPiArCQkJCQkJwqANCj4gPiAmY3Vyc29yX2luX3N1X2FyZWEpOw0KPiA+IA0KPiA+
IMKgCQlzdV9hcmVhX2NoYW5nZWQgPQ0KPiA+IGludGVsX3BzcjJfc2VsX2ZldGNoX3BpcGVfYWxp
Z25tZW50KGNydGNfc3RhdGUpOw0KPiA+IA0KPiA+IEBAIC0zMDU5LDggKzMwNjQsOCBAQCBpbnQg
aW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdA0KPiA+IGludGVsX2F0b21pY19zdGF0
ZSAqc3RhdGUsDQo+ID4gDQo+ID4gwqBza2lwX3NlbF9mZXRjaF9zZXRfbG9vcDoNCj4gPiDCoAlp
ZiAoZnVsbF91cGRhdGUpDQo+ID4gLQkJY2xpcF9hcmVhX3VwZGF0ZSgmY3J0Y19zdGF0ZS0+cHNy
Ml9zdV9hcmVhLA0KPiA+ICZjcnRjX3N0YXRlLT5waXBlX3NyYywNCj4gPiAtCQkJCSAmY3J0Y19z
dGF0ZS0+cGlwZV9zcmMpOw0KPiA+ICsJCWNsaXBfYXJlYV91cGRhdGUoJmNydGNfc3RhdGUtPnBz
cjJfc3VfYXJlYSwNCj4gPiAmZGlzcGxheV9hcmVhLA0KPiA+ICsJCQkJICZkaXNwbGF5X2FyZWEp
Ow0KPiA+IA0KPiA+IMKgCXBzcjJfbWFuX3Rya19jdGxfY2FsYyhjcnRjX3N0YXRlLCBmdWxsX3Vw
ZGF0ZSk7DQo+ID4gwqAJY3J0Y19zdGF0ZS0+cGlwZV9zcmNzel9lYXJseV90cHQgPQ0KPiA+IC0t
DQo+ID4gMi40My4wDQo+IA0KDQo=
