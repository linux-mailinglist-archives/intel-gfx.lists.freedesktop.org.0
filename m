Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ED799B75E0
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 08:58:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6634310E2D0;
	Thu, 31 Oct 2024 07:58:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bE0lR/Ib";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6424910E229;
 Thu, 31 Oct 2024 07:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730361500; x=1761897500;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=UyZ7XoMr3uREnGFhMdAFYCW50OMfKexRZPtmnBeIRKw=;
 b=bE0lR/IbfrBkL3QjCZk8PLzHrlBHoIv4D7Ae+ZksVSheBh56/hzyyY7i
 6w2IXO+4JXtcwwOo5LISHiJrntHnjVmv6SqYy1+1Xdc20014aPLE7uHWn
 C2YH0Gx8DiUlibJ4v9BsCN1X5khSyNc+T9OvUb9UmT8sZI+H0EA/8WBwC
 BGwnKbkr2iRo3qJDI/r1KW2Ip3hgb119Z6oE4WCaTGDWaoQdiPfg0jdK7
 I0g088rY1GtDW2w1hwtyhObWU6Fu1XjdgvXcCW2EOCFboN5AkNQX24ooe
 rgjh7IDNry24p8P7KJWUPa5htj4A5XaMsDx14weg7C5AN52TZbFsCXcEP g==;
X-CSE-ConnectionGUID: f1XYMwkYQC2b6EwEjsscPQ==
X-CSE-MsgGUID: 8A8tCRebQ86GKHan5+l0HA==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="32923719"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="32923719"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 00:58:19 -0700
X-CSE-ConnectionGUID: OtiXEaCgROew81Xr3JRuZA==
X-CSE-MsgGUID: qXnCukzmSy+uXWDRHgUw9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="120004591"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Oct 2024 00:58:19 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 31 Oct 2024 00:58:17 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 31 Oct 2024 00:58:17 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 31 Oct 2024 00:58:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WnRXdVUcRXPBAqcH+x+E8OEhq1w5xBeJuT1FzE8kMgi1KJojqN4Z11Yz7xgxX+oGAfSCBGv11e4zW2Ahu9GdmE5XJj+V790YIkbF2qykHczLzBaXx1Rsk28q53ecy3F/u0wS/y9RboqEzME4gqoQYL4A++0GosdqAl2xWz3QF6FRyeUkOjiOZvgkfjrUT+5m1qLk/Y2nmm9RlzM2Umwvd+RthlVjhu8lTh+uYBO7qcw4KYd5v3i4zVOWg5ui1B3El3WsEqbaEJoZ6a5xvA7C9OjAeLOPQQsr33WISsrDEJhyC58519yLGCrnOl7n4Ypmga/BPmoDdWc0PXhsc4br0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UyZ7XoMr3uREnGFhMdAFYCW50OMfKexRZPtmnBeIRKw=;
 b=zFkYvnrAsHj7Dbr5L1EowGwbeSpY10jVKfU10hJku//IqBG0IneVQFNPWbghuUYv+oI/kY99xnO31V10O5RnS0YF3I6Rk0tLbZskXIvazyn5j3wvRZjoAIEQynnn/AZKFeLkHCVj4k0/TQ3g7qMffGrngKEnBxb1NEz4WzdQZ7TDpmhMyYfeV4F6TayhHpFg/ltz6g/CLJv+/2x/80uqzl7C4EgPsZOFWU+PvBewa5W34pCSeZ/j5FDpXvBti4eDMI8T30i7C3ctHqVC6FxkdSzEsW44cU5NMMGKxZu6c3JXDFHBL10Plzf/9NloxvUmGN2IiITkmRnfIY38bokIiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by PH0PR11MB7496.namprd11.prod.outlook.com (2603:10b6:510:280::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.32; Thu, 31 Oct
 2024 07:58:09 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8093.027; Thu, 31 Oct 2024
 07:58:09 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Taylor, 
 Clinton A" <clinton.a.taylor@intel.com>
Subject: Re: [PATCH v3] drm/i915/display: Fuse bit for power management
 disable removed
