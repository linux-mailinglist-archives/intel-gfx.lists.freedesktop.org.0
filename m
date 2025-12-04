Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB08CA298F
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 08:09:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 320D510E858;
	Thu,  4 Dec 2025 07:09:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iVEVNXDl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A184F10E858;
 Thu,  4 Dec 2025 07:09:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764832197; x=1796368197;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=IZTi90kmYAwnq18wKEKGDeIV/GaO/G+vjgViDxaUmCs=;
 b=iVEVNXDlZCvlVfOKjxuH5Slj/vokXQF9Xiat7QV522Mg2+aGfcK8f1r9
 MHA+IIbzWCQGfdiXTnLOzFBV9qOnAW+/6Gl/dwnCvKFvxEVFQwhZK86rH
 NYlqS7GDkMTfjsxv1FHEK7ai8UCp430dKvdPuriv/ygTjXFhsXsZMDlEo
 6k0KSVdEbm0NkWwmrJEFfEaJTNihuEZ+cWWi+++kyPYv0UFbc695iSw63
 F3JvxyZHKlZdHmOcDVI65Y9FgKeTiQ9Nl2zwhR5kGy9Yq10gdt5q2WjTT
 3/jZQemxkE11V2I2CDUaOijwLmpdAOdPbviD2vAH5X4xmUkiqCOUZwhwS Q==;
X-CSE-ConnectionGUID: yM9Tddd1SHiwFDDn3KkBqA==
X-CSE-MsgGUID: OOlo1C5yQCyPzGruzIst4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="66803612"
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="66803612"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 23:09:57 -0800
X-CSE-ConnectionGUID: lz1OYbPeR8ixf3MnmCTQfQ==
X-CSE-MsgGUID: 1rYZXY2HRHGnKy29ppliVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,248,1758610800"; d="scan'208";a="225576293"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 23:09:56 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 23:09:56 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 3 Dec 2025 23:09:56 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.10) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 3 Dec 2025 23:09:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wLtYzNZTWwDu1hrvVTZrYr3HAvJZg5xB1q/hVhT3I6HljgrTYJikzt4VIFuvFmOpvCVK9C+4EXbDZg/0wtnuZ0ZNxPpBclsjjRE0bZZc70KgADpFJkrLhYxTipf5zC+/GnfDSxeA290ptCAaA+v/OsdqByHnro6AgIC8ZOXUuSqM44aqTfMqODT253kUV7ivQJ0IM4xW2a1m7Drh5E06EM9U3kqholgqBYpOwuF8IBptFUvM3uXHGprlC7wnpUeAW5xrlZJt6BxV8WYRI4EbmRW8tEqq54dWXVM1ARDkPvGeWXrIZoKZ1VxPbSoYH6wUkuTLKCdBXXd4Ztkdri9LdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IZTi90kmYAwnq18wKEKGDeIV/GaO/G+vjgViDxaUmCs=;
 b=WwOQl4ekJ+mhBX6ZJNhx2Fyqd0puWkghJ8pXMNEbPVwIw4YUXlJtuGydgyCjylQqaCpHwyY0oE0KuGckZ1h2tnul3cbvLlyDJhEuWtddFA63EYBMOmdty6aZeVqnvwyipLaYJUYfZsJwk1tHjRp4v6iQSp303MFVrky3BADA4yRncGFKeQV5JX9H9MJdQNOGF2bJ8VjbC5jgJpaPm4c1eDrISzKcIXvn2CEvfAT6OGgoeW7PA+7GSx8pZF8caDr7RxFNTa2cG0rnSS6Fuq+lSNVGboU2flB8Arb5XCeLqtDVhO3ygipgnQ4LkV7NMe88XnGE8eCRsMZH5s3qpsrO+w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MN2PR11MB4552.namprd11.prod.outlook.com (2603:10b6:208:263::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9388.9; Thu, 4 Dec 2025 07:09:53 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9388.003; Thu, 4 Dec 2025
 07:09:53 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 1/3] drm/i915/psr: Set plane id bit in
 crtc_state->async_flip_planes for PSR
Thread-Topic: [PATCH v3 1/3] drm/i915/psr: Set plane id bit in
 crtc_state->async_flip_planes for PSR
