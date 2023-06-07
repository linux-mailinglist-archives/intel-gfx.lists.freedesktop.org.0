Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 160B9725780
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Jun 2023 10:26:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DA1F10E09E;
	Wed,  7 Jun 2023 08:26:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A776310E09E
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Jun 2023 08:26:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686126363; x=1717662363;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=aFPNZtZ5QNOxN+UMEJqYFWJju9Ly+dCFeoGTEczEbwk=;
 b=m7YWWFcQXaxXgeFeqOtz4utc0pud83UFLqRLNfr8F0BUaZl8Fxeik6qy
 A9uvUDVUVqAP3FFFj2FGyMuysXwWoQHKeyPfvE28nZlSVBpf+b/76v2Rn
 Qi9CfaQPq1IbACIGpnlLOUkxXYjRF5bsgiuDV6g92hmFMFFDdQH9Pybo8
 DYDSZa6OB5zXvTUTJY9W5gGkR5wQIvYj1bSwfR/W4UuwuqQtJHfwK75VF
 /Sci27SmXoSn+PGAjiQiEGbQ910k3jekXkmL2GtBb2jOJPrZr9YHg63c5
 tqsfzmQR+VyNir2byOUWKAFauHra2+WhpNTAhmg7Xiy4v2CVXcoJvZmXU g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="355779686"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="355779686"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jun 2023 01:26:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="709393458"
X-IronPort-AV: E=Sophos;i="6.00,223,1681196400"; d="scan'208";a="709393458"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 07 Jun 2023 01:26:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 7 Jun 2023 01:26:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 7 Jun 2023 01:26:01 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 7 Jun 2023 01:26:01 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 7 Jun 2023 01:26:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kBSh46ajxDddC5V68gJdre+j9gswoMFHFj6PCfdoslhdaGVX3KvMdpqFRyca2FPWWRCurPg5KFKKwfl43Rr6dN4eWWiO2Qnnt1C4Ly3IhOebEw1fxUeHyTjBkhPiUtTrAP3im3RqThpYFMViMxR5DBR6lfKpeEBEd34hQ24qkQg9gvPlHXMUwTM5VzGIYo2wlwR7v8L72LFkW0XeFKB83qshchEZsoALJPGUZgKaxXb92YRFPj/v3XU2dFDVvTPv+Hizc3SvL2WPpBqlso0u6gQ6gdkrnNqquOLw4XK6Y6TjHBBp0FzUvNIeKjiDe1ML4/rComooQKAsTLYcd908og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aFPNZtZ5QNOxN+UMEJqYFWJju9Ly+dCFeoGTEczEbwk=;
 b=Ymy9RBZHB6osJyLwdKT8DUT/b0Kcm3pq0AGmCb+clKChEVZEHk24Yv8h8tbu2wS4XU3PPX2IQtqTu0guCFLD/Z4xMuq/T8ZDy8fJaNFegpD0XRhhk/o8GQ5dpz5xQf3gZoUulaiOvBlPUjAweelWuR0T99zyqV08YIyOQkMzvBkuo1exiMnLRsEUe2GZrydheTtGmKUTN9Iov65dUiwitTH+YKhpaGnor486J8wqTVnXzYNfQgt9ajYI0f1mFJmJMQ7DyFePpdrY5aU8KJeGpFYX3An1NIPtlg7jntxTlQUuQRKJo2mOXYovyxPu+NuJb8365ZfGPwxDee+QxGySbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH0PR11MB4789.namprd11.prod.outlook.com (2603:10b6:510:38::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.33; Wed, 7 Jun 2023 08:25:54 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97%5]) with mapi id 15.20.6455.030; Wed, 7 Jun 2023
 08:25:54 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/debugfs: stop using edid_blob_ptr
