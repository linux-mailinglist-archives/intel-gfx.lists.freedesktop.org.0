Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25FA264C311
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 05:13:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB03210E217;
	Wed, 14 Dec 2022 04:12:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5C9710E217
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 04:12:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670991174; x=1702527174;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=A+qdBVl9hnl1ROpEeO189Qt1vrs8DSh5rPKkBRs95II=;
 b=kao2TZ81QiOnoPo4JTUMxKT3dUR6A7V/08SEBag/46IuFB99o+kFH+F4
 IkdBfjZb1Wp/gxRG9QW8Ii2msXXV5SVDzJNXa3R+90clQPSjXRmkyRc3c
 2tDKo1KNHRfxm09Z9gY3QN+DPF74XqgZR0B5F9WxB4R9U4IS8PueNIe/L
 gg+V+PRPw1w+TfRW1t/aeyE9eauADoFUbPtsvMrqqqq/vW/0yNlg+thOn
 7efazszaaQosrCqI0EFAmlYIoUqeLKUD2yAYvQRldSKXB36wz8MztmUX/
 RFUjF3Dui2LleuC0FgTETajUVlh1NG9DcrHdIPhLsTdguYcblSxNb1R/s g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="380512900"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="380512900"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 20:12:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="755757678"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="755757678"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 13 Dec 2022 20:12:53 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 20:12:52 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 20:12:52 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 13 Dec 2022 20:12:52 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 13 Dec 2022 20:12:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YPdIlg+YP+lVxTcHMhlhNceBHfT4vkSCVM7kxiCyVaj9Y0fiWnw2xT/DjS1izny6okkrpl3fM0XIE7jTHP4iSezfDvlC2TjXsxRyugBvdE5gGAyWFOh0h6mffLO3p6bx70cLpDHksRGoBjTNQwhumecLSe8g19+ewwFoiS0v783AS3Zm4D5Frlo1cWrKVW3PJ73OM9paDIlySG7duruPCTyMwBTmY8zJ1V2WRG1cx5/iSUnWVDgRGwnL8/zQswNV4EF6Msy0CytOVxKO3Mjjjw4VGDhnRqC6Cc3y9rHddRjhCuXTyltMFuxdVQ0SMwZ0SuJ7nHuspGWPfUhK1Letag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A+qdBVl9hnl1ROpEeO189Qt1vrs8DSh5rPKkBRs95II=;
 b=nk/eAWAKs/kAF6LYeXCMsSr42ZoyNMEmxzHVMhFmizx5qYSEgGktxaGIwu+dYQnJHPUHbhd9utBx/aMNHI18ynfEf6ndHnWMsN8H8XrRfZqQUsDK5BVPmQ6udN2atnFSeirK5VEqiQ77wJCAwHqa75WdLGujhOkBz59zBHUZVPCdIqiyiFH7aTLSviR2ZyMEoDcKLEsg+HElHeGbV4jwV5l0A5oPuLj6srb5jgcQPz1lWnbiFR6SXS42x22ofvXPqz6z3cZZPbaXwBzQS4YQQ7+hLkK+rYC2/7kd379hzULJvB9N8cO3ChTSxaHlgVxoDhM9OOC8zFuv6Ma4WXn57Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3170.namprd11.prod.outlook.com (2603:10b6:208:64::10)
 by DM4PR11MB6120.namprd11.prod.outlook.com (2603:10b6:8:af::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Wed, 14 Dec
 2022 04:12:51 +0000
Received: from BL0PR11MB3170.namprd11.prod.outlook.com
 ([fe80::8189:b5f5:4397:3530]) by BL0PR11MB3170.namprd11.prod.outlook.com
 ([fe80::8189:b5f5:4397:3530%6]) with mapi id 15.20.5880.019; Wed, 14 Dec 2022
 04:12:51 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 0/7] drm/i915: extract vblank/scanline code
 to a separate file