Thread-Index: AQHcYsX0kkXrXhu5aE+Zt82gX143kLUP6FaAgAEsFgA=
Date: Thu, 4 Dec 2025 07:09:53 +0000
Message-ID: <7f912f8907477fa8335984eafc16cd0ed2ededdb.camel@intel.com>
References: <20251201132457.624358-1-jouni.hogander@intel.com>
 <20251201132457.624358-2-jouni.hogander@intel.com>
 <aTA4BTe4I5sA-WSJ@intel.com>
In-Reply-To: <aTA4BTe4I5sA-WSJ@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MN2PR11MB4552:EE_
x-ms-office365-filtering-correlation-id: 5242ee6d-542d-4a6c-399d-08de33041f84
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|1800799024|366016|38070700021; 
x-microsoft-antispam-message-info: =?utf-8?B?aGpUdkM0eW5KUVVqNmFzMHhyU210TVVBcENCRU5sVGsrb0ZGZ2FHYzZCUW54?=
 =?utf-8?B?dndmL1laaHI2YXVCb1B0b25RS2xCbXlCR20vTS8rNVdsd0R2U0lkZitZaHVB?=
 =?utf-8?B?WDdDUTYxdkw2L2FmdW15aURSUUh4a0hsYW5BVnVVaVlMNWg5L25sUFRpOWNP?=
 =?utf-8?B?UXliNjltcENFQ2dlRGM0YlVVbUVjdGVTcXJ1RVRqSitiV2RKRGJ2eW5rSWk5?=
 =?utf-8?B?VFpYcHAvZTJmOTBMRmJmalRlbDFCbkhtMERvQldiOEMxbkl1eVRBK0RYNHZ0?=
 =?utf-8?B?bGtXa3MwTEJPVExOKzAzOUFoSDBOdUcybU5OR2NJcGZPRGc3TWhoc2Izc0xw?=
 =?utf-8?B?RU9RSEpjOHUramx2bUxVVktKWnM5VWFJVGsrNlJmb3hic1NvU2Rkb2dGWHMz?=
 =?utf-8?B?VFVuLzdsd29iMzJLRWlvYS9wMVViNFE5SVVEeEEvVmw1M2pOeFU1cWExNVRS?=
 =?utf-8?B?QkZPczJQbjlpb0FDcmUvUHphM0VQQWlYUkZHL1BtanJ6VGt3VlhFbThVUjFY?=
 =?utf-8?B?OXhrcTJpOWlHcjNDR3dFeEwvVG1WVUNNeE02ZmU1dmhSV2JNT3EwSk1PU3dy?=
 =?utf-8?B?cVRSUTNRUVRKVEZpaitOZHFpeHpFcnJjQ1VzVGxxR2tveDlva1A1MldZZERJ?=
 =?utf-8?B?M1JERytiNEt6YzV5ZjVUTW9OOHpuVm1qaldNNGdSYk1TVGYxaEVZQlE4VU0x?=
 =?utf-8?B?bmpoOGQ3NXF4bzNjQ3ZEYXlWTGwvVW02NjhBQ0ZaYWFlK2xuajZHYVhaaVlY?=
 =?utf-8?B?T1ZQeVQwcWhyRW5aaXZWMVVzTzQ3Mlp3a2VhbkRPdDRyWmlWQnZCREJxaFJR?=
 =?utf-8?B?M2NDalFQNld4TkViYlh1YThwSVVnZzdBNGlnTTNOb2YyQjROSWsrNGNUZGh4?=
 =?utf-8?B?UG1TVEIzM2lNMG9qRElLNXljUmlac1dGbEtrOXJpbml6cFdNRkYvMzRNZ3d1?=
 =?utf-8?B?QTQwMmcwMzB5UGRJY2tKSU1HSDlIQ05CVTdMdkRtNnltNVc0bzVkUEtKRFhh?=
 =?utf-8?B?SE1zRHlqa2pyOVhTOU82SVNBbWovRUlodi8yTm5GV25UanFuSHlUajJKbysv?=
 =?utf-8?B?UUlUVWtFcWxMeG1seW0weVlqRWd3MEhpUGtYcEk3L3kzWmgxaTgrakFMU0Fr?=
 =?utf-8?B?WVRJSmkvVERsOG5RMnJFOWtNL2pGc0N1RDk3NUlINVNjaXVTSVFQL2VzZTFv?=
 =?utf-8?B?MzIyS1lvUndxVjZMdjZHL1BrdkJKemkxbTh1OE9qOEg0anExVytvQjZsdFFX?=
 =?utf-8?B?N3IxQTFXaEI2T3FFMXpLM2ZmNVVJMS80UG00S0hjU2s2c0FTanhvL3VaK2h1?=
 =?utf-8?B?d1puMEMyaks0UmgvZGVPWU52WElEV1AxdGY0cXlWS2ZEa1hISjR1TXpaM1JY?=
 =?utf-8?B?M1V5Mjk0V3JWWFl6bnM4TEhDT2RxbytYWTZqbUtTdmxiZTJsOFU3T0tHMEg2?=
 =?utf-8?B?d0paVlhTUUJRTHQyOXdEOXJMUXJGNzY4QjVoMFRHblB4SXpDVERlZUZoTWhG?=
 =?utf-8?B?eDRISEpkcWx1NitVWXkxbnhkVWd6QXc0Lytqa1VJTHBBQlhwdzZIdUlybUFU?=
 =?utf-8?B?NGlwaWVLOGJMd3ZsN1pMUXY5S2J4bFFLODZmNTM1OUxyaHpYWEpvWjJHV1dV?=
 =?utf-8?B?VUU4UVJKMnI1eFFXTUJWQVJFbWowT05KWkl0QmpNQnpJN2ttRUhSdzdjNzZK?=
 =?utf-8?B?b1J4cVNCcDNETFhTQXRCMVNFd0xJMDBma3ZjcTZjWUFJWVRQNHE5T3AyU1pT?=
 =?utf-8?B?dmRWdVh5UFl4Rzhzd0xiNGR4UDNydGdSWU9HVks4dmRpanUvb21wNVFTV09O?=
 =?utf-8?B?S0xPUEFvRm04SWo5NHRsNjFKZ3JIMUtGM2xydE9kYmRpaHlWNldwNUdMbkdB?=
 =?utf-8?B?MUo2SGg2U3hSVzRJY1FQMkFyTkN2Yy8vQmlCOUh0QmthcUdQRG5BZ1JDMHlM?=
 =?utf-8?B?K1VGRWozUktaT0xJbGMzV0NrTmc1d3dyeUpDZG5xZ25lUTl2SEZrOWdBZUM1?=
 =?utf-8?B?bVNKVWJUdmY4SnArRkpONDE0TlAweXZSeld0bWw3alhaYXFGUWNGK0MrcVkw?=
 =?utf-8?Q?rbQT6p?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QjRHMFRMdGdXcFBVRmtHL1Z5bi90b1hUWncwNXo2SXpGVmppVHJBVEtEdnpa?=
 =?utf-8?B?Tmc4TGlGWjFva3haNXJOT29EL0xXRm0waXhta1pvdXZmRVhVVnJKSE8ycUNw?=
 =?utf-8?B?M1NTQk9rRVFSN1h0QlhpZis5SGM4ckp2Y2JqQzhxRnV0VFppOHQ2MVNzQnpn?=
 =?utf-8?B?cTJGcXFTamdrdDJwWDNPZmx3ODJrM0MrV2FReGw5VWxYY1YvSUZaMzF3bUxI?=
 =?utf-8?B?NmtYTWtoaWVkaUZaZldCV2xPTUNTSU42Tk4xL1A1MkNwdzhyd1JyWDQ0dWtP?=
 =?utf-8?B?SlNidTdpdGZ4dmZkdVhNZ3BIaVg5a0VJanltaE5neGM2NE5INXA0TzRVbGhT?=
 =?utf-8?B?dnFFZ1JWRnZNQUtVZlhkRDhUSklDQWN5MDc5SEYzYUYrN3d2ODNHZkdNTS9C?=
 =?utf-8?B?MlUwRGU4elFxL2RsSENkQ0tyQllwbEphb2loT2JCb1dkdEQxUVRob1VSNEFv?=
 =?utf-8?B?Q3MyU0lLOW5XaTZRN2FRcGpMZnVlRUNGaEpFa3FmQkNTT1U4b3oxck5LTkNw?=
 =?utf-8?B?Wmo0Q0toUkZrdjd5NnVUN0JYMlVhdHdDeC96MGYyTkpoQkwyUjV5NkNmdzFV?=
 =?utf-8?B?SWtXa2wvK05aTWZCcDd0YTY4M0FER2hQNzdTMENsRzJWZWxJckIwR2ZOVkly?=
 =?utf-8?B?MUU3THJRQnZIZFJhZlAvaGQyWEszQVdQVEJLdlQrd2EzMllZWmJNbzBQZG1Y?=
 =?utf-8?B?eHh5QXo5SlREcG9WTzJIOGYwN0NnV0MyV0JraG9rc3FmSjNkY0M0Y3VOT1RL?=
 =?utf-8?B?ZzVjYlhnamZwYUpuTEdaUTBjdEdrQlljUTAzbU1RVkxPRUM5YmJQMWlBSTNV?=
 =?utf-8?B?c3hmaFRLOFBDamxJUjRzQ0JHVU1ib0EzU3hZYnFUcHd4UVFNZUxmYUx1ZHFU?=
 =?utf-8?B?Wnd2VmJObG5ia2JRWmIvMUxON1NXcmdOTGdoVDdINWIxUlBOU3M4aGMwQ1ZE?=
 =?utf-8?B?ZGhvbXNjVzBKS3lYV0JZcVpPbUR0b3NNalQ4SXk2Y21xT2lsL2xJZFg1S3lN?=
 =?utf-8?B?N2lmdCs2R0ptMVg3b3JxMmtQS3VDUGF1Nmo2TU1WeWw2Qkg4U0tUdDdOSGVU?=
 =?utf-8?B?Nmo3WCtIYmNKOG9hY2hUUEU0UXl2ZW94Mmp2aUNZLzVoV05MRkxrMWt0amww?=
 =?utf-8?B?N25vSWc2dW13UlduZGJqNTB1YmJtMlV3dlNHcDhlRFU2WUVFTW9id2lSeVdj?=
 =?utf-8?B?SS9uOFhvNUR4Q2FPR2xrdlM1V0Q0ZFNSVEgydnAxQlhJWjc1VDBmK3NBZXVR?=
 =?utf-8?B?RmhSdjV0YlZ5bWVmV3dzNHdwK25xTkdCYVNmcnYrbUtSTkwvNlg3bFNzc1R6?=
 =?utf-8?B?cEowY0h6UzBWbmhrcFI1bE9HK1RIRE1PRFV4ZHlvdGN1OTRXblNMVE5pcnhH?=
 =?utf-8?B?aDBZdTY0RlYra2RvSVJBVzVvRUZQSHV3N0RYeE52Qk5GZ01NaUVOTmJodXRQ?=
 =?utf-8?B?Y1pYbUhya3huQUFxbUtSLzI5MGp0QW9XbCtzWWpZMUZkMm5HQlg2dE1pRW0r?=
 =?utf-8?B?bFBlYWh3b3ljRktVVDJQR0lXRE15V2ZTYXIrU2FqbHo4NXlaLzZOY01yUWwx?=
 =?utf-8?B?c0JCMzN3ck5MTTkvN2dSNzZQV0xya0FBNTlrdGd5VWpycU9RZUVpMlR5SGpo?=
 =?utf-8?B?NzJaUVhXOTl0ZmI1N0FHREZITmV1ZUhaTHBNMjQyVUd3V1ZORUwrMkp3dDJS?=
 =?utf-8?B?cWllVVczRjBVdEZMQi8wS29xU0FDeVNpalpzS3k0T3ExUG5ZK0FtZGh5RVQ1?=
 =?utf-8?B?TDBEamJPeUVXWjZXM0ZpT2FyT1NYS1JuSk9XQnBnS0Y4V1NRZTlZS0tZckh5?=
 =?utf-8?B?TXlSaEh0RE01dk9oZ0wvSENnWU1hN3JZZHAyZ1BaSEM2eHE5T3Z2VVNXREJE?=
 =?utf-8?B?ZlJ4TkxFM3phMzRzVmU1ZTJsU1JqQWhlZklEY3RJdUR4czJDYVRTNG1TcGpt?=
 =?utf-8?B?SlJMN0xtWFhsQytVLzNVWkI0eWo1WXhlazkxRDE3dHIxTXFEd0dPbjlnSnNj?=
 =?utf-8?B?dTkzQTZXeUFzeDdRY2tXNXJjbXA5SDNlSWlXSDNiRGNOMnVlWGFnQVBKeHln?=
 =?utf-8?B?NS9xcDNEU3RnQ3JBVHcrVUlZM0Vka240bTYyTTNDc1VHdVgwQ0R4QURISmU5?=
 =?utf-8?B?SFd4WHlpck5NUlZ4c2JPK0w0cmY1aTNYbFJmWTR2bjM1eEhpaUpkQzFhK3NN?=
 =?utf-8?B?R2t1bE9JZkpiKy9NUkRSOVpVNktYeTNLaUZQU0dwd2tUTm9Qa2RTUTF1SEZ0?=
 =?utf-8?B?QUNlNGM5R2RNSWpmbjg5c3pYWlF3PT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6791F6C90D941A43ADEC1BADDDEEBFE6@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5242ee6d-542d-4a6c-399d-08de33041f84
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2025 07:09:53.4389 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0lXSukoMNVk/eOoq8vv2/ZpVFJcfQPm1xj4imMtRo1mPZJfTWj5rP8LUqm2fAz6lRXeljD8C+hVhyfJ3btARBVylqZdrfROrAmdVeaOY6f4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4552
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

