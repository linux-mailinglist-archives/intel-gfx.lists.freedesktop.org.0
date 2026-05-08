Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YMcmDIvW/Wl2jgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 14:26:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6EF34F65DA
	for <lists+intel-gfx@lfdr.de>; Fri, 08 May 2026 14:26:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4355C10F481;
	Fri,  8 May 2026 12:26:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ImDMv33O";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6265C10F481;
 Fri,  8 May 2026 12:26:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778243207; x=1809779207;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=JT0YpHgQO/tgs6tfrDdEz+sPWtQwt9PF1U2RHITzkZI=;
 b=ImDMv33Osd2OgeZCy3gWFm/210CfLw35sjwpnq5MUGYM/Qe74FgdyWF6
 2Nh+vaq1fUokTiSkuFVxaOz3o27u2dYJY/CiY6x7CyKR2DvmdqkhEtRjn
 b2HztVs4IZ1LdFckBFmtXcB2JKlEUEn1ucapq7Kl93FAtKiP42cWFhJqG
 vI5yxoXQY2qbXmvRWrR7ZTlefsWSRlNrBBoQM4El7gcytVzWK622idLF9
 4esABxDuX3ZLShgy0C8ATM932WN1+OlG9xSA+Apg1iNYxaLOJ9B6MIfr0
 sEiRcJCoVX05bPC49QgE46udrr0ZHpVUf0cEtE4W2HTPZrvHgAaJe2UUu Q==;
