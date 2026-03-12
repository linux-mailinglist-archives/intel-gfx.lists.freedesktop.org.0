Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oEJBE4R6sml/MwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:34:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8473526EFCD
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:34:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 137E410EA10;
	Thu, 12 Mar 2026 08:34:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QxDRosHV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC5D410EA0F;
 Thu, 12 Mar 2026 08:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773304449; x=1804840449;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pz/XVQgkSVEIRDWDk6l/DrVgnkKSDdDY+fkSKN8Lsgw=;
 b=QxDRosHV/08TUtsZRKKkXGwNLZti4K2xtPPNtm1VugLxYDkYSYW1/ycQ
 Qbb0JSePf+FlGDJyNJKOnorkV+EGJfAF1E3LpK7ZdttuOXfwaj02pDgOi
 fCdtBMYevyeO+Ew01hzRlSO2q6vuAzEtn2RT1/pGdkmE6G9sthws9xWb3
 CfCOoXlVK1XmnFLxUgJLFhsZe+0mBg8g2Bj5KudAMotW/hRtHggIrnlLi
 R2Pw6/8FanSrpOuplNiYcDEnUMPdiVb44Gj470vYqd4Z5455rE8Yz6sNs
 JZNyU8OddS6Pq9RDY0khw7NJqTtM5JI4B2UkbeEbGFCyH19tSDjo64IgH g==;
X-CSE-ConnectionGUID: wU4zniJjQuqWz6t9Cw5p5A==
X-CSE-MsgGUID: R9P2ZjRKSw2dAugU7rKLSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="85740540"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="85740540"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 01:34:08 -0700
X-CSE-ConnectionGUID: /OlqkBrLTT2sVFc5bZxBkA==
X-CSE-MsgGUID: M2F0+FRLScC8a4Qbe3o4Tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="223215958"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 01:34:08 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 01:34:07 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 12 Mar 2026 01:34:07 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.16)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 01:34:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QYwJEYC5DZEB1te5Eg5M7Wa1Xrfo0qEId5YcQ1vepZJKK5ibZkrV1/13CZ2msJ2IVCSKDQB4CBihxOG79/5lo1tXVM7eAfNaghADPItP3yvOSixIA18zMHVRnkyDZS+LdszaHuWQJ9FyGMWIN6KdWLfOgEqsTp4i2lCEjnFi2oHlcH6l/eLVEUQTfcgCLl4B7y3Nh2dZNSVG1f7isGs4cfaoUXrpD2336VFPrIAgrncYBS1Xi3zEtufDNTfipNImHTskX7IxU6KNvmxesGpJqIh2h2q5UaIQFfx7VmUXmL9q53/U9+emlmt968ys/wU+KS6cXBG1Saj/cOli34SS4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pz/XVQgkSVEIRDWDk6l/DrVgnkKSDdDY+fkSKN8Lsgw=;
 b=BwfwkhyIlFL2gs8tPJe9hGxE4fV/7cv9BWQNnI9Eu+h0fHi90dyaDDrPz/bc0MsmOMbhjb4gsHY6L+NTZPR/6XD92r4TLoB6/WaPWTijcgzzUPc9+oj1GONfDSNEXEQXKPJffkx/4q4JWo/bXOTnHRern2X/oxjggw4CdJdWll2E5AvpW25tA6O8GUOFxlCHEK2ji/5EhbYCXrUQfzqKbsBqjPQCKlBzHuIvIdxRvaeLDUQGsKHmrcfGWftItwDn/DnftVeiLCoKieuxnlrUulYC+3/oo6Ww2FTx10znzhxJ3+I+7Jt1g+bvvHyQnYpqm856f0M32cEhSu3c5zuvbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 CY5PR11MB6282.namprd11.prod.outlook.com (2603:10b6:930:22::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9723.6; Thu, 12 Mar 2026 08:34:00 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::603c:772d:6793:d4eb%7]) with mapi id 15.20.9723.004; Thu, 12 Mar 2026
 08:33:59 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Murthy, Arun R" <arun.r.murthy@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH v7 3/3] drm/i915/display: Disable Panel Replay for
 DP-tunneling without optimization
Thread-Topic: [PATCH v7 3/3] drm/i915/display: Disable Panel Replay for
 DP-tunneling without optimization
