Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D50A8C80F0
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2024 08:29:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87A8510E02B;
	Fri, 17 May 2024 06:29:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g2eePGQa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3593210E02B
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2024 06:29:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715927357; x=1747463357;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=D90MNcXxC0YYdcoaMT8qL2mlcO2XoJNN6/5+p4rv3bQ=;
 b=g2eePGQauRlNfk5cC1pQt0fxuLBwllLqDBFbhsmIk9dLT+3sPYJaaXki
 g2Ui2NbHJIt/vNzcSskLMgTyq87o/Vc1MQKPqMhhZ3x3a4h1I4dqshAcx
 TabYcuu1AwSNrueEXhg/hHgs7pviV4nxrDe6XW+BZwjw9B/qAuy0jtPJA
 aqcSYMZj4R4z+XYdiixwnBLPEvRu34AiUgJeBoMirKkDoBvcZMdejU8cO
 azi1Ta1PLpcJc9iDPySj8SzvseHyETskZGQYLF2U568oxJpGySrSQPImr
 KVOQnuCPqR4Te90rxQiHNe8p6wtUxGAwn8GxYF97l7rKZL8FX+AeE+6gd w==;
X-CSE-ConnectionGUID: IMmQRk3bRhe4icSL2EUYKg==
X-CSE-MsgGUID: j5zFxiWnQDmNT7iIx4YknQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="23224172"
X-IronPort-AV: E=Sophos;i="6.08,166,1712646000"; d="scan'208";a="23224172"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 23:29:16 -0700
X-CSE-ConnectionGUID: CtoFjegQSP+sE6iLaLCyzQ==
X-CSE-MsgGUID: WWcdiSmBRPu68Twmy3GkMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,166,1712646000"; d="scan'208";a="31509077"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 May 2024 23:29:03 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 16 May 2024 23:29:00 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 16 May 2024 23:29:00 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 16 May 2024 23:29:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IXRdnMdvzmaNQ/rOFtJOwRr/BhHlANJVIIs5GoS1X+vBNBqs+hbqmzw8bkC6yvAxKsC2J4oij3d+Dfd+Og7Irj1OWQXk9H6Iim6sB1uLiQvXdwv1Xi+H+hmGC71+nLeEVQ6ZdwNe2drE8LOpPiwzBXaRp3MlasqetCG4nPa+FBKEB9k5+eA6FuUArVHVdNqAZywJd36YTY/cZDBxCmZmzikZgOf1garSITsLKVG0rTcZ0RNcq7uClhMk9q8+FAayYSR/WDWvQcFfXpoMbxGCvlKpkBMGwVaYnvNcypiYsvrrnHpTidBD6fMSEARG5wy6nvsJy1hCTf+eDVke0RZ0ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D90MNcXxC0YYdcoaMT8qL2mlcO2XoJNN6/5+p4rv3bQ=;
 b=hYjiDlcnaJsa6SvMSG3VhWzrruf0A3fCfObbFcxKdocPCgscRfxf89AJhAhwh3WMBMX2dfio43aouXD3jqh4H9czuNVeIvkXPIc6jm0hWIfHr4p4YTNVJI+ANIYrhbl7d7x0XDwXmAWJtbL14syfy3x5NI3X6kZlWr9Elu33DGydxsVaTlD1fciU3HgixcGNF7xCwL+8mRCLygRuKOy3nZoejdlMHDt29h5ukDacDyA7JHvs76FdsmiQZFmleeU7rViJu3mB0R+oIvQPv8+dJ823JQfNO+gcW1Vl3qAA365ZQVOuz9+KLMVBnofuy1dWGgIYuHAvLgsF5muDXekFvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DM4PR11MB6143.namprd11.prod.outlook.com (2603:10b6:8:b1::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7587.28; Fri, 17 May 2024 06:28:52 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::cf96:7894:5097:f510]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::cf96:7894:5097:f510%2]) with mapi id 15.20.7587.026; Fri, 17 May 2024
 06:28:52 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH 1/3] drm/i915/psr: LunarLake IO and Fast Wake time line
 count maximums are 63
