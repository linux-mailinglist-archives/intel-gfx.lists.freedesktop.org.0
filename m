Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 580CDCB010A
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Dec 2025 14:33:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A897310E598;
	Tue,  9 Dec 2025 13:33:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DckA63A/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6D5610E598;
 Tue,  9 Dec 2025 13:33:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765287200; x=1796823200;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gCXjf67qIfMnP3e3ZFPByaKghti7bdPz1r/V98RIe2E=;
 b=DckA63A/ukOx1aYBpr82qDxvyeRu5HuhfWqo9P6bkHccNrgNNB48E2T6
 ZQuTnxyHlGmT6rvhY0opkm4I3Basbi1ayb9ZJT5uSrTCbXAtCjpCrOy1B
 My0LCzyYtHRXjEuw98NiCz1jS74y//5xsKurygVnmiGhDCm4aT2PUnYMC
 cs693/eSAX4hVbVquUJCJbJ9UhZS3pkxDFA0PFZymqBfXPaq2X7lfc+15
 H8moluRi83Hd9qlzWQG4m0XhPtPeu1YkUAG7fzq5hydU27XCQQHd28TwI
 1aZIy0JbYBsVV0bKUuEsk2jL16YKG6XdUFO5/66uHTG6zpeBlo4g0zNce A==;
X-CSE-ConnectionGUID: xC5IBk/aQai4hRQ7Ad7rWA==
X-CSE-MsgGUID: cUDHokrITJm+uYln/FDfLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11635"; a="67171375"
X-IronPort-AV: E=Sophos;i="6.20,256,1758610800"; d="scan'208";a="67171375"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 05:33:20 -0800
X-CSE-ConnectionGUID: dvlj22B9QmWiZRmQHAhT/g==
X-CSE-MsgGUID: nhuEujAcSDGv3FnjPr69sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,261,1758610800"; d="scan'208";a="197004849"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2025 05:33:19 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 05:33:18 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 9 Dec 2025 05:33:18 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.12) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 9 Dec 2025 05:33:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EdD27V/8cBXk1P0PqNYxyK3WkU1m9JwlY0vP6lbvkyNHhKAt8xBa6Ov03ZSAM4z28hrMAEApH5e/qZsjIigW3+mYVV2S1vUz8bTS7qLvbVe9wGMe3//5bnctdvOLpHdz7ot5Odlh5D45XsZTXptmshImXtVrO8WKOTgfyqQUh7fowSAberpp1Di5UDFzCuPKqT3cxPm+PYiiLmwkkYLAZz74mDByFjo1QPSZdGuNYxNGPvHGA3c2oaFk/N78+bOyvQCEyfpe/dtUo7Q9EU2muvjqRVh4RG/EQmT80YfQ4YCV4hlxhAUj7ueGgu8p2Y/hEfL60dG7G4ur46V7rDE3Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gCXjf67qIfMnP3e3ZFPByaKghti7bdPz1r/V98RIe2E=;
 b=T0VGpfy85CH6weLxNx23i6rTPTUoGS1X6l8iILFJe9mlKdnJVtnISc+UFM0QJvCWnjUPCGt3paNPFZHmGwVjfJ0eqwoTcSB0qw2Gx1tH6Ps732J2QI+JVEupCDm0k8r/PrvFFRsQ3OUXeBXMP7RLCN7NDykkuU7Eu4t69pf4qFV+KeR2I/v25XPzlwlKPlkfjS7tNpuq99cjssaLn1dS885Yl0rkzJjBKUM/ZIUqIHdxnY0tteiP/HKBCS4kUlU8oU3+hdZ/kc+blQWus7CUGpjk3CClY+m9NGDrcLaBTY7AjimS4xaC/vxyvdnvoJY7jKwxlmMS755nnxoNrNKk6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by BL1PR11MB5270.namprd11.prod.outlook.com
 (2603:10b6:208:313::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9388.14; Tue, 9 Dec
 2025 13:33:10 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::6aaa:cb72:c6c6:5720%7]) with mapi id 15.20.9388.013; Tue, 9 Dec 2025
 13:33:10 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/cx0: Convert C10 PHY PLL SSC state mismatch WARN
 to a debug message
Thread-Topic: [PATCH] drm/i915/cx0: Convert C10 PHY PLL SSC state mismatch
 WARN to a debug message
