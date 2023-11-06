Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F7E7E1A41
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Nov 2023 07:34:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C60F10E044;
	Mon,  6 Nov 2023 06:34:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6DCD10E044
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Nov 2023 06:34:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699252461; x=1730788461;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=j7e/L8hmY0k0fIIWsho3LzjcH9ks73aeS8bKJoQRAFA=;
 b=KyuWQD76aw4JADSIDLYw41psjiV/BmQgXJrgVQ6t+aBzdVv1HzEkvPOb
 ZoGp5jn7qFluQcwGGkD74tnno0U24+Im7BxeNX4Imx0nzCEmA8Grvu75y
 SA7gHaMD6I2fHh2NOkT0xKzMvUOjumjlGdM3wURdQ1ByAjQawsv44vVZv
 ioVWPcp3DY+v72Mn+hSRNOLpZgEhyC9IaNoVVkWChRQiIT/UU+4P8GD7p
 Ye/UecnhUawUAALwVQn4kVwxSc+yxkncJrJJX6c34tB/C7lIyXPdz8utH
 Dm9pipsTIrEE0udViAmu9eALELE4ijwrlbvsmQRcsk8bUebTvyNzKZjnx g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="2198933"
X-IronPort-AV: E=Sophos;i="6.03,280,1694761200"; 
   d="scan'208";a="2198933"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2023 22:34:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10885"; a="797217718"
X-IronPort-AV: E=Sophos;i="6.03,280,1694761200"; d="scan'208";a="797217718"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Nov 2023 22:34:20 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Sun, 5 Nov 2023 22:34:19 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Sun, 5 Nov 2023 22:34:19 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Sun, 5 Nov 2023 22:34:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WnP9N2TeH5qpnkoOl2G1jbZOpTCIsEf90VuVZlsirxcwjeyUPXmT2SmLf39vWVCAG74mcibfZ7ef7p7kDuJ9Qg8aW99B/X0ZbXKmKkRkYO8wYgxvSVr/XBex59zfduXLUgzsvUR6lQvnXsRp/7pXgu1l6HWo7G+3rPL0W+jZCn6l/OWO0DqLUgB6rzwDBbn3+X+1xf8lLxNcxB/BBcLpjCRioBSrHawVwq7AehbatJPrjADTstTU4sC/HyzPRgQlj/rETjOl+CDKq9d8lxQuZ2G5MIDCXcF6etaIqZDE1YcN0enIdx3IVQuQDKuo4n4ihFcLXrvhhAjJqcwWj9p8hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j7e/L8hmY0k0fIIWsho3LzjcH9ks73aeS8bKJoQRAFA=;
 b=BuxJCPB8FKJJRhNoYjHIA6UNY3QXEpFFy0skd3KOW+7IT1Age650YqpyxJMyj6OhdzEa59nqRX1EdpgeDhqQ6XXefVoxvW0lP+bqMWDsLUgcK/zHNooJLNnN0VXSFIZdfju1fNOTH4FLt8MqWUaI3Tw97KqbJYk5BdE+7ptc12jpaRcI+fSPTlgqzP0dzvPXuPtUUQDM/TWwxcLsdSR1ZiZf05Y8O9hWpgldXqFHUodgJfkWDDssJ601kvEqQmGl+DmQLpufvgfdKNqCMvqex/mhog9pbLcam9CON3hVQ3/rPDOtCbhRodJ8u/Yb5VPSyzovnBhBm1FBzKqdSKtBeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB8527.namprd11.prod.outlook.com (2603:10b6:510:2ff::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6954.27; Mon, 6 Nov 2023 06:34:18 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892%3]) with mapi id 15.20.6954.027; Mon, 6 Nov 2023
 06:34:17 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display: Use intel_bo_to_drm_bo instead of
 obj->base
