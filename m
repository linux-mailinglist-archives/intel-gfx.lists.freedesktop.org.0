Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E54584630
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 21:24:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A017113039;
	Thu, 28 Jul 2022 19:24:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D99E7112FE7
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 19:24:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659036284; x=1690572284;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=1sRioaPW6XXyIDx86N4z+2hDOY2mY139WosPaqhz78g=;
 b=bBMLQdtjED2ixI1VaC7zBaUn3SNE4JAM7jHY32wGE70tBOJc1EsgIXpX
 NRvlgk0939JAiI+a7zLSYRANO5bebkobhzgATrubcRtfT2DI0XbzGJJea
 RITgFJ2y1Sy7UfJFrZbkV+443zpYC3TZk67NvBguNmJfNnYTf7jZHbqiv
 qHqX8OXuTVUID91zGbFT1p6EGEvo9cCBz+VmZPeTQ4zpSyEeeLA1Pg2MT
 mHq2xJSghbNoaee/6+wYiPVUR62n3W8y57DZFtPINlXqsPWQ13ng6vLQE
 a8pFH6khd8OXlKVPwYPeMVxv6TqmUQzEDEii27MdBRy0h88cQxKfL8L4n Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10422"; a="288612478"
X-IronPort-AV: E=Sophos;i="5.93,199,1654585200"; d="scan'208";a="288612478"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 12:24:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,199,1654585200"; d="scan'208";a="928440891"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 28 Jul 2022 12:24:44 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 28 Jul 2022 12:24:43 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 28 Jul 2022 12:24:43 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 28 Jul 2022 12:24:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ENVPPXg2H3QkMSrL47yxXypyT41hcQ8rf+78Di+sl8XIwHyz9TAR0ZEjHCuZDFkL8G2qUlyBun7MTYSqIO7/2d1ABjLfXwCaAZ4fmcTwtqESbxM5WUe3TED8Pr+gqUtsoxK+WigCe3kkaLvgn6anUknGG384eQ5HmtUmtTSAj48zdioBtK+MjDJBNmpqV4qTLFN9iXrBUTFD04K4OXX2d1CtpR2JIOr4LXnDDNGRNztZ1lQHouFpkIZVWCulfO59Yciq/0sCr/Rx+L9AachbAXFSYf/n6GG2R0glo62xba8iLxjoZ9Yjb37HQMXig4jfY9XrhMbUddmkjkffADUDRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1sRioaPW6XXyIDx86N4z+2hDOY2mY139WosPaqhz78g=;
 b=BARR1wq2lQubB671MR3qOP1pqUzX8Of+iEaxoG+My45jfuIbXCpdtKXp7TgaRGlpVRz0FPEJIJ/fMR44JNpNiGe4XqUCInbsmbVGpbj5CiRDB78lCm8KNj11EDJK7JcH4up4TBfq8gnekYLoI65lYUeR9ZFaJ/PpIh19V9WnHYBDt0vb3Jxb1N/LU9vjNw+gN3Dqhxn2EzHjtKwaRSjpXSvDFjt8VqkTOn8/mLW2Qm4JzweY9J/V+8B/iA1ePxO6GdmoJwKjfMeDeIgimc3IG15K9Ou85oSi4j4eITaimwGp0CF/nyROh82gGzO967f7ARG1ptjf55PErLUk80V67w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 by MWHPR11MB1967.namprd11.prod.outlook.com (2603:10b6:300:111::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Thu, 28 Jul
 2022 19:24:39 +0000
Received: from CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::f9bc:3db2:a299:972c]) by CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::f9bc:3db2:a299:972c%4]) with mapi id 15.20.5482.006; Thu, 28 Jul 2022
 19:24:39 +0000
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dg2: Add support for DC5 state
Thread-Index: AQHYop8KA6DGknD43Eqsm5WxltAZZK2UKhwA
Date: Thu, 28 Jul 2022 19:24:39 +0000
Message-ID: <0bce9b4d865818b77f95dc2c86781c3426a2b31c.camel@intel.com>
References: <20220728162623.28901-1-anusha.srivatsa@intel.com>
In-Reply-To: <20220728162623.28901-1-anusha.srivatsa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.3 (3.44.3-1.fc36) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 17e678d8-3322-4e1f-fa14-08da70ced0ba
x-ms-traffictypediagnostic: MWHPR11MB1967:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TFxg+UU2qycRkg6LTohcAh7SiCDh1HIoLtikM3035yIKCvwRCxytKFqJMawnJApzhpZrqPU5glL2zYMXzfLM6YuD55pviVd8JSxhGCYNcwt1gLsdKS5aPMZpt3akprTDnL+wFEwi3JqJL/LK/SjyvreKd/BAwP+5pJyeIlxF/QrAgqOQ93MXOom+hsSDBGx+KHMSHgLOhTF/KOQ391uNOIEswRzM8cS4uRfugfgY2SHogEjdw5OaKAUFVLLbxiWVbsVuveHuco+wYQZ08oRe3WXno7h9bN47LivoXmFocRDs3dJ49XfvMAmRS0o2pbQLj50bIgZ6hO1rA7JTmB1DZ8XvMnFYD7DFyTKtNOGQ6HJahC3LfqHwlufYxJbQZREj/KBLNukxtwcVGd1SWPuHLfpVfpKQ7qVQiNHV/0uTYbpyCtY3TfxbmOdy7+UOi7fq9Tt2P2LgKOrIL+FoUKKweqidgZb1wkOsY3hVV9coX4Ivnfpe0LcwnjBT6rlNhoImCmeqoCLPw6R80R3nBLZuEoDWp5LaAjAjmq4uAaGXZfb7y5MHmbH7kldBOtGC8btjMOHHqcaVyKG9kjsYFYPVQFyOcuFg3PhWplUT8M3DE+bdPr4cuC2Baz9vy2uhUtTyvzSwg0Ht00s+WzWyQF3/XoYGC8afUrjwKVwnA6kBij0Sv38dNhi0WpoKWnNWjeyZf8bWgb+BwjaqsDAYCqFyhHJVAdNtWnyxgsr0leSe42S27DrY+KfutlU35LhnqEFTrgXQxxoJBgYVgtLFK2sRZHcIeZr7JhutEwe6DLpTXEZtCvZrc5NvyzD+AP+8iU+H
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5169.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(366004)(396003)(39860400002)(376002)(346002)(26005)(36756003)(41300700001)(6512007)(6506007)(316002)(82960400001)(2906002)(186003)(38070700005)(38100700002)(2616005)(83380400001)(76116006)(4744005)(110136005)(6486002)(5660300002)(71200400001)(8676002)(86362001)(8936002)(66556008)(66476007)(64756008)(66446008)(478600001)(66946007)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ak1vcGIrQkNSejc2SkFhME5nUVVKbjg4ek03K3hPcjYwcE1LNGVpYkZKcUJa?=
 =?utf-8?B?NTlSZk8xZGluTUIxd1hIRGlvSi9kbTh2eG5NaUxBOE44S0FVaklGVVFYNzUx?=
 =?utf-8?B?NTY3UCtITVFaUGN5RzU0aStDaUcwRk11YUM1M2RvcUU0RjhLR1MvL0l2TkJC?=
 =?utf-8?B?R2s3YmN1aUVCRHZtQTlZWGUrVlhRbkFleFdyVUlnZDNMVXphYnZNY2N6aFlE?=
 =?utf-8?B?eG9nVmxJbW5kK2xvVGRlY2d4QjZlU0dXb3g1cW1ZRzFCRllub0liV0JUZloy?=
 =?utf-8?B?OTh3S2FOUnlWRS9jK1lsejQrVm1rcDZ2ZnJZTm9xWmVETmtnUmtYWWtPYzI1?=
 =?utf-8?B?dmQzSi9nb1F6RXpmdlhnQjlNRnh2QkhncTRkOW5OYWdUSm43TUFGV3dsUjM4?=
 =?utf-8?B?MnphQWJhOU5uRFE4T21wcmk0SmtUbWp4ZmduQjljMzAzNXFEeHJTV25jd2wz?=
 =?utf-8?B?d2FCeHViOUIzR1NlRE5XY0dDM3NQZERQRE5FQ08rOGVTcmtGQ3BYak1SLzJN?=
 =?utf-8?B?TjVqL25KZTdlWVRIRUxiTERjeVZkejhwR0U2WUk3TzV3ZnhCR0x0MEpudEF6?=
 =?utf-8?B?R2twQ3c0eUYrdTVGaDZrOGpOUXFhK3hwb3pJNUJlaXFBR0I1cTd5ZktVYmUv?=
 =?utf-8?B?QUhEVXVRd2NUTDRlZ1ZMK2NTNjRrTndZZlJMYzFidGtUTk1Ca1Q3VWFVT3NC?=
 =?utf-8?B?RjlIOXRlbkFCSWYyU1VPRFgrUFFEdk9HVGhjc3JuNnFWQ0FiZVBxM1dwY1BM?=
 =?utf-8?B?RS9xdGt2YVhhSEdzZHZ1dENCZGNGRmFhOFNlR3g2UXVYNGMyNWR3S0RYakJp?=
 =?utf-8?B?aXBxMjgyMkU4anE4UERuRVBxSTEzUUhRZEpqOGNtR3lBSjlvcUNtYlA4Y2ZC?=
 =?utf-8?B?cVFnblhLMVVjOUZGZEJrOU9ldmZHUWE1cGxXdW5tQVQwaytPWm1ZV0RSRmt3?=
 =?utf-8?B?Yk1FK083THoxeGFUa0JXMFpaYzNTalMvdkl2RU1hQ296VGdUOUZQRkpFM2th?=
 =?utf-8?B?ajMydmtmTzFndFp1R0V0cDZsVzg0V0dYbXl6L3RUTnhwYXFVS2Jkd2ZHWXJz?=
 =?utf-8?B?THNENis1cUFMUFExK3o4VExiVHZwWnVCcFEyYmk5VzI1VzdsSzBQMnRWeWJ1?=
 =?utf-8?B?OTFOUExFN3FIbjBmamUzWlM5Y1lFSHVQUXUxNDJhM3dPV0tNMEFDTElJTGJY?=
 =?utf-8?B?SXI1cTFYVm42WUpQUVhiZDlSMlFwVDZTSkFLWk55TThVazV6Q21tSkJjbFY2?=
 =?utf-8?B?eWJvaDNlRTlPd0g0U2F2eUdwVzFURFZ3aGFzaW9UVk1FZUFvMEVxNTF1TFcy?=
 =?utf-8?B?RExQbHRRajZGRGV5b3pMZHNLanZKbEEwVk5WRGJXbFllbkxBK3hmL2VJb3NW?=
 =?utf-8?B?UTlrenNWWjNZM0R5Um5NSWhGeU5UQ0t3amFzMkhJRUYrSm54SHFDT1JTb3ZI?=
 =?utf-8?B?cGtDTktsY0tpT1YvR3FWZ3hLVXpjTGdUUFppb2pyVnEycWdTM2s5KzBmK2sy?=
 =?utf-8?B?ZTV2bkpEb01sL2pwMlpudm5mY1c3N0lvM3krTTJaN29kVWxRRXJNSnJONmdK?=
 =?utf-8?B?YU5xeE5PMndRdXpISWdOcVNDWUx5bEVqeXdCWWtzdXBJQkhCM29ycEZ1cXMw?=
 =?utf-8?B?QTMwQ2xCSmhTY2RVbnE1Z1QyRUU1dlE5eC9MWlVaeWswVjdVT1pQdUFNUTlI?=
 =?utf-8?B?VG9ETGVPTVRhNURUanJlWUZVNUdXcGY0bjNVKzE1T3czZldZb3d6ZENTOHl2?=
 =?utf-8?B?N1BQV2ZJN2syRStNcWxESTRtWmR0b012UXQwa2FxK2RnNUJhcmdrODNhUktL?=
 =?utf-8?B?eGdTZHZKd1RKSHVpdEpqalRjQ2VuUEVTU3BrN0Vxbk5hVWJ1TmFJeWdGbTVs?=
 =?utf-8?B?UkFOTW82MUJZVmpOTStrTmNURkJmZFMrT2FXME5iN1dsanJ3MytHNmNzR2Uy?=
 =?utf-8?B?dWhiOUhTQ3VSV055YUVRVXBKdU0zT1c0Z0xlYkZNcDlvZW5BMjdndXRhbFpS?=
 =?utf-8?B?bXh4ZHhSOVR0UndDL2J6WjRiV2JoY3FSTmhSWGZ0aFg3KzlVbzFjWjNBYURT?=
 =?utf-8?B?ai9sNGp1VVNJSWZlUnFzWnNrdDhRdXUrbENyM1dLR0N5dDFEWW5RTEYyQUlk?=
 =?utf-8?B?bHdwN1lwaWxTVy9tcHV0Wmk2eG15YVdxY2NzQnYyMDRpVG1XQXJEdnFNdnFw?=
 =?utf-8?B?Yld1a2FIeXpMRUpuTW1pZXdsS1QzM04xclV3bER3TFdXWTB1VkM4TGp3aFZa?=
 =?utf-8?B?M1prcVVQM28xcldPTDRxSmVVWXBRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <36B13D6AB1E39944BF67D43CFD6AE82E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5169.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17e678d8-3322-4e1f-fa14-08da70ced0ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2022 19:24:39.3678 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Hnz3ydT3cE1O71dlzk9ZnBt+Ld2lIcPxGuPQewd4lIH+RaYCa1tt6vp1TINwC5tSlAZnq3eVOB6aYEp4SqS9kZyqXTn4d56MXm+pAkVOI21H2+7AOTxNqq2fN3nk/VwyfRofJar0KB14jP6RdHt2QQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1967
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Add support for DC5 state
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