Thread-Index: AQHcseFo431L1U1rw0C0BVMFl+G4A7WqbBQAgAAl8pA=
Date: Thu, 12 Mar 2026 08:33:59 +0000
Message-ID: <DS0PR11MB8049104740CE18CEAFE45011F944A@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20260312050035.3493690-1-animesh.manna@intel.com>
 <20260312050035.3493690-4-animesh.manna@intel.com>
 <22f4f23f363fcfd24114f46aeb113edb7bba7f77.camel@intel.com>
In-Reply-To: <22f4f23f363fcfd24114f46aeb113edb7bba7f77.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|CY5PR11MB6282:EE_
x-ms-office365-filtering-correlation-id: 6a29ba70-5f6f-4644-2bb1-08de80121be7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700021|7053199007|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: f1Sv+ZeiDWQUEiyWa4e64v4aGF/LqoFMEGhZVJ5K/Ns5jfbE50vl0s3KGRD5Sz5skQzY9FCMVMxxBd3X2Axs8eqbZzl86O0YvhCgtafZouz53mH9syGMZcJlPCmDbAEpwF5o/6ZW15FX1VrFwzCekc9NFqNXR3tdFjepGGoScxyzAcBo0v4qAVauSA8bFZ1xEWW76eRAk57S6eYiAod5LP9TmKsJmZXULjesGTrz8hpuYcQvFsxrTUDePrt+s9bUJ1vMymQpFUEyDIPj7cMMUIhIVRQ1G2cZaZbg3JyM8ZXa32Q1sB6PHZnmzp+Ib6b6b+UtXvVRao6GyaQH/mlheVhx7EQb6uSsyLU8V+392QiJUKhRHU7AbeXxakMLguDEgOpARpcRd2V5CKvooSp5gt+kQqFeXjVDifhguTdz3XrCSUeljkDcI+g1aA/69H4Cl49hKpq1dQ3ChEhJhdNqg89orXMtXZoBydBO5L6ykjNGOQP4VZAtGNA35WlDWmHxR+F6PGJexp92rKGsPd6yIc9WbUodWHH3GMbDetVcseRzuK3xh4G6TpdELDTE/3cxemIOzIGyJB4XZsYTfjLUQNhMunO82JlXBiKNjXciyUOeYVLjochuZGKNHki6Kl2ubdYqH7fSa7JROjRZJTsMc5SIZwmH81AsRCxu6D2HkzQpp1HLIl10ODLlf1uNpDLk9Mwl0WKQ+fRFq9ACF5fp2dFfpcDAj+duTYq1cPCn3l9n6oJvT2mlblwYi3AgO+h4qAerF4Ydpm0POHw60PK1GOOTxUeK2cU8GYBqNlXWDiU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021)(7053199007)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a2hLWHVmSThoR1RnclJhaVJ3dXljMjJIa1M1L2JLSGhJWSsvN2M2bGxTY2Ju?=
 =?utf-8?B?SjVtOURZT2l2Smltd2h6bUVKeUFjTllJbzBlTVJ1Nmdaazl4ZkpiT284N21t?=
 =?utf-8?B?dTFqY0dicTQvQnJuSjVITVVVRWxRTWxvSndBQ3lIc1IxSTloeGx1OEhBRVBD?=
 =?utf-8?B?ZUtEeG5CZ1BiT3NUV1BWZXh2NGVEd2VNZDdndjg3MkRMQ2FWMDBIb3NwSkMr?=
 =?utf-8?B?MHRhMHVVY1VuQjVDc0RzNHpYMk1YWW4rTjhYV1BtYyt6YUJCa1k2R3pXdU5Z?=
 =?utf-8?B?UDR6b3VxUWJuZnY2NnczYkg1SVRGd21RZGpNQTVzeHMxeTg3SzZkbFNDV202?=
 =?utf-8?B?NVBjRG5RY0NXeHhYTEdsc3pEOXhQajFldnRJTmNkRHRPeU5yb2JLMFNoOFlE?=
 =?utf-8?B?NTZONkR5Y2RDdnpKUlNkM2I1T3VaLzRRRGlGN3I0NXdFOU1QS1dxVFlpWG9i?=
 =?utf-8?B?R0dLbyt3R0F2TFErRysvclZzWVFpNTNTWnNYWEVEUUwwSEZVd2RaU0ZKeHNm?=
 =?utf-8?B?VURTOGI4eGw3cnIvWk1ReklxN0JXaU1QenR1Mm5obUdOdTVJemxHZEcxbWtH?=
 =?utf-8?B?T3lpUkE0dlZGUEZScVY1UkhjbDliNUd6cm5YTHcrSjdvS1NhTjQzSng1bmJn?=
 =?utf-8?B?bFFjTTBwSGpGL0ZaQ0UxMzFiUDJYYnNVZFlEbFE0RTgyQnRXUGhIK3A2cUF1?=
 =?utf-8?B?SytSQ1B2TlI0QXBOTzloNTJKVUxzL3pJbHNna2VBTklJeDZOVFkxNGMxRE9r?=
 =?utf-8?B?aDlFU29aaTE4UmlraHRLdnA5aEttQlBHb2JHeXdOUlBYUFFyQkVRZ3FITHdI?=
 =?utf-8?B?cEl4ZHB2MkhwcnZuaVRjd25PSVdvN3FocnV6NVlIRnlmbkdiVmIyclVEMFUz?=
 =?utf-8?B?YzJaMzJrc2hTRCtPTENVNWlJNUorakZPNWtZcXRZNXJoazBiNWdIdU5zdHJ4?=
 =?utf-8?B?dVVYdHlLQnlsZDU5TmNVVGRUalg3YjJxTit4YmVydlpMbHdLZ0kwMDZSbjc5?=
 =?utf-8?B?Nm93dGpQRWJFTmN5aGVwc2dYNnBIRE5oUWJlQm9QSGR1KzJEMWI0MDJGM3Zw?=
 =?utf-8?B?dVg0bk5ST2FIeFlvSnExSHRkLzZBVHUwZEQzNmNVTnNGSzZmMHlnZXNqanBo?=
 =?utf-8?B?clJsTjJRNEFjTWRyWGRrVUZsMWtqUVFMdm5YL0w0NW9yclQxK2Y5c2pSbXhi?=
 =?utf-8?B?c1BldzcrMGU1OERIQjk3aHBESlZzQlJZSlZPMlNuRkJVY01MSWxkWWVNR3NR?=
 =?utf-8?B?QXhYUFFQc2VRS3lvTU5uYU1VcDUvWmQ4ZkxudEFjM3NLUnlPcEVYYlJUWnYz?=
 =?utf-8?B?WVFseDZuNDNJWkRkaGdFVlpZRjBQeW0xLzBaSDZ5TUFkaTdyZy80enpIcGVH?=
 =?utf-8?B?cTU2RUs3TUdBZmdEdGRLVFY2M0JyVjZ3MlBIcGFMY2tjU1JTRjd5bmI1TXJQ?=
 =?utf-8?B?T3Fid0dyQjZoWHROTkNDTWpSVC9XcThFZ1NpQ3VKdHFkYlJKVTk1dGFkRVJU?=
 =?utf-8?B?UTZFT0k3UDVjdkp5M1JOMERaOU54bWpYVzgxY2JXK2t4ZlVKTFNFSnVIazZy?=
 =?utf-8?B?Q2xxbmR2NFd1U29vWU8yN0V2SHpEOGZQUklmVjlOOFBCR0RkV0psWXFaUkNP?=
 =?utf-8?B?RVhVZ0puN3hJVEVWWmNySzd0U29oYzR3Q280T2taZThOVDZ2Y0ZocUVEejhv?=
 =?utf-8?B?aUMzeG9uMHVzMTVGaEhQd0FOTG4rMnAybE51eWFQelREWEZiaWNyRzJiekMw?=
 =?utf-8?B?VEFFVU5HaUJFckhjOGRMN04wSDhySGtCb1Q5YkhqZXAzVDZTWkJROGpyS3Fo?=
 =?utf-8?B?TW9qeHJ2eEErVVhCZmdSakQyRmpLWUgvbFFMRFVHOHNWdmx1OGd2NTdaWDdX?=
 =?utf-8?B?WXVFcUNodjNZZjhRTVNiS2NEdzludUNPeDlIekh6Ti9MTFlrQmc2alBuSWVz?=
 =?utf-8?B?SElPUkt6bHY5cjZYSGxNMWFmejJNZFRvd0lrOGd0NUFUOGFsRmFYZ0lKNFdu?=
 =?utf-8?B?VHVWbWVKQWJiWVpXVkNxV05oeUNDQzZWNElQb25aTEgzSjRBWEtrY1dHcHRz?=
 =?utf-8?B?VUN4NWdSeDJvb2tZb0JPRkRaWkNaemdhRi91Nm9NNjhybFVlTDRmWktEMFNU?=
 =?utf-8?B?Q0E3ZWdHUjFqTzIraGZWUzZhSHJUYndIWGtqZTZZQjFlTFpZWkNnTmlKMS9V?=
 =?utf-8?B?NDhEd1ovVU50VHgycXVJb1dyL091ZG9pTUZRbnlCMTZQMkpzR1JnSEo0eDZF?=
 =?utf-8?B?N09qbUcxZjBSYnAvWTIyczdMYjFreGNGQTVwWm9sS3h0aStod1FMdnI0eDkr?=
 =?utf-8?B?YnBoYUdGQzdCY3h1VjVsaVRsak1TcS9jOCtZMEJWbEg3cVJEMVhFZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: dvhKAkzAQvA6B4F/VxodwbbhtV0d16vNGmsRmjgtEOuEvBsaV31ggPclLrdyikcYIcI4L5y+kCIdVWdod6sxBHPD695kVzcp8q+Hs00Qn81qN93kPtMxii6zQgoLc/y31zC80x08+tkODj/9+759euFlJyriR3zeqZIryRh2HCPSttApge/YDDLqzsYU2nxgMXicMz65qJH2yjKI/ITLW1Z0Vt+jx12gL3UsBlz82PXhsvhh9WWlonVMgYZfP5AMSDk3IHIP4zxdMtSwTRvczE0iWWSg9OPMVXFlmf6nzP2MzhK/AvYf/9XaGEb7hWKDSLKbdXwffDbtOMUn+nCngA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6a29ba70-5f6f-4644-2bb1-08de80121be7
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Mar 2026 08:33:59.9028 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WeSE5YTdKbqM7A/Z1lcp4FQkV1R9NK40ZQDdmX1L0AVxhCtxncEowY/LiutcK5oRZDpEBBsU1/JTLNHIeKrZLw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6282
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8473526EFCD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBNYXJjaCAxMiwg
MjAyNiAxMTo0OCBBTQ0KPiBUbzogaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBkcmkt
ZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBNYW5uYSwNCj4gQW5pbWVzaCA8YW5pbWVzaC5t
YW5uYUBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBN
dXJ0aHksIEFydW4gUiA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+OyBOaWt1bGEsIEphbmkNCj4g
PGphbmkubmlrdWxhQGludGVsLmNvbT47IERlYWssIEltcmUgPGltcmUuZGVha0BpbnRlbC5jb20+
DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjcgMy8zXSBkcm0vaTkxNS9kaXNwbGF5OiBEaXNhYmxl
IFBhbmVsIFJlcGxheSBmb3IgRFAtDQo+IHR1bm5lbGluZyB3aXRob3V0IG9wdGltaXphdGlvbg0K
PiANCj4gT24gVGh1LCAyMDI2LTAzLTEyIGF0IDEwOjMwICswNTMwLCBBbmltZXNoIE1hbm5hIHdy
b3RlOg0KPiA+IEFzIHBlciBEUCBzcGVjaWZpY2F0aW9uLA0KPiA+IMKgwqDCoCBUaGUgRFAgU291
cmNlIGRldmljZSBtYXkgb3B0aW9uYWxseSBlbmFibGUgUFIgb3B0aW1pemF0aW9uDQo+ID4gwqDC
oMKgIHdpdGggRFAgdHVubmVsaW5nLiBUaGUgZGV2aWNlIHNoYWxsIHF1ZXJ5IHRoZSBUdW5uZWxp
bmcgQnJpZGdl4oCZcw0KPiA+IMKgwqDCoCBQUiB0dW5uZWxpbmcgb3B0aW1pemF0aW9uIGNhcGFi
aWxpdHkgYnkgd2F5IG9mIHRoZQ0KPiA+IMKgwqDCoCBQYW5lbF9SZXBsYXlfVHVubmVsaW5nX09w
dGltaXphdGlvbl9TdXBwb3J0IGJpdCBpbiB0aGUNCj4gPiDCoMKgwqAgRFBfVFVOTkVMSU5HX0NB
UEFCSUxJVElFUyByZWdpc3RlciAoRFBDRCBFMDAwRGhbNl0pLCBhbmQgdGhlbg0KPiA+IGVuYWJs
ZSBQUg0KPiA+IMKgwqDCoCBvbmx5IHdoZW4gdGhlIFR1bm5lbGluZyBCcmlkZ2UgaXMgY2FwYWJs
ZS4NCj4gPg0KPiA+IFRoZXJlZm9yZSwgZG8gbm90IGVuYWJsZSBQYW5lbCBSZXBsYXkgZm9yIERQ
IHR1bm5lbGluZyB3aGVuDQo+ID4gb3B0aW1pemF0aW9uIHN1cHBvcnQgaXMgbm90IGF2YWlsYWJs
ZS4NCj4gPg0KPiA+IFN1Z2dlc3RlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5t
YW5uYUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jIHwgNyArKysrKysrDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgNyBpbnNl
cnRpb25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiA+IGluZGV4IDYzMjUyN2VkZTI5Zi4uM2VjNDA3YTgwMWIxIDEwMDY0NA0KPiA+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTE3OTYs
NiArMTc5NiwxMyBAQCBzdGF0aWMgYm9vbA0KPiA+IF9wYW5lbF9yZXBsYXlfY29tcHV0ZV9jb25m
aWcoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ID4gwqAJY3J0Y19zdGF0
ZS0+bGlua19vZmZfYWZ0ZXJfYXNfc2RwX3doZW5fcHJfYWN0aXZlID0NCj4gPiBjb21wdXRlX2xp
bmtfb2ZmX2FmdGVyX2FzX3NkcF93aGVuX3ByX2FjdGl2ZShjb25uZWN0b3IpOw0KPiA+IMKgCWNy
dGNfc3RhdGUtPmRpc2FibGVfYXNfc2RwX3doZW5fcHJfYWN0aXZlID0NCj4gPiBjb21wdXRlX2Rp
c2FibGVfYXNfc2RwX3doZW5fcHJfYWN0aXZlKGNvbm5lY3Rvcik7DQo+ID4NCj4gPiArCWlmIChp
bnRlbF9kcF90dW5uZWxfYndfYWxsb2NfaXNfZW5hYmxlZChpbnRlbF9kcCkgJiYNCj4gPiArCcKg
wqDCoCAhaW50ZWxfZHBfdHVubmVsX3ByX29wdGltaXphdGlvbl9zdXBwb3J0ZWQoaW50ZWxfZHAp
KSB7DQo+ID4gKwkJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLA0KPiA+ICsJCQnCoMKgwqAgIlBh
bmVsIFJlcGxheSBpcyBkaXNhYmxlZCBhcyBEUA0KPiA+IHR1bmVsbGluZyBlbmFibGVkIHdpdGhv
dXQNCj4gDQo+IHR5cG8gdHVuZWxsaW5nIHZzLiB0dW5uZWxpbmcuIEhvdyBhYm91dDoNCj4gDQo+
ICJQYW5lbCBSZXBsYXkgaXMgZGlzYWJsZWQgYXMgRFAgdHVubmVsbGluZyBQUiBvcHRpbWl6YXRp
b24gbm90IHN1cHBvcnRlZC4iDQo+IA0KPiA/DQpTdXJlLCB3aWxsIG1vZGlmeSBpbiBuZXh0IHZl
cnNpb24uDQoNClJlZ2FyZHMsDQpBbmltZXNoDQo+IA0KPiBCUiwNCj4gSm91bmkgSMO2Z2FuZGVy
DQo+IA0KPiA+IG9wdGltaXphdGlvblxuIik7DQo+ID4gKwkJcmV0dXJuIGZhbHNlOw0KPiA+ICsJ
fQ0KPiA+ICsNCj4gPiDCoAlpZiAoIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpDQo+ID4gwqAJ
CXJldHVybiB0cnVlOw0KPiA+DQoNCg==
