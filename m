Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BA2A6FE48D
	for <lists+intel-gfx@lfdr.de>; Wed, 10 May 2023 21:40:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A1DA710E511;
	Wed, 10 May 2023 19:40:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3580310E511
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 May 2023 19:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683747617; x=1715283617;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=uHOCY8yiwvELMUu/tim9Jpus8T7PPIKzbayysRrS+Oc=;
 b=WIS/k7LX4z0vxQCLymmFYJAFSkhAmvmv3yY3yH6RGEvb8LohwDMVtgDL
 h7KwH6yKKMBd03Riz8SmlvbBxGbfIc2R8TiNaXF34cvcWhNTcBGcjfWNG
 CVV6HWTcWOIkuwAvd64TSZRKO6UyGN4J6bs5KaJ9pS6d6OhDufDYqTDD2
 a/gAwyc/rtWG7ozSS+Bw8crhdHwz+3wGF3Hka8uGKz2vMcJ1Y6g9W5LYx
 Z+LTMk+qx88RZVlFwCAdCaDBTdHKu6P0B0H1aiFAqLGquJmUI/1LE9Jc8
 E7F97jyUBUjDT5vFY62O8phig+afAeQ29qwWYcXOcOEj1Uf6STcoi0lyp g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="349139460"
X-IronPort-AV: E=Sophos;i="5.99,265,1677571200"; d="scan'208";a="349139460"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2023 12:40:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10706"; a="945817775"
X-IronPort-AV: E=Sophos;i="5.99,265,1677571200"; d="scan'208";a="945817775"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 10 May 2023 12:40:15 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 10 May 2023 12:40:15 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 10 May 2023 12:40:14 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 10 May 2023 12:40:14 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 10 May 2023 12:40:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N/S28W113d50P+ArmMkA3rI7OAjbcHE7ZsTTt4jzVUNYlAyy4v9uRCNUoXTqrGw6xtCbkb5e02JbfQFqD69sw5Ku0pcL7S9cB6+7Sxk8Sas0bkNRsHMPakzItIWk9VbSbmxsHsfx2VRCgEtNUaKCHAV/NNHhgAS56jSIb6p4JbmztIpn+MAEFIaEv+hPfdLfZw9JT3n2jH+DAAHI4xLNBC7UFaA6ToRS1+GvqUMxfaLjyT0W25EEWfILM+/KNjuBeY71x9/euwZq+VxSBt/MbOiqm6aelp1vJynZ1M09QSeYdaC7PFQTrv0caH2uFhGIFi9B2racC1JMp4aSviFHDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uHOCY8yiwvELMUu/tim9Jpus8T7PPIKzbayysRrS+Oc=;
 b=YWmUAO1VG6ZMyYqMMZZaSRBUyFILuIZy5s4NXRb2l0FT0aWUtoqCnYk1SKwZ+h1q1+YUnmHZaNJsg5qIM4s07KPtRRoCuiNoXhDa0pSdixTotm8iyYv3K+tqKURS9wwsp9DIuY8RIwfWVVL3A8BdHYazQFC5RM7SM/22WDlKu110DbvF8fDQB1HZxc9XsFRRXMHjSkddzKoPmy6MsJmeJdJMQ4awoA25+MFU3ZFiTR9n/lVMqN8U6O0yQKS51tN7IIvZEhDqsYpkn8o8ZDNm+E+FfwfPUaZi02ai9uoDP3DEYPx5hhwgYjHqwGopQ3mBUTwKdkWt8OSrJzrt3MFVLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB8179.namprd11.prod.outlook.com (2603:10b6:8:18e::22)
 by SJ1PR11MB6204.namprd11.prod.outlook.com (2603:10b6:a03:459::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6363.32; Wed, 10 May
 2023 19:40:08 +0000
Received: from DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::3fa1:b97c:a5bb:651]) by DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::3fa1:b97c:a5bb:651%3]) with mapi id 15.20.6363.032; Wed, 10 May 2023
 19:40:07 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "Justen, Jordan L" <jordan.l.justen@intel.com>, "Teres Alexis, Alan
 Previn" <alan.previn.teres.alexis@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v9 6/8] drm/i915/uapi/pxp: Add a GET_PARAM
 for PXP