X-CSE-ConnectionGUID: lyBgdJKtS9+nIwtdTeYleA==
X-CSE-MsgGUID: 7afZNn6DSqSSmlJG324MtQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="90589946"
X-IronPort-AV: E=Sophos;i="6.23,223,1770624000"; d="scan'208";a="90589946"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 05:26:47 -0700
X-CSE-ConnectionGUID: NgnG6BY3RMiBuleQKYjthg==
X-CSE-MsgGUID: WlCHyKDIR0Crwg/H33suhg==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2026 05:26:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 05:26:46 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 8 May 2026 05:26:46 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.4) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 8 May 2026 05:26:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mE8p+gxSdWyVWMs23zL2CI6udkMK/05E8YTQfQ9GHjCDaQydycn/qp3mQyl+U9XXuGTQ7Cra1BCIYZRtgFBfTakmFTwYQ0BNC7Hr5r5AOZZu+dzeqUValXpao6Z07dyBSIwol4BNfroLLuU4gpSjIFVXNhR1oOGsODwKF6yHz24ROIqsv/PtKpzuYqyOiPHpXPCcJllFj7oID3H+ZcpdMkXPmXhMq/h4MFCMWHaTJJ1ZmnV2F7dBTQmpQNTdqHTALnqg0VBdtZ9mOeN81Z8PUfszhqCke0wC6A2SGeJ62Qja8DbbICPQd1BAlYejJWDOBmhxmd+Y0oylAdIc7J5cIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JT0YpHgQO/tgs6tfrDdEz+sPWtQwt9PF1U2RHITzkZI=;
 b=BsOZDUnapATs0dop/kZcLHY7pzjr6+ZTu45wZeS7d46g5KxNQi9m3aoqJUTp9J41tQQV15FDufg7w/DdZflqo+WQ9QcxDA4p24jJfpIaNDoUs/2SuEbz7Jy7LIKxTSLiSkGs7ksn4sGwzqO2pPvkEZhEWjSrWEuxDQbuEUHhyrdnFaV2+cPep0LkOuigmyEU/qUFtU8fMIpU34BcW8DGnoEaGswbf3eIl4sJokv8GPaVV6DZBM7Cse7WQllvvXpH0qzVjjc2mkXXfeafMYKRs4YqQxgjWC7Oa72jH4qqYIsrwujiW4iVzjV+BQWLeDONIn1jN2UZP76EUfFTtRqcNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS0PR11MB7901.namprd11.prod.outlook.com (2603:10b6:8:f4::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9891.20; Fri, 8 May 2026 12:26:43 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9870.023; Fri, 8 May 2026
 12:26:43 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/ddi: Fix cleanup after DP connector init
 failure
Thread-Topic: [PATCH 1/2] drm/i915/ddi: Fix cleanup after DP connector init
 failure
Thread-Index: AQHc3e9eOd515vejp0uN68P36+OwnLYED/qA
Date: Fri, 8 May 2026 12:26:43 +0000
Message-ID: <789f07e13b359dff1f4fb273a4a27dea7eb51883.camel@intel.com>
References: <20260507065940.2046690-1-imre.deak@intel.com>
In-Reply-To: <20260507065940.2046690-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS0PR11MB7901:EE_
x-ms-office365-filtering-correlation-id: a04942e5-6eca-46a1-9ffa-08deacfd1074
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|3023799003|56012099003|22082099003|38070700021|18002099003;
x-microsoft-antispam-message-info: GxsGTSmBmlx1DQmIDMxKZi/HtKumafzv7DORe5kyLSwhbFXMbSUsFU4v9GPpIwO/CZrkKPfa8q5Xsd+RgiKM1Vlw8bWcr+Hm/uwiB2j88GLChn8oIRp5MQAKv/Fvy8ZKAcV4T5ffm41CDw8t48ro/8NVzb5kITFfhsvBDDwaVzikKwI7QzjlmttvltYkAAcwf8dufnbWt4W4EMV6Tfu8HGuhCLOoGXxPKxhNqTZGfhLsKcD9rtKkrTIohX1yeDgJmUtxjeaOuwHQQA/RthW8qKdmNa3Vqdi1vSTbnDmqvDzibFURxOo4d2hAKGnv+V6/ennOrAjQoukb1Iu71TAiZ/3aeh+yZCNDfNsL+KJihzhZMNpOgZsqz9mgpqSgyhttXxpAPkM8MNbW/Pvl8HDNkd3OBJx83q4SJ5rg0eY7NSMVdQ77SNDbu8wg1aVaCAD2NHBrbf5CMmOqqiucW8OdH2p/myYuxpiNA8nrkoNbEzkmVVrKKnFpt2yXWRnmmVT4BKJwx3RGdTrHTKbfXxPD/fpSfCCmzdLJkAFzMH4H9pcxB5/l+ix31XMAcFMHbtxmZDoWj9/L83et/X6AJ5mw+6ZBdQ7Xu9SXpfFfyRdnyxBjEc16kQsHqNMHV+4CAdaLbJS6S/NvZmqzx9ls7KuM/MzfRM2jVdqpHVgs+JDfZsuiKgJlxviYE7b5nxZfaMY2cfswh4LqCWw9DPQvQ7snC2khOXvSK52QIQSJ1wRwCzclmmuBjo8jKhcWR/1sjpYj
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(3023799003)(56012099003)(22082099003)(38070700021)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MGhyOFdTUFhOTUFFd05QUUU2K3U3YWFrbjZoOGtvSHBHNi9mTHZiNGZxV0hi?=
 =?utf-8?B?K0Z6VXpOcjRMREJWMTduemQxc2JxMXdkVEhsN3RaRWY4TnZSU294NURIMHB2?=
 =?utf-8?B?cjJSZGVNb0xvZGhLNk02THV1MURtb1V3TjVLcWd2cmZybVM2Sm92N0g0QkpY?=
 =?utf-8?B?MFN2aFoyeU5uTjYybVMvcytONFVzVitNcUJOTERIUUwxWHNWVG5rNHgrQkIw?=
 =?utf-8?B?ckZnVDlBeDFKU0dLcU11UDNtTXkvSnZ3c1oyKzFkMHc3NjBieUFWcUVxY2R3?=
 =?utf-8?B?aE50RWszdHlndjNzSVE3NzQvYlZDbS9vS1RUaENzWEtjR1NlRDZVTXVyam9n?=
 =?utf-8?B?Q29IY3l6cFhVK05RdkkyTHQ2NmFLQUVKSk1yalZGTjZNS2M5MVZjSW5TMW0r?=
 =?utf-8?B?WDFLTXUyMVlkWmxWWHlhRUh2QUlwZ2laWGlNVVZHeTh5WXQydUhpYkVBbVhw?=
 =?utf-8?B?Z0dqZzdEMExCSnFqTXJsS3ZGZ2EvL1FLMmNlbEJsdFBZcnhwaVVTL2NvSEdU?=
 =?utf-8?B?azhSNk80SUdFaXNCbFNGaG1LeU53MjF1czg1dFZOMllxSzNPV0hZYks0TlZM?=
 =?utf-8?B?bXliZityaWxYQU80MitpZjd1SFA1aG5Mb0NrRkJhYkllTlVCL1hVZ1BHTDdj?=
 =?utf-8?B?N1poSnFLRlVwZXY0TE5jVlE2UE9RVWpuOElScU9lREZqQjZJLytLRHFUQTNL?=
 =?utf-8?B?WWlHZEg5OHkrcklNbUcrelh0bXZ2a3Jic1lXN3lNUDhFVVc5ZnNOaEZzMHls?=
 =?utf-8?B?bHBNaVN6V1Nnb0VvcnQ1SFUxbjk5bXUzMVlsUFhCTGlqREhsbklhRzlVWnpP?=
 =?utf-8?B?RFo4TXVHUUJ0ZTZleGtoUzRWQzU2c1lZWFFiTExQelJnL3E0dG5jYnNUNG5a?=
 =?utf-8?B?TlNGN05iaUw4NGFiOWQvdWEvYXdERm92UWVrRGhhUk1HQWJNVlNVdmowdWhz?=
 =?utf-8?B?a2pxRkg0RkNiWlMrOTlqRGY4VDExVytjS1RKM3ovcENlZng1ZGdSWCtHdWR2?=
 =?utf-8?B?YWVxZC93cS9nT1hKeTh5MXFSS2NScVZZTE92b2E3MldtTGRFSEZkd2NpMi84?=
 =?utf-8?B?SE85SU02aHJlQUxSY2x5cGlGYStjcHhsZFAxTEtKbXVxcDZoZWVkcUdNSFNw?=
 =?utf-8?B?ZC9OMXRMRFk4NENwTFZ0ZzY5RVNRWXFWNktOT3U0blBMam9XMmFSSTJvK0N5?=
 =?utf-8?B?QTMrR3Ftd0pnd0RYaEZGaFZsQ0xmNEQvTll3cnBzKzkya0pWcnFicmwrWm01?=
 =?utf-8?B?L2VhOVErOHZDR3dQdGtheS8zRElKTUROVDRxMmFrRlBYajJHSUdOU2I2TkZ5?=
 =?utf-8?B?TlQ4NU0rTU44TSsyNE5PbkFLUG1MT0RnWkxQQXdjWjJJdVJ2ZGN2dWJjeGNC?=
 =?utf-8?B?bHMwUjg0aVZmU3FielpaUEwyQUZzbzhnUEIrQkVDQktsU0hvKzIraFJLeGcx?=
 =?utf-8?B?cVRHbUc2WUp3Wks5TEtKc0h4K0dxNHpkc2dKQk5IWWxicnE0azc2ZW85a1pX?=
 =?utf-8?B?Wjk4SkoxVHpzc1BGRFJTK25tczNBNlVGWG9zQ0VuM29rN1FidzByMzA0cXFC?=
 =?utf-8?B?UHJySTBCVHJRRyt3cHcrNXZVbnJaRVJ2bWpyMERsejZOTVlocHZZbHBVbncv?=
 =?utf-8?B?NTlXQittVHVxUVA5UnhKQzk2aHRiQS9DajdiRmwrWW1ZNDZUTkhXWE1oWXV5?=
 =?utf-8?B?RnB1bU5NQ3NlYWhYL2pJSVBWVy9UWWtSZWFvSU15cGxkb3o3b2paWlUxWTVz?=
 =?utf-8?B?QTRiZ2g1Mm9rdEhPdzhhSnJ6Sy90RUdCRkJmMG1HTXFnRHFTcWJRRWJVQnZC?=
 =?utf-8?B?a21acXJxN0UrRWZ5UDUxN0dMOWNxUEJUSCswajBXMW9MM0lEOVBJYldmQXh2?=
 =?utf-8?B?M3c0eHhFTm03eUsxMXAwNXdLZEJNRHM0Vm40UXZpczJ6TGpFTDVKeVhZbkdN?=
 =?utf-8?B?bGtUa08xTFpSYjR3TW1sd3p6SlQrcUJpRU1mSllCYWRNeEIwL09iZEc1K3JU?=
 =?utf-8?B?aTRvKzZHemxZZk1YUFFBazArSGxyZUpBVnZLd2JUMi9uTzdTMFMrR3kwTmlF?=
 =?utf-8?B?L0MvZ3dYVTh1emNyVHJXRWlTcXVJVXIxVENReEhLZDB4K04rYlpXVlRsSThx?=
 =?utf-8?B?K3ZaRVpyaEF5Q3B4dGNNRkM2NldET0VnVGpTOTQvenZ3dTFQQjJTY3NQUDJz?=
 =?utf-8?B?R0V3QlJMd1JWRFpTYW0wZDVZRGxPN2wxWGcxcEFWVzBEbDhFNlE3UTIxZFYw?=
 =?utf-8?B?QW02Y0drZmYxdHB6WG8rKzZ5eWpiV01SRjZmWUl5YWtvN3Rpc0JKK2xmOEt2?=
 =?utf-8?B?MnBYR0J2U1p5RXZ3c3F6c2ZqNWpabWIvRlk1WWlLdy9pMitubWhoT2pjbFlN?=
 =?utf-8?Q?EJ3OG4wAp07fpZPI=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3421056A07CCAB489E5630755473FC98@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: OGCHfhViArdqWW4cQcf+XX1gUM39FEGJ5Y3C/iB+bbjdQOE/FhsPIfg9lYpR5Gr+u6hQV9YHoZVgoQnGVTyPxSFVse392Q81Fdwdt3My0sIIbjj3OreyolRN9OGlB3kvv0pczQgD9wn0JdA2jSngnS+cTeRHmSDHg/pnkF6RKX5K6eXRyia+5PWX4agK+rAKmil1vL8SRojgFL5+8fTRJeVm52y4RLTn/Tfk9ggeU/dn0PTSwaf0gSFBSsoQP2X5MPcL6kwsSAbsXBwwX79YK1IgSfKP3pIsPSeXGSzWMnUgQbHlRXpraeWjRU59/MG4Xe/7sXFadTxMy4ry+uMWXw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a04942e5-6eca-46a1-9ffa-08deacfd1074
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2026 12:26:43.5861 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dHY41Ri+KC2GeO8kYancEkFqmgkNdBPWzLVvwEVp3nDiO1o/yshF9XOB8I1D6n5K+hGR4aN4jkTusg1lYJAf3MH0k8WkWlTHy9UG3cKn6dQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7901
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
X-Rspamd-Queue-Id: C6EF34F65DA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

T24gVGh1LCAyMDI2LTA1LTA3IGF0IDA5OjU5ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEZp
eCB0aGUgZXJyb3IgcGF0aCBkdXJpbmcgRERJIGVuY29kZXIvY29ubmVjdG9yIGluaXRpYWxpemF0
aW9uIGJ5DQo+IGNhbGxpbmcgdGhlIG1pc3NpbmcgVEMgcG9ydCBjbGVhbnVwIGZ1bmN0aW9uLg0K
PiANCj4gVGhpcyBmaXhlcyB0aGUgbGVha2VkIFRDIHBvcnQgc3RhdGUuDQoNCkRvIHdlIG5lZWQg
IkZpeGVzOiIgbGluZSBoZXJlPyBPdGhlcndpc2UgcGF0Y2ggbG9va3Mgb2s6DQoNClJldmlld2Vk
LWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KPiANCj4g
U2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4g
wqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgMTMgKysrKysrKyst
LS0tLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0p
DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
ZGkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gaW5k
ZXggMjY4MTk0MGE1Y2ZlMy4uZTM3Y2MzMmVlODNlZCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+IEBAIC01NDExLDcgKzU0MTEsNyBAQCB2b2lkIGlu
dGVsX2RkaV9pbml0KHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ICpkaXNwbGF5LA0KPiDCoAlpZiAo
bmVlZF9hdXhfY2goZW5jb2RlciwgaW5pdF9kcCkpIHsNCj4gwqAJCWRpZ19wb3J0LT5hdXhfY2gg
PSBpbnRlbF9kcF9hdXhfY2goZW5jb2Rlcik7DQo+IMKgCQlpZiAoZGlnX3BvcnQtPmF1eF9jaCA9
PSBBVVhfQ0hfTk9ORSkNCj4gLQkJCWdvdG8gZXJyOw0KPiArCQkJZ290byBlcnJfYXV4X2NoX2lu
aXQ7DQo+IMKgCX0NCj4gwqANCj4gwqAJLyoNCj4gQEAgLTU0NDcsNyArNTQ0Nyw3IEBAIHZvaWQg
aW50ZWxfZGRpX2luaXQoc3RydWN0IGludGVsX2Rpc3BsYXkNCj4gKmRpc3BsYXksDQo+IMKgCQlk
aWdfcG9ydC0+dW5sb2NrID0gaW50ZWxfdGNfcG9ydF91bmxvY2s7DQo+IMKgDQo+IMKgCQlpZiAo
aW50ZWxfdGNfcG9ydF9pbml0KGRpZ19wb3J0LCBpc19sZWdhY3kpIDwgMCkNCj4gLQkJCWdvdG8g
ZXJyOw0KPiArCQkJZ290byBlcnJfYXV4X2NoX2luaXQ7DQo+IMKgCX0NCj4gwqANCj4gwqAJZHJt
X1dBUk5fT04oZGlzcGxheS0+ZHJtLCBwb3J0ID4gUE9SVF9JKTsNCj4gQEAgLTU0NzgsNyArNTQ3
OCw3IEBAIHZvaWQgaW50ZWxfZGRpX2luaXQoc3RydWN0IGludGVsX2Rpc3BsYXkNCj4gKmRpc3Bs
YXksDQo+IMKgDQo+IMKgCWlmIChpbml0X2RwKSB7DQo+IMKgCQlpZiAoaW50ZWxfZGRpX2luaXRf
ZHBfY29ubmVjdG9yKGRpZ19wb3J0KSkNCj4gLQkJCWdvdG8gZXJyOw0KPiArCQkJZ290byBlcnJf
ZHBfY29ubmVjdG9yX2luaXQ7DQo+IMKgDQo+IMKgCQlkaWdfcG9ydC0+aHBkX3B1bHNlID0gaW50
ZWxfZHBfaHBkX3B1bHNlOw0KPiDCoA0KPiBAQCAtNTQ5MiwxMiArNTQ5MiwxNSBAQCB2b2lkIGlu
dGVsX2RkaV9pbml0KHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ICpkaXNwbGF5LA0KPiDCoAkgKi8N
Cj4gwqAJaWYgKGVuY29kZXItPnR5cGUgIT0gSU5URUxfT1VUUFVUX0VEUCAmJiBpbml0X2hkbWkp
IHsNCj4gwqAJCWlmIChpbnRlbF9kZGlfaW5pdF9oZG1pX2Nvbm5lY3RvcihkaWdfcG9ydCkpDQo+
IC0JCQlnb3RvIGVycjsNCj4gKwkJCWdvdG8gZXJyX2RwX2Nvbm5lY3Rvcl9pbml0Ow0KPiDCoAl9
DQo+IMKgDQo+IMKgCXJldHVybjsNCj4gwqANCj4gLWVycjoNCj4gK2Vycl9kcF9jb25uZWN0b3Jf
aW5pdDoNCj4gKwlpZiAoaW50ZWxfZW5jb2Rlcl9pc190YyhlbmNvZGVyKSkNCj4gKwkJaW50ZWxf
dGNfcG9ydF9jbGVhbnVwKGRpZ19wb3J0KTsNCj4gK2Vycl9hdXhfY2hfaW5pdDoNCj4gwqAJZHJt
X2VuY29kZXJfY2xlYW51cCgmZW5jb2Rlci0+YmFzZSk7DQo+IMKgCWtmcmVlKGRpZ19wb3J0KTsN
Cj4gwqB9DQoNCg==
