Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7043285425C
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Feb 2024 06:30:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CD8F10E422;
	Wed, 14 Feb 2024 05:30:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F5vmQSid";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8CED10E3B2;
 Wed, 14 Feb 2024 05:30:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707888615; x=1739424615;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eq3pM5Z92hWCTM5EbTAdG2KEmGswYfc7uoKhZngnDTg=;
 b=F5vmQSidmaK1AsJQthJcUkdFPiGtjfrnmKuH7kxSfZGXejDjSvj/vpnX
 iYYw4bqG32lAlwMsavPILCirtL+k0L5XbSoxVoLrFaVTj7JFlaAIhC5Gg
 hqxuWLV02JIlgrdsViiY1pJLDgPT1mVICnzygI3rn6XF8PxAYw48sQrXH
 4Ou45r5XiC87P1OmAf/tj28JutUIA+rC4TuPfKeKyJ8pD0Q+UFiTS8sAS
 z9VJYwy+ZZOtoxSmNKqBrpmlZnLKGIrYhIGHgbAyFlsVMabVfn4dhiVCG
 9xS9/AkaxE8Xn8fD4JN2yvTJjBldYBIuT0iwlHhiPtvYIJmUJ1fmZqQzE w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="1797471"
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; 
   d="scan'208";a="1797471"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 21:30:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,159,1705392000"; d="scan'208";a="40565170"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Feb 2024 21:30:08 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 13 Feb 2024 21:30:07 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 13 Feb 2024 21:30:06 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 13 Feb 2024 21:30:06 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 13 Feb 2024 21:30:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UmQlcWc2LJINpVw9irxH44fadh5/ymBGPGi6s0+yrXokp5Jaq7VkscMwTpMyDBYi5L4x9qWJUlCSaepyUiuQ5bx6EGQwh8iNxWoExe3X587E/R0QwT6YPXazlkXBzey9Kj+J/A4AW+roJhY+908aOzrEz2fbo14WahKAj9Tb8q3pO9LgbiiAja2ku1svkhzlx1c7ic8n2kcsZU1G9y2mWls0Rf4Ys6cUp27D7ynVK25MiJ9ZM3YPor49z/xQgbJVrw+ukjthNhVcdxjX+r+r7ybl74Fey7eJ+hu9s9VA6WBFcpR4GJy5jkBk4bFqU31P6F4tTE2wcL2AA1EKVePrPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eq3pM5Z92hWCTM5EbTAdG2KEmGswYfc7uoKhZngnDTg=;
 b=BwZteX3A5c4pilXUmrCoWHiG7Jjqk7yxf45gbd1NXUbjIg1EZlekTQqygkGFEyyQfVk3yAt3pKGvBQWt9T3h68Up0cXN7vhpZo6d2TTMPYzrVdIyq3w+oSAxHoYpLITCm7n4BPTPG7ysl4D6lbolPx2hEvQLSFWaF7h+UrS9rA8CkEkPwiC6opHGk29ArtXScS57bFg/alq3AM/jPsm9lLKRS2yZ6LPz02dgqrHM8s8xFU/y0nKX89EA7p1+GZm2sps4OoOoqB7vnnRhKqb48WO9QIvXT/x3kwzRALlHUDuCkq0xrv13IVWsVKL1l/MFjX9CVbNl+4sZxxbIyz69Zw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 by CY8PR11MB7687.namprd11.prod.outlook.com (2603:10b6:930:74::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39; Wed, 14 Feb
 2024 05:30:04 +0000
Received: from MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::7ec4:bb5a:ce14:31fa]) by MW4PR11MB6761.namprd11.prod.outlook.com
 ([fe80::7ec4:bb5a:ce14:31fa%5]) with mapi id 15.20.7270.036; Wed, 14 Feb 2024
 05:30:04 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Jani Nikula (jani.nikula@linux.intel.com)" <jani.nikula@linux.intel.com>, 
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Subject: RE: [PATCH 2/5] drm/xe/hdcp: Use xe_device struct
Thread-Topic: [PATCH 2/5] drm/xe/hdcp: Use xe_device struct
Thread-Index: AQHaW0EItVdPMCk2BUK1ROxagQyNNLEI7usAgABn7CA=
Date: Wed, 14 Feb 2024 05:30:04 +0000
Message-ID: <MW4PR11MB67610BFFC64806967B0D1931E34E2@MW4PR11MB6761.namprd11.prod.outlook.com>
References: <20240209101412.1326176-1-suraj.kandpal@intel.com>
 <20240209101412.1326176-3-suraj.kandpal@intel.com>
 <e00cb734-2bab-4607-b1ac-a57d994184a0@intel.com>
