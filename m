Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D0C7739C2
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Aug 2023 12:43:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DE9310E0F3;
	Tue,  8 Aug 2023 10:43:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45FDE10E0F3
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Aug 2023 10:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691491425; x=1723027425;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eNNq2qHS2ROGp6FHKuVVabwmQ7bw+0bemnD6OtFEsqY=;
 b=L88CxZaKdy9sEF+pBa9B77hO+hTsxagHThA7pklthsE2W6QdbQazLmzU
 nEiwzThnEY72PZF6G97XKwvx+huW1L0loY1+uuucnsVqL2u2pKgaOkLtN
 iRAp8DD1PG9QT15z4GK29//l1ycDAxTfB7JsIPlTG/CRuSLNMFDvou257
 Dm+RzxvYr5B1m4BWk49KOI7OFE4chHo4JMEb9VA2RyudVvCD2e3FlmcXU
 e/so+DRs8UveVAVbCCR4L9K6G3wk2wPnk5phrv7s76ZtAraj53EVHc1rG
 JDCMzHPvLoX/+xhTcaupXkofS2shx93wttvzYZsybGDjl2PZNVOwUS20E g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="368233738"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="368233738"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 03:43:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="821332528"
X-IronPort-AV: E=Sophos;i="6.01,263,1684825200"; d="scan'208";a="821332528"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 08 Aug 2023 03:43:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 8 Aug 2023 03:43:38 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 8 Aug 2023 03:43:38 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 8 Aug 2023 03:43:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dZloyqM4N0CtQU/6rWZPfhleLkkSZTapRDQ3bl2B2/PvHBrc1QaTsS3xnG0Z6KdXu28Q4RtRsbq0P/R/AJnD8PuJU4ge0MmGwmRmeQVknxifapxbXuDZXaYo0TRos2+k4UP6BIl0UfaJSizGmWNuHZ/4YTt+J0pTqtMvIMUfuEntZ4AQ6UuFTlgAy8aDCBxzPKU5nualjwVzC169JXDXZ7jnlgkYHn3CIpQip9U5cDnXmNvt3Nf58nNP4dJrUBCewjRs+hD8oKlHfyNIB4EmBmjZyfh8FrFhnGLLB8rDXEexi36sGEFN4QeMerup6sPQCudEl9lh8JfycS7VXhRfSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eNNq2qHS2ROGp6FHKuVVabwmQ7bw+0bemnD6OtFEsqY=;
 b=kipmsvzD/SQJdzDSRmL+PNpTlJtiO04AcyZ1jQroeDCEylkWWEvSjlyDTLIJ9y/yzQqmnAtMFuLeyhckZGVYAo6OWLgvSSBaRcTuMgGvNh1Cr7skixspF+xRLkb+Jlp7iYzOZ1UUyGmmfHNp4C5cHEoyRusTItvbboNxqBUrqdSpIZ8yy3pIGI8h+pnmz/0R3v6Urhe5zS+8sTIL7vspH05kEhwxyv65fMRfqtaZl7f9p4L561zU7OETlwn4Gi+y0R1UInHb7LKKZxvMHcutM/AsEiFHgLx6QRFUyA8DMKiy5JYQufqTxDrV0NdOfgrRK8D69ZjWwuWGLLqzcagDsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by PH8PR11MB6684.namprd11.prod.outlook.com (2603:10b6:510:1c7::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.26; Tue, 8 Aug
 2023 10:43:31 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::b1c3:d00a:b24a:65b]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::b1c3:d00a:b24a:65b%6]) with mapi id 15.20.6652.026; Tue, 8 Aug 2023
 10:43:31 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Taylor, Clinton A"
 <clinton.a.taylor@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/4] drm/i915/cx0: Add intel_cx0_get_owned_lane_mask()
