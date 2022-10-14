Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 206CD5FE7FF
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 06:33:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A64610E9C8;
	Fri, 14 Oct 2022 04:33:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79CC710E9C8
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 04:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665722009; x=1697258009;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=MDFoUpv/yVIi3BwZOVALvkWCbr8aduePbdKr93sJLec=;
 b=kNc3gi+nNrHYUNXecOxAf9uVFOQ1+t/ykMj/ads0PC5EDEGYTD/8BvZp
 aLtZ/vXU6c86AA68ao5hh+1Y5wPtbiS1KhRrm5ZUWc2vUQeVa8XteQl+x
 VFG0oZaC3qVWlJGgwv147YdbMnNG4z5/zZPvT+e+ERrjHSsmHec2d0XjB
 jzP6a/ODzewoLWkf2oJM3yk2g8pDHJebmSeOAJtoS1vlizlj5fPZtiuiW
 jhSufot8lS454qsWudgJ0Peb9uoroGBlA0GyqYm/9ABcgVfMppKhXxcMz
 J9TC6XjEYI/XD0lXiTvfwdNIwYs/0ychQCEG+eneo0b0eq+dEUKQAOBCO w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="306355169"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="306355169"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2022 21:31:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10499"; a="696164126"
X-IronPort-AV: E=Sophos;i="5.95,182,1661842800"; d="scan'208";a="696164126"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 13 Oct 2022 21:31:21 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 13 Oct 2022 21:31:21 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 13 Oct 2022 21:31:21 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 13 Oct 2022 21:31:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TwLLlj40HpHaOjAaHGpZMfZJ9an3X5iUAGZyjr8Dy96hEpnkTwc5kF1X4vp8LxYbyTmnp86uy53o1K2dTTsEdoOmS/5H9z3bifpR/zr7UgBHv1tZiIetTxyMPddOhCLsDqHBOFL+Q/A1XgioMp3wDxpI5G6m5Y2GlJslMuz/a5WtoNheyZnhRGyao9HuOmtXvzqPa/GL53GLwjjWDP2aQlnPvqGgW6w9SuExsV6ruzt2/uC/JiD67y4x2rUP+i7+tKIpqpFKWpgKpb59OkjvLv0BwEsB/5v7T+UDoRPz3OdyqeWVCeNozAp2KKA4eapGy4evXNiSodaV6CXdCVYUMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MDFoUpv/yVIi3BwZOVALvkWCbr8aduePbdKr93sJLec=;
 b=PbkiFTrCLubt6KX8nBbrnUhaFRdqXJYMoHpX3/fZhtiD9CNYiHJzFA5l3M6r5QY2p22HscBrSI1SCOZSnDvCp7D4aFZzMzIC+3lIlbzJtQdFywOkpbnDfsSJ2s9BrDvcbMT3o8Eh5c7uHOzQyp4XfQ9aurJ62OjxF/b1blE1zsKLD3vmHeY0eNZN1BOzXLpztHQU/7PrnA1VhMuLgrr5N5CdJtaNvBSbr5qP9bYuXdufy+IOBwRwQGQgIQhzzkEiFrW7fSSP/C3c/xhOGJ6l75b6kZCCNw5yrIrN61boAmSvK0+dM5xOT8REXZOijZxuTT4On/1Kwio0oXL7YJfk6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by CY5PR11MB6512.namprd11.prod.outlook.com (2603:10b6:930:40::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.29; Fri, 14 Oct
 2022 04:31:19 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::6109:fe60:7e0c:f02]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::6109:fe60:7e0c:f02%9]) with mapi id 15.20.5723.026; Fri, 14 Oct 2022
 04:31:19 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Auld, Matthew" <matthew.auld@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/dgfx: Temporary hammer to keep autosuspend
 control 'on'
Thread-Index: AQHY3hVzPcDlo0NIikyM6xXPlXWgZK4Kg2YAgALHc7A=
Date: Fri, 14 Oct 2022 04:31:19 +0000
Message-ID: <CY5PR11MB6211148A0A9C8E4162D7896F95249@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20221012083402.1069940-1-anshuman.gupta@intel.com>
 <6fb51e71-bc5c-16d1-ad13-33017035be83@intel.com>
