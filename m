Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDEAAC0BC72
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 05:32:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADDBF10E097;
	Mon, 27 Oct 2025 04:32:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lO20El6h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D99610E097;
 Mon, 27 Oct 2025 04:32:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761539521; x=1793075521;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4fjhtasCHPHGklYxRWvM8Nnvu+UoFD0PPwlNtmMZWnA=;
 b=lO20El6hUUYMxr13VZFLNTgU0wRz2qDLGCWpleQVCeMW77CiFuMOoCEp
 tWbYcNOf4hoGv0lwOHIb9SlNUQ1SBfE2ENA/Fxdvk18pO7939wrdDf1iZ
 0KG2l+xAG71ZeEAbiyyBv+SF3i34na2lKHEn3jne5lVH9Qhbar7mTAfB3
 Y6kkc9Bih3o1b9l7y9cmO+lEW+jZ1G5NfHaGrjAASwUBJaIxjhjZafRG0
 hRVWsVuvPSy26lDAQIh3PAcWqkAyAx6fBp1H8KaY6Kvv8K7sn2olyAwSb
 MD1KrSxc1HWCRpMnShi4Lj8yAKRjlcxwIjWlIIG+z9jW0+BT+aNbGe8iP w==;
X-CSE-ConnectionGUID: YAkpCzZQRVC06jL3fpH/qA==
X-CSE-MsgGUID: iAoqc7A8RV6TTFp5P6hWFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="67257924"
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="67257924"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2025 21:32:00 -0700
X-CSE-ConnectionGUID: ym+yTtyoQv+C7brDoXm9Sg==
X-CSE-MsgGUID: O/cC680CTXS5al1MaUjBlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,258,1754982000"; d="scan'208";a="222150848"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2025 21:32:01 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 26 Oct 2025 21:31:59 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Sun, 26 Oct 2025 21:31:59 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.23) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Sun, 26 Oct 2025 21:31:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ohOL7EH/WIoUQ6+qASDwxEP3K0LY6vQmosgaqQQcO6rZwsxYS4izT6rsxLZMHsBP9WL8By3T61AXoOFPN+6a29kQPSSEW3ef6WKovSOGdq7FLJ5kZalKe1p4c1e2416zwF8th3KRnnbSoiU06sV9Z6Fi9dSr0LUizgAoTga76asZH9nScinG+XF9QQUJthS3H22Rz689X4tsHSShx784AXzEM88c/D5GxqHgtNJfxjkjbsJeoCGSDhSi+AGbt55/LEpXFpgR8FjDE2+NxxmhndYMF/NHgveQUoC3uWIQDeN3eBuWHFx1o3iWS/rDN/LktB3XcK4XppVjzin4zEQsqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4fjhtasCHPHGklYxRWvM8Nnvu+UoFD0PPwlNtmMZWnA=;
 b=xG1MAdz2MK7cBpNcgV3/2ozdjGEeRhRdzcgT+nSzZPgzdULvGRsvdPF4vx9Lobt6xKiWWaH0nHaoRVpcVYF18eHQLrskjYegWb6Qnlvp46mD90ElHLh62y0iQy8O2NeaUSZCAJIs/xTSnUJMKu88HYsxJxxRAjvYwrGnfIFIa3Cu0jzZnlvTK84tgPUi+fuDkVghWoH6n1g1O3jPYQl/gvgPk1Bkc2+42d1CG6FUZGaa1SYL1zn2PxL2oCRiVppdpxR6sJEb8IxGM5oCEGqRmLs0dKCRBK7lmb+8ASXmZ54pIp1cXp/XwmFD+7USfqEs9ABkN32HdjcLFLRDShK/SA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5491.namprd11.prod.outlook.com (2603:10b6:610:d6::19)
 by IA1PR11MB7856.namprd11.prod.outlook.com (2603:10b6:208:3f5::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Mon, 27 Oct
 2025 04:31:57 +0000
Received: from CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::250:1566:d191:a23b]) by CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::250:1566:d191:a23b%5]) with mapi id 15.20.9253.017; Mon, 27 Oct 2025
 04:31:57 +0000
