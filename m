Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A48268AA881
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 08:39:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A464E10E204;
	Fri, 19 Apr 2024 06:39:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="km5MuKG5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF68610E204
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Apr 2024 06:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713508792; x=1745044792;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=BuD1CqkXpIug20syQncb+K0lpLSy4ylaFp6YMCQmagA=;
 b=km5MuKG56Hl3FJolNh0gWSaQuHT+Il0kNtUX2a7b+4meIzouPJlJmkjn
 mCwctQSeRY22aWgMwh9gSHc7VXZh0Cc5OLYUZxqdsKFeaDvSvlU4Pn4na
 YKJhj6Rx+mdO7xyXshDs6LyOHKdmd+7PIxI966QRWUUJVOtkQef0x4KZw
 8ssXwdBKmDqMtKusLH1/1qrEM7xJog1fg6kOgmf/I5+REt+7ldQpZsusW
 obctSmhIPtougeq8mhNNLEjOndtuCrzaSSxDoUyHktK0CYPM5LfekAfD8
 ocO1XGPiHkYJQXZukFd5BG63L3ZVGJdXznD/VUjemghhfEFsI4CNM9p9a w==;
X-CSE-ConnectionGUID: notUXyGXROmCRTZG/bwFGg==
X-CSE-MsgGUID: lYYfRunaQHmKukjgn1+Zyg==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="9212198"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; 
   d="scan'208";a="9212198"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 23:39:51 -0700
X-CSE-ConnectionGUID: mHjoQM60SX64ydJ9l75iHw==
X-CSE-MsgGUID: 9kAAFvGERKaUEA8v8jMwGw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="60671731"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Apr 2024 23:39:51 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 23:39:51 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Apr 2024 23:39:51 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Apr 2024 23:39:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZtvAXuDMe6x0e41GGLHkGXSggz/NKbZvYv3OUeSey+w8GSX3pJBeUBTtVbVkVwXTXfgAKAAOgbY9cVUl2THZEyFU3MlYdSZNNBCgOsJNDnLKFDBw6/IeRpOqCbHM1+jLJl6DNhk+Wa8RXTGCWbCkirvLpMHgkUWAvW5S6DH9gkjt/2PCEorYjELY4LElFas0JCUMDoWbOJ4HIDhJ1D7ug13zwrj8Seq7GhcsKF5C+ueaPtYz5HcWBbrrcCJlSQaAaEYux8K2pm2sL7URwulDOuCh0LU/hBd6WWZ9QCoqafK0mUSkaLOzzU/FCVsP62qnmC3sD2msii0VHbft5teoZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BuD1CqkXpIug20syQncb+K0lpLSy4ylaFp6YMCQmagA=;
 b=N+jfqWbfBzndXhkOB3JvIMRbJXIwC2YJm/aeHUTyX5o3HJXSu7Hk2ZpZNZCECVcXn32aFGYZ1h4QCDN4hf+VtnTMGy58Q1Ce3TeQr3XfsLL10MSH3LFzO35N/P0RAONuNFrRyWJdPRfLkV28aCzgoehaV9xo9GKE0DzmvCiDaywnSh468AZWMuG4sbiYN0qmSZIGfzR5RcO82iRiI0JraLxr6aDhlqG7zxjmM9QZ4oQ4dhlpKM1T3Q08U2k6dZHgbfCPfOlApujP84pqe4FfVw3dOhp3hdz2m1/IlytaF8ZPynBqn4YrpsM8M1Ivh540TNiGcXJfO+FbwO7Xu79deg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by IA1PR11MB6324.namprd11.prod.outlook.com (2603:10b6:208:388::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.14; Fri, 19 Apr
 2024 06:39:48 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7472.037; Fri, 19 Apr 2024
 06:39:48 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 4/6] drm/i915: Eliminate extra frame from skl-glk
 sync->async flip change
Thread-Topic: [PATCH 4/6] drm/i915: Eliminate extra frame from skl-glk
 sync->async flip change
Thread-Index: AQHaeuBhDf2+NGoZyUybb8DgE95bibFvMdJw
Date: Fri, 19 Apr 2024 06:39:48 +0000
Message-ID: <IA0PR11MB7307A4E912E95D38FC352FC1BA0D2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240320160424.700-1-ville.syrjala@linux.intel.com>
 <20240320160424.700-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20240320160424.700-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|IA1PR11MB6324:EE_