Thread-Index: AQHcZeLWcF5rUhL6+UafzaoQovjS+rUXqX6AgAAPl4CAAZtAAA==
Date: Tue, 9 Dec 2025 13:33:10 +0000
Message-ID: <DS4PPF69154114F6AF8BF422B8DF30A70B3EFA3A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20251205122902.1724498-1-imre.deak@intel.com>
 <1365d3888c719e7bf8455164910be9a6d33d6be9@intel.com>
 <aTbLlxBBBocZFdQy@ideak-desk>
In-Reply-To: <aTbLlxBBBocZFdQy@ideak-desk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|BL1PR11MB5270:EE_
x-ms-office365-filtering-correlation-id: 1b122f70-2bd2-45ca-b4c3-08de37277ec1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?cmhldmIvN1RNYkxEZUZ6UnBOS2sweXQ5bTVtTjdMd2Q0YU80Smc0M0d6TC9P?=
 =?utf-8?B?bXBMa1pXcVZNTGsxN21ZZ29YSnliYlo2OEl4Y1JFckM5MEp0ekxWOU9Zd2dP?=
 =?utf-8?B?dlh2ME8rYjZiVmlMRVZvSGhsZHVicG5SbFJ3NFArUmw0MnhtUXNDRk0wSUxq?=
 =?utf-8?B?WWVhdjZIZXUyY2pnTGdKRUt0TEVnUEZBTlBRZ2l3N3IrZ3MvNTh4Wk1iOXVz?=
 =?utf-8?B?M1U3MStncCtTWHU5cklTNTNpT0JTTXdlampaZzYzeW9IVVhrOVBUVDRPSDQ2?=
 =?utf-8?B?ajZkaG1qa3dyS0tWYndxNXhFTXZZLzZLRVR2OWpqMHF4WmhVSWFoK2dLWXZS?=
 =?utf-8?B?K2VUSFpEYW9UMjJINkdNZ05PcXZ0b0d2NFowSVBlL1JKOWcvSU5Fb2VFbFlk?=
 =?utf-8?B?STNFM1U0NEJVTk5UWDUzRmhzcy94M2JBbUdRQmkwSyt0dmk5b2Nic3dmNlNZ?=
 =?utf-8?B?Y2JKRHhxVXVqdEdDTGUvRVV1SHVHVkFyU1Q0WkpDTXdxaTl4dVZuTnlvTDB2?=
 =?utf-8?B?T1BiZ0xCMDk0NXNSb3A2eHFJUktQSWhPR2lEaUVmV2g2MGNJOE1lUUJLNzYy?=
 =?utf-8?B?b05kMXJBNVRnbWNlcnRzUC96VnM4dW11Vm5kQzExOVcxNTRQYmtHWlRzOHVa?=
 =?utf-8?B?TnlKamtVdG5wTFBFeG5kNkVOVHhvSDgrZ1lGSVZKT0p2R3c0UTEvTWJ0TXB1?=
 =?utf-8?B?VUExRjRMOXFtaUtuRnhhUVZkejVxbVJzSldBekpuRFJWbC9PWkNaSjV1K2pv?=
 =?utf-8?B?Q0ZFT1dqVjJxazVkcUN4eTBZdjR2akZLVmRLQ0JRTDlTdUtjUDZVbG54Qkc0?=
 =?utf-8?B?TU9MTzlXc0U3aUpoTTdVVmpnVWVWYXE0Mk80dDJNTVhzclE1L2trNllsTGRK?=
 =?utf-8?B?Yk5OdEZLZVBnNTU4bnNORWtkYnZKaWN0eWNXYk1YTisvc2syTWtnazk1cHlF?=
 =?utf-8?B?bExkWWZmbnRKTXFnZGp3K1VUUHg2akkwV2ZuV3F0Qklvb3pUa3ZKTTRzU0Yv?=
 =?utf-8?B?R0VyUnN2SUpIQWRTT2xsV25kUHNpdCtDcEJXbEZlOWFnclprMENzdGsvK3B0?=
 =?utf-8?B?aEI3L01oYVhTYXoydk90WnV3ODRPeDJqUW9RclhzRUdTT0k1bU1oSHFYeWpR?=
 =?utf-8?B?MW9PUkNtdnk1ZVB6V0xLdDdYSGl4NUFoeTRLc3k2OE1lNVgydU4yZTNWd01h?=
 =?utf-8?B?VmVNM0Q3NGZ1SU1WeHVjcTFHL1lrdzhmV3BhL0VqSDloeGNKQnRmZlB5SmNN?=
 =?utf-8?B?TXNJK25EaGJncFRCM0RhcWNnclZVS3pjU3JuVFFxN29SQjhkREJHU0pWNlgy?=
 =?utf-8?B?RGRkNHdrbFZ2RmtZSmVQcFFHNGRQVkMyb013eDJQZnlWWWxCSXA2WjduS0dL?=
 =?utf-8?B?MzZ1Z1FZQ3lpVEV5UWZnUURDdzBnU1ZON3VxN3prMVNpQkZHVFpKVUlaVU1k?=
 =?utf-8?B?V2FTYXExMVlJUlVMVVY5RVNpWHNpYUlsNlRadnVWdzBVb0FFMHFTMzFieUMv?=
 =?utf-8?B?Nng4K01rSCtzR3RyRmJpRWRlSjdYZFVENXMxSEFPUmdxOHJuZ0tHTUJsVkxt?=
 =?utf-8?B?YVo2YWtoYWpicEQrYTN0d2JxYjdtYytZVU9kNGIvSG5tR295c1ZFTUJta3o2?=
 =?utf-8?B?c3dUdEN4MVhkdm1oV0hraVJWUmZBc0lPa3dKOWxEbTBKTEZoQStqTHo1THgw?=
 =?utf-8?B?ZVpjbkp2cGNaa212VFBJS0poZE1GSnJqOGxGclZvZWJURUdtYmRMZUxxMWVq?=
 =?utf-8?B?a1g2S1NwcCtHNjdEa2ZHbmJBU2JNd1BaenZCOU9BcTE4T3JaSlpCdzdUTTVq?=
 =?utf-8?B?VVRkSWVJN0FoelZNbEtUM0tSRGtoN2ZwbFd3ZzNCVmxndVRISlkyUTVTRDRy?=
 =?utf-8?B?NnZMaDRTc2lDRmF5NHNTZzNHK0Z1dWVsQlhyL1gwSml0ZmtHc0JacnNvTThn?=
 =?utf-8?B?Ym5YTFYwU0FRVURwNW5VSVFNaVQ5ZWt0YlVDMEZoT21razdGdzdrRlhsbjlk?=
 =?utf-8?B?UlVwTmRKVFU4bXo4OWNyTnh0YldvR0tMdnFEODV1cVg4SEJtR1BxSWowQ21k?=
 =?utf-8?Q?OkDkfg?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eXBQZG1LK1JTZHFqV1JpSk5oVnhyUXBIem1wb3JIYkNpRFpRYUxlbis3a2l5?=
 =?utf-8?B?ajJxdzZCZ05MZGYvMzZYY0VOUFA5Wm1uT3V0OFJVdW56cDQ0QXNMNThEb1R6?=
 =?utf-8?B?NkJ2dHFZVEQwMVhrVEl6alFZWVB3Ym1Mek1BdmUwOTFkZWZGdzJEL08wZ0lT?=
 =?utf-8?B?ZmQ2ZjJITVUwODhIUkdzVjlRdU02bU5uUW13TTRQVG4zbXdINm1KUWdrOVE3?=
 =?utf-8?B?R3VnMWRtZzBJOHRUYkp0WFRUcjRWRGJRQk41OHk4dXowbUhnYWdBNC9rSlEx?=
 =?utf-8?B?THBqbnpnOG5rdi9ubkRDRzBRU3l0ME1ESnJSam1tUUxoVWFFWTQ1R1hxQm80?=
 =?utf-8?B?ZFdSNitCK29jUWRraG9WdW5BVDk4Ulg4djQ1L2hQdkhQNUJON1cvMjMwM0d2?=
 =?utf-8?B?VFYrNmxabm1IL1c4WkM4TnVqVFhES0ZCMzlOamM5ZE5rN0hkNzZpQ3BjS3Bx?=
 =?utf-8?B?M25vUkE3VEFOOGs1c1FsMnJQelhNNjBoaWZhQ040L0JnSDhJZ0lrSm1HSzVa?=
 =?utf-8?B?NENBY25SbGZKN29XVEdNRk5BbUpiWW8ydytFNStPM2hCSlFGK2hRY1MzVG9E?=
 =?utf-8?B?aUhTU0Z3TTlmcW55cmNEQno5UHVCS1FGWnM5S3NNV2RIazF5MHkrOUVTeFN0?=
 =?utf-8?B?Qm1uQm9DWHNNUmlmanZTYnU4Q0RiY1RKZWJRbFh3V1pQQ3prbHo2VTcrTkVw?=
 =?utf-8?B?SjVCRkNWc3kvMVQ0TlhRTjFnT3hDRTh3UThoa0pnOTEyb1oxaVpyL2ovVk5i?=
 =?utf-8?B?YnlwOWp1WWs1MzNZOXJGUkdIRm8zTDhHOXR0RS9OSVh0dkxCUEFRM1hURG9m?=
 =?utf-8?B?OXBRdzVzOGkrRS9YQS80L1JOeGVJaXg5dDIyZXFZSGttUGd4WU1oRTFZYkpk?=
 =?utf-8?B?YnRqQnh3b29CRG9XVzJkS3J1UDdlU21CTzhhK202OEluOVFaRndDWExpRGVL?=
 =?utf-8?B?NGNjWWcvK1JzQitZNFVONHQ1ZGhkR2xzc0FvbVYyUWRQOThaeW9xdnJQQXhr?=
 =?utf-8?B?aHNUMXdpK1ZrOTNUNmhLOVp4cmo3QWxSQWNRckdFNSs4S2F3S1owZzdqOUF5?=
 =?utf-8?B?MGxLSCtodGU1ZjNXK3RKRTlDTGM4anBUV2djU2k3dDRGZWpveEw1UTZGditZ?=
 =?utf-8?B?RlJseVFBWnpyR29wcW4vd1BjSXA5aC83aVRiMUNEZyswOTNLQjhTK2dMNVpj?=
 =?utf-8?B?eUlNdTJBSUlmZTZ6NjVkSHJOandoVTZqZU9MWjJjdFFSWnZKQlhiWGd3Qkpz?=
 =?utf-8?B?MG5zeFNYMi9nM1hyeDNIanBIdElNc0puRGlreHdOSExubnJ1SDlnQkdKa25y?=
 =?utf-8?B?c2MxUXVDeHlLOC96TndnNTBEWU45c1UrZHYyMExuU0FXSGV3bEx1ZFlTQm9u?=
 =?utf-8?B?SEpnUWxNUjNqSVIrZTlkUzVwZ0FhUGJMM3NuOHhvdlpsMkRJblRydHJvVGxr?=
 =?utf-8?B?RlI3QS84MkFQSUQ5RXJJRGNYV0dneDJQUGM3KzFWcXZyVHp6N2pEU2s5RlV0?=
 =?utf-8?B?a2lpeWIyL3N2VndxVFlJRzlXM1BWMXVReC9JSktMY2lCenIwL1Q4UmF6eFZt?=
 =?utf-8?B?TW5Fem1vS3hDdnVqamV2VGZSODBOcmpoZWd2Y1dhWXo0SDhmZk1idUxFUnN3?=
 =?utf-8?B?ZXlOc2dPUWhIeTJ4aTlPeWNXSTRkR2Jsb0FZWTVmMTU2KzhzZXhiK0RCWXFh?=
 =?utf-8?B?ZEJIb3V5OGZiTkxEV2RmV2VlL2JUQ0lQcWVrOHRUSDBtREE5WXdkdnp3Rjg0?=
 =?utf-8?B?Z2tyL0xadmxnanBaNUFkY0VuSTJzNUQzVFRlNTFhNUs3cFVZejhXa1AxRFIv?=
 =?utf-8?B?NithSUI5WEw1VWNaKytKaGRDUW1WYmZIRmRUc2FpblczZU9YaDBLcGt2YTNX?=
 =?utf-8?B?c1pBWmErMEJtYytWTnc1aGVDZDBacU1PMWxiWk1tMTlEUCtQVHNhaXFzY0FO?=
 =?utf-8?B?b1IwN1JCaGNVRkFBRkZrYlFDblUzdjVrRkluUGF6UTVWK3paMDYwbzl0ZjBP?=
 =?utf-8?B?bks5YWFDaDFNQkhNNkJDZURDenQ4NlU0WVZ4OHFmS3EvdHlINGtmbVU2UTNJ?=
 =?utf-8?B?T1U1RndqNk1tbk40S3Iwb3d4S3BiVGg5dkQ1Q3pOZDVObFo5cUdXdGRpR0VI?=
 =?utf-8?Q?Bmvg6WtQLO27jgmAMNBS9HnbZ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b122f70-2bd2-45ca-b4c3-08de37277ec1
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2025 13:33:10.2495 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +j/yh/kRzCEcwSkR+UfQXYXFH701CbnPgPBtdY7MImnc22thB4AEa4qLjh7eslOkxu2aTv+2SEG7KSJYpHRL5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5270
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBEZWFrLCBJbXJlIDxpbXJlLmRl
YWtAaW50ZWwuY29tPg0KPiBTZW50OiBNb25kYXksIDggRGVjZW1iZXIgMjAyNSAxNC41OQ0KPiBU
bzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZzsgS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBb
UEFUQ0hdIGRybS9pOTE1L2N4MDogQ29udmVydCBDMTAgUEhZIFBMTCBTU0Mgc3RhdGUgbWlzbWF0
Y2ggV0FSTiB0byBhIGRlYnVnIG1lc3NhZ2UNCj4gDQo+IE9uIE1vbiwgRGVjIDA4LCAyMDI1IGF0
IDAyOjAzOjE1UE0gKzAyMDAsIEphbmkgTmlrdWxhIHdyb3RlOg0KPiA+IE9uIEZyaSwgMDUgRGVj
IDIwMjUsIEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4gd3JvdGU6DQo+ID4gPiBPbiBD
MTAgUEhZIFBMTHMgdGhlIFNTQyBpcyBlbmFibGVkIGJ5IHByb2dyYW1taW5nIHRoZQ0KPiA+ID4g
WEVMUERQX1BPUlRfQ0xPQ0tfQ1RMIC8gWEVMUERQX1NTQ19FTkFCTEVfUExMQiBmbGFnIGFuZCB0
aGUNCj4gPiA+IFBIWV9DMTBfVkRSX1BMTCA0Li44IHJlZ2lzdGVyczoNCj4gPiA+DQo+ID4gPiAt
IElmIFNTQyBpcyBlbmFibGVkIFhFTFBEUF9TU0NfRU5BQkxFX1BMTEIgaXMgc2V0IGFuZCB0aGUN
Cj4gPiA+ICAgUEhZX0MxMF9WRFJfUExMIHJlZ2lzdGVycyBhcmUgcHJvZ3JhbW1lZCB0byBub24t
emVybyB2YWx1ZXMuDQo+ID4gPiAtIElmIFNTQyBpcyBkaXNhYmxlZCBYRUxQRFBfU1NDX0VOQUJM
RV9QTExCIGlzIGNsZWFyZWQgYW5kIHRoZQ0KPiA+ID4gICBQSFlfQzEwX1ZEUl9QTEwgcmVnaXN0
ZXJzIGFyZSBwcm9ncmFtbWVkIHRvIHplcm9lZC1vdXQgdmFsdWVzLg0KPiA+ID4NCj4gPiA+IFRo
ZSBkcml2ZXIncyBzdGF0ZSBjaGVja2VyIHZlcmlmaWVzIGlmIHRoZSBhYm92ZSBzZXR0aW5ncyBh
cmUNCj4gPiA+IGNvbnNpc3RlbnQsIGkuZS4gaWYgWEVMUERQX1NTQ19FTkFCTEVfUExMQiBiZWlu
ZyBzZXQgY29ycmVzcG9uZHMgdG8NCj4gPiA+IHRoZSBQSFlfQzEwX1ZEUl9QTEwgcmVnaXN0ZXJz
IGJlaW5nIHplcm9lZC1vdXQgb3Igbm90Lg0KPiA+ID4NCj4gPiA+IE9uIFdDTCB0aGUgQklPUyBw
cm9ncmFtcyBub24temVybyB2YWx1ZXMgdG8gdGhlIFBIWV9DMTBfVkRSX1BMTCA0Li44DQo+ID4g
PiByZWdpc3RlcnMsIGJ1dCBkb2VzIG5vdCBzZXQgdGhlIFhFTFBEUF9TU0NfRU5BQkxFX1BMTEIg
ZmxhZy4gVGhpcw0KPiA+ID4gd2lsbCB0cmlnZ2VyIHRoZSBmb2xsb3dpbmcgUExMIHN0YXRlIGNo
ZWNrIHdhcm5pbmcgZHVyaW5nIGRyaXZlciBsb2FkaW5nOg0KPiA+ID4NCj4gPiA+IDw0PlsgICA0
NC40NTc4MDldIHhlIDAwMDA6MDA6MDIuMDogW2RybV0gUEhZIEI6IFNTQyBlbmFibGVkIHN0YXRl
IChubyksIGRvZXNuJ3QgbWF0Y2ggUExMIGNvbmZpZ3VyYXRpb24gKFNTQy1lbmFibGVkKQ0KPiA+
DQo+ID4gQlRXIEkgYWxzbyB0aGluayB0aGUgbWVzc2FnZSBpcyByZWFsbHkgY29uZnVzaW5nLg0K
PiA+DQo+ID4gIlNTQyBlbmFibGVkIHN0YXRlIChubykiIHZzLiAiUExMIGNvbmZpZ3VyYXRpb24g
KFNTQy1lbmFibGVkKSIuDQo+ID4NCj4gPiAqQk9USCogbmVlZCB0byBzYXkgU1NDIHdpdGggc3Ry
X2VuYWJsZWRfZGlzYWJsZWQoKSBhbmQgZGl0Y2ggdGhlDQo+ID4gY2x1bXN5ICJTU0MgZW5hYmxl
ZCBzdGF0ZSB5ZXMvbm8iIGFuZCAiU1NDLWVuYWJsZWQvU1NDLWRpc2FibGVkIi4NCj4gDQo+IE1h
a2VzIHNlbnNlLCBjYW4gY2hhbmdlIGl0IHRvOg0KDQo+IGlmIChjeDBwbGxfc3RhdGUtPnNzY19l
bmFibGVkICE9IGludGVsX2MxMHBsbF9zc2NfZW5hYmxlZChwbGxfc3RhdGUpKQ0KPiAJZHJtX2Ri
Z19rbXMoZGlzcGxheS0+ZHJtLA0KPiAJCSAgICAiUEhZICVjOiBTU0Mgc3RhdGUgbWlzbWF0Y2g6
IHBvcnQgU1NDIGlzICVzLCBQTEwgU1NDIGlzICVzXG4iLA0KPiAJCSAgICBwaHlfbmFtZShwaHkp
LA0KPiAJCSAgICBzdHJfZW5hYmxlZF9kaXNhYmxlZChjeDBwbGxfc3RhdGUtPnNzY19lbmFibGVk
KSwNCj4gCQkgICAgc3RyX2VuYWJsZWRfZGlzYWJsZWQoaW50ZWxfYzEwcGxsX3NzY19lbmFibGVk
KHBsbF9zdGF0ZSkpKTsNCg0KV2l0aCB0aGlzIGNoYW5nZSBhcHBsaWVkDQoNClJldmlld2VkLWJ5
OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IA0KPiA+DQo+ID4gQlIs
DQo+ID4gSmFuaS4NCj4gPg0KPiA+DQo+ID4gPiA8ND5bICAgNDQuNDU3ODMzXSBXQVJOSU5HOiBD
UFU6IDQgUElEOiAyOTggYXQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBf
cGh5LmM6MjI4MQ0KPiBpbnRlbF9jeDBwbGxfcmVhZG91dF9od19zdGF0ZSsweDIyMS8weDYyMCBb
eGVdDQo+ID4gPg0KPiA+ID4gSXQncyBub3QgY2xlYXIgd2hldGhlciB0aGUgSFcgdXNlcyB0aGUg
UEhZX0MxMF9WRFJfUExMIDQuLjggcmVnaXN0ZXINCj4gPiA+IHZhbHVlcyBpZiB0aGUgWEVMUERQ
X1NTQ19FTkFCTEVfUExMQiBmbGFnIGlzIGNsZWFyZWQsIG9yIGp1c3QNCj4gPiA+IGlnbm9yZXMg
dGhlbSBpbiB0aGlzIGNhc2UuIFNpbmNlIHRoZSBkcml2ZXIgYWx3YXlzIHByb2dyYW1zIHRoZQ0K
PiA+ID4gcmVnaXN0ZXIgdmFsdWVzIGFjY29yZGluZyB0byB0aGUgYWJvdmUsIGl0IHN0aWxsIG1h
a2VzIHNlbnNlIHRvDQo+ID4gPiB2ZXJpZnkgdGhhdCB0aGUgcHJvZ3JhbW1pbmcgaGFwcGVuZWQg
Y29ycmVjdGx5Lg0KPiA+ID4NCj4gPiA+IFRvIGF2b2lkIHRoZSBzdGF0ZSBjaGVjayBXQVJOIGR1
cmluZyBkcml2ZXIgbG9hZGluZyBkdWUgdG8gdGhlIHdheQ0KPiA+ID4gQklPUyBwcm9ncmFtcyB0
aGUgcmVnaXN0ZXJzLCBjb252ZXJ0IHRoZSBXQVJOIHRvIGEgZGVidWcgbWVzc2FnZS4NCj4gPiA+
DQo+ID4gPiBDYzogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gPiA+IFNp
Z25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gPiA+IC0tLQ0K
PiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jIHwgMTEg
KysrKysrLS0tLS0NCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA1IGRl
bGV0aW9ucygtKQ0KPiA+ID4NCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+ID4gaW5kZXggN2JkMTc3MjNlN2FiYi4uYjk3M2E5
MjAxZWRkYSAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY3gwX3BoeS5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2N4MF9waHkuYw0KPiA+ID4gQEAgLTIyNzgsMTEgKzIyNzgsMTIgQEAgc3RhdGljIHZv
aWQgaW50ZWxfYzEwcGxsX3JlYWRvdXRfaHdfc3RhdGUoc3RydWN0IGludGVsX2VuY29kZXIgKmVu
Y29kZXIsDQo+ID4gPiAgCXBsbF9zdGF0ZS0+Y2xvY2sgPSBpbnRlbF9jMTBwbGxfY2FsY19wb3J0
X2Nsb2NrKGVuY29kZXIsDQo+ID4gPiBwbGxfc3RhdGUpOw0KPiA+ID4NCj4gPiA+ICAJY3gwcGxs
X3N0YXRlLT5zc2NfZW5hYmxlZCA9IHJlYWRvdXRfc3NjX3N0YXRlKGVuY29kZXIsIHRydWUpOw0K
PiA+ID4gLQlkcm1fV0FSTihkaXNwbGF5LT5kcm0sDQo+ID4gPiAtCQkgY3gwcGxsX3N0YXRlLT5z
c2NfZW5hYmxlZCAhPSBpbnRlbF9jMTBwbGxfc3NjX2VuYWJsZWQocGxsX3N0YXRlKSwNCj4gPiA+
IC0JCSAiUEhZICVjOiBTU0MgZW5hYmxlZCBzdGF0ZSAoJXMpLCBkb2Vzbid0IG1hdGNoIFBMTCBj
b25maWd1cmF0aW9uICglcylcbiIsDQo+ID4gPiAtCQkgcGh5X25hbWUocGh5KSwgc3RyX3llc19u
byhjeDBwbGxfc3RhdGUtPnNzY19lbmFibGVkKSwNCj4gPiA+IC0JCSBpbnRlbF9jMTBwbGxfc3Nj
X2VuYWJsZWQocGxsX3N0YXRlKSA/ICJTU0MtZW5hYmxlZCIgOiAiU1NDLWRpc2FibGVkIik7DQo+
ID4gPiArDQo+ID4gPiArCWlmIChjeDBwbGxfc3RhdGUtPnNzY19lbmFibGVkICE9IGludGVsX2Mx
MHBsbF9zc2NfZW5hYmxlZChwbGxfc3RhdGUpKQ0KPiA+ID4gKwkJZHJtX2RiZ19rbXMoZGlzcGxh
eS0+ZHJtLA0KPiA+ID4gKwkJCSAgICAiUEhZICVjOiBTU0MgZW5hYmxlZCBzdGF0ZSAoJXMpLCBk
b2Vzbid0IG1hdGNoIFBMTCBjb25maWd1cmF0aW9uICglcylcbiIsDQo+ID4gPiArCQkJICAgIHBo
eV9uYW1lKHBoeSksIHN0cl95ZXNfbm8oY3gwcGxsX3N0YXRlLT5zc2NfZW5hYmxlZCksDQo+ID4g
PiArCQkJICAgIGludGVsX2MxMHBsbF9zc2NfZW5hYmxlZChwbGxfc3RhdGUpID8gIlNTQy1lbmFi
bGVkIiA6DQo+ID4gPiArIlNTQy1kaXNhYmxlZCIpOw0KPiA+ID4gIH0NCj4gPiA+DQo+ID4gPiAg
c3RhdGljIHZvaWQgaW50ZWxfYzEwX3BsbF9wcm9ncmFtKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpk
aXNwbGF5LA0KPiA+DQo+ID4gLS0NCj4gPiBKYW5pIE5pa3VsYSwgSW50ZWwNCg==