From: "Ravali, JupallyX" <jupallyx.ravali@intel.com>
To: "i915-ci-infra@lists.freedesktop.org" <i915-ci-infra@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkZ1bGw6IGZhaWx1cmUgZm9yIGRybS9pOTE1OiBB?=
 =?utf-8?Q?void_lock_inversion_when_pinning_to_GGTT_(rev3)?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IEF2b2lk?=
 =?utf-8?Q?_lock_inversion_when_pinning_to_GGTT_(rev3)?=
Thread-Index: AQHcRL/v81jrNZl3SkOD8ehrr0qyi7TQ/zCw
Date: Mon, 27 Oct 2025 04:31:57 +0000
Message-ID: <CH0PR11MB5491E67BE28CBD95B4CA6DC2EFFCA@CH0PR11MB5491.namprd11.prod.outlook.com>
References: <20251023082925.351307-5-janusz.krzysztofik@linux.intel.com>
 <176128046833.49991.14877943513710466398@97596180aaec>
 <2251275.Icojqenx9y@jkrzyszt-mobl2.ger.corp.intel.com>
In-Reply-To: <2251275.Icojqenx9y@jkrzyszt-mobl2.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5491:EE_|IA1PR11MB7856:EE_
x-ms-office365-filtering-correlation-id: df38eb12-663c-4859-db81-08de1511c38b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700021|7053199007|13003099007;
x-microsoft-antispam-message-info: =?utf-8?B?Mm9sQk5wdURhQkFBUFpyNGdyOW44YXRjWDhPY2xrcjJtNE95Vit0RG1HQ0Rr?=
 =?utf-8?B?NGJ1cERQa043VGY5dk9sMk1CSGt4cUFpL29KYlUwSEJtTVlpWWUzWEdYUld1?=
 =?utf-8?B?TFc0bmFaaEhyR3IyODZPcUhERE5yVzhnRmdHNEY0VWRWbldveHJnSHJwajJC?=
 =?utf-8?B?djVOQkhpbTJpQ2Z5UVFnaHZZZFdwU2lEVUdqU2xIR1VEbzZPdnBTOHBZUmFq?=
 =?utf-8?B?dVRXV1BYSDJpVHIrT3dzaUtHQlBVQ1RNYXNSTCthTTIrNlN1L2ZlM1dsbWZR?=
 =?utf-8?B?ZzY5REg2NW1JS3phNUI3dVVaN0w3SUpGUEg5clRQNDFuVzZ0dEFjMytqTkY3?=
 =?utf-8?B?NCtGVmlxVVg5WXZNeHBCRmtUeFp4alNIdnBTTUE3YVhhNlBqQ3RNbnVmNHIv?=
 =?utf-8?B?SHpvdFczTEszaFVpV3k1dGhqMWhtWUczSWdoSVlhZityaHMrQjNNdUNpb3Zi?=
 =?utf-8?B?M0N2N3ByQ3VNMEozYTNNeGdPdEgrR0VDMnNGMlRNdXFoaE1MdGdwSVNvRzJQ?=
 =?utf-8?B?Sit2OFhiT3lWTzZ6YU5EOWxRWWJYaFIzZWI2ZE5YenVIelZPQjYrS2hRRGRw?=
 =?utf-8?B?Z282YWF0RjFEa2U1Rk9laG1JM0NPOEhURFI1b2tWVnFLeEVoWG41MHBxYVpk?=
 =?utf-8?B?TUJwTHhWajcwZ3pXb3pDZWo3Ym84Vk9qQi8wWWE2RVpLVXF1VWtkcmxSOTNh?=
 =?utf-8?B?K2xTcjBIWkpzaHQrNzZRNUpjSktQTXhiTDFob285a1hRL0I2aTFsRm5zM2Zs?=
 =?utf-8?B?ZEg0QlJ6ZzdjTjAwM0Z3NHZGZC9odnE2OU5xVWJXT3pyOTNBb25HZ0d5ZWx6?=
 =?utf-8?B?V0IxUzJ4bnFvYzR2Z0JPQ1FaTjZZMTlyUzVBc0Ywd3lMekkxUm94b2tyUHRv?=
 =?utf-8?B?aDJJYmZLRTc4bVVWck1qM2h0VGVyYkJCSUppcGlmUEU2Y3Q5MThBdVlkSG9t?=
 =?utf-8?B?OXJqdlgrZHY4VS9oM3dFbVJJSlN5dFVubnBkaC9MZDJBSlF3Vm9pdmtHM2pt?=
 =?utf-8?B?ZUt0WTFsRkt3YWZJRmlDOUtva01BM2xiTEpmcmc3UTdoL1BYb2pWRVNteC9x?=
 =?utf-8?B?R3EvdDJ4em1Nc3RiR2NZZTdqS3VTM3FMRE9IemU0QmVmdmVJUnJvZU5oL1Jh?=
 =?utf-8?B?QlNzZ21SdVBZM1hoc1h5dFZ4VnpqRHIrWVRIY1gxZUE3cUdWd0pKaFRBRk1h?=
 =?utf-8?B?OWsyM2tuc2Q1TnBHQnAva1p0L1g5aThwS1g3MzhRRGZvdjVQWnB4KzBUcThy?=
 =?utf-8?B?NklRTng5WTNkOEFRVlEvM1FjTjV5dGFzYisrQit1aUNaYkxZeWNVWm5YMU5J?=
 =?utf-8?B?aFJJcnpXb2RZYXVHaWpkOU9aSmtBeW5hT05teGpUVmd0OFZEZFNQdzYwb25M?=
 =?utf-8?B?MEtmWUFhZTljVkdRcTJSRXdMWU55NDJURW9Uclg5ZjVBZjllZElvaSt4Tm1M?=
 =?utf-8?B?WDBKMlllMzhvZGJPaENJZVBEa2ZRZERIOXZqZjArN2xuK3hzVkh3ZklpZEcr?=
 =?utf-8?B?dC9ENjZwSTFHM0VFaTBzWG4wSVRVYnFxN0hMWUJQWTdWaEp5K2JXZDA2YkIw?=
 =?utf-8?B?d28zSmRVK24rMWV3azBNOWJ6RCtOVVRmSTFXek55UlhLMko2cUYxb2xSeXJL?=
 =?utf-8?B?aFJLU1E1V2FNWXc2aXQxRStTV1RQTWZGYnB1OXhpVTZuTHRVYXZ3RDBRWThY?=
 =?utf-8?B?VlhuUmpnQlpUdFhuQlVTQ3l0S0F1c2FoSVR0b3Y2c0k5bWx2Y3hLUS9jREFP?=
 =?utf-8?B?a0ZhdVc4T0ladFI4SFFSbTV6WkpDbk5qNEpTMUZHTURlVHFyRURKZ3pUcmhm?=
 =?utf-8?B?ajNwa3daSjRWQmJPRjArSWtHaXhnaHE1WERHVWVWYVFqNDg2TlJnMFNJbjJl?=
 =?utf-8?B?U2JWWjhjbFQ0aFRFN3hvM1FKWURIN3I1RUZhVWdyS21iRTkxY1Jqd2NNdEZE?=
 =?utf-8?B?MzRmWnQ5QS9KWS9sd1NUMWFBaUw4Y3M5ZE5icXZnSVhWWUVOcjdtZ2hYRW9u?=
 =?utf-8?B?cFRiNWtEamlBPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700021)(7053199007)(13003099007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OXBoWnN6R3Y5UVhaNklHZTAyU2F2TGdsSzVXQ1hQWUlNSVJEK0VYVHFsYkF0?=
 =?utf-8?B?TU9BeFJQRTdBSXhUN2RKRE5leVBHbzNFT1RWczA5SlFxdWV1ajI0SnJqYnND?=
 =?utf-8?B?NTR3aVZHVyt5SGpHTHdoZzcrNzV6UUx0NnN5cTlQS2VjRytST3U1K1ZPRmFT?=
 =?utf-8?B?SWpNRUcxV0xnSCtmeGFCa1pScGhaTTBWVTA2NWtvZjM2QWFWcHR6RW45Qk9J?=
 =?utf-8?B?OTRCMXVYVU1EY1d5aXJUZC95RW05WHpUKzhMbWdTUDkwVnJ3NXdlNm9SL29q?=
 =?utf-8?B?MkpHanlKY0V3c0VCTXpkWm00NnhvdEdrcy9JdlBUVjBVTlVRblU3MDI2cjJq?=
 =?utf-8?B?UFBYZnorL1hTSXkwSDczZDJLVXdOVk5LNDcxdS91VWVtc1dPclRkRXBNYlBw?=
 =?utf-8?B?L3pIdEUwVFNWSWJGL3dMajk1TEl5bVM5ajZQaWxneEtVdE41M2tCSkdRdXBS?=
 =?utf-8?B?NE1zUUtOdzRYYXNkM3VGVmdTTGY2UlR0MXVlRTlNOXl6TCtBUVFRcmkvWDhP?=
 =?utf-8?B?WENZTHpJelFLSGdKZ2VKTEsrWGhLczkyeG1ncG5hbUZ1WGZJVHg5cDZFRkps?=
 =?utf-8?B?N0N3eHVUaklvaWlxaFMrRHBVWkNOZDBqeVFnTEJ4Q1pCZGNkYnVjZnA4Tjhr?=
 =?utf-8?B?SlVDRUhUK1I0RWtwUHdKelJNTVBldlA3Um5VUTY5emlCV3pQZTdxRVFTQjNa?=
 =?utf-8?B?QTlmcjVBd3hhZDF2UlhIclNwSE1VMlpNNzFPb2k1Q2V1amVlMnczUlRPNWkx?=
 =?utf-8?B?djJCUDJCK2pLdTN4VEh2Zmt5c2hLdE1yNk5Xbi9kcjhaSlpxdDdyZ2dQUGFy?=
 =?utf-8?B?Ynl3cUY2ZFBWUldLcjJFSUJmdlIxT0lZRERWdFkwd0NLd25NRUFjSTdMN2F4?=
 =?utf-8?B?MmdYN1FBOXVVZ29ZbEhyRGZCbDRONEFqdnJFeGFtUWdUZHJVdUJaYWlHYVYr?=
 =?utf-8?B?TVk5RU8yYXg1U0tEVW1VZnhWbHI3SFY0eDhWaTJKT0xtSUhpajNWT1p2eEtL?=
 =?utf-8?B?R0xUOHg3MU9YVzJCdEEweHlWL1JBbndrOXQ0aWpvYmJoaFIrZUdBRTB2ajlt?=
 =?utf-8?B?Vklha2ZkUmRvRGZ4RkRoM2hvNmFBUGtDZ2RQV1psSnFodEkrWTNXb3doTmtt?=
 =?utf-8?B?ZEhHQ2trd28yVUp5VUlnRVpCM3lBdUphRTlRMUlYVTVVQVo2RzBxVkVwMVhC?=
 =?utf-8?B?ck5NczlGb29uK1o1MVpNb2phUS9vejdKZkk5cC8zeU9rQytDQjVjdndVSlVF?=
 =?utf-8?B?NHRCdmk1eEFXOWxyUFcwUEhxWXVEcEo3eUVqVTBNMERFQ3VHbGdqQjFuT2Vm?=
 =?utf-8?B?czlLN01QMXRYY1pyeHlsZFZDR1FJR21pcHRXZWJUQkw2NkpJZm5sNWlWTm9x?=
 =?utf-8?B?RGJqcysyZEZHRGd6U2RwM3I1UUJSemRTRTJkM2YrYTZWM2ZlUHdudjhtaTJa?=
 =?utf-8?B?a0lQdG5MaXFmNFZiVDhGTHk4SnRiaWdhYTdzYnphR1NBMndrRGV2OVlOOXRX?=
 =?utf-8?B?ZHhMVVRCQktpRzE5WTZYOXE3ZkNLRy9xK0kvcEs5ditqZ05qN3NpZER6YUl0?=
 =?utf-8?B?OHNoN1FicXhCUWN0dWRMMnJZYWJnVTM2UllGQUtmSTF4bWlka3lWSytyTnFv?=
 =?utf-8?B?Rlh2eGtiY3hOTm5tYk90SVc0cVRYZHhBMlduMGJzR2llbExxbVVrQXFKTTg1?=
 =?utf-8?B?blpGMkR2YzE5UFhRVXEzQWozOTUrQlU3Wlk2SHhYZEZSVnFKekl5RS9Ea1Nn?=
 =?utf-8?B?VkFqOURFTjJPWDR6amdtT20zV1d0MGJNMno3UXpBd1RybUhPUnN0N25oMWRJ?=
 =?utf-8?B?dXo4ekljNytMUVk0aWxEQ05vUFJRTmM2bEcveXdKN09aYzZjTy9scUowWFNs?=
 =?utf-8?B?RVhEdG81d1ZwYlBPWDFkcStObHU0REdEaHZWVGhJejQvSng3UkltMTg4NWo1?=
 =?utf-8?B?QlpFTklEUjVKZ3NFS3FGSERISlgyaEc1ZjFib3pxZVhnV0lXVVlQT29rNzYz?=
 =?utf-8?B?SGErSytsOXZ3L0MvYjkzRGprYU9ENmNmZG1iN3RGMlJPWmVab0RLN2RFNDZu?=
 =?utf-8?B?amhMN0xCYU5xQ2JqYnRqS0lYQitiUDhGTzJIa1JzUWJJa2dUWHRYZWRBY29M?=
 =?utf-8?B?WFcxaHN2eXA5TXA0dnJjbnM1SmE5eGhqWUVrMm05ampPQWlIZll2NGdReW9O?=
 =?utf-8?Q?2+lknxcddQRzOzFXh66kZICA7sQcw81jnuJySFzT13de?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: df38eb12-663c-4859-db81-08de1511c38b
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2025 04:31:57.2340 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fizdWOKWUaXR1rPMgSWnxltWR70TpDLG50VxEj9S6izpMFPI8cGFUwVfk6It3f7wKFjjGhAkp/uWKtLWKCoJm5wS/SaMazegPRlnfdg+MXA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7856
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

SGksDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTU1NjIyLw0K
aTkxNS5DSS5GVUxMIC0gUmUtcmVwb3J0ZWQuDQoNClRoYW5rcywNClJhdmFsaS4NCg0KLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEk5MTUtY2ktaW5mcmEgPGk5MTUtY2ktaW5mcmEt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKYW51c3ogS3J6eXN6
dG9maWsNClNlbnQ6IDI0IE9jdG9iZXIgMjAyNSAxMzo1Ng0KVG86IEk5MTUtY2ktaW5mcmFAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnDQpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
U3ViamVjdDogUmU6IOKclyBpOTE1LkNJLkZ1bGw6IGZhaWx1cmUgZm9yIGRybS9pOTE1OiBBdm9p
ZCBsb2NrIGludmVyc2lvbiB3aGVuIHBpbm5pbmcgdG8gR0dUVCAocmV2MykNCg0KSGkgSTkxNS1j
aS1pbmZyYUBsaXN0cy5mcmVlZGVza3RvcC5vcmcsDQoNCk9uIEZyaWRheSwgMjQgT2N0b2JlciAy
MDI1IDA2OjM0OjI4IENFU1QgUGF0Y2h3b3JrIHdyb3RlOg0KPiA9PSBTZXJpZXMgRGV0YWlscyA9
PQ0KPiANCj4gU2VyaWVzOiBkcm0vaTkxNTogQXZvaWQgbG9jayBpbnZlcnNpb24gd2hlbiBwaW5u
aW5nIHRvIEdHVFQgKHJldjMpDQo+IFVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3Nlcmllcy8xNTU2MjIvDQo+IFN0YXRlIDogZmFpbHVyZQ0KPiANCj4gPT0gU3VtbWFy
eSA9PQ0KPiANCj4gQ0kgQnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fMTc0MTRfZnVsbCAt
PiBQYXRjaHdvcmtfMTU1NjIydjNfZnVsbCANCj4gPT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPiANCj4gU3VtbWFyeQ0KPiAtLS0tLS0tDQo+IA0K
PiAgICoqRkFJTFVSRSoqDQo+IA0KPiAgIFNlcmlvdXMgdW5rbm93biBjaGFuZ2VzIGNvbWluZyB3
aXRoIFBhdGNod29ya18xNTU2MjJ2M19mdWxsIGFic29sdXRlbHkgbmVlZCB0byBiZQ0KPiAgIHZl
cmlmaWVkIG1hbnVhbGx5Lg0KPiAgIA0KPiAgIElmIHlvdSB0aGluayB0aGUgcmVwb3J0ZWQgY2hh
bmdlcyBoYXZlIG5vdGhpbmcgdG8gZG8gd2l0aCB0aGUgY2hhbmdlcw0KPiAgIGludHJvZHVjZWQg
aW4gUGF0Y2h3b3JrXzE1NTYyMnYzX2Z1bGwsIHBsZWFzZSBub3RpZnkgeW91ciBidWcgdGVhbSAo
STkxNS1jaS1pbmZyYUBsaXN0cy5mcmVlZGVza3RvcC5vcmcpIHRvIGFsbG93IHRoZW0NCj4gICB0
byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZhbHNl
IHBvc2l0aXZlcyBpbiBDSS4NCj4gDQo+ICAgDQo+IA0KPiBQYXJ0aWNpcGF0aW5nIGhvc3RzICgx
MSAtPiAxMSkNCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+IA0KPiAgIE5vIGNo
YW5nZXMgaW4gcGFydGljaXBhdGluZyBob3N0cw0KPiANCj4gUG9zc2libGUgbmV3IGlzc3Vlcw0K
PiAtLS0tLS0tLS0tLS0tLS0tLS0tDQo+IA0KPiAgIEhlcmUgYXJlIHRoZSB1bmtub3duIGNoYW5n
ZXMgdGhhdCBtYXkgaGF2ZSBiZWVuIGludHJvZHVjZWQgaW4gUGF0Y2h3b3JrXzE1NTYyMnYzX2Z1
bGw6DQo+IA0KPiAjIyMgSUdUIGNoYW5nZXMgIyMjDQo+IA0KPiAjIyMjIFBvc3NpYmxlIHJlZ3Jl
c3Npb25zICMjIyMNCj4gDQo+ICAgKiBpZ3RAa21zX3NldG1vZGVAYmFzaWM6DQo+ICAgICAtIHNo
YXJkLXJrbDogICAgICAgICAgW1BBU1NdWzFdIC0+IFtGQUlMXVsyXQ0KPiAgICBbMV06IGh0dHBz
Oi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE3NDE0L3NoYXJkLXJr
bC01L2lndEBrbXNfc2V0bW9kZUBiYXNpYy5odG1sDQo+ICAgIFsyXTogDQo+IGh0dHBzOi8vaW50
ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTYyMnYzL3NoYXJkLXJr
bC0NCj4gMi9pZ3RAa21zX3NldG1vZGVAYmFzaWMuaHRtbA0KPiANCj4gICAqIGlndEBrbXNfc2V0
bW9kZUBiYXNpY0BwaXBlLWEtaGRtaS1hLTE6DQo+ICAgICAtIHNoYXJkLXJrbDogICAgICAgICAg
Tk9UUlVOIC0+IFtGQUlMXVszXSArMSBvdGhlciB0ZXN0IGZhaWwNCj4gICAgWzNdOiANCj4gaHR0
cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTU1NjIydjMv
c2hhcmQtcmtsLQ0KPiAyL2lndEBrbXNfc2V0bW9kZUBiYXNpY0BwaXBlLWEtaGRtaS1hLTEuaHRt
bA0KDQpDaGFuZ2VzIHRlc3RlZCBpbiB0aGlzIHByZS1tZXJnZSBydW4gY2FuIG9ubHkgYWZmZWN0
IENIViBhbmQgQlhUIHBsYXRmb3JtcywgdGhlbiB0aGUgYWJvdmUgcG90ZW50aWFsIHJlZ3Jlc3Np
b25zIGFyZSBub3QgcmVsYXRlZC4gIFBsZWFzZSB1cGRhdGUgZmlsdGVycyBhbmQgcmUtcmVwb3J0
Lg0KDQpUaGFua3MsDQpKYW51c3oNCg0KPiANCj4gICANCj4gS25vd24gaXNzdWVzDQo+IC0tLS0t
LS0tLS0tLQ0KLi4uDQoNCg0KDQo=
