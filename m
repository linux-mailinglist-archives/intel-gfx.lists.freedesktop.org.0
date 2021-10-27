Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C926543C3DE
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Oct 2021 09:29:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EF476E171;
	Wed, 27 Oct 2021 07:29:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 930D56E171
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Oct 2021 07:28:58 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="228847917"
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="228847917"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2021 00:28:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,186,1631602800"; d="scan'208";a="572811551"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Oct 2021 00:28:42 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 27 Oct 2021 00:28:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 27 Oct 2021 00:28:40 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 27 Oct 2021 00:28:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c13Xf4ApBsiLWgd1RLWQCp8O81oxFLLi1JCjn/gzf+7nNnCKNPTThLOqPf/W1yT2w0qhxIgg095Dxf7S+b9B1D3/591q4oWPrUMd56FTmYom4vsrs9bJ8h8FkwO+zcijdlq6g5qEZRYPvUY/heO3ruO8jY37o3Ci28FiBJCQUZGnLgyZ3yNZ/ShradPKfknr7rWvcypgVwltxjFnFLypyugi00gYjRY3d9hIpBaXvy4eDYxyMo7BtyNquIQNu3I6/WKrQVtM8fc+4uPK6hIY10hUuktUh2TIHV7hR5gRHTjQwBiPqaQf/GUaXY7VeWugSHzKJ5wT49MgiJZOwe6ntQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wk36eYHF9MWnFivH26tdbfu+8Z1ONFJngXSnwtv0T0A=;
 b=K8tHtnVVUpiwt+6AqxGqW7i2yNXJrHEXZ/GfzA0itGss7SfbMuYZg+8P9rYRhCa90S6vQcOoFx5yM5S5njtvwIOaybu9frCHg20gPSTQyhibg3AET1M24lOwxMdRrBpmM1H+hdn3MKp/OBIntLQAwvxQxi6oNY9sCIcbw3sRt3lZrW4OnhzRdQ9kYzQK9SEYDk8nacj5j9psOlHqdetrlJMlHr2DD0+oRxHvKaLMo3ntY6Vd2E2ZuqxMwyc6XW+b69QssgGsWjPcRliU1c9eCIDwoMn2THSLLhF1ioy88Qs+yl3DRR0geB1iuBrdLta+Nqf0KBFw+MKC+JiYyMVwEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wk36eYHF9MWnFivH26tdbfu+8Z1ONFJngXSnwtv0T0A=;
 b=jJGUmG33gTBroeFrA5FoDnns7hCtMHu/9nbPVRUhbLFFC00ofHz8v4ZvwzRqwH00pOubiEfd6z/mtZ5ghci8F7CRLRHXbTZJWXEYYisQWXl99DeRu3mnBHv/5/413LlYV+2kJCTeCLJnSGmpTAFG3vfkpLH06zDuMEFrDVN0Gxk=
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 DM6PR11MB3771.namprd11.prod.outlook.com (2603:10b6:5:13f::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.13; Wed, 27 Oct 2021 07:28:38 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::b4aa:b133:6c2d:5596]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::b4aa:b133:6c2d:5596%4]) with mapi id 15.20.4628.022; Wed, 27 Oct 2021
 07:28:38 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Thread-Topic: [PATCH] drm/i915/adlp: Extend PSR2 support in transcoder B