Thread-Topic: [PATCH v3] drm/i915/display: Fuse bit for power management
 disable removed
Thread-Index: AQHbKwWofx/eNXao9kO+ybmyX6tWgbKgfzMA
Date: Thu, 31 Oct 2024 07:58:09 +0000
Message-ID: <e62e1ab9eda0e7cb58bf132cc31dae684200c3fe.camel@intel.com>
References: <20241030195507.2753404-1-clinton.a.taylor@intel.com>
In-Reply-To: <20241030195507.2753404-1-clinton.a.taylor@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|PH0PR11MB7496:EE_
x-ms-office365-filtering-correlation-id: f4329260-d06e-44fe-5114-08dcf981c30d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?Q2VuR0ZZV3lXckw3MXQ5dkZYUWl5d1VNZkUxUWtvWitKSVM2ZWhyYWVSSXZW?=
 =?utf-8?B?WHdqVTVtNUpFMEQvR3ZLaS90LzYwVEZWdWJqMGw2SW5DejJpU1VVN0JWSk1j?=
 =?utf-8?B?bnVkRU5jSEhBcHJtYU8xa1NsM1Jib2ZTQXZGYmdjOGo3MXU0V1FzL0kwd1ZB?=
 =?utf-8?B?SnJQTGxsM3g2UkpHeE9KdlNZRzNRc2EvRTVuM3BsdFE2eEZZaUFmZGlGQ0Zu?=
 =?utf-8?B?QWlZcG1JYlpaSUZwcEo1S085LzhuWWR2OTViTndYRGZQUEs2R244VkNCZEp1?=
 =?utf-8?B?V2ZUN3ZZanB1ZEk4amdzRm5WaDdMOFF1cUVMMDczalQzNWRHWHFabG5KNDZs?=
 =?utf-8?B?b0w1amg2VUUvNmNabTBHZEhjZnFab3RYTWhqSjhoK0tISWkzeG5PdVVlSmU2?=
 =?utf-8?B?YjZ3Z3lPRTQ3a2NibU1STUppY0dNYUYwVFJaSEY0bm9kb2U4MFZKL2NjcW9C?=
 =?utf-8?B?cGM1WEIxbHVPSVJmdHFXL3plWSt1OFoyT3VUSDlsNUpnSFZGU3Y1ZUJNcXhz?=
 =?utf-8?B?dlBKeVAvS1BPaE9MVjJyck1laVZLRkJXSERMUUpOTTB5eVJUN3hmbDhlcnJ2?=
 =?utf-8?B?Ny9LWjRVajAxeVU3dTlYQXEvUjU2eXVEd1lUcUNncGJCOU13NjZRSUt1VFhB?=
 =?utf-8?B?ZjczVUJHdVYyZW1pMHNHT1IxOVo5bkZRSHJ4OGdneXhxZHRvdzlHVVZ3QlBj?=
 =?utf-8?B?QlNrZ2gvZks3NzBXRkg5dGovRk0vT1cvYUdyQUNxNGlHaW4yMWdUVVpVTHQx?=
 =?utf-8?B?cTIvSmY2VnptRUloeWtsTTM4L2l1SlVOUGh5aTBDZThTRDM3ZjBZc1lhUWUv?=
 =?utf-8?B?eG4yck9GTG5iUUN1QzN0NzZuR0xPd1d1ZUVMMDFSS0xsK01qNWpqTXYwRzhS?=
 =?utf-8?B?YWJPcExwbnBmS2VLbjRiTmdiTGJseTRKd2FBbDFRSDIrSm1TcUhFMzQ3UUhK?=
 =?utf-8?B?VlIzYmIvc1c1N1R1Zm0vV0FaRFdjK0NNOEF1Z0FyREJ1YkRGL0xzdTdHNktG?=
 =?utf-8?B?MVJwNFpJUjlZWU9wT2VVcjJGcXpmcyt0alI1OTg5OTZUSW9yS2VvV1FUR0oz?=
 =?utf-8?B?bFVKaU5FMkc1ZGUwM0tWMnZPYkVoUUJpT0Q2LzFnRWloTHFRWm02K0hiSFZp?=
 =?utf-8?B?NUpDNE9NTnA0RXRVREFXQ2ViT1pEOEJJMVRQcHRPc0J1TlJlTzc1TTBES0hX?=
 =?utf-8?B?YktINEZzakhpRE9SSDhwMW1yMGl6SUFkMTFqRG5SQkNwNFBsa3hBbmRqNFJ4?=
 =?utf-8?B?VERYTnhvZEJWMWMvVVdEUjJCenhOenVWQVYrbDhiWFl2Nkw0VEVzS1EwUWRp?=
 =?utf-8?B?QWZyVTl0N3FOMk5oUXNOTi9QVDQ3ZWhFT2N0a2x5aXM3WGV3ajBMdERkS0Jq?=
 =?utf-8?B?TTl4dW55Q00wN1pEUUUwTlQvUXZ5L0tjbDFBcCtzaU5keVY5eDlFcjJ4OTRn?=
 =?utf-8?B?djB2bE5OdVBKUHAxUG8wNW5zYjhDVXlsSndYSFVCbnFRMW1EUGJyb014ZDZS?=
 =?utf-8?B?TVpLdk1GbzNSSWltc1RxVEg2bW1uQjNmOW8zY2dQZCt4N2RBVnNTMW1OL1hI?=
 =?utf-8?B?QWp0WHRiTzNuK2VjbG9kdTFjcktWVTdUYUNWVXpPT2NVZTRqMEpyUG9pTklQ?=
 =?utf-8?B?TlFtNFovMG80d1VLZnM4UDVQVjR0dVB6dEtvdFFvT1l4UkNVdk5WNzhzcUdo?=
 =?utf-8?B?cWczS3lNTk9TU0RvTGFWOUZ0UTVCR21Zb1BGS0JXcUlUOEJudEhhYSs3WEg4?=
 =?utf-8?B?RUhWMTc1MEo5aGtYV1puTGd2bk9WcW1ZZm5iemhmUDl1K3A0cFRnUVRoK21C?=
 =?utf-8?Q?0d2LV7kblmSZY+vkoF7QUZRezno1HTHMdyq9U=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Rjc4dk5FZWN6cGRNWTBlQlFrY3dHTFF3bkdHMTFjOGF4MTlwQmJIUkZucUtO?=
 =?utf-8?B?NjdiL3M1K0diaC9VQ01paVJYanc1am55NGlGTm1ScWgzYTFROU5IYnpoMkNt?=
 =?utf-8?B?ekpEaVNDOHlyd1puTEdaTm9TS2V2MWtPVWpuQW8vUVNNQkV2QkFoNk5BOHhh?=
 =?utf-8?B?MGFicTNpZUIyM1VsazV5MWdoUHJQZ0Rqa1lqU0daMmowbSs5RlZKdmpoNUN3?=
 =?utf-8?B?eEZHTG9XNjB6MkxrTC81bUdtUWFFVW5tMkthVjlVdk9RNnZCU0Vwa3JhYjEy?=
 =?utf-8?B?UGNiYlBXNEpmb1NZV0c0TU94VXVRZzRqK0grUlZSMjZlL2x0ZkJqZjRCT05z?=
 =?utf-8?B?SFhBdkIwOVNsNGg5ZnEyeEpOWTc0VTNKekxCZEM1T09XeG81Q2F3c1lDNjVj?=
 =?utf-8?B?NVBmeHlreFFlZmpKS3hvb3Rxd2VCNVNhTnhDVG1qOU5hODdHbnYxRFB5WXJ3?=
 =?utf-8?B?eHhpQlhFSmpoREk3MDJ0a0VKVURmbVpCaWZ4dmo0djBWV0c0a0JVc2NaSEEw?=
 =?utf-8?B?WDk5ZVo5UmEzcXRKS24zQ01mNjRaN2ZQVjU4b0pEcXk2elEraHZLR2lBNUpS?=
 =?utf-8?B?L2orQkdEZ3p5NlBRc2NDbENQQ1NpY0Zya2VwOFNJRGFxV2hrWGE0SVhEaE5v?=
 =?utf-8?B?Y0p2b2JNNzhUMWNDMEdLNHNRbFdJQmZvYXViQW5LYUVwc1hOR1J4S01sYVo5?=
 =?utf-8?B?Z2doVkVhazB5UjhtZzEwQ3dvVlA2ZzFUSVJpenpMWW0rN1Ezd0pLN00rU0R1?=
 =?utf-8?B?S2ZOdnlTeHl6V0p1U2lXbldUa205eHhTNkxMYUdvRUNTa2cvQlNKUkgrSVkz?=
 =?utf-8?B?VXJzRllYSUVNQnFuUE94Yzd6ZXQvaU52VWNMc2k5ZkdXTGc3RmRCTENCTG9T?=
 =?utf-8?B?eEVFUE9TMy9IVkhhekk0Ti9CbjQ1UnI3RUpRaTl4MFRwRjJvc0RRTXdJTmI1?=
 =?utf-8?B?enlZNmlPLzBLR3huMWo1N2dIbVlFUEFPY3AyNyswOUFVaWNWVmd1TnVJemNE?=
 =?utf-8?B?eGN5eXJkanZrdlZxVlZKanc0MTd5V0pQcUo5MndreHozcUd2eVROOWNZZW13?=
 =?utf-8?B?ZDZlaDJmRGV2WFRkVFA2d2kxWm9hcElhZWxGMEE0VnFPblBTem1IRmdjSEg0?=
 =?utf-8?B?NG05clREVTNId0daU2NYS3lLYjNPeXAxY29ZTHVWOHhZci9MZXowVk9qQndz?=
 =?utf-8?B?WFp4d0tIMm9uOFFYU0orSGJEV01tUHNyMVUyU2pOZVc0cmhBeTRVSWFNUitN?=
 =?utf-8?B?NXB4eCtaUVliWDdXeGp2UTRhZUMrRDUvMmZtQVpkZ2dtcWxsWEZPK0YrZ2VU?=
 =?utf-8?B?SEt2dWthYStYZE5YMzV3SUh2OEN0TmczdHFLSVVMdEhIL3lDVGgvUUdkTWkw?=
 =?utf-8?B?QlJyREdJNUE5Sjk2N0V6a0s0eHErdWJWRXNSaTVCMHBLREJVUkU4VW1IS0Zt?=
 =?utf-8?B?L25OTGlCNDM0bzIyaEppcXU2Wnp6V1FJeDRsaDBUQ0tJRGUwNVBwYWJjWTNJ?=
 =?utf-8?B?d2MvNEhBOVlWaGt1MDRtbHAyblZ1cXlVc1EzTUt4M0hrT3UyLzRVd203ZUkx?=
 =?utf-8?B?RUhXTVUvSCsrU29KRjUva1A4YjJZSTNuRXZERmUrVUNpOE1sRFQrb1FFcEVG?=
 =?utf-8?B?eEhJbVZRcTFjbWFTZWlKSXZmRkk3QytMU1ZvN2p6TW92MXhIK29lS0ZKYjdn?=
 =?utf-8?B?UWtGcFV4UUdqQytrYXNmYytjb0dPQ3prcm9lVkk3S2FraE5VSzVaK2tzZTJ2?=
 =?utf-8?B?SVE1QXlZWnNBMzBZRm1hcVdqSlk4T2RORzBZZWV1YkdxVHpvUFc1QVRYQ3p6?=
 =?utf-8?B?Yzk2Q1RLWVRxU09aSDhBK1dnU3BQOWNXU29TNU9zbGFIU1RiRjZkL01aM3F5?=
 =?utf-8?B?RXdHeGx0ekttY1pIM1JCSGhhazlHZFdlaXhheVNERnVwL3pOZlg0SnpkZnB4?=
 =?utf-8?B?MnlKRlIwVWNuL0Zib3lzY1pTcUpKSWlCMGh4Ylc0aXRSZEdmZ0tuR2t2KzFm?=
 =?utf-8?B?aWphdjVzR0FQK3NycUlLbG1yREMzUklVR3k0a3NuVksvY2lpYUJjUVR0dmJv?=
 =?utf-8?B?em50ckxXdTlLSlhsbDAwbUVWWE5LVXVwcHg5OW5lZEVxT3VIS3lEYmZ3eVZE?=
 =?utf-8?B?NU9mZG1XUmlpQk1BcTNRRmNEWiszNUpGTU1UNHRYMHA2aS9HaDNCZ0traEpE?=
 =?utf-8?Q?f4dTcw10LU4tpOYEO5gvMBo=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <118661FCCB43EC4BB88B02D74BEC5636@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4329260-d06e-44fe-5114-08dcf981c30d
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2024 07:58:09.7740 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Xr2p+lURpsUsd2UWXDHHUlE2eG5liOFzlkGbOUEx8CuVdIZSfzfXq/qmg7Pb1rEDtH9w6IH9YfhRKIxh+5eDkAeF3kH0qQqB7YR9LQnTq88=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7496
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