Thread-Topic: [PATCH 1/3] drm/i915/psr: LunarLake IO and Fast Wake time line
 count maximums are 63
Thread-Index: AQHanSAYMqQP3ExyxkSkoOJD1pBdS7GbC2Uw
Date: Fri, 17 May 2024 06:28:52 +0000
Message-ID: <DM4PR11MB6360FCCF477A33726BEBDD82F4EE2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240503060621.987820-1-jouni.hogander@intel.com>
 <20240503060621.987820-2-jouni.hogander@intel.com>
In-Reply-To: <20240503060621.987820-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DM4PR11MB6143:EE_
x-ms-office365-filtering-correlation-id: 725b4942-937a-47ee-35d4-08dc763a9ede
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|366007|1800799015|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?dlhYczVuazJwbEJ3ZWxCV0VIcXc0WnBvdHFpZUVFTHV0U3U0OWVKQlFqblMw?=
 =?utf-8?B?TnVtTlNjeTJuRVdNVldXRU1DVW8vcWY5U3grazBqR0QxdFJyZ1FGL2J2NTMr?=
 =?utf-8?B?emVNc3VVeVhvUXdXWk9ES2p2NWZic0k4V3cyRWQwWHNpWi8wZGU2WXRlRXRz?=
 =?utf-8?B?azR5M3lVdDZlZjU2SXEvby83Zks2d2N5Ymt6STEwbjc5SHZXemgyaENWVmhh?=
 =?utf-8?B?MnZaRlhNQ3ZZSmlQMGZWSVpmWG5QTXBPNXp0czZhMjFoRC8xRC9CYkFhY0Jv?=
 =?utf-8?B?eXN2a0p2L2djZHZoT2RBRFhQcTYyVFZmRlVDQUozM1RHQnk1YWJZK3hvcW9O?=
 =?utf-8?B?TlY5SEhMdGJ1bVQ4UExpcmZ4ZjBjTSsrT1RoNFgrajUrUXZSYnc3d3lyZnQr?=
 =?utf-8?B?NEEydnBMRzFtZStSUXRmUDdRMFJLVi9Ja3NlS0dNclBlVVdET1pRRTFMOHhv?=
 =?utf-8?B?ODQxVkdQbFQxL0ZCa2JKeTIrTm84MVZLQ1BqU3lUN001aXU3SjJWMThFNS91?=
 =?utf-8?B?NVBhVmQ5YkRLY0dBbXdQeHFxL2ZSM3dwOCtURUg3eExzZ3haVWU0RldZU0hp?=
 =?utf-8?B?bXp6djBCbXZQcjhJYVFiZTRmMXRJZzhyckd5T2xCTkYvdHk4ZTJOazJsNERJ?=
 =?utf-8?B?RE5BL3prSWxXUm42eTIwMHpIekNoVmpRdGQvY25FQVE4dEtIeWgxMHBXdXhM?=
 =?utf-8?B?V0NWbTFXWjZTRGJiQzZkZ1MvNzJUR3Npdll2UjEvS1F5S1pmYktVMi9XSk8x?=
 =?utf-8?B?OU5rNmpkZWdUcXhDaXFvWnZRaVhjaEtybjBweGlNcjNlaE5ISFBqVUxjTmVR?=
 =?utf-8?B?b2oveU1udy9TUCtnRzRqUURmLzlXTFRNaFY5cXVpVVBnRVRnakhRbHdyUFVx?=
 =?utf-8?B?YTFNeDBBUmc0OGI5Q2h5NjRPNE5ySk52WU84VmwvdW9KaDV6N2E0YUtJaGMr?=
 =?utf-8?B?VGlqMVFHaVNxUXI4T2VyZk5pcCt1WnQvR1JVUzVMOS95Tjd5M0s4STFwZ2pz?=
 =?utf-8?B?YjdUdzlQZjZrZGQ0dUhsNm1uM3NNS1MzSHZUaHl0WStha0swc3dTZDBIajRq?=
 =?utf-8?B?ZEVNb3BDZlpaYXlVNVlySktUVEIrSWc5dTg0MjdDUjVyYmJGa0VrZHdyVVUz?=
 =?utf-8?B?WDlIcXhkYkQ1WVMrVnJ0WE16bG5OVGxQSFRVZ25HVmRudFdyOHZSUm9KMkZQ?=
 =?utf-8?B?UkRhTmtZM3pMbllNZHVCbkFlOXlqUDNVZytabjdsYW1jckp3cFo2dWk5UGJx?=
 =?utf-8?B?UmpFdXptMTcvS2JaUUhhU2dmWE8wNUVsaFN1akFPaFdOWWpJZlMzaXVXVXU3?=
 =?utf-8?B?OU9iSnJJT3k3c2lNY2lKenRwWUpNOUZETDBlaStlcCtOWDl5c3dHTHhzdkM2?=
 =?utf-8?B?Nk1qaEpkQTlwWkczN09UcTBNM25CT3dvVUZXVW9wU1RkaWl3dU45M3FWS2dm?=
 =?utf-8?B?SmM1bS9tK1dLSmp6TGFiRGZpQ2dOaXp3SDFocjNhT3J5czBEWC9qVFRVWFlJ?=
 =?utf-8?B?cXhzc21yaDEyUXhuNGZPNkRCcFZ3c1gxNVR3aEh4MjFCbmhvTzE2ejRTaGwz?=
 =?utf-8?B?TlJ6TmpNM1lmLzFmeVlaekw2Q2dJWWNhVTdadWxJZXdYc1AyWllOa1UvNk1s?=
 =?utf-8?B?Y1Juamt2aGxHdUgrUU9EdFFXZzd0MEJCK2tOZWJUU1J5bU50UTBrSm1Lam91?=
 =?utf-8?B?SUUvS21XNkVKcExtRU1pT29PbkRYTnNIdnRrWXhXWVN4SlJVdGdWK2d4TGRh?=
 =?utf-8?B?bWZoRlFUQnkvcGFDSFF2ZitwSnZTVEZRbjZQdGl5RUJ5UDNuV3Ardi9GTGEz?=
 =?utf-8?B?Y1IybmlrSnFyOE1kR1NoUT09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VzB4clZUQnVJSEdzd0Nta2ZaWlhRUHNNRDl3Mk9XK1JyTjAwY3lqZjVHdUdr?=
 =?utf-8?B?VHoyWVkzRlV0L0ZsWGdIK3lMQzRkSWFwcVdUek1DNk4vb3JaM0x5ekJPY0Zz?=
 =?utf-8?B?UDdSdTVqbXMya2ZFNTBTZHR5eTYrdDdlb2tMZHZrcWU0aXBORWlUd0grTlk5?=
 =?utf-8?B?U1dnWk9RclFlQnNyUFR5N1NiRDF2Ti9tSnVBbkdGNytzNUxxTEU5N3FCZFFT?=
 =?utf-8?B?ZTVTczdDN3R0M2R1dmR5TW9ROFVsL1RvQ0pHWC93N3pXa3l6Ukpia0lCdWVs?=
 =?utf-8?B?cm1IejlVVTJTbDdvR3lWeVc4M25WYk1xRXErY3I5SGxKeXlKNFBiTjNibzVM?=
 =?utf-8?B?TkNHalFlWEgrNHlKT1lWNW44WEZ0L1VNemxRZmMzM2JXTW1NYjJNbnBSOWVt?=
 =?utf-8?B?K0FFQnZ5MER1WU9iKy9HdlF6dFliNlRVRmlNWXlDM0IwU21JMHRmWWJRd3h2?=
 =?utf-8?B?SHhoVW12bDZFM1U1TGVhTW9mWnU3UzhGczhxQStyUmhCRkZNNUpJY3V3VmlG?=
 =?utf-8?B?ejFISm5WSzFycGlOVjVlczk3UUU3L2NvQ2hyQ2M3V1lEQmFqb2Y4Wi9NY0dU?=
 =?utf-8?B?S1hTcWZJcUtSWXF4YVR3Z1ZzMENHdHplbzVsdzg0aWtoOU11R3ZXNUMvTys1?=
 =?utf-8?B?cWpOa0RObU1uSXZuQU5vUWwxVUZJMGRGVzRXNGM5TVRpMUhnTUp5NGJnR0Ux?=
 =?utf-8?B?RWRsc29GS2RFZTd0NmkrMDQ2QmpsL0hRQU5XbnlxQnlZQzVjaTRCZHRnR05m?=
 =?utf-8?B?ZUwzZ3YyNUZGL29jT1FCdnY4MjRDc0dFdXVuams5NTNqbXRScHd1RUxFNWdC?=
 =?utf-8?B?aWVLZWlEMEhjejYzeVkrMWYvVE4zc0dWN3djVVRWTGtJTUFRSWJMcExBb0Fw?=
 =?utf-8?B?S0FoeWlKYzdpRko4cEhXelhJb0VTQWlsVk5zMGlmSVJINUQ0aXAzVjVYM0Rh?=
 =?utf-8?B?NHp5MlRZVUFFeWJXY0VTS29nVmhBSzE0cFBkVFdLTElvOHQ3akZveS9hN3FO?=
 =?utf-8?B?OXVVQk1ETHZXNnRtUW9hTGZBSFV2L1ZVKzJmMWw5YUFWR0VkajVhTjhUUERT?=
 =?utf-8?B?OENEeHNxSjU1NHdBRTBYSW9UaGZja3N5cytJVE9rclgwZGhpSzE1NjlvV0ZB?=
 =?utf-8?B?SWJUT3VPWjYra1FNUnBnT0dQQWo4TzBTWW5NZCs5Rk1RaGJGbGVybXhCWHRE?=
 =?utf-8?B?TTJFQXRCU0N6aG5lNlBGdWk3ajNQTngyUWZMaVRaaW1jbE5idFJySzNwaDRq?=
 =?utf-8?B?NG1xZzlnQlFtK0xrTkorMThIbGFCT01IcUZadDB0S3ZndGJ0a01CblhneFMx?=
 =?utf-8?B?amg5Q2JJSlEyTzlNR1RnZkd2Y1c5S1ZBRjFMdEdnQ2NaL2JwblFITW5BMnly?=
 =?utf-8?B?ZW5QWGJkUE5taDlkOGl4T1FoNU82cENucnIvaDU4QUwyQ1VXT0x4UEpkNm9q?=
 =?utf-8?B?ekwramFacHluakg1bEY0ZldTS3pUbHpET1RoZi9EYnFBdGFGLzlSNVBVenZY?=
 =?utf-8?B?bWtDY0tiMU43Nm5NVXYzYWRJYnl6VUxMemRUdzdVT3JTdTlLOExFRlpURG0v?=
 =?utf-8?B?RFFsRWUvdGgzRXVTa091TGs2bkhHQmZ3Q3k5Zk96ZXNPZ2I1OGZ4azZSLzJk?=
 =?utf-8?B?dTUxWG4zd2JRR1FxTTRZS0JsaDlyeEU0SmRDMHFXWEZxWC9MNHljaElkNWFi?=
 =?utf-8?B?a1BjOFVzMlFHQjVoenN3eldkSEFKRzIyMm1XN2lySjVGSGxRYXpHRkxnQUlZ?=
 =?utf-8?B?UFIzVXV4QW1hbDREdkFpV1d0TGNIVEp4MXRkSkpTUWFoZTJJSlRVV0M0ZzI5?=
 =?utf-8?B?SzREdmFRcllhR20yMk1pTFJIVGJVcUNXRnlKUWRFajdWVm56UlhBL243WDFk?=
 =?utf-8?B?a0w1ZmdGN3FIWEtBdFJFbVNNZ1pJdDZ2cXcrVnQrSGNvVXZUUUpDSk5UUXVW?=
 =?utf-8?B?bklKWXNiT2pQWjl2VEFtNnRjR2Q5RGtTLzhzckJzbWJCY3RZN29HMjA1NnJi?=
 =?utf-8?B?Z1NXQytBbzZTWUFFK280dTVENVBhK2YvcDVWaHduY25kRXZYYlNQR2dsT0w2?=
 =?utf-8?B?Sk1mQ0FML0lDeFA0VUVhakNQNFN4bnpJd2hpZ2dGTU8vK0tNZFNpUDFGNkk5?=
 =?utf-8?Q?iWNi+ZyOIiO3dc5DWwhRK0g+9?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 725b4942-937a-47ee-35d4-08dc763a9ede
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 May 2024 06:28:52.4707 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Vn/nTotRF4u0J71HTZRexAyGfrep52Tih9nzkjBJry//EWEessguNXb7i90UPc6il3oiu8Ztp6zmYNz2xxS80A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6143
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0K
PiBIw7ZnYW5kZXINCj4gU2VudDogRnJpZGF5LCBNYXkgMywgMjAyNCAxMTozNiBBTQ0KPiBUbzog
aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogSG9nYW5kZXIsIEpvdW5pIDxq
b3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCAxLzNdIGRybS9pOTE1
L3BzcjogTHVuYXJMYWtlIElPIGFuZCBGYXN0IFdha2UgdGltZSBsaW5lIGNvdW50DQo+IG1heGlt
dW1zIGFyZSA2Mw0KPiANCj4gT24gTHVuYXJMYWtlIG1heGltdW0gZm9yIElPIGFuZCBGYXN0IFdh
a2UgdGltZXMgYXJlIDYzLiBUYWtlIHRoaXMgaW50bw0KPiBhY2NvdW50IGluIGNhbGN1bGF0aW9u
IGFuZCB3aGVuIHdyaXRpbmcgdGhlIElPIFdha2UgbGluZXMuDQo+IA0KPiBCc3BlYzogNjk4ODUs
IDcwMjk0DQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2Fu
ZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jIHwgNSArKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiBpbmRleCBmNWIzMzMzNWE5YWUuLjY3ODk4N2JiZTE2OCAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0xMzY0LDggKzEzNjQs
OSBAQCBzdGF0aWMgYm9vbCBfY29tcHV0ZV9hbHBtX3BhcmFtcyhzdHJ1Y3QgaW50ZWxfZHANCj4g
KmludGVsX2RwLA0KPiAgCWZhc3Rfd2FrZV90aW1lID0gcHJlY2hhcmdlICsgcHJlYW1ibGUgKyBw
aHlfd2FrZSArDQo+ICAJCXRmd19leGl0X2xhdGVuY3k7DQo+IA0KPiAtCWlmIChESVNQTEFZX1ZF
UihpOTE1KSA+PSAxMikNCj4gLQkJLyogVE9ETzogQ2hlY2sgaG93IHdlIGNhbiB1c2UgQUxQTV9D
VEwgZmFzdCB3YWtlIGV4dGVuZGVkDQo+IGZpZWxkICovDQo+ICsJaWYgKERJU1BMQVlfVkVSKGk5
MTUpID49IDIwKQ0KPiArCQltYXhfd2FrZV9saW5lcyA9IDYzOw0KDQpBcyBwZXIgc3BlYywgaGFy
ZHdhcmUgd2lsbCBhZGQgNSBleHRyYSBsaW5lcyB0byB0aGUgcHJvZ3JhbW1lZCB2YWx1ZS4NCkZv
ciBwcmlvciBwbGF0Zm9ybXMgaXQgd2FzIHNldCB0byAxMiBhcyA3ICgzYml0cykgKyA1LiBJIGd1
ZXNzIHdlIHNob3VsZCBtYWtlIHRoaXMNCmNvbnNpc3RlbnQuDQoNClJlZ2FyZHMsDQpVbWEgU2hh
bmthcg0KDQo+ICsJZWxzZSBpZiAoRElTUExBWV9WRVIoaTkxNSkgPj0gMTIpDQo+ICAJCW1heF93
YWtlX2xpbmVzID0gMTI7DQo+ICAJZWxzZQ0KPiAgCQltYXhfd2FrZV9saW5lcyA9IDg7DQo+IC0t
DQo+IDIuMzQuMQ0KDQo=
