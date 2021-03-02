Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E291A32969D
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Mar 2021 08:17:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13E148937C;
	Tue,  2 Mar 2021 07:17:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 407738937C
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Mar 2021 07:17:28 +0000 (UTC)
IronPort-SDR: COcMyMMx8LHg2UWHAL/7jy7v8ie/lcuKw8yE+fzjaszHYFDmFRdhWD8AiWD32Q4LB+pQHHZIZM
 ZTME8Dmy8Ttg==
X-IronPort-AV: E=McAfee;i="6000,8403,9910"; a="248121820"
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="248121820"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2021 23:17:27 -0800
IronPort-SDR: WOZ8JjkXMyhHLfMpFfrezzgp2ApRLjxwNH/HwjLbVPOjzRllQSTMJYZCl7cTqQm0tDsOvlAg7T
 kPyPZSNxd3Zg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,216,1610438400"; d="scan'208";a="444631821"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga001.jf.intel.com with ESMTP; 01 Mar 2021 23:17:27 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 1 Mar 2021 23:17:27 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 1 Mar 2021 23:17:26 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 1 Mar 2021 23:17:26 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 1 Mar 2021 23:17:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RLf/K74fFj0x6VgOP6wqQgP3aCfl265suj0lV2s3i4NThzUjLfIuL9y0+TNkzkojCqzEF/bekAcEiuHPQgFiPU7jhPrz2qjqwWnBsiISnPDrDFYU6BqaJkZdK8vCby7Xb39Aox+Mo0tOuQtG5elOisq7jP16r8yDzg6zFNtT+yfyvZNTaEWIGrbI6Y3iGor88Tv1OHn634DY0ZNQYLOUJsEbtPjZbd0rIrDZHloEXwUeE/Vyrl1UXnu3quKBklQJxGqGSRXMwwY85tMQzM5jkJDYVlnFoFmkIQhZXOOacqMAsXse+EYZMIrJQoBUffi9rJJitK0ObRFdc/LsbtjYUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2jjlOcrzo9QEApY3tZj6kaIFx107kxAJBdRKwkgvrlA=;
 b=YSoHdcL17ymHOEZ3katcUVAoae9LPso9AQmEhVTlSr+6uwaOd5TFAvyud0j5V6u46h4D2ogWuWmYn0sbCHuDVeQF8D2qj86C9bOw8UFD/guW1T1EEeajBrY139FsPtx9eLTN9KqK59cZ5DHCRDpG5+kwKk7gkZISxDEP+FztOoyiEbohXcLor3c8hNeVRjWjIVYKKvfaDG0bqQoX9bbYYPsKso3hU5Xy+fKOj1SSW09BSvP7EpwH270qYEXbboNyAt0dOhzL5cxdY7MpJc4q+/IWXJMwqx86jzQlmVm6/lazG6m6MQgXKQ5bYxJGreATSEjQ6Jkw5XMfUrFbWNKuAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2jjlOcrzo9QEApY3tZj6kaIFx107kxAJBdRKwkgvrlA=;
 b=mvgHe/LCBu2jEpp5o5YRUwOShAGIJI4xRPvi97mhlUYkbgmzmxenegQVtF5j8uFYVDl1cK6rhtGMuSkxGz3XR8zyKRu9j83XaHxCnfue5UaiC537CBNC+h8QpiwiXWrQM/reL22jZKdPq1hbvp+jPvhgAISpLaG1jgYeXWRHGFY=
Received: from SA2PR11MB4969.namprd11.prod.outlook.com (2603:10b6:806:111::12)
 by SN6PR11MB2557.namprd11.prod.outlook.com (2603:10b6:805:56::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.20; Tue, 2 Mar
 2021 07:17:20 +0000
Received: from SA2PR11MB4969.namprd11.prod.outlook.com
 ([fe80::781d:e956:8a67:f119]) by SA2PR11MB4969.namprd11.prod.outlook.com
 ([fe80::781d:e956:8a67:f119%6]) with mapi id 15.20.3868.037; Tue, 2 Mar 2021
 07:17:20 +0000
From: "Chiou, Cooper" <cooper.chiou@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3] drm/i915: Enable
 WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
