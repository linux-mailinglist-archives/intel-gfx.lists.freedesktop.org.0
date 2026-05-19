Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mPIPKQcADGr1TQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 08:15:35 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18CA6577D0A
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 08:15:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 836F110EA66;
	Tue, 19 May 2026 06:15:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EVWb8/3k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A62BE10EA64;
 Tue, 19 May 2026 06:15:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779171332; x=1810707332;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MFHRVo+5GOgPOy1/l1FP3+wsNq/Z0QhrC6I4fnPSu0I=;
 b=EVWb8/3kb9zucS8Wh1mQYkfF4nDUaLgV4t5PJ2vsAuPUhbvxwlQbMICn
 /wd6dud4l0MEGqgBYXnQLFJGjnaVav0NCtuZ/DqiFTHCr8EcnYPphnBao
 bwbtjxwJ2rJRlaJzf3Qo00XI1KKwV3ak9pZ37nIm+y+f8miLsK1shJuFK
 9C/TXJuCszL7QxgmVOk2yuXTsFKoh6ez7zeZYCG5VJyi5xtFcoZs22OrS
 tex8GEQT49LYNtUsvhowKApsjKABuvFiv1nVhchqt6q87Ngki/Yyg8oDx
 HcNb9jVqmLUXzazreiuDe3pQF+jKqTYGM+hhaDv6Tx34d6m54BvUYnNHk g==;
X-CSE-ConnectionGUID: a4GJNqk9Tla8pH06pIqTWQ==
X-CSE-MsgGUID: 3u+swIOSS9279/kkE64bFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="105498908"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="105498908"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 23:15:31 -0700
X-CSE-ConnectionGUID: gV1SEK3rSI+LUWfpOdi5jQ==
X-CSE-MsgGUID: J+Zl+dOVRYu90PYViJD45g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="237043741"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 23:15:31 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 23:15:31 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 23:15:31 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.50) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 23:15:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lYPY8RUdxWXsunCN+6JcI7r+NAjj23LI1sVTeV74Esd6tRmrN4OFJj1pKGJRcYfdpcO2vFkdHDf0ADN/bJRs6y+py9J/a5o+Tx1kaW6owcMCVqGQ/ugVEtf8x5ofsHq4+7BTdWv4ssA5UFpzkR6JtQVg8XTVBntcyTwaSr/2ZA+dqo6jPCW5wCTEnIK7fd3tTiNULkXVOEwsrmt8h/P3aHYElRb/IFFKfhHwxsOeFpwp2oBwlI1vi9DSRXznEV359lBTHM1E8UfdHTjhVaXuCD++lJCnL+Uf9nzkdOAyYkN1/DC/wKAdyxgoAKQBVJsPeq1EhSWQoinvNPAq0EzfTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MFHRVo+5GOgPOy1/l1FP3+wsNq/Z0QhrC6I4fnPSu0I=;
 b=le6OmpFOctx8C+7DfLr+LcR+SsVxHBtmQgIXTnZQiA+eEtiSBs2GIEVUsHjUF1rbpuzs6r3B5HmadMEoyCspeZB4yDFK65DajUbU5TPgWz2kqkuNaTY+r12wh7MTYpl9EvHn5wgyCx3uGvDBv+b/T1MRgjSJ+vTK5hZxpDhPlbiOh7YsEE1S6epYejNinjBYLtPAm27/pOnK+70+rla7KzwcRikBga8pI0lLMWGVqxteO/Lp71XIESiwGO1xHLV+I7cOGGQrcaJl8wKmS3UrBmLHmY0vB0yrsIHQnlUYoFPflaNahORl1N5BYp5IBUt9AWIHj5h0u12Xo8SLR/kQIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DS7PR11MB6175.namprd11.prod.outlook.com
 (2603:10b6:8:99::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.23; Tue, 19 May
 2026 06:15:25 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%3]) with mapi id 15.20.9913.009; Tue, 19 May 2026
 06:15:25 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Nautiyal, Ankit K"
 <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH v3 16/31] drm/i915/bios: shrink all LT's VS/PE tables