x-ms-office365-filtering-correlation-id: a3d2441a-2ee9-457e-11e0-08dc603b8202
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|366007|376005|1800799015|38070700009;
x-microsoft-antispam-message-info: pdTSvZB3bXIkqQOmzJKe1haAtL9c9bOtBMhGNxNOqyqVwtFANIzCg4hZbAfQGcaz8D8w8mvqpe98smSw7kv+T4gWvFw1iPYKYrzrQWzyjtBx1HlG6XfaP9EUkoZPFTBHKFAFgpcKB7lo55kSZvvNv0TqwLkuHXRz1JZodgLQXQ1TsztcVkPYx2b3UqF9S7nyoAplOUWq7nlLrGnkGP+5Mclv6z6t4JELfvLwMPDfGRRJf/GJU0ODXbG+rCD4vJ97ts1DnnGfVGzdJtmMcYfsJayVS4y/2z9gSA2/AVKT2D6yz+FlIDpOFkqweSBb9MKp0zqL6o0l5WWm5U7yOLmIM8G8bQxwKRROR7AxWMs6mQ6VC0kuZx7MnZdyvDGeDifRUbwKOmvw+sshV5cXg5I2IpFNU73V5wEM0BL82jHS8pzZtLb5OFfNfQCRHomFoutd4wbWMe2GacslvSnN5Mkv82zl4ZfBVHTjDDrQFKHd7iJqAVXSOD2SYnI4EfGbjyX57DdCNlyi4foao2GDQt+AD7Pwnfeiyv9ixHzdWItS5waiJHuUmfpE3WhnOueUHdAC7MfgvO3OVIjEIElG2z3LtzmKL+UO70RYpx/0Ouw39iHoM9aNDgINCN7TTOcXJWBxaHbnBYWWx9Twm3xg6zDQa5fapivxQwJDZs8bvy+qVFhrcMZhf9VtvUhpylDOm9nEh+XnMgr2qPV1xxMYoxGX9Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MDMzOFNVY3BQQXNQTjkzOGJocmViN0hGTXRkcTYzMkgxVjN1RGN2eGI3bzFD?=
 =?utf-8?B?SEU3ZEJQS3grR2gxdFFnSXlGYzZmUHc4RFN5RGdlempsSlVTN1E0ZE9xRXVU?=
 =?utf-8?B?NVQ1TVFTNTNjT3I0L0NhTWJDN1NZSDU0TnhSNmpCTTlKcDE5aWZ6OGcwVXdo?=
 =?utf-8?B?cmpqNGVMckdNazA3ZHIvSlVReHh6eUZLcjVUN3l1aWZtcHlOZWNOd05Rd2tU?=
 =?utf-8?B?QVpza0xrMGlqa3RxNVlhN0tCRFR4S244R002c25wYno5VWJySVZ5VHdVQ3A2?=
 =?utf-8?B?SWtQdWp1N0Z0NzVwdWhvRjZDeURXL2x6MzNKbDZXMFpOVDZFVjBKeTBONTdn?=
 =?utf-8?B?ZFBEUzRrK3FPUWkzdlJxYXNMNFNYYmRRNkZFdFlPcU13OXhXY1A4d2h2VEpQ?=
 =?utf-8?B?R0I2ZFJkM3lFcmsvRUQrTkJydkRUMjcrendZV3B2eXYwaTlSdndZZ2JoZVV1?=
 =?utf-8?B?Vy9yMGhkb2VhdzNqOVlHRlBOeklLRWdmdFhpZ1Y2eXV1U2UzYklRdnpnVGRO?=
 =?utf-8?B?aGQ1OVFLdE9DK0pqT1ZVOE1ycU0zeHM5cjkyV0pnUHdHRjNEWGtoT3o0YW1E?=
 =?utf-8?B?bGYvcmtuVmdBSVNrYW5QMnBEbVJMdEVYUVdDVGtlRENkb0dKVnlCSTMraGpY?=
 =?utf-8?B?UVlpanZCS2FYa0hDQWhKendOVGVZdnNmcVN0ZFEybHQyZHVqMnVwS2xJOXlp?=
 =?utf-8?B?U29ycFFPVE5PaG8rdnBGcTV5ekFySEhJUlB3K0Q2WitqQmhNYU1aVW1IOWVQ?=
 =?utf-8?B?MVdrOU0yNytsUHFxN1pobTBhVU5tMEZTWFovWXFERk5hemJJdk1MZU50cWRr?=
 =?utf-8?B?T09VWnU4aHF6c1NHTkkwMHg0R05oM3VQNHdqK2JvM0g5OGR0WHEvSlc0YW5w?=
 =?utf-8?B?cmtMVFNOUndoTStOWkx4d0tRVC94UWE4WVVVZ3orV0kxQWdrTDFOYjhZMm9z?=
 =?utf-8?B?c2R6ZCtJRjgybnU5d0JML25Cd1BkbGNoYXZxbHVQc2Z3dUliNTBjUFpRNXdO?=
 =?utf-8?B?RHJzVnNUNU8xVVliVzlwVXFsYTd0a3hMNmtIdGZSbTBURmVMeGtWbDR1eTB3?=
 =?utf-8?B?WGJOdThYSlBNZ3Rqa0loem1XNVdEc2hwNC9QYWJrRjdrV3hybDRXMTBlWC84?=
 =?utf-8?B?V1o4a3NsZ1BCWTgxNWg4akpPVE1kMkFTS1B1Ukk3dVBHeWdGRXF4WUNoc2dy?=
 =?utf-8?B?V09hSWdnSHNLRW82TklvWXRYbnZ6VVJQekZQOW9tdkxDd1FHMzBwR0FxaDEw?=
 =?utf-8?B?YWtpb3VvRTRFYmlXWUo4QmNVKzBsMGRWN3ZaQWpDRUV5QnJxUThyTlhNTUQ3?=
 =?utf-8?B?ZFZxamxTVG0zSW9MOUppUDZqV2FDL3JpbkF2aG00aTI4WDI2MkM2ZDVnZEl0?=
 =?utf-8?B?VmNGamRNa2wweGpaWkFZbUNZZmZtaktMVXBscitQalM1RTQyc1pyZmtaQm0v?=
 =?utf-8?B?SnZUTDlEV0l1eWVXR2d6YzROK1hDcDA4ZzlQVEFnSmxaOU0rNUxCcDZCMUQw?=
 =?utf-8?B?VzNuVEhJWmtYQlFtcTRLelNBNGV6Y3VBWFpCbnVGSlZnWm9oOUZ6c0k4MG53?=
 =?utf-8?B?TEhzOTVpeFV1bkp3Yis5WExTU3NsdEF1U3Jlc0RPeGh0T3hoRVNyZXZXOGhk?=
 =?utf-8?B?QXJHZ0JrZ3E3ak1LOGtFOTdMNEFPUWFCNDIzZjgzNmkxSDd1U0IyWTNkZktM?=
 =?utf-8?B?dmU3TmRzcTZlaWZndnZIUzBublR3bjR5WHk4M0NPRDIwWlZaU0FMQ2dMUUVt?=
 =?utf-8?B?dkIxNlYvWjFITnpDTm0zZ3RjRW5LSEhVbGc0anJ3WnJkN0lXSjN0YXowQ0tQ?=
 =?utf-8?B?QzhRaERjTzY5VmFwT0dUL2hZaGw4NjhrWFBWM3Q0VXBaTEhGLzNmNE1NU2VW?=
 =?utf-8?B?VUpZK3dWdkZYRFlPYWtLN1pBM3FlY05RRlExbVU1Sng2VEh4OG04WktrSjlw?=
 =?utf-8?B?ZGtFQUc0OWc0UDZ4MnBENzdoTDZRZk43VG9GMDlkS1lWLzlQcTlma3lmYzhU?=
 =?utf-8?B?RzRvanAvOE83Q0w5eGtpVWVqSGhzaU1qZGpJd2YwR2NyL2t6TXlmcU94b09I?=
 =?utf-8?B?WEpvT1NxUDFwa2Vid1UydDgvdlNFUFp6bytnUkdhcXVjd1M4SG1ZTzM3RkhQ?=
 =?utf-8?B?NkdMemhJQUNrRzVDMDJkNzlscWtnZUpjZXVoMi9GYitmSWZad2hwT3JObkJI?=
 =?utf-8?Q?60FGbOnSBS6r0OnDxAco2PLANAkUbefczdjoDc2claRQ?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3d2441a-2ee9-457e-11e0-08dc603b8202
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2024 06:39:48.0229 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Abh+xCMGZ4PgrTwX4iY7XJcf+8fKUxI4tLUjqmTF+6CZHUZc15jhpIAivzN3lFSQMVuVxZk6im34ay/lV4mr4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6324
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8aW50ZWwt
Z2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUNCj4g
U3lyamFsYQ0KPiBTZW50OiBXZWRuZXNkYXksIE1hcmNoIDIwLCAyMDI0IDk6MzQgUE0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDQvNl0g
ZHJtL2k5MTU6IEVsaW1pbmF0ZSBleHRyYSBmcmFtZSBmcm9tIHNrbC1nbGsgc3luYy0+YXN5bmMN
Cj4gZmxpcCBjaGFuZ2UNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBPbiBiZHctZ2xrIHRoZSBzeW5jLT5hc3luYyBmbGlw
IGNoYW5nZSB0YWtlcyBhbiBleHRyYSBmcmFtZSBkdWUgdG8gdGhlIGRvdWJsZQ0KPiBidWZmZXJp
bmcgYmVoYXZpb3VyIG9mIHRoZSBhc3luYyBmbGlwIHBsYW5lIGNvbnRyb2wgYml0Lg0KPiANCj4g
U2luY2Ugb24gc2tsKyB3ZSBhcmUgbm93IGV4cGxpY2l0bHkgY29udmVydGluZyB0aGUgZmlyc3Qg
YXN5bmMgZmxpcCB0byBhIHN5bmMgZmxpcA0KPiAoaW4gb3JkZXIgdG8gYWxsb3cgY2hhbmdpbmcg
dGhlIG1vZGlmaWVyIGFuZC9vcg0KPiBkZGIvd2F0ZXJtYXJrcykgd2UgYXJlIG5vdyB0YWtpbmcg
dHdvIGV4dHJhIGZyYW1lcyB1bnRpbCBhc3luYyBmbGlwcyBhcmUNCj4gYWN0dWFsbHkgYWN0aXZl
LiBXZSBjYW4gZHJvcCB0aGF0IGJhY2sgZG93biB0byBvbmUgZnJhbWUgYnkgc2V0dGluZyB0aGUg
YXN5bmMNCj4gZmxpcCBiaXQgYWxyZWFkeSBkdXJpbmcgdGhlIHN5bmMgZmxpcC4NCj4gDQo+IE5v
dGUgdGhhdCBvbiBiZHcgd2UgZG9uJ3QgY3VycmVudGx5IGRvIHRoZSBleHRyYSBzeW5jIGZsaXAg
KHNlZQ0KPiBpbnRlbF9wbGFuZV9kb19hc3luY19mbGlwKCkpIHNvIHRlY2huaWNhbGx5IHdlIHdv
dWxkbid0IGhhdmUgdG8gZGVhbCB3aXRoIHRoaXMgaW4NCj4gaTl4eF9wbGFuZV91cGRhdGVfYXJt
KCkuIEJ1dCBJIGFkZGVkIHRoZSByZWxldmFudCBzbmlwcGV0IG9mIGNvZGUgdGhlcmUgYXMNCj4g
d2VsbCwganVzdCBpbiBjYXNlIHdlIGV2ZXIgZGVjaWRlIHRvIGdvIGZvciB0aGUgZXh0cmEgc3lu
YyBmbGlwIG9uIHByZS1za2wgcGxhdGZvcm1zDQo+IGFzIHdlbGwgKHdlIG1pZ2h0LCBmb3IgZXhh
bXBsZSwgd2FudCB0byBjaGFuZ2UgdGhlIGZiIHN0cmlkZSkuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KDQpMb2dp
Y2FsbHkgY2hhbmdlcyBsb29rcyBnb29kLiBJIHNlZSBmYWlsdXJlcyBpbiBDSS5JR1QgDQpCZXR0
ZXIgdG8gaGF2ZSB0aGlzIGdyZWVuIG9yIGEgVGVzdGVkLWJ5IHdvdWxkIGJlIGdvb2QuDQoNClRo
YW5rcyBhbmQgUmVnYXJkcywNCkFydW4gUiBNdXJ0aHkNCi0tLS0tLS0tLS0tLS0tLS0tLS0NCj4g
LS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfcGxhbmUuYyAgICAgICAg
IHwgIDUgKysrKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWlj
X3BsYW5lLmMgfCAxNSArKysrKysrKysrKy0tLS0NCj4gIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9za2xfdW5pdmVyc2FsX3BsYW5lLmMgICAgfCAgNSArKysrKw0KPiAgMyBmaWxlcyBjaGFuZ2Vk
LCAyMSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaTl4eF9wbGFuZS5jDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pOXh4X3BsYW5lLmMNCj4gaW5kZXggMDI3OWM4YWFiZGQxLi43NmZj
NzYyNjA1MWIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaTl4
eF9wbGFuZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaTl4eF9wbGFu
ZS5jDQo+IEBAIC00NTUsNiArNDU1LDExIEBAIHN0YXRpYyB2b2lkIGk5eHhfcGxhbmVfdXBkYXRl
X2FybShzdHJ1Y3QgaW50ZWxfcGxhbmUNCj4gKnBsYW5lLA0KPiANCj4gIAlkc3BjbnRyID0gcGxh
bmVfc3RhdGUtPmN0bCB8IGk5eHhfcGxhbmVfY3RsX2NydGMoY3J0Y19zdGF0ZSk7DQo+IA0KPiAr
CS8qIHNlZSBpbnRlbF9wbGFuZV9hdG9taWNfY2FsY19jaGFuZ2VzKCkgKi8NCj4gKwlpZiAocGxh
bmUtPm5lZWRfYXN5bmNfZmxpcF9kaXNhYmxlX3dhICYmDQo+ICsJICAgIGNydGNfc3RhdGUtPmFz
eW5jX2ZsaXBfcGxhbmVzICYgQklUKHBsYW5lLT5pZCkpDQo+ICsJCWRzcGNudHIgfD0gRElTUF9B
U1lOQ19GTElQOw0KPiArDQo+ICAJbGluZWFyX29mZnNldCA9IGludGVsX2ZiX3h5X3RvX2xpbmVh
cih4LCB5LCBwbGFuZV9zdGF0ZSwgMCk7DQo+IA0KPiAgCWlmIChESVNQTEFZX1ZFUihkZXZfcHJp
dikgPj0gNCkNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYXRvbWljX3BsYW5lLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2F0b21pY19wbGFuZS5jDQo+IGluZGV4IDc2OTAxMGQwZWJjNC4uNzA5OGEzNGExN2M4IDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFu
ZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3Bs
YW5lLmMNCj4gQEAgLTQzNywxMCArNDM3LDYgQEAgc3RhdGljIGJvb2wgaW50ZWxfcGxhbmVfZG9f
YXN5bmNfZmxpcChzdHJ1Y3QNCj4gaW50ZWxfcGxhbmUgKnBsYW5lLA0KPiAgCSAqIG9ubHkgWC10
aWxlIGlzIHN1cHBvcnRlZCB3aXRoIGFzeW5jIGZsaXBzLCB0aG91Z2ggd2UgY291bGQNCj4gIAkg
KiBleHRlbmQgdGhpcyBzbyBvdGhlciBzY2Fub3V0IHBhcmFtZXRlcnMgKHN0cmlkZS9ldGMpIGNv
dWxkDQo+ICAJICogYmUgY2hhbmdlZCBhcyB3ZWxsLi4uDQo+IC0JICoNCj4gLQkgKiBGSVhNRTog
UGxhdGZvcm1zIHdpdGggbmVlZF9hc3luY19mbGlwX2Rpc2FibGVfd2E9PXRydWUgd2lsbA0KPiAt
CSAqIG5vdyBlbmQgdXAgZG9pbmcgdHdvIHN5bmMgZmxpcHMgaW5pdGlhbGx5LiBXb3VsZCBiZSBu
aWNlIHRvDQo+IC0JICogY29tYmluZSB0aG9zZSBpbnRvIGp1c3QgdGhlIG9uZSBzeW5jIGZsaXAu
Li4NCj4gIAkgKi8NCj4gIAlyZXR1cm4gRElTUExBWV9WRVIoaTkxNSkgPCA5IHx8IG9sZF9jcnRj
X3N0YXRlLT51YXBpLmFzeW5jX2ZsaXA7ICB9IEBADQo+IC02MDQsNiArNjAwLDE3IEBAIHN0YXRp
YyBpbnQgaW50ZWxfcGxhbmVfYXRvbWljX2NhbGNfY2hhbmdlcyhjb25zdCBzdHJ1Y3QNCj4gaW50
ZWxfY3J0Y19zdGF0ZSAqb2xkX2NyDQo+ICAJaWYgKGludGVsX3BsYW5lX2RvX2FzeW5jX2ZsaXAo
cGxhbmUsIG9sZF9jcnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSkpIHsNCj4gIAkJbmV3X2NydGNf
c3RhdGUtPmRvX2FzeW5jX2ZsaXAgPSB0cnVlOw0KPiAgCQluZXdfY3J0Y19zdGF0ZS0+YXN5bmNf
ZmxpcF9wbGFuZXMgfD0gQklUKHBsYW5lLT5pZCk7DQo+ICsJfSBlbHNlIGlmIChwbGFuZS0+bmVl
ZF9hc3luY19mbGlwX2Rpc2FibGVfd2EgJiYNCj4gKwkJICAgbmV3X2NydGNfc3RhdGUtPnVhcGku
YXN5bmNfZmxpcCkgew0KPiArCQkvKg0KPiArCQkgKiBPbiBwbGF0Zm9ybXMgd2l0aCBkb3VibGUg
YnVmZmVyZWQgYXN5bmMgZmxpcCBiaXQgd2UNCj4gKwkJICogc2V0IHRoZSBiaXQgYWxyZWFkeSBv
bmUgZnJhbWUgZWFybHkgZHVyaW5nIHRoZSBzeW5jDQo+ICsJCSAqIGZsaXAgKHNlZSB7aTl4eCxz
a2x9X3BsYW5lX3VwZGF0ZV9hcm0oKSkuIFRoZQ0KPiArCQkgKiBoYXJkd2FyZSB3aWxsIHRoZXJl
Zm9yZSBiZSByZWFkeSB0byBwZXJmb3JtIGEgcmVhbA0KPiArCQkgKiBhc3luYyBmbGlwIGR1cmlu
ZyB0aGUgbmV4dCBjb21taXQsIHdpdGhvdXQgaGF2aW5nDQo+ICsJCSAqIHRvIHdhaXQgeWV0IGFu
b3RoZXIgZnJhbWUgZm9yIHRoZSBiaXQgdG8gbGF0Y2guDQo+ICsJCSAqLw0KPiArCQluZXdfY3J0
Y19zdGF0ZS0+YXN5bmNfZmxpcF9wbGFuZXMgfD0gQklUKHBsYW5lLT5pZCk7DQo+ICAJfQ0KPiAN
Cj4gIAlyZXR1cm4gMDsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9za2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4gaW5kZXggODYwNTc0ZDA0Zjg4Li5hZDRjOTAzNDRm
NjggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZl
cnNhbF9wbGFuZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3Vu
aXZlcnNhbF9wbGFuZS5jDQo+IEBAIC0xMTc0LDYgKzExNzQsMTEgQEAgc2tsX3BsYW5lX3VwZGF0
ZV9hcm0oc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwNCj4gIAlwbGFuZV9jdGwgPSBwbGFuZV9z
dGF0ZS0+Y3RsIHwNCj4gIAkJc2tsX3BsYW5lX2N0bF9jcnRjKGNydGNfc3RhdGUpOw0KPiANCj4g
KwkvKiBzZWUgaW50ZWxfcGxhbmVfYXRvbWljX2NhbGNfY2hhbmdlcygpICovDQo+ICsJaWYgKHBs
YW5lLT5uZWVkX2FzeW5jX2ZsaXBfZGlzYWJsZV93YSAmJg0KPiArCSAgICBjcnRjX3N0YXRlLT5h
c3luY19mbGlwX3BsYW5lcyAmIEJJVChwbGFuZS0+aWQpKQ0KPiArCQlwbGFuZV9jdGwgfD0gUExB
TkVfQ1RMX0FTWU5DX0ZMSVA7DQo+ICsNCj4gIAlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49
IDEwKQ0KPiAgCQlwbGFuZV9jb2xvcl9jdGwgPSBwbGFuZV9zdGF0ZS0+Y29sb3JfY3RsIHwNCj4g
IAkJCWdsa19wbGFuZV9jb2xvcl9jdGxfY3J0YyhjcnRjX3N0YXRlKTsNCj4gLS0NCj4gMi40My4y
DQoNCg==
