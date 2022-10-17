Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD65600F77
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 14:47:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1229B10ED7F;
	Mon, 17 Oct 2022 12:47:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF95410ED7F
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 12:47:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666010863; x=1697546863;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=prWrBxxGCKOU8LL3y8Nem80tb5bzxKEhHZkgjb1e8S8=;
 b=JlvCZceBwXJa0iTD4x30n+eVbo5DlT3YEsNJ27qMCg4XZMmRVoNSXO8J
 dtJ9jb15T5M0+/yZpCuu+hntryEuONPuHCpw7rkD3Bbw38v2Z51p6U81b
 Dsn2tBmtdEuTYzwpvauz4Yc+z0ujg5pdn19yOkTlXdKy4cwiMHWC3AfrC
 Zf+RbEW3v7Uk72jhPyIZSOa1JOjMR1m1nvYeAhy3syO8oLjJ5jj4kJTrz
 uSl/pSGri+7tP9jf9a9Jcagr97ohzAvL7uPNzQ1iwU9ysJHiFWcUAQMys
 yaHRKUMQF19z0AxES/B79zgTFr1fywTVAmq8WiOXaW6fmcG/+mZJaqauS g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="286180566"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="286180566"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2022 05:47:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10502"; a="630672333"
X-IronPort-AV: E=Sophos;i="5.95,191,1661842800"; d="scan'208";a="630672333"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 17 Oct 2022 05:47:42 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 17 Oct 2022 05:47:41 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 17 Oct 2022 05:47:41 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 17 Oct 2022 05:47:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pnr5+kiM/zT+FmBaLHNHQSiutcytszKhddJe1kpZOuOu0yQT52oJsefG+7jULf/z82/kKxnwdvU/SIarvDqioB66+6ugUSwsRRzKBNLsZxeSduWMy1TnK3VQzy/WIZ3bw4nFE++we3VRgaIxLr/D/D41T6aUf1Dfd7SmFcnHO4T3EfDVZQumCgmsO+2GLTKh+kA6iQKVsoRIHRU8MI4cUXPAIU3X72hO3zyDl6OcRdKEUZw2riHyguV8hVixvDgdXX4OnZQIhEG+WDByczZ4cn9joZ4yb4sIfq/BYiMcKs1TnXtJbGExESvYmKcaQj1MUv1E0sDSo0HiLu8DqRSWqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=prWrBxxGCKOU8LL3y8Nem80tb5bzxKEhHZkgjb1e8S8=;
 b=jGxp9s5r0jJrNdhW8yChdV4hiq4LspXs4+4KdobNh6qOYqHQVP6F7ZJzwIDl8So3OZyJIrS167M0T9pqWaXrTXh4AAnjCixUXebBiJMKwYzcVlDzL75HsL+QH7QVWooJYJBKSKKi95BAjcG3XC24U98f15QWl4RzqC5K0bfWKUqhm40LxRJYBhE0t+v+B3yej2aAurgxHVBBrjzsYFAurDDC6bEQC6qdHWMjLn5ScthYPUMQg7vVO/85dymwEP0ZzhIdFHgN0q2wMJWjWexLRWljw9oUNhNcHm7vyOYQ+mocG0W7YOIPYzXR72J74LDkQDBASVjOMbGWMDFJnMCUiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB2054.namprd11.prod.outlook.com (2603:10b6:903:2d::9)
 by MW3PR11MB4713.namprd11.prod.outlook.com (2603:10b6:303:2f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.30; Mon, 17 Oct
 2022 12:47:40 +0000
Received: from CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::2da8:4021:a5a6:dc4a]) by CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::2da8:4021:a5a6:dc4a%11]) with mapi id 15.20.5723.033; Mon, 17 Oct
 2022 12:47:40 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] i915: Extend Wa_1607297627 to Alderlake-P
Thread-Index: AQHY3y+qnl++uy7dWEuEKH8aEScIPa4Mo00AgAHRQoCAA9heAIAAQfkA
Date: Mon, 17 Oct 2022 12:47:40 +0000
Message-ID: <4dd3d7c9ae70b302fbd0b8e304db349e07d54ae2.camel@intel.com>
References: <20221013181426.306746-1-jose.souza@intel.com>
 <e77afa6bebf276952ff6750b7e8ac99623a7da92.camel@intel.com>
 <20221014220819.l6r4ahndslsrlvmn@ldmartin-desk2.lan>
 <44b8d200-8013-fcc2-3163-43f39b1bb5ec@linux.intel.com>