Thread-Index: AQHaDX7jtGRRF9eIeUSGF6xhT/JWxbBm6v+AgAXwiIA=
Date: Mon, 6 Nov 2023 06:34:17 +0000
Message-ID: <afbfe8125487a7c579d665aba462d63aded83c7a.camel@intel.com>
References: <20231102112219.1039362-1-jouni.hogander@intel.com>
 <87sf5o2x0c.fsf@intel.com>
In-Reply-To: <87sf5o2x0c.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB8527:EE_
x-ms-office365-filtering-correlation-id: 801983f6-d48d-4fb7-8c64-08dbde9266ea
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nHjRExLXxyo69U4memDn13FgLFt/KV77oK/LZJflRxdv03UhZQaPh8pqZujUztINA5x9BDt/OAMVKR6t++tyUHoD8Z4pSMqF8AXqbbVFPNmhrmh1dNn9q2i/zt4gN/+BBdgpyMwQqGxEqz2jWYt+UYAysQiPf8xlEFPOdJyWQbs+gMeRTyEkefeVBIl7a97oGeZL+RYD6G2QZBDu0FMi1YpbGC5ybYflGkowrd6ufh7NtmglbJqSn3Nq6Of0Ij0aT/SgZZDM0T9+wp7DPtTo8PhP48G1sLmwmmyECFrw3a0OUVYJDpVbv59n1nvXgHGFQB09lHdAP55p4RLEmAJo6DfTeWp4aqVV1WmBpnC5mBLEp+wVwjN7tfBrwWZc/neMsrZ2KrYvKReHJJaBDpdrmsZpVGMnOAXSaHNviKapyMYGrLmY5OZTAopVqdwkxNbvhVae0VueM37bm+QIkOi+K6XNb9jIKqKsxq4J2CSRlMm2YRWab2mtVy3zKuekvwR+Edzhd6F/7cM7TqP9hpovvL/bdEcjHrU5rD9b8MqQXyMwwoH+hXO89Ta3FMPxe1qI01Ch6s9+YvgEFctQrf4Ic7+DDKZnHYATpBSceLCxgyl0fBxzVooZ8CQwVK4Obs8P
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(396003)(346002)(376002)(39860400002)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(2906002)(41300700001)(5660300002)(6486002)(478600001)(8936002)(8676002)(64756008)(66556008)(66476007)(66946007)(66446008)(76116006)(91956017)(26005)(316002)(86362001)(38070700009)(66574015)(71200400001)(6506007)(6512007)(36756003)(2616005)(110136005)(122000001)(82960400001)(83380400001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dVhVR21wY3ZaVFhrRzhLTFh3ZTJnNS81UlZtd0lMS1RFMUowRU1ieSsyREZT?=
 =?utf-8?B?bXJwNnNZTWRUQTB1bVJaN3BIa2lSZlBvRjRERmpCKzZxVTdkNUFVcXdibzU2?=
 =?utf-8?B?Y2xTSWVkdEcwcE9STVhjQVpuYSt6MXRZTUJKc0owQ05NZ0hzR252Z1BjRHdp?=
 =?utf-8?B?WVhSVE1KTG9oUGxnYmNKVXQ0UmM3bTJlcjBxQXBUREplOWR2Q1duVGpLVVBB?=
 =?utf-8?B?aUF6VS9PNVlUcHlMRDBXMmpiNVBzZHZxeVJrNE1jMzg1RmVOK1JhM3BJZ292?=
 =?utf-8?B?enpQc2FrY3ArUkladUI2REdDbzhUTnY5bHhneVRxLy9Ed1FSMGtkTHBuZ3Jw?=
 =?utf-8?B?V29aLzZ5Z3dJWVZVem1JNDVLOXJOdkdaL2hVa2ZzcnhWcUYzU1U3TWp1dFV4?=
 =?utf-8?B?Wk11dkNRaWRVNFVUOUhWc05IL3JYd3Y3dGcvTGUza0IwczhnMEE3K1RnWkIv?=
 =?utf-8?B?VjVZVTBxekw3L2VzeFJUN2U2NVZGY3EwNGwwMWpSV2M2L3FCS0Vrd3hzMWZt?=
 =?utf-8?B?czlNa0VoQ2tYLy9YNEU0YmdzUnVyTjZBYis2R3pNdGVPUGVFMmsvQU13Y2Rq?=
 =?utf-8?B?Y1pMYVZtQmd3ZHVrMUZKRUkzSmxMcnZOM1U4VFBRMS83MW5tUW1HRUdhNk0v?=
 =?utf-8?B?cnZWNENrVzVOd1NyZ3ZiMDljcCtJYUM4RnRtc0xKbnFEWGVDcnlkR0Nsek9B?=
 =?utf-8?B?blU2Z2pjWXNYbG14dklCaXlZQkEzbWRVUDZ4aUpWaGlzRmgyQVd1d1hPNUFQ?=
 =?utf-8?B?a1VIYmlIWHJTZnRFdU9qK0VqcVpaL0o4ZnVBNEV4SVVpY0NXNUcvcDBoSWs5?=
 =?utf-8?B?N25EZVlXTkFNekRFRytRSGViTmttVTErcXRTVmdNM2thVWtYMEZCc0hNTWJ4?=
 =?utf-8?B?ZEJPOXFTOENyblh4emg2T2h4UGlGUGNuNmx6RCsxRytkUUxkWExoeVBYem1N?=
 =?utf-8?B?QkpZSzdxYzl2Z3JxbDRmdUgxYTd2MDRJNFlFaDhYemRobHcrK3pNVytIcndo?=
 =?utf-8?B?ZWZrSnVIa1pDZlEvWFJDUG1lYnJ1V1N3L1JOSVA0UjBFcHdSUUp5alI4dXVR?=
 =?utf-8?B?bk5OQnlaKzBLWEVna2NlaVNxVlBCZUhxVFFzU0JXbmFrVjFtWHBXYkFNVC9F?=
 =?utf-8?B?WW5VVkZJSTY0cWNpZjhNaURTb25ML3o5eFdEdGw0dFRvTG1tdFg5TmtBTUt0?=
 =?utf-8?B?aGZVbTM1UVB5RzdOeEpBdXJmSkR1bVY5dStlOGIxdW9pOVBJWUZOYVVlL3VM?=
 =?utf-8?B?N1VPQjFqTWJTYUp4UGQ0VFdyTWRqakZnczd4Qk9JWldiUTYzSTRsa01qWmM4?=
 =?utf-8?B?bStKVWhGRnIvUytxalZQU1VraTNKSTdmZTNON285cHZxSmRuRS9vVEhQOEhr?=
 =?utf-8?B?WDV3UCtucXp5WG4xQVgvOWQxVFVzZkVrbVl6WlRsMjliWUlSMFhFUndyT0pL?=
 =?utf-8?B?MVdBSFRjRFI2cWpGTGpCQXl3NXpMQ1ArbWJZSnU2UmxQUkFLVW5EK0xESVEy?=
 =?utf-8?B?QXNGQUNKaTdrTXlDUkNQSjhxRzh5UlJmY1hBdUdYSkZWTWVTRDM0WjhsV1FR?=
 =?utf-8?B?Ty8weG55WXhhMWZuSk10RHNOUmdoOUIzODBZTEFodmc1eHVaaHFnUDkwSWFO?=
 =?utf-8?B?Mi9FWHdkZ1VvSTlGaHkvQnA3ZWpobXJ1dGIxU1dQRE5hQUNINWYzczJPTlVR?=
 =?utf-8?B?Tnd6ZitlSlpmSWNLNEZ3TnE1Rm03a3p6dzFMT2ZJbDFzRFM5c3NKZ21mRHJK?=
 =?utf-8?B?VGZnbllKN1JNbjJPVEdwYXUzc1V1TEhnb0I1aEJ6SkZsckdKM0wvRWNFUW83?=
 =?utf-8?B?V0k2QmM1Z3dNVU92UzJFTU1vL2E1K09JWFZOT3FUbGl4OVFtNko5K0hRUWM2?=
 =?utf-8?B?OVJWenB5NFkyc2VITStmbVVNc2lOMzlHYlFVU25qeEd1NTlVcTNRclFLblN4?=
 =?utf-8?B?VHk3VWR2Y3U4aWNKbVJVNGxFbDk2ZTlsY29HTXJGa1NzYkdYMFg4Q2Mydmxl?=
 =?utf-8?B?aW9XT3NWR1liT0VUQmlZK1I0RDQvUzFudUN3azNRNzdLcXVBUDJIQzN2MlVQ?=
 =?utf-8?B?Ty9STXNrZU1HaWFyNGdkazlpOG5rWGk2R1NKM3YzejM3T0FteSsrU2IwQ2tv?=
 =?utf-8?B?QTI2QS9kQWdaSDFud1o4Q0RNcTYxOTFWYmRzWWtTMzAweXBqTEE3MVFwcG9i?=
 =?utf-8?B?Qnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <97CF01922613CF46BEFA1AADFCE3BFBA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 801983f6-d48d-4fb7-8c64-08dbde9266ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2023 06:34:17.5893 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: trxe0SmhpVBK73ukDTnNBtR9ZTycA03LuYOXhFf4w1eb6vdxKUquQFBHcWb083FtfNM44yJ0TTt7pxnx1rI3HlGXqK9/YuADxyk19Ch6dwo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8527
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Use intel_bo_to_drm_bo
 instead of obj->base
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

T24gVGh1LCAyMDIzLTExLTAyIGF0IDEzOjUyICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiBP
biBUaHUsIDAyIE5vdiAyMDIzLCBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVs
LmNvbT4gd3JvdGU6Cj4gPiBXZSBhcmUgcHJlcGFyaW5nIGZvciBYZS4gWGVfYm8gZG9lc24ndCBo
YXZlIG9iai0+YmFzZS4gRHVlIHRvIHRoaXMKPiA+IHVzZSBpbnRlbF9ib190b19kcm1fYm8gaW5z
dGVhZCBpbiBpbnRlbF9wcmVwYXJlX3BsYW5lX2ZiLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBK
b3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4KPiAKPiBSZXZpZXdlZC1i
eTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KClRoYW5rIHlvdSBKYW5pIGZv
ciB5b3VyIHJldmlldy4gVGhpcyBpcyBub3cgbWVyZ2VkLgoKQlIsCgpKb3VuaSBIw7ZnYW5kZXIK
IAo+IAo+ID4gLS0tCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRv
bWljX3BsYW5lLmMgfCAyICstCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwg
MSBkZWxldGlvbigtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYwo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jCj4gPiBpbmRleCAzYjlhNjY5MjM0MjIuLjA2YzI0
NTViZGQ3OCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYXRvbWljX3BsYW5lLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYXRvbWljX3BsYW5lLmMKPiA+IEBAIC0xMDk2LDcgKzEwOTYsNyBAQCBpbnRlbF9wcmVw
YXJlX3BsYW5lX2ZiKHN0cnVjdCBkcm1fcGxhbmUKPiA+ICpfcGxhbmUsCj4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIGNhbiBzYWZlbHkgY29udGludWUuCj4gPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqLwo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBpZiAobmV3X2NydGNfc3RhdGUgJiYKPiA+IGludGVsX2NydGNfbmVlZHNfbW9kZXNl
dChuZXdfY3J0Y19zdGF0ZSkpIHsKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgcmV0ID0gYWRkX2RtYV9yZXN2X2ZlbmNlcyhvbGRfb2JqLQo+ID4gPmJh
c2UucmVzdiwKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgcmV0ID0KPiA+IGFkZF9kbWFfcmVzdl9mZW5jZXMoaW50ZWxfYm9fdG9fZHJtX2JvKG9sZF9v
YmopLT5yZXN2LAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
Jm5ld19wbGFuZV9zdGF0ZS0KPiA+ID51YXBpKTsKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChyZXQgPCAwKQo+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBy
ZXQ7Cj4gCgo=