T24gVGh1LCAyMDIyLTA3LTI4IGF0IDA5OjI2IC0wNzAwLCBBbnVzaGEgU3JpdmF0c2Egd3JvdGU6
DQo+IFdpdGggdGhlIGxhdGVzdCBETUMgaW4gcGxhY2UsIGVuYWJsaW5nIERDNSBvbiBERzIuDQo+
IA0KPiBDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5
OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+DQpSZXZpZXdlZC1i
eTogTWFkaHVtaXRoYSBUb2xha2FuYWhhbGxpIFByYWRlZXANCgkJCTxtYWRodW1pdGhhLnRvbGFr
YW5haGFsbGkucHJhZGVlcEBpbnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jIHwgMiArLQ0KPiDCoDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMNCj4gaW5kZXgg
MTNhYWEzMjQ3YTVhLi4zZjg0YWY2YmVmZjMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jDQo+IEBAIC05MDgsNyArOTA4
LDcgQEAgc3RhdGljIHUzMiBnZXRfYWxsb3dlZF9kY19tYXNrKGNvbnN0IHN0cnVjdA0KPiBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqByZXR1cm4gMDsNCj4gwqANCj4gwqDCoMKgwqDCoMKgwqDCoGlmIChJU19ERzIoZGV2X3ByaXYp
KQ0KPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgbWF4X2RjID0gMDsNCj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG1heF9kYyA9IDE7DQo+IMKgwqDCoMKgwqDCoMKgwqBl
bHNlIGlmIChJU19ERzEoZGV2X3ByaXYpKQ0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoG1heF9kYyA9IDM7DQo+IMKgwqDCoMKgwqDCoMKgwqBlbHNlIGlmIChESVNQTEFZX1ZFUihk
ZXZfcHJpdikgPj0gMTIpDQoNCg==