Thread-Index: AQHZlVWJRiTVB4jzAUeUbpdBkMd+rK9/CKwA
Date: Wed, 7 Jun 2023 08:25:53 +0000
Message-ID: <5a1ad448df6cd5540103d68c76db7fb7bde56c79.camel@intel.com>
References: <20230602132321.3199445-1-jani.nikula@intel.com>
In-Reply-To: <20230602132321.3199445-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH0PR11MB4789:EE_
x-ms-office365-filtering-correlation-id: 9025c4fd-ebb7-4e35-16e2-08db6730cf70
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cy36R8A/0aQISRpntV6QjVXnofYYp/rbkSIsu8oTPYIkjBOcEqh0Bs/3kiisaTd1KaHezd4Av8KHTjqXMVv67PPBHMx6AGXqRuRCWhEOGGWzWjXbiVM2rg9Y8nfJBc4OYhKpqD9VIibBxnLwe41MRJcaJwy93Y1AfK8n7kaOWhVf8xtbwfC4Zh2AZqJDUAuq6Vw18vKv4PJgpu3SLWlGPgOYSlps1yqR8gxqOQwFtXJxOdBksMtJOFDdbSBWocHjQgFdLOuUzaS+EWmciriklqX6Ige9GysPrYV//BTYmbCuIP1+sP4taZsjWGcRbpRaeg466gxkviyEmMPTYjYlIq019kWQoN/yQgtBuaNWVoNnRzwPlAZ2o8eWVstMAOqgoM07noN/2bDMgs6fsmCzIU4N5ZWGyBalBWTJUJB0hZe2c9klPQVTuqwoKeODC/8lFU+Is1rVwARomTp7Hig/56hmzE47c9ODUfZ+32dXTc/Bwk+fMUoZxdCb91n/CGAQUnqIGo2KaHz7DVroqPQpRpo/e0sT28eZcCpSFTZyteoDITKPnG0mjVs2VoA6qVMyJSkihelPD29qqNIJ8rIkcNL8rz5bbqWRr+6QjazPJa8=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(39860400002)(376002)(136003)(366004)(451199021)(6506007)(26005)(6512007)(36756003)(66574015)(83380400001)(122000001)(86362001)(38070700005)(82960400001)(38100700002)(186003)(2616005)(8676002)(41300700001)(110136005)(66446008)(478600001)(66946007)(66476007)(76116006)(91956017)(2906002)(316002)(64756008)(8936002)(5660300002)(6486002)(71200400001)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dFc1d1ErN3l5MEgzdmpQL1hRdVJQc245OWRzUzNRV2kzYklWQjBGd2tINitk?=
 =?utf-8?B?SHhEdXNWdlkrdUg5Z0J0bGpac3NhaHlCRHdhaVVxRzgybUFjQ0VKN3NSRjlZ?=
 =?utf-8?B?Tk9hbkcxUVYrL082NlJkQTJjTVE1TFRha1VpRURCSUFNcHM4UEpDWDY5T0Y0?=
 =?utf-8?B?dEU2b2dJbEp2K0NJTWRJejFiSjY5UjFUNlg2QU1qY0RxaXZFSUFUTFQxa29F?=
 =?utf-8?B?T3huRjZlMjgxcDhoVkZSem5MeVQ1bkU3bExDZWIrTU92Vko2K2VsNDFKTVIw?=
 =?utf-8?B?cDd0SC9XWkd3U3AvT0xzaUxvWFE5dVRWR1V3UnlRYzIrRWplMmhsa1dreDVj?=
 =?utf-8?B?dFpueC9hZ0txc3dMbmNmYW9PYWx0R0JRb1I0bEppUjlla09SQVZ2YkRoeFRX?=
 =?utf-8?B?T21pZEVpTUJyVElhTEgrcVhNVzVKdTJQYjNGM2phZGt0OXc3VnBNV2lRb1BE?=
 =?utf-8?B?N0hFNW56N2pYWTRsNSttc0lPeWsxUVphZ2pmMjcwV3RINGk1dVpUWi9kZ1Iz?=
 =?utf-8?B?WDh1NWNFQVhUZmJ6aHNodk1hblpHdGJLeEV3cWNJazg3K244SGlLak9nMGhj?=
 =?utf-8?B?WEVPaEM1VXNheFltUTZUcGFSOVRxSkFNS0t1S2syNTZUWXVjOUhFR1VLd3pZ?=
 =?utf-8?B?RytmcmhBWGphZEpkcVZDYlUxdjJXUWpUend2b0xyR1hmNVRYdGVmSWJlLy9D?=
 =?utf-8?B?djFoZXlxRXN4eDVhSWZMcWZDOGNnZVRhZTdwMHVieTBYYWVIcDF6SjBwRnZF?=
 =?utf-8?B?QkVoV29vZzlCTFlqWTNqdUpvMExKeU5xQjRlSDUxWG1LUE9oU3d1THAxNkFt?=
 =?utf-8?B?a3hZN3hOUXE3Nmd1bDZaRUxmREtwSXF3NzIzZ0RQaGtBNllETnoySzB0SDJL?=
 =?utf-8?B?S0cvNlY3a2tJU0NzZzg3cjNKVGVCZk14TmdKc1Uwbzh2Ym5YZUdBOVB2Z0Fq?=
 =?utf-8?B?ZWtJNVd2cFBXUmxDU2NNK2NyMDE5dk40Y1lTMVBFRVNuSDkxTk5Zei8rMjZw?=
 =?utf-8?B?THk5WnI5RGVPK3RSZVFlbUx0RkJNWGFoSnZqTUd5Y24rbFdqVUlMWGgzTU1N?=
 =?utf-8?B?blI0QWxNTERKRTNwL1FhYjFabGtJdDJ5elM3cUJaVm5QSnVnVzNKQ3loS1Vm?=
 =?utf-8?B?VlI2YWphSWVVUHBBQTZtNFd4c1VFTGVHWFNpNUJKQndMNitmV3V1TWhBZCt1?=
 =?utf-8?B?a1EvOCsrOVd5ZGRVTTlwWEV6akRjQ29adVo2cDFRZDJmMW1qTXNxTURjbndF?=
 =?utf-8?B?Q1Fvbmx5bDRXVTlLWXUrRUZSamJZVi9qb0lCd0poalAxY3VVdThUemUvQzVP?=
 =?utf-8?B?RzRKWmxwTE00TDVRRmo5NGZLc1pRU3FHZCtOOW9KUkdnNkpIb29wS0F0d0hl?=
 =?utf-8?B?ZXY1d1U1dXFhZjQvYkFRcmloWkE4M3hMMG9mRi9zRk9wWENmM2hYbmNBbVFZ?=
 =?utf-8?B?dEZhQXNMSEppMFlOa1I0OG80Zjk5Qjl2WmZPWTArWUg3cXl5NjlKUGU0WEU2?=
 =?utf-8?B?OE5GSjNWNUdnTGtiaHliNTVDQW9UQVVIbGxwS3dlYlhreXk0YWFzMG4wWlRh?=
 =?utf-8?B?N2F1YzhHWXZBSno0cTRFbFgvVERXdTdnZDFKRWxYRllHRDRBN0MxM3hoUi81?=
 =?utf-8?B?R2FOd0RoSzZSM1RwYmljTlZIZG9rNlJEaXVrWmY0MTRUcFNjMVI2UWhIUyt6?=
 =?utf-8?B?SThPcFBsZ2E5enVRMy9JTmhuQ3JlZ1o3VTdIdWFJZ2tROTVzNDhlem9YY1ZH?=
 =?utf-8?B?a2VsR0RZZmd2a2NUZ1JwWkNQZ0pnRnljcll6cXhVMTNLLzFkT2VmajduZW5N?=
 =?utf-8?B?bnVvSkhVUXRQYVNPcWVaSURFSXVQamRYdHNNVE81NWtnbEk2MndyN25ucXBM?=
 =?utf-8?B?S2ZMSng0bVRtb25uY1o0NlFpTFltNThrRG9YNEd0YnREcllEdlNIN1pZVHZn?=
 =?utf-8?B?eklLUXZqc0txUE1YLzljMW5Pc3ZOOG1DbFZMUnBWdkV5a1B4eFRHRm5sNDNN?=
 =?utf-8?B?UkN6YUxvbkJsZDdXYzEzdzJBT1JsMXUzdFVaM0dsclJsdXkrbE9kVlArcmgy?=
 =?utf-8?B?UWJwK2FScHEyeGZ5MDZ2TDl1QUNJZlJ1Qkk5eHc4QzlLbFloWFdpQUZSWUlw?=
 =?utf-8?B?WXhuM0lzdUVqZG54ZEMxclR3RHpSeGRaTEtCTEllM2RxNmRmT2hIbWxSdXRV?=
 =?utf-8?B?c1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5D132D02B5B6104189F76E7FB15FE15F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9025c4fd-ebb7-4e35-16e2-08db6730cf70
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2023 08:25:53.9087 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bueUGp5BhD/6Av4NfDQIGXRL9lERoHlE00ECRA18/vDHS6s67rOHunfL0o1cbm0fyvYjzACzFlubifuULuXv8r5aqu1GNGJ9Nl58lf9nAVw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4789
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: stop using edid_blob_ptr
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

