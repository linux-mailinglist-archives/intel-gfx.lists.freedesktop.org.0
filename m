Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hfS6IbHAM2omFwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 11:56:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3169469F091
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jun 2026 11:56:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=YpgVVmdn;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12BE110EDB0;
	Thu, 18 Jun 2026 09:55:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20AE310ED60;
 Thu, 18 Jun 2026 09:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781776558; x=1813312558;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=vY7n2ZM5Du5csET9IBqwBQ37GAk2tij290cLQ6hTSHM=;
 b=YpgVVmdnEYHMR9InecxK3YK7HJgI8C+ceXViUpBJO0LViWr/OXLvCGtq
 gpWXp1ahgKctymXtmOkVzHrBty45NKHTq53fJ/XHznjxmr2QgOWVf9vJP
 IcU7RFGgKhM1eUM9DnO6YR7NLTWNg6SIzkwAnafSVd8jubCc3vqi7uogk
 yQUjgBh7yQffV9mmV+HHqPjFHgLRQ1IcfiFyjEWTxbfmT9ClHlI7U4ZU8
 v9KZQ+X1c2LDKQx/yvkhteG/mq3it15GPtuN6KEAzV/4LBcfvsw5QgrjX
 chpQIQN4b/OPYrKND1i4mSiwSPF2dDk2MswCJsAPt3YjBMTsOWB9WqQBs g==;
