Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DB0688755
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 20:05:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C92610E5E2;
	Thu,  2 Feb 2023 19:05:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ED1F10E5E2
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 19:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675364732; x=1706900732;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=gDSkC4grdMkn16EGuxpY2hQVLbzFeUHy+wUoWiRZpFA=;
 b=hU5eKlVUu+hJoAw5NPvMU22tVnLy7etadMTbFc850JLA93RVinx3J7D/
 fxI+V07zowOljDYyvdhhUn5CkNN5nacbU70rL9tu9iLmVJLIzRJ5PHHv1
 vOLxreMF/8blyScR1tKzWSFC2EMD/VFqxTlNX5RuBOjRFakU24PDZgkcq
 hELcfrIo3frCDBNzGAHq+N/lQRnfjhM0KggL8wvDGjc+mIC1hlTHVJ6nz
 wMDWWT7wEfKVyFpM3wejZ/EIG2mncbUKPP7nKqEU4PL8f6/qgwYGWKj0J
 4FAbsXEt5Ank8fIgl8kMGAEXkLmHbd77Wpd5dQHY8IkqnVQPDJ+Ba/9T8 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="327185357"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="327185357"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 11:05:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="789399221"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="789399221"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 02 Feb 2023 11:05:31 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 11:05:30 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 11:05:30 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 2 Feb 2023 11:05:30 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 2 Feb 2023 11:05:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FO0SOjoMYxZFpypilMeOLCq6PmRKJwwc1Hhny9Y/P8hy9qTnV7gutOEyBLUoj1tE0frYxOlNbbpPLH9c2WmAFJeZpSTxTvvY9Ur0wAZA7CthQmgD5mvloB1qn/7ePxIOhsOWudOUth7FqQ3YgMKfIFKrs9aVKF35t+kavUQmwvgQDCoo0qxeirjysK5KMN4XJYKD/EsAIQhJk46m6YD2PX8waPMCnidfSRtPM7xjCZSu6twb4ePFwL84EiYRNfNYzU5+ziPX2Q74PXH+ssjFBUjqh3TGAlGxVEAkfZS6Byr0X85/vYhf1/F99Ff48NLv/2LrH17CHyfrlYx+CgapKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gDSkC4grdMkn16EGuxpY2hQVLbzFeUHy+wUoWiRZpFA=;
 b=gCtTjbexO9VKvwQr4F+ip751d2bkBn38CFrff4KhgdWkAGzIaQICl7H8L8Nje03t9KCjLGUPwJg2wc5XNzt1aZtyAMXR72YfcU77o3b3SjabsAzbzTBmDvQ0/Dzrr9QsnyAaL9eDePbyCv4gD/u3+q2acw8v+hIz4crn1uE/oUyKVbVPaKFoWaAN79wNOBOKpg82jKDPLSZhXmuTzdIfUlcjVVJYwUi+NGEbOE14qDsSXgy9p1oQvZ2lp6/pJh2UeASRE8N1M3ahAVfSOEYfz9xApqzj74MMtAW7wq85LSccuuLaBG8LfM+DlQdShS6RdlRQvfEFVMe7LCVtbZpQ3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DM4PR11MB7376.namprd11.prod.outlook.com (2603:10b6:8:100::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.27; Thu, 2 Feb
 2023 19:05:28 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::e470:7eba:a68a:78be]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::e470:7eba:a68a:78be%9]) with mapi id 15.20.6064.027; Thu, 2 Feb 2023
 19:05:28 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 11/13] drm/i915/dsb: Write each legacy LUT
 entry twice with DSB
Thread-Index: AQHZK1pgvyoa6OUWV0Gkw5HoqjMz8668GjVA
Date: Thu, 2 Feb 2023 19:05:27 +0000
Message-ID: <PH7PR11MB5981B0FDF6E03F7849A19858F9D69@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
 <20230118163040.29808-12-ville.syrjala@linux.intel.com>