Thread-Index: AQHXyrikLv4fL183Nkmmqmu6jlJluavmcxGA
Date: Wed, 27 Oct 2021 07:28:38 +0000
Message-ID: <a36cf418169109b18845eac552d450dadee1e6ca.camel@intel.com>
References: <20211026223329.116104-1-jose.souza@intel.com>
In-Reply-To: <20211026223329.116104-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 77a44ab4-8e6c-4495-beed-08d9991b64dc
x-ms-traffictypediagnostic: DM6PR11MB3771:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM6PR11MB3771EC4FB0D397C71698FF1A8A859@DM6PR11MB3771.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:268;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KzmnEG2wZAjzycntt5qEZRmfpcX/0AdIGDwxcOEfIsm+w3/Jqq3WP9PmSTgJyeonF7PxrL/i62QAbp85ErQ3YHiBDsxNHW5HiqNNAbPsNRX3OPt1+e+lYSu0xggnMbPDIaarVFs7Tbr06AmL+vm+d4SEmpejyS4wQOQtsLfKRmjMs7iY1zCN6iuP0oFAbRNwekm3ohPTGg+/f6vviiiQRqIabTjRrzFfeC0xiSZj2wKzNvWIg1G07cbph3tX0nf63mqyg+BS5pVw4b6heJShsCgv3/i4gPJRv4EWGdb26d9JKSeK2akobWDuCZRI9qmQnXMfHP7Tk2cLwCUxyINNO4YycvoumtlR/luMGyXTXR5SRnE5BJ7h4v/blDZDKo5hGjQQjOdEzmijHlaCG24Wuj1baZzTahCBSj/692ZCO+Hi5S6wo79Rh/Om6m19m9jGIdDWipvrVQ+IZpj5TeL6cnUh5Rq9QVbfMf6HSAfaPF58rMV7mjvfALJr/loyKBDlFEo1VfX/fujti8pKTqlcA+84yD0uj7OCkICSFRUQdMxC58aZXNHA++UOaO+luJ9/7Qv2SLWQdyWFZvLBhVCgLlVytF6I2viTbd+7aDIvlu2wW+JOTP+qsZI/2sj1l24BuXP0uzV+/G13Kpnxv+z1Jfq2p0JsVPGs/ZlpzJieKmTtaPCZ9Rffzw3fjWql4ulD+YJqrdPU2KQG+MO9OF5H9Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(110136005)(36756003)(82960400001)(8936002)(6512007)(186003)(316002)(71200400001)(38100700002)(122000001)(4326008)(5660300002)(8676002)(66476007)(2616005)(76116006)(2906002)(91956017)(66446008)(83380400001)(66556008)(38070700005)(6506007)(64756008)(66946007)(107886003)(86362001)(66574015)(6636002)(4001150100001)(508600001)(6486002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZjM4aURQYnRRZE1naGNFUm56RzRSS1Q1YlNRK0R4NlUrRDRpSEc1ekl1bUpC?=
 =?utf-8?B?eXRHbU9NNDU5T3hUTjJYcVVBWXdUck9sbytPMmlMZlBDdDFxTW5BQTNhczZw?=
 =?utf-8?B?d3MxK3V1UFJBWWM4anZ2aFFORjQ5ZkxWWUtISi94b3RZZVE3TFd4MldtdHdi?=
 =?utf-8?B?emREZlptYXVpQy9OWG04K3FWZEdnWHJINitTZGZQWkloSzlPNWxjWm03aVFl?=
 =?utf-8?B?UDdpeXgyRVpEMW9SOXBuTjJseVlSbENvMVkrQVNRNnY2cmYzcDhWeS90d09t?=
 =?utf-8?B?NVVER1lncTJqQUNLWS9rVUR1M1pyTERmTnIzRytab2EvZ1NvUmliT3RKSjJz?=
 =?utf-8?B?ZDc1WXRtUTJLSFZaZ092N3JsTjVsY3lKZ01Kc093eEYxS3BFR3pFalN3dmww?=
 =?utf-8?B?cHRoT3B0anRuRGRjeTNqZU1UNkI1NnlSdXgrK1NzRVpDM1RrYmlzdVIvN1hC?=
 =?utf-8?B?UDRQYU5JMVNJUjJuU0hGWlczekZob0E0enQ1aWJoM3FvNnJmUjA4RUIvU3F2?=
 =?utf-8?B?KzgrMDYzcU1obW92ZVdvcFpBWGdNWm54aWZ0cTJXZTZTdlNFSDYvcllHVGVJ?=
 =?utf-8?B?ekN6Rld0YTZwS2JCTW9CWWErVnhSazJWWHc1Smw5Q3ZTeTQ2eDlrNHRmeWxJ?=
 =?utf-8?B?dXRBUktCa2dZU2dsS1BuVWROVjNVVmYyRFJ4eE80T2ZvVGZmWGhhcXE1MVN3?=
 =?utf-8?B?UnUxRHZ3eXRhQ2JNNGxqNTFXeDl0VEp4R0dpenhHZWkvNXl2WWRNcVFQZy9T?=
 =?utf-8?B?aHFqVk1qOGRJbW1mUDIreGJvNmE5dkxkeTlEZXRiZW82dzEzSnRtQUFBWWFK?=
 =?utf-8?B?V2xOa0JvT0hDWkJyTjNkaDlUdWtsNGdYbEsva29pVk5TVHVvNVRTbXdLWGpS?=
 =?utf-8?B?SDBoNGo3dnNYbU82eG9nWk1Sd2hHL3hKVmw0OWZZS3pHOVpJcWd2UmJ6SkRr?=
 =?utf-8?B?d3p2S0FJMVFPa1lqSlYxNmpUdWdZaFF4YnYxWEpOY2xJSlJoSlQ3ZHl4eUhD?=
 =?utf-8?B?TVdIYXh5S0lnNXFqcldSLzZtREQ2NEFwM2dnL0tnOXhIMTJCSzh2d3R2YU1i?=
 =?utf-8?B?M0FEclROV3RPeW1lcHZoQjIzK2JISk14RXQ3YUJsQlROU3FNMFNhb3JlNXFG?=
 =?utf-8?B?NXJDMGV3MkRWcWEwa2ZhSWEvQVc0b1F1NzZXQ3JIR2gvbTYrZkdPOUIrVFhQ?=
 =?utf-8?B?L2lLdkZhT1NjdlU3S0N5c21scGp2bTZsVXNEMFh2ZFU1d2hGWkpwRVA1T0Fl?=
 =?utf-8?B?a2lSL0x2a09KZ2Q3MG1XZE5HbDZXQk1zcStjR1RHL0Q4bTBWRktkSFZyaVZL?=
 =?utf-8?B?cHlCNVk4b29zV1AydzhxaFovai9ERmdxOWd5N0tFOUZVYUVzOUVFdzFoZ3R3?=
 =?utf-8?B?cXcrdC95TTJNZzdiOCtkSXI1ZzFQdjdidWdNdjFtQllITkdGak1mdTV5OWxp?=
 =?utf-8?B?UHY3M0F4SHZzWkZ5YVM5VW5kdzJlQmdGbmdNMlhvVTlwOWVuU0hISGo3TmlM?=
 =?utf-8?B?N3BnaVd6enBqbWM0NEErVUtGUS9CYk45b1JKRmpzZU5IZW9vaGsxTndGK0lF?=
 =?utf-8?B?ZzJ2Mm5TVXdQaVVSOEhWcmRGVUlINW9zYW5ERVYrcW5FRW91Y3Y5eEZadHVW?=
 =?utf-8?B?L0hWVnZmbjNITE50SHdzMXNHL3JCUzRMZ3R4aXZlb0k4WFVyL3hCNFNOR00x?=
 =?utf-8?B?MEkybXJHelhVSTVmU1NMYXBHZEZtTWRucFFTczF0WTNYdEJERUFJRmI4TU4r?=
 =?utf-8?B?RlgyOHEwejE1OE5mZkdaUUMrNk9aSWdhR2FDQVJhQ2JpQzZMWTY5dXVFQm1T?=
 =?utf-8?B?TllUZURydkhDeDhsM1ZSTzZ0Z3Z4dEwzNk5TU1FseENHeGJzakkzbTY4Uzkv?=
 =?utf-8?B?SXN2bXk1K0t3alpKUWlzNmRDUTdxaGEzSFlRQ2hyRzd1WnBtby9JcnFOQVJG?=
 =?utf-8?B?eHp0UHlEdCtna2FRWmZOek9CY1BDVFlyQ1RBb1FQbnRpSStLK0tmY1U5VDBK?=
 =?utf-8?B?eVYvTTMwa2hBenhwdXp2YXFNbkp0KzFLL0czVlh2TjUyVkIrOGFtVitSR1Vi?=
 =?utf-8?B?SHBVMzVlYXYxZ1hBL0MzVFR0clVnaFdZS1RsSXhDYW9YbjM5K0xxOGU2V3Vk?=
 =?utf-8?B?dm1VOFUrK2hXNVB3S1Y3NkR2WEJ0d21udjRqUklQN1Z1U2E3Uk45aDQxejFi?=
 =?utf-8?B?bU95MlJFTnM4WHFUYWhoSEo4TDJzLzNQaWtROFU2cExqNkprYi9OcVlvRytu?=
 =?utf-8?B?dGdGZXkzR010WUdZRCthUm9BaEh3bSthNFhRZ0JMRHFzUDkvTVBXcGdlY0xj?=
 =?utf-8?B?WVRUSjB6ZjZvQUhwdHB6Q0t5OUozTXYrdWJCbzNnTHlnTVV1UHVJOHNLZ1BT?=
 =?utf-8?Q?b6wNqlsmZZrBzGEA=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C808BEFDAAA1FE438E8B5594D130CB46@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77a44ab4-8e6c-4495-beed-08d9991b64dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2021 07:28:38.4111 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TQPlFytfbp+7M8+NMzWoLCxmRRHYO1KTCsXUGd6lyd0fO6D5CPKXarlIR0kwkF0vdOWw3r7g/AbkdtrdNR0rcq52XI+ek25FAzonYU65eY8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3771
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/adlp: Extend PSR2 support in
 transcoder B
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

T24gVHVlLCAyMDIxLTEwLTI2IGF0IDE1OjMzIC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBQU1IyIGlzIHN1cHBvcnRlZCBpbiB0cmFuc2NvZGVyIEEgYW5kIEIgb24gQWxk
ZXJsYWtlLVAuDQo+IA0KPiBCU3BlYzogNDkxODUNCj4gQ2M6IE1pa2EgS2Fob2xhIDxtaWthLmth
aG9sYUBpbnRlbC5jb20+DQo+IENjOiBKb3VuaSBIb2dhbmRlciA8am91bmkuaG9nYW5kZXJAaW50
ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNv
dXphQGludGVsLmNvbT4NCg0KTEdUTQ0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxq
b3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNCArKystDQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggZDM1ZGI1MGVmOTY3YS4uNzEwYjkxMWIwNjViOSAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC01
ODgsNyArNTg4LDkgQEAgc3RhdGljIHZvaWQgaHN3X2FjdGl2YXRlX3BzcjIoc3RydWN0IGludGVs
X2RwDQo+ICppbnRlbF9kcCkNCj4gIHN0YXRpYyBib29sDQo+ICB0cmFuc2NvZGVyX2hhc19wc3Iy
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bQ0KPiB0cmFuc2NvZGVyIHRy
YW5zKQ0KPiAgew0KPiAtCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTIpDQo+ICsJaWYg
KElTX0FMREVSTEFLRV9QKGRldl9wcml2KSkNCj4gKwkJcmV0dXJuIHRyYW5zIDw9IFRSQU5TQ09E
RVJfQjsNCj4gKwllbHNlIGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTIpDQo+ICAJCXJl
dHVybiB0cmFucyA9PSBUUkFOU0NPREVSX0E7DQo+ICAJZWxzZQ0KPiAgCQlyZXR1cm4gdHJhbnMg
PT0gVFJBTlNDT0RFUl9FRFA7DQoNCg==
