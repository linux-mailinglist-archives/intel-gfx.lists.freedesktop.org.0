Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBGoHud7HGo+OQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 31 May 2026 20:20:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BB2617744
	for <lists+intel-gfx@lfdr.de>; Sun, 31 May 2026 20:20:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42F69112BBF;
	Sun, 31 May 2026 18:20:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YTqssb/U";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58AA4112BBF;
 Sun, 31 May 2026 18:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780251618; x=1811787618;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LIeJyePoI5hj+7CdeNFuyJqhW/NtRL6djAiIAIB0l+g=;
 b=YTqssb/UF6xZMxpTRxk+fbHwtwCA4OdEY306tB9RFob7HA5fgYwAnLQ7
 1/Wk0K/V7T5U0IXKWcHihIw0XpYsvWaSK7PQ6z1oRNnTWgXyu+dVyAuTF
 Vb3Q6lnpFxca9zYRhFLJ/ENZmXqhyvZI6VtS7IvASg48JAsDs0VHr/Xtm
 oQ0eox2GP8IbJyH9zPeLIiverYS/tQdO2tcUOScqJuDmrJg45k73k41nu
 G4SOdsirQWND/efTOlZAcbaUw0kTsCz8KTmx6kGUIZ3OeML5c5HUnWYC6
 OmyEDfBem/Ff04uy8DOq22VkdOMEuvC09SXDDtjcmLdK0hn3DzNp3fZA9 w==;
X-CSE-ConnectionGUID: wbUznIpbQ+uWA7R/gSkdYw==
X-CSE-MsgGUID: qtgpi3SpRMCjlezJmUSjQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="68556015"
X-IronPort-AV: E=Sophos;i="6.24,179,1774335600"; d="scan'208";a="68556015"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 11:20:18 -0700
X-CSE-ConnectionGUID: sNDlbvrKT8mVlpgIJBxvBQ==
X-CSE-MsgGUID: HTMmsBifRiuuBGiUVnf4aA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,179,1774335600"; d="scan'208";a="267237800"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 11:20:18 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 11:20:17 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 31 May 2026 11:20:17 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.51) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 11:20:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o4m9sWBqvBN3MAF/Cp0n5VNFJ0CatqeyjWpI7k4xUtRcMbh/KVlYKNf8W1f/vsMAvrNP5+cIELQaCGVv0w1XkqA9mw7Glk++b3RvN85r+dj1pJsdCbotkDoLjsOReatrqsOaxtteY5/+fxoVecyY7i4EANntkoUJcFAVHdLerwwDO/afxcIQBJ8D/pu2bUTl3mOr30F4dLk4tg7v0vrJBIha13nr0/Psid5JXpv7F8GN9SMVX3Dadi9sEwFX61RVL09jJtxf7IUH2XoQr14ckzHfFiVetxgD0xraKeV5TnwrmUW4UDMFMpDmgMtQXwU1/mhb7zpmsNb/tsvhJ5UWRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LIeJyePoI5hj+7CdeNFuyJqhW/NtRL6djAiIAIB0l+g=;
 b=dC7tCFkh1ktdrQPFnBdk5LaxFkDcPaUX+SD4/0QPsM/nT3ByWuDkmSrNY2aNWzwBDo1w2F89KYwUf6+xZqtFAt2Y1G3IW9gq+4Z0qMLEIPx4uzMDEHC5Gqn9jcNaBkEfjIWVp7YA2KDzCkcN3Rzasny65Nhk3QG0A1y82nloiSuOT8pnC3VUN1+NDjQwUYgidXEXfM6QBHgjBVIjImlDfDd5LhdfW0TKdkMR8kkX1MXvsdCuhotooq21q4U0mDWlDLd3TFT0v2gU1+S4TI9EFN5c1An9lc31T5nZ/u4dkBZ2bL9zcnwE8ljyaXFnmGjSvYYMDv/gBHVHL2pAKs8abA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS4PPFE90FA9325.namprd11.prod.outlook.com (2603:10b6:f:fc02::5c) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.15; Sun, 31 May
 2026 18:20:10 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0071.015; Sun, 31 May 2026
 18:20:10 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Samala, 
 Pranay" <pranay.samala@intel.com>