T24gRnJpLCAyMDIzLTA2LTAyIGF0IDE2OjIzICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiBP
bmx5IHRoZSBFRElEIGNvZGUgYW5kIHN5c2ZzIHNob3VsZCBsb29rIGF0IHRoZSBFRElEIHByb3Bl
cnR5LiBTdG9wCj4gdXNpbmcgaXQuCgpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3Vu
aS5ob2dhbmRlckBpbnRlbC5jb20+Cgo+IAo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gLS0tCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jIHwgMTIgKysrKysrLS0tLQo+IC0tCj4gwqAxIGZp
bGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5j
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5j
Cj4gaW5kZXggMmE0ZGY2MjY5MmE2Li4xNjVlMmM3ZTMxMjYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMKPiBAQCAt
Niw2ICs2LDcgQEAKPiDCoCNpbmNsdWRlIDxsaW51eC9zdHJpbmdfaGVscGVycy5oPgo+IMKgCj4g
wqAjaW5jbHVkZSA8ZHJtL2RybV9kZWJ1Z2ZzLmg+Cj4gKyNpbmNsdWRlIDxkcm0vZHJtX2VkaWQu
aD4KPiDCoCNpbmNsdWRlIDxkcm0vZHJtX2ZvdXJjYy5oPgo+IMKgCj4gwqAjaW5jbHVkZSAiaHN3
X2lwcy5oIgo+IEBAIC0yMjgsMTkgKzIyOSwxOCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9oZGNwX2lu
Zm8oc3RydWN0IHNlcV9maWxlICptLAo+IMKgwqDCoMKgwqDCoMKgwqBzZXFfcHV0cyhtLCAiXG4i
KTsKPiDCoH0KPiDCoAo+IC1zdGF0aWMgdm9pZCBpbnRlbF9kcF9pbmZvKHN0cnVjdCBzZXFfZmls
ZSAqbSwKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmludGVsX2Nvbm5lY3RvcikKPiArc3RhdGljIHZvaWQg
aW50ZWxfZHBfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHN0cnVjdCBpbnRlbF9jb25uZWN0b3IK
PiAqY29ubmVjdG9yKQo+IMKgewo+IC3CoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9lbmNvZGVy
ICppbnRlbF9lbmNvZGVyID0KPiBpbnRlbF9hdHRhY2hlZF9lbmNvZGVyKGludGVsX2Nvbm5lY3Rv
cik7Cj4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2VuY29kZXIgKmludGVsX2VuY29kZXIg
PQo+IGludGVsX2F0dGFjaGVkX2VuY29kZXIoY29ubmVjdG9yKTsKPiDCoMKgwqDCoMKgwqDCoMKg
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChpbnRlbF9lbmNvZGVy
KTsKPiAtwqDCoMKgwqDCoMKgwqBjb25zdCBzdHJ1Y3QgZHJtX3Byb3BlcnR5X2Jsb2IgKmVkaWQg
PSBpbnRlbF9jb25uZWN0b3ItCj4gPmJhc2UuZWRpZF9ibG9iX3B0cjsKPiArwqDCoMKgwqDCoMKg
wqBjb25zdCBzdHJ1Y3QgZWRpZCAqZWRpZCA9IGRybV9lZGlkX3Jhdyhjb25uZWN0b3ItCj4gPmRl
dGVjdF9lZGlkKTsKPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqBzZXFfcHJpbnRmKG0sICJcdERQQ0Qg
cmV2OiAleFxuIiwgaW50ZWxfZHAtCj4gPmRwY2RbRFBfRFBDRF9SRVZdKTsKPiDCoMKgwqDCoMKg
wqDCoMKgc2VxX3ByaW50ZihtLCAiXHRhdWRpbyBzdXBwb3J0OiAlc1xuIiwKPiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJfeWVzX25vKGludGVsX2Nvbm5lY3Rvci0KPiA+
YmFzZS5kaXNwbGF5X2luZm8uaGFzX2F1ZGlvKSk7Cj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgc3RyX3llc19ubyhjb25uZWN0b3ItCj4gPmJhc2UuZGlzcGxheV9pbmZvLmhh
c19hdWRpbykpOwo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoGRybV9kcF9kb3duc3RyZWFtX2RlYnVn
KG0sIGludGVsX2RwLT5kcGNkLCBpbnRlbF9kcC0KPiA+ZG93bnN0cmVhbV9wb3J0cywKPiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBlZGlkID8gZWRpZC0+ZGF0YSA6IE5VTEwsICZpbnRlbF9kcC0KPiA+YXV4KTsKPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBl
ZGlkLCAmaW50ZWxfZHAtPmF1eCk7Cj4gwqB9Cj4gwqAKPiDCoHN0YXRpYyB2b2lkIGludGVsX2Rw
X21zdF9pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwKCg==