Thread-Index: AQHXDy9TNUpQng5a8UOTNIkE1rTbjqpwRtuw
Date: Tue, 2 Mar 2021 07:17:20 +0000
Message-ID: <SA2PR11MB496960CA5CEF3A8CF50D40489D999@SA2PR11MB4969.namprd11.prod.outlook.com>
References: <20200916180745.627-1-cooper.chiou@intel.com>
 <20210302062700.6025-1-cooper.chiou@intel.com>
In-Reply-To: <20210302062700.6025-1-cooper.chiou@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-originating-ip: [123.193.93.97]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3490b5c7-198a-4866-c4ed-08d8dd4b37d4
x-ms-traffictypediagnostic: SN6PR11MB2557:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB25575F7C2CF30F7814057AE59D999@SN6PR11MB2557.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2733;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZZaGvyS6vb7v3Juso30b2/oqYvw/5PqxRbgPQg2bHczR+SaSR6QN0SiRS9gQgJyJjR5cIknL08Il2rj1RGeQVRSxjo+yrZJDtFjIBgmSg2DFGgUlSvDoLcez8ALr8sOkfNEJHx9h89LyS5iW9Cxea2s4YYwRaqMtSf++clUIGckLiDFqOkgvE1fkWF112LnqI483OIJHTHMzhWksXBSuSfPMZj9RgzaY0nzXrKz3NSW+JBFvqWr3ILjgIUpjKWGoBw0F79y3/0b/y8NTacrMXcTsrPoAuVtjiUqE0aIgNtmZN0SfuaC+n5vW01IwRpVrdU0fcp0i34ebhY2Qca1dmiFU+ndmTy2azHxT4npRAoBrPpp689Tfnu1wz7+IAcCMVZxMxZ+sqeHzO1L4OP0gZ/8vOOfbGUXzqtjm67b5NrnxwdWqspvg1L+XJ2/9GGiabbF6SIj+TCo4aSL1eoxC2ckyxknpsLrsDJ+qGHkxmRXDJ5y1SRdgLpU7VgTQPDJP+0Wk3Eeo+LEy1fzBhPVOfclG8Ws6VSBpDx+C7Y0W3zR70VkywYjFIOttJ/S9wlnU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR11MB4969.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(6029001)(136003)(366004)(346002)(39860400002)(396003)(376002)(71200400001)(7696005)(26005)(66574015)(4326008)(8936002)(33656002)(478600001)(8676002)(83380400001)(52536014)(66556008)(66446008)(5660300002)(6506007)(9686003)(66476007)(64756008)(6916009)(66946007)(186003)(86362001)(2906002)(55016002)(316002)(54906003)(76116006)(213903007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?NWpxeTI2b0YwOGNHK1crSFZnZnBDZ1VWbkVlY3lzdCtaWlJKUndTSFVjWE9J?=
 =?utf-8?B?bVhrU0RWWWxpUDZ6cWNSSUZHekFuLzk2UWdMQjNhcFU1emhvVlBXWXhNM0pJ?=
 =?utf-8?B?UDEwQzZmUWw1OWkrOFhzR1Bubnltc2lPMjdzMjJCNWtEY0FhMmxpWXd4YU9a?=
 =?utf-8?B?Q0taOTdaczJRalFmRS9ySVBncXlSZEZEN1MyVUdTL0ovdlljKzZMSVU2M0Rz?=
 =?utf-8?B?bGtHL3c3MFhPZnBlV0ZaWVV0eWorckRXVHU2cjBQUDRHT0ZTbTV1UWk5Nnlv?=
 =?utf-8?B?UHM2NWJ2bkhsQStObmlhREJ5aWw4QVZHZVBhZWZrWkxtbEthUElGbnoxeEls?=
 =?utf-8?B?MldwQTVETFRRV1VDOXQrZ3FSTW82ZjRoS2xWT3M1bjIybXZROE5RWFlYbjB4?=
 =?utf-8?B?bmZNNExLbnVOQU12dXJiWUdGZnp0UnI5WjE0ZGFUR1ZjRjlsVHVyQk1tdDJG?=
 =?utf-8?B?SEZETnV5ei9OL0tNMUYxZEtXOHRUZHBTNWprb3htaDU5S0xaRktqKzduSzVF?=
 =?utf-8?B?ZGVkUW9UVS9NVURlMkp2Y2dxY1JYVjFCY0ZoZ3FER1RBajRrQjdiVzlGWFpz?=
 =?utf-8?B?UzN4WXc3Qy9rQVQzY2xKZ2UvaitEZlpFOGxoZy83R0dINzJ1QkpMTVY1NmVM?=
 =?utf-8?B?d25CcDNPRXZKR2Y4Y2kzZllGQ25wMGg2TDFwVVRYSWZoYmR6RHFmb2w4Tk1o?=
 =?utf-8?B?cFEzTThSeG5OemNhQmhwMmdVQldnNWdPVEJKdFNaL1dWZlVuWEJjeHJQQUsy?=
 =?utf-8?B?eFNndjlKVWhzYlBTb1BvNXdHUitXSFlZb0MvK01XSjlyblFsVW1YWUY1RXUr?=
 =?utf-8?B?dkVha0ErZU81WVNnOFJNNGxKeU9IQlUreGlwWnVMazdyclY5WmFUbXphZC9w?=
 =?utf-8?B?cnZvckhpRXRXbTcxUzFZdC9iSy80aGp0bVZNV0YzQnBiTklUMm44N0hhSmJ6?=
 =?utf-8?B?enBoc0ZYYkQzdyt0a05Kajl3S3hLNlFtQ3crc1E5VGM3eWh2MUJTREJta2M1?=
 =?utf-8?B?RHErK1NwZDgyWUtmb2k4RS9Nb0UycTRqc0FoRjF3Y2Z3MFFDRkhxemJyZytn?=
 =?utf-8?B?aFhpL1QrLy9JVEl6TE9qRXRNdDlpemI0T0VYSUU4MmxwdWpzSEhxWmRNZDVx?=
 =?utf-8?B?V253VGlpT3VVM1VSbGU1NXBjZlcvbHk0aHNwTng0MTVBYjBZQVk1TmZucTJK?=
 =?utf-8?B?Y2VGMC9mNi95MVhkb1ZORWo5NnNQSGdkZVZ1WWdlQit4a05Kc0JiZzdaeGUz?=
 =?utf-8?B?K2NCaTVheDdtQjNYbU16K08raGJ6N1QzVEFVdWljYTZCQ3ErR2xRRFh6VVMr?=
 =?utf-8?B?Tm5GTE55UGxzc0dTNkZtbmxsa1g0TzJpMGFOR0lyZG5ScTl3VVh1SGQ4Si9Q?=
 =?utf-8?B?R09NbW9MbkJiREFVcDhkRFZkOXV2bnd1UzVKWmdER0hYOXpUQjczcGNSYW4v?=
 =?utf-8?B?YU1KU25mK2RhRHI2Nm5SRWVJa2taeTJLcHVUNXlxUHl6RjZjSzBLSEFZMGRT?=
 =?utf-8?B?Njl6bmw5amV2dnB3OUpoOW14R1hRY0dGZ1RHVHByWnRvWUdRUU43czQvQVJk?=
 =?utf-8?B?WlJNR3lkQzNvRjR0Z3ZQaVFxQzBrd2FVNTBsVkRnbDJyekQrTUVjRW9kajFS?=
 =?utf-8?B?Y0RzRUNnQStZdGxGZXBDZ3BlbzVKT2tFOSsyd0lnY0d0L2FVaHhtVllLdFBY?=
 =?utf-8?B?N2NTZmFsYWhQa2dLMkRkUTZQZExrKzdIOTkya0d3L0FDOWtxN0NPOTVya0lI?=
 =?utf-8?Q?3HGHD+iHR3ZbO+Et0CRtkcnpc+IF1kGaGbs1umg?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB4969.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3490b5c7-198a-4866-c4ed-08d8dd4b37d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2021 07:17:20.0169 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lhRgl7aLmyevpIjf08Zvejn9Qv7ZnFcpD0gBoeSRbF4fYVtVKbzWuqrCceOAL/TKvrre2OXfcf4MYDF6v5543w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2557
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Enable
 WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
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
Cc: "Tseng, William" <william.tseng@intel.com>, "Nikula,
 Jani" <jani.nikula@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgVHZydGtvLA0KVGhpcyBXYVByb2dyYW1NZ3NyRm9yQ29ycmVjdFNsaWNlU3BlY2lmaWNNbWlv
UmVhZHMgaW5mbyBjYW4gYmUgZm91bmQgb24gYnNwZWMgV0EjMDU3NSBhbmQgaXQncyBuZWNlc3Nh
cnkgZm9yIEdUIHN1YnNsaWNlIGZ1c2Ugc2t1IG9uIFBDNyBleGl0IGNhc2Ugd2hpbGUgcnVubmlu
ZyBWUDggaHcgZW5jb2RlLCBpdCBpbXBhY3RlZCBDck9TIHByb2plY3RzIHNpbmNlIGdvb2dsZSBk
aXNhYmxlZCBWUDggSFcgZW5jb2RlIGZlYXR1cmUgb24gR2VuOSBza3UsIHNvIHRoYXQncyB3aHkg
d2UgbmVlZCB0aGlzIHBhdGNoLg0KDQpCZXN0IFJlZ2FyZHMsDQpDb29wZXINCj4gDQo+IFdhUHJv
Z3JhbU1nc3JGb3JDb3JyZWN0U2xpY2VTcGVjaWZpY01taW9SZWFkcyBhcHBsaWVzIGZvciBHZW45
IHRvDQo+IHJlc29sdmUgVlA4IGhhcmR3YXJlIGVuY29kaW5nIHN5c3RlbSBoYW5nIHVwIG9uIEdU
MSBza3UgZm9yIENocm9taXVtT1MNCj4gcHJvamVjdHMNCj4gDQo+IFNsaWNlIHNwZWNpZmljIE1N
SU8gcmVhZCBpbmFjY3VyYXRlIHNvIE1HU1IgbmVlZHMgdG8gYmUgcHJvZ3JhbW1lZA0KPiBhcHBy
b3ByaWF0ZWx5IHRvIGdldCBjb3JyZWN0IHJlYWRzIGZyb20gdGhlc2Ugc2xpY2V0LXJlbGF0ZWQg
TU1JT3MuDQo+IA0KPiBJdCBkaWN0YXRlcyB0aGF0IGJlZm9yZSBhbnkgTU1JTyByZWFkIGludG8g
U2xpY2UvU3Vic2xpY2Ugc3BlY2lmaWMgcmVnaXN0ZXJzLA0KPiBNQ1IgcGFja2V0IGNvbnRyb2wg
cmVnaXN0ZXIoMHhGREMpIG5lZWRzIHRvIGJlIHByb2dyYW1tZWQgdG8gcG9pbnQgdG8NCj4gYW55
IGVuYWJsZWQgc2xpY2Uvc3Vic2xpY2UgcGFpciwgZXNwZWNpYWxseSBHVDEgZnVzZWQgc2t1IHNp
bmNlIHRoaXMgaXNzdWUgY2FuDQo+IGJlIHJlcHJvZHVjZWQgb24gVlA4IGhhcmR3YXJlIGVuY29k
aW5nIHZpYSBmZm1wZWcgb24gQ2hyb21pdW1PUw0KPiBkZXZpY2VzLg0KPiBXaGVuIGV4aXQgUEM3
LCBNR1NSIHdpbGwgcmVzZXQgc28gdGhhdCB3ZSBoYXZlIHRvIHNraXAgZnVzZWQgc3Vic2xpY2Ug
SUQuDQo+IA0KPiBSZWZlcmVuY2U6IEhTRCMxNTA4MDQ1MDE4LDE0MDU1ODY4NDAsIEJTSUQjMDU3
NQ0KPiANCj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+DQo+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+IENjOiBK
YW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiBDYzogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+DQo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVy
c3VsaW5AbGludXguaW50ZWwuY29tPg0KPiBDYzogV2lsbGlhbSBUc2VuZyA8d2lsbGlhbS50c2Vu
Z0BpbnRlbC5jb20+DQo+IENjOiBMZWUgU2hhd24gQyA8c2hhd24uYy5sZWVAaW50ZWwuY29tPg0K
PiANCj4gU2lnbmVkLW9mZi1ieTogQ29vcGVyIENoaW91IDxjb29wZXIuY2hpb3VAaW50ZWwuY29t
Pg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMg
fCAzOA0KPiArKysrKysrKysrKysrKysrKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCAzOCBpbnNl
cnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfd29ya2Fyb3VuZHMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmth
cm91bmRzLmMNCj4gaW5kZXggM2I0YTdkYTYwZjBiLi40YWQ1OThhNzI3YTYgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYw0KPiBAQCAtODc4LDkg
Kzg3OCw0NyBAQCBoc3dfZ3Rfd29ya2Fyb3VuZHNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZQ0KPiAqaTkxNSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQ0KPiAgCXdhX3dyaXRlX2Nscih3
YWwsIEdFTjdfRkZfVEhSRUFEX01PREUsDQo+IEdFTjdfRkZfVlNfUkVGX0NOVF9GRk1FKTsgIH0N
Cj4gDQo+ICtzdGF0aWMgdm9pZA0KPiArZ2VuOV93YV9pbml0X21jcihzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSwgc3RydWN0IGk5MTVfd2FfbGlzdA0KPiArKndhbCkgew0KPiArCWNvbnN0
IHN0cnVjdCBzc2V1X2Rldl9pbmZvICpzc2V1ID0gJmk5MTUtPmd0LmluZm8uc3NldTsNCj4gKwl1
bnNpZ25lZCBpbnQgc2xpY2UsIHN1YnNsaWNlOw0KPiArCXUzMiBtY3IsIG1jcl9tYXNrOw0KPiAr
DQo+ICsJR0VNX0JVR19PTihJTlRFTF9HRU4oaTkxNSkgPCA5KTsNCj4gKw0KPiArCS8qDQo+ICsJ
ICogV2FQcm9ncmFtTWdzckZvckNvcnJlY3RTbGljZVNwZWNpZmljTW1pb1JlYWRzOmdsayxrYmws
Y21sDQo+ICsJICogQmVmb3JlIGFueSBNTUlPIHJlYWQgaW50byBzbGljZS9zdWJzbGljZSBzcGVj
aWZpYyByZWdpc3RlcnMsIE1DUg0KPiArCSAqIHBhY2tldCBjb250cm9sIHJlZ2lzdGVyIG5lZWRz
IHRvIGJlIHByb2dyYW1tZWQgdG8gcG9pbnQgdG8gYW55DQo+ICsJICogZW5hYmxlZCBzL3NzIHBh
aXIuIE90aGVyd2lzZSwgaW5jb3JyZWN0IHZhbHVlcyB3aWxsIGJlIHJldHVybmVkLg0KPiArCSAq
IFRoaXMgbWVhbnMgZWFjaCBzdWJzZXF1ZW50IE1NSU8gcmVhZCB3aWxsIGJlIGZvcndhcmRlZCB0
byBhbg0KPiArCSAqIHNwZWNpZmljIHMvc3MgY29tYmluYXRpb24sIGJ1dCB0aGlzIGlzIE9LIHNp
bmNlIHRoZXNlIHJlZ2lzdGVycw0KPiArCSAqIGFyZSBjb25zaXN0ZW50IGFjcm9zcyBzL3NzIGlu
IGFsbW9zdCBhbGwgY2FzZXMuIEluIHRoZSByYXJlDQo+ICsJICogb2NjYXNpb25zLCBzdWNoIGFz
IElOU1RET05FLCB3aGVyZSB0aGlzIHZhbHVlIGlzIGRlcGVuZGVudA0KPiArCSAqIG9uIHMvc3Mg
Y29tYm8sIHRoZSByZWFkIHNob3VsZCBiZSBkb25lIHdpdGggcmVhZF9zdWJzbGljZV9yZWcuDQo+
ICsJICovDQo+ICsJc2xpY2UgPSBmbHMoc3NldS0+c2xpY2VfbWFzaykgLSAxOw0KPiArCUdFTV9C
VUdfT04oc2xpY2UgPj0gQVJSQVlfU0laRShzc2V1LT5zdWJzbGljZV9tYXNrKSk7DQo+ICsJc3Vi
c2xpY2UgPSBmbHMoaW50ZWxfc3NldV9nZXRfc3Vic2xpY2VzKHNzZXUsIHNsaWNlKSk7DQo+ICsJ
R0VNX0JVR19PTighc3Vic2xpY2UpOw0KPiArCXN1YnNsaWNlLS07DQo+ICsNCj4gKwltY3IgPSBH
RU44X01DUl9TTElDRShzbGljZSkgfCBHRU44X01DUl9TVUJTTElDRShzdWJzbGljZSk7DQo+ICsJ
bWNyX21hc2sgPSBHRU44X01DUl9TTElDRV9NQVNLIHwgR0VOOF9NQ1JfU1VCU0xJQ0VfTUFTSzsN
Cj4gKw0KPiArCWRybV9kYmcoJmk5MTUtPmRybSwgIk1DUiBzbGljZTolZC9zdWJzbGljZTolZCA9
ICV4XG4iLCBzbGljZSwNCj4gK3N1YnNsaWNlLCBtY3IpOw0KPiArDQo+ICsJd2Ffd3JpdGVfY2xy
X3NldCh3YWwsIEdFTjhfTUNSX1NFTEVDVE9SLCBtY3JfbWFzaywgbWNyKTsgfQ0KPiArDQo+ICBz
dGF0aWMgdm9pZA0KPiAgZ2VuOV9ndF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1LCBzdHJ1Y3QNCj4gaTkxNV93YV9saXN0ICp3YWwpICB7DQo+ICsJLyogV2FQ
cm9ncmFtTWdzckZvckNvcnJlY3RTbGljZVNwZWNpZmljTW1pb1JlYWRzOmdsayxrYmwsY21sICov
DQo+ICsJaWYgKCFJU19DT0ZGRUVMQUtFKGk5MTUpKQ0KPiArCQlnZW45X3dhX2luaXRfbWNyKGk5
MTUsIHdhbCk7DQo+ICsNCj4gIAkvKiBXYURpc2FibGVLaWxsTG9naWM6Ynh0LHNrbCxrYmwgKi8N
Cj4gIAlpZiAoIUlTX0NPRkZFRUxBS0UoaTkxNSkgJiYgIUlTX0NPTUVUTEFLRShpOTE1KSkNCj4g
IAkJd2Ffd3JpdGVfb3Iod2FsLA0KPiAtLQ0KPiAyLjE3LjENCg0KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