Thread-Topic: [PATCH v3 16/31] drm/i915/bios: shrink all LT's VS/PE tables
Thread-Index: AQHc3cFZfPgSHPHMWkOenKn3hjkZWrYU8ezQ
Date: Tue, 19 May 2026 06:15:25 +0000
Message-ID: <DM3PPF208195D8D3A616EB63A41949F7D85E3002@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260507013137.527510-1-michal.grzelak@intel.com>
 <20260507013137.527510-17-michal.grzelak@intel.com>
In-Reply-To: <20260507013137.527510-17-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DS7PR11MB6175:EE_
x-ms-office365-filtering-correlation-id: de8b031b-37cd-40f6-f7d9-08deb56e046d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|22082099003|56012099003|18002099003|4143699003|3023799003|11063799003;
x-microsoft-antispam-message-info: 5myAGIkshlZtDIzx5KikgZ0/NULq/DZb6lUzcK7PEgGZ2B71bOD8um0FTX6WgHIFPRVV8Ju6a5gfGiYgju0Pqnu+Kqu1ucd8OOh9ewqxUpIq9RwtF9cz0nBXUlcO7YCp0HryQmLQ+sILqFVxxSeCT/xsbNXASQk1q0RYqEuQkqcdra/pDzffMa4/9UD2RLe4Xp7PxtsCZ/yUtpcB+rX2acbs/1sBsHigF8XAyChdWCGMzoeHsBcZ1Dhnu4fc2zoOHEmE/yhfKB6fEf5yxkpeyzBERmeXOgd82SRcdrmIV/t3rQ+ujMX6PJEjSxGNVt+Hfh8hBGqEMr0K1BgWA7+M0YzlRlnzr1nujb1+GzxDindw5PWYbt5dRAHV0xBfEm+X8KAFLaGz4u+efPCg6uxSMAMw04iMBZmkKoTvtrqh7rhLAyhDvNuozHc9Qmv+sO5YkN3+S0ZeF0TmKnocrPbWfQ+Bn8Z4d1x6QLuttlUVhNLYyed4CNveTxO6m1uJAgyQM+sTl+trEuPt2GLcrfSnpmlKYUKmtMveTQvbWskbg6ugPC4LtenQFxh2sIOXIZ9hANqDryok2XiwDsU6ZRBALKXl70RU4sUQGEeI8mjDpxkNLwUsyEsWy+LbTGNkdZ/8Vr2J53kz2Vr9RnFehSdwGAfFnCxDQL4aoL634NgMvq9kaJW1BuKaQvuiePLR6TQKMeA0MSHVCq1HPzzWSYsoq3+bAa+BnMi0srpy5s+b394hesY+YnijmAh6EMM/PeaQ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(22082099003)(56012099003)(18002099003)(4143699003)(3023799003)(11063799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K0lkdFpQSExHbTBxSkprRGVjNjU2VHZhSGw3L2VrMVVFMVVRWjRpQjU2TTJ6?=
 =?utf-8?B?NTB3dFRsVk5IZDZIZGVvUFdmSTB2WW1heXRzWURkQWxpV2JsRVhGU2ZBQmZD?=
 =?utf-8?B?VWIwQ21vRDVZMGVZTEthRHBHTEFncTZPSlkxZ3VFWkg4Rzh3cEF1aThYZ1g1?=
 =?utf-8?B?TDFxRHFBNUQ1ak90OWxaYUlQOWc2RjIrVjJTd1BxV0J0dUc3Rkp1Uk9mRmNt?=
 =?utf-8?B?WjkvR1pWRTNiS0xlbWpxeTJFaWw2U3RNZ05TZmdwVFp4V0NIaVZVTHJqUjgy?=
 =?utf-8?B?UlJoNXhSRUxybmE0Y2Vsa25TUkgwcDdEL2N2Vy9xaDVyZE5icHhuTFZOY3JR?=
 =?utf-8?B?Y3hnVTU0eC9oblZPVk5NL3FKWEpkQmU4NkZkRytNbFB3bTY3cGFkakxXZHlt?=
 =?utf-8?B?N1BXR0NhTnNQOGtVdXdZejdPcDd3S21pMmFOREZrOTdpYmdsTzhRVXd2c0Rw?=
 =?utf-8?B?NE9ZT2ZncmlwWW8ydlB5MHV5aWhrajk2UnhleTFsdGxSL1NVTElFaFJUNG5Z?=
 =?utf-8?B?cTdsQVhBKzNLVFEvL2xtSHlsb015QW5EeEE5bkhVcnFNRWREZEg3emM2d3NH?=
 =?utf-8?B?VEJBVGZkQS9jVU1qMUgyZ3BMLzlWODE2VUxRRmN5WENoL0Y4dDFzdVNFZUh1?=
 =?utf-8?B?UzdCNnNCK1ByTmc4WmQ0QnpSRTdSbWlML29mME5BL3lCWFZwaWUwWDFlN3ln?=
 =?utf-8?B?Mkg1THgvM0J3b0VZdm5hVUZKZkhiVFlabjdSVTNhZVpQYUFjQU1CcEN2WnNt?=
 =?utf-8?B?a0pRSUlrbm9oTzExRHpORFZNUmh2cFRnYnM1bTBQR0tJOENucTZNcmtpR3Vh?=
 =?utf-8?B?KzRMTUFXRko4THFLbmE4NEdaUm1OdEdMcGE0ZVNhbXhRTEk1WnJTYVgrd3Bs?=
 =?utf-8?B?blM3ejArU0FSY2w5RmJjejZ6UzZIYituUy9uSzZvcHNCWFN2VmVXaUZqanRO?=
 =?utf-8?B?VWUvdjhVUnI2SERUalpITGt2UWdrT0t4cEkrYVZoT1pWdzlrWU04Z1BMMXF3?=
 =?utf-8?B?YzVtUC9NVDRwWURIMnlNSmNRZjNwUFlkREZYLzJYVzYxalNnenprZTZ1WFVO?=
 =?utf-8?B?dURsRXFjMnlOMWZ1UXZ1TVFtS0V3YVFXYm40V0pBNWk1NE1PREFHNFZubWJk?=
 =?utf-8?B?VFBESmNCdHA1UU1oTEQ4OENKWElHVXR3ek01ZEVJODVVWmxoNHBFTWJ2K1ZI?=
 =?utf-8?B?TU1ndHpyWHUxdEszbnZEMXRzUTdDQi82cHNjcXN4Ris3OHBlV3RoY2ZaUlls?=
 =?utf-8?B?MDJyVDh6VVBMWFZNcFdQNW5uRzZnY29TR0xhZ3I0T083TFlGbmFLL255OTZP?=
 =?utf-8?B?N2dSVXJQcEg1MXVVcjZYNWdwNHVtUm9nTEF1Wi9qVURCQ3dTelhnTzZRVGNP?=
 =?utf-8?B?V0d1MUpOR0IwdWlLdU4rbG1MaTFkbGJSTUdocDNXQXd6VkJJbGZsdlA5N0RD?=
 =?utf-8?B?bEJPWFJ3aDcrdUt5d0xiRmIwdDlPa2h6Q1RRV0oyTnFWS0xMaGZMOE0vcncy?=
 =?utf-8?B?OE8vNXE2d1U4UW1GMFl3cEdFKzgrb1VSL3pXY2xPaDlqS1BnSlMzUjBzeUx3?=
 =?utf-8?B?YVBxM01kSFh4M29jVklBSUYzRVFPK3NOVCs2ditvQUtxc1VrVis1b3pRWGlB?=
 =?utf-8?B?cHdGeHhPZW5IcVpSb3RFYVgrbUpKK1J1dEZNdFYwTG1Kb1h4S2xYaURWT1RI?=
 =?utf-8?B?Z3pUdFV0eGZqOGxxREtTdk5KY3owdU1VdDQrVU50aDNGOEs1OW1JZ1RmL1Na?=
 =?utf-8?B?SVVSdzNUZnZTaXd1UFlCVENFdldlcnAxZGdadmlFSklPaHY4eSsvWW9MQjRJ?=
 =?utf-8?B?aGdPV2RUVk5qTU01bENISW5QSHhOcWdmVnIxVlhnbmYwZnBTUU41WUZybm9K?=
 =?utf-8?B?ZlVQZ2dTd1N3UUpBNzk3NEhQQldLK2dVV2cySzdjWWZnTkt1MFRMWjRZQ3J3?=
 =?utf-8?B?VEQwK1dZWnM5aDBpWVUwUHFQOUVhbnpSYVFyY2N3Y25lZ3A0anBZQXZmT2lz?=
 =?utf-8?B?ZEZjbnl4N3RYaWRqV3ltSW11eEtKTVZXZnVZV1N1ZEhZUVk4SkdZKy82TE02?=
 =?utf-8?B?Z2RUMTJCSTZrbWxmNFpxUmpoVGltU3VqZ2hrZFJWY2hIWEpDaDFWUG42SUha?=
 =?utf-8?B?UW13WU1pU28wUDBqdGw0elpPOXRVd2RObi8vc3U5VVIzTnFSdFV2dVZiQ3ZT?=
 =?utf-8?B?RWxHUWZ3ZysrTjNHUktMd3VPNjZrNExYcVVWQ3VzRVYveFNDRDRxbzl4ek1V?=
 =?utf-8?B?cXBwOWt6NTRvZ3VKd3pmM1pLOWdwYmd5UWtnd3pGN01lMVNxZFhUZzdjRlcy?=
 =?utf-8?B?SnZHUURQdllBVTN0dHhiNTdnQmNPTFBpakxuOGp5cnBwbUtDWVJNdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: QNvzUcg+K77/nJ3OWMGOpDIfS0Bi/BT1fVcPflG3bTaWxEl8wk7slyujKnoB1t8gfVAQidXbTotrkmqHAEqL+ojauREo1FUp0ew1rjJt/dI2dSicphzKIA05l0HsxISFq9xmeX9J7LPyocaNws6VKSkENLLFD/rzVJrlsxcDtQl68s9eOjWoGdTbL0aWAwdXZH1EZa75/fVhnS43oEiaeVeqWjCuWseHmFqHbfS060Or4jJjK4FUPXopY9BTu0ipDiermTHGli/MNSU89iITI3vcGBpS6LoGxYhN99wjgOeS/3JZZRR8MBk2z4GGPc4oJ7m3jfi+GJ6k2kBIXp/EaA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de8b031b-37cd-40f6-f7d9-08deb56e046d
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2026 06:15:25.7654 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2Y4Jq3ZeJPmVZZijdK7poXCuduysHn4H3ogCIB9STB1Nko3q/yAiOzA9CCkI+li8t+49q6YT0UcvYAqY/wkioQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6175
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 18CA6577D0A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBbUEFUQ0ggdjMgMTYvMzFdIGRybS9pOTE1L2Jpb3M6IHNocmluayBhbGwgTFQn
cyBWUy9QRSB0YWJsZXMNCj4gDQo+IEVhY2ggdmFsdWUgcHJlc2VudCBpbiBMVCdzIFZTL1BFLU8g
dGFibGUgaXMgc3RvcmVkIG9uIHUzMi4gSW4gb3JkZXIgdG8gbWF0Y2gNCj4gdmFsdWVzJyBzaXpl
IHRoaXMgY2F1c2VzIHhlM3BscGRfbHRfcGh5X2J1Zl90cmFucyB0byBpbmNyZWFzZSBpdCdzIHNp
emUuDQo+IA0KPiBOZXZlcnRoZWxlc3MsIHRoZSBhY3R1YWwgdmFsdWUgZnJvbSBlYWNoIExUJ3Mg
VlMvUEUtTyB0YWJsZSBpcyBmdWxseSBlbmNvZGVkIGluDQo+IHRoZSBsb3dlc3QgYnl0ZS4gRXh0
cmFjdCB0aGUgbG93ZXN0IGJ5dGUgYnkgY2FzdGluZyB0byB1OCBhbmQgdXNpbmcgaXQgYXMNCj4g
ZGVwYXJzZWQgdmFsdWUuIFRoaXMgd2F5IHRoZXJlIGlzIG5vIG5lZWQgdG8gaW5mbGF0ZSBkZWZh
dWx0IHRhYmxlcy4NCg0KT25jZSBhZ2FpbiBkb27igJl0IGJyZWFrIHBhdGNoIGluIHN1Y2ggYSB3
YXkgdGhhdCB5b3UgdW5kbyBzb21ldGhpbmcgdGhhdCBvbmUgb2YgeW91ciBwcmV2aW91cyBwYXRj
aCB3YXMgZG9pbmcuDQpTcXVhc2ggd2l0aCBwcmV2aW91cyAgcGF0Y2guDQoNClJlZ2FyZHMsDQpT
dXJhaiBLYW5kcGFsDQoNCj4gDQo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhxYIgR3J6ZWxhayA8bWlj
aGFsLmdyemVsYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYmlvcy5jICAgICAgICAgIHwgIDYgKysrLS0tDQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMuaCB8IDEwICsrKysrLS0tLS0NCj4g
IDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQ0KPiANCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gaW5kZXggMjMy
ODQyOWI1NjJkZi4uMWIxNGNmZmU2NDFhZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gQEAgLTIyMDIsOSArMjIwMiw5IEBAIHBhcnNlX3Zzd2lu
Z19wcmVlbXBoX2x0KHVuaW9uDQo+IGludGVsX2RkaV9idWZfdHJhbnNfZW50cnkgKipidWZzX210
cngsDQo+ICAJCQl2YWxzID0gJnRhYmxlc1tvZmZzZXRdOw0KPiANCj4gIAkJCWVudHJ5ID0gJmJ1
ZnNfbXRyeFtpZHhdW3Jvd107DQo+IC0JCQllbnRyeS0+bHQubWFpbl9jdXJzb3IgPSB2YWxzWzBd
Ow0KPiAtCQkJZW50cnktPmx0LnByZV9jdXJzb3IgPSB2YWxzWzFdOw0KPiAtCQkJZW50cnktPmx0
LnBvc3RfY3Vyc29yID0gdmFsc1syXTsNCj4gKwkJCWVudHJ5LT5sdC5tYWluX2N1cnNvciA9ICh1
OCkgdmFsc1swXTsNCj4gKwkJCWVudHJ5LT5sdC5wcmVfY3Vyc29yID0gKHU4KSB2YWxzWzFdOw0K
PiArCQkJZW50cnktPmx0LnBvc3RfY3Vyc29yID0gKHU4KSB2YWxzWzJdOw0KPiANCj4gIAkJCW9m
ZnNldCArPSBibG9jay0+bnVtX2NvbHVtbnM7DQo+ICAJCX0NCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5oDQo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmgNCj4gaW5kZXggYmM0
YmM4MGJhNjU4OC4uYWM5YWNkZWM2ZDI5OCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmgNCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmgNCj4gQEAgLTUxLDExICs1MSwx
MSBAQCBzdHJ1Y3QgZGcyX3NucHNfcGh5X2J1Zl90cmFucyB7ICB9Ow0KPiANCj4gIHN0cnVjdCB4
ZTNwbHBkX2x0X3BoeV9idWZfdHJhbnMgew0KPiAtCXUzMiBtYWluX2N1cnNvcjsNCj4gLQl1MzIg
cHJlX2N1cnNvcjsNCj4gLQl1MzIgcG9zdF9jdXJzb3I7DQo+IC0JdTMyIHR4c3dpbmc7DQo+IC0J
dTMyIHR4c3dpbmdfbGV2ZWw7DQo+ICsJdTggbWFpbl9jdXJzb3I7DQo+ICsJdTggcHJlX2N1cnNv
cjsNCj4gKwl1OCBwb3N0X2N1cnNvcjsNCj4gKwl1OCB0eHN3aW5nOw0KPiArCXU4IHR4c3dpbmdf
bGV2ZWw7DQo+ICB9Ow0KPiANCj4gIHVuaW9uIGludGVsX2RkaV9idWZfdHJhbnNfZW50cnkgew0K
PiAtLQ0KPiAyLjQ1LjINCg0K