Thread-Index: AQHZfxK4xAY/iKcc2064F1rFRRvewK9LS2YAgAVhWgCAA0OHAA==
Date: Wed, 10 May 2023 19:40:07 +0000
Message-ID: <0a23ff5be69e3d6b6e3b457c2599bc2f018fc71a.camel@intel.com>
References: <20230427234843.2886921-1-alan.previn.teres.alexis@intel.com>
 <20230427234843.2886921-7-alan.previn.teres.alexis@intel.com>
 <8888e3dff8c1c4fd1702ded911850da30330fbfa.camel@intel.com>
 <168327239043.1096084.14316886882692698230@jljusten-skl>
 <e40f2b8750b39facd98f72cda63bc733ca0319d5.camel@intel.com>
In-Reply-To: <e40f2b8750b39facd98f72cda63bc733ca0319d5.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB8179:EE_|SJ1PR11MB6204:EE_
x-ms-office365-filtering-correlation-id: e646dd63-dac1-4da3-794d-08db518e5c15
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ca6u2OT6gDjmeiwq++B0xU3MRz77BIsYTnyd1qWgvMmT1OgHopE8JaH9a1QnQswoPIImAm8tes6kywJM/uPoJKAbXPPzXYDyOflzZa635Fu97raF/WKrJFQwlDCQucrz993CVz79Cuc42WO0BqzT5CMfGCPB7elKhGn+CZaSoNYLZ7o8tShZfw1sBuRqhNZK7eh1nNcg4W6eVrm70ZMpU0+nXOs5jc70SCSobIzWR+KZvpC8wOTRJlirjMxhD+0RNnzkRaporaknjhXsWGdqqPSgCqJRW5nsFSdvHSVMWwiUzsZRYIDC+l0Fg/L7EOTN4xLu5bwjyPV3apyQV1kHZ+kj9nmaO2Ke35dVdKhf5m5pHBnyk4b1NjV4EfCciWhf+6yw/9IcggtamCbZijiDWp/eZGVMLBpCTvScoBOq8g0a0vxDwBSpO1fCK1jJVUgH7jLd0083EwtmtHLLWfba3qCDuzhJQDhihaqwx7Cv1PvUQGpDylcmdEnFEumUq+g9THzOG07Q/I7POdvQ+EcAj12oCcqae+cPY3QSVZAs82MHAJ0TKqEkhJcV/Epa3zha
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB8179.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(376002)(39860400002)(366004)(396003)(451199021)(54906003)(8676002)(8936002)(41300700001)(316002)(478600001)(110136005)(2906002)(71200400001)(66946007)(64756008)(66556008)(4326008)(66446008)(76116006)(91956017)(5660300002)(66476007)(6512007)(6486002)(6506007)(53546011)(26005)(186003)(82960400001)(83380400001)(966005)(2616005)(36756003)(38100700002)(38070700005)(122000001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RlNjaHNkeXQrbUpYbngzVlZJcUQ2ZWlJMHpIMGNra3lIV3N6eGxDajV2a0Ja?=
 =?utf-8?B?Y1BjRDlpZzNjcmFZalEvQUd1dWl1MzZrQ3lEYS9OdnZtbk1zSGxEMytFdzlC?=
 =?utf-8?B?SXUrTm80WWVLUnlBNnd3U1NIWHJGYlVyYjlDaG9LZFNoRmFrMkJJNEw5SVgz?=
 =?utf-8?B?a0NCdlVxSWxNMytwaXF2RXBEbzlSbysxZC80aVd5Nmh6czVqdGtGbUswa1hZ?=
 =?utf-8?B?V1I3ZllnZ1JtMzg0V0FDblg3UzFpcVlFcHlqdVNxMlovVENIZUlBS2hDdmtq?=
 =?utf-8?B?K2hjMDNmYjBlZzE5eU12VmhiOWNlTTV6KzBBYjVXaFM5WjZvSWJNMDMzS1VI?=
 =?utf-8?B?M0x0QlB3L2ZnSjA4dHFLT21jdHBaWDdJYTEzcm1QK2dWeGkxYlBZWWk0cVJS?=
 =?utf-8?B?Yng3WThHRDNrYnV5UUZqdVc5OGtUM2lGSlVnZWkwckVRcWkxeEFHUnZKc3Yz?=
 =?utf-8?B?eHZJUW5qZG1pekFiRjJoamE0aG53VDYwUkFRVElrZ1MzNjkxWEJNMnMzcFNV?=
 =?utf-8?B?bTNmdEdmZWludHowcVZyaTBkSm12YkE0WTdlc2JSV2wyWGdMNC9hQk9mVG15?=
 =?utf-8?B?L0ZtUlF5M0ZSeUFMV250NW9xQ1lOR2M2RlkwNDkzQ05tbDR2dmk3anYxSElB?=
 =?utf-8?B?cE0raXc5bFcyTGRsMFBRcGRsWkt3Z2RNcjNka2k2UEdacGxlSDU2NFhqbXdP?=
 =?utf-8?B?bDlZRVB0alYvTHNzdHNjTGZCdkIzbUlodnRSRFhXa2NQbkJkeTNnenRuVFEv?=
 =?utf-8?B?WGFERGREMUlWVHhLTlM2WFZMOEphWC9uM2ZPT3FhZjVsZTBlM2llM20wVGJM?=
 =?utf-8?B?ZjFzRC9nbVZqYVpacFdNNmtLYzFkV3pteFFQWHpDK085QUxGc1ZCbnRZcFhQ?=
 =?utf-8?B?VzI2dW5TbmFNc1lYQ0RvZzYzUFptVDIxdFk3aU0waEJKU0lKbkhnZk1hc2Fn?=
 =?utf-8?B?Z2xpT1QvTWdGRkpKRWQzVVlZSGQrWmt0RkhhV0MyWVZGVjFZcW9DMVdoT0k4?=
 =?utf-8?B?S2Q3OHh1TUp2eEtIeUs5TjNvTVNzQ05paXp0dmgydU1NTUQ1a0ZWMEczYkVP?=
 =?utf-8?B?dzJKVjFuWjJLUndJdXRmQlNuTlVNbW8vTlNqaStnQThtVGlzVXhNclU3ZzZX?=
 =?utf-8?B?cEN3SDlmRktra1RvZnFFWGZKSlUxRmtKUWlvWGVwVUJoY2pUd2QwblVLY1Zr?=
 =?utf-8?B?b0R2YzBucnJGUkM3dmN3enZLVjV0a01jQlM2R2RRN3pJMkVQTGt1OUJjS0p2?=
 =?utf-8?B?ZHg2b2E2cmZ2cURlZ095cWJlRTJnNEVvUGxGdVZaTUM1cDRrZlo2LzQ5aVBJ?=
 =?utf-8?B?RWdESG1QWkRTbDdHMGtnMHZZaXNDdlhDeUpObno3R0JOYjZmZjg5eWdyMVNm?=
 =?utf-8?B?OW0yam9vSno0d2J3cER6c09jQ0dOaWdyelRodXhYbWd4cmZBMmI5Y1pNSkFB?=
 =?utf-8?B?VHJnYjF5eTM3bU42Q3ZXcCtIUEFRT0FaakFaS0xaQklEb2hYcUQxMGpLckhy?=
 =?utf-8?B?RVE2ck55WlZlYmg4N1ozUHo3NjRNd0lhd2Y0WE5IcTNtZkwwbkRMd09sT2My?=
 =?utf-8?B?UHBpazZuYkZRbitIR2lsTjNiK2wzaXFNMzFXVTJpSDZOMzJNRWp6Z0FMZHp0?=
 =?utf-8?B?NGVqS2xlZklMekFMSm1JcDFiSVhpTmhzT3F3a2swQk04ZFBuc0xwdE1YQ1VV?=
 =?utf-8?B?MVJqWGttNHdvc0Fyc2JMT05nMjVYUDBPbGZlUGlSdllacGV4eG5qTHlyNmNZ?=
 =?utf-8?B?Y0gzamk1WnJDTnVzaDMrZ3FDSFl6RXV1cUlwOHRIZGVJWEcxTEpOdHRnNHVG?=
 =?utf-8?B?bEdTOUd1ZW5ldFAwRUdENEpMczN4ZkhwdmxIN2hHeHNOYWdBOUExdlBsK25P?=
 =?utf-8?B?eHZZT1BCTks5czd4RGtseFFwaHE4VXdQZzIzcjNpd0prRjJ0UHJjaHdwR2lC?=
 =?utf-8?B?ZUZOMXJSRXB2THFaa2lITjJqVVhKYnJDOXlSYVFkVE4xTnFaTXJWQXdwZGpJ?=
 =?utf-8?B?bWowTEs3aGNUMHVMYWhOdGRjSzFwVSt0ZmtHdG82UlFCaG83ZERrc2prbHBj?=
 =?utf-8?B?K0JCM3M0Zjg0djN0WHJnb2NwbUpQL1huTi9mNjBqeE1SVHpKUVEzL0JqVlRq?=
 =?utf-8?Q?fnZdxfPWFtusRC7oQ1Xc0TnFG?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <52BDCFD90661CC4C87889F416EA3368E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB8179.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e646dd63-dac1-4da3-794d-08db518e5c15
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2023 19:40:07.4776 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mQSH1d+D8WnHWHoBN0vWZDLCm1U8erpEk7wKHo9hFQUn/6EL/k3hph0FGQPzaFtciCOpST8tBn8uhip/OBwIAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6204
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v9 6/8] drm/i915/uapi/pxp: Add a GET_PARAM
 for PXP
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
Cc: "ri-devel@lists.freedesktop.org" <ri-devel@lists.freedesktop.org>,
 "ustonli@chromium.org" <ustonli@chromium.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIzLTA1LTA4IGF0IDE3OjQ5ICswMDAwLCBUZXJlcyBBbGV4aXMsIEFsYW4gUHJl
