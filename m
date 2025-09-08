Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3B3B4853E
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 09:30:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D58210E475;
	Mon,  8 Sep 2025 07:30:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i6slAUaD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46CC910E475;
 Mon,  8 Sep 2025 07:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757316651; x=1788852651;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=3ifHoOuIq0PLf2PLQsTp69rVKktpxGlK2YWOdj3MhUQ=;
 b=i6slAUaDfSekdox2spONroCEFTnba2mXzgRE5csfdlqfR3N6a5NRXPz2
 pSXwlkB4DmA6RS8U3h6Q5CRPSXEtmnR67bkfdzay3OZwVOlCNr518uEeh
 IHCRttdGHbcs7dBAr+FRjxSFE10X4mxqXMnoIerws9SQ3z2/v1Csw9fBE
 o/u8NdVIMJw4jejKpMSpTAX/P+TWsC8yOCpuLCO4UEin0c0F7gxHtTSdN
 ggSND4GKftSA663ysV7Dyy/xvmKa1IvxOvCdMh4MS6uS+ZjzU32G3dpDE
 QTvE+BX4wyFBsOlMM/Q0ebkPCJI5Vbg3KPn+LAEXNYlsJsprF9Jv76vjy A==;
X-CSE-ConnectionGUID: IWu94vG9TqmeDB41ubeQAQ==
X-CSE-MsgGUID: sM/hy/VdQ8a+jdKRF64hiw==
X-IronPort-AV: E=McAfee;i="6800,10657,11546"; a="58605063"
X-IronPort-AV: E=Sophos;i="6.18,247,1751266800"; d="scan'208";a="58605063"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 00:30:49 -0700
X-CSE-ConnectionGUID: 8fZxwgpxTp2rTQDv65mItA==
X-CSE-MsgGUID: +GFw0m3GSSKPl42VnGJI8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,247,1751266800"; d="scan'208";a="172298704"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 00:30:49 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 00:30:48 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 8 Sep 2025 00:30:48 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.40) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 00:30:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wpB1ChiZlcqDP7JqILOmdiTxFoJiX9KXGAV+eWgGbWFDcs3jJxSUcjVzb/8HkxpscY32KKnaBuJmSHoV2tGH10KzNC7stYzs0SpvphemnWTLJINAzS/E8pWVMIhjWdX4Tm7+XDoXtM7hC27bVzmSaSwjhrcLZ0MO5jnIwi2VTKomX7s6P1WZNLr4WFx6YaFvA45hc9NqKjJcdOh9QtIzLJ135S5RpTZIWtDmcsTQRPPl8B2U7rQOPuqTGPq4RwxvNu3bWNo3RH04qHQYKCBIzCy4Eot0TdSLy2Ms7QXqvtXnWktTo2+BYzjLCNCUmPO3pGI0WXO7SVj2yMC8pcPq/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3ifHoOuIq0PLf2PLQsTp69rVKktpxGlK2YWOdj3MhUQ=;
 b=eQupy1dxGILj4WWl974Rzwb7FjoOt0nptDaV7mBpKwiXdTaWemNwuf1OR2hXXePLRzwS3MOJXcPlSiZbbjYTcHe2oLhhPDtMOLWhJA3K/34o6F+9EAyhH7BMwPPy4FOXWThp8loD5ijx/5soFQ0WfxDDZoWaiu7l4Gsvj2+EnaADzYp7jm1ppAHWfuko7klG22gw16M9udMk7NznL2EWu2gi191KsLcdpiyp0kC9SbcFsennyIyAu+PrCj2cmd7cTGW6DgOEv1pLqBoTgRLinslOR8Jg7ufnPSTC4+Cz83CDcAVN9DQ1GeloPW05w1iQrw++XIsvERT59S/YR1jpFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY8PR11MB7289.namprd11.prod.outlook.com (2603:10b6:930:99::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9094.19; Mon, 8 Sep 2025 07:30:41 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%5]) with mapi id 15.20.9094.018; Mon, 8 Sep 2025
 07:30:41 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/psr: Panel Replay SU cap dpcd read return value