Thread-Index: AQHZvz7Xxwok+lbLik6/TpWpwvFdWa/XlbCAgAESO4CAB6LM4A==
Date: Tue, 8 Aug 2023 10:43:31 +0000
Message-ID: <MW4PR11MB70544FAFCE9D52447C0330FDEF0DA@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20230725212716.3060259-1-gustavo.sousa@intel.com>
 <20230725212716.3060259-2-gustavo.sousa@intel.com>
 <879b5cef429c19e943913a59a61aae87d41d92df.camel@intel.com>
 <169107137750.5153.13287312407861918616@gjsousa-mobl2>
In-Reply-To: <169107137750.5153.13287312407861918616@gjsousa-mobl2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|PH8PR11MB6684:EE_
x-ms-office365-filtering-correlation-id: 9b4f22d1-8375-4506-4f7c-08db97fc4ecd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /Og704bJ6KGr2zBUT1DizQ6pZnmyRXhzr8IfW9xNNkFP1L+r5ZTFNMJpBZeQ9tVJtDvb5g7pacu0c1Pf4j80uDTu9lz9lJD3zJ4RV8EqTTAt9rBAEylfOx+r9Q9/CHo+WeVS0LFiPw5Xjh7cVvBK2Nui2XzkAGMY4HMSPNCl2L+rWPl7Kmq6DUhMjEwdMdZkMH+YEDaAnd9soaR3MFHvMmS3MzqOu3s/xZM+o6Dpx+LhK67U7sL/4GfgwRJKLXZpYK1z6i4lvyWn0bhEQ7ATXxQaoDk2DrzrPJ7pZEMEwFXuM4ZO1iZzHp+TZ2OkaLAyPqr6DgbPtpO4tPlBHF7SmgO63QwSSvj3okcLuA0IoeqBjgsWrPH08ovmaO0AcjZS3XIKsKFIt8+C5joFI5HDRkNLosLWh1MR3D3K1z7P5/RGyTld0svVLSWTB7x/q3jCL7TsrUuQmsQVR7TDaEYPLFUmR2p3mcrWQK2nvKCYDPN4fH1mQk73Rv+PHuauL+zqZdEfmj/H4pAaNQ5bTyACWH9YB/vfBfLWvnvDmViwffeLFBrcLpaTQz/vEHTxhBHlv8jSH4aob5qTZLGi1acqY4rsH+/dSaxUGXUmD9nfbgmqJgVSUYzAsCk4GCfAHXap
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(39860400002)(396003)(366004)(136003)(1800799003)(186006)(451199021)(52536014)(38070700005)(26005)(107886003)(83380400001)(2906002)(5660300002)(8676002)(8936002)(41300700001)(55016003)(122000001)(86362001)(316002)(33656002)(53546011)(6506007)(66476007)(7696005)(110136005)(38100700002)(76116006)(82960400001)(66446008)(71200400001)(64756008)(66556008)(478600001)(66946007)(4326008)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RXpKekVyeUNHQkRzT0VOVjJZYk1YbnRFTnVUZTVpeGdQQmpPNW1NaDFtQVRV?=
 =?utf-8?B?K25IejFUanRmOVd1ZjV6Q3JEakVBWHlwSlVOY29WMzRMK1hOZEVuU0hrMEFa?=
 =?utf-8?B?dCtkNENtLzIyUmFUeDhidm1ucng5VHMzUEttQXJ4akFpVFBLdzdTWFREaXBF?=
 =?utf-8?B?eG1TL3p5TzVGNi9UUS9tV0ZKY0RMNk1JSHVocUI2eUl6dnBoZW5EOTRyVDQx?=
 =?utf-8?B?Q0FnSDc1YzdTSmcrbldVNEFqUCtJS0xiTFo4YmNFOTJQeGxJV08vTlV6elhu?=
 =?utf-8?B?QTI0Mmo1WHh5ZUF3bjNITG1wU3BrQWVZTnhkM3dnQnRLYlZLM1FxU3YvdWhJ?=
 =?utf-8?B?SEpFOGZ1TlZDUy8vMWVCbjdPRjh1UGp0ZG5vN1dsRUJKczBCSXM4TTlNZklR?=
 =?utf-8?B?ZEQ3UGZ4UnBIRTdSdDdRRHF2czF5K0hjVEE0NS96TFZRUFkxVmxkeCtWczA1?=
 =?utf-8?B?UGdzd2w2c2xYN1JkcFp4RzdOanNEMVpuQUFyQzJpOVN3VmlPazBKdVBZTmUr?=
 =?utf-8?B?RnJTcXRvbkRRd1g5Ny9XUGJYLytXdVViaEtValV1bWk3V2xVc2xWcDZxYU9x?=
 =?utf-8?B?bjYrZkVVN1JiRE1Jd25vWE44TVYyUkZrdXpKOEFsQkhyRVF1cUJ2TUJSV216?=
 =?utf-8?B?M2hvM1dJV0J2T3c2TEhiVTBaMUlYU24zYUxjYmYraXM3clB3SnBveE1vYVJH?=
 =?utf-8?B?TFR4Wk9TRGFqQyszQU94dnFKQ1pJeHQzMFBaSURlMUFjSDZINDBzRCs5UnNh?=
 =?utf-8?B?L05GS3ArTTN6ZU54QitQQ3drT3lsU3JxaE1qejRsbTlWajExd0pyMHk1eHBn?=
 =?utf-8?B?TjFpOTYwb1FNTERtNG4wc0psUlFnRmF2aUIvZ1V5S29ERExnWGlFVDZWQy9I?=
 =?utf-8?B?UzhvN1E5YmZSRkdZeGhhSXc2NG0rNC9hZkk3cFpyQllidXhFTHE3bTB5OE02?=
 =?utf-8?B?ZzBsaHFMOU9DaGNwREY3TzdtZTNORnk2MHQreFRzNkd6U1dBdUc4NmhFS21I?=
 =?utf-8?B?eEpTcDdhUC9vTkdlbzNrQmV0L1VyYm5UOVRVUlVwZElyK2ZId3VzWmkwQlZl?=
 =?utf-8?B?dEZJaU15UXVIUEtPZUkrL0s5ampTTnQ2SXpYZlZRbkhhTFBvcTV1Zkhxc0sz?=
 =?utf-8?B?Zm5SRFNiUi9qZHRoKy9pMVlwYlJOTnlEdEh5TWVXV0ZTVEoyM1E2NVBMditK?=
 =?utf-8?B?OVhwNU11ZDFOUWd2TTBEbnhaZ2NqVFpmMW01ZU04c0tLdDJOOU0zV2FMLzVa?=
 =?utf-8?B?bzJCR0x5QjdUM3NXWDZFM29pa1pCLytNU3l2V3pubG5Uek91dFVQM2tGUERG?=
 =?utf-8?B?R3o3ZklCTFBad0VsblV2MVQrdzM0RnF6TFo4WmQ2RDFLeFEwdGNNL0xXUC94?=
 =?utf-8?B?cGtDT0U4UUpiU0VJZVRzdFIwbjJldlY2SWZxZ1psa0RFWktmbTA0eHg0TWdu?=
 =?utf-8?B?akpFeGNXZFo0ZGw1VWFwbWc3NUplZ3FSNjZxc3YvNTQ1K216NG1jYkRnVFhQ?=
 =?utf-8?B?aUczQXBaQkJPZ1FoRWcvVTRWbG5ZNEdYK2l4ZXFzVlhBWUtsSUM4YlRjckhI?=
 =?utf-8?B?WUFFaEQwOWJxUVR5dHdZTDJNcTFva2ZBSnlSWjFBeUFkVU1iT1MydXJaMjk3?=
 =?utf-8?B?YzRFb0dmTDJlRXdjK1A3cWxDQ1BwSUpVdWE0enRkRUNQV1NuQW5LQVhrWWJ1?=
 =?utf-8?B?L3pWOStRUWxWaGVEUi9iRFBneHFHcXpoLzBVTE9qMkhPKzRsVmdRTEdsZzRy?=
 =?utf-8?B?c2xRY1NGNlZKTTkwS0hoUG5QQVBzQThIM0xocm10ZEdkeTJzbzFlbG9haFhV?=
 =?utf-8?B?czFjUXdVbWRZV2hRRzljUDl5VE9naTZMMGRuNHBQdDZuVnJ1M3YzTXpRYjk2?=
 =?utf-8?B?RG5IaFVZUVNuMzJBZmZtSFVWVXV6SERlUEZvWWVoTkZQa2xGbkoyb2VMbjRl?=
 =?utf-8?B?TSsyTjIxYzd4TFBFTmhDa1ZNMWJpanRYd0RVSDRFL0lzalUwdFFtTk1pRjM3?=
 =?utf-8?B?VVc2dEovaU5Tc042cjdlLzFjRkcyTEhIejBqZDRCSUtmY3JQRFdZbUFUbHRO?=
 =?utf-8?B?eS8yNEE3QXNSV01hT3gzQVU2TDcyaWtjcTRWUkVjR3ZqL3M5SUlMSitveWYw?=
 =?utf-8?Q?XC4b5YseCT64XsXjRqRyC26Np?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b4f22d1-8375-4506-4f7c-08db97fc4ecd
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2023 10:43:31.2599 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LkbI1OP1OfaPCMEqTbhvYJSe8uOYB4UmgxTw0nyVGfJy3y926ctA6tWQP2d5tgjaj8/aJV8yibR3OhHEq8OubA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6684
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/cx0: Add
 intel_cx0_get_owned_lane_mask()
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBTb3VzYSwgR3VzdGF2byA8Z3Vz
dGF2by5zb3VzYUBpbnRlbC5jb20+DQo+IFNlbnQ6IFRodXJzZGF5LCBBdWd1c3QgMywgMjAyMyA1
OjAzIFBNDQo+IFRvOiBUYXlsb3IsIENsaW50b24gQSA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5j
b20+OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBTcmlwYWRhLCBSYWRo
YWtyaXNobmEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT47IEthaG9sYSwgTWlrYSA8
bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDEvNF0gZHJtL2k5
MTUvY3gwOiBBZGQgaW50ZWxfY3gwX2dldF9vd25lZF9sYW5lX21hc2soKQ0KPiANCj4gUXVvdGlu
ZyBUYXlsb3IsIENsaW50b24gQSAoMjAyMy0wOC0wMiAxODo0MToyNy0wMzowMCkNCj4gPk9uIFR1
ZSwgMjAyMy0wNy0yNSBhdCAxODoyNyAtMDMwMCwgR3VzdGF2byBTb3VzYSB3cm90ZToNCj4gPj4g
VGhlcmUgYXJlIG1vcmUgcGFydHMgb2YgQzEwL0MyMCBwcm9ncmFtbWluZyB0aGF0IG5lZWQgdG8g
dGFrZSBvd25lZA0KPiA+PiBsYW5lcyBpbnRvIGFjY291bnQuIERlZmluZSB0aGUgZnVuY3Rpb24N
Cj4gPj4gaW50ZWxfY3gwX2dldF9vd25lZF9sYW5lX21hc2soKSBhbmQgdXNlIGl0LiBUaGVyZSB3
aWxsIGJlIG5ldyB1c2Vycw0KPiA+PiBvZiB0aGF0IGZ1bmN0aW9uIGluIHVwY29taW5nIGNoYW5n
ZXMuDQo+ID4+DQo+ID4+IEJTcGVjOiA2NDUzOQ0KPiA+PiBTaWduZWQtb2ZmLWJ5OiBHdXN0YXZv
IFNvdXNhIDxndXN0YXZvLnNvdXNhQGludGVsLmNvbT4NCj4gPj4gLS0tDQo+ID4+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYyB8IDQ0DQo+ID4+ICsrKysrKysr
KysrKy0tLS0tLS0tDQo+ID4+ICAxIGZpbGUgY2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKSwgMTcg
ZGVsZXRpb25zKC0pDQo+ID4+DQo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4+IGluZGV4IDFiMDBlZjJjNjE4NS4uYjkwM2NlYjBi
NTZhIDEwMDY0NA0KPiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2N4MF9waHkuYw0KPiA+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2N4MF9waHkuYw0KPiA+PiBAQCAtNDYsNiArNDYsMjIgQEAgc3RhdGljIGludCBsYW5lX21hc2tf
dG9fbGFuZSh1OCBsYW5lX21hc2spDQo+ID4+ICAgICAgICAgIHJldHVybiBpbG9nMihsYW5lX21h
c2spOw0KPiA+PiAgfQ0KPiA+Pg0KPiA+PiArc3RhdGljIHU4IGludGVsX2N4MF9nZXRfb3duZWRf
bGFuZV9tYXNrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LA0KPiA+PiArICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBpbnRlbF9lbmNvZGVyDQo+ID4+
ICsqZW5jb2Rlcikgew0KPiA+PiArICAgICAgICBzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpk
aWdfcG9ydCA9DQo+ID4+ICtlbmNfdG9fZGlnX3BvcnQoZW5jb2Rlcik7DQo+ID4+ICsNCj4gPj4g
KyAgICAgICAgaWYgKCFpbnRlbF90Y19wb3J0X2luX2RwX2FsdF9tb2RlKGRpZ19wb3J0KSkNCj4g
Pj4gKyAgICAgICAgICAgICAgICByZXR1cm4gSU5URUxfQ1gwX0JPVEhfTEFORVM7DQo+ID4+ICsN
Cj4gPj4gKyAgICAgICAgLyoNCj4gPj4gKyAgICAgICAgICogSW4gRFAtYWx0IHdpdGggcGluIGFz
c2lnbm1lbnQgRCwgb25seSBQSFkgbGFuZSAwIGlzIG93bmVkDQo+ID4+ICsgICAgICAgICAqIGJ5
IGRpc3BsYXkgYW5kIGxhbmUgMSBpcyBvd25lZCBieSBVU0IuDQo+ID4+ICsgICAgICAgICAqLw0K
PiA+IGxhbmVfcmV2ZXNhbCBpcyBub3QgYmVpbmcgaGFuZGxlZCBoZXJlLiBEbyB3ZSBuZWVkIHRv
IHRha2UNCj4gPmxhbmVfcmV2ZXJzYWwgaW50byBhY2NvdW50IHdpdGggUGluIGFzc2lnbm1lbnQg
RCBpcyBiZWluZyB1c2VkPw0KPiANCj4gQWNjb3JkaW5nIHRvIHRoZSBCU3BlYywgd2Ugc2hvdWxk
IG9ubHkgY2FyZSBhYm91dCBsYW5lIHJldmVyc2FsIG9uIG5hdGl2ZSBjb25uZWN0aW9ucywgYW5k
IGJvdGggbGFuZXMgYXJlIGFsd2F5cyBvd25lZCBmb3INCj4gdGhvc2UgY2FzZXMuDQoNClRoYXQn
cyBjb3JyZWN0LiBUaGUgcGF0Y2ggbG9va3Mgb2sgdG8gbWUuDQoNClJldmlld2VkLWJ5OiBNaWth
IEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IA0KPiBJbiBUeXBlLUMgRFAtYWx0
IG1vZGUsIEZJQSBoYW5kbGVzIHN0dWZmIHNvIHRoYXQgZGlzcGxheSBoYXJkd2FyZSBhbmQgc29m
dHdhcmUgZG9lcyBub3QgbmVlZCB0byBoYW5kbGUgbGFuZSByZXZlcnNhbC4NCj4gDQo+IC0tDQo+
IEd1c3Rhdm8gU291c2ENCj4gDQo+ID4NCj4gPi1DbGludA0KPiA+DQo+ID4+ICsgICAgICAgIHJl
dHVybiBpbnRlbF90Y19wb3J0X2ZpYV9tYXhfbGFuZV9jb3VudChkaWdfcG9ydCkgPiAyDQo+ID4+
ICsgICAgICAgICAgICAgICAgPyBJTlRFTF9DWDBfQk9USF9MQU5FUyA6IElOVEVMX0NYMF9MQU5F
MDsgfQ0KPiA+PiArDQo+ID4+ICBzdGF0aWMgdm9pZA0KPiA+PiAgYXNzZXJ0X2RjX29mZihzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkgIHsgQEAgLTI1MzQsMTcgKzI1NTAsMTUNCj4gPj4g
QEAgc3RhdGljIHZvaWQgaW50ZWxfY3gwX3BoeV9sYW5lX3Jlc2V0KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlDQo+ID4+ICppOTE1LCAgew0KPiA+PiAgICAgICAgICBlbnVtIHBvcnQgcG9ydCA9IGVu
Y29kZXItPnBvcnQ7DQo+ID4+ICAgICAgICAgIGVudW0gcGh5IHBoeSA9IGludGVsX3BvcnRfdG9f
cGh5KGk5MTUsIHBvcnQpOw0KPiA+PiAtICAgICAgICBib29sIGJvdGhfbGFuZXMgPSAgaW50ZWxf
dGNfcG9ydF9maWFfbWF4X2xhbmVfY291bnQoZW5jX3RvX2RpZ19wb3J0KGVuY29kZXIpKSA+IDI7
DQo+ID4+IC0gICAgICAgIHU4IGxhbmVfbWFzayA9IGxhbmVfcmV2ZXJzYWwgPyBJTlRFTF9DWDBf
TEFORTEgOg0KPiA+PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIElOVEVMX0NY
MF9MQU5FMDsNCj4gPj4gLSAgICAgICAgdTMyIGxhbmVfcGlwZV9yZXNldCA9IGJvdGhfbGFuZXMg
Pw0KPiA+PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgWEVMUERQX0xBTkVfUElQRV9S
RVNFVCgwKSB8DQo+ID4+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICBYRUxQRFBfTEFO
RV9QSVBFX1JFU0VUKDEpIDoNCj4gPj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFhF
TFBEUF9MQU5FX1BJUEVfUkVTRVQoMCk7DQo+ID4+IC0gICAgICAgIHUzMiBsYW5lX3BoeV9jdXJy
ZW50X3N0YXR1cyA9IGJvdGhfbGFuZXMgPw0KPiA+PiAtICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBYRUxQRFBfTEFORV9QSFlfQ1VSUkVOVF9TVEFUVVMoMCkgfA0KPiA+PiAt
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBYRUxQRFBfTEFORV9QSFlfQ1VS
UkVOVF9TVEFUVVMoMSkgOg0KPiA+PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBYRUxQRFBfTEFORV9QSFlfQ1VSUkVOVF9TVEFUVVMoMCk7DQo+ID4+ICsgICAgICAgIHU4
IG93bmVkX2xhbmVfbWFzayA9IGludGVsX2N4MF9nZXRfb3duZWRfbGFuZV9tYXNrKGk5MTUsIGVu
Y29kZXIpOw0KPiA+PiArICAgICAgICB1OCBsYW5lX21hc2sgPSBsYW5lX3JldmVyc2FsID8gSU5U
RUxfQ1gwX0xBTkUxIDogSU5URUxfQ1gwX0xBTkUwOw0KPiA+PiArICAgICAgICB1MzIgbGFuZV9w
aXBlX3Jlc2V0ID0gb3duZWRfbGFuZV9tYXNrID09IElOVEVMX0NYMF9CT1RIX0xBTkVTDQo+ID4+
ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgID8gWEVMUERQX0xBTkVfUElQRV9SRVNF
VCgwKSB8IFhFTFBEUF9MQU5FX1BJUEVfUkVTRVQoMSkNCj4gPj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgOiBYRUxQRFBfTEFORV9QSVBFX1JFU0VUKDApOw0KPiA+PiArICAgICAg
ICB1MzIgbGFuZV9waHlfY3VycmVudF9zdGF0dXMgPSBvd25lZF9sYW5lX21hc2sgPT0gSU5URUxf
Q1gwX0JPVEhfTEFORVMNCj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICA/IChYRUxQRFBfTEFORV9QSFlfQ1VSUkVOVF9TVEFUVVMoMCkgfA0KPiA+PiArICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIFhFTFBEUF9MQU5FX1BIWV9DVVJS
RU5UX1NUQVRVUygxKSkNCj4gPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICA6DQo+ID4+ICsgWEVMUERQX0xBTkVfUEhZX0NVUlJFTlRfU1RBVFVTKDApOw0KPiA+Pg0K
PiA+PiAgICAgICAgICBpZiAoX19pbnRlbF9kZV93YWl0X2Zvcl9yZWdpc3RlcihpOTE1LCBYRUxQ
RFBfUE9SVF9CVUZfQ1RMMShwb3J0KSwNCj4gPj4NCj4gPj4gWEVMUERQX1BPUlRfQlVGX1NPQ19Q
SFlfUkVBRFksIEBAIC0yNTY0LDE1ICsyNTc4LDExIEBAIHN0YXRpYyB2b2lkDQo+ID4+IGludGVs
X2N4MF9waHlfbGFuZV9yZXNldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gPj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICBwaHlfbmFtZShwaHkpLA0KPiA+PiBYRUxQRFBfUE9S
VF9SRVNFVF9TVEFSVF9USU1FT1VUX1VTKTsNCj4gPj4NCj4gPj4gICAgICAgICAgaW50ZWxfZGVf
cm13KGk5MTUsIFhFTFBEUF9QT1JUX0NMT0NLX0NUTChwb3J0KSwNCj4gPj4gLSAgICAgICAgICAg
ICAgICAgICAgIGludGVsX2N4MF9nZXRfcGNsa19yZWZjbGtfcmVxdWVzdChib3RoX2xhbmVzID8N
Cj4gPj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBJTlRFTF9DWDBfQk9USF9MQU5FUyA6DQo+ID4+IC0gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgSU5URUxfQ1gwX0xBTkUwKSwNCj4gPj4g
Kw0KPiA+PiArIGludGVsX2N4MF9nZXRfcGNsa19yZWZjbGtfcmVxdWVzdChvd25lZF9sYW5lX21h
c2spLA0KPiA+PiAgICAgICAgICAgICAgICAgICAgICAgaW50ZWxfY3gwX2dldF9wY2xrX3JlZmNs
a19yZXF1ZXN0KGxhbmVfbWFzaykpOw0KPiA+Pg0KPiA+PiAgICAgICAgICBpZiAoX19pbnRlbF9k
ZV93YWl0X2Zvcl9yZWdpc3RlcihpOTE1LCBYRUxQRFBfUE9SVF9DTE9DS19DVEwocG9ydCksDQo+
ID4+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGludGVsX2N4MF9n
ZXRfcGNsa19yZWZjbGtfYWNrKGJvdGhfbGFuZXMgPw0KPiA+PiAtICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJTlRF
TF9DWDBfQk9USF9MQU5FDQo+ID4+IFMgOg0KPiA+PiAtICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJTlRFTF9DWDBf
TEFORTApLA0KPiA+PiArDQo+ID4+ICsgaW50ZWxfY3gwX2dldF9wY2xrX3JlZmNsa19hY2sob3du
ZWRfbGFuZV9tYXNrKSwNCj4gPj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgaW50ZWxfY3gwX2dldF9wY2xrX3JlZmNsa19hY2sobGFuZV9tYXNrKSwNCj4gPj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgWEVMUERQX1JFRkNMS19FTkFC
TEVfVElNRU9VVF9VUywgMCwgTlVMTCkpDQo+ID4+ICAgICAgICAgICAgICAgICAgZHJtX3dhcm4o
Jmk5MTUtPmRybSwgIlBIWSAlYyBmYWlsZWQgdG8gcmVxdWVzdA0KPiA+PiByZWZjbGsgYWZ0ZXIg
JWR1cy5cbiIsDQo=
