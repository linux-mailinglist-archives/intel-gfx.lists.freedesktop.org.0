Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C658B2A70
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Apr 2024 23:09:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A5C910E5D4;
	Thu, 25 Apr 2024 21:09:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RrpQLbih";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27D0B10E5EA
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Apr 2024 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714079394; x=1745615394;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ykcxRoUevcSKvjmw2GVXGyvf8N3EaHZIGMaAfBLeo98=;
 b=RrpQLbihMwmuevX4GRjoHvARlSON51Lp7AYccuFLFBDWuUEoQuH3I798
 E7w30U+m1gB20AcrB/VvKn3TMT69gXt5tqgdi8dZSI+Z7GtnjH9Hz1pcw
 l/dgKKPC9XRfO4/T7oSJVVA5VgFElIq3DGuqYN27w+NOs0JpbU45lRUEx
 VhSNdXdfr9vhwulV9fh48pF1GYOmEB72uEpU1e7LSfRM38c3LduzDulI2
 QxdW/yRkc+Vi6TxpOlc/QqRSXtyF1mGgzixhpEPu0iAeuSJLCuwuTwqaQ
 KTUC22qyvVjS4S+ofavrstiOasb/QuqxEVFadebSVU5ydHQ/vH1gilsA7 g==;
X-CSE-ConnectionGUID: I0tsOuHiRUKoZmCUSkhEUQ==
X-CSE-MsgGUID: 5gbQOIilQ9eawYXHEZB8ew==
X-IronPort-AV: E=McAfee;i="6600,9927,11055"; a="9660198"
X-IronPort-AV: E=Sophos;i="6.07,230,1708416000"; 
   d="scan'208";a="9660198"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2024 14:09:53 -0700
X-CSE-ConnectionGUID: pvGLlhvzQEC7+HJhUuiQrg==
X-CSE-MsgGUID: j4IwwbBdSGCOTwY/DCxpvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,230,1708416000"; d="scan'208";a="25255250"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Apr 2024 14:09:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 25 Apr 2024 14:09:49 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 25 Apr 2024 14:09:49 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 25 Apr 2024 14:09:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UElKEzXlLkKyDVp1g2k1Qwpa9MEJe3zM/ZhtT7rw+gNyFAXCQ5BY8sBGtwmqE0y0Ch73iWgu6QE3cOh4rnCUwqvd8zSOPmq+vjwYFxZukaDzduZmMbXb6Ql0PsUnVivf4BXjwB6BoRYgVwvST9Vxx1PXe5uaIa9uVkxJKzdqM309ydIYqhRN4cGflGSwFCgab1JwdeZH170LooBd2F/qW5c+qxBnih5hiwNfHV39h/OAb3VADlsyGIDeLTziKsbjiAxDQFRnjEFe1qyZnrG3pIFgy5gJSGCYv5rZKyAjMNGtpxZKfRuvghO4Y91yHVa5lOyxYEK81iMJkXmyfhEryA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ykcxRoUevcSKvjmw2GVXGyvf8N3EaHZIGMaAfBLeo98=;
 b=V2Gduq4HXFPkgqqyzznhASbJEJh83RrOkk3CJLsYhzXDuYWGlA2RRzUQBhObEaAFkLnXVTJf+uwj5eFFGUaEH2dg66cL0Nb+2PGwjwFMSBmMumAc40+9U8BMh2Hi2PciBz7vzB0itXlFxMxMJer8RSMoOFhY6FmbbdcCXtTU+b9Ppv25YwwSuvoGPCM+2hvZUJKgSFpx4426bWZyLJpd9MpqMIGowREJWYynRJ7LEvjcyJKLfVPeiZogZ6AYcQ+p0rc1fHmD5FaHll/NtZo+RphJijLDHtX8fzGnOTwwRd1YvJhz5r8S3u89NZoa9fFCFdT7eqPkY0MZohmQpKlsDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by DM6PR11MB4628.namprd11.prod.outlook.com (2603:10b6:5:28f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.22; Thu, 25 Apr
 2024 21:09:46 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::f061:a0b9:4a91:b27c]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::f061:a0b9:4a91:b27c%4]) with mapi id 15.20.7519.021; Thu, 25 Apr 2024
 21:09:46 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH] drm/i915/gem: Downgrade stolen lmem setup warning