Thread-Index: AQHZDjYykObIy68DkU6b73XzmDej365sxFAQ
Date: Wed, 14 Dec 2022 04:12:50 +0000
Message-ID: <BL0PR11MB3170BFC8724349A4AD8776CCBAE09@BL0PR11MB3170.namprd11.prod.outlook.com>
References: <cover.1670855299.git.jani.nikula@intel.com>
In-Reply-To: <cover.1670855299.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3170:EE_|DM4PR11MB6120:EE_
x-ms-office365-filtering-correlation-id: 75d7c9a3-83d1-440f-4151-08dadd897771
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sW9BaXQfjvD1P97Qp1JTOBzLod0SSJMyWEMEShMYvi9Fq5VN/pS+aO2A80jwcyvF84+aUJouEVjOB8J8H5Ac78N/jb8Ur4ta8k2C60jDHTgsOr07Ky7pENSc+6USxcCAoEGaWDdWl5UehpId8bmAv1mvs8wysSxoXn8Sciz/heFOOk7KTSVFmwH70GKIOSRSeubBD0x9BVphRbekSxuD5mOgTTQrlj3quoY07ngS68aqz0tssuc97To1E1GxeZd4BghWtNt/I1ksezwPLvR7U9KfZG/i7PqQuEN30KXc78KhyGu7GV9VUw4ITeEEcoSuwEFVnDz+fhTMeFZ/XjnCYof+fRKI8JHqj+/GAEPt2uu8IQ02ZCzphBJv3xCMhEWdZLc9p6MjvSFzXkDtHvUvdQkVeiij+dHLdvhjSYhodw6XTRV2cE2pzynJrabwjqvTs5djzOwGmkuys951lfYGHkMVoo3lxjlY9GzQTxGUlrjW8yKGrt7bqHuEB1fk9M+8jASVjuS/oHQQApYNEEC/WB9hwHRcKvsiGqUeEv0I3sOkZqzV0l803B8KfS2OsaQJ9ZN0+6UVe9d80AgCKwVw1kEKvdUJDK+oVWE+BDTcRyFvK76s3U9TehGk/4ytx79vlidnx7RG3caE+yJ/cG7+KN3AwmEz1BNHCFsqG9+oZjc8WdyXLxlX7jzq1cey+zK3
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3170.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(136003)(376002)(396003)(346002)(451199015)(478600001)(55016003)(86362001)(38070700005)(7696005)(26005)(71200400001)(55236004)(38100700002)(66446008)(66476007)(110136005)(53546011)(5660300002)(8676002)(76116006)(64756008)(4326008)(107886003)(66556008)(66946007)(6506007)(9686003)(8936002)(2906002)(41300700001)(316002)(82960400001)(52536014)(122000001)(186003)(33656002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aGpBc2hSeVNuUDQ5N2lPVXBZeXZOUXc2dTZZODNsRUh3cU12dUtqaTV5WVJ0?=
 =?utf-8?B?UmRLeDVxMys3M3J2eTF2eVYwY1pzM3F0K2V0aFFnNzVrdkFYS3lvU051czdm?=
 =?utf-8?B?Rjg4NVpwN25VVjNocC80eXVBTWI1cGJBRnhYUlVVL2o1OVNJMGZBeTdKbWJq?=
 =?utf-8?B?TGdiUGhHVlFUMjBMcW55WUlkNEErV25paU52RWpHWGNWVUZ4R2lKakREV0hQ?=
 =?utf-8?B?NUsxKzd5VUtMaVF3QXl3cjV6dG5xWm10K3RnRmppb2lGQkFGMzh4RzIwVEpC?=
 =?utf-8?B?dEs1MmZueVhaMHBRd2Y2RjBPcU1SMHlwOVNaT1o3ME1VU21qRERLVFp5T1dY?=
 =?utf-8?B?c0czNmRGVWw2L3ZLNmdKTVRNMWtXUTlQcnlWa2FyUitHRGppTE1qT1g3OHgw?=
 =?utf-8?B?aTF2RnJhUWV1NGUvOFk5SnprVVNLKzBuSnhpcHNZTXRpVElYUG1xUEQ4bHc5?=
 =?utf-8?B?Uk9jUUdraU9PNnZ5RlgrOE9ETGIvc3pBUWliZGdGclVXN1Z1UTJmRXozZGJu?=
 =?utf-8?B?V2tFS0xNelIvUkIxaW1zM0NEZWk1MkpPUWNtRzlFV0V1YnJUcXgrSk1YWFRt?=
 =?utf-8?B?RUZFYmcrTjF4d242a1BYVC9ZL2N2Yld1bEFNeFFWdDFzUnNGM3BwZTRPb2ha?=
 =?utf-8?B?NjlkMGY4VUx2QmNFQ2VzWWl4bjBod3dlcTZmdlBDb1Ayck8xMDFyWW8wc2FP?=
 =?utf-8?B?UVM4S2pkS0tiemptdVh3bzFrSHZ0TTl3eGErRjhDY1Mwc2pLeGhsejN1SEow?=
 =?utf-8?B?eGJwNm0rTnpYUnp2V1ozTjRJeGhmSmc2ZzRBREw4SXQ3a2kxMGk0S1BLejN3?=
 =?utf-8?B?eFlGdUxQS3JzYW95L2E3OFpGQXpKakFOSXpPT0V0elBOTUxZYzdsaTNUN28r?=
 =?utf-8?B?Y3lVUU9nZ0dvNDR6L2paZVVZYUFodWZkWkxOWUF2bm51bFQ4UVI0WkxQYldy?=
 =?utf-8?B?V2daZDRmN3JFSjhXM1pzZ0hnYmYzenlXajNXdmxVTGU5SlNvWlMydTJrUDhK?=
 =?utf-8?B?ZFdIbkZUUHRGWDZxdUZ3L1E2Y01UMlU1cjJNcEpITnR6S3pETUZWWkF6cXpv?=
 =?utf-8?B?M0tDc00wL0dKakJVMUdlUWllcmVPUG1GV2MrQzBoY3hZZ2JBeEN5SHJvU21C?=
 =?utf-8?B?dE04eURZZzd5VVhPVlluczlYVm9yUVUrNWM1dW1qZ2ZTb1Bma0g0WnlHR2tR?=
 =?utf-8?B?MzRESWkxdWtlZDdKTEVoZ2EyalI4SzFYMTdLaVRYNzhIektPR0lRWkFZS2xj?=
 =?utf-8?B?VDdmNGkxeHp2dnhmZmdoVzJWNHdLcEN6TTFFUm5NeDRtWnUzdUJ2cUFQa1Ru?=
 =?utf-8?B?RERkbGJqME9SdjdXNStFekdlbG1lNHkyMFovRjhzRW9OZys0Z3poOWRaanhh?=
 =?utf-8?B?eG5mbDgzcjhMaDZRSTNWWXAyREJOamVMcmtqTExUNG4wQmVzZVVwNDBma0hz?=
 =?utf-8?B?dzZpNjNDNlBvL1owV2pNMjR3cEs1dE5CeklLTFJkeGxONmJpNHZKQSttUjE2?=
 =?utf-8?B?ZW0zbHd2WlVkeVViclNpWFVkaTNncVdhU3o4cDV4SSsrWWJNNGNqeUdQdW90?=
 =?utf-8?B?Q0pEMEZ1UW1KTUZkRmhpTFd1eDk2bDZ1bzZuaUpIckNGc0I2RVpBaG5jakRs?=
 =?utf-8?B?ZVVpdnF1SUZTVk5XZGRDY2U3YTBzUTBDdjFremppUjV5aUhEQzlZK1JWN05t?=
 =?utf-8?B?RkFDV010azNtSlh4WVI4alVpVDZTSXdsbmlaekpxVFBha0xGVE1PR3ZkRCtQ?=
 =?utf-8?B?YVVYaDBaamlXWGpuZG9peHNxeXd5dUVDQWg2UU9TbnZ6YXQ3MVM5eUJNZTNR?=
 =?utf-8?B?eWdXcTV1eTNJMmFUWWw4ejVYK05kWEw4TWhkQmlDQVdmZGIxZGRLVlJYMzVZ?=
 =?utf-8?B?citWYzNmaTdMWjJIK3V2UkZWOUE5VDdudnNON2MwNFRCYms1akFlbDJSK3pM?=
 =?utf-8?B?c3cydzhIbHIvdWNUTnVmaStBTzRzZDFDTlhXOGlYWWl6YnNlelJIY1pxZUdW?=
 =?utf-8?B?aWhVYms5UCt4T2l0ckU1VDdMRXIvZUtyUjIvckVBSUJYQXkvbmQrVm5Qdm9h?=
 =?utf-8?B?Nmc4N3o5RXl6bjB0dkpPdG04dS8yajdSa2dRS3N3MGxRbWZBay9ZdzQ0TW44?=
 =?utf-8?Q?czv4p83nq7JZO7OjxdppywZx3?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3170.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75d7c9a3-83d1-440f-4151-08dadd897771
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2022 04:12:50.9890 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NQTFrJ1N+/3rNu1V1KXUke7NkYUIWxRsldGgJiBTL31+aTcdKfx2PGkR76yIN41CRUECJYOssXsN8mvWTQv9aQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6120
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 0/7] drm/i915: extract vblank/scanline code
 to a separate file
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEphbmkNCj4gTmlr
dWxhDQo+IFNlbnQ6IE1vbmRheSwgRGVjZW1iZXIgMTIsIDIwMjIgNzo1OSBQTQ0KPiBUbzogaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogTmlrdWxhLCBKYW5pIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSCAwLzddIGRybS9p
OTE1OiBleHRyYWN0IHZibGFuay9zY2FubGluZSBjb2RlIHRvIGENCj4gc2VwYXJhdGUgZmlsZQ0K
PiANCj4gQWRkIG5ldyBpbnRlbF92YmxhbmsuW2NoXSBhbmQgZHVtcCBhIGJ1bmNoIG9mIHRoZSB2
Ymxhbmsvc2NhbmxpbmUgY29kZQ0KPiB0aGVyZS4NCj4gDQo+IEphbmkgTmlrdWxhICg3KToNCj4g
ICBkcm0vaTkxNS9pcnE6IHNwbGl0IG91dCB2Ymxhbmsvc2NhbmxpbmUgY29kZSB0byBpbnRlbF92
YmxhbmsuW2NoXQ0KQ2FuIHRoZSBmdW5jdGlvbiBuYW1pbmcgY29udmVudGlvbiBzdWNoIGFzIGk5
MTVfZ2V0X3ZibGFua19jb3VudGVyIGJlIGNoYW5nZWQgdG8gaW50ZWxfZ2V0X3ZibGFua19jb3Vu
dGVyIGluIHRoZSBzYW1lIHNlcmllcz8NCg0KVGhhbmtzIGFuZCBSZWdhcmRzLA0KQXJ1biBSIE11
cnRoeQ0KLS0tLS0tLS0tLS0tLS0tLS0tLS0NCg0KPiAgIGRybS9pOTE1L2Rpc3BsYXk6IG1vdmUg
bW9yZSBzY2FubGluZSBmdW5jdGlvbnMgdG8gaW50ZWxfdmJsYW5rLltjaF0NCj4gICBkcm0vaTkx
NS9kaXNwbGF5OiB1c2UgY29tbW9uIGZ1bmN0aW9uIGZvciBjaGVja2luZyBzY2FubGluZSBpcyBt
b3ZpbmcNCj4gICBkcm0vaTkxNS9oZG1pOiBhYnN0cmFjdCBzY2FubGluZSByYW5nZSB3YWl0IGlu
dG8gaW50ZWxfdmJsYW5rLltjaF0NCj4gICBkcm0vaTkxNS92Ymxhbms6IHVzZSBpbnRlbF9kZV9y
ZWFkKCkNCj4gICBkcm0vaTkxNS92Ymxhbms6IGFkZCBhbmQgdXNlIGludGVsX2RlX3JlYWQ2NF8y
eDMyKCkgdG8gcmVhZCB2YmxhbmsNCj4gICAgIGNvdW50ZXINCj4gICBkcm0vaTkxNS9yZWc6IHNw
bGl0IG91dCB2Ymxhbmsvc2NhbmxpbmUgcmVncw0KPiANCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L01ha2VmaWxlICAgICAgICAgICAgICAgICB8ICAgMSArDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NydC5jICAgICAgfCAgIDEgKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMgICAgIHwgICAxICsNCj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGUuaCAgICAgICB8ICAgNyArDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAgNTQgKy0tDQo+ICAuLi4vZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3RyYWNlLmggICAgfCAgIDEgKw0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgICAgIHwgICA5ICstDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5jICAgfCA0NTYgKysrKysrKysrKysrKysr
KysrDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5oICAgfCAg
MjQgKw0KPiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZibGFua19yZWdzLmggIHwg
IDQyICsrDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvY21kX3BhcnNlci5jICAgICAgICAg
fCAgIDEgKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2Rpc3BsYXkuYyAgICAgICAgICAg
IHwgICAxICsNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9oYW5kbGVycy5jICAgICAgICAg
ICB8ICAgMSArDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jICAgICAgICAgICAg
ICAgfCA0MDggLS0tLS0tLS0tLS0tLS0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9p
cnEuaCAgICAgICAgICAgICAgIHwgICA2IC0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmggICAgICAgICAgICAgICB8ICAzNSAtLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfZ3Z0X21taW9fdGFibGUuYyAgIHwgICAxICsNCj4gIDE3IGZpbGVzIGNoYW5nZWQsIDU0MSBp
bnNlcnRpb25zKCspLCA1MDggZGVsZXRpb25zKC0pICBjcmVhdGUgbW9kZSAxMDA2NDQNCj4gZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuYw0KPiAgY3JlYXRlIG1vZGUg
MTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmgNCj4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZibGFu
a19yZWdzLmgNCj4gDQo+IC0tDQo+IDIuMzQuMQ0KDQo=
