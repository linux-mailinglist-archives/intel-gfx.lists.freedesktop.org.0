Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C815376D9C1
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Aug 2023 23:41:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6395210E155;
	Wed,  2 Aug 2023 21:41:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA55410E155
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Aug 2023 21:41:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691012490; x=1722548490;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=NKGlkcGWUf73EDSTnQdNwlL/XMSXDtoy2HgcY0T9dqk=;
 b=CaG3I53/43WyQOl8v/8uHKrp9opjJpNC9jZTbKjxXNEiit7ozd8it6QJ
 hrVbHjciTbTlyqWIY4pBH6NZpquUBIMvQD/cD48KR5og/IO6k9nJPx9Fu
 2fZ30GCKBNY6xjsv6TkW5KfrfzSY68DFZUjU5lt2BO9P3db5HSJ432A8U
 4p4dlynZIbd/ZQPISceGByWs3OSlA3vvIXWjN5d4hHfq3WpSsKhqtBYK1
 DdG05+/0w9eRakuno6eTklNCZk7OwmfoDtfyjlOMywjxq8HHDc7inL55q
 QkOYhzN6ecnivNjQ/yKdIprDCBBdeyOrgSmaaPND18MByKCWUzWNj86iy g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="349303883"
X-IronPort-AV: E=Sophos;i="6.01,250,1684825200"; d="scan'208";a="349303883"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2023 14:41:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10790"; a="758888005"
X-IronPort-AV: E=Sophos;i="6.01,250,1684825200"; d="scan'208";a="758888005"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 02 Aug 2023 14:41:29 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 2 Aug 2023 14:41:29 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 2 Aug 2023 14:41:29 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 2 Aug 2023 14:41:29 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 2 Aug 2023 14:41:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aU/NIA9OMgbj+U6l8xEHIF3lNfxmXDJ+HJvdQvnv7tBZjfjl2kWsLpc+X1FpKoIQfmoIU3IxWNd4OiZ0sF+72wjXdCHR18ttz5o4vNmdE9648tEZrmbqGkxSiZQzMum+K278Vtb9m1xUWool7DN1VSu35a/6IWl6BxP6XL4T2vEm+ARfWNXxiq9U0BKnBWhqyWctdA11VhY7TY7G656yYKEsXogs/vyB8IQjYIA+5KFaSd9crohNLHnyKpDy0EgHVw7X18p0gr/woQNabeFxMktQvI/9S06RDxgItXKf9lqYLOYlreskFA1AcGs4t4FfQEQaGq2yEvRvTnMkgGZQNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NKGlkcGWUf73EDSTnQdNwlL/XMSXDtoy2HgcY0T9dqk=;
 b=hARsnQC4GT+WwRVEaKZyi6BGX2oTWFjq4RzGGsTQrXfyHg1PtVj5g0tUzvuKfAWRvdHgzZm95/KKmuUyefNN/C/yrPM4QEQVmyCIH1qBOWr5Wnfw2orVFj437vONS+D6S++H91gzsmpp1P4RDnD6b+eVn+K/iEaVHbK2qDo7xdLxfZd4OP/bURlbMXfvV3Js/R4H2jvNNkWnCRtwPpzL5mwd0QfySkKmcalJ21mmhsdhM6kUwjzRNY/gRNVyp1/mBOzJRQKPp6jq6e2Ltw9X6wqKl4hDRZ18Uxc7bt8xUZIRYRv+7CZytI1ZVQeb2roOGGNpEdRcIvIYEXCXrOFF3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN0PR11MB5711.namprd11.prod.outlook.com (2603:10b6:408:167::22)
 by SA0PR11MB4592.namprd11.prod.outlook.com (2603:10b6:806:98::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.47; Wed, 2 Aug
 2023 21:41:27 +0000
Received: from BN0PR11MB5711.namprd11.prod.outlook.com
 ([fe80::f451:4326:17f2:11c3]) by BN0PR11MB5711.namprd11.prod.outlook.com
 ([fe80::f451:4326:17f2:11c3%4]) with mapi id 15.20.6631.046; Wed, 2 Aug 2023
 21:41:27 +0000
From: "Taylor, Clinton A" <clinton.a.taylor@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/4] drm/i915/cx0: Add intel_cx0_get_owned_lane_mask()
Thread-Index: AQHZvz7XQuA9THDV20ytLZ9XeNJ796/Xlc2A
Date: Wed, 2 Aug 2023 21:41:27 +0000
Message-ID: <879b5cef429c19e943913a59a61aae87d41d92df.camel@intel.com>
References: <20230725212716.3060259-1-gustavo.sousa@intel.com>
 <20230725212716.3060259-2-gustavo.sousa@intel.com>