T24gV2VkLCAyMDI1LTEyLTAzIGF0IDE1OjE1ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIE1vbiwgRGVjIDAxLCAyMDI1IGF0IDAzOjI0OjU1UE0gKzAyMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBDdXJyZW50bHkgcGxhbmUgaWQgYml0IGlzIHNldCBpbiBjcnRjX3N0
YXRlLT5hc3luY19mbGlwX3BsYW5lcyBvbmx5DQo+ID4gd2hlbg0KPiA+IGFzeW5jIGZsaXAgdG9n
Z2xlIHdvcmthcm91bmQgaXMgbmVlZGVkLiBXZSB3YW50IHRvIHV0aWxpemUNCj4gPiBjcnRjX3N0
YXRlLT5hc3luY19mbGlwX3BsYW5lcyBmdXJ0aGVyIGluIFNlbGVjdGl2ZSBGZXRjaA0KPiA+IGNh
bGN1bGF0aW9uLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91
bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wbGFuZS5jIHwgMTAgKysrKysrKystLQ0KPiA+IMKgMSBmaWxlIGNo
YW5nZWQsIDggaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wbGFuZS5jDQo+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3BsYW5lLmMNCj4gPiBpbmRleCA3Yjc2
MTlkNTkyNTEuLmRlMGE2OWM1NTU4MiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3BsYW5lLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3BsYW5lLmMNCj4gPiBAQCAtNjAzLDggKzYwMyw3IEBAIHN0YXRpYyBp
bnQNCj4gPiBpbnRlbF9wbGFuZV9hdG9taWNfY2FsY19jaGFuZ2VzKGNvbnN0IHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlDQo+ID4gKm9sZF9jcg0KPiA+IMKgCWlmIChpbnRlbF9wbGFuZV9kb19hc3lu
Y19mbGlwKHBsYW5lLCBvbGRfY3J0Y19zdGF0ZSwNCj4gPiBuZXdfY3J0Y19zdGF0ZSkpIHsNCj4g
PiDCoAkJbmV3X2NydGNfc3RhdGUtPmRvX2FzeW5jX2ZsaXAgPSB0cnVlOw0KPiA+IMKgCQluZXdf
Y3J0Y19zdGF0ZS0+YXN5bmNfZmxpcF9wbGFuZXMgfD0gQklUKHBsYW5lLQ0KPiA+ID5pZCk7DQo+
ID4gLQl9IGVsc2UgaWYgKHBsYW5lLT5uZWVkX2FzeW5jX2ZsaXBfdG9nZ2xlX3dhICYmDQo+ID4g
LQkJwqDCoCBuZXdfY3J0Y19zdGF0ZS0+dWFwaS5hc3luY19mbGlwKSB7DQo+ID4gKwl9IGVsc2Ug
aWYgKG5ld19jcnRjX3N0YXRlLT51YXBpLmFzeW5jX2ZsaXApIHsNCj4gDQo+IEknZCBnZXQgcmlk
IG9mIHRoZSBpZi1lbHNlIGNvbnN0cnVjdCBoZXJlIG5vdywgYW5kIGp1c3QgZG8gc29tZXRoaW5n
DQo+IGxpa2U6DQo+IA0KPiBpZiAoaW50ZWxfcGxhbmVfZG9fYXN5bmNfZmxpcCguLi4pKQ0KPiAJ
bmV3X2NydGNfc3RhdGUtPmRvX2FzeW5jX2ZsaXAgPSB0cnVlOw0KPiANCj4gaWYgKG5ld19jcnRj
X3N0YXRlLT51YXBpLmFzeW5jX2ZsaXApIHsNCj4gCS8qIC4uLiAqLw0KPiAJbmV3X2NydGNfc3Rh
dGUtPmFzeW5jX2ZsaXBfcGxhbmVzIHw9IEJJVChwbGFuZS0+aWQpOw0KPiB9DQoNCj4gDQo+IFdl
IHNob3VsZCBwcm9iYWJseSBhbHNvIG1vdmUgdGhlIHBsYW5lLT5hc3luY19mbGlwIGNoZWNrDQo+
IG91dCBmcm9tIGludGVsX3BsYW5lX2RvX2FzeW5jX2ZsaXAoKSBhbmQganVzdCBtYWtlIGl0IGEN
Cj4gZHJtX1dBUk5fT04oLi4uLCB1YXBpLmFzeW5jX2ZsaXAgJiYgIXBsYW5lLT5hc3luY19mbGlw
KS4NCj4gQnV0IHRoYXQncyBwcm9iYWJseSBiZXR0ZXIgbGVmdCBmb3IgYSBzZXBhcmF0ZSBwYXRj
aC4NCg0KU2VudCBuZXcgdmVyc2lvbiwgcGxlYXNlIGNoZWNrLiBMZWZ0IG91dCB0aGlzIGRybV9X
QVJOX09OIGNoYW5nZS4gSQ0Kd2lsbCBzZW5kIGl0IGFmdGVyd2FyZHMuDQoNCkJSLA0KDQpKb3Vu
aSBIw7ZnYW5kZXINCg0KPiANCj4gPiDCoAkJLyoNCj4gPiDCoAkJICogT24gcGxhdGZvcm1zIHdp
dGggZG91YmxlIGJ1ZmZlcmVkIGFzeW5jIGZsaXANCj4gPiBiaXQgd2UNCj4gPiDCoAkJICogc2V0
IHRoZSBiaXQgYWxyZWFkeSBvbmUgZnJhbWUgZWFybHkgZHVyaW5nIHRoZQ0KPiA+IHN5bmMNCj4g
PiBAQCAtNjEyLDYgKzYxMSwxMyBAQCBzdGF0aWMgaW50DQo+ID4gaW50ZWxfcGxhbmVfYXRvbWlj
X2NhbGNfY2hhbmdlcyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpvbGRfY3IN
Cj4gPiDCoAkJICogaGFyZHdhcmUgd2lsbCB0aGVyZWZvcmUgYmUgcmVhZHkgdG8gcGVyZm9ybSBh
DQo+ID4gcmVhbA0KPiA+IMKgCQkgKiBhc3luYyBmbGlwIGR1cmluZyB0aGUgbmV4dCBjb21taXQs
IHdpdGhvdXQNCj4gPiBoYXZpbmcNCj4gPiDCoAkJICogdG8gd2FpdCB5ZXQgYW5vdGhlciBmcmFt
ZSBmb3IgdGhlIGJpdCB0byBsYXRjaC4NCj4gPiArCQkgKg0KPiA+ICsJCSAqIGFzeW5jX2ZsaXBf
cGxhbmVzIGJpdG1hc2sgaXMgYWxzbyB1c2VkIGJ5DQo+ID4gc2VsZWN0aXZlDQo+ID4gKwkJICog
ZmV0Y2ggY2FsY3VsYXRpb24gdG8gY29udGludWUgZnVsbCBmcmFtZQ0KPiA+IHVwZGF0ZXMgYXMN
Cj4gPiArCQkgKiBsb25nIGFzIHRoZXJlIG1heSBiZSBwZW5kaW5nIGFzeW5jIGZsaXAgb24gYW55
DQo+ID4gKwkJICogcGxhbmUgd2hpY2ggaXMgcGFydCBvZiBzZWxlY3RpdmUNCj4gPiArCQkgKiB1
cGRhdGUuIEkuZS4gb2xkX2NydGNfc3RhdGUtPmFzeW5jX2ZsaXBfcGxhbmVzDQo+ID4gJg0KPiA+
ICsJCSAqIEJJVCg8cGxhbmUgaW4gc3UgYXJlYT4tPmlkKS4NCj4gPiDCoAkJICovDQo+ID4gwqAJ
CW5ld19jcnRjX3N0YXRlLT5hc3luY19mbGlwX3BsYW5lcyB8PSBCSVQocGxhbmUtDQo+ID4gPmlk
KTsNCj4gPiDCoAl9DQo+ID4gLS0gDQo+ID4gMi40My4wDQo+IA0KDQo=
