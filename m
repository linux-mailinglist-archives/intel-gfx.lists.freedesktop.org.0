Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9A78B62D2
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 21:49:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9A11112103;
	Mon, 29 Apr 2024 19:48:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QbbnHQbE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 440FD10FFE6
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 19:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714420138; x=1745956138;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=DuzJFPtT90NEoZccXkaA3BUM+ztnHN433GeLo5glfnc=;
 b=QbbnHQbEdHdqwxVlZI9njnMLK2TNp+NO38G44Cm17Vzr/+XXxX/62J1Q
 XtvqShOOAKBNBa2gxsP2Cd2x1RYzzc1P+kMMV1eQvpw2dG0JRQ9ZrKrKg
 7qLMZigUl0B7plWXbIGk8FRKUy0SfM7iDnYmmRTceBCjehJXdjHJ/armF
 2Sy+tgSiLgVagvCvyQeOkg4L9LIY8lCIaAqQFPTnYq5kvgKw9n00QsEgY
 es7F+Z5o2pjrvTWZBNhW8//k2qbBAVVJGucegjpvkGAr6LfCTazd1234A
 msa7EJ7TCBlD+gNo3Dmav497FammqBdidavQQmwEVeox8dqNAUlPmFIee A==;
X-CSE-ConnectionGUID: Ygo5Tfi0Q6iJ+hD5JZFsoQ==
X-CSE-MsgGUID: 0a7f+BN8TbGjEvQMn8/fQQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="9961437"
X-IronPort-AV: E=Sophos;i="6.07,240,1708416000"; 
   d="scan'208";a="9961437"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 12:48:58 -0700
X-CSE-ConnectionGUID: yZM3hc+MRyWqEjKtSvNeBg==
X-CSE-MsgGUID: Nid4OkIyRM6BlVZdMXRxzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,240,1708416000"; d="scan'208";a="30855446"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Apr 2024 12:48:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Apr 2024 12:48:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Apr 2024 12:48:56 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 29 Apr 2024 12:48:56 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 29 Apr 2024 12:48:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XemITvBTpuM+myjezaSYGLWh/8rbXZ/gmjk1RkqYUv20Hl5H4ht1y3G61XNbvaQbBCogiFEcd/c8A7isRqDVP35TtgvlcrQa5oB2L4myoe2r7Ij+6GjoDnl6GaOBBBg2kLv3P0uuMnDRVjwNVeNgriA6qPBFVxuKSoYYVypB0as+TAoWJp4sridCWcKTWpB7uNF11iKLY074lSVX95iYSTcuq2Okztq1UzB5O3Ub4owZTyx6t2tbCCowfO9Mh9aqGLHUIacjuzG0aCwt5jArS5vkw7yNE1a3hepAtWTv3AyMygs3gvQeDHjfqtrh2HPpBQJU26jQyCPOUXUXflpsgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DuzJFPtT90NEoZccXkaA3BUM+ztnHN433GeLo5glfnc=;
 b=SveSmW3QqwZ6sukTOZKqH3JkND1He2KlpFTy/GUFO+dboPxNuu5fZtj/r+EaFLSc7A+Xxawh4uDVeX7vkAAk7OJlcs+muMnb6S9WXGOp+ofxpYV4tRzabXxD1YMMZZUn4yP/6YLvF+5nUIqulCl55SfOohmBbhkQHfbT2fu/wPYzAX+TSbz9wwvtNFvW6IuE6tddV8LYNXDrCb1dxgR2RAdews8tnkDVDmxMeS8iHoUhVTD+4PM7yAtB7u1wqT6AaReN7OynBOLghcZFFaCfjmwVtGNatvRelebv4pLLwkNd62ihC65YY5bBBOD1zBjGCutdhLzslCJ17DVMD+BfnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DM6PR11MB4659.namprd11.prod.outlook.com (2603:10b6:5:2a5::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Mon, 29 Apr
 2024 19:48:54 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f%4]) with mapi id 15.20.7519.031; Mon, 29 Apr 2024
 19:48:54 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v8 06/11] drm/i915/psr: Modify intel_dp_get_su_granularity
 to support panel replay