In-Reply-To: <20230118163040.29808-12-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DM4PR11MB7376:EE_
x-ms-office365-filtering-correlation-id: c4ac4afe-8da0-4692-a08b-08db0550728c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MuCX/HEdw3KwmFv8xh4vkWFddiH8MP+WXHJutDeYNT8aN02rZVC8FAaPuFaKc2ne4pREEPIrWO35f887RH+kN0gHvYEi+d2KxQKjP2ypleewTs6AKZ+BUT/zQ0ZR6GRXViHr5t6n4LDJCdfbB95diKOsKNj+PxGHjlcObJjiLuDnc9NygaobMDnOZmvBBpdEEXU0rERgoBsgNR6k863WZewDnrXPq2cgEi8V8XOAqWSC8Zkh22oX3mSQXJ4nj1/5CKA3TMxKqYW86dm3otUiuhIvOw/Ec9e88kigxmpDMmVNYc7l+DKc4tvDrqOme63qfp94DXoGdRkuJlVqTeU00S5gX3V0BBSGF4SIjjHLdWw9Xq9AvS5aBZcoX9Udz5WLzK+KyzeQjvGcRJa7PLaGLhvwEKqTc2hdV8J8JLPAKbOtXKp7dbl2RGSGYq4kNHwqQ2+R8SDnSrzq8rkFelmR+dgr8Yjh0uRKwo73KV70BS8RlZsVrkJgrFQ7M1NsqOzb1WLMi4q8F4ekfJ2wwAldgpxiq5DslFYn//7r3GKOAvqsPwAI/MhvlTg3AR3Gxnfxy2yAkBOAIhd2VUOjExDMxVS9CkoBPNoMa4fG2n+9H6WDqhO3lzkNaAw1jsAoxONA5gzGjjEZJ6rqZ+kYNplggWoqwkEVyx6e/iiuQgPGJzLpnUhngwoCZl0a/5joYeCnHfHZXtFUj6RzURPiGMQ1gQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(366004)(39860400002)(136003)(346002)(376002)(451199018)(53546011)(26005)(186003)(55236004)(9686003)(6506007)(76116006)(38100700002)(55016003)(83380400001)(66946007)(66574015)(8936002)(66476007)(33656002)(66556008)(86362001)(64756008)(66446008)(316002)(8676002)(52536014)(41300700001)(122000001)(82960400001)(7696005)(110136005)(5660300002)(478600001)(71200400001)(38070700005)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VWR1OG5GMU11MHFxM2h6WXV3elZZdjhVaHoxbkJQVEFWODNpYmJFaTVheXA4?=
 =?utf-8?B?L0NiS2Nwd1RBV0pWRUQ3TjR2OHlHbEpvNWFtbzdFMXdVYVAxbXdJelc3bUw5?=
 =?utf-8?B?d1FZS0pHSVBIbWtaVytEaCtadFFndUgyRk1nZDVQeU1xU1BMZlVKVWhvMXJ4?=
 =?utf-8?B?SFgxRTA2RVVNL3ppSUp5eU5ZQ3loc3hFNDZheHg5QXNRWko4OHI3c0dEZnM0?=
 =?utf-8?B?cDA2WDh5L0lyaVlQU0ZkeVhYU2JJWC8zUlNnbTJNOGV1L08yRWxHNnhRSlVz?=
 =?utf-8?B?UTl0OGowYmZsQWZxT2Y5Rlo1NVJYa05pR0E0N0w3aXhlSzhOTlJMWDY4TGph?=
 =?utf-8?B?aTFMdnZtaUR0cTJPTG9DU0JVRW5ZNGpOSE1zVXRacDhNbGpTUkdycVpYRlBn?=
 =?utf-8?B?NXBzNjVkSEtvUXZYTVlUTVdxYjhlZmJHeVdkMzdWQ3JrdGgzZWRPNnBYKzl3?=
 =?utf-8?B?MWZma0lTVEx2dVB3eEZUeVpvdnM5VUFQclY5dHcxaTJraEowdzR5THh3U0NC?=
 =?utf-8?B?alJFMy83b05MWDVjbEFzZDJTUzgyTnBuQysyRmJYenhFQ0x0Z0RlU3ZUN2xW?=
 =?utf-8?B?RjFQU3dzdlFtWDNPdFdwWkI4Qnh2WUxoWmVTcnZNTlZkSENjRHdmdHNtTHZm?=
 =?utf-8?B?Y0VVQ2Q5T2x2YmRuc2N2dk8wc0Z1VS9vMkJlbEtYcjd5ekJGODY4c2gzUVZH?=
 =?utf-8?B?ellLQ2tPeVlYUG5abXdOMjFDNjdjSHllalFtQ0xQeXI2c3NLSTIzUHI3UGpL?=
 =?utf-8?B?MmRsZHR1MVBleWM3VlFTcldXOEdMam45dGh1TFBxL3MvL281dXMxQnFtY2NZ?=
 =?utf-8?B?R0ZTNnk5NjUyMW1FcEMyY1lEMU44U1BJWkg0anV2Rno4RVVEdHdmUWN6aE5l?=
 =?utf-8?B?cFZpSmhac1VQU0dsMEYyT01aeWpoTmsrbkU1OTFKU3VDbCtlTGU3RDgxOFdT?=
 =?utf-8?B?clZ4aURGeVpCRVMrS1Rnb0J3bk9La3dvam5lNTZRZXRBVzBna1JnUEttUWE5?=
 =?utf-8?B?Sk8vL1VyeXIvdGxMem9wOU51UGtnL3VPaXV4VWZhVTVHSWNxMUZBaFR1NUls?=
 =?utf-8?B?cnA3KzJmT0N3czB0dStoUFJZN0xiTjhhLzR2STJyelJFNE11N1J4Zng1a2cx?=
 =?utf-8?B?SG1BdWZUeVdNUWNTWWQwU2lsTXFYYVhJL2xRd1JYQ3JidmQwNFI5aW1Xbkdl?=
 =?utf-8?B?YzJhUUl2RDBqQll1Tk1QTUp0L3hydWwzdVpUMGlqRDRzTWl2UThTM2c3WllQ?=
 =?utf-8?B?WFh6eXFnSTJwMFQxSDh0cSswY2ZJK0FPeWtzVGRsY3hHb0FUQTkra25YdElp?=
 =?utf-8?B?WitDeUpnRk0rTmhpMG5OZGRUOE1KSDdRcDZidHNQcDE5bmVZRG51Zmwwamdr?=
 =?utf-8?B?YzllWFFobTZDUkcrNzdxMGJlOWM3VXRlVmc0THhIQmdXZ3JzMDFBQmdTZThl?=
 =?utf-8?B?c0lXMm5pVDQ2UUV2L043SjJHYnBONFhmOVM0d01WbEx2NVhQSXJab1A1TWh6?=
 =?utf-8?B?UHoyTldQRlFlWmNyQXFYT2lGRk55SEtLaXdPVnpXZ3lGOTdkcXJhMW1QeStu?=
 =?utf-8?B?UzdRVk5ocGJ2NGd4cXhtYWlVZWJHMWdiT0lJVmU2VUkrL3pWSGIyQ0xISnVV?=
 =?utf-8?B?eWptNmUrZzd1dGdaUlNOeisxZUhBTk9hN01VTjJ0RmVOZm1vK2EydFRITndj?=
 =?utf-8?B?VXF3dWh5eWcxRFFtR2dYT3V3M3ZPS2hKVWtIaEQ4WmQ1TGpReW5nNjNNTUVr?=
 =?utf-8?B?YW95N0JYSW9wbkk3QWxSUjBqbytyMGYvTE5RdHZlTTBLaHZkMnBhVXpMbVBh?=
 =?utf-8?B?RkJYdHo1NVhhODdWdkZ4VUpXdGFNeDNTajVFdlBPUUZqbEJqelpqTmlqWGtI?=
 =?utf-8?B?UEoxMWVrU3NhSi9oUCtKdHMxMFdpRVhlaVdMaVJpN2Rka3JjWDFWamZSZzJU?=
 =?utf-8?B?Y1NhSmV5UTBWL09rVzk2Vzg4N0lXTnJtQmtRSEFHaDZQVHFZZm1MZlI1THN2?=
 =?utf-8?B?THpzb0lpSVNNTGdoN2RvcXRBa3NkSjRnUGtaSWpvYmJqN050MG5XTU9OYWo5?=
 =?utf-8?B?Q1NuMk5kRW8rZytmTHAwSVRxbXhFVEcyNHhWRmtHcHY5Q1pQcnZKc0F6Y2Zy?=
 =?utf-8?Q?uxvw8MLeZMQma6a4E68C8XUV2?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4ac4afe-8da0-4692-a08b-08db0550728c
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2023 19:05:27.9773 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yinvNkoViEnxP4wjrYQzcx4kEfna15QkcIpqrS5QU9q1SdCMk3FwzkxlKKWQQMJqOxYmRlNhcPq/vJLYSdfsZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7376
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 11/13] drm/i915/dsb: Write each legacy LUT
 entry twice with DSB
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAxOCwgMjAyMyAxMDowMSBQTQ0K
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwt
Z2Z4XSBbUEFUQ0ggMTEvMTNdIGRybS9pOTE1L2RzYjogV3JpdGUgZWFjaCBsZWdhY3kgTFVUIGVu
dHJ5DQo+IHR3aWNlIHdpdGggRFNCDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gVGhlIERTQiBoYXMgcHJvYmxlbXMgbG9h
ZGluZyB0aGUgbGVnYWN5IExVVC4gTG9va3MgbGlrZSBzaW1wbHkgd3JpdGluZyBlYWNoDQo+IExV
VCBlbnRyeSB0d2ljZSBiYWNrLXRvLWJhY2sgaXMgc3VmZmljaWVudCB3b3JrYXJvdW5kIGZvciB0
aGlzLg0KPiANCj4gQ3VyaW91c2x5IGl0IGRvZXNuJ3QgZXZlbiBtYXR0ZXIgd2hhdCBkYXRhIHdl
IHByb3ZpZGUgZm9yIHRoZSBmaXJzdCB3cml0ZSwgdGhlDQo+IHNlY29uZCB3cml0ZSBhbHdheXMg
c2VlbXMgdG8gd29yayAxMDAlLiBTbyB0aGlzIGRvZXNuJ3Qgc2VlbSB0byBiZSBzb21lDQo+IGtp
bmQgb2Ygc2ltcGxlIHJhY2Ugd2hlcmUgdGhlIGRhdGEgZ2V0cyBsYXRjaGVkIGJlZm9yZSBpdCdz
IGFjdHVhbGx5IGF2YWlsYWJsZQ0KPiBvbiBzb21lIGJ1cyAod2hpY2ggd2FzIG15IGZpcnN0IGh1
bmNoKS4NCj4gDQo+IFRPRE86IG5lZWQgdG8gZmlndXJlIG91dCB3aGF0IGlzIHRoZSBhY3R1YWwg
aHcgaXNzdWUgaGVyZQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgfCAxMSArKysrKysrKysrLQ0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDEwIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gaW5kZXggNGMzMzQ0ZWU0NzNlLi44
ZGUyZGM0Yjc5MDQgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY29sb3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NvbG9yLmMNCj4gQEAgLTg2MCw5ICs4NjAsMTggQEAgc3RhdGljIHZvaWQgaWxrX2xvYWRfbHV0
XzgoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+IA0KPiAg
CWx1dCA9IGJsb2ItPmRhdGE7DQo+IA0KPiAtCWZvciAoaSA9IDA7IGkgPCAyNTY7IGkrKykNCj4g
Kwlmb3IgKGkgPSAwOyBpIDwgMjU2OyBpKyspIHsNCj4gKwkJLyoNCj4gKwkJICogRFNCIGZhaWxz
IHRvIGNvcnJlY3RseSBsb2FkIHRoZSBsZWdhY3kNCj4gKwkJICogTFVUIHVubGVzcyB3ZSB3cml0
ZSBlYWNoIGVudHJ5IHR3aWNlLg0KPiArCQkgKiBJdCBkb2Vzbid0IGFjdHVhbGx5IG1hdHRlciB3
aGF0IGRhdGEgd2UNCj4gKwkJICogcHJvdmlkZSBmb3IgdGhlIGZpcnN0IHdyaXRlLg0KPiArCQkg
Ki8NCg0KSXMgaXQgY29uZmlybWVkIGJ5IGhhcmR3YXJlIHRlYW0/IElzIHRoZXJlIGFueSBkaWZm
ZXJlbmNlIHdpdGggaW5kZXhlZCByZWdpc3RlciB3cml0ZSBhbmQgc2luZ2xlIHJlZ2lzdGVyIHdy
aXRlLg0KDQpSZWdhcmRzLA0KQW5pbWVzaCANCg0KPiArCQlpZiAoY3J0Y19zdGF0ZS0+ZHNiKQ0K
PiArCQkJaWxrX2x1dF93cml0ZShjcnRjX3N0YXRlLCBMR0NfUEFMRVRURShwaXBlLCBpKSwgMCk7
DQo+ICAJCWlsa19sdXRfd3JpdGUoY3J0Y19zdGF0ZSwgTEdDX1BBTEVUVEUocGlwZSwgaSksDQo+
ICAJCQkgICAgICBpOXh4X2x1dF84KCZsdXRbaV0pKTsNCj4gKwl9DQo+ICB9DQo+IA0KPiAgc3Rh
dGljIHZvaWQgaWxrX2xvYWRfbHV0XzEwKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlLA0KPiAtLQ0KPiAyLjM4LjINCg0K