In-Reply-To: <44b8d200-8013-fcc2-3163-43f39b1bb5ec@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR11MB2054:EE_|MW3PR11MB4713:EE_
x-ms-office365-filtering-correlation-id: 0b25819e-282d-469b-5dc1-08dab03dc6e1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rC7vke74YSvo7+9Y3v/7wBzESzozjWPoMiK+YawdUcsbP78nRcW43CGVHToNmTQ0tcpZ1o0pAQZECgDLfwUbaUzx4tQQlX1LeOWuHgq/11zNbwwrS8phVBxHWSleuzRPd8uF/QM8mNpQzC7xzL0ud1YosIVkGhsxdFtjSYOpTpn4vE/hzEc0TCzmZbEOhasuftOeNDve4HkCCea8yjtJkEJnBHwh3xNjWWif8ZpZWT2XLkT9Z+w2geePUz9WihTHP7xr2WtTFQILLnZxUdy1gmEYSCBW0j3eZSHe+lbY5wZTfLqYsFDldL8P5I8pmmkfJjjw2SnYUKaBdEEl/AdCMPWrye0TU+kQ5sjy56a/SQKGbZBPu/t1hmEshIHnjLZvk4cCDZsXNVrm+5yYQv6Kjg2qSfSQxN2R6lzz3JBqllcwJj85Kc9Z4y3y3o9zQi+nUeO7a1bzstL+0Vo+Sg7hw4S6HFfC2cOVOc/2eqNz6dyR2U/3csaXqBQBOhLqFrSDOFyECbMYwfmzqOEzyMlF7ndFgPUq6IayruhGnTppnhMwvGlH8x4n7WIHu2Cn0qz1NG9CwuhK3ndjAku0qE0h/hKF65A3vBNO/Rrdh1smnnEuVQnQt54iP4ZKrg/s7FsuhYkFeTEjhWeV+Wf/YiUwZYQqaIwH+TBW+OQPDTM1OG+/D71nG/BmdWP8sqtUXspaYwwW0j4RT7DVyr+yymTH5alV1w2jwGZMYnxl6jOO5miyfDFVU0T7PRldCwKBpi9/a6IIjabOSZ4PU/7Vr4CfkA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB2054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(376002)(136003)(346002)(39860400002)(451199015)(38070700005)(71200400001)(122000001)(38100700002)(478600001)(6486002)(186003)(110136005)(4001150100001)(4326008)(2616005)(36756003)(6506007)(6636002)(316002)(91956017)(64756008)(66556008)(76116006)(66946007)(66446008)(8676002)(5660300002)(82960400001)(66476007)(53546011)(2906002)(26005)(8936002)(6512007)(86362001)(83380400001)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RzRpYU52NFNGY1FLem1Ydkw0b3dVdUc1K0tCUWJYeVlLK2d0U3pwdjhBTWRU?=
 =?utf-8?B?Wk5GTTJkNmhMY3JKL0lZNlVhY2YybzBlNjIvWXN1Yk1WSVF0d242Q1J5MVFJ?=
 =?utf-8?B?TDd3SUFLNHB1Yi9jVUNZZjh3N2swbVRESGZRaUxrekFSUGwwNEc0ejIzY2Z5?=
 =?utf-8?B?aStNNUxsQ3Z0RGV2TlUyQXBQdEh1VkZUcHRtSW5oYXBpd3RsZ2ZUb3VzSW1r?=
 =?utf-8?B?WSszZkdVRHRYSnkzNDQ1LzlERTA4dXJvT244Mkg0dFB6UUt6ZTIzQ0pKeFJR?=
 =?utf-8?B?SVQ2eXNWaktRKy9QVVNoVW5XNWMwbGdRUXBxMHM5YndDMERReFBRWS9sbE9P?=
 =?utf-8?B?YU1tby9xMTd1NHJzZ25sODlOTGc5V0VwK0ZjRkFhVW9WaGlRZjRXTmY5Znpm?=
 =?utf-8?B?cTFrbFNOYnNaWmpjS3diVEw1Q2d5UDIrVEYrcFRDS0t3RE55MzBxUG5NUmFG?=
 =?utf-8?B?SG43dUdxdEhCdjMwZGozZnZDYnk2S0RXMUZSUzExS3dmNC9wZStMY1BQaFk0?=
 =?utf-8?B?OGtSTlZTdHYxdkxSSnYzT2xHMDNkQ2h4SlB2NFJPSStQb3hwejNjV3Z3OXZq?=
 =?utf-8?B?eE9NeGVqbGF2dTdQNmozR1ZLb3pGSnpIZG1kM0xzMk9oWnhlUkdpUVU2d2Fy?=
 =?utf-8?B?T3RoUm8zb1J3ZWhqK3d2QUhFdmN6djdvRDJFd1ZublFDS0xUaTY5T25OV1Q2?=
 =?utf-8?B?UWs3YklKWEFzWTVoVHl4bXo0dmFiZjFVMTNSeng0MXBCSm9iOGJzOUptU0V6?=
 =?utf-8?B?YWU0bWU2VFZxMXZ4UURmeUNXWDFHVklkQXdDZnpXaU9SM1ZHWVhIcE0zU1RJ?=
 =?utf-8?B?QTJybzZzZ0kwYU50dzdwVlZtMzhERWJGQXFkZWZxbjU0bUVEeWJlUVpCT2pr?=
 =?utf-8?B?bTJnaEs4SEMySjZOa3dNaDdiOWIzM0ZxWTZ1QzlIQ0o2bXFubGZwTU1NWHVm?=
 =?utf-8?B?blREV3JUVzhRelB1QXlGQVlLQnROTTYrZngxb1R5Rk1DM01nVi9CMTkvQnQ1?=
 =?utf-8?B?NTJ2NHJVRlppV1Z6cVlaWHRVUTdtTW0yalpGclZXenpSSFJMcWJsRVVkYTA1?=
 =?utf-8?B?bFFPcFhvMm92OVhwbEwzaXk0Smp4QmZkZkJXY3dCV3Y5dklUUVRwY2lCcXhB?=
 =?utf-8?B?WDVCMDdxdmluemdDeU1uOTdVdklDZjlVRTg1SXVjQ1p1M21PUHZvenl6MWl5?=
 =?utf-8?B?UTNJTnZpTFJxeUkxVnY5L05IdkRkUHBNNCtsRnlDWnhmclJYck5ReGtUU3ZQ?=
 =?utf-8?B?Q1kxT0QycngrR2xNbm1sZEhESm16MmFhMnNzOWpyQmxNQXJJYmRuOVhyS091?=
 =?utf-8?B?azRISDVGekRtTHN2SXZ2YndtMU5iY0J2M3htemVET21sRzRwTXh3QjBWK0tG?=
 =?utf-8?B?aHhnUTNJUVV5dzNMT29mcy9Nc1cxbjg5d3I1cmk1aGNRMnpZTGhJVHZjUCtF?=
 =?utf-8?B?N3JWSVVQUG1ON2tJUVJPZXVtNkxpV1ViQzdVMU9EM2kvMUhrTnJFc00yY2hU?=
 =?utf-8?B?N0Z3MXRDc2hNQzZJZVJLK2duelZ2WHcvREJYN2xNRGhFcHFXM3NSbzluaEoy?=
 =?utf-8?B?amQwdUFuZ2l4VnpjNHlPVjhSZkw3TVQ1OGxYZnA0T3ZWUFBEQlEyS2FSNDcw?=
 =?utf-8?B?SnhqNFZJTlExWXF2MVh0blNqM3JyeDB5cy96b3hnclU1YUJhci9vcFlSTU03?=
 =?utf-8?B?ZGdJU205VVhCTDNJWmUxU1JQcFVCQWwzTzZtZzdBLytIWDh3TDJSTWdwUHZp?=
 =?utf-8?B?dzlYWHc3MHd4R1IzcitiL1NLODFiN3doWDFqdzdzOUc5b1FTaXZZMWRYNkRZ?=
 =?utf-8?B?eWlSWWNMdXBSelNUM2wwc04veDV3dDF2bTg3YUF1cGxqeE5NYlB3L2k3V0Jj?=
 =?utf-8?B?cWY4dFg1OUUxeWFzMVl3QTNoMWxJdlV4S3JmVVB2ZmVrU21kenhxUjJ5WEI0?=
 =?utf-8?B?SWYyc1B4TTR1ajE4bDU3eUpsa2N6M0NWaGhRU1ZZanBLUXJ1b3VIUFBMTXBP?=
 =?utf-8?B?UzRRWVBjdmxWYW9lNWVOMHdvMmo1RWR4Mytsb2lDMGNiS3pRY3dFTTAzbys1?=
 =?utf-8?B?K2ZrYjJYaDcxVjJLazBxb1ltd3V6MU9wTlhNM1FnL2E1RHNoRUtQVkZoc0pG?=
 =?utf-8?B?M3hEaTJkSVRpOWRzaytPb1dJMjhyazNmbklHdGo1NXpUMDVyY3NhSWxMY2Ny?=
 =?utf-8?B?QUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <62BDD2B67D9517439DA934680726EC3C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB2054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b25819e-282d-469b-5dc1-08dab03dc6e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Oct 2022 12:47:40.2029 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9mwKWlp7Ae8S1YAwbOngqXz9bD62XKc80UAgpVjrcTCSKgSfP96oDRLNYKc0B8VZ/wFugcoiv+Vi7DIVMoiG/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4713
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] i915: Extend Wa_1607297627 to Alderlake-P
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIyLTEwLTE3IGF0IDA5OjUxICswMTAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToN
Cj4gT24gMTQvMTAvMjAyMiAyMzowOCwgTHVjYXMgRGUgTWFyY2hpIHdyb3RlOg0KPiA+IE9uIFRo
dSwgT2N0IDEzLCAyMDIyIGF0IDA2OjIzOjA3UE0gKzAwMDAsIEpvc2UgU291emEgd3JvdGU6DQo+
ID4gPiBtaXNzZWQgdGhlICJkcm0vIiBpbiB0aGUgc3ViamVjdCDwn5ibDQo+ID4gDQo+ID4gd2l0
aCB0aGF0LMKgIFJldmlld2VkLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGlu
dGVsLmNvbT4NCj4gDQo+IEFuZCB3aGVyZSBpcyB0aGUgY29tbWl0IHRleHQ/IDpwDQo+IA0KPiBJ
bXBhY3Qgd2FycmFudHMgZml4ZXMgYW5kL29yIGNjIHN0YWJsZSA1LjE3KyBmb3IgQURMLVAgZm9y
Y2UgcHJvYmUgDQo+IHJlbW92YWwgb3Igbm90Pw0KDQpXaWxsIGFkZCB0aGUgZml4ZXMgdG8gYWRs
LXAgZm9yY2UgcHJvYmUgcGF0Y2ggaW4gdGhlIHYyLg0KDQo+IA0KPiBSZWdhcmRzLA0KPiANCj4g
VHZydGtvDQo+IA0KPiA+IA0KPiA+IEx1Y2FzIERlIE1hcmNoaQ0KPiA+IA0KPiA+ID4gDQo+ID4g
PiBPbiBUaHUsIDIwMjItMTAtMTMgYXQgMTE6MTQgLTA3MDAsIEpvc8OpIFJvYmVydG8gZGUgU291
emEgd3JvdGU6DQo+ID4gPiA+IEJTcGVjOiA1NDM2OQ0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBK
b3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4NCj4gPiA+ID4gLS0t
DQo+ID4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8
IDQgKystLQ0KPiA+ID4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVs
ZXRpb25zKC0pDQo+ID4gPiA+IA0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyANCj4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jDQo+ID4gPiA+IGluZGV4IGI4ZWIyMGExNTVmMGQu
LmUxZDVkZjNhNTc1NmUgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3dvcmthcm91bmRzLmMNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYw0KPiA+ID4gPiBAQCAtMjMwMCwxMSArMjMwMCwxMSBA
QCByY3NfZW5naW5lX3dhX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyANCj4gPiA+ID4gKmVu
Z2luZSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQ0KPiA+ID4gPiDCoMKgwqDCoCB9DQo+ID4g
PiA+IA0KPiA+ID4gPiDCoMKgwqDCoCBpZiAoSVNfREcxX0dSQVBISUNTX1NURVAoaTkxNSwgU1RF
UF9BMCwgU1RFUF9CMCkgfHwNCj4gPiA+ID4gLcKgwqDCoMKgwqDCoMKgIElTX1JPQ0tFVExBS0Uo
aTkxNSkgfHwgSVNfVElHRVJMQUtFKGk5MTUpKSB7DQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoCBJ
U19ST0NLRVRMQUtFKGk5MTUpIHx8IElTX1RJR0VSTEFLRShpOTE1KSB8fCANCj4gPiA+ID4gSVNf
QUxERVJMQUtFX1AoaTkxNSkpIHsNCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoCAvKg0KPiA+ID4g
PiDCoMKgwqDCoMKgwqDCoMKgwqAgKiBXYV8xNjA3MDMwMzE3OnRnbA0KPiA+ID4gPiDCoMKgwqDC
oMKgwqDCoMKgwqAgKiBXYV8xNjA3MTg2NTAwOnRnbA0KPiA+ID4gPiAtwqDCoMKgwqDCoMKgwqDC
oCAqIFdhXzE2MDcyOTc2Mjc6dGdsLHJrbCxkZzFbYTBdDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDC
oMKgICogV2FfMTYwNzI5NzYyNzp0Z2wscmtsLGRnMVthMF0sYWRscA0KPiA+ID4gPiDCoMKgwqDC
oMKgwqDCoMKgwqAgKg0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqAgKiBPbiBUR0wgYW5kIFJL
TCB0aGVyZSBhcmUgbXVsdGlwbGUgZW50cmllcyBmb3IgdGhpcyBXQSBpbiB0aGUNCj4gPiA+ID4g
wqDCoMKgwqDCoMKgwqDCoMKgICogQlNwZWM7IHNvbWUgaW5kaWNhdGUgdGhpcyBpcyBhbiBBMC1v
bmx5IFdBLCBvdGhlcnMgaW5kaWNhdGUNCj4gPiA+IA0KDQo=