In-Reply-To: <e00cb734-2bab-4607-b1ac-a57d994184a0@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_|CY8PR11MB7687:EE_
x-ms-office365-filtering-correlation-id: 461fdada-c80e-4e2d-41b6-08dc2d1dffb7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6pYDdE3qd0mZ6c4Jvak3+/hvQBJByTF2Dd6Q7m86O6TnZPfS9PaFbXT46R2fQ+thFkQyYThdZxn6R0M7J8cLUcopIOD1vLIqxg/kcJHQve3YIOtlye8iAbt4BdhKYUpi5ONTTeBsQSbeHMGYv+MCo2bNSrOSFhIMeAzf5UIfzajuis0hTWC0V4ioTNeu4f2YDaqITXa+b6EFdi4/rzHnj6816mPprmlDh+seE583jIJFDNAoABAxwiKErBYEa0Icx2g9VvnJzgqnReZS8Tf1Y8U7wD/+JXKxSz5QgXB7Nql3l9dYdlcI016LRDwBXhi8E/kjHXkaAOt85teqP3jCYYtulyhNacVBUNHX2lGURSn9C4J++sOC2At0ysr8AZQRF4Iensd6W3I2LU3LhFZzPORzOcx+HpqLnqiFzuPBeGcqyLHV4zH5LkZzFucnrTa7sa1h2l5O8saGpgdKfKnzOBFIcNeyj8QahetSyd4IBH4CEt9nyYMe29/+JTRHeVeUqL34RnGbdyrHdvlnaYkjARd2HUWS4OqQJbufqDQkMWIzY5wYTmXTL/LErx7U2QXnraCTbAmTRwqgK2EE/gns8S6F4tQX8NM7j88F0CALU7pxlqrxNBuM171c59L27TLf
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6761.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(366004)(39860400002)(376002)(346002)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(86362001)(82960400001)(122000001)(33656002)(316002)(53546011)(9686003)(7696005)(478600001)(38100700002)(71200400001)(110136005)(54906003)(41300700001)(83380400001)(6506007)(26005)(38070700009)(2906002)(8936002)(55016003)(4326008)(8676002)(66946007)(76116006)(66446008)(66476007)(64756008)(52536014)(66556008)(5660300002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aGNmWUora0VPakpidEhsUkJWWVFzYm90MTU4eXJnVk1ZVWZPMnVCY2lqbEVy?=
 =?utf-8?B?YXJmazNWRTJjMTdrcEhxMTF5TUR3a1Q5R0N3OVV0VzNZTkxObUt6VlREWWpR?=
 =?utf-8?B?TXI2bzZUQURzeVFVM080bWxRVXNzN1ZkWFR2MmRpcjJ6dlI4Q1BzR0tZa2Nl?=
 =?utf-8?B?OVByUVMvWkRGMXdBdFg2ZUw5R1JhRjRoejlIMWU1cWtEcGhtMUUraFFsdlBO?=
 =?utf-8?B?T1pMRmV0VXBHQmtMM0lMM1ZDaUJYK2VxTmVLM2tkYTR5ekVFWi9vckpJYzQ4?=
 =?utf-8?B?akhtelcwdU5kUmp0SmtNclBrODN4dSs2eHRqRHU0WjFyZnpneGFEcURiSW5R?=
 =?utf-8?B?SkhXZjUzaDFjUWFxYnJFQ2VIT1loK3pzaVpyMStnNkVPQ3pZVkRPVmlEKzg1?=
 =?utf-8?B?RGJvVnhVRllKSEFqUXJwUFJyUVhsRjhNOHptUGN4UFNuWnh2S3Y4dmJZY0ZN?=
 =?utf-8?B?aFR5bXQ0RVZYRWFRMCt2NFhhcEFoRmpFT2RRU1ZTRjNQanA5TFl2N2krQ0xU?=
 =?utf-8?B?aEl3RjZ1UGNJeFdMaDZ0UkIxM0JiODh5ZGh3dWdmZDM0cS82QmY2ZVpwZ3RB?=
 =?utf-8?B?ZWI4QnlSd2MvbHhCOWxxNFdZeFI0NFptYUxsWUUxWUxaTVczSEZRMk1pMnJ3?=
 =?utf-8?B?eWowVVFJODdnS3BxNFloY2xCcmlOY2MxTnFWcHRDYzdKMmVKdlpWK240K1ZK?=
 =?utf-8?B?MlBsVUxjOFlWYUpQNjJ0R3lJN2xpTHJLT3dTK2hYZUpxcUNiN1U0Q2tBbUtB?=
 =?utf-8?B?ajArMDRTYTdIMXRWY0VxZ0d0bTF0QWNMc2dKNWtySTZCOG92RWIxSXVOZHVQ?=
 =?utf-8?B?a0NjaDZNU2RGcjVIQUFGVkcxbjZISk1UNDRsaWU5d096UkxCQ1NORmdJaXpN?=
 =?utf-8?B?emZhZGRadHV1SisvMWJ2WVpUV3lsNlVSczdZdDV3RkZpZ1QrUVIvVzZrTHE2?=
 =?utf-8?B?d1JoZGo0aE9VdnlneGxYdkZmdkNSbmdZS3U3bVdXbkNiNkhaZzFPNWRKaDUv?=
 =?utf-8?B?elp6Z0hDdXhUVHBKWSt1eS9tYUREM21MZVdmK3hNZUF5dk8ya2V4ckVaSmNs?=
 =?utf-8?B?Y0ZNUVlTZHJ2SEJkSUFEOGtlTkJMU3VhN2ljd2RNeVEwT1FYNHBwNkd6dTZu?=
 =?utf-8?B?TVhzZ2poMzFLcUJzZnZJTVJBMlV4bUtZNy9KTHpWQStHemRNUU1QTWV4MGlB?=
 =?utf-8?B?SXJnNWV3MFovcHZjR3htVmYvRmZhb3lYZTZtRWNnREV0aGJzalpFTGNaUkdj?=
 =?utf-8?B?Y1RWbksrVHlvL0U2K1cwRU1jUXdzOFp5RFFtQ2xEN2ZVTnAxUkl4VytkZmNC?=
 =?utf-8?B?bzZvZVR1dnFCMHZ1SXpjQVpaZEV3Y3hEWW9KNjdRU0cxMFZMTk1vVGE2ZE5W?=
 =?utf-8?B?aTNyM1BrbzFMd2pZYkpVME9yNXlrVUlYZHdtMHpyenZ4bEZzUHZtcEVtR1ZV?=
 =?utf-8?B?ZjNhUnRZb3ZuNERJaG5BclFvdCtDZkloVTBTOGR3blUyRGQyaURHM2tLRlZI?=
 =?utf-8?B?bzhRL0I5TDhRS2I3K0FCMnFSK2toNnovSmIxQzJGd3dyWUQvbk1GTkVTcGFv?=
 =?utf-8?B?QU1tSFFudS9PK0M2RmE3TEJONzFhaGRTalJmY0h2dWZKZmZyakhBWXFNdFhz?=
 =?utf-8?B?cG1oZ21nNlA1TDBoeWJFMVpVTVhKSzFZbTR2MXRiYlVaeWUvbEJrQWF1UURm?=
 =?utf-8?B?bDdhTS9TbWFvYkxreEJ3Q1JSeExkVjg1UE1GVTdlOVVpWUM1WEE3ZXdjaEdj?=
 =?utf-8?B?MUEvaFgwSFVKNjVMaFY4eHVQbVdSTG9oRmJYdXlGdWdNdFVDOUxOVEtnUldX?=
 =?utf-8?B?d1c1c2Z2S2JuUU5SUjg4a2hKVFY2UkF1MFZwTmtnRDQvWmE0LzVWQTVpUU83?=
 =?utf-8?B?bm9QbzFLRFJxREtYa0NsSm9FVVA3SmFRU0FsUzk1QlNTeVJZS3FPR3ZQNDdG?=
 =?utf-8?B?L04wM21SbTF0MCtvNFRsZW5oUjBtNSsyWXVNcFFieFZmVFB2aTRXUXd2WFlU?=
 =?utf-8?B?L2VQSi92YTUydWJWS0QvcFJyUllHY2JjTzEzUjI0ZjFPTlExNHZOVWFPVUZC?=
 =?utf-8?B?bm5CQlkrcGw5MktQLytCWk5rSmJhRXJFYjl2MUY5c1BkdE9RSTZ0UGpRZGh0?=
 =?utf-8?Q?2XxiREJCBhaT72GyqRC6jN1FI?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6761.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 461fdada-c80e-4e2d-41b6-08dc2d1dffb7
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Feb 2024 05:30:04.6651 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QJ6/KULpbPprRh9c9SaG9MyqCPH6seT5UBrPLt3bczaGTj7tXrmy0nttEnvrg5pP0j5JoVFOX++psSWQ9BCw0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7687
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

PiANCj4gT24gMi85LzIwMjQgMjoxNCBBTSwgU3VyYWogS2FuZHBhbCB3cm90ZToNCj4gPiBVc2Ug
eGVfZGV2aWNlIHN0cnVjdCBpbnN0ZWFkIG9mIGRybV9pOTE1X3ByaXZhdGUgc28gYXMgdG8gbm90
IGNhdXNlDQo+ID4gY29uZnVzaW9uIGFuZCBjb21wbHkgd2l0aCBYZSBzdGFuZGFyZHMgZXZlbiB0
aG91Z2ggeGVfZGV2aWNlIGdldHMNCj4gPiB0cmFuc2xhdGVkIHRvIGRybV9pOTE1X3ByaXZhdGUu
DQo+IA0KPiBBRkFJVSB4ZV9kZXZpY2UgZG9lcyBub3QgZ2V0IHRyYW5zbGF0ZWQgdG8gZHJtX2k5
MTVfcHJpdmF0ZSwgaXQncyByZWFsbHkgYW4NCj4geGVfZGV2aWNlIHN0cnVjdCB1bmRlciB0aGUg
aG9vZC4NCj4gVGhlIGNoYW5nZSBpdHNlbGYgbG9va3Mgb2sgdG8gbWUsIGJ1dCBJJ2xsIGxlYXZl
IHRoZSBmaW5hbCByLWIgdG8gc29tZW9uZSBvbiB0aGUNCj4gZGlzcGxheSBzaWRlIHRvIGNvbmZp
cm0gdGhpcyBpcyB0aGUgY29ycmVjdCBhcHByb2FjaC4NCj4gDQoNClRoYW5rcyBEYW5pZWxlIGZv
ciBoYXZpbmcgYSBsb29rIG1heWJlIEphbmkgb3IgQW5raXQgY2FuIGhlbHAgd2l0aCB0aGUgZmlu
YWwgcmINCg0KUmVnYXJkcywNClN1cmFqIEthbmRwYWwNCg0KPiBEYW5pZWxlDQo+IA0KPiA+DQo+
ID4gU2lnbmVkLW9mZi1ieTogU3VyYWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+
DQo+ID4gLS0tDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV9oZGNwX2dzYy5j
IHwgMTUgKysrKysrKystLS0tLS0tDQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25z
KCspLCA3IGRlbGV0aW9ucygtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS94ZS9kaXNwbGF5L3hlX2hkY3BfZ3NjLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS94ZS9kaXNw
bGF5L3hlX2hkY3BfZ3NjLmMNCj4gPiBpbmRleCAwZjExYTM5MzMzZTIuLjVkMWQwMDU0YjU3OCAx
MDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0veGUvZGlzcGxheS94ZV9oZGNwX2dzYy5j
DQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfaGRjcF9nc2MuYw0KPiA+
IEBAIC0zLDMwICszLDMxIEBADQo+ID4gICAgKiBDb3B5cmlnaHQgMjAyMywgSW50ZWwgQ29ycG9y
YXRpb24uDQo+ID4gICAgKi8NCj4gPg0KPiA+IC0jaW5jbHVkZSAiaTkxNV9kcnYuaCINCj4gPiAr
I2luY2x1ZGUgPGRybS9kcm1fcHJpbnQuaD4NCj4gPiAgICNpbmNsdWRlICJpbnRlbF9oZGNwX2dz
Yy5oIg0KPiA+ICsjaW5jbHVkZSAieGVfZGV2aWNlX3R5cGVzLmgiDQo+ID4NCj4gPiAtYm9vbCBp
bnRlbF9oZGNwX2dzY19jc19yZXF1aXJlZChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkN
Cj4gPiArYm9vbCBpbnRlbF9oZGNwX2dzY19jc19yZXF1aXJlZChzdHJ1Y3QgeGVfZGV2aWNlICp4
ZSkNCj4gPiAgIHsNCj4gPiAgIAlyZXR1cm4gdHJ1ZTsNCj4gPiAgIH0NCj4gPg0KPiA+IC1ib29s
IGludGVsX2hkY3BfZ3NjX2NoZWNrX3N0YXR1cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSkNCj4gPiArYm9vbCBpbnRlbF9oZGNwX2dzY19jaGVja19zdGF0dXMoc3RydWN0IHhlX2Rldmlj
ZSAqeGUpDQo+ID4gICB7DQo+ID4gICAJcmV0dXJuIGZhbHNlOw0KPiA+ICAgfQ0KPiA+DQo+ID4g
LWludCBpbnRlbF9oZGNwX2dzY19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQ0K
PiA+ICtpbnQgaW50ZWxfaGRjcF9nc2NfaW5pdChzdHJ1Y3QgeGVfZGV2aWNlICp4ZSkNCj4gPiAg
IHsNCj4gPiAtCWRybV9pbmZvKCZpOTE1LT5kcm0sICJIRENQIHN1cHBvcnQgbm90IHlldCBpbXBs
ZW1lbnRlZFxuIik7DQo+ID4gKwlkcm1fZGJnX2ttcygmeGUtPmRybSwgIkhEQ1Agc3VwcG9ydCBu
b3QgeWV0IGltcGxlbWVudGVkXG4iKTsNCj4gPiAgIAlyZXR1cm4gLUVOT0RFVjsNCj4gPiAgIH0N
Cj4gPg0KPiA+IC12b2lkIGludGVsX2hkY3BfZ3NjX2Zpbmkoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpDQo+ID4gK3ZvaWQgaW50ZWxfaGRjcF9nc2NfZmluaShzdHJ1Y3QgeGVfZGV2aWNl
ICp4ZSkNCj4gPiAgIHsNCj4gPiAgIH0NCj4gPg0KPiA+IC1zc2l6ZV90IGludGVsX2hkY3BfZ3Nj
X21zZ19zZW5kKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1OA0KPiA+ICptc2dfaW4s
DQo+ID4gK3NzaXplX3QgaW50ZWxfaGRjcF9nc2NfbXNnX3NlbmQoc3RydWN0IHhlX2RldmljZSAq
eGUsIHU4ICptc2dfaW4sDQo+ID4gICAJCQkJc2l6ZV90IG1zZ19pbl9sZW4sIHU4ICptc2dfb3V0
LA0KPiA+ICAgCQkJCXNpemVfdCBtc2dfb3V0X2xlbikNCj4gPiAgIHsNCg0K