In-Reply-To: <20230725212716.3060259-2-gustavo.sousa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN0PR11MB5711:EE_|SA0PR11MB4592:EE_
x-ms-office365-filtering-correlation-id: 76506a4c-70c3-4e0e-dfb3-08db93a139e8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +HcX5PrmMLlKqUr6+cFfo3lDPYDh9O20OK4v9F6WfvF7KByGCgxciri907hkqtc5QGB0rjRNlyEGMeaTproSVwLe+7mogT2VG5vLFlDIeK2foQvHMzZw0N35oacg/Prf4kSZ8J02sAV1jWzEH01fk59e4Uj4HlagxJVo8ks8VNNly+01PUU7wXJHoo00R7DiuMl5vnOj7LxiGfSsvq9jTTbfKbiAn/YF3gB9XgxAW1MBoEAaZ1cM6EoZCYdoHVeHA0uCNxr93YQgUDI9PXYTYi25zVCl7bhLtqfn9zGf+xYn+jwycLs16rXddZZrDBtCyMmGpADq3PSjAybAuX61O/PDGmC1cnuOLLsR8rbl1pBA3SaiKMMqWRf+SkoLKjFRdDaxUHlPedXT7q+jYYPmi9fZHZk9hvpbNt0ZEVcGmShbrD/OS78tToZ/h4YP2Q6Nio6vp+e4ol6pLMeGGWpbp8vRpf1miTDws7EuwNCNnSUNloHvQiRH2Q64QutFWU2VYQjAsYdu+KLIEZvJPJQz7cssUpPfGimszSu2dHY2AOM9qT3hcCS0tnAFrW0kEj2AsB4R/4F9jaxQnwYC/a1zGKOPORuyWxh/hF90qPKsIx3tOc3FR7eo66aOSWKOrqf8
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN0PR11MB5711.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(366004)(376002)(346002)(39860400002)(451199021)(2616005)(107886003)(6506007)(83380400001)(26005)(186003)(316002)(76116006)(2906002)(91956017)(66946007)(4326008)(64756008)(66446008)(66476007)(66556008)(5660300002)(41300700001)(8676002)(8936002)(6486002)(71200400001)(6512007)(478600001)(110136005)(54906003)(38100700002)(82960400001)(122000001)(36756003)(86362001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aGpDU09uMThON0tySGJ2QmpMY2NKVTZnZzdWYzdGS21DM28wcE5KRmJJTnBw?=
 =?utf-8?B?VnZxM0svcjBRMkp4RHp3ckxsRjNjQUNQSmtLRVBkSkxYcVFjNkdKMW5La0tO?=
 =?utf-8?B?RHhvenpwZGY4amp5MndBNUtUdDE2Y0tmSWtnK2wvMnVLLzhpdVg5dUZvN3Uv?=
 =?utf-8?B?RFkrK0NjaHN2bHFnak0yaXk1QW5JbThkV0kvUnlVQlF0STNJQms3cUp3QTU0?=
 =?utf-8?B?bU85TDhUSDFUcG9IaTd6d21nMldsN29Uc3I1TWgzRkZLN0lWbnJlTkhRUFoz?=
 =?utf-8?B?ZTltVmc4MmxOc1VGM3V5RTI4bHQ5WWZJby9leXpjN0FDRXU4cFhjSW83MnA4?=
 =?utf-8?B?MGdORVI4VXNlZ0plVDYyc2NtalhENFIxb2VaZndpa016MlZUQzZQY2VSUmVs?=
 =?utf-8?B?Q0pzOW5VKy9MZklCN0tSZ2p1N2NLYzM3V1VUQ1YvUEdyL1hPR1JyblhFYnBp?=
 =?utf-8?B?NmlpMFJnYkE2dzR2ck1Ib3ZyRFJYaDlxNUljY2NEcUdWUUEyd0wxRHpnUkNT?=
 =?utf-8?B?eVpRT0wxQUZIOFArZjZXK2JFalB0MjhlKzdoNWM5NlZHVWQ4QUdGTG1wb01h?=
 =?utf-8?B?Nmh6dGRUeWVmSW9SV2VzOHlMOW1IWStscE14Mk50QWw2dmV5ZEkycTlDamhp?=
 =?utf-8?B?Zmg2TXQ2UXo5MkVmNEdHbjM0ckFaRnJ5K2pCY1daMFh1QUFraGhYSDFLajZ3?=
 =?utf-8?B?T1JtSkNTS2VoaFRoTjI0QzlNbTVqTi9nbXd1SjQwTEZnYitUYVZJWjA2YjFn?=
 =?utf-8?B?aStzSTBvRG9YZm9ZdkRndEkwVmNpUXhmTzlsZDV3ei85VDYwVGtKNEJPS3N0?=
 =?utf-8?B?OEs5VCs3SHdMTjNWWVdCTllYNFlVV0RjVkNLd3BIeE42dmlNOGJxVEtJRjNk?=
 =?utf-8?B?d3VGMVZCSHNQc29ja0t4QXFBdmlrYW5FYVYxSDZDMWgxRnZNMjhrOTdBajZZ?=
 =?utf-8?B?MW1qaFcrNzRUWC9DT3F5eVdpb1U0WnVSRGp1ZXhTVC9jUW1TQXZjTEZEVXBM?=
 =?utf-8?B?UHd5T1phTjczbFRIWnNIZ1dtWHhwMFFFTGVaeTl4RkJYeWZpeURpMWRzME12?=
 =?utf-8?B?WlNvb0tFNno4WW93Q2J5a0x6WjN0Z3JMeXBWcityNmxidVI4VFZTdXh0bzlQ?=
 =?utf-8?B?SGxyVzlIU3VjMEJxcElkSFVoWStPSFJHOWgvQjV4aXhvajN3eG8xZUdpdjgv?=
 =?utf-8?B?WHRrMnVhZENMUjBpRUhwOU9XY3FsQVJDTXpJNElKamNlMVU1Y1A2NFF3N3lz?=
 =?utf-8?B?anhHeHJSa2J0OTVvbGt2cU04R0xaRnpxWHdSKzVCZWh3aHhVaVhvL2hsbmNW?=
 =?utf-8?B?ZFNPK2dZUWJnSDAwYWdQcVV1Zi9xTndNKzlqZVJ4UG4wbkw0cm9hbkUrbHhl?=
 =?utf-8?B?dlMybGFVVVM5Yi96MmROMzd2N1l4OFlRS29NM1M5RDRMVitUd1lGRkZuMndT?=
 =?utf-8?B?cVFlckdscDRUNjVwNWdLWTAwTzA5alRwcGJpZkd4SHllczlwTys4Z1JNaGU1?=
 =?utf-8?B?TmlBdnp1M09jcENGeUZidUdkd3VFYUVLd1BOUnordzQzTjAxUm9HYTdCSE9F?=
 =?utf-8?B?S0V1UmxlQ2xqbFlxL2VrUE03dm9hZHlCYlptcUk4aFM0emhoVzRkdTRKNWFy?=
 =?utf-8?B?WCtOQ3c0QkdHa0ZMMFU4b2VzT1hDazNiZjFvQUtwTnN4Vld0aWViMGVMbEJh?=
 =?utf-8?B?RkYvT0hVZCszRCtZd3NBblRMSDkvenoyUDZ1K09lSGhxa3kwMEdrb1YrTlBR?=
 =?utf-8?B?MmlMUnZDMnQ1K0tuTFFwR1BnVmVPWEZtWXFMK2xsQ0MvcXBja2R2OFBmejVK?=
 =?utf-8?B?TkpxaTJGdUVkdXk2L3RwZmdndHNIdmg4MWFscFpFc2dmdkg1a1E5QzFNRVRN?=
 =?utf-8?B?TlRuekIrYlcxRzBMQzFvS0U0bmkzYTkxWDQxTEMwaDZkODB0SnVQYXhEaVZN?=
 =?utf-8?B?c282ZHBNNXpuWHRCQVVqZHgxa0xtMGtMeklmYkRoR0ZUQ2l2cjFmc01ZSSs2?=
 =?utf-8?B?aEYrY2lLY0xyMUpPemJrVFd4clJ2Vno0RWkxR3cyQU5WNFBad2pENWJlR0dF?=
 =?utf-8?B?bHpRbjMzMjhvTWprM1M0bVUzQUV2aU9jTFRtR0oyU1VNMytMR2xrc0U4MFV0?=
 =?utf-8?B?aG9hU01pY1RtNXM2bVk2czNWTHZLaGsrNTRTU2JmVzhrNnduK3lmbjE2Y3Vl?=
 =?utf-8?B?UlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8E209D09E1E74241BBEF59F1A1731CD7@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN0PR11MB5711.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76506a4c-70c3-4e0e-dfb3-08db93a139e8
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Aug 2023 21:41:27.3236 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MFY04KVfAao/NSfVbr+UGaJyn5EI+5evpFhCojX3gdXuZgZap54CvrB+S8zlhaD6mjYFJZLWlTuPAIQQv1yeODZPNtWzkYbk/WieFJJyn6Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4592
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

T24gVHVlLCAyMDIzLTA3LTI1IGF0IDE4OjI3IC0wMzAwLCBHdXN0YXZvIFNvdXNhIHdyb3RlOg0K
PiBUaGVyZSBhcmUgbW9yZSBwYXJ0cyBvZiBDMTAvQzIwIHByb2dyYW1taW5nIHRoYXQgbmVlZCB0
byB0YWtlIG93bmVkDQo+IGxhbmVzIGludG8gYWNjb3VudC4gRGVmaW5lIHRoZSBmdW5jdGlvbiBp
bnRlbF9jeDBfZ2V0X293bmVkX2xhbmVfbWFzaygpDQo+IGFuZCB1c2UgaXQuIFRoZXJlIHdpbGwg
YmUgbmV3IHVzZXJzIG9mIHRoYXQgZnVuY3Rpb24gaW4gdXBjb21pbmcNCj4gY2hhbmdlcy4NCj4g
DQo+IEJTcGVjOiA2NDUzOQ0KPiBTaWduZWQtb2ZmLWJ5OiBHdXN0YXZvIFNvdXNhIDxndXN0YXZv
LnNvdXNhQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2N4MF9waHkuYyB8IDQ0ICsrKysrKysrKysrKy0tLS0tLS0tDQo+ICAxIGZpbGUgY2hh
bmdlZCwgMjcgaW5zZXJ0aW9ucygrKSwgMTcgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiBpbmRleCAxYjAwZWYy
YzYxODUuLmI5MDNjZWIwYjU2YSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gQEAgLTQ2LDYgKzQ2LDIyIEBAIHN0YXRpYyBpbnQgbGFu
ZV9tYXNrX3RvX2xhbmUodTggbGFuZV9tYXNrKQ0KPiAgCXJldHVybiBpbG9nMihsYW5lX21hc2sp
Ow0KPiAgfQ0KPiAgDQo+ICtzdGF0aWMgdTggaW50ZWxfY3gwX2dldF9vd25lZF9sYW5lX21hc2so
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+ICsJCQkJCXN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyKQ0KPiArew0KPiArCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19w
b3J0ID0gZW5jX3RvX2RpZ19wb3J0KGVuY29kZXIpOw0KPiArDQo+ICsJaWYgKCFpbnRlbF90Y19w
b3J0X2luX2RwX2FsdF9tb2RlKGRpZ19wb3J0KSkNCj4gKwkJcmV0dXJuIElOVEVMX0NYMF9CT1RI
X0xBTkVTOw0KPiArDQo+ICsJLyoNCj4gKwkgKiBJbiBEUC1hbHQgd2l0aCBwaW4gYXNzaWdubWVu
dCBELCBvbmx5IFBIWSBsYW5lIDAgaXMgb3duZWQNCj4gKwkgKiBieSBkaXNwbGF5IGFuZCBsYW5l
IDEgaXMgb3duZWQgYnkgVVNCLg0KPiArCSAqLw0KIGxhbmVfcmV2ZXNhbCBpcyBub3QgYmVpbmcg
aGFuZGxlZCBoZXJlLiBEbyB3ZSBuZWVkIHRvIHRha2UgbGFuZV9yZXZlcnNhbCBpbnRvIGFjY291
bnQNCndpdGggUGluIGFzc2lnbm1lbnQgRCBpcyBiZWluZyB1c2VkPw0KDQotQ2xpbnQNCg0KPiAr
CXJldHVybiBpbnRlbF90Y19wb3J0X2ZpYV9tYXhfbGFuZV9jb3VudChkaWdfcG9ydCkgPiAyDQo+
ICsJCT8gSU5URUxfQ1gwX0JPVEhfTEFORVMgOiBJTlRFTF9DWDBfTEFORTA7DQo+ICt9DQo+ICsN
Cj4gIHN0YXRpYyB2b2lkDQo+ICBhc3NlcnRfZGNfb2ZmKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1KQ0KPiAgew0KPiBAQCAtMjUzNCwxNyArMjU1MCwxNSBAQCBzdGF0aWMgdm9pZCBpbnRl
bF9jeDBfcGh5X2xhbmVfcmVzZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gKmk5MTUsDQo+
ICB7DQo+ICAJZW51bSBwb3J0IHBvcnQgPSBlbmNvZGVyLT5wb3J0Ow0KPiAgCWVudW0gcGh5IHBo
eSA9IGludGVsX3BvcnRfdG9fcGh5KGk5MTUsIHBvcnQpOw0KPiAtCWJvb2wgYm90aF9sYW5lcyA9
ICBpbnRlbF90Y19wb3J0X2ZpYV9tYXhfbGFuZV9jb3VudChlbmNfdG9fZGlnX3BvcnQoZW5jb2Rl
cikpID4gMjsNCj4gLQl1OCBsYW5lX21hc2sgPSBsYW5lX3JldmVyc2FsID8gSU5URUxfQ1gwX0xB
TkUxIDoNCj4gLQkJCQkgIElOVEVMX0NYMF9MQU5FMDsNCj4gLQl1MzIgbGFuZV9waXBlX3Jlc2V0
ID0gYm90aF9sYW5lcyA/DQo+IC0JCQkgICAgICBYRUxQRFBfTEFORV9QSVBFX1JFU0VUKDApIHwN
Cj4gLQkJCSAgICAgIFhFTFBEUF9MQU5FX1BJUEVfUkVTRVQoMSkgOg0KPiAtCQkJICAgICAgWEVM
UERQX0xBTkVfUElQRV9SRVNFVCgwKTsNCj4gLQl1MzIgbGFuZV9waHlfY3VycmVudF9zdGF0dXMg
PSBib3RoX2xhbmVzID8NCj4gLQkJCQkgICAgICBYRUxQRFBfTEFORV9QSFlfQ1VSUkVOVF9TVEFU
VVMoMCkgfA0KPiAtCQkJCSAgICAgIFhFTFBEUF9MQU5FX1BIWV9DVVJSRU5UX1NUQVRVUygxKSA6
DQo+IC0JCQkJICAgICAgWEVMUERQX0xBTkVfUEhZX0NVUlJFTlRfU1RBVFVTKDApOw0KPiArCXU4
IG93bmVkX2xhbmVfbWFzayA9IGludGVsX2N4MF9nZXRfb3duZWRfbGFuZV9tYXNrKGk5MTUsIGVu
Y29kZXIpOw0KPiArCXU4IGxhbmVfbWFzayA9IGxhbmVfcmV2ZXJzYWwgPyBJTlRFTF9DWDBfTEFO
RTEgOiBJTlRFTF9DWDBfTEFORTA7DQo+ICsJdTMyIGxhbmVfcGlwZV9yZXNldCA9IG93bmVkX2xh
bmVfbWFzayA9PSBJTlRFTF9DWDBfQk9USF9MQU5FUw0KPiArCQkJCT8gWEVMUERQX0xBTkVfUElQ
RV9SRVNFVCgwKSB8IFhFTFBEUF9MQU5FX1BJUEVfUkVTRVQoMSkNCj4gKwkJCQk6IFhFTFBEUF9M
QU5FX1BJUEVfUkVTRVQoMCk7DQo+ICsJdTMyIGxhbmVfcGh5X2N1cnJlbnRfc3RhdHVzID0gb3du
ZWRfbGFuZV9tYXNrID09IElOVEVMX0NYMF9CT1RIX0xBTkVTDQo+ICsJCQkJCT8gKFhFTFBEUF9M
QU5FX1BIWV9DVVJSRU5UX1NUQVRVUygwKSB8DQo+ICsJCQkJCSAgIFhFTFBEUF9MQU5FX1BIWV9D
VVJSRU5UX1NUQVRVUygxKSkNCj4gKwkJCQkJOiBYRUxQRFBfTEFORV9QSFlfQ1VSUkVOVF9TVEFU
VVMoMCk7DQo+ICANCj4gIAlpZiAoX19pbnRlbF9kZV93YWl0X2Zvcl9yZWdpc3RlcihpOTE1LCBY
RUxQRFBfUE9SVF9CVUZfQ1RMMShwb3J0KSwNCj4gIAkJCQkJIFhFTFBEUF9QT1JUX0JVRl9TT0Nf
UEhZX1JFQURZLA0KPiBAQCAtMjU2NCwxNSArMjU3OCwxMSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9j
eDBfcGh5X2xhbmVfcmVzZXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gKmk5MTUsDQo+ICAJ
CQkgcGh5X25hbWUocGh5KSwgWEVMUERQX1BPUlRfUkVTRVRfU1RBUlRfVElNRU9VVF9VUyk7DQo+
ICANCj4gIAlpbnRlbF9kZV9ybXcoaTkxNSwgWEVMUERQX1BPUlRfQ0xPQ0tfQ1RMKHBvcnQpLA0K
PiAtCQkgICAgIGludGVsX2N4MF9nZXRfcGNsa19yZWZjbGtfcmVxdWVzdChib3RoX2xhbmVzID8N
Cj4gLQkJCQkJCSAgICAgICBJTlRFTF9DWDBfQk9USF9MQU5FUyA6DQo+IC0JCQkJCQkgICAgICAg
SU5URUxfQ1gwX0xBTkUwKSwNCj4gKwkJICAgICBpbnRlbF9jeDBfZ2V0X3BjbGtfcmVmY2xrX3Jl
cXVlc3Qob3duZWRfbGFuZV9tYXNrKSwNCj4gIAkJICAgICBpbnRlbF9jeDBfZ2V0X3BjbGtfcmVm
Y2xrX3JlcXVlc3QobGFuZV9tYXNrKSk7DQo+ICANCj4gIAlpZiAoX19pbnRlbF9kZV93YWl0X2Zv
cl9yZWdpc3RlcihpOTE1LCBYRUxQRFBfUE9SVF9DTE9DS19DVEwocG9ydCksDQo+IC0JCQkJCSBp
bnRlbF9jeDBfZ2V0X3BjbGtfcmVmY2xrX2Fjayhib3RoX2xhbmVzID8NCj4gLQkJCQkJCQkJICAg
ICAgIElOVEVMX0NYMF9CT1RIX0xBTkUNCj4gUyA6DQo+IC0JCQkJCQkJCSAgICAgICBJTlRFTF9D
WDBfTEFORTApLA0KPiArCQkJCQkgaW50ZWxfY3gwX2dldF9wY2xrX3JlZmNsa19hY2sob3duZWRf
bGFuZV9tYXNrKSwNCj4gIAkJCQkJIGludGVsX2N4MF9nZXRfcGNsa19yZWZjbGtfYWNrKGxhbmVf
bWFzayksDQo+ICAJCQkJCSBYRUxQRFBfUkVGQ0xLX0VOQUJMRV9USU1FT1VUX1VTLCAwLCBOVUxM
KSkNCj4gIAkJZHJtX3dhcm4oJmk5MTUtPmRybSwgIlBIWSAlYyBmYWlsZWQgdG8gcmVxdWVzdCBy
ZWZjbGsgYWZ0ZXIgJWR1cy5cbiIsDQo=
