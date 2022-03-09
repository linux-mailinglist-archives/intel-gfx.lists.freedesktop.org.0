Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE6704D3073
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 14:51:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D3FD10EADC;
	Wed,  9 Mar 2022 13:51:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 404F410EADC
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 13:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646833890; x=1678369890;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=0kot0gAHRE4BN3uqM/OZXVVrsE8s186QMHDUzGd8CXc=;
 b=hnvYzyl3aUGVI47S9eMQEjJwBGdZfqlyTo3F0pJh6CJi2CKkwf4IqDsD
 9i1Hp0DzWXez2VnQAqjCe5ISYkrRpmDSpvpkDEG3t3Zobotff75rLUiXN
 LKhuGNoIo70u5k8cDy3kK3ETR1a3YkUd6J7fmVyYwcKcqkX+M6riZTnyu
 2pN/lJ4A1y2B/IPF8jcYM/WnlpKFCJotdSOt1f+obxFlt1d1H19r4sw3E
 yMR0Gm1ay17PEBz7/53g37pONxptAVvXasxbzVa+DOOJl8mdlaE5H4ilu
 zRluXJoVFIX5SozZGe7ipLv6ShPgNJ5qMYBHMNoL3OEqq/cmLiMCTFiLe g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="254708048"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="254708048"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 05:51:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="644040462"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 09 Mar 2022 05:51:28 -0800
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 9 Mar 2022 05:51:28 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 9 Mar 2022 05:51:28 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 9 Mar 2022 05:51:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WuTJ9nqAC/Iixxveib7yJVhKbdoWMSaWlAnKVSBbI5b3s1yDYP/sbj09wGOpeEN14dqHYLIx+0bE3VbW31htyT+8SLnIzT0YR7RzkiheiI8Acapm21wVgeBib7tfmPMDH1E3f0ZgNXlwyQKq5GgqDVnhtxahUb8epNUTqTMDKhNx27l0STrWl8PPlMzyaVrrr51KRxOyZtMS1GQwMxZoWgQ2nM6q8dJWfIi/rMHV/rxkdlhUzZbWnokDwmkKP0fRHPRt0KCiVbyzcfPgkQAll93edRKKpVpb2f6PKkm0OgQRXohAYLQjtm4YoQlnyoUJrjNJ5ki49qW0E6Jt1KQ1vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0kot0gAHRE4BN3uqM/OZXVVrsE8s186QMHDUzGd8CXc=;
 b=XWGfyFaKkjhNA3vJ7AEbEScTFGg/EiZf2cHSUYEbHnsNxdm61WX5iOCOD/HPtndQ2q6WWYi/xbXmbz/5m1je72KkRkPK6GE6OtpJKKShk5Nm+GAlVx6R3Gg5GLKfHi4BfnSWCcqiNIUSET88EAlNYM1Sj0DE+XHZldG1e/+CQoGWuEJdSsSvXMYZJs9MjlLcSIsY5DZCAcdS4HIGKwL+y48FgJB+aOLyGgBpt7TQi+a1YuyLHVuGXd5UTGXxsdkLopTyvzbiC6Yz/pJtOwbHsnY0HHeJ8WSBO9bOzDs+wXNGjLxFI2ElB0HKh9n53tE+5tKhtoCHc4fHwdbst+Tx9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM5PR11MB1946.namprd11.prod.outlook.com (2603:10b6:3:10c::11) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5038.20; Wed, 9 Mar 2022 13:51:25 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::436:cd8f:22d6:c66c]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::436:cd8f:22d6:c66c%3]) with mapi id 15.20.5038.027; Wed, 9 Mar 2022
 13:51:25 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH 2/2] drm/i915/display: Do not re-enable PSR after it was
 marked as not reliable
Thread-Index: AQHYMwLoSsBeH6Iwe0WQkV6lOBsgDqy3E4OA
Date: Wed, 9 Mar 2022 13:51:25 +0000
Message-ID: <501420c9c41f3ad7e136fa0e36b43c587257a2f8.camel@intel.com>
References: <20220308154136.406578-1-jose.souza@intel.com>
 <20220308154136.406578-2-jose.souza@intel.com>