In-Reply-To: <6fb51e71-bc5c-16d1-ad13-33017035be83@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|CY5PR11MB6512:EE_
x-ms-office365-filtering-correlation-id: f8fbc200-7c70-4138-bcf9-08daad9cf0ce
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6wD4ucpROVjeaekh3iucOdCs9QhtgvZqbaN1jRNKuBedfs1RXygNVjzKP9CSG+bYl6s6W7ehU12ZcXpjfQrrlwX2wXdIFgoCsSzBGAcA6VAZ+iigaoh+z47mnWeciNBG/9tAxyq0CO7sUGfwbKN9yqkrWSN/1MfPLjHobm889A8vUZJsPccJhbV6IkEr3gpu5Pxiz6HEga80rWRrdKMvIzLyJFf2Ix75a953xbvcfy3F6E/NRXWgpIX0TRE2f6AWgUuMdmbNymVm2lBB6tB4XVFtM/pZIwiv2A9MpyE3u0ftHHfFu2frLWKDn1C6HcEqquvk5qalkuefQEckOAbx4gKy30F/uUD4oHogluQu4cLoEXH/34whQ0unpIuF8ZWm7Tr8bU3RBGcWIc0UkfMUL7EeV1BVFuCC7644zNNUMNOYbsAFcwPEisFtf+2dpe5GEctwcIrV9UdjWKOhQQ3Cx+3rIUYqAonR/dtX0l6h19lpwdeFEYJftp+KThpuWJOvpMMtcBP/rhlXTbscyWILzIagAXcR2tW35Hh1EM6LyBUSgz7bCLWlcUtwqbPSXVP6IWf8/Xo7Z69Rj6fn50YN7kqP3kL0fPyA7U5E3pc6gdF++GRZd6DBWsB9OpImV/IeGfC0TJXU3EJECD0Utq1VHtTMWRBVwLlW+KJZYqa+CCsVECLFw4gAzGd5QWl+4Q6WlhloT2p66uDNvIq2i28seJkZS343EG0CZNmvZWjyFY8AEGH49gePqA8dCy6JMyX21CRFnJJzkP33MQkrwbZxbw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(346002)(366004)(39860400002)(376002)(451199015)(2906002)(76116006)(38070700005)(83380400001)(66946007)(71200400001)(8676002)(4326008)(8936002)(66476007)(66556008)(64756008)(66446008)(53546011)(55236004)(33656002)(82960400001)(5660300002)(9686003)(41300700001)(26005)(7696005)(38100700002)(52536014)(86362001)(6506007)(55016003)(54906003)(110136005)(122000001)(186003)(316002)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R0ZoL3QzTTVzMmJQTmM1c3B3SUhlbDlPYnZHaXN3M1NxVTRhNFhQRjRXWUFO?=
 =?utf-8?B?T1l6c2YxNXNNWkVpZGxQRjBSaTc1QjAyMitDQ2NSdllPWWxQUDgrUmdGaXRB?=
 =?utf-8?B?YTdoUzFmZEdTSlpxTStwNjNyenJacHlzd1Y1SENrS0J0ZVJyTXpja09iRWxk?=
 =?utf-8?B?QzZMbEhOUlJodWdXb21LTnB0cTYwVUFIV3ZjMktiOVppZDdwR3kyNlM0QzdJ?=
 =?utf-8?B?bjRydVB2QkF5Y25yWEJFYnZBTFdEZ3dZd3FTWkluK3Bhd2JCZjBqbVdvdGhK?=
 =?utf-8?B?SGoyMk5ZYmVvZnZZdHJ4clhraXlpMzdwa2dvbm1VcDAzc2NKRHRPeS9xMjUw?=
 =?utf-8?B?TXJEU2thSTNzbjgxbHNLZkNSVkVBdG1VSDFGUUxqV2c5Qm1ZaWtjeit0Z1Ju?=
 =?utf-8?B?aUJ3b3htUVdDdXEzdUltZjBTQkpOSGhKUVQ1TElYQkNkN3VYRVgxWng3S2tR?=
 =?utf-8?B?N2VZdWJ5a1FRR1hEbEF2Si9uRVBMaEhBWXhvMUl2RXBSamt4dCtYTjdyTU1I?=
 =?utf-8?B?eCtuRnNUVmtPYjZwTWg0ZE9NaElnamtRWFphRFQ2ZHBTNmNWbFdKczZPSURH?=
 =?utf-8?B?QlRybXFqb0R3R0FBek00QWg0RnBRQWsyN2VIaXYzS2VzMlFTYlJHUVg0WkVs?=
 =?utf-8?B?b1JGajFKT3JrN09qNStlR3V4OFB6K3JXMGhVRHNQK1RseTRwSXJzL2c0K3pG?=
 =?utf-8?B?Ykl5THVBOTl1NlJmWUFRNFM1dVVZeU1xZGw2U2R4NmpuTXJVQjQvNFlVWlZp?=
 =?utf-8?B?eFJkT1RKRE50blZhYkg3VXlkZzhiNlN3V3RISzlQcUdXUE9qZVk2K1ptc2pT?=
 =?utf-8?B?TVcyRm9hb21TQ094a29QOE9LUk8vWkZKdE5ocWJzNjJZeXFRU0MyTTQ2NkdP?=
 =?utf-8?B?RW4rUEVGZjFHS2ErdzRWUnhLL3JleXZvWk5GR21uSU54UGgrY3JMN2l4d0Vi?=
 =?utf-8?B?K20zZ2hqNW1LY0JYaWZ0ZVE1UE4zcHFVRGlVZHN5MDVCQ1FmVVh0bHU5NWpM?=
 =?utf-8?B?eFU0eUgzTGFVaFhNL0srY0hyVjhxNDBlWlJlWTdGQjZtaVUwU0dpVEMxZHV6?=
 =?utf-8?B?d3BML0hWTWhzOE5IZWp5SGVWb2ZzNVE1ODNaTVFRZkltbVlQZnRxOUhjWWJm?=
 =?utf-8?B?ai9WQytZa0xNUExLZmhXRWtNZkVzcGxkUjN4ODg1dmsvUGNHcDlYYWtiL0dQ?=
 =?utf-8?B?cEpBVnZBYUpxK3pKQ0R3WVNCdmsyWnFqNjR5ZUNqK1d6RjJpV3M2NFhhalNO?=
 =?utf-8?B?Tm1lK3plNDlMQkpobEt4RVdoZmlvTXN5Qk8xZDRsbHpMaVd5cy9iMHRZVVJO?=
 =?utf-8?B?YlhrSVZyOE5LZnppOGRuQmJVcHpZeU1hVFVTQTBzOTBVUk9PVGFqYVFacjhr?=
 =?utf-8?B?Q1dQUVk0bWlIQmEyZWo2RDJSZE1aeERJVnpvVExWd3NhOGhuYWVMQU9lUjVJ?=
 =?utf-8?B?SUIxaEswbUZzK1F0NUQ2WWdqUzhOQWJ2blZ6R0p0ZzBsTXlnKzRJa2xEZDE1?=
 =?utf-8?B?dlV2MFdrRVA2Um5pUkhPUGtmOEpTRDZYZHBNb3h0VWo2NHkwTEhDcDUvZjJI?=
 =?utf-8?B?WVNKWmt5ZWVXMGZXeG1Gc3Vjd3pHbm1lNGJLbjVYcWFtVHpKSHRxMCsxdHA5?=
 =?utf-8?B?amhQM0RZQSswYXl6OUgwdUovaUxEUm5JOFJ2TlhyVXB6Zk5WTGdsOEpsK3NK?=
 =?utf-8?B?c1FBK1ZGSWxhckJiazlrajNPTnErZnViUDlvNE1CbGhEMXhQY01wNEpURDVE?=
 =?utf-8?B?TXZJVlp0U3lGUlJkWlN4QjZWUGlwRkQ3MTd0TnZwdXBWc3hUemY3LzkrVG95?=
 =?utf-8?B?MXdScnozRVd0b0MwZGNKSHNWVlJqbHdrZWtPWURTOXlabW94Y21wVU0zd0Zl?=
 =?utf-8?B?Y2F3K1U1ZnBLcVJUR0RVei9SaStOYW5QclorTGREMUZoT2t5ZjdCK0ZLQUxi?=
 =?utf-8?B?Uy8xNHBKMWNDY0gyWHd3L0hTcHBFNGJHRlFIRUNQL0FKMVdzb2NtQzJWR3Y0?=
 =?utf-8?B?ZldtT3N1TEo4OVh1Tks1ZSt1b0FBaUN4d3ZQRE5jQ3VqTzdTd0ZlZHo4TTU2?=
 =?utf-8?B?T1J4aStLQWo4aDlNSk54dUlvcU5uSXJVbnYrZlVFeFltYU5hVzc3Q0E1dWlw?=
 =?utf-8?Q?LHJQi+spFEH0t2KiJuxUDB9Wm?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8fbc200-7c70-4138-bcf9-08daad9cf0ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2022 04:31:19.2618 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xm80Elv0YsgNHQEpifPRLF5pkVhEMYdgj1xf3ZOjwnfQCHag+k9+1aXo4gAxC/s2kEUL0qJvMxW+MoJbDogrh+BA1LvP7Iyrk1AbTsHRWYQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6512
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dgfx: Temporary hammer to keep
 autosuspend control 'on'
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
Cc: "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQXVsZCwgTWF0dGhldyA8
bWF0dGhldy5hdWxkQGludGVsLmNvbT4NCj4gU2VudDogV2VkbmVzZGF5LCBPY3RvYmVyIDEyLCAy
MDIyIDM6MTkgUE0NCj4gVG86IEd1cHRhLCBBbnNodW1hbiA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwu
Y29tPjsgaW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGpvb25hcy5s
YWh0aW5lbkBsaW51eC5pbnRlbC5jb207IHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbTsg
Vml2aSwNCj4gUm9kcmlnbyA8cm9kcmlnby52aXZpQGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6
IFtQQVRDSF0gZHJtL2k5MTUvZGdmeDogVGVtcG9yYXJ5IGhhbW1lciB0byBrZWVwIGF1dG9zdXNw
ZW5kDQo+IGNvbnRyb2wgJ29uJw0KPiANCj4gT24gMTIvMTAvMjAyMiAwOTozNCwgQW5zaHVtYW4g
R3VwdGEgd3JvdGU6DQo+ID4gREdGWCBwbGF0Zm9ybXMgaGFzIGxtZW0gYW5kIGNwdSBjYW4gYWNj
ZXNzIHRoZSBsbWVtIG9iamVjdHMgdmlhIG1tYXANCj4gPiBhbmQgaTkxNSBpbnRlcm5hbCBpOTE1
X2dlbV9vYmplY3RfcGluX21hcCgpIGZvcg0KPiA+IGk5MTUgb3duIHVzYWdlcy4gQm90aCBvZiB0
aGVzZSBtZXRob2RzIGhhcyBwcmUtcmVxdWlzaXRlIHJlcXVpcmVtZW50DQo+ID4gdG8ga2VlcCBH
RlggUENJIGVuZHBvaW50IGluIEQwIGZvciBhIHN1cHBvcnRlZCBpb21lbSB0cmFuc2FjdGlvbiBv
dmVyDQo+ID4gUENJIGxpbmsuIChSZWZlciBQQ0llIHNwZWNzIDUuMy4xLjQuMSkNCj4gPg0KPiA+
IEJvdGggREcxL0RHMiBoYXZlIGEgaGFyZHdhcmUgYnVnIHRoYXQgdmlvbGF0ZXMgdGhlIFBDSWUg
c3BlY3MgYW5kDQo+ID4gc3VwcG9ydCB0aGUgaW9tZW0gcmVhZCB3cml0ZSB0cmFuc2FjdGlvbiBv
dmVyIFBDSWUgYnVzIGRlc3BpdGUNCj4gPiBlbmRwb2ludCBpcyBEMyBzdGF0ZS4NCj4gPiBEdWUg
dG8gYWJvdmUgSC9XIGJ1Zywgd2UgaGFkIG5ldmVyIG9ic2VydmVkIGFueSBpc3N1ZSB3aXRoIGk5
MTUNCj4gPiBydW50aW1lIFBNIHZlcnN1cyBsbWVtIGFjY2Vzcy4NCj4gPiBCdXQgdGhpcyBpc3N1
ZSBiZWNvbWVzIHZpc2libGUgd2hlbiBQQ0llIGdmeCBlbmRwb2ludCdzIHVwc3RyZWFtDQo+ID4g
YnJpZGdlIGVudGVycyB0byBEMywgYXQgdGhpcyBwb2ludCBhbnkgbG1lbSByZWFkL3dyaXRlIGFj
Y2VzcyB3aWxsIGJlDQo+ID4gcmV0dXJuZWQgYXMgdW5zdXBwb3J0ZWQgcmVxdWVzdC4gQnV0IGFn
YWluIHRoaXMgaXNzdWUgaXMgbm90IG9ic2VydmVkDQo+ID4gb24gZXZlcnkgcGxhdGZvcm0gYmVj
YXVzZSBpdCBoYXMgYmVlbiBvYnNlcnZlZCBvbiBmZXcgaG9zdCBtYWNoaW5lcw0KPiA+IERHMS9E
RzIgZW5kcG9pbnQncyB1cHN0cmVhbSBicmlkZ2UgZG9lcyBub3QgYmluZCB3aXRoIHBjaWVwb3J0
IGRyaXZlci4NCj4gPiB3aGljaCByZWFsbHkgZGlzYWJsZXMgdGhlIFBDSWUgIHBvd2VyIHNhdmlu
Z3MgYW5kIGxlYXZlcyB0aGUgYnJpZGdlIGF0DQo+ID4gRDAgc3RhdGUuDQo+ID4NCj4gPiBUaWxs
IHdlIGZpeCBhbGwgaXNzdWVzIHJlbGF0ZWQgdG8gcnVudGltZSBQTSwgd2UgbmVlZCB0byBrZWVw
DQo+ID4gYXV0b3N1cGVuZCBjb250cm9sIHRvICdvbicgb24gYWxsIGRpc2NyZXRlIHBsYXRmb3Jt
cyB3aXRoIGxtZW0uDQo+ID4NCj4gPiBGaXhlczogNTI3YmFiMDQ3M2YyICgiZHJtL2k5MTUvcnBt
OiBFbmFibGUgcnVudGltZSBwbSBhdXRvc3VzcGVuZCBieQ0KPiA+IGRlZmF1bHQiKQ0KPiANCj4g
U28gd2l0aCB0aGlzIGNoYW5nZSBhbGwgdGhlIHJ1bnRpbWUgcG0gc3R1ZmYgaXMgZGlzYWJsZWQg
b24gZGdmeD8gaS5lDQo+IGludGVsX3J1bnRpbWVfcG1fZ2V0KCkgYWx3YXlzIHJldHVybnMgemVy
byBvciBzbz8gV29uZGVyaW5nIGlmIHdlIHNob3VsZCBhbHNvDQo+IHJldmVydCBhZDc0NDU3YTZi
NWEgKCJkcm0vaTkxNS9kZ2Z4OiBSZWxlYXNlIG1tYXAgb24gcnBtIHN1c3BlbmQiKSBmb3INCj4g
bm93LCBzaW5jZSB0aGF0IHN0aWxsIG5lZWRzIHNvbWUgbW9yZSBmaXhlcy4uLg0KSGkgTWF0dCwN
ClRoaXMgcGF0Y2gganVzdCBrZWVwcyBhdXRvc3VwZW5kIHRvICdvbicgYXMgaTkxNSBkZWZhdWx0
Lg0KVXNlciBjYW4gY2hhbmdlIGl0IHRvICdhdXRvJyBieSBlY2hvICdhdXRvJyA+IC9zeXMvYnVz
L3BjaS9kZXZpY2VzL2JkZi9wb3dlci9jb250cm9sICwNCnNvIHdlIG5lZWQgdGhlIGFib3ZlIG1l
bnRpb25lZCBjb21taXQgYW5kIG5lZWQgdG8gZml4IHRoZSBpc3N1ZXMgd2l0aCBpdC4NClRoYW5r
cywNCkFuc2h1bWFuIEd1cHRhLg0KPiANCj4gPiBTdWdnZXN0ZWQtYnk6IFJvZHJpZ28gVml2aSA8
cm9kcmlnby52aXZpQGludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBHdXB0
YSA8YW5zaHVtYW4uZ3VwdGFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5jIHwgMTEgKysrKysrKysrLS0NCj4gPiAgIDEgZmls
ZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+ID4NCj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5jDQo+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3BtLmMNCj4gPiBpbmRleCA2ZWQ1Nzg2
YmNkMjkuLjQxMGE1Y2I1OGE2MSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9ydW50aW1lX3BtLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9ydW50aW1lX3BtLmMNCj4gPiBAQCAtNTkxLDggKzU5MSwxNSBAQCB2b2lkIGludGVsX3J1bnRp
bWVfcG1fZW5hYmxlKHN0cnVjdA0KPiBpbnRlbF9ydW50aW1lX3BtICpycG0pDQo+ID4gICAJCXBt
X3J1bnRpbWVfdXNlX2F1dG9zdXNwZW5kKGtkZXYpOw0KPiA+ICAgCX0NCj4gPg0KPiA+IC0JLyog
RW5hYmxlIGJ5IGRlZmF1bHQgKi8NCj4gPiAtCXBtX3J1bnRpbWVfYWxsb3coa2Rldik7DQo+ID4g
KwkvKg0KPiA+ICsJICogIEZJWE1FOiBUZW1wIGhhbW1lciB0byBrZWVwIGF1dG9zdXBlbmQgZGlz
YWJsZSBvbiBsbWVtDQo+IHN1cHBvcnRlZCBwbGF0Zm9ybXMuDQo+ID4gKwkgKiAgQXMgcGVyIFBD
SWUgc3BlY3MgNS4zLjEuNC4xLCBhbGwgaW9tZW0gcmVhZCB3cml0ZSByZXF1ZXN0IG92ZXIgYSBQ
Q0llDQo+ID4gKwkgKiAgZnVuY3Rpb24gd2lsbCBiZSB1bnN1cHBvcnRlZCBpbiBjYXNlIFBDSWUg
ZW5kcG9pbnQgZnVuY3Rpb24gaXMgaW4gRDMuDQo+ID4gKwkgKiAgTGV0J3Mga2VlcCBpOTE1IGF1
dG9zdXNwZW5kIGNvbnRyb2wgJ29uJyB0aWxsIHdlIGZpeCBhbGwga25vd24gaXNzdWUNCj4gPiAr
CSAqICB3aXRoIGxtZW0gYWNjZXNzIGluIEQzLg0KPiA+ICsJICovDQo+ID4gKwlpZiAoIUhBU19M
TUVNKGk5MTUpKQ0KPiA+ICsJCXBtX3J1bnRpbWVfYWxsb3coa2Rldik7DQo+ID4NCj4gPiAgIAkv
Kg0KPiA+ICAgCSAqIFRoZSBjb3JlIGNhbGxzIHRoZSBkcml2ZXIgbG9hZCBoYW5kbGVyIHdpdGgg
YW4gUlBNIHJlZmVyZW5jZSBoZWxkLg0K