Thread-Topic: [PATCH] drm/i915/gem: Downgrade stolen lmem setup warning
Thread-Index: AQHakqJwRdNC5neFykCfNE08TRWWF7Fz13WAgAWrhzA=
Date: Thu, 25 Apr 2024 21:09:46 +0000
Message-ID: <CH0PR11MB5444D4DFB022915042912932E5172@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20240419212643.3915745-1-jonathan.cavitt@intel.com>
 <ZiYDrR6uUEqNFeSn@bvivekan-mobl2>
In-Reply-To: <ZiYDrR6uUEqNFeSn@bvivekan-mobl2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|DM6PR11MB4628:EE_
x-ms-office365-filtering-correlation-id: 4e4ff5f3-ccad-464a-227e-08dc656c0949
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?MnVQWDFnbXg0UUtnZm1yZC9uakxFazkwaTZid3lPbWtaN2NQTHJhTDBLd0lz?=
 =?utf-8?B?Z091bGRHc0FTL05yQWtQa01SanZqODFzZCtzUDRwQXM0MWtyN1poWFc2NStS?=
 =?utf-8?B?WDlaNWZ5YVd0b2NzNU1OYkNHWkVocE1GeXZvM2hBOUhvUFhUdEFBZTRWUEVo?=
 =?utf-8?B?MnRmaU9zeWNnMDJDN2o1eGZYVVhTY2V3N3Q2UjdIUk1vbnVyOGdJc1pRT2Ry?=
 =?utf-8?B?U0g4N005M0VacXZlbU1jd2ZiZCtvdzdyWkxlaUZHWTVZMkd6T3NVUU9rU0ta?=
 =?utf-8?B?RUdVa1dUUVNBT0dQZVF4Rld6MkdtUkJ2M3BpcklJZUZ1Y1FFQ21EeTdsL3RS?=
 =?utf-8?B?T1N1V1h3U00rTzFvY0U1aXlJdmhkNk91dnFuODJpVEFPTWFmb3hkb25ORjB5?=
 =?utf-8?B?QXQ1Tmw0VVRlRWloU3BvU09laGs0a2xXa3diVW41UE5GMnM3STNYTXVPTXJD?=
 =?utf-8?B?SWdHeFNKZ0REa1dsTHRRZThtSDJ4TGszdk1sNTV2dUJ2Zi8yRXBxKzgvNm1z?=
 =?utf-8?B?aXVrZ09KUXdOZmtENnJBbEJTQk5VdWdoUU43OHZ3dVV4bk9lcjJrTHkyYkFC?=
 =?utf-8?B?anJMR1MxNzVFbkhCalVVQWF3SHdXWjM2SE1Mc1FWRXdEaHZ5RmhTVHgyWTho?=
 =?utf-8?B?L1hMa01sZytRT2s1empDd1hobFI0NEdzOUtQdjRGeW9GMEM1bkJoaVdjL3Nu?=
 =?utf-8?B?K2hGaVVYdEhLRlM1bXNtb2NGRVp4UVgvK0FGL1BKY3ZRdjlWcVJ4SlVKSjYy?=
 =?utf-8?B?OEZKWGc3bW5iLzRBaThwUTdjL0xBOCtaY09lVzJGL2dNRFpnaE5HVGUrQ204?=
 =?utf-8?B?S0JZTVZmUFBrck81UUdCMjVkQVZUa2xHb1p6ci85ckhweTByNXdKRkl5Qnhk?=
 =?utf-8?B?NndUMXRrZVNEU0FmMUdoR0FxVUUvR0FVMERpc3hzMUZyK1lWVGppV0x4eHY1?=
 =?utf-8?B?THlCMkRod1ZjaHhIZlh3OXp2ZHVvWFgwOFBkaDZ6aW9HcEI5MFV0d21qdTk5?=
 =?utf-8?B?dXlhcmVkM1lZNmxqSHFSR1R1YklLaS91VjRleFoyTzFjdHJuVURINHFORzkw?=
 =?utf-8?B?RUFNR0IybEdNQmxIQ21sc20reDlWU080NFJhWmtIRnN4bG15OXViUkdRcHU4?=
 =?utf-8?B?RlRiSnBidE9TRHlrcFNOdTRQdzFPVlNDWmtSYjFuSm1Rd0ZWSFdHVVpsSzNI?=
 =?utf-8?B?L0V5dUtNRURCNDh5Njh1aEVKTi9ySWVwRVdXcXFPNGdCOUNzbzNvbGt2M1cv?=
 =?utf-8?B?V1lEaFlsQlZZMEVrNE9QMnI5YTZEWkhiVDZ3UHh1U09YYURIaEhKaE50VFNV?=
 =?utf-8?B?aVVIY3gwQnpEODlHS0RPZFpBTUdCNHdpcXNQMTdiTkFHNFVFa0VHUDZNK2E5?=
 =?utf-8?B?cFBqYUhNK1FWSllQakR2YUt5c2NnLzFlVWltOURBV0hIQWVhakRneDJNTmhH?=
 =?utf-8?B?b1BhaEw1OWdORTFjdVdJK2pqVnlPNkdReHBEZmZTY0xmK2VjcG9XZWlETTdQ?=
 =?utf-8?B?VXR2bFgzK2J0ZVJSZDVoN1BWMkluVkNESzVObHlEaGthd3o1WTRFRk9ZYWNR?=
 =?utf-8?B?U2VLQlJ5aGQ3WVJ6dzJ2REU3cFpnTnR4UEVrQ2hDM0NOUm0ybEdGc3dwajlJ?=
 =?utf-8?B?MUkwQmJleWNQcXcvMDlhcWRnNzNSVXBVb1RTd1Z1T0FQNUlGUE1BYU53ck11?=
 =?utf-8?B?N3JzbVRzci91SEt2cWtZN2o3WWhwbEJxczNOYmYzNmZIN3pON29mNWtnPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SXBrbndlYlFqOWRpekw0QmRkRFpPMEFjSVIwUEJMc29SeWdrM3M0d2RhbUR0?=
 =?utf-8?B?MSs2WWZ2N2xPcmsxaGpZcUFuS1kyLzR3SzM4T0VwZWdnMm1pOGVpRWdPTldv?=
 =?utf-8?B?bUIwQnlZSFh1UHY1MUNIME51VXYwMUNZRWhsYVVSNHBrczcrdFoyTE5KajBk?=
 =?utf-8?B?MFpCVnd1ckRGSmVKMWtTSUhiaTJPajEyQ1VYdEMrOEZDSUtDV3JRTW5NbUpj?=
 =?utf-8?B?N2huL1pOS3ZPWDFqK1lKU2lKK3N1MU1BcllqZzl1bmJiSCthVDRBWWFNcmNM?=
 =?utf-8?B?YTNsaUNIb0ZteXY5WEFsTkN0NWxIenJQR3I3Yi9hTjJOMzZoUE14dTdYMDF2?=
 =?utf-8?B?R0hYY3dNdmZxZFUyeXpFUEYvZW5LcmJzSDREU3JoazFrT05uWmpUUzU1V3A0?=
 =?utf-8?B?RXFUNVY5STZJMkNBeU5Qcit1Smora1VHa0d1T3Q5di9HZ3VlOEhxcmd6VGVW?=
 =?utf-8?B?RXJkanFVSUxXQUJEdUFzNnhyZGp6b00yeGpNcDVrVVdXMkpEWE5qK3JrTlN6?=
 =?utf-8?B?b1BDL2NjcitnRk9TeTFiTHZNd282RTFRSkpjWXBQQkRnRjlGalVndTI4T3Mz?=
 =?utf-8?B?S2dlYTRMbXVPK2VGVGVPRjFvWHp4ZWQ1S1JlQ2NZNldDU0tCa0tuUkdFbTRS?=
 =?utf-8?B?MTJNZXZ4STM3WWw4aGc3dnA1MkVyZXJLU1lYdVRjWGhsOWdSdTVNVXU3Qlho?=
 =?utf-8?B?MENHQTV0ZjBEK2hJa1VwRzduN0NjTVJWMHM1ZHNaL0l1bGF2VGt0Q09UdGVI?=
 =?utf-8?B?WHB1OUxVYzZUNGo0ZXd0dCtDVkpycWRrUk0zU2lMcjdJNlh6VjdmakErcG1D?=
 =?utf-8?B?cUVSd1BrdTdSdUdVMGJ6aW1DQmlEM29wS2VreTJOMVlNUjRsYWhibElNcUx1?=
 =?utf-8?B?aHdkNndFaFh4SXJ5TDZuOGdERnVHSGlWNmc5QWF2OFRyejNXUCtpMS90OTRp?=
 =?utf-8?B?RnRVNVN5dHUrR2QzeXRhNFVOaXg2V0N1ak5xd2V2dzB4cHZkNGxDUEpOQ2ZI?=
 =?utf-8?B?OTAzblltR2dFTHBCZ2ZLM3VkcFE0NXVHS0FzZjhuU1B1d05xc2VEQnBFa3Np?=
 =?utf-8?B?NHl4U0cxcHhPWFBUcVpYYWE3a1Zac2t0WTRCQWpOakp2VGFHMUExUmhkVFBQ?=
 =?utf-8?B?QTkzMzBkeFc3OUltTFdLbWlON0RXNDVGNEJGbExiL2R0SGVlQkNVcmpOVEEx?=
 =?utf-8?B?bStia3duUldjVEpxQnE0VHdxQVJoTlNPRDFsVWhrYkJoc2E0ck1pSTIvZDVM?=
 =?utf-8?B?YWt6WG84ZnZxMXhVT25BbEpKbXV4K3lrQmJMMDNJZSt1Y1NiVTlUTy9FdG8v?=
 =?utf-8?B?YVVCREJndEZoYTlETTNOTmx2azA5U2hVc2grVWw1NXNaYUpwdkpFcGVLREti?=
 =?utf-8?B?RUZuMWJTdmJDVHpVSFpndVlvS1hhRUdMNmd1YnpYbWg5VDVKQjNDRWswZjUr?=
 =?utf-8?B?d2tEbjNTRkhiRVFMYkFab3EyamdZcnI3dGFSQlAyVVIwWlppaldGblpRTjNj?=
 =?utf-8?B?eGVtNjAvVmZFVVJrcU9DMXlnMkFlNXUxaUtpbVB6ZjVzMTFjUm94S0k3ay9W?=
 =?utf-8?B?WW85TDkzRW5nOVFvM0RLSXZaSDVzMjdESlJUdElhY2EwcEpXTmk1WWFEZUhw?=
 =?utf-8?B?Ukl6QTRCR3BUREE3TjQyOFR6TldZME9XWUp0WmxJaXZlY3Rsb1A1NDdWRENU?=
 =?utf-8?B?ejVra1pPVVVvdUZlRkFDZTR2MFJrZ1NFc0ZsKzJIeU0rNHczdXNwemg4NWEz?=
 =?utf-8?B?RU9HYnV0UWtBOXhzZTUvSm5Ca0dCRyt4RGo4OFZIeHFzUUMyS0QxVEhxSitS?=
 =?utf-8?B?OWN6ODVQL0FzcXBkSWdpTFRWY0UvYmZibkJRdmNIQW1XZU5qQXdrMmhITlUy?=
 =?utf-8?B?NC9oUWJEb3FURzZ2MzMyK1hxRzY0OWZodmRGYWRyelQwb2p3RXFDTkhPanZ3?=
 =?utf-8?B?U21CUUk2MlVXcWptazU3ZS9VM2Q5RnBiRmZhR0o2clV3SmRMT1dmSHBWaHpq?=
 =?utf-8?B?K3o5WFBpOE9tYkN5bUNxR0FjdVFuT3ZkMG5heXB4Y01NS1FqRUNCa0Yxdnln?=
 =?utf-8?B?d3NOT2hJK3FNanB2bjdSM280R1FpeGtLSFc2eVNhc05pL2pxbFdMM3A1UUxl?=
 =?utf-8?Q?VRgoF1AdUHXLjuaB3UEP+KHvE?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e4ff5f3-ccad-464a-227e-08dc656c0949
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Apr 2024 21:09:46.6177 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ADKxtCXrDgYE7uAa0+NXiNeaM4hdukzOKvzrhOBJ0TPI3d1kgwfRq1Ka40f9DqpAR/S6aJDRB/lfBr5/GTwuWtbyWzfg4I3p3tNATwUrvvU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4628
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

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IFZpdmVrYW5hbmRhbiwgQmFsYXN1YnJh
bWFuaSA8YmFsYXN1YnJhbWFuaS52aXZla2FuYW5kYW5AaW50ZWwuY29tPiANClNlbnQ6IFN1bmRh
eSwgQXByaWwgMjEsIDIwMjQgMTE6MjkgUE0NClRvOiBDYXZpdHQsIEpvbmF0aGFuIDxqb25hdGhh
bi5jYXZpdHRAaW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KQ2M6
IEd1cHRhLCBzYXVyYWJoZyA8c2F1cmFiaGcuZ3VwdGFAaW50ZWwuY29tPjsgSGFycmlzb24sIEpv
aG4gQyA8am9obi5jLmhhcnJpc29uQGludGVsLmNvbT47IGNocmlzLnAud2lsc29uQGxpbnV4Lmlu
dGVsLmNvbTsgYW5kaS5zaHl0aUBsaW51eC5pbnRlbC5jb207IERhcywgTmlybW95IDxuaXJtb3ku
ZGFzQGludGVsLmNvbT4NClN1YmplY3Q6IFJlOiBbUEFUQ0hdIGRybS9pOTE1L2dlbTogRG93bmdy
YWRlIHN0b2xlbiBsbWVtIHNldHVwIHdhcm5pbmcNCj4gDQo+IE9uIDE5LjA0LjIwMjQgMTQ6MjYs
IEpvbmF0aGFuIENhdml0dCB3cm90ZToNCj4gPiBJbiB0aGUgY2FzZSB3aGVyZSBsbWVtX3NpemUg
PCBkc21fYmFzZSwgaGFyZHdhcmUgaXMgcmVwb3J0aW5nIHRoYXQNCj4gPiBzdG9sZW4gbG1lbSBp
cyB1bnVzYWJsZS4gIEluIHRoaXMgY2FzZSwgaW5zdGVhZCBvZiB0aHJvd2luZyBhIHdhcm5pbmcs
DQo+ID4gd2UgY2FuIGNvbnRpbnVlIGV4ZWN1dGlvbiBhcyBub3JtYWwgYnkgZGlzYWJsaW5nIHN0
b2xlbiBMTUVNIHN1cHBvcnQuDQo+ID4gRm9yIGV4YW1wbGUsIHRoaXMgY2hhbmdlIHdpbGwgYWxs
b3cgdGhlIGZvbGxvd2luZyBlcnJvciByZXBvcnQgZnJvbQ0KPiA+IEFUUy1NIHRvIG5vIGxvbmdl
ciBhcHBseToNCj4gPiANCj4gPiA8Nj4gWzE0NC44NTk4ODddIHBjaWVwb3J0IDAwMDA6NGI6MDAu
MDogYnJpZGdlIHdpbmRvdyBbbWVtIDB4YjEwMDAwMDAtMHhiMTFmZmZmZl0NCj4gPiA8Nj4gWzE0
NC44NTk5MDBdIHBjaWVwb3J0IDAwMDA6NGI6MDAuMDogYnJpZGdlIHdpbmRvdyBbbWVtIDB4M2Ji
YzAwMDAwMDAwLTB4M2JiYzE3ZmZmZmZmIDY0Yml0IHByZWZdDQo+ID4gPDY+IFsxNDQuODU5OTE3
XSBwY2llcG9ydCAwMDAwOjRjOjAxLjA6IFBDSSBicmlkZ2UgdG8gW2J1cyA0ZC00ZV0NCj4gPiA8
Nj4gWzE0NC44NTk5MzJdIHBjaWVwb3J0IDAwMDA6NGM6MDEuMDogYnJpZGdlIHdpbmRvdyBbbWVt
IDB4YjEwMDAwMDAtMHhiMTFmZmZmZl0NCj4gPiA8Nj4gWzE0NC44NTk5NDVdIHBjaWVwb3J0IDAw
MDA6NGM6MDEuMDogYnJpZGdlIHdpbmRvdyBbbWVtIDB4M2JiYzAwMDAwMDAwLTB4M2JiYzE3ZmZm
ZmZmIDY0Yml0IHByZWZdDQo+ID4gPDY+IFsxNDQuODU5OTg0XSBpOTE1IDAwMDA6NGQ6MDAuMDog
W2RybV0gQkFSMiByZXNpemVkIHRvIDI1Nk0NCj4gPiA8Nj4gWzE0NC44NjA2NDBdIGk5MTUgMDAw
MDo0ZDowMC4wOiBbZHJtXSBVc2luZyBhIHJlZHVjZWQgQkFSIHNpemUgb2YgMjU2TWlCLiBDb25z
aWRlciBlbmFibGluZyAnUmVzaXphYmxlIEJBUicgb3Igc2ltaWxhciwgaWYgYXZhaWxhYmxlIGlu
IHRoZSBCSU9TLg0KPiA+IDw0PiBbMTQ0Ljg2MDcxOV0gLS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0t
LS0tLS0tLS0tLQ0KPiA+IDw0PiBbMTQ0Ljg2MDcyN10gV0FSTklORzogQ1BVOiAxNyBQSUQ6IDE4
MTUgYXQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3N0b2xlbi5jOjkzOSBpOTE1
X2dlbV9zdG9sZW5fbG1lbV9zZXR1cCsweDM4Yy8weDQzMCBbaTkxNV0NCj4gPiA8ND4gWzE0NC44
NjE0MzBdIE1vZHVsZXMgbGlua2VkIGluOiBpOTE1IHNuZF9pbnRlbF9kc3BjZmcgc25kX2hkYV9j
b2RlYyBzbmRfaHdkZXAgc25kX2hkYV9jb3JlIHNuZF9wY20gdmdlbSBkcm1fc2htZW1faGVscGVy
IHByaW1lX251bWJlcnMgaTJjX2FsZ29fYml0IHR0bSB2aWRlbyBkcm1fZGlzcGxheV9oZWxwZXIg
ZHJtX2J1ZGR5IGZ1c2UgeDg2X3BrZ190ZW1wX3RoZXJtYWwgY29yZXRlbXAga3ZtX2ludGVsIGt2
bSBpeGdiZSBtZGlvIGlycWJ5cGFzcyBwdHAgY3JjdDEwZGlmX3BjbG11bCBjcmMzMl9wY2xtdWwg
Z2hhc2hfY2xtdWxuaV9pbnRlbCBwcHNfY29yZSBpMmNfaTgwMSBtZWlfbWUgaTJjX3NtYnVzIG1l
aSB3bWkgYWNwaV9wb3dlcl9tZXRlciBbbGFzdCB1bmxvYWRlZDogaTkxNV0NCj4gPiA8ND4gWzE0
NC44NjE2MTFdIENQVTogMTcgUElEOiAxODE1IENvbW06IGk5MTVfbW9kdWxlX2xvYSBUYWludGVk
OiBHIFUgNi44LjAtcmM1LWRybXRpcF8xNTE1LWc3OGY0OWFmMjc3MjMrICMxDQo+ID4gPDQ+IFsx
NDQuODYxNjI0XSBIYXJkd2FyZSBuYW1lOiBJbnRlbCBDb3Jwb3JhdGlvbiBXSElUTEVZL1dISVRM
RVksIEJJT1MgU0U1QzYyMDAuODZCLjAwMjAuUDQxLjIxMDkzMDAzMDUgMDkvMzAvMjAyMQ0KPiA+
IDw0PiBbMTQ0Ljg2MTYzMl0gUklQOiAwMDEwOmk5MTVfZ2VtX3N0b2xlbl9sbWVtX3NldHVwKzB4
MzhjLzB4NDMwIFtpOTE1XQ0KPiA+IDw0PiBbMTQ0Ljg2MjI4N10gQ29kZTogZmYgNDEgYzEgZTQg
MDUgZTkgYWMgZmUgZmYgZmYgNGQgNjMgZTQgNDggODkgZWYgNDggODUgZWQgNzQgMDQgNDggOGIg
N2QgMDggNDggYzcgYzYgMTAgYTMgN2IgYTAgZTggZTkgOTAgNDMgZTEgZTkgZWUgZmQgZmYgZmYg
PDBmPiAwYiA0OSBjNyBjNCBlZCBmZiBmZiBmZiBlOSBlMCBmZCBmZiBmZiAwZiBiNyBkMiA0OCBj
NyBjNiAwMCBkOQ0KPiA+IDw0PiBbMTQ0Ljg2MjI5OV0gUlNQOiAwMDE4OmZmZmZjOTAwMDU2MDc5
ODAgRUZMQUdTOiAwMDAxMDIwNw0KPiA+IDw0PiBbMTQ0Ljg2MjMxNV0gUkFYOiBmZmZmZmZmZmZm
ZjAwMDAwIFJCWDogMDAwMDAwMDAwMDAwMDAwMyBSQ1g6IDAwMDAwMDAwMDAwMDAwMDANCj4gPiAN
Cj4gPiBGaXhlczogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lz
c3Vlcy8xMDgzMw0KPiA+IA0KPiA+IFN1Z2dlc3RlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpcy5w
LndpbHNvbkBsaW51eC5pbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogSm9uYXRoYW4gQ2F2
aXR0IDxqb25hdGhhbi5jYXZpdHRAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc3RvbGVuLmMgfCA2ICsrKysrLQ0KPiA+ICAxIGZpbGUg
Y2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gDQo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uYw0KPiA+IGluZGV4IGFkNmRkN2Yz
MjU5YmMuLmVmYTYzMmE5ZTYxYzYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX3N0b2xlbi5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX3N0b2xlbi5jDQo+ID4gQEAgLTkzNiw4ICs5MzYsMTIgQEAgaTkxNV9nZW1f
c3RvbGVuX2xtZW1fc2V0dXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHUxNiB0eXBl
LA0KPiA+ICAJfSBlbHNlIHsNCj4gPiAgCQkvKiBVc2UgRFNNIGJhc2UgYWRkcmVzcyBpbnN0ZWFk
IGZvciBzdG9sZW4gbWVtb3J5ICovDQo+ID4gIAkJZHNtX2Jhc2UgPSBpbnRlbF91bmNvcmVfcmVh
ZDY0KHVuY29yZSwgR0VONl9EU01CQVNFKSAmIEdFTjExX0JEU01fTUFTSzsNCj4gPiAtCQlpZiAo
V0FSTl9PTihsbWVtX3NpemUgPCBkc21fYmFzZSkpDQo+ID4gKwkJaWYgKGxtZW1fc2l6ZSA8IGRz
bV9iYXNlKSB7DQo+ID4gKwkJCWRybV9kYmcoJmk5MTUtPmRybSwNCj4gPiArCQkJCSJEaXNhYmxp
bmcgc3RvbGVuIG1lbW9yeSBzdXBwb3J0IGR1ZSB0byBPT0IgcGxhY2VtZW50OiBsbWVtX3NpemUg
PSAlbGxpIHZzIGRzbV9iYXNlID0gJWxsaVxuIiwNCj4gPiArCQkJCWxtZW1fc2l6ZSwgZHNtX2Jh
c2UpOw0KPiA+ICAJCQlyZXR1cm4gRVJSX1BUUigtRU5PREVWKTsNCj4gVGhlIHBhdGNoIGlzIHN0
aWxsIHJldHVybmluZyBhbiBlcnJvciBhbmQgYWJvcnRpbmcgaW5pdGlhbGl6YXRpb24uIE9ubHkg
dGhlDQo+IHdhcm5pbmcgaXMgZWxpbWluYXRlZC4gQnV0IGFzIHBlciB0aGUgY29tbWl0IGRlc2Ny
aXB0aW9uLCB0aGUgZXhlY3V0aW9uDQo+IHNob3VsZCBjb250aW51ZSBhcyBub3JtYWwgYWZ0ZXIg
ZGlzYWJsaW5nIHN0b2xlbiBsbWVtIHN1cHBvcnQuDQo+IA0KDQpGaXhlZCBpbiBsYXRlc3QgcmV2
aXNpb24uICBUaGFuayB5b3UgZm9yIHRoZSByZXZpc2lvbiBub3Rlcy4NCi1Kb25hdGhhbiBDYXZp
dHQNCg0KPiBSZWdhcmRzLA0KPiBCYWxhDQo+IA0KPiA+ICsJCX0NCj4gPiAgCQlkc21fc2l6ZSA9
IEFMSUdOX0RPV04obG1lbV9zaXplIC0gZHNtX2Jhc2UsIFNaXzFNKTsNCj4gPiAgCX0NCj4gPiAg
DQo+ID4gLS0gDQo+ID4gMi4yNS4xDQo+ID4gDQo+IA0K