Thread-Topic: [PATCH] drm/i915/psr: Panel Replay SU cap dpcd read return value
Thread-Index: AQHcHzOOH+GdfrBg9kiEmZf53e6OZrSI5o0A
Date: Mon, 8 Sep 2025 07:30:41 +0000
Message-ID: <5078aa56cb8ac0d8ed5b9c1538445bdc4693b10f.camel@intel.com>
References: <20250906133924.4177569-1-michal.grzelak@intel.com>
In-Reply-To: <20250906133924.4177569-1-michal.grzelak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY8PR11MB7289:EE_
x-ms-office365-filtering-correlation-id: ffdde662-0732-46e6-c994-08ddeea99d36
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?WENvNjdmclIwRVpobXpGbkVLSU1xK3czaHhCU1ZXak01c3g5anB0Q09rRDhx?=
 =?utf-8?B?U3ZiRm1tS2hzRUR5ZWJLSVErTEZ2bW11Ymd6YkZ6RlUxZGwxR2VUVW0rejhN?=
 =?utf-8?B?ZUdtZUJ0cy9pL3NJc08xMmI4dmk4RFlXV3RDbGkrUlRkY2c2LzdXZFBhd0d1?=
 =?utf-8?B?QjVaUk1zaEY1VmhVRmg3djVDSDhPRkRnRjVlRnFxLzFmenRTbktpZThCa0tu?=
 =?utf-8?B?Q1hpUk9vR09oeEFzanNiNlZlUlJDRkpqUDhhZU81NjIwYjdueUpjTkFDa3pE?=
 =?utf-8?B?d2doTVM3R3NDY2VWYVEyMjhlczVRdUZkTEtVN3o0empKdDdmc096enlIcEl2?=
 =?utf-8?B?M3BmZEdqR0lNRytXRXVKRlJ5NlZQK0RIeXI4czdGc0dDdHYvT2Z2QTcvT2U5?=
 =?utf-8?B?SGM4TG9BaE4rZFlRclc2bTZFUVk5VDdLYlMyTWpmZEdmZFpBemRpeG1PUDNh?=
 =?utf-8?B?RkVNb003V3prcC91MzZiVzFpQ1ZlWlpXZTVEdnNTK29iRHMyKy9oaGllUkYw?=
 =?utf-8?B?MzRTU0prMC9JN1NDaHVzL2NZVzhyQjdYcmF4R2pHODFYUWdCdThnY3FYa3VX?=
 =?utf-8?B?dFVhVTlyY0dZVnIrRTZ4WGh6TklCRDBvSnpkdkM2QUx4OGltSnU5TzlYSzNM?=
 =?utf-8?B?K0xGbUZyazRPcmF4SUU5SXc4dmtGSUVPY1RYZG8yMEFlRmtHaXVMUEN1RVYx?=
 =?utf-8?B?UlFveUZEWVV4RU1ucWNTa1lCQ0p2eFFXWEFHdUNKMTdPUUFtdFVCWXdDZWFh?=
 =?utf-8?B?S21wL1gzZTNiVnhDa1lXUGZYMkU0eFhncmNPVVUrUFZuRVVPMkxiaVJhakZs?=
 =?utf-8?B?ODg3RUhtNVhVQ21hUGpJQldsZ0xna2t4VnZVcE44TXdFcFg3MWFlOFZwQm9o?=
 =?utf-8?B?NmFjMGcya1ZENFRZTHVsZi9WNDdQMFpHQW9Wd29na3JTMzBYZURWbFlZT3Bj?=
 =?utf-8?B?bytCMEREMUovc2ZhZnhNTEhJK3ZQVDdUYWJiQmVMMmIxYnA1NCsveVphTnFI?=
 =?utf-8?B?NU9DNTRDcXI2U0N6dmhiWnY0NTJqMHVoNTR6MUZNQkhqZlZpUHRjQWlwNXNs?=
 =?utf-8?B?VXpucWVneUdpN2tCUlZoY1pIS3lxd1VOZ0VLL2xESklRdkZCTVpodFluNVh6?=
 =?utf-8?B?RmJXZ3hjUW1iN2lCbVl4c1lSUlhFM0VyTWw3ckZVVWhhSlFUcFZPUTMyeWJz?=
 =?utf-8?B?MFpCQyswSFNGWlFPZ3BMUnZORmI2YnNoOVFXdllXZkc2Ny9EV2V4ZDNibVNL?=
 =?utf-8?B?VzBFaHJ3ZW43M3VLYm9HcXRyT0VZR2t5UmdoOXZSRlczUU1KaGR1dmJ4cDRO?=
 =?utf-8?B?WkxvSzJyNFlaWkJQQkNQYmdVVXVYZTBlMlRic2czVFp3Y2dXbTlkaUFEczBW?=
 =?utf-8?B?WHNiTGlURVRFSE8xTWZ4SG54clhkOFUxcHRpMjFJc0toWTJMckZldDZhQTdv?=
 =?utf-8?B?NlBTTHlMLzVQYVo1Z0VIdThCbHZrYjdDeVkvaTF1MmgrZGUrcDluOFFaYmpx?=
 =?utf-8?B?YXJabllPSXFXNG41SUwwSnhlS202a1dXTTdkUHJxZXhVTlR3Z1h2NW9Ba1BG?=
 =?utf-8?B?UTcrRXYrS0pzNmxiUkFNSlMzOHNsT2RZTVE0QjA5UWhYU1VLU1o1SmVTUGJq?=
 =?utf-8?B?eWhPVXo5K20zOHVJcXZrb1A1MVB1UWlPdlBDNVh4WkhsZVMvMnBIUk5OczZy?=
 =?utf-8?B?Q1ZYSHc0ZlB2VytrQmhkLzA0U3cyWnNvNDR0dmVMcTk3dWFYUzFOZEtoYW5K?=
 =?utf-8?B?bkpnSnoxeHVxWERYUUlBcFl6Mm5qSUpIWFY0dmdqU2h3K004OTJOdmh6K0cw?=
 =?utf-8?B?SEltcFdpYng0ZjhoZytyVEpGL0RkTEpOSHVaNmJJZFB5N3FmQ2U0Yk5yZ0tm?=
 =?utf-8?B?dTlYdE9iYWZQdGRVRis0S2xGR0dSQnI1aGJUNmoreVNYM2Frb20yZFUvUFNk?=
 =?utf-8?B?UVpySVBjcGFuSExDMmorckI3ZXJJVWZMa3ppWlU1MTF0OGt1USt0eGREMElD?=
 =?utf-8?B?bTdpMitOWXZRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UzdtUVYycjlaOWo3TGdHS212THVsTCtYUXlta3ZoTjAwdGlFdVJKelVYNFJS?=
 =?utf-8?B?RWtPNkpvWWhzNzdrWlVsTDFveEdvZ1hpL08zUmlxT2dVSS9uV1dXVXZTa1hW?=
 =?utf-8?B?RjZIZEg2M0Jyb2w2dkQ3RlIzdFp6YVZTelNpaTJaME1IT0JzVGVockhXZGNj?=
 =?utf-8?B?bTdTcm8wQXFxWGltK0xzb2ViWE4vTGtMZFdEN2oyQnV5TG51bE53OUxDVmRQ?=
 =?utf-8?B?aUpCTGFjbUI2TkFFZFJJZEVnc3ppQjhSQ3NQMDRDUmFrYTgvTzVXOE5CbUk3?=
 =?utf-8?B?cHFKSnQwRHA0M2paZTVDQ1FNVTAxOGFiejFhZHQwb3o3TjRCZlUvOXlOSmFK?=
 =?utf-8?B?WG5UTUNKbXJucjlvSlR1MVVOQ1YxL29xSndFR3VtYjAzaUwyUExKSmhqNnh2?=
 =?utf-8?B?ZjlDdEpWUG9rYk5xQVBLT1d0Mm81K3dJeTVOV2tYZjgxVDVxbitjcDN1dHJP?=
 =?utf-8?B?eWNrOStiSm5SRldMUDVSRkZKVSt1MzJGd25EbTc4TzBVeFcxM1dIenFKTStl?=
 =?utf-8?B?cTBycWlhOXlrZk55RmZwUDYzUlpDYitxMTRsQmFJNUFPbHlycVBHa2lEbmY4?=
 =?utf-8?B?bW8yUkxpWS9FOERzNnNsVUtyYmNUazdrTE9RSjZSZ3FzRytWYW9Uc2xKckUr?=
 =?utf-8?B?QWc5TDFaQTIxd29PWVVkTFVEOHM4YzQ4bkk2WWJwa3NoTE5Md1BUd2cvZmE0?=
 =?utf-8?B?dUt5aHBKR0JwY0pGcndPRHpKS1NQSXMvVElMZHF3Nk9KdXV0VEZQNFdxZmJU?=
 =?utf-8?B?dHNZSFJwS05pd3N4cFFvTVgrWnRLMUNaSk05UndoVDBjNXRGQi92Tk95amVQ?=
 =?utf-8?B?QVZNL3M2NzNpbzlMWWxmYjRRVDJIb1h3bW01WlVyMFRUT01DQlQzVEhFS09V?=
 =?utf-8?B?NkRkandLWHpLRFlvajQwMXhyWUNmNjAxYUlrNk5ESlBHR3c4UndKR09TYXcz?=
 =?utf-8?B?OE1ncE5CeGE0WVk5ckoyWkpSbXN0b3orL2JnS2hjZk95UE9wT1lQWlRXQS9m?=
 =?utf-8?B?Vk9IOER5UTBITEtoK1Q5RkcrbTFzR203REZuTkJQS3ZKSkVXUXhEdTNPeDlF?=
 =?utf-8?B?czlBNGpwZzBXUUdtc3ZwS0ZadGFMTStBMVkydkRBcEtmcG1lRlZuUG1ZNVRw?=
 =?utf-8?B?S1FTbDVKOTdYdEZPM1EvVTMyNGpJK0xBaDNDMWFvVTBNWThBclZzcHR1b3hr?=
 =?utf-8?B?RlUrYzVRMjJrcldGK2hIVVBKaXlkUkt3eUE1S0ZzVytKdWtoVEhheFlWK0Rw?=
 =?utf-8?B?c3N3bWR6R3FKLzdHZ3JQQnJsQit2UWxJUmNJWiswd1RRYzhtakErZXJVZEdD?=
 =?utf-8?B?UlNOU0JvWHZBeHNZWTBBRldveG96OHhFc2VIcExMQlNMaGRJT09JUmJFcy9Z?=
 =?utf-8?B?T29mQlY4YlhucHpXeGNKWGRnb1JBdnB1T2ZlL0hTdGFWQVhFaU9ZbUJod3Vt?=
 =?utf-8?B?WDBEZk1BVWpUS2ZzSm55a0gySG9iVEQ2WTQ3d3RCdGNhQ0Y5ZVFDRWNEbWd6?=
 =?utf-8?B?Z2lkWUczdmhoQTVwSDNLemthT0dRZXg0bDRNRE1RMUhoNzRxS0czY21uaXFS?=
 =?utf-8?B?Nk1RTXMvZGFnZm1Cc1VNZkh5N3JKbEgyVmhCRjFIaWMwSGlQWHc3ekdlNi83?=
 =?utf-8?B?YSswZTFwOGlxUFBWU2M4TmdWL2FXUkRNN0ovVmNiN2k3YjFGLzlkbTZrSVht?=
 =?utf-8?B?WU0xQTh2TXhEcHNIWFNHazRPNXNCbi82UWJYZmhGYit5VEF3TXArd0hCdlE2?=
 =?utf-8?B?VDFQaU1LQmdIRkQwNTJzaGQvZENyd3pnMFBhZ2gvdGlGT21HdHBENVF4andO?=
 =?utf-8?B?b2VyMTlTR2JlN09xNTAzUTFJZDI0eUV0dFhXbVZHdGw1a2EyN0FackViOXpy?=
 =?utf-8?B?Qm9HdXQ1OVhSTGxBVTJib3NYa3kzSlJUSFJRRTA0UGFTWlFsZXZrd1RaKy9H?=
 =?utf-8?B?OFZxbTdWVTlnTUNpNTd3aWtRK0VHRklTcVBTTko5dVN4U200RTdHdDhiUDU2?=
 =?utf-8?B?UXh0SW1UV1czTVcwNGpiSE1XbWpSdlZYZVl3VTVrMFA1dW9rRnlVSE1pYXVE?=
 =?utf-8?B?bGYwVVBXM2tCZkg2dG5aWkt6dW1VM2wxQkcxYmx4c3k5OU90R0IzYWtZSlBt?=
 =?utf-8?B?WjlPVHMzY1hLUjFHMFdsUDJQdDFwd3VHSHFSa0o0Q1VKajcybGZHcFpsTnJz?=
 =?utf-8?B?Njd6cE02cFJCcVcyYXFvUkRsOHZMWEdNT2VYTXltK1RpZmpBcXROUk5mUzBs?=
 =?utf-8?B?YkRQOHlMZzNNcXhCdzhRckpyRTZBPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <CF60D71F4D2AE043B3575B5F23F4A845@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffdde662-0732-46e6-c994-08ddeea99d36
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2025 07:30:41.0917 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7ZFdai4UlQ4LfqQFosf/zq1YNAmYGVjhNiL10yLqT1rms9bYH/7JqDLBU+2EWDPsOr4IC1gZFutvmQQ5VDQKqXszAdF1lxm7wt+6OZABHY0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7289
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