Subject: =?utf-8?B?UkU6IFtQQVRDSCB2MyAyLzRdIGRybS9pOTE1L2Rpc3BsYXk6IERvbuKAmXQg?=
 =?utf-8?B?dXNlIGF0b21pYyBzdGF0ZSBiYWNrLXBvaW50ZXIgdG8gZGVyaXZlIGNvbG9y?=
 =?utf-8?Q?_pipeline?=
Thread-Topic: =?utf-8?B?W1BBVENIIHYzIDIvNF0gZHJtL2k5MTUvZGlzcGxheTogRG9u4oCZdCB1c2Ug?=
 =?utf-8?B?YXRvbWljIHN0YXRlIGJhY2stcG9pbnRlciB0byBkZXJpdmUgY29sb3IgcGlw?=
 =?utf-8?Q?eline?=
Thread-Index: AQHc4Qr8Xqgo2e3HP0SOoPXbuumQSbYokgMA
Date: Sun, 31 May 2026 18:20:10 +0000
Message-ID: <DM4PR11MB6360E4F6E3DCE756C62FD130F4142@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260511053213.3122314-1-chaitanya.kumar.borah@intel.com>
 <20260511053213.3122314-3-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260511053213.3122314-3-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS4PPFE90FA9325:EE_
x-ms-office365-filtering-correlation-id: b1a14d31-5e3c-46b2-f5d7-08debf414002
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|11063799006|4143699003|18002099003|22082099003|56012099006|38070700021;
x-microsoft-antispam-message-info: 7zRqGDQ5tKLSR3PpDXHoRSrZ3EmR/lJRN8Htl68sMo0WeJP9K0m+PXRzkc0/dOjAVJ/wq+1vIlIaK4wFy4EB1+p2pOrjkZZBxB495qTGxO/6wq9wIKOsjsFTIFI51VFFsIiU6cwVCiKFXBVJsLT1XUbyiO3XdneUNWyiWgtH0uTLo8myR7+0sAf4fvrGgWta9HLP5SebmkAf197j/a6EasxfvrCkKLohKs97RHV1WwQA6IDVlD0maLaBWd3ddkHQD32ANLolZbxiigUsvK+Nt6Ggq2E2k8gSYp2DzQX/y72vMx0ijF0y0tO3MjdOkegv+xEkSj1fkbX3Gl4H+uLo4llao7ZKGSFTgm+6MMV/6JPkA3VXMm4ZlRVnMLMkz9uu/lW0YpknR0+qgVd0WpTikYusLhMD0O1hw7GdRWGRZ2zm3RytORqbiFyxBMVMcYdb7z+Nn/JoaFZkYiwu0ykcDlHBjZH/OfNw8fB6VKBCQzJ/Cu8aemkfwyp+ba3R3lVRizWMGJ63xK5riPO29+26aeV0SK0zo43BwzeC+lbzXrzE8GBcvR2+q1hfD3UiykS2o+2JmLbf8JSto4dOBR60s4+NuJcu244J+2sILDdWJbrKvWlLr5I2OSqz4F0sp4wX5Wn3djJO53FCQG9FvHBC1G0IHP+WZatnjQLHM90NWWDq1JczByjB2CzB/CkTRluIMAu7v8xfGxszdIrY5H0nHp1SCdxJpv+z2PwvGAIUlxN4UwtLiaOcAJNE/fUZdDKA
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(11063799006)(4143699003)(18002099003)(22082099003)(56012099006)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cWNxMnIycVdETEsxUWhxNG1sV095b0JTY2ozZFdpcTF5ckF3UFhYd252bUlX?=
 =?utf-8?B?c0UwMzJQUVpQYlhiMVZ4SklEVzR5Vm9pRS8zNWZ4Qkp6TjcwU3hTMXpjcjRs?=
 =?utf-8?B?RHp4WFlvWHllK1Fkd1RFajh0T1hHb21laWpQUWllUzRtQ0RieUFyOVJlQ3pa?=
 =?utf-8?B?Ky9TNDNiQXhNVUtiY1ZFR0dsY1gwSExMTTBGOXh6cTQ5NGVGODVMZkk4UEFM?=
 =?utf-8?B?NVJpa3o3elQ4YThnc1lVUFltb0doK0RYekVsb0V4ZzlKNXovQm5MZnpLVDVr?=
 =?utf-8?B?ZzJNRjVQSEJTeTBGSHlMcUZGUEl3dXF2eXJFcG1haG10UWd6d0FscWhzMUVB?=
 =?utf-8?B?TXBYTTN1a2ZlbHhkSk01SnBQdTdaYjRWemxzWGhna2U5dy9PeVM2L1o1WEF0?=
 =?utf-8?B?VDBLbzlLVVZPOW1Va2FLTkxyV3hXaE04VVdDTzExUWVObVlCbUFuRlg4OURL?=
 =?utf-8?B?dUxxb2pnMjRzSGdvNnlZcjl6YTNEOHNWRlZPQjhBYXd3aHpoT256azVBaHBR?=
 =?utf-8?B?MXFYL294NjJrcWNheUtCaThLL2hqL1MybEkySkF0RDlhbXlWY2VOV2trZFpH?=
 =?utf-8?B?QlcyVzVrb2VQOGxnV2VVRmF4djlKSkFLR1Z1WjNWaGJMcUVpSytTbExUaWNa?=
 =?utf-8?B?WmhsazNNTjUrYVhNUm5jVkxOSzdrVTlVeDlWVkUwR3h4MlFTRnVIWTNOT3FN?=
 =?utf-8?B?aDN5Rml2R1pQdy9DTS9UdHV5Tnc2L0xNdUFWVXhweGptNWEvRjV5TmRNS2VT?=
 =?utf-8?B?cWdjYU04My9uSlB0YTlhVFUzR2FPR29yQXA4dGVoSlp3RXh0ejZSeFFURExS?=
 =?utf-8?B?U2tVU2ZnTGxoWlVDTGo4TkE4Nm9zeEpYQXYzRWFUWFNrbzV4MkVOSHZtZHhD?=
 =?utf-8?B?TmFnODhsblBvVlVXbkRUZlJIMHA4bTh3MmIyVWwzZUNxUkErNGs4T1NTRURp?=
 =?utf-8?B?VTdCREJJV3o0T0NWUHdCWTU2dHpJYkh5UWhvNHVucUNCbk00L3dvZjljWkxL?=
 =?utf-8?B?WVIzSzhjUWlZMVZpWEJkbkpWdmJDbzdYSDkyZEhGZnpCbklYL2RraEpwaFov?=
 =?utf-8?B?V2ROVkoxRkt3VkI5eDBKRExYR05kQ1BZN3dSb1M2ci9SeFdlemd1VE9ibmtU?=
 =?utf-8?B?U1BiSUd5eFowZ3VRVGRmaDR2b2N4RHRFU0JVQ1FXTktQcjMzSVlUVTF1dldJ?=
 =?utf-8?B?am93RjhnSTZzMURQMWFUTzdnb2ZUZlVNdVhyVGpLT09NSC9vdGhVRlZsMnRC?=
 =?utf-8?B?a1BEMkw5enZiL29SblA1cGJnVHIrTFdvdzZIWVVnc0kra1NnM2xrVTIxMnNm?=
 =?utf-8?B?Q1FWd3k2ejd6eGZ5THpmNnQ4VUlpL0pxNzF0WnUrdDQyM0pOOVVKM29aT2lK?=
 =?utf-8?B?ZW9lVjg3R2dDdTdPNFZmd3Z1N1pDWlkwWnIvR29GS01hYzNUUlNXamtrZWxx?=
 =?utf-8?B?amZIcjgwZTBFUWdCMWc2UFExNXRVdEM3WXJkRjh0bm9aU3RUZWpEektBMFdC?=
 =?utf-8?B?WXowQi90eWZjUzJKenFQSnBBRFBObFU4R3dNL0xISmRDaGdHb2xIUDlWK3ZN?=
 =?utf-8?B?MitwUzgwdmI2dExLVGhYOXhaS2t0Y3YyM0Z0L1EveHNnVEdYV3loQUhhVWFi?=
 =?utf-8?B?MFhtWDVTUm1sTlVMSG9VakxQSjRraTV2Vm5RMHhyOEVYYlZlMjFLMmVlMlNR?=
 =?utf-8?B?eHpXQUlzR01FaU1RTVZqOG16QTF0cFl0S2NyclFLcUxuWllRZDFGb2l3a0FY?=
 =?utf-8?B?ZDV0VTR2T2FHTTNac0dPWmlRczhJam1NMjNNOHBadm5NdDY2dXBMT3lzUnVw?=
 =?utf-8?B?RTMxdk5XbnBQcUVJM2F4NWNneXI3MXdMV1F5WkpLTGgxV0xXcFNNRjN2Rmlz?=
 =?utf-8?B?RTF0aWd4OCtidjZ5SUkxc2loNnllbi9Gb2RwWHh4U08wQUFsSU1MNFZYQmJN?=
 =?utf-8?B?Y2dRTDRBV25uclpsYW53LzhQdmMxN0RxUHZ6M0lzZ1FYNGJBWVFrUDAya0xG?=
 =?utf-8?B?RmhXR25HUVJodkVnMUF6MkJsY1dVZjRoMG9CY2VzQysydkNCVUtXN2hBNGJ0?=
 =?utf-8?B?ZnBXSHVJR2Z5a2tVVittNXVEV1dDbTdyNlR5L1lEVVZnbWsvY2FFL1NpRXRM?=
 =?utf-8?B?eHJiMnZyL1RxaCtLZ2hRVmN1SW1wNnJueDNZZjZ3MmYwNGNBWnNQMDU2dWlB?=
 =?utf-8?B?dk1DVldRRnl3bFVkOWtHQTd5SXJ6STJyNnJVdVBUWW9uTkZHUE90MU5QcWl3?=
 =?utf-8?B?SkZxd0pldFdLRDcxN24yU3pYdUJsbmErS25YcTNCcjdIbXU3dCs2aHdUUkps?=
 =?utf-8?B?Z2JoZXV6aE1xUHZjakZldkVEUiswaUZnbU5GbW5BbWdxSGNQd3NvQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: DFpTOqPo6VNo9glqOdAJ/b3IwAntq2wdPRDQdtiBSTvwrVFdvE5WTMpon18w313RpBf0gZm/WKcKhW0EJSPUNQi7Rx8vWj6N4v4gW2Y1Q5aPywZo/hX2GqmoSLO7zg/5SISLuVdcOuCLc40VDDbmz220C3lw67FZxmSdjoIT2I9ndiHRknyOYGIMN23XMAfmeZHKs2vDf1SGLaqqy/40znva0Q9P3J7j6efaGqSPZa7yWUcnyi/7m/Z9NvlEpWUviab2gEuSGAEXeFx0+ydfSc08LdJ/iqisKJ4yA0zex8mrRhzHf9lEQmIbcTEbMmU9MDLe97eYjG0zuXcack2Adw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b1a14d31-5e3c-46b2-f5d7-08debf414002
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2026 18:20:10.0761 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4Lj4n6X2vsX9Cd9UEcZ0YOAQQArGOMlH9E3g1Dwja218K4XHrP/bkPmZwfIFWywjJbvLnBTQvEZHq0XjxNPf7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPFE90FA9325
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 62BB2617744
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQm9yYWgsIENoYWl0YW55
YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gU2VudDogTW9uZGF5
LCBNYXkgMTEsIDIwMjYgMTE6MDIgQU0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogdmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb207IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsN
Cj4gQm9yYWgsIENoYWl0YW55YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNv
bT47IFNhbWFsYSwgUHJhbmF5DQo+IDxwcmFuYXkuc2FtYWxhQGludGVsLmNvbT4NCj4gU3ViamVj
dDogW1BBVENIIHYzIDIvNF0gZHJtL2k5MTUvZGlzcGxheTogRG9u4oCZdCB1c2UgYXRvbWljIHN0
YXRlIGJhY2stcG9pbnRlciB0bw0KPiBkZXJpdmUgY29sb3IgcGlwZWxpbmUNCj4gDQo+IEluc3Rl
YWQgb2YgcmVseWluZyBvbiB0aGUgcGxhbmVfc3RhdGUtPnVhcGkuc3RhdGUgYmFjay1wb2ludGVy
IHRvIHJlYWNoIHRoZQ0KPiBpbnRlbF9hdG9taWNfc3RhdGUgaW5zaWRlIGludGVsX3BsYW5lX2Nv
bG9yX2NvcHlfdWFwaV90b19od19zdGF0ZSgpLA0KPiBhY2NlcHQgdGhlIGludGVsX2F0b21pY19z
dGF0ZSBhcyBhbiBhcmd1bWVudCB0byBtYWtlIHRoZSBkZXBlbmRlbmN5IGV4cGxpY2l0Lg0KPiAN
Cj4gVXBkYXRlIGludGVsX3BsYW5lX2NvcHlfdWFwaV90b19od19zdGF0ZSgpIGFuZCBpdHMgY2Fs
bGVycyBhY2NvcmRpbmdseS4NCj4gQ2FsbCBzaXRlcyB0aGF0IGRvIG5vdCBoYXZlIGFuIGF0b21p
YyBzdGF0ZSBhdmFpbGFibGUgKGUuZy4gbGVnYWN5IGN1cnNvciB1cGRhdGUNCj4gYW5kIGluaXRp
YWwgcGxhbmUgc2V0dXApIHBhc3MgTlVMTC4NCj4gDQo+IEluIHN1Y2ggY2FzZXMsIHNraXAgY29s
b3IgcGlwZWxpbmUgcHJvZ3JhbW1pbmcgYXMgdGhlcmUgaXMgbm8gY29ycmVzcG9uZGluZw0KPiBh
dG9taWMgY29sb3JvcCBzdGF0ZSB0byBjb25zdW1lLg0KPiANCj4gdjI6DQo+ICAtIFJlYmFzZQ0K
DQpMb29rcyBHb29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmth
ckBpbnRlbC5jb20+DQoNCj4gU3VnZ2VzdGVkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBBc3Npc3RlZC1ieTogR2l0SHViIENvcGlsb3Q6Q2xh
dWRlIFNvbm5ldCA0LjYNCj4gU2lnbmVkLW9mZi1ieTogQ2hhaXRhbnlhIEt1bWFyIEJvcmFoIDxj
aGFpdGFueWEua3VtYXIuYm9yYWhAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3Vyc29yLmMgICB8ICAyICstDQo+ICAuLi4vZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9pbml0aWFsX3BsYW5lLmMgICAgfCAgMiArLQ0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wbGFuZS5jICAgIHwgMjIgKysrKysrKysrKystLS0tLS0t
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wbGFuZS5oICAgIHwgIDMg
KystDQo+ICA0IGZpbGVzIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDEyIGRlbGV0aW9ucygt
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y3Vyc29yLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N1cnNvci5j
DQo+IGluZGV4IDE4ZDEwMTRkZTM2MS4uZmE5MzQyNDhlM2UxIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N1cnNvci5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3Vyc29yLmMNCj4gQEAgLTg3Nyw3ICs4NzcsNyBA
QCBpbnRlbF9sZWdhY3lfY3Vyc29yX3VwZGF0ZShzdHJ1Y3QgZHJtX3BsYW5lICpfcGxhbmUsDQo+
ICAJbmV3X3BsYW5lX3N0YXRlLT51YXBpLmNydGNfdyA9IGNydGNfdzsNCj4gIAluZXdfcGxhbmVf
c3RhdGUtPnVhcGkuY3J0Y19oID0gY3J0Y19oOw0KPiANCj4gLQlpbnRlbF9wbGFuZV9jb3B5X3Vh
cGlfdG9faHdfc3RhdGUobmV3X3BsYW5lX3N0YXRlLCBuZXdfcGxhbmVfc3RhdGUsDQo+IGNydGMp
Ow0KPiArCWludGVsX3BsYW5lX2NvcHlfdWFwaV90b19od19zdGF0ZShOVUxMLCBuZXdfcGxhbmVf
c3RhdGUsDQo+ICtuZXdfcGxhbmVfc3RhdGUsIGNydGMpOw0KPiANCj4gIAlyZXQgPSBpbnRlbF9w
bGFuZV9hdG9taWNfY2hlY2tfd2l0aF9zdGF0ZShjcnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSwN
Cj4gIAkJCQkJCSAgb2xkX3BsYW5lX3N0YXRlLA0KPiBuZXdfcGxhbmVfc3RhdGUpOyBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9pbml0aWFsX3BsYW5lLmMN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2luaXRpYWxfcGxhbmUuYw0K
PiBpbmRleCAwMzRmZTE5OWMyYTEuLjA2MWEzZDZlYmNhMCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9pbml0aWFsX3BsYW5lLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9pbml0aWFsX3BsYW5lLmMNCj4gQEAgLTE3
MCw3ICsxNzAsNyBAQCBpbnRlbF9maW5kX2luaXRpYWxfcGxhbmVfb2JqKHN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjLA0KPiAgCWRybV9mcmFtZWJ1ZmZlcl9nZXQoZmIpOw0KPiANCj4gIAlwbGFuZV9z
dGF0ZS0+dWFwaS5jcnRjID0gJmNydGMtPmJhc2U7DQo+IC0JaW50ZWxfcGxhbmVfY29weV91YXBp
X3RvX2h3X3N0YXRlKHBsYW5lX3N0YXRlLCBwbGFuZV9zdGF0ZSwgY3J0Yyk7DQo+ICsJaW50ZWxf
cGxhbmVfY29weV91YXBpX3RvX2h3X3N0YXRlKE5VTEwsIHBsYW5lX3N0YXRlLCBwbGFuZV9zdGF0
ZSwNCj4gK2NydGMpOw0KPiANCj4gIAlhdG9taWNfb3IocGxhbmUtPmZyb250YnVmZmVyX2JpdCwg
JnRvX2ludGVsX2Zyb250YnVmZmVyKGZiKS0+Yml0cyk7DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wbGFuZS5jDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wbGFuZS5jDQo+IGluZGV4IGU0MDNmZTRhOGEyMC4uYThl
ZmUwMDExYjIzIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3BsYW5lLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
bGFuZS5jDQo+IEBAIC0zODEsMjUgKzM4MSwyNyBAQCBpbnRlbF9wbGFuZV9jb2xvcm9wX3JlcGxh
Y2VfYmxvYihzdHJ1Y3QNCj4gaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlLCAgfQ0KPiAN
Cj4gIHN0YXRpYyB2b2lkDQo+IC1pbnRlbF9wbGFuZV9jb2xvcl9jb3B5X3VhcGlfdG9faHdfc3Rh
dGUoc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSwNCj4gK2ludGVsX3BsYW5l
X2NvbG9yX2NvcHlfdWFwaV90b19od19zdGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSwNCj4gKwkJCQkJc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSwNCj4g
IAkJCQkJY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlDQo+ICpmcm9tX3BsYW5lX3N0YXRl
LA0KPiAgCQkJCQlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykNCj4gIHsNCj4gIAlzdHJ1Y3QgZHJt
X2NvbG9yb3AgKml0ZXJfY29sb3JvcCwgKmNvbG9yb3A7DQo+ICAJc3RydWN0IGRybV9jb2xvcm9w
X3N0YXRlICpuZXdfY29sb3JvcF9zdGF0ZTsNCj4gLQlzdHJ1Y3QgZHJtX2F0b21pY19jb21taXQg
KnN0YXRlID0gcGxhbmVfc3RhdGUtPnVhcGkuc3RhdGU7DQo+ICAJc3RydWN0IGludGVsX2NvbG9y
b3AgKmludGVsX2NvbG9yb3A7DQo+ICAJc3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICpibG9iOw0K
PiAtCXN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKmludGVsX2F0b21pY19zdGF0ZSA9DQo+IHRv
X2ludGVsX2F0b21pY19zdGF0ZShzdGF0ZSk7DQo+IC0Jc3RydWN0IGludGVsX2NydGNfc3RhdGUg
Km5ld19jcnRjX3N0YXRlID0gaW50ZWxfYXRvbWljX3N0YXRlID8NCj4gLQkJaW50ZWxfYXRvbWlj
X2dldF9uZXdfY3J0Y19zdGF0ZShpbnRlbF9hdG9taWNfc3RhdGUsIGNydGMpIDogTlVMTDsNCj4g
KwlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUgPSBzdGF0ZSA/DQo+ICsJ
CWludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNydGMpIDogTlVMTDsNCj4g
IAlib29sIGNoYW5nZWQgPSBmYWxzZTsNCj4gIAlpbnQgaSA9IDA7DQo+IA0KPiArCWlmICghc3Rh
dGUpDQo+ICsJCXJldHVybjsNCj4gKw0KPiAgCWl0ZXJfY29sb3JvcCA9IGZyb21fcGxhbmVfc3Rh
dGUtPnVhcGkuY29sb3JfcGlwZWxpbmU7DQo+IA0KPiAgCXdoaWxlIChpdGVyX2NvbG9yb3ApIHsN
Cj4gLQkJZm9yX2VhY2hfbmV3X2NvbG9yb3BfaW5fc3RhdGUoc3RhdGUsIGNvbG9yb3AsDQo+IG5l
d19jb2xvcm9wX3N0YXRlLCBpKSB7DQo+ICsJCWZvcl9lYWNoX25ld19jb2xvcm9wX2luX3N0YXRl
KCZzdGF0ZS0+YmFzZSwgY29sb3JvcCwNCj4gK25ld19jb2xvcm9wX3N0YXRlLCBpKSB7DQo+ICAJ
CQlpZiAobmV3X2NvbG9yb3Bfc3RhdGUtPmNvbG9yb3AgPT0gaXRlcl9jb2xvcm9wKSB7DQo+ICAJ
CQkJYmxvYiA9IG5ld19jb2xvcm9wX3N0YXRlLT5ieXBhc3MgPyBOVUxMIDoNCj4gbmV3X2NvbG9y
b3Bfc3RhdGUtPmRhdGE7DQo+ICAJCQkJaW50ZWxfY29sb3JvcCA9IHRvX2ludGVsX2NvbG9yb3Ao
Y29sb3JvcCk7IEBAIC0NCj4gNDE1LDcgKzQxNyw4IEBAIGludGVsX3BsYW5lX2NvbG9yX2NvcHlf
dWFwaV90b19od19zdGF0ZShzdHJ1Y3QNCj4gaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRl
LA0KPiAgCQluZXdfY3J0Y19zdGF0ZS0+cGxhbmVfY29sb3JfY2hhbmdlZCA9IHRydWU7ICB9DQo+
IA0KPiAtdm9pZCBpbnRlbF9wbGFuZV9jb3B5X3VhcGlfdG9faHdfc3RhdGUoc3RydWN0IGludGVs
X3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSwNCj4gK3ZvaWQgaW50ZWxfcGxhbmVfY29weV91YXBp
X3RvX2h3X3N0YXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiArCQkJCSAg
ICAgICBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlLA0KPiAgCQkJCSAgICAg
ICBjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUNCj4gKmZyb21fcGxhbmVfc3RhdGUsDQo+
ICAJCQkJICAgICAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiAgew0KPiBAQCAtNDQ0LDcg
KzQ0Nyw3IEBAIHZvaWQgaW50ZWxfcGxhbmVfY29weV91YXBpX3RvX2h3X3N0YXRlKHN0cnVjdA0K
PiBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUsDQo+ICAJcGxhbmVfc3RhdGUtPnVhcGku
c3JjID0gZHJtX3BsYW5lX3N0YXRlX3NyYygmZnJvbV9wbGFuZV9zdGF0ZS0+dWFwaSk7DQo+ICAJ
cGxhbmVfc3RhdGUtPnVhcGkuZHN0ID0gZHJtX3BsYW5lX3N0YXRlX2Rlc3QoJmZyb21fcGxhbmVf
c3RhdGUtPnVhcGkpOw0KPiANCj4gLQlpbnRlbF9wbGFuZV9jb2xvcl9jb3B5X3VhcGlfdG9faHdf
c3RhdGUocGxhbmVfc3RhdGUsIGZyb21fcGxhbmVfc3RhdGUsDQo+IGNydGMpOw0KPiArCWludGVs
X3BsYW5lX2NvbG9yX2NvcHlfdWFwaV90b19od19zdGF0ZShzdGF0ZSwgcGxhbmVfc3RhdGUsDQo+
ICtmcm9tX3BsYW5lX3N0YXRlLCBjcnRjKTsNCj4gIH0NCj4gDQo+ICB2b2lkIGludGVsX3BsYW5l
X2NvcHlfaHdfc3RhdGUoc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSwgQEAg
LTg0MSw3DQo+ICs4NDQsOCBAQCBzdGF0aWMgaW50IHBsYW5lX2F0b21pY19jaGVjayhzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAkJCQkJICAgb2xkX3ByaW1hcnlfY3J0Y19w
bGFuZV9zdGF0ZSwNCj4gIAkJCQkJICAgbmV3X3ByaW1hcnlfY3J0Y19wbGFuZV9zdGF0ZSk7DQo+
IA0KPiAtCWludGVsX3BsYW5lX2NvcHlfdWFwaV90b19od19zdGF0ZShuZXdfcGxhbmVfc3RhdGUs
DQo+ICsJaW50ZWxfcGxhbmVfY29weV91YXBpX3RvX2h3X3N0YXRlKHN0YXRlLA0KPiArCQkJCQkg
IG5ld19wbGFuZV9zdGF0ZSwNCj4gIAkJCQkJICBuZXdfcHJpbWFyeV9jcnRjX3BsYW5lX3N0YXRl
LA0KPiAgCQkJCQkgIGNydGMpOw0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcGxhbmUuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcGxhbmUuaA0KPiBpbmRleCA3YjU0NTZmNTZmNDIuLjlkNjI3ZDMyMWYyZSAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wbGFuZS5oDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGxhbmUuaA0KPiBAQCAt
MzUsNyArMzUsOCBAQCB1bnNpZ25lZCBpbnQgaW50ZWxfcGxhbmVfcGl4ZWxfcmF0ZShjb25zdCBz
dHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwgIHVuc2lnbmVkIGludCBpbnRl
bF9wbGFuZV9kYXRhX3JhdGUoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUsDQo+ICAJCQkJICAgY29uc3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9z
dGF0ZSwNCj4gIAkJCQkgICBpbnQgY29sb3JfcGxhbmUpOw0KPiAtdm9pZCBpbnRlbF9wbGFuZV9j
b3B5X3VhcGlfdG9faHdfc3RhdGUoc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0
ZSwNCj4gK3ZvaWQgaW50ZWxfcGxhbmVfY29weV91YXBpX3RvX2h3X3N0YXRlKHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiArCQkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfcGxhbmVf
c3RhdGUgKnBsYW5lX3N0YXRlLA0KPiAgCQkJCSAgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfcGxh
bmVfc3RhdGUNCj4gKmZyb21fcGxhbmVfc3RhdGUsDQo+ICAJCQkJICAgICAgIHN0cnVjdCBpbnRl
bF9jcnRjICpjcnRjKTsNCj4gIHZvaWQgaW50ZWxfcGxhbmVfY29weV9od19zdGF0ZShzdHJ1Y3Qg
aW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlLA0KPiAtLQ0KPiAyLjI1LjENCg0K