dmluIHdyb3RlOg0KPiBPbiBGcmksIDIwMjMtMDUtMDUgYXQgMDA6MzkgLTA3MDAsIEp1c3Rlbiwg
Sm9yZGFuIEwgd3JvdGU6DQo+ID4gT24gMjAyMy0wNS0wNCAyMjozMDowNywgVGVyZXMgQWxleGlz
LCBBbGFuIFByZXZpbiB3cm90ZToNCj4gPiA+IE9uIFRodSwgMjAyMy0wNC0yNyBhdCAxNjo0OCAt
MDcwMCwgVGVyZXMgQWxleGlzLCBBbGFuIFByZXZpbiB3cm90ZToNCj4gPiA+ID4gQmVjYXVzZSBv
ZiB0aGUgYWRkaXRpb25hbCBmaXJtd2FyZSwgY29tcG9uZW50LWRyaXZlciBhbmQNCj4gPiA+ID4g
aW5pdGlhbGl6YXRpb24gZGVwZWRlbmNpZXMgcmVxdWlyZWQgb24gTVRMIHBsYXRmb3JtIGJlZm9y
ZSBhDQo+ID4gPiA+IFBYUCBjb250ZXh0IGNhbiBiZSBjcmVhdGVkLCBVTUQgY2FsbGluZyBmb3Ig
UFhQIGNyZWF0aW9uIGFzIGENCj4gPiA+ID4gd2F5IHRvIGdldC1jYXBzIGNhbiB0YWtlIGEgbG9u
ZyB0aW1lLiBBbiBhY3R1YWwgcmVhbCB3b3JsZA0KPiA+ID4gPiBjdXN0b21lciBzdGFjayBoYXMg
c2VlbiB0aGlzIGhhcHBlbiBpbiB0aGUgNC10by04IHNlY29uZCByYW5nZQ0KPiA+ID4gPiBhZnRl
ciB0aGUga2VybmVsIHN0YXJ0cyAod2hpY2ggc2VlcyBNRVNBJ3MgaW5pdCBhcHBlYXIgaW4gdGhl
DQo+ID4gPiA+IG1pZGRsZSBvZiB0aGlzIHJhbmdlIGFzIHRoZSBjb21wb3NpdG9yIGNvbWVzIHVw
KS4gVG8gYXZvaWQNCj4gPiA+ID4gdW5uY2Vzc2FyeSBkZWxheXMgZXhwZXJpZW5jZWQgYnkgdGhl
IFVNRCBmb3IgZ2V0LWNhcHMgcHVycG9zZXMsDQo+ID4gPiA+IGFkZCBhIEdFVF9QQVJBTSBmb3Ig
STkxNV9QQVJBTV9QWFBfU1VQUE9SVC4NCj4gPiA+ID4gDQo+ID4gPiBhbGFuOnNuaXAuDQo+ID4g
PiBQcm9ncmVzcyB1cGRhdGUgb24gdGhlIFVNRCBzaWRlIC0gSSdtIHdvcmtpbmcgb24gcGF0Y2gg
Zm9yIFBSIGhlcmU6IA0KPiA+ID4gaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2FsYW5f
cHJldmluX2ludGVsL21lc2EtYWxhbi1wcmV2aW4tZmVhdHVyZXMvLS9jb21taXQvZmI5ZDRmYmZi
ZWY3ZGZkM2Y0MWRmMzM1Y2QzMTU0OWZkMzlkZGI1Nw0KPiA+ID4gYnV0IHRha2luZyB0aW1lIHRv
IHZlcmlmeSBjZXJ0YWluIGNvZGUgcGF0aHMNCj4gPiANCj4gPiBKdXN0IHRvIGNvbmZpcm0sIGlm
IEk5MTVfUEFSQU1fUFhQX1NUQVRVUyByZXR1cm5zIDIgKCJ3aWxsIGJlIHJlYWR5DQo+ID4gc29v
biIpLCB0aGVuIGl0IGlzIGJhc2ljYWxseSBjZXJ0YWluIHRoYXQgaW4gYSBwcm9kdWN0aW9uIGVu
dmlyb25tZW50LA0KPiA+IHRoZW4gaXQgd2lsbCBldmVudHVhbGx5IHJldHVybiAxIG1lYW5pbmcg
aXQncyByZWFkeSwgcmlnaHQ/DQo+IGFsYW46IHllcyAtIGJ1dCBub3QgMTAwJS4gbm9uLXBsYXRm
b3JtLXN0YXRlLW1hY2hpbmUgY291bGQgc3RpbGwNCj4gY2F1c2UgdW5leHBlY3RlZCBmYWlsdXJl
cyBmb3IgZXhhbXBsZSwgWzFdIGlmIGh3IHdhcyBmdXNlZCBpbiBhIHdheQ0KPiB0aGF0IGRvZXNu
dCBwZXJtaXQgUFhQIG9yIFsyXSBlbmFibGluZyBjZXJ0YWluIEJJT1MgZGVidWcga25vYnMNCj4g
ZG9lc250IGFsbG93IFBYUC4gSG93ZXZlciBhdCB0aGUgbW9tZW50LCB0aGVyZSBpcyBubyB3YXkg
Zm9yIHVzDQo+IHRvIGtub3cgZm9yIHN1cmUgd2l0aG91dCBhY3R1YWxseSBjcmVhdGluZyBhIHBy
b3RlY3RlZCBjb250ZXh0Lg0KPiBPZiBjb3Vyc2UgaGF2aW5nIGh3LWZ1c2luZyArIGJpb3MtY29u
ZmlnIHRoYXQgc3VwcG9ydHMgUFhQIGhhdmUNCj4gYWx3YXlzIDEwMCUgc3VjY2VlZGVkIGZvciBt
ZS4NCg0KSW4gbXkgb3BpbmlvbiBpdCBpcyBwcm9ibGVtYXRpYyBtYXJrIHRoYXQgd2Ugc3VwcG9y
dCBwcm90ZWN0ZWQgY29udGV4dCBidXQgdGhlbiBpdCBmYWlscyB0byBjcmVhdGUgcHJvdGVjdGVk
IGNvbnRleHQuDQoNCkl0IHNob3VsZCBjaGVjayB0aGUgSTkxNV9QQVJBTV9QWFBfU1RBVFVTIGlu
IGk5MTVfZ2VtX3N1cHBvcnRzX3Byb3RlY3RlZF9jb250ZXh0KCkgcmV0dXJuIGVhcmxpZXIgaWYg
a25vdyB0aGF0IHByb3RlY3RlZCBjb250ZXh0IGlzIG5vdCBzdXBwb3J0ZWQuDQpUaGVuIGNyZWF0
ZSBhIHByb3RlY3RlZCBjb250ZXh0IHNvIHdlIGtub3cgdGhhdCBhbGwgb3RoZXIgY2FsbHMgd2ls
bCBzdWNjZWVkLg0KDQo+IA0KPiA+IA0KPiA+IElmIHRoaXMgaXMgY29ycmVjdCwgdGhlbiBJIHRo
aW5rIHRoYXQgdGhlIGNoYW5nZSBpbg0KPiA+IGk5MTVfZ2VtX3N1cHBvcnRzX3Byb3RlY3RlZF9j
b250ZXh0KCkgaXMgZ29vZCwgYW5kIHByb2JhYmx5IHdlIGNhbg0KPiA+IHNraXAgdGhlIGNoYW5n
ZSBpbiBpcmlzX2NyZWF0ZV9od19jb250ZXh0KCkuDQo+ID4gDQo+ID4gQmFzaWNhbGx5LCB3ZSdy
ZSB0aW1pbmcgb3V0IGZvciBtdWx0aXBsZSBzZWNvbmRzIGVpdGhlciB3YXkuIEFuZCwgSSdtDQo+
ID4gaG9waW5nIHRoYXQgdGhlIGtlcm5lbCB3aWxsIGV2ZW50dWFsbHkgZ2V0IHRoZSBQWFAgaW5p
dCBkb25lIGFuZA0KPiA+IGNyZWF0ZSB0aGUgY29udGV4dC4NCj4gPiANCj4gPiBJIHRoaW5rIHRo
ZXJlJ3MgMiBjYXNlcyBvZiBpbnRlcmVzdCBoZXJlLg0KPiA+IA0KPiA+IEZpcnN0LCBhbmQgbW9z
dCBsaWtlbHksIHRoZSBhcHBsaWNhdGlvbiBydW5uaW5nIGRvZXNuJ3QgY2FyZSBhYm91dA0KPiA+
IHByb3RlY3RlZCBjb250ZW50LiBJbiB0aGlzIGNhc2Ugd2UgY2FuIHF1aWNrbHkgYWR2ZXJ0aXNl
IHRoZSBzdXBwb3J0LA0KPiA+IGJ1dCB0aGVyZSB3aWxsIGJlIG5vIGNvbnNlcXVlbmNlIGJlY2F1
c2UgdGhlIGFwcGxpY2F0aW9uIHdvbid0IHVzZSB0aGUNCj4gPiBmZWF0dXJlLg0KPiBhbGFuOiB5
ZXMgLSB0aGF0IHdhcyBvbmUgb2YgdGhlIGdvYWxzIG9mIHRoaXMgVUFQSS4NCj4gPiANCj4gPiBT
ZWNvbmQsIHRoZSBhcHBsaWNhdGlvbiBkb2VzIGNhcmUgYWJvdXQgcHJvdGVjdGVkIGNvbnRlbnQu
IEluIHRoaXMNCj4gPiBjYXNlIHdlIGNhbiBxdWlja2x5IGFkdmVydGlzZSB0aGUgc3VwcG9ydCwg
YnV0IGlmIHRoZSBmZWF0dXJlIGlzIHVzZWQNCj4gPiB0b28gcXVpY2tseSwgdGhlbiB0aGUgY29u
dGV4dCBjcmVhdGUgbWlnaHQgdGFrZSBhIGxvbmcgdGltZS4NCj4gYWxhbjogbm8sIHRoYXQgaXNu
dCB0aGUgY2FzZSBub3csIHdlIHN0YXJ0ZWQgYXQgOC1zZWNzLCB0aGVuIDItc2VjcywNCj4gYW5k
IGZpbmFsbHkgc2V0dGxlZCBvbiB0aGUgc2FtZSB0aW1lb3V0IGFzIEFETCBzaW5jZSB0aGlzIG5l
dyBVQVBJDQo+IHdpbGwgYmUgc29tZXRoaW5nIHRoYXQgY2FuIGJlIHBvbGxlZCBvbiB0byBiZSBz
dXJlIHdlIGhhdmUgcmVhZGluZXNzDQo+IHRvIG1ha2UgdGhlIGNyZWF0ZS1jb250ZXh0LWNhbGwu
IFRoYXQncyB3aHkgaSB3YW50ZWQgdG8gYWRkIHRoZQ0KPiBwb2xsaW5nIHdhaXQgaW4gdGhlIGFj
dHVhbCBjcmVhdGUgY2FsbCAtIGJ1dCBub3QgdGhlIGdldCBjYXBzIGNhbGwNCj4gd2hpY2ggY2Fu
IGJlIHF1aWNrIChhcyB5b3Ugc2FpZCBhYm92ZSkuDQo+IA0KPiA+IA0KPiA+IElmIEk5MTVfUEFS
QU1fUFhQX1NUQVRVUyByZXR1cm5pbmcgMiBoYXMgYSByZWFzb25hYmxlIGNoYW5jZSBpbiBhDQo+
ID4gcHJvZHVjdGlvbiBlbnZpcm9ubWVudCBvZiBldmVudHVhbGx5IGZpbmRpbmcgb3V0IHRoYXQg
cHhwIGNhbid0IHdvcmssDQo+ID4gdGhlbiBwZXJoYXBzIG1vcmUgZGlzdXNzaW9uIGlzIG5lZWRl
ZC4gSSBndWVzcyB0aGUgd29yc3QgY2FzZSBzY2VuYXJpbw0KPiA+IGlzIG5vIHdvcnNlIHRoYW4g
dG9kYXkgdGhvdWdoLiAoRXhjZXB0IGl0IGlzIHN0aWxsIHNvbWV3aGF0IGJldHRlciwNCj4gPiBi
ZWNhdXNlIHRoZSBjb21tb24gY2FzZSB3b3VsZCBub3QgaW52b2x2ZSBwcm90ZWN0ZWQgY29udGVu
dCBiZWluZw0KPiA+IHVzZWQgYnkgdGhlIGFwcGxpY2F0aW9uLikNCj4gYWxhbjogaG1tbS4uLiBp
IGd1ZXNzIGl0IGRlcGVuZHMgb24gdGhlIG1lYW5pbmcgb2YgcmVzb25hYmxlOiBpZiA1MCUNCj4g
b2YgdGhlIENJIHBsYXRmb3JtcyBiZWluZyBydW4gaGF2ZSBpbmNvcnJlY3QgYmlvcyBjb25maWcg
LyBodyBmdXNpbmcNCj4gZG9lcyBpdCBtZWFuIHRoaXMgVUFQSSBpcyBvbmx5IDUwJSB1c2VmdWw/
IE15IG9waW5pb24gaXMgdGhlIGFsdGVybmF0aXZlOg0KPiBpbiB0aGUgY2FzZSBvZiBwbGF0Zm9y
bSB0aGF0IGhhcyBjb3JyZWN0bHkgY29uZmlndXJlZCBCSU9TICsgZnVzaW5nLA0KPiBpcyB0aGUg
Y2hhbmNlIG9mIDIgZXZlbnR1YWxseSBsZWFkaW5nIHRvIGEgZmFpbHVyZSBoaWdoPyBUaGUgYW5z
d2VyIGlzIG5vLg0KPiBIeXBvdGhldGljYWxseSBpIGhhdmUgYWN0dWFsbHkgbmV2ZXIgc2VlbiB0
aGlzIGhhcHBlbiAobm90ZTogdGhpcyBVQVBJDQo+IGlzIG5ldyBidXQgaSBrbm93IGZyb20gcGFz
dCBkZWJ1ZyBvZiBjdXN0b21lciBpc3N1ZXMpLiBUaGVyZSBhcmUgc29tZSB2ZXJ5DQo+IGNvcm5l
ci1jYXNlcyBidXQgdGhvc2UgZ2V0IGludG8gdGhlIHdlZWRzIG9mIHB4cCBydW50aW1lIHN0YXRl
IG1hY2hpbmUuLg0KPiBJIGFtIHN1cmUgd2UgZG9uJ3Qgd2FubmEgZGlzY3VzcyB0aGF0IHJhYmJp
dCBob2xlIHJpZ2h0IG5vdy4NCj4gPiANCj4gPiBBbm90aGVyIG9wdGlvbiBiZXNpZGVzIGZyb20g
dGhlIHRpbWVvdXQgbG9vcCBpbg0KPiA+IGlyaXNfY3JlYXRlX2h3X2NvbnRleHQoKSBtaWdodCBi
ZSB0byBjaGVjayBJOTE1X1BBUkFNX1BYUF9TVEFUVVMgYWZ0ZXINCj4gPiB0aGUgY29udGV4dCBj
cmVhdGUgZmFpbHMgdG8gdHdlYWsgdGhlIGRlYnVnIG1lc3NhZ2UuDQo+IGFsYW46IFllYWgsIHRo
YXQgaXMgYW4gb3B0aW9uIC0gSSdtIHRoaW5raW5nIHdlIGNhbiBhZGQgYSBEQkcgdGhhdCByZWFk
cw0KPiBlaXRoZXIiUFhQIGNvbnRleHQgZmFpbHVyZSBleHBlY3RlZCBkdWUgbm90IHJlYWR5IiB2
cw0KPiAiVW5leHBlY3RlZCBQWFAgY29udGV4dCBmYWlsdXJlIiANCj4gDQo+ID4gDQo+ID4gLUpv
cmRhbg0KPiANCg0K
