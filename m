Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5144F866CC0
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 09:45:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EC7810E66E;
	Mon, 26 Feb 2024 08:45:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hN6CLJeF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6F2610E669;
 Mon, 26 Feb 2024 08:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708937138; x=1740473138;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QKpI2t5cUTPndcn3RJjJXhxW1iBgXfCkEYcGtZBGFIo=;
 b=hN6CLJeFjjJushxIqpVaXGDkMPYTTQEJWhu/cdJnNfgg2nD6g1Zt1zij
 /f9c/sU1jdKxyUaij9myBmQ66QB/tgIb0M8Xq4ClQ4beIsQdPZN6MAo00
 BTzPqJJcjpA9GDWM7CN94HzDVqPpLAidVi3w9w4cWQyc24N3caxIqV7HC
 Uv3hSG6bShFM8M7Fs25uOO0LcziLD6ShY7tLkuz1jGWo34cBxklVXTO7H
 dqmetpL/8MeMMpuWmpBABPWkSBcIZhSXMxF9q1ULqrL5Y1ZkiKLGKUszS
 9W1MyMTp2mtecA84seQZ1aU2HZDXDEGIPwtbxfNF63BXRpKaASxNzSOs+ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10995"; a="6157777"
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; 
   d="scan'208";a="6157777"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2024 00:45:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,185,1705392000"; 
   d="scan'208";a="6625861"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Feb 2024 00:45:37 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 26 Feb 2024 00:45:35 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 26 Feb 2024 00:45:35 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 26 Feb 2024 00:45:35 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 26 Feb 2024 00:45:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T5IAKAIcUVX1/hB+WN+x1dJHcmdht81DAbcencagTSbEALpS53991hdrok2yaOdSqFTHyerNIvBIx0gOsOrM9cOFGd3Bohl9BQ/8bGlvBli5XV1g228gy4fV/iSBEqRD8LWf3uYbQ8OBCqieZv8J7CY1YpRday8bLzaNezXI5od1IIfjO7b7sYlpKW08m5hAkuIl5nTEUl5xRFOMrELA86JBRADEfcUCcv7MhvEmr0RfFOzeKdkwgtdduWPGjetrdevEkiO75xvUVZVkYJj2wfnxustmG5K8AiIj7j1YDFVFnvzX5WSLmPp/5NJksT7sUtywXjKrYCUZT9eD3P50RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QKpI2t5cUTPndcn3RJjJXhxW1iBgXfCkEYcGtZBGFIo=;
 b=goOiA/c0G7KhACfOqf0tu8/5YyO3klNgmUz68F4Mbcelhkue/EhFnw25B/8pnIhyrR9rOvMy4zzbujGMt8Y5MbTLwFDgJvIaLie8ZJW0yyxHY7BWwuzzqMD5Q44/3whkwHG6J4MW0kdPzLmw7M6lFFO2UKjXVvqbw/IRYFYjBJ0KhJNpAloqKwgldrDRpEFXNwG+N3tcNkk7wMd6QKuMInoBQY+ysNixshdC+VCL8kT2SL/j1ToFlQaHoRUxqvWqIF2n7cPzGGdWw9jkOJly96giRQUyWvXrqqkf6xE+cecqT6UPa4xE02Ubuwj1iRbPmJj1DPwLrmy/d0Y8ZuibEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SJ0PR11MB5087.namprd11.prod.outlook.com (2603:10b6:a03:2ad::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.24; Mon, 26 Feb
 2024 08:45:32 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5%4]) with mapi id 15.20.7339.024; Mon, 26 Feb 2024
 08:45:31 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, "Ceraolo Spurio, Daniele"
 <daniele.ceraolospurio@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Jani Nikula (jani.nikula@linux.intel.com)" <jani.nikula@linux.intel.com>, 
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 2/5] drm/xe/hdcp: Use xe_device struct
Thread-Topic: [PATCH 2/5] drm/xe/hdcp: Use xe_device struct
Thread-Index: AQHaW0FLfM+TOIapPkeYVBZST1xMJLEI7uoAgABoTQCAEwteoA==
Date: Mon, 26 Feb 2024 08:45:31 +0000
Message-ID: <IA0PR11MB73073D2CF8287A6C93B95445BA5A2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240209101412.1326176-1-suraj.kandpal@intel.com>
 <20240209101412.1326176-3-suraj.kandpal@intel.com>
 <e00cb734-2bab-4607-b1ac-a57d994184a0@intel.com>
 <MW4PR11MB67610BFFC64806967B0D1931E34E2@MW4PR11MB6761.namprd11.prod.outlook.com>