T24gU2F0LCAyMDI1LTA5LTA2IGF0IDE1OjM5ICswMjAwLCBNaWNoYcWCIEdyemVsYWsgd3JvdGU6
DQo+IE9uIFdlZCwgMjcgQXVnIDIwMjUgMDk6MDg6MDkgKzAzMDAsIEpvdW5pIEjDtmdhbmRlciB3
cm90ZToNCj4gPiBDdXJyZW50bHkgcmV0dXJuIHZhbHVlIG9mIGRybV9kcGNkX3JlYWRiIGlzIG5v
dCBjaGVja2VkIHdoZW4NCj4gPiByZWFkaW5nIHNpbmsNCj4gPiBQYW5lbCBSZXBsYXkgU2VsZWN0
aXZlIFVwZGF0ZSBjYXBhYmlsaXRpZXMuDQo+ID4gDQo+ID4gRml4IHRoaXMgYW5kIHN3aXRjaCB0
byBkcm1fZHBjZF9yZWFkX2J5dGUuDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2
Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgMTIgKysrKysrKy0tLS0tDQo+ID4g
wqAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiA+IA0K
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5k
ZXggOGI0Y2RmOWIzMGRiLi5mMmI5YTczMzYzN2EgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBAQCAtNDk0LDEyICs0OTQsMTQgQEAgc3Rh
dGljIHU4IGludGVsX2RwX2dldF9zdV9jYXBhYmlsaXR5KHN0cnVjdA0KPiA+IGludGVsX2RwICpp
bnRlbF9kcCkNCj4gPiDCoHsNCj4gPiDCoAl1OCBzdV9jYXBhYmlsaXR5ID0gMDsNCj4gPiDCoA0K
PiA+IC0JaWYgKGludGVsX2RwLT5wc3Iuc2lua19wYW5lbF9yZXBsYXlfc3Vfc3VwcG9ydCkNCj4g
PiAtCQlkcm1fZHBfZHBjZF9yZWFkYigmaW50ZWxfZHAtPmF1eCwNCj4gPiAtCQkJCcKgIERQX1BB
TkVMX1JFUExBWV9DQVBfQ0FQQUJJTElUWSwNCj4gPiAtCQkJCcKgICZzdV9jYXBhYmlsaXR5KTsN
Cj4gPiAtCWVsc2UNCj4gPiArCWlmIChpbnRlbF9kcC0+cHNyLnNpbmtfcGFuZWxfcmVwbGF5X3N1
X3N1cHBvcnQpIHsNCj4gPiArCQlpZiAoZHJtX2RwX2RwY2RfcmVhZF9ieXRlKCZpbnRlbF9kcC0+
YXV4LA0KPiA+ICsJCQkJCcKgDQo+ID4gRFBfUEFORUxfUkVQTEFZX0NBUF9DQVBBQklMSVRZLA0K
PiA+ICsJCQkJCcKgICZzdV9jYXBhYmlsaXR5KSA8IDApDQo+ID4gKwkJCXJldHVybiAwOw0KPiA+
ICsJfSBlbHNlIHsNCj4gPiDCoAkJc3VfY2FwYWJpbGl0eSA9IGludGVsX2RwLT5wc3JfZHBjZFsx
XTsNCj4gPiArCX0NCj4gPiDCoA0KPiA+IMKgCXJldHVybiBzdV9jYXBhYmlsaXR5Ow0KPiA+IMKg
fQ0KPiANCj4gUmV2aWV3ZWQtYnk6IE1pY2hhxYIgR3J6ZWxhayA8bWljaGFsLmdyemVsYWtAaW50
ZWwuY29tPg0KDQpUaGFuayB5b3UgTWljaGFsIGFuZCBNaWthIGZvciB5b3VyIHJldmlld3MuIFRo
aXMgaXMgbm93IHB1c2hlZCB0byBkcm0tDQppbnRlbC1uZXh0Lg0KDQpCUiwNCg0KSm91bmkgSMO2
Z2FuZGVyDQoNCg0K