X-CSE-ConnectionGUID: v2PD4fAESCCzqox1/g9BhQ==
X-CSE-MsgGUID: KmaRkHquSTuExumrwtZn/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11820"; a="82502959"
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="82502959"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 02:55:57 -0700
X-CSE-ConnectionGUID: BU3ZqIZ+QCiDi/fYceyDZg==
X-CSE-MsgGUID: LHReKDhoRSS6hR/TSCeZog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,211,1774335600"; d="scan'208";a="250218079"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2026 02:55:56 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 02:55:55 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 18 Jun 2026 02:55:55 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.46)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 18 Jun 2026 02:55:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jj8OcLSyeULJpkIoWvCrWMF5+ALA2RWHrnApXHJE08RxLpkhxuXvvckFgqy8maCAkiVs/jN3CD+E/ID9RlvOYPv366Uiqhf9KNvwxhnGAo4HlLJQ64zOYEbt5ayqizE24AaA/t1tKvrxF4pJQ41Bdl0SmYjoQ7k6lKM7RTxzbqpVB/NdBvpbTQorFAkEUruDKBxW3VWv2gCr8+OdZFbAL4j9oNi4Txz13iWuzOILuO4lEOHc0pJIxyrZIsHZU5TXzqztDQs0naG4tZiyowo/f+rJ8OVUchLX7X6kMb0rGtH4YVzQvzJjDAJCQZRileY0WCKMJvGqbET98vdSeI36Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vY7n2ZM5Du5csET9IBqwBQ37GAk2tij290cLQ6hTSHM=;
 b=casJz2oqeW0ekQMEr3kVBPP5kdc3ONcdFrwbJTVoFPCzDpWIuPSvTlcbG5QF9Zk2invTfOsWpfvXRny1ALsYJlZZDRQWF+ldY9Moqmyw98nMgFKMHLZtLhFkF73wCg0onfWFMWY4mv1Szgd15wNacme/yHoO6EfQ+U3qLHu+xcKIiCRKNFZR4b1ibNra4yos3x4Fmm6k+yooeCuOz/AaKLxh3P3tZNfqf5nVqrm0hcNco9E0uw+h3sTDi5JsZH2S8+kTR8RYGLg3TdKDnuToLe8pgE7hG9mP4un1CS5BDfVp4Dsv4BgZ3egYK/QHSn3oMD8+YIGs5EP0/rAijnlexQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB5792.namprd11.prod.outlook.com (2603:10b6:a03:425::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.18; Thu, 18 Jun 2026 09:55:52 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.21.0139.009; Thu, 18 Jun 2026
 09:55:52 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Kahola, Mika"
 <mika.kahola@intel.com>
Subject: Re: [PATCH] drm/i915/psr: Force fastset on debugfs write for each
 connector supporting PSR
Thread-Topic: [PATCH] drm/i915/psr: Force fastset on debugfs write for each
 connector supporting PSR
Thread-Index: AQHc98pYIof2kQHsX0CPeQVl+0l2t7Y/xU6AgARcZ4A=
Date: Thu, 18 Jun 2026 09:55:52 +0000
Message-ID: <5afcbb9861db8cec1e7922e782e75a91c3de2670.camel@intel.com>
References: <20260609044149.274249-1-jouni.hogander@intel.com>
 <c9246940e0f15570906d3fd6f134c5ede55e9fe7@intel.com>
In-Reply-To: <c9246940e0f15570906d3fd6f134c5ede55e9fe7@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB5792:EE_
x-ms-office365-filtering-correlation-id: c7fa95a9-541f-4fe0-8f20-08decd1fc8a5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|23010399003|1800799024|10070799003|366016|4143699003|56012099006|3023799007|11063799006|38070700021|22082099003|18002099003;
x-microsoft-antispam-message-info: eDCtEwYim5UdczdE7DcHe4ivVXtp3itIavXdWvzKWKIniHLSLkYzyh3kUeF37wsWOwxoo4SVcSVRtFG/i4xVdYZ6kQhF3ZfIONWKt7TgVr09vjuAwOKaQh9Xl8Lza9whuox8ePuncYsqdTYxkpEBEEoiNdRBJC0Dj0fD/dCcU9YsQOHiGRP5z88sBbqenyG8nraI236y/SmisXStgTdj3fNaGiFBL6XNfH4eNjEsI+i2+RLLGvAhv0sqDeLk7R6SvUhFD/XejxEdaDOWn3N5ksPsWxGHC48/BrwAA0EmGuwppBM+6vW7Ct4g1oYpgs3snsH0nlxU76vNbPNDfEyIyG4Rx++zeMzx8arvBa2F7b70ML/2e7zfWBoBNXNs8xV0RmHMwQsCv9kvwi5J53uO8FNX5lZ+bp0BIPFeTPDtuu5C65EGSCcfGnK/ssv0jPuUZQrOUgljip4B2ABLYnntAHmKZerpiMuk5eJExnDpVpoh71WvUhMLgPqczwQ1ftiqPiGsos/D9j6/53QOwHkUKKt+TY3rclDF30XadI3hUYJvVOQw9nW+TEobLV/p4gYQl55FN2P8rj+RJINXqy/rkDnH/luiRm6ig4Q6M/5XxMgG3GJfuFEHa1NsbRWrio5/7KtmAUqS6nbadHoWZmQH14czL8FaLs3Dduq/ISN6VmgQGD7BC2lC7nZ0ruVBSQwB2zPJNj2ktKI+l/DTdsTQYk3cWwiOqFCqGmffRI66UTitfcFraRidMNOVaqZXvrP6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(1800799024)(10070799003)(366016)(4143699003)(56012099006)(3023799007)(11063799006)(38070700021)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Z0lKRWRkOThsTmV6aHVaenVWa0d0U0dpclJkUW9IZUorbzNSSWljS3VGWExl?=
 =?utf-8?B?OXVscnNaK2FGM293LzZJY2hFb0lvMlh6dEtrZGZPc1NjdGhqUHJJWUZKUjJX?=
 =?utf-8?B?Ymx5RHdxN3V0V2V1ZEt1QkVmb3hHMmJpck5ka2JyTC9RVisrZjB4MzFtbGhh?=
 =?utf-8?B?MURxeENsK1NrNjFKdHFtWUk4ejhSMHNyUTBTUk0xUWN5UGM4cnZ2VElZa1pw?=
 =?utf-8?B?WUhDbzhvUkdKWCtBQUEyMk5xdHV5c3d1Wjhibk94QkloYXNJRVluR0NwY2Zh?=
 =?utf-8?B?Z1czYU9IODVlamUzVSt6bnVBUzdRS0lXQmJTVkpTV2x5MkJmUDBFcU52c0Ji?=
 =?utf-8?B?TSt4YSt5YklUWVU0cHV4QnVGOGVIUlh6MUZ6YTF2WmFWWmNXaGxwSnk4Skcy?=
 =?utf-8?B?L2VPaWZOUEUvOTdjUzg2cXpMckdXam1Bc0FGMVc3b1NNcE1xV1RhTnVUYzls?=
 =?utf-8?B?Lzl2bmp2Vko4YTVYVnJsV1NrK2RJYWYzUnhmbzJVdmlRK2pyblZaMHc2WUJw?=
 =?utf-8?B?ZkZicWs3R0c0L1NkWXRKaFhDWUZCQ0t1dFYwbGFVMTIxRklmOW5xcEtBVUZl?=
 =?utf-8?B?OU1vdEt6WjFFREs3VlE3bFdGMjFDZXhUZGJORGVVYmlnbEpjQk80ajYvV2ZU?=
 =?utf-8?B?cHJ3bG1DRXZyUnVYdnlZa1VVM3dodjNYZVQrdldwblM0ejRJNENVT2YzSXFX?=
 =?utf-8?B?ZWNySUczUjF1dFJlZGJqQU9KV1RDNjA5eW5SUjBraklhOTRYYzUySFl1VUVM?=
 =?utf-8?B?VE02QTQyNUNSWmZpc2ZXNXJUaXk2dWllbmNHWjl5VWlHVDRnWjBmRzU5RHVD?=
 =?utf-8?B?a3NOY0dmbENETnE2WXV2bEFweSswemdWUlBqaUpTZzJLa0t2Qmx2d05sQk1M?=
 =?utf-8?B?Tm1ibzdyTFg5RjBzT1RGWlFic3ZrUlJNT2U5dTlGZlFrenMwc05vMld3YTNn?=
 =?utf-8?B?S0ttdS8yNnUrYlQxblN4ek5JcnZnY1lUdEx0U2IvL2lXZEFmRnNTZld3ZlRK?=
 =?utf-8?B?NWZSamlyNjB3Sk9CcUg2a1NFYmNQY2VHK3RNNHo4WUt1NktKakpON0hlWHFp?=
 =?utf-8?B?WWFFUlVRR3hQUVJrajgyYW5LUkYreVJHOG56cERicTlqWU1hYTN3WHoya1ds?=
 =?utf-8?B?YURFalo3UE10M1NCTHV0dzg4c3dWb2M3Z3dHZ1pVQ1JSbHhRTjhIaHBmT0dw?=
 =?utf-8?B?WVB3b2IyYkw5NDc4bkpvSjlTRUpKTTBMOXl6RDh2aWNSb3A4b09BMVRnakJR?=
 =?utf-8?B?d2JrdU4wRmZBblBwdFd6NzFRMnpDY2FlUVgxMC9yVVZsZ3U5LzFPZ0NMcklW?=
 =?utf-8?B?N3BqL2p6SmE5Sk9taGpuK0VsS0pOaEo4bSszL0FkYjVnNm83b1pIOFo4U0Nx?=
 =?utf-8?B?czU1cTRLQlIrOW16bVZBak94TXQycmUvNG5ZaGtNeUN2UnExVFZPeEozejdv?=
 =?utf-8?B?bzhwSG9YQitKZ2ZPem1kTi8vWFM3eCtoN2t6ZGNKQTlZb1ZySzIxN3RyY0p2?=
 =?utf-8?B?cW14c2VBaW5QQWtLcm93Tlp2aytrOUt0bExjd1dLSDNMUC9uNEgyc29NSGpC?=
 =?utf-8?B?WUZvYkZabHEzTmF1dzRyTWFUZG5KaFJPOUk2bkl1a1hMb1RCT2g4dDFKZ2do?=
 =?utf-8?B?VzZTUUVwWXcxZ3FDb2NkK1liZU5KM002UFl6TXdQU244WWtxZGJSMVNZbXVa?=
 =?utf-8?B?ZllMeTFYbGdsSW1Pb0xFTDVHVWpZL3hkRjFuaTdWZG5RUG93ZHlGZEs0eURB?=
 =?utf-8?B?VkZSOGxVZ0w4aHpBNU83WlYwL1dBOFhhNmdTVEt1b1gyZ1R3UHNUTnN3MWxT?=
 =?utf-8?B?cFQwSDQ2bnJ1aEoxNTkvWlJtbEw2b0k0Z2VsSVZhMXI3YVpMNkdLMkhObU5V?=
 =?utf-8?B?REVncWM3UEl2blpBZjY3NCtMMWVMS0ZtV0dOYmV5WDRzYXpFbWYxWG51dTBl?=
 =?utf-8?B?Y2tLL3d4RmIvMExicE94SldWbUdUQXloNVg1a1R2QkRHMU9VRHQ5UFBJNVdF?=
 =?utf-8?B?MjNGSFpPaGFvQWQrdzlpcGFRajlBb2Z5WE53bHA1WFhyTmF1anRvYytsQml4?=
 =?utf-8?B?emoyYVlPcFlFaDhpaHNGbXZRdWptc3VNR1M0R1RtQjRCOHFZTUZudWFoa3Np?=
 =?utf-8?B?ejJCYlN3VngzeDJ0dUFYNVdvbDlhRU5va1JOSjA1elNSdFFhcUFWMjk2V3Nv?=
 =?utf-8?B?L0hkbHRJTXRudnF4NitlTVJuL3BMWG5GbGdWay8zNmExTXNYb0RMWWp2aVFR?=
 =?utf-8?B?SFpONUJHdGVCVGM0STQzaFkxTzUrcDJkZWVCOHhXK2NBb1BUb2lHN0N4MzN4?=
 =?utf-8?B?MmRXbVIzSVg2WWkzZmNDTWR3ZHRtSFk4MFpudUY5Z1k5bUcxY09oOTF5SW9E?=
 =?utf-8?Q?SWLwB3diUhDkciMwf+frakZyDh1l6eGRQ2iFMpx66eJdB?=
x-ms-exchange-antispam-messagedata-1: nbO3pte/+oxyq2Op8ThMIxW/djYbPS8gk1g=
Content-Type: text/plain; charset="utf-8"
Content-ID: <68B24E3F2F2FD149B494B58651D699A0@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: hyReD6KRNIlrfjwmuGMaXJtXKdFhqaXgo41aCGBnMvm0G+Z9U3V8fjPL5aSCVnI3o4k+b+lzXYlTUoPkEPtcsaA5laZ24q5uHv0tgcc0tsn3IGssJHubvf6egCBMCLnpX9L93T/jOQ05ceMhGuO1diswPL8GJr3mX72jiTWPm+4kzy0JIXoPilE6eeHOCaGeUSm/IJfqR6+aEGg30VsdF5auCl76CrzPL/+AwXjOdfY5oCagwPPRS/N/cSmoDBSZBX75fcgWiSMwzbFR++qU5DUz9aVEJPA6lAqVWP4q2HiEgLSw3E3MtwCxNPHXgwEp58o27VQXFbxHxIMTKg5+YA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c7fa95a9-541f-4fe0-8f20-08decd1fc8a5
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jun 2026 09:55:52.7003 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0JWwfi3uH5gUC82A/XKHNBYUU9Ti7i7NdFyOvtexVPK+O3/welKSDpBFLSPsoeVWYxB553Y1U1psQLaWbP44XZo9t9MXuJkTqIn0aXCLCpA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5792
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3169469F091

T24gTW9uLCAyMDI2LTA2LTE1IGF0IDE4OjIwICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gVHVlLCAwOSBKdW4gMjAyNiwgSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+IHdyb3RlOg0KPiA+IEN1cnJlbnRseSBpbnRlbF9wc3JfZmFzdF9zZXRfZm9yY2UgaXMg
Zm9yY2luZyBmYXN0c2V0IG9ubHkgZm9yIGVEUA0KPiA+IGNvbm5lY3RvcnMuIFBhbmVsIFJlcGxh
eSBpcyBzdXBwb3J0ZWQgb24gRFAgYXMgd2VsbCBhbmQgd3JpdGluZw0KPiA+IGk5MTVfZWRwX3Bz
cl9kZWJ1ZyBpcyBzZXR0aW5nIGRlYnVnIHBhcmFtZXRlcnMgZm9yIGVhY2ggRFANCj4gPiB0cmFu
c2NvZGVyDQo+ID4gKHN0cnVjdCBpbnRlbF9kcDpwc3I6ZGVidWcpLiBGb3JjZSBmYXN0c2V0IGZv
ciBlYWNoIGNvbm5lY3Rvcg0KPiA+IHN1cHBvcnRpbmcNCj4gPiBQU1IuDQo+ID4gDQo+ID4gU2ln
bmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+
ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwg
NCArKystDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9u
KC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNy
LmMNCj4gPiBpbmRleCBlMTM4OTgyZGM5MWY2Li43ODc5NWJkM2NlYmE0IDEwMDY0NA0KPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTM0NDYsMTAg
KzM0NDYsMTIgQEAgc3RhdGljIGludCBpbnRlbF9wc3JfZmFzdHNldF9mb3JjZShzdHJ1Y3QNCj4g
PiBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KQ0KPiA+IMKgcmV0cnk6DQo+ID4gwqAJZHJtX2Nvbm5l
Y3Rvcl9saXN0X2l0ZXJfYmVnaW4oZGlzcGxheS0+ZHJtLCAmY29ubl9pdGVyKTsNCj4gPiDCoAlk
cm1fZm9yX2VhY2hfY29ubmVjdG9yX2l0ZXIoY29ubiwgJmNvbm5faXRlcikgew0KPiA+ICsJCXN0
cnVjdCBpbnRlbF9jb25uZWN0b3IgKmludGVsX2Nvbm5lY3RvciA9DQo+ID4gdG9faW50ZWxfY29u
bmVjdG9yKGNvbm4pOw0KPiANCj4gCWZvcl9lYWNoX2ludGVsX2Nvbm5lY3Rvcl9pdGVyKGNvbm5l
Y3RvciwgJmNvbm5faXRlcikNCg0KVGhhbmsgeW91IE1pa2EgYW5kIEphbmkgZm9yIHlvdXIgY29t
bWVudHMuIEkgaGF2ZSB1cGRhdGVkIHRoZSBwYXRjaA0Kd2l0aCB5b3VyIGNvbW1lbnRzIGFkZHJl
c3NlZC4gUGxlYXNlIGNoZWNrIHRoZSBuZXcgdmVyc2lvbi4NCg0KQlIsDQpKb3VuaSBIw7ZnYW5k
ZXINCg0KPiANCj4gPiDCoAkJc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGU7
DQo+ID4gwqAJCXN0cnVjdCBkcm1fY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZTsNCj4gPiDCoA0KPiA+
IC0JCWlmIChjb25uLT5jb25uZWN0b3JfdHlwZSAhPQ0KPiA+IERSTV9NT0RFX0NPTk5FQ1RPUl9l
RFApDQo+ID4gKwkJaWYgKCFpbnRlbF9jb25uZWN0b3ItPmRwLnBzcl9jYXBzLnN1cHBvcnQgJiYN
Cj4gPiArCQnCoMKgwqAgIWludGVsX2Nvbm5lY3Rvci0NCj4gPiA+ZHAucGFuZWxfcmVwbGF5X2Nh
cHMuc3VwcG9ydCkNCj4gPiDCoAkJCWNvbnRpbnVlOw0KPiA+IMKgDQo+ID4gwqAJCWNvbm5fc3Rh
dGUgPSBkcm1fYXRvbWljX2dldF9jb25uZWN0b3Jfc3RhdGUoc3RhdGUsDQo+ID4gY29ubik7DQo+
IA0KDQo=