In-Reply-To: <MW4PR11MB67610BFFC64806967B0D1931E34E2@MW4PR11MB6761.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SJ0PR11MB5087:EE_
x-ms-office365-filtering-correlation-id: 31ba35fd-186e-4040-7eec-08dc36a74a80
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ub+cl7JWr41vG+rzig5dT+J43G7ZdSBHoYwk94SjSlmCa5T+7sf/pvxVFqzgRXK29W+TjSn+MrFc1GTum5ybmgcyh2q85s/kaTowvzkf8ma9knBd8FV4udD3RxB/6QanZMpZC2x/3mfcmLmz4wgHu6iHhKbw/2HxWiB9wLkeXMlynFPuJfn+zUHBRU82vyFycY3E+6B72oIEumR5XsMbzTqK776nKrs2S6QwBBvNDwrpV1tyFdq8hGz0+Qcfc4Zq54FawvF07JY+L8Ku1p1qzb+cu50JuZpI7a9AR6hvK92IAQh3cxCvITR6lepuk8tx0a9F/Qzt0F/bKyJV/KBe1iXCehhoinPijdWESIgFcwPDO+au7gAcUblgvW69aIeC/XcmVGfhRK6GE4uomU+FFQa7DHbGI49uhGdt7pY/pBt3CU7AkDTHkZ8Nrg0orH/lvjYl/hjztpZgLRzGRh1fcAHzK6C3j6FdprqfpKc1DY5rOxkcFwqaY87/+ZU9t8hLU2n2nIgtrW7XoDEEHJUgKIRS8TDCJadh+RD4H1fnQfwo/iqRYHQOOmLuJxDpQ6lxm0FMT2WL5U/SKi6+iZFr+jatICYCShvMOQoCbQw5KIJqirlxvBIDpZjxR+RYIXrGg9aMvaZs41m6gjL7dcDjeJjFmXbGVOQCHrGz+DgvNx5h7JZ7PEqCJBQS3fFLoQPXAUrAeJ0lbjfOkdhxu1VP6g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aFgyTFhVd0k4Uk5PcGM3NGpzUjg2UkpBeXdoajJWN0poSHNxK1VLYlozTlJy?=
 =?utf-8?B?SzhYZStUU3psc1JaeWxabklCNlhJQjdEbkVBcU1uU0hmSmg2dFVkSkptUFZy?=
 =?utf-8?B?VUVHN0hTcjR4Q2pRcE5iWFBJaWpCVkpFbHcydjVGTHgwY1ptL2NFWkxFTGsr?=
 =?utf-8?B?aEdlK2JQSzB1azBtdGM0Z2x1TGYySXYyNzgxWFZyQ0hsTlA4b1dEcnZCNVdy?=
 =?utf-8?B?QitIcE5GdUl5dytmVUxKVWU2YmhyRmlIUENBQkhBL01MaEo4YW1uQzVsTHVq?=
 =?utf-8?B?YVZnNnJmWW1CckVNOGlkNThqNUpVZkhQOVJMM0lQcmw4VGFiTjVSbDJWbmM3?=
 =?utf-8?B?UzlMZGtmenRVYUwrdGtGcHJvRWVJNG5WOWFaUXVFS1VwRW4waFlmWmw1TXdQ?=
 =?utf-8?B?ZFlJc3BPeEhXZUorMGtLOUtCN1ZxK3pBUWxVdVdnK0JZempHSUR5OW5yWlgv?=
 =?utf-8?B?SE9Nb0FPNEpuMVh3aFJQRmtvUDI2Vk43cWVIUE9lYm4wVnNUaXJRVGxWK2ZY?=
 =?utf-8?B?K3A3TFBnaDJsYVNOY0tkUzZqdklPQXZnTDhEQUl3U1VFSTYwRkMzTFk5NnUy?=
 =?utf-8?B?TFcyQjcxMWFpcVpWYnk3ZXNsRDZZQ3l5S3FyYlRKc05zOTNGVi8zTlJIMzJF?=
 =?utf-8?B?T2FhR3htVlBKVDEvcHo3WlFOTUh2REdVWkRzbFBuWWZMcDZUdkhkNlp4QnBT?=
 =?utf-8?B?R1phMzJKWUdodi84d3dIcGxUb0M2OXhPSFRNQ1hrRFlwZ3dCM3dWTWkxWTRY?=
 =?utf-8?B?azFxOXBpa2Q4UnZTVzg5dml2ZFY1OVRyZzhrYVp0ZGJqMkZjWlRBa29ibjFh?=
 =?utf-8?B?N2Vld1ZxZkhrYVkxQi9aUWJqbU4rbU83MVBwSGlPRXVWb1dkWUFhVXdmTnJw?=
 =?utf-8?B?Rll2UWJScnEvVlFPemNkRk5oYVRwSi9IOThGUXBvR1UvUWcrWGFEWXJ2bHc4?=
 =?utf-8?B?Z2pkUGdSSWFydzc5MVJzSmYxem9SOEMzRVhodG80enViVk50UWpzUU95MUFM?=
 =?utf-8?B?OGJVVVY5Y1JPYkVEY0hzOWNMKzBvc2dNTnFiaU90am1GVEZrZ21KOVVKajNB?=
 =?utf-8?B?WUhGbzJ1OVJvOVlPQnIyWlVkbGRaRzJxVnhaWUtaZmxWSkx4aHNyZFBLelZm?=
 =?utf-8?B?N3g5L2toeSt1Wk1RTGtkZU9nSm43SDZKVEsybGUwdUpac1ZsRlpHUXpLU3U0?=
 =?utf-8?B?SFZNNHBCSnpuSy9vaUozVkdoTElXYnFGZ1pWMWJleUdUMzhiVEFSdlcxb2pM?=
 =?utf-8?B?UGNlenJ3U2YxWUVTcmY4UjNLZkJxUmNvKzlyc0xmcmZ6d1VwdlVCWUIxeERB?=
 =?utf-8?B?SjJNMXZOc0ZqalA2OXhac3pBMHUreHFlU1hUUW1NbEVKTHZiaW84Vy9BeVFk?=
 =?utf-8?B?WklWWDQrbzFja2ZNRDY3NjAzUzd5bytqV3lobEFmSkRKM0dzL2crQXNmSkZQ?=
 =?utf-8?B?dE9UcmNIWlNGaGJuQ2xlYm8zT2s0RmRvRnRrRm9IRU9ZMEZ2d3lSd2tIcTNn?=
 =?utf-8?B?RXJjSGpOMWp2dFQydzNQZDVCWXg3Y1lKOGYrZTEvUC9XbmszYVE4VTVwclFr?=
 =?utf-8?B?d2VkS1Zhd2NzaDdwbG1Uem1mL1NKOHFSRDF3RXBBbUlMaUVOY1FxcFZDcEFT?=
 =?utf-8?B?NHllWnFsNjNuRHpWaU1BUEpDU3E1N1VjYSs3dURLSS9RendNQWtxYithQXdU?=
 =?utf-8?B?NmlSR0NrZlY4dXJlVkE5cVAyaSthcmsxWUhZbkEwd1drSU5HNVVqNU95a0xZ?=
 =?utf-8?B?NGJFYWE3NWk5NDdGQU1pazg2QjJKSTdwUzM4OXNLa01WeEM3bVlON2ZkKzFB?=
 =?utf-8?B?QUlEcTRIQURMV3pyMEo3R0IramdUOGk5K1ZTdnVSR1FTeDZWRXo0dnJNTjFt?=
 =?utf-8?B?N1JNVjhYNUNvWlRqUnduRHc4c0gwZG1teDdteGJVeU9teisyaDVJOUxSME4w?=
 =?utf-8?B?S0RlU293dTQ1THZQM25DQ2JkYjRHQkVzbDRDYTJXeVB3VG9ISllLZkoyczd3?=
 =?utf-8?B?UlZCL0JPNjJzVEJQSDdBVWJrZmtmdTJ5U3JEdytpRENzZUJ1SFBPWDA2Z2lZ?=
 =?utf-8?B?QlF5akdqYlptS2JyaXBvZmNkUG1yZ09OZ1hFZEZuRkJYMkVBblFSYWJxMytj?=
 =?utf-8?Q?hjS+Xbch+itb+tDOK0i9IlyV8?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31ba35fd-186e-4040-7eec-08dc36a74a80
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Feb 2024 08:45:31.6605 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vmEB70s8bDqJfO7UTEL8miA2X35StcdmZ4GPxUQAODY4seOAHChKGwPoIfqQHIAGQYqXiXZHTy/KmAQJlZJ+Iw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5087
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZg0KPiBLYW5k
cGFsLCBTdXJhag0KPiBTZW50OiBXZWRuZXNkYXksIEZlYnJ1YXJ5IDE0LCAyMDI0IDExOjAwIEFN
DQo+IFRvOiBDZXJhb2xvIFNwdXJpbywgRGFuaWVsZSA8ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGlu
dGVsLmNvbT47IGludGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEphbmkgTmlrdWxhIChqYW5pLm5pa3VsYUBsaW51
eC5pbnRlbC5jb20pIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+Ow0KPiBOYXV0aXlhbCwg
QW5raXQgSyA8YW5raXQuay5uYXV0aXlhbEBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJFOiBbUEFU
Q0ggMi81XSBkcm0veGUvaGRjcDogVXNlIHhlX2RldmljZSBzdHJ1Y3QNCj4gDQo+ID4NCj4gPiBP
biAyLzkvMjAyNCAyOjE0IEFNLCBTdXJhaiBLYW5kcGFsIHdyb3RlOg0KPiA+ID4gVXNlIHhlX2Rl
dmljZSBzdHJ1Y3QgaW5zdGVhZCBvZiBkcm1faTkxNV9wcml2YXRlIHNvIGFzIHRvIG5vdCBjYXVz
ZQ0KPiA+ID4gY29uZnVzaW9uIGFuZCBjb21wbHkgd2l0aCBYZSBzdGFuZGFyZHMgZXZlbiB0aG91
Z2ggeGVfZGV2aWNlIGdldHMNCj4gPiA+IHRyYW5zbGF0ZWQgdG8gZHJtX2k5MTVfcHJpdmF0ZS4N
Cj4gPg0KPiA+IEFGQUlVIHhlX2RldmljZSBkb2VzIG5vdCBnZXQgdHJhbnNsYXRlZCB0byBkcm1f
aTkxNV9wcml2YXRlLCBpdCdzDQo+ID4gcmVhbGx5IGFuIHhlX2RldmljZSBzdHJ1Y3QgdW5kZXIg
dGhlIGhvb2QuDQo+ID4gVGhlIGNoYW5nZSBpdHNlbGYgbG9va3Mgb2sgdG8gbWUsIGJ1dCBJJ2xs
IGxlYXZlIHRoZSBmaW5hbCByLWIgdG8NCj4gPiBzb21lb25lIG9uIHRoZSBkaXNwbGF5IHNpZGUg
dG8gY29uZmlybSB0aGlzIGlzIHRoZSBjb3JyZWN0IGFwcHJvYWNoLg0KPiA+DQo+IA0KPiBUaGFu
a3MgRGFuaWVsZSBmb3IgaGF2aW5nIGEgbG9vayBtYXliZSBKYW5pIG9yIEFua2l0IGNhbiBoZWxw
IHdpdGggdGhlIGZpbmFsIHJiDQo+IA0KPiBSZWdhcmRzLA0KPiBTdXJhaiBLYW5kcGFsDQo+IA0K
PiA+IERhbmllbGUNCj4gPg0KPiA+ID4NCj4gPiA+IFNpZ25lZC1vZmYtYnk6IFN1cmFqIEthbmRw
YWwgPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KPiA+ID4gLS0tDQpSZXZpZXdlZC1ieTogQXJ1
biBSIE11cnRoeSA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+DQoNClRoYW5rcyBhbmQgUmVnYXJk
cywNCkFydW4gUiBNdXJ0aHkNCi0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gPiA+ICAgZHJpdmVycy9n
cHUvZHJtL3hlL2Rpc3BsYXkveGVfaGRjcF9nc2MuYyB8IDE1ICsrKysrKysrLS0tLS0tLQ0KPiA+
ID4gICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQ0KPiA+
ID4NCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV9oZGNw
X2dzYy5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5L3hlX2hkY3BfZ3NjLmMN
Cj4gPiA+IGluZGV4IDBmMTFhMzkzMzNlMi4uNWQxZDAwNTRiNTc4IDEwMDY0NA0KPiA+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfaGRjcF9nc2MuYw0KPiA+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfaGRjcF9nc2MuYw0KPiA+ID4gQEAgLTMsMzAg
KzMsMzEgQEANCj4gPiA+ICAgICogQ29weXJpZ2h0IDIwMjMsIEludGVsIENvcnBvcmF0aW9uLg0K
PiA+ID4gICAgKi8NCj4gPiA+DQo+ID4gPiAtI2luY2x1ZGUgImk5MTVfZHJ2LmgiDQo+ID4gPiAr
I2luY2x1ZGUgPGRybS9kcm1fcHJpbnQuaD4NCj4gPiA+ICAgI2luY2x1ZGUgImludGVsX2hkY3Bf
Z3NjLmgiDQo+ID4gPiArI2luY2x1ZGUgInhlX2RldmljZV90eXBlcy5oIg0KPiA+ID4NCj4gPiA+
IC1ib29sIGludGVsX2hkY3BfZ3NjX2NzX3JlcXVpcmVkKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1KQ0KPiA+ID4gK2Jvb2wgaW50ZWxfaGRjcF9nc2NfY3NfcmVxdWlyZWQoc3RydWN0IHhl
X2RldmljZSAqeGUpDQo+ID4gPiAgIHsNCj4gPiA+ICAgCXJldHVybiB0cnVlOw0KPiA+ID4gICB9
DQo+ID4gPg0KPiA+ID4gLWJvb2wgaW50ZWxfaGRjcF9nc2NfY2hlY2tfc3RhdHVzKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1KQ0KPiA+ID4gK2Jvb2wgaW50ZWxfaGRjcF9nc2NfY2hlY2tf
c3RhdHVzKHN0cnVjdCB4ZV9kZXZpY2UgKnhlKQ0KPiA+ID4gICB7DQo+ID4gPiAgIAlyZXR1cm4g
ZmFsc2U7DQo+ID4gPiAgIH0NCj4gPiA+DQo+ID4gPiAtaW50IGludGVsX2hkY3BfZ3NjX2luaXQo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpDQo+ID4gPiAraW50IGludGVsX2hkY3BfZ3Nj
X2luaXQoc3RydWN0IHhlX2RldmljZSAqeGUpDQo+ID4gPiAgIHsNCj4gPiA+IC0JZHJtX2luZm8o
Jmk5MTUtPmRybSwgIkhEQ1Agc3VwcG9ydCBub3QgeWV0IGltcGxlbWVudGVkXG4iKTsNCj4gPiA+
ICsJZHJtX2RiZ19rbXMoJnhlLT5kcm0sICJIRENQIHN1cHBvcnQgbm90IHlldCBpbXBsZW1lbnRl
ZFxuIik7DQo+ID4gPiAgIAlyZXR1cm4gLUVOT0RFVjsNCj4gPiA+ICAgfQ0KPiA+ID4NCj4gPiA+
IC12b2lkIGludGVsX2hkY3BfZ3NjX2Zpbmkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUp
DQo+ID4gPiArdm9pZCBpbnRlbF9oZGNwX2dzY19maW5pKHN0cnVjdCB4ZV9kZXZpY2UgKnhlKQ0K
PiA+ID4gICB7DQo+ID4gPiAgIH0NCj4gPiA+DQo+ID4gPiAtc3NpemVfdCBpbnRlbF9oZGNwX2dz
Y19tc2dfc2VuZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgdTgNCj4gPiA+ICptc2df
aW4sDQo+ID4gPiArc3NpemVfdCBpbnRlbF9oZGNwX2dzY19tc2dfc2VuZChzdHJ1Y3QgeGVfZGV2
aWNlICp4ZSwgdTggKm1zZ19pbiwNCj4gPiA+ICAgCQkJCXNpemVfdCBtc2dfaW5fbGVuLCB1OCAq
bXNnX291dCwNCj4gPiA+ICAgCQkJCXNpemVfdCBtc2dfb3V0X2xlbikNCj4gPiA+ICAgew0KDQo=