T24gV2VkLCAyMDI0LTEwLTMwIGF0IDEyOjU1IC0wNzAwLCBDbGludCBUYXlsb3Igd3JvdGU6Cj4g
U3RhcnRpbmcgd2l0aCBkaXNwbGF5IHZlcnNpb24gMTMgdGhlIGZ1c2UgYml0IHRvIGRpc2FibGUg
RGlzcGxheSBQTSBoYXMKPiBiZWVuIHJlbW92ZWQuCj4gCj4gdjI6IEJpdCByZW1vdmVkIHN0YXJ0
aW5nIHdpdGggZGlzcGxheSB2ZXJzaW9uIDEzIChNYXR0UikKPiB2MzogREcyIHN0aWxsIHVzZXMg
dGhpcyBmdXNlIGJpdCAoTWF0dFIpCj4gCj4gQlNQRUM6IDUwMDc1LCA2OTQ2NAo+IENjOiBNYXR0
IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IENsaW50
IFRheWxvciA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWF0
dCBBdHdvb2QgPG1hdHRoZXcucy5hdHdvb2RAaW50ZWwuY29tPgo+IC0tLQo+IMKgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5jIHwgNiArKysrLS0KPiDC
oDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpSZXZpZXdl
ZC1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+
Cgo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfZGV2aWNlLmMKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV9kZXZpY2UuYwo+IGluZGV4IGEyYWUwN2Y2ZDFiNy4uNzQ2NWUxNzE1Y2M4IDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2Uu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZp
Y2UuYwo+IEBAIC0xNzc1LDggKzE3NzUsMTAgQEAgc3RhdGljIHZvaWQgX19pbnRlbF9kaXNwbGF5
X2RldmljZV9pbmZvX3J1bnRpbWVfaW5pdChzdHJ1Y3QKPiBkcm1faTkxNV9wcml2YXRlICppOQo+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKGRmc20gJiBTS0xfREZTTV9ESVNQ
TEFZX0hEQ1BfRElTQUJMRSkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBkaXNwbGF5X3J1bnRpbWUtPmhhc19oZGNwID0gMDsKPiDCoAo+IC3CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoZGZzbSAmIFNLTF9ERlNNX0RJU1BMQVlfUE1fRElT
QUJMRSkKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRp
c3BsYXlfcnVudGltZS0+ZmJjX21hc2sgPSAwOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBpZiAoSVNfREcyKGk5MTUpIHx8IERJU1BMQVlfVkVSKGk5MTUpIDwgMTMpIHsKPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChkZnNtICYgU0tM
X0RGU01fRElTUExBWV9QTV9ESVNBQkxFKQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRpc3BsYXlfcnVudGltZS0+ZmJjX21h
c2sgPSAwOwo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Cj4gwqAKPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAxMSAmJiAo
ZGZzbSAmIElDTF9ERlNNX0RNQ19ESVNBQkxFKSkKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkaXNwbGF5X3J1bnRpbWUtPmhhc19kbWMgPSAwOwoK