In-Reply-To: <20220308154136.406578-2-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 745661c6-d8c0-4b5d-13cc-08da01d3e76e
x-ms-traffictypediagnostic: DM5PR11MB1946:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM5PR11MB1946BA7187E91ED4500DA09A8A0A9@DM5PR11MB1946.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FFEg4d84fI52eNOAXqLWeDumMcvkpNxvjNswi1MWHBS/atAnTnsO++ZshiLEePYIkyQ266bzuS4XBTtT30ZqgXd+KcSQgFHvr2YZew4RX42KQBYkK535TsPTfboz+jda+Zb3XHlILExJpm5OpzqqbY5HOpB8qm4S4YJQAfeMXlCMysPDf2p5a2AUa7dUT3GJWXEwURQnzrUI8TRQsM0/j4perzL/77WRBY2LcJt5U8qrjF0smxlAqL09HWrBDUf6RI/YVw5HzQqA1mIAA4d4rahyFq4Q71+PJKvFyOjZi4lgG4DMzPnQ+sU1Hn6CzX0p+Xkt2aqDIp2l5s7BW3pUaADVLxbDkAL5SQVGQLg66Db6lGWgO5ZZH9MTR2hzB3aN+H4zOOOGCTFjCDwYyA3p9pskDSzbES6iQbqcSgfbt1L2LdENZybwqcHwyaMRy1P19QAX+ayGy82dVZxXMzDZNhLuOfKwXKV9QjF2UKjK8MkUOxgpP/r01QM2C0meol1xewI8wRbTEIMODZHIwTiarIgHi+IMNXLCkjbJTXIDdLYsQSvAfI3G+91FnPaD8QSyZrSCbnhp+NgjLnt3f+pnlKZZeIcwc+wW8f1okMVP8LTzHsYWIb1IeOgN7vgxMwRqORXJ8wdxyO9at5XIcpUttPpxjD9a0q6kVzb8DQwy38YhQCre5HIQTzOtbLsJIs7oSHoXEvTdop8y6PCMFqYG+Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38100700002)(66946007)(8676002)(66556008)(66476007)(66446008)(64756008)(76116006)(122000001)(8936002)(6636002)(110136005)(66574015)(91956017)(316002)(36756003)(2906002)(2616005)(6512007)(186003)(86362001)(5660300002)(6506007)(6486002)(71200400001)(26005)(508600001)(38070700005)(83380400001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MkFCZ2VGbnZocTd0OVNIdU5NSmFaVzBsQkFoRS92SXJucVh3ZGV2TXJpcGpq?=
 =?utf-8?B?YTBSdkE3VlMzOUJCaXh4N2Q2LzZBTkx1d2t1YjBMczZzTjNBbmhJYVQ5dGF4?=
 =?utf-8?B?OVh6ejFGSHlRSlRtMlkyd1RveStzTmg5NnZnV0ZwUmlHbFIwSjFxK3FTRGlx?=
 =?utf-8?B?Qm1MS2syV1gxK2hub3BCYzJaNWZtRzBJL2R3MlJDZmwxeG5pLzVBayttZEVr?=
 =?utf-8?B?RGt5WUhrd29mL2xGQVpTZUF3eHhqcUVqbXl2TTdMdzFjbzFLdGgwdWxaR0Rs?=
 =?utf-8?B?cFdDU095RktBYlRVQUw4ZHloSnExdHFJN3U5R3l5Q0g5RGphQWRHSlBaVnlp?=
 =?utf-8?B?RXNVMlE5VDEyVmZFd3dHVXJlY2VDY3NJdmFFNGJ5REYyNC9hbFJiZUp1Tmd4?=
 =?utf-8?B?R1kvYmRkN0ZpUGV2M2RRVlFSRkk5SnVTU3dWZkJiazd5YjNGaDFqejlRUURj?=
 =?utf-8?B?bHVVUGRTOHYyc0Fpdy9qSFVNL0dCczRiSGhOVjRia0MyYnN4Q3hYNlp4U2hr?=
 =?utf-8?B?SUIzZmJMR3dRWG9keXJFMDN4L1doVjlYZkVVUlFqTEx1cTgvK3ZHbGtFM3dw?=
 =?utf-8?B?QUNaanRPajVmckdZbjFtNEpYYXZvWHoySmVDZDIycVR4TFp3LzlndURNaEht?=
 =?utf-8?B?L0FKNDQwQUV1VEMrVkphWll6bWdzaWdJdUZ4TDczRDI0MEtGcFIzS3pUc000?=
 =?utf-8?B?QWdJM3ZmL0kvR2NIQXRUTmp2Q1lxL2VDTDZBTU9TcHVZdzhKNU1xNFJ4K1hu?=
 =?utf-8?B?L3hzQ2JMUnoxd25QRVBUV3NGM3F2dE0wMzNBeG1LR2c3VTh3WmplM3NHZ05N?=
 =?utf-8?B?ZU1leUxoeWVLVnZMRU9uOFhURUNVS1hPRUIvMHdpeWxiRzVYYmxVRGErK0gz?=
 =?utf-8?B?RVQxYkVabHFJc3pyRXBEZ3MrYjZ6ZWJNT3lXVkl3Q1pIa0tydVJXR1Zzc2dI?=
 =?utf-8?B?TnFPQXZwQ2NaaWRUZkRlRVZZTnE2OGpLWjgvUjR6QTV3Z1dua1RrNFA0dkxw?=
 =?utf-8?B?YmpQNXNNSS9vNlpzc2NDTkUwZnllUzZlQU81RVNheEkxYnh1SW5mdUxhYWxW?=
 =?utf-8?B?UXJLaTkwSjJSWjQzdEw0dm8ydWxQaVV1TVVoVHZUWmJLWGF2K3pacytyclRn?=
 =?utf-8?B?ZzBKN0docVZ2TDhoeEl0aUZKeDUvbVNDL3JEeVMvZmY1Y2w1eWFRekk5OTJ4?=
 =?utf-8?B?L3dvL1BmZFV4UlU5elBlYS9IZEQrRG5zTWxOSjhlZ09aSjM2M0wvQlM0YTYx?=
 =?utf-8?B?YTN5NFdkWFcvbVJ1OUNuZE5EcWhWcVZqUmpvWlBCTWMra0pnMVdCZXN1R1J3?=
 =?utf-8?B?OVF1b241Q3lMYXBlTkxwS01USjBHSHFIeU8rT0h1ZENZTllpbWtoTU1jK0Fs?=
 =?utf-8?B?R1o4TUQzQ1ZuY3pJVEMyTndDeFBlbmpZRlllYWorbGNjWWZaVGJ1Qm1PWTFw?=
 =?utf-8?B?Zit0TlR4Vk5WWFlqWHJFWHNFRHVRenkxMDhmOHMxa2VDYVB3NE05RkZOaXBs?=
 =?utf-8?B?NjFJWk5Sd05UYkZDaTg0VWVaSnVnUGhIMmJ0ZWRIWTZJVnEwaWNESTRXS0Zw?=
 =?utf-8?B?UzE1Y1Fyd01WQm9TZTZSTzJSQjhHZXF3QkRhYnd1NUlwSEVwQnVjZk5YcHpD?=
 =?utf-8?B?Z3ZFV2ZBTjdIZGZJNUZUdFpVV0VHTDJaZlZLS3orRGs0NmtzNFJGQkJjZCs2?=
 =?utf-8?B?OGtnT2g4bVhpUEZteGk5akVESUtlYjB1L05CVDlmOTVEK0FmakVHMlJYckZt?=
 =?utf-8?B?ejA5TmJ3TGljMVRDMTJySGV4YVFqSW0wQ3VwTWxFT2NLUGlBb1ZvU0lnQ0JV?=
 =?utf-8?B?c2diRHFhZjlDSDcyRklIYTdwNXFvZGJna3J1dlNEVHZtbGlYMDhRYlhteXY0?=
 =?utf-8?B?OXdqUEVUdE45RHhJRElNNWhyN2IvQ0tsd0lreGZXdHdDL3JEY2kvQmFYSm9p?=
 =?utf-8?B?MlpjQTEvY1B6QXRrN0s1OStyeFN0MzJpRW80Tnh1U0JzRG9TcFE0SVFBYXJy?=
 =?utf-8?B?NmlXc3RjN2JzTVdyN2lSZkh6WXh6UDA4anpvOTdtMm4rV1NGdnBWLytyY3Iy?=
 =?utf-8?B?eXVqTGs2MHR0MjdDakkzSnJhQjV6T0c3bWpIbWdGZ0xpRDVTVFJLYjd4QktD?=
 =?utf-8?B?N0JnckZqQzRoRHlsSlp5VmtkSzB0aFp5R29MZnZXQ1JzTW9PeUtZdTE4M0Js?=
 =?utf-8?B?TkwxOVhOZ2tuNjEzcVo3SFVOQ3RaVjBXRFpLaThNNUpteVFMN3Q2YllySUtr?=
 =?utf-8?Q?okJ4yifbt8wj9VW7WbV0dVtCLCrs2ZQaLL1Hss4tG8=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4E02B6F4B83D3748BECB6ECD30A3CF44@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 745661c6-d8c0-4b5d-13cc-08da01d3e76e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2022 13:51:25.8355 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aaqRNU/+jBtTMCN0JUj0Qe6B8d3NA0A+sk6Rqpge5wi4Mfh0X2bxpRiKtj1NY5ec5N+JdOxedbyvwrFY+mQFXLJkJrSqytVfbyoUQS0RFVM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1946
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display: Do not re-enable PSR
 after it was marked as not reliable
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

SGVsbG8gSm9zZSwNCg0KU2VlIG15IHF1ZXN0aW9uL2NvbW1lbnQgYmVsb3cuDQoNCk9uIFR1ZSwg
MjAyMi0wMy0wOCBhdCAwNzo0MSAtMDgwMCwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToN
Cj4gSWYgYSBlcnJvciBoYXBwZW5zIGFuZCBzaW5rX25vdF9yZWxpYWJsZSBpcyBzZXQsIFBTUiBz
aG91bGQgYmUNCj4gZGlzYWJsZWQNCj4gZm9yIGdvb2QgYnV0IHRoYXQgaXMgbm90IGhhcHBlbmlu
Zy4NCj4gSXQgd291bGQgYmUgZGlzYWJsZWQgYnkgdGhlIGZ1bmN0aW9uIGhhbmRsaW5nIHRoZSBQ
U1IgZXJyb3IgYnV0IHRoZW4NCj4gb24gdGhlIG5leHQgZmFzdHNldCBpdCB3b3VsZCBiZSBlbmFi
bGVkIGFnYWluIGluDQo+IF9pbnRlbF9wc3JfcG9zdF9wbGFuZV91cGRhdGUoKS4NCj4gSXQgd291
bGQgb25seSBiZSBkaXNhYmxlZCBmb3IgZ29vZCBpbiB0aGUgbmV4dCBtb2Rlc2V0IHdoZXJlIGhh
c19wc3INCj4gd2lsbCBiZSBzZXQgZmFsc2UuDQoNCkhvdyBhYm91dCBpbnZhbGlkYXRlL2ZsdXNo
PyBJZiB5b3UgZ2V0IGVycm9yIGJldHdlZW4NCmludGVsX3Bzcl9pbnZhbGlkYXRlIGFuZCBpbnRl
bF9wc3JfZmx1c2ggcHNyIGlzIGFjdGl2YXRlZA0KZXZlbiBzaW5rX25vdF9yZWxpYWJsZSBpcyB0
cnVlPw0KDQo+IA0KPiBGaXhlczogOWNlNTg4NGU1MTM5ICgiZHJtL2k5MTUvZGlzcGxheTogT25s
eSBrZWVwIFBTUiBlbmFibGVkIGlmDQo+IHRoZXJlIGlzIGFjdGl2ZSBwbGFuZXMiKQ0KPiBSZXBv
cnRlZC1ieTogS2hhbGVkIEFsbWFoYWxsYXd5IDxraGFsZWQuYWxtYWhhbGxhd3lAaW50ZWwuY29t
Pg0KPiBSZXBvcnRlZC1ieTogQ2hhcmx0b24gTGluIDxjaGFybHRvbi5saW5AaW50ZWwuY29tPg0K
PiBDYzogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNpZ25l
ZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAzICsr
Kw0KPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IGJiZDU4MWVkMDgxNTkuLmNk
MDVlNWZkYzhjYTkgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiBAQCAtMTg1Myw2ICsxODUzLDkgQEAgc3RhdGljIHZvaWQgX2ludGVsX3Bzcl9wb3N0
X3BsYW5lX3VwZGF0ZShjb25zdA0KPiBzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwN
Cj4gIA0KPiAgCQltdXRleF9sb2NrKCZwc3ItPmxvY2spOw0KPiAgDQo+ICsJCWlmIChwc3ItPnNp
bmtfbm90X3JlbGlhYmxlKQ0KPiArCQkJY29udGludWU7DQo+ICsNCj4gIAkJZHJtX1dBUk5fT04o
JmRldl9wcml2LT5kcm0sIHBzci0+ZW5hYmxlZCAmJg0KPiAhY3J0Y19zdGF0ZS0+YWN0aXZlX3Bs
YW5lcyk7DQo+ICANCj4gIAkJLyogT25seSBlbmFibGUgaWYgdGhlcmUgaXMgYWN0aXZlIHBsYW5l
cyAqLw0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQo=