Thread-Topic: [PATCH v8 06/11] drm/i915/psr: Modify
 intel_dp_get_su_granularity to support panel replay
Thread-Index: AQHami3zzVHdXa4kJEepTOVyLOCVmrF/p9sQ
Date: Mon, 29 Apr 2024 19:48:54 +0000
Message-ID: <PH7PR11MB598110B26DDF4EE60F5C6925F91B2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240429120755.3990652-1-jouni.hogander@intel.com>
 <20240429120755.3990652-7-jouni.hogander@intel.com>
In-Reply-To: <20240429120755.3990652-7-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DM6PR11MB4659:EE_
x-ms-office365-filtering-correlation-id: 73742c87-1082-48cd-2d06-08dc688566fe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?bElYRzFhaVN3ZU5VWDNWdXBYVWZ1WTdwdmRqd2RXbzcyUjYrajRMazc0UnFY?=
 =?utf-8?B?RHlkNHJGTlNYallOODNObTRuT0ZKWGVmOU0vVFN1OVUyL3JKRENPdEt1cjFx?=
 =?utf-8?B?M0lLMWcvQkViSUo5VFNPNldFUlRLMi9pa01lcnZyalJ0Z0ZSSmlVY21XK3Zh?=
 =?utf-8?B?MGJUWUFDZUZHNUhyc2F2ck54NEFwZ0FJaW1jaVFFZVNkK0ZFZHRTWVdNSTd4?=
 =?utf-8?B?eHJHVk5GRTFUc0kvVEVqbnBRK1loOHVXRUplbUl4WFRkZE5GZE5jYy9xR3Nl?=
 =?utf-8?B?K2djamJ1TDdTbmRqa2lSZm5YZ0l5cHFjTU9aQ0VNSDBUbjJFajM1MzhqY0FD?=
 =?utf-8?B?eFIxaGhTM0hkNDMrelIzOEt1b0I5Z1dZQVFDOVZoNFZ6MFFqMlNHeGFVWVJ4?=
 =?utf-8?B?N0xOUU1RRTl0R0dCWlU4RUFXeGtLaEoxQU5xdndrdW5neThRT0JHSU5BcTN1?=
 =?utf-8?B?elVZMHMzaG1PMnBTeVJNUHZtV0FMWkVWZDhaZ2c4MHhjWWc2RHhySjVQdHFx?=
 =?utf-8?B?dE5XVFFlcVIzU0xWR0ZxelhtcHFtUURKOVVMM2syOWxlL1Z0WWRxSk1LWTE1?=
 =?utf-8?B?bkdJMlRYL3BkekhGMVJDT1JhYXVxSTNQVXF5cHQxN3ZWSS9FSTBzM3RpKyt6?=
 =?utf-8?B?d3dwRk93c3F6TCtmc2pmNms4WGY1TG9mUG50MXA4QzBCVWxrandZLzVZUDVl?=
 =?utf-8?B?dHJzdFVpVEg2S2Q0YmRDOTJVV3k4NVFxVjgwMzRjb3pMaGdJejFOdXdTUExK?=
 =?utf-8?B?TnJzcUtOczg1K1Z0b1gvbXo2ZjVQMEpFSjlWR2hOQ2NjS3UzSUtjNHB5U0ZS?=
 =?utf-8?B?bDlOL1F3OGUramFac3Q3VVJzVXZ6ejI5RFVOcVJSNVBFSm9GWk55blZiMjdT?=
 =?utf-8?B?Z3FkMEwxYnp6dmhsWE41MVpiRlJDU1YvMHpKSUJYWGFTdzJJN1JaelNTNXI5?=
 =?utf-8?B?WkVwMjZGYUxqTVdPTTRNMzFxcHJVUjlZZGNKc1Q4TVJpUDZGcEVHeTVQNnYv?=
 =?utf-8?B?SWpoQUNYRktRNTZGeEt3NXhSdTZQaEJkSURCTE1QZHYyVzU4N2lrNmVtWHVi?=
 =?utf-8?B?cEZpZWxVekxkUzdxeVQybUl4YW1mK2toUjVoanMyWTRLdXBxV1A4UzUwd1pj?=
 =?utf-8?B?Y0xPaERzSTN3d3VNUFBBSzF5a2x3NjM3dnZobG5NQkk5N2lCYkNZYVhFcnJz?=
 =?utf-8?B?OWRMZ1Ewdk1QbTVhaXFUVjg3WEhOZzRRZS9jWU1CM2Y3Y2g5WFJmMEpSRFFY?=
 =?utf-8?B?QWRXWlBLNlBTZUE0TE1Oa1RiM0FEWFVGaHM3d1BEQ0dwVUlEc3E2ZzZGd1Fa?=
 =?utf-8?B?TXQxRE1BdVR6aE85VG5oNU5kSnpFenAxWXpONGFEdHNtcmVNTTdKQjkzRHk1?=
 =?utf-8?B?SmNONjVtRzA0dy92bFg5RlkvL0l2L1hGMHZFUzU1MlhNcWNXU1ZuMnhmV0w1?=
 =?utf-8?B?cEhtZXM4MStaM1dkZDNkNWw3VGI5YTdqckFwVUI5K0Q3cDA1QnZOYWJpUjVI?=
 =?utf-8?B?VTU4U2xOL05jb2dqTUN4d2p3eVJTVEVBTDk3Q3RINmUxWVRTc3pQek9DWHgr?=
 =?utf-8?B?Nzh1bXh1dllSejlKMWRWSkZKUlljb0c1cFM5Y0M4Ukx0Ukd4S0RJWE5UMTZM?=
 =?utf-8?B?L0pzbnYrSmU2NHNGZENnOGhsWi9RQjBZNi94L2g0OWJibWdDSHNENUNiUTZX?=
 =?utf-8?B?Z1ROSEMzR0k5MWJEVUs1R2syQ25yM3pDckd4dnk1aVlEeEx2VUFxZG9GM2VU?=
 =?utf-8?Q?LnFT7huGI8NJYbz2V/7jBO2xp8Rk8S2JI70i5Ml?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q2IyZlpoZ0VQRDc5NU9YUk5YT1hvbzEzVnpmU3MwRXpPbTBTcExnWTBadFVy?=
 =?utf-8?B?a3EzQkM4VTJ5ZjFJUGp4ejdkKzNDendjbTU4UXpyYjZENGZsWVBCM1QvZHlS?=
 =?utf-8?B?TmFobGp6cmtPOEFuV21iVVNsTHZmMlExZEFhcCtJNHB2VzFnNlF4aVhtV2Zi?=
 =?utf-8?B?cEtnT1IrMENqcXhjNmNzUlZwd0k4aEpxeUZRWENYOU1HVGN3Y0QxRk5WZTVE?=
 =?utf-8?B?cGhjd0s1dmhKN0tUL0tVSVk2RlhobHJwZGt6eVd1NXdFMXBXKyt2b2tiYWRO?=
 =?utf-8?B?TUdxRXVPVHAvbXZheDF3MWlHVXhHanY3SzhENWV1WGxxUlQ3VGhJNTNVUm0x?=
 =?utf-8?B?T3BhM1hHNFd1cXdPZmhUYW5ZTlJZcDMyUCtaWnp3YmZhWjYyQmlkajJOYWJj?=
 =?utf-8?B?TVVyZ044MHJ6VlVNdmxCVmcvZkgrVlhSZ3JNZWh1WkJGTnVFS25kcHJTc3F1?=
 =?utf-8?B?U3d5WjlUdGxPc2lSbGxxZ1JiT1J0aitDZi9CN2I0Umg2YTQzMk9UeGRZMUk3?=
 =?utf-8?B?Nk1jYTdTMFJNaFdRKzE2NndOYlZsR0JXaG9FMTN1cEtVdGNXUzFFUFlraTBO?=
 =?utf-8?B?bjhkWjhTemUrQlRoMy9nNGRsWVpPMWpzSlM4K21maVhabnQ3ZFNlZGxzNllE?=
 =?utf-8?B?Q25VMUJqbkIzN2ttYlI2WDBwTGR5dDZ5QUxLQUZaWmNGYnk5RSt6SzdBSk5W?=
 =?utf-8?B?elNBYWdqTnVBY3hLb2dMcEkyeEJmdlB5NFZDRG42NysrOFRJZElMK2h0cDFB?=
 =?utf-8?B?YmZyUmVlcTdnMnhwUkk3ZVR0c0JuVUlJOHRWb056VTRYZFR0eCtibXNwekxo?=
 =?utf-8?B?dWxnZWNFYXJyUnpyanpnbWhtRXkweUYxUC8rUlBNaGI2N1BmQklFTGhpd0I3?=
 =?utf-8?B?cUpSekExY2NYSVJiWGQvNHhxQTlNYzkvTDM2aDlWb2E5Vm43c3hONGtHUzM1?=
 =?utf-8?B?R2RFS3BWRmRpWGFJZWZERVF2YjIwUkZ5NEt5Y1o4V2Y3RElpbWxNSWdRelNJ?=
 =?utf-8?B?dCtzZlRNQUJMbHBNcU5ndGM0SVFiZEt0RXZwQ2hRMzNNN3RjbzVQcThCbjUz?=
 =?utf-8?B?ZFVpWkNabW5mNkh0bTJ0OVorN3NEZEFRdUZLVFlEK3BmdUFZcndBUnk3dmZ5?=
 =?utf-8?B?N1NUbWZDRzllaXZNRSs1akhDZFJGaUlObjVOb2FPeVBkaUtIM25BOXNqNGdk?=
 =?utf-8?B?NWJlamxFWDFoc1hzVUVUWnNWb2NJQ09qdW9KRlZjVTF3dSt1UEVqWko0TmxT?=
 =?utf-8?B?ekZpR0tXcW1LdE5xMGxlVEdnVTFpWGVCTG85ak91cEF1Rm15TDd4cXBNNjRN?=
 =?utf-8?B?THovOEtwb00yejRwd3NwSDVaRVZEcUI2R1ptbWlDZ2ZXM3lrZ1BEM2xiUHpE?=
 =?utf-8?B?dDlMZWhycXVONHBxeDdROXFGWm1HTGpMMGZPWmozem1IcitZTy9NMGVkQnA0?=
 =?utf-8?B?SnprU0NCWXRJd01GVmwyR1IwdFVXeDJweDZNU1ZWamxhK1VVOFBIUmVGNHE4?=
 =?utf-8?B?S0dZOWdKTEI4YVpXSXowcFN4VDc1cVpSWFRDbjk3L3pQMDdGNFFWZk1OR0pN?=
 =?utf-8?B?NnFXT2xXU1dHYnlNV1U5clJ4bmtPSVVwdXRJalZSaUVuT09CT1pRRi9mM0do?=
 =?utf-8?B?MTd6ay9yMzM5Qmt6ZkhFUHA2bjQxVTdaTll3QU8yR1dKS1IrSWZ2L0hPV29i?=
 =?utf-8?B?RnBsQThUdGpEYmRCcGQ3OW9zR0lpcmdGK0lMUDlrb2cyRkgwNW5DeHZPTm5u?=
 =?utf-8?B?M0dzazhGcmN6U1NFcDcvaTE0Mzc4dDZrNkY0THV2a0tnZjNyVm1tNmhHUnkw?=
 =?utf-8?B?YWdBcmUvSFc3RmJJaWNMeWRaeisyTUx1WXBwcDlPbmphMnlEYnkvVnN1RXdX?=
 =?utf-8?B?ZnpoM24ybmFmNDFERFE1YlhPNGZRSDBuWml3UjQ3Nnc2emVtZlJpdVAzSmF5?=
 =?utf-8?B?K0xEWGt1OExndWdqZnJnby90VFlCWFRHOVhYN3lHdUo4SXc4NUVFbzErZjhQ?=
 =?utf-8?B?c0JodklIK2J5M20wYk9JVzhNUTAzcVVwVEhKYTZsZU1zS3VBK0ljL21oTDRY?=
 =?utf-8?B?Z0dVeTdndTFzVXdqT1d3aFQxUVFMbm14c0EzZlVSbElrZFRYeXRNQklJVC83?=
 =?utf-8?Q?rCMx++JUSPkFSYOQiZv0g4m+7?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73742c87-1082-48cd-2d06-08dc688566fe
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Apr 2024 19:48:54.7133 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xlXXoU1szYxHqgxB2nN4cuX9YLoaphurYlEXbVp30b3wWfxAmmKVr8lD++hBrnIsEvJOtE0MAHhWZZONYKJ6tg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4659
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgQXByaWwgMjksIDIw
MjQgNTozOCBQTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzog
TWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5p
DQo+IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2OCAwNi8x
MV0gZHJtL2k5MTUvcHNyOiBNb2RpZnkgaW50ZWxfZHBfZ2V0X3N1X2dyYW51bGFyaXR5DQo+IHRv
IHN1cHBvcnQgcGFuZWwgcmVwbGF5DQo+IA0KPiBDdXJyZW50bHkgaW50ZWxfZHBfZ2V0X3N1X2dy
YW51bGFyaXR5IGRvZXNuJ3Qgc3VwcG9ydCBwYW5lbCByZXBsYXkuDQo+IFRoaXMgZml4IG1vZGlm
aWVzIGl0IHRvIHN1cHBvcnQgcGFuZWwgcmVwbGF5IGFzIHdlbGwuDQo+IA0KPiB2MzogdXNlIGNv
cnJlY3Qgb2Zmc2V0IGZvciBEUF9QQU5FTF9QQU5FTF9SRVBMQVlfQ0FQQUJJTElUWQ0KPiB2Mjog
cmVseSBvbiBQU1IgZGVmaW5pdGlvbnMgb24gY29tbW9uIGJpdHMNCj4gDQo+IFNpZ25lZC1vZmYt
Ynk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA2MiArKysrKysrKysr
KysrKysrKysrKystLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA1NSBpbnNlcnRpb25zKCspLCA3IGRl
bGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jDQo+IGluZGV4IGI5NGY4ZTMzZWQxZi4uODA3NDIzZGIzYTEzIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTQ2Niw2ICs0NjYsNDAgQEAg
c3RhdGljIHU4IGludGVsX2RwX2dldF9zaW5rX3N5bmNfbGF0ZW5jeShzdHJ1Y3QNCj4gaW50ZWxf
ZHAgKmludGVsX2RwKQ0KPiAgCXJldHVybiB2YWw7DQo+ICB9DQo+IA0KPiArc3RhdGljIHU4IGlu
dGVsX2RwX2dldF9zdV9jYXBhYmlsaXR5KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApIHsNCj4g
Kwl1OCBzdV9jYXBhYmlsaXR5Ow0KPiArDQo+ICsJaWYgKGludGVsX2RwLT5wc3Iuc2lua19wYW5l
bF9yZXBsYXlfc3Vfc3VwcG9ydCkNCj4gKwkJZHJtX2RwX2RwY2RfcmVhZCgmaW50ZWxfZHAtPmF1
eCwNCj4gKwkJCQkgRFBfUEFORUxfUEFORUxfUkVQTEFZX0NBUEFCSUxJVFksDQo+ICsJCQkJICZz
dV9jYXBhYmlsaXR5LCAxKTsNCg0KZHJtX2RwX2RwY2RfcmVhZGIoKSBjYW4gYmUgdXNlZCBoZXJl
LCBvdGhlcndpc2UgbG9va3MgZ29vZCB0byBtZS4NCg0KUmVnYXJkcywNCkFuaW1lc2gNCg0KPiAr
CWVsc2UNCj4gKwkJc3VfY2FwYWJpbGl0eSA9IGludGVsX2RwLT5wc3JfZHBjZFsxXTsNCj4gKw0K
PiArCXJldHVybiBzdV9jYXBhYmlsaXR5Ow0KPiArfQ0KPiArDQo+ICtzdGF0aWMgdW5zaWduZWQg
aW50DQo+ICtpbnRlbF9kcF9nZXRfc3VfeF9ncmFudWxhcml0eV9vZmZzZXQoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCkgew0KPiArCXJldHVybiBpbnRlbF9kcC0+cHNyLnNpbmtfcGFuZWxfcmVw
bGF5X3N1X3N1cHBvcnQgPw0KPiArCQlEUF9QQU5FTF9QQU5FTF9SRVBMQVlfWF9HUkFOVUxBUklU
WSA6DQo+ICsJCURQX1BTUjJfU1VfWF9HUkFOVUxBUklUWTsNCj4gK30NCj4gKw0KPiArc3RhdGlj
IHVuc2lnbmVkIGludA0KPiAraW50ZWxfZHBfZ2V0X3N1X3lfZ3JhbnVsYXJpdHlfb2Zmc2V0KHN0
cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApIHsNCj4gKwlyZXR1cm4gaW50ZWxfZHAtPnBzci5zaW5r
X3BhbmVsX3JlcGxheV9zdV9zdXBwb3J0ID8NCj4gKwkJRFBfUEFORUxfUEFORUxfUkVQTEFZX1lf
R1JBTlVMQVJJVFkgOg0KPiArCQlEUF9QU1IyX1NVX1lfR1JBTlVMQVJJVFk7DQo+ICt9DQo+ICsN
Cj4gKy8qDQo+ICsgKiBOb3RlOiBCaXRzIHJlbGF0ZWQgdG8gZ3JhbnVsYXJpdHkgYXJlIHNhbWUg
aW4gcGFuZWwgcmVwbGF5IGFuZCBwc3INCj4gKyAqIHJlZ2lzdGVycy4gUmVseSBvbiBQU1IgZGVm
aW5pdGlvbnMgb24gdGhlc2UgImNvbW1vbiIgYml0cy4NCj4gKyAqLw0KPiAgc3RhdGljIHZvaWQg
aW50ZWxfZHBfZ2V0X3N1X2dyYW51bGFyaXR5KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApICB7
DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBkcF90b19pOTE1KGludGVsX2Rw
KTsgQEAgLTQ3MywxOA0KPiArNTA3LDI5IEBAIHN0YXRpYyB2b2lkIGludGVsX2RwX2dldF9zdV9n
cmFudWxhcml0eShzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwKQ0KPiAgCXUxNiB3Ow0KPiAg
CXU4IHk7DQo+IA0KPiAtCS8qIElmIHNpbmsgZG9uJ3QgaGF2ZSBzcGVjaWZpYyBncmFudWxhcml0
eSByZXF1aXJlbWVudHMgc2V0IGxlZ2FjeSBvbmVzDQo+ICovDQo+IC0JaWYgKCEoaW50ZWxfZHAt
PnBzcl9kcGNkWzFdICYNCj4gRFBfUFNSMl9TVV9HUkFOVUxBUklUWV9SRVFVSVJFRCkpIHsNCj4g
KwkvKg0KPiArCSAqIFRPRE86IERvIHdlIG5lZWQgdG8gdGFrZSBpbnRvIGFjY291bnQgcGFuZWwg
c3VwcG9ydGluZyBib3RoIFBTUg0KPiBhbmQNCj4gKwkgKiBQYW5lbCByZXBsYXk/DQo+ICsJICov
DQo+ICsNCj4gKwkvKg0KPiArCSAqIElmIHNpbmsgZG9uJ3QgaGF2ZSBzcGVjaWZpYyBncmFudWxh
cml0eSByZXF1aXJlbWVudHMgc2V0IGxlZ2FjeQ0KPiArCSAqIG9uZXMuDQo+ICsJICovDQo+ICsJ
aWYgKCEoaW50ZWxfZHBfZ2V0X3N1X2NhcGFiaWxpdHkoaW50ZWxfZHApICYNCj4gKwkgICAgICBE
UF9QU1IyX1NVX0dSQU5VTEFSSVRZX1JFUVVJUkVEKSkgew0KPiAgCQkvKiBBcyBQU1IyIEhXIHNl
bmRzIGZ1bGwgbGluZXMsIHdlIGRvIG5vdCBjYXJlIGFib3V0IHgNCj4gZ3JhbnVsYXJpdHkgKi8N
Cj4gIAkJdyA9IDQ7DQo+ICAJCXkgPSA0Ow0KPiAgCQlnb3RvIGV4aXQ7DQo+ICAJfQ0KPiANCj4g
LQlyID0gZHJtX2RwX2RwY2RfcmVhZCgmaW50ZWxfZHAtPmF1eCwNCj4gRFBfUFNSMl9TVV9YX0dS
QU5VTEFSSVRZLCAmdywgMik7DQo+ICsJciA9IGRybV9kcF9kcGNkX3JlYWQoJmludGVsX2RwLT5h
dXgsDQo+ICsJCQkgICAgIGludGVsX2RwX2dldF9zdV94X2dyYW51bGFyaXR5X29mZnNldChpbnRl
bF9kcCksDQo+ICsJCQkgICAgICZ3LCAyKTsNCj4gIAlpZiAociAhPSAyKQ0KPiAgCQlkcm1fZGJn
X2ttcygmaTkxNS0+ZHJtLA0KPiAtCQkJICAgICJVbmFibGUgdG8gcmVhZA0KPiBEUF9QU1IyX1NV
X1hfR1JBTlVMQVJJVFlcbiIpOw0KPiArCQkJICAgICJVbmFibGUgdG8gcmVhZCBzZWxlY3RpdmUg
dXBkYXRlIHggZ3JhbnVsYXJpdHlcbiIpOw0KPiAgCS8qDQo+ICAJICogU3BlYyBzYXlzIHRoYXQg
aWYgdGhlIHZhbHVlIHJlYWQgaXMgMCB0aGUgZGVmYXVsdCBncmFudWxhcml0eSBzaG91bGQNCj4g
IAkgKiBiZSB1c2VkIGluc3RlYWQuDQo+IEBAIC00OTIsMTAgKzUzNywxMiBAQCBzdGF0aWMgdm9p
ZCBpbnRlbF9kcF9nZXRfc3VfZ3JhbnVsYXJpdHkoc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9k
cCkNCj4gIAlpZiAociAhPSAyIHx8IHcgPT0gMCkNCj4gIAkJdyA9IDQ7DQo+IA0KPiAtCXIgPSBk
cm1fZHBfZHBjZF9yZWFkKCZpbnRlbF9kcC0+YXV4LA0KPiBEUF9QU1IyX1NVX1lfR1JBTlVMQVJJ
VFksICZ5LCAxKTsNCj4gKwlyID0gZHJtX2RwX2RwY2RfcmVhZCgmaW50ZWxfZHAtPmF1eCwNCj4g
KwkJCSAgICAgaW50ZWxfZHBfZ2V0X3N1X3lfZ3JhbnVsYXJpdHlfb2Zmc2V0KGludGVsX2RwKSwN
Cj4gKwkJCSAgICAgJnksIDEpOw0KPiAgCWlmIChyICE9IDEpIHsNCj4gIAkJZHJtX2RiZ19rbXMo
Jmk5MTUtPmRybSwNCj4gLQkJCSAgICAiVW5hYmxlIHRvIHJlYWQNCj4gRFBfUFNSMl9TVV9ZX0dS
QU5VTEFSSVRZXG4iKTsNCj4gKwkJCSAgICAiVW5hYmxlIHRvIHJlYWQgc2VsZWN0aXZlIHVwZGF0
ZSB5IGdyYW51bGFyaXR5XG4iKTsNCj4gIAkJeSA9IDQ7DQo+ICAJfQ0KPiAgCWlmICh5ID09IDAp
DQo+IEBAIC01ODgsNyArNjM1LDggQEAgdm9pZCBpbnRlbF9wc3JfaW5pdF9kcGNkKHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHApDQo+ICAJaWYgKGludGVsX2RwLT5wc3JfZHBjZFswXSkNCj4gIAkJ
X3Bzcl9pbml0X2RwY2QoaW50ZWxfZHApOw0KPiANCj4gLQlpZiAoaW50ZWxfZHAtPnBzci5zaW5r
X3BzcjJfc3VwcG9ydCkNCj4gKwlpZiAoaW50ZWxfZHAtPnBzci5zaW5rX3BzcjJfc3VwcG9ydCB8
fA0KPiArCSAgICBpbnRlbF9kcC0+cHNyLnNpbmtfcGFuZWxfcmVwbGF5X3N1X3N1cHBvcnQpDQo+
ICAJCWludGVsX2RwX2dldF9zdV9ncmFudWxhcml0eShpbnRlbF9kcCk7DQo+ICB9DQo+IA0KPiAt
LQ0KPiAyLjM0LjENCg0K
