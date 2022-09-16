Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 337EA5BAA41
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 12:30:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DA6910E389;
	Fri, 16 Sep 2022 10:30:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9799910E3E6
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 10:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663324227; x=1694860227;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=J5u2TUdUb4teS/6KpXGJ/+42UhyYFWWfOIvKGLzVepg=;
 b=cHbBYZeWysuiKuF0/xNOu9Beg+qfx65Ljv36/X1psBkBxpM2zmA1p+Pk
 yOfVvWVN+vmD9y+5k0Bko0vN3t2R4s9d0y9nhhY6LNo92zzVyv1qHXPsW
 0bJ3LMsGXlpPEmbjC9VL4zhirAwKv4Bz/aEwVDjJ+6fESFMK/O6Hp9jIg
 fZx5oMeJFB+fLD/kqba4sPB5TdHp8VWFiV1cMBh2olJT1N7zeefh8Nicy
 zxrkKPSDvDnIPERYaT6REE1bKWDDIbamyKJ4SLrjYuMbwieYk6ibr5brY
 vI9r7hx+EsVi0yKqfzwfUklCIjxotSo7Dzf5ujvBhyJS0XqpEBp0RUfP6 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10471"; a="325236273"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="325236273"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 03:30:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="620046145"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 16 Sep 2022 03:30:25 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 16 Sep 2022 03:30:25 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 16 Sep 2022 03:30:25 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 16 Sep 2022 03:30:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eycEZFMJ6xi1cQsCnl+AYHN5zj1OoNU6cxW7HLudpuPZd9GZ4yurwR+SIu+VIID47OeDLq6Yku51QrL74wRoCL2vpTKw09LvVQ1HLx0GLIrjS958e4F5WROk+E3/SFIQIcT3JZlhVHVQV9mwjzmz6EzTjSPOX3oMRp3VDX9+isx8rxG8/7l3zOsRM5ZU8vcXY+2dUO0GRyeYIP/s/QfzdH39Y0AM4YmEQlMzAZH7v+7/PzbyY1x6+ms3fNMZfFkp7SFjQUveLxFSfN10ji3wsR4JkHuX3FnRal9139PIE3NGUc5yxsVKSSv3jjWWCrPGmPbu7L9jDN1SVJsiDZTKOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J5u2TUdUb4teS/6KpXGJ/+42UhyYFWWfOIvKGLzVepg=;
 b=AC0mVf1QsSn90wWF3Hx/QvdQaS8cpCzBxgELW8k4aiSUjfC9PEmf/i02Mg2W4Vf77Cu/mI3FltOL9ngwZV2M0Y6/5B5Ul4FpwRwvcJl5nse7Yhm+6Ibu4QEXFIdUyHEY0p9npFIoYgmoCFsJlBxGK7N5RShTwLesu8Ve2JjjH29Bgm3Fb9nTJeGkmlducTzr1X2x8+7uvQFnj0PYdc1kP7K7Y7cDAYjlkfDqBNyUJSDdyur2o8/9BpJor8iVDA77It/BWj81q93JBqJswf2h7ctRWviLWp4oLjCd0zadHxM3qrjb3fZW+S0z3ctYou716+LjD4+cRB8WOT+tsyRmGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by CO6PR11MB5570.namprd11.prod.outlook.com (2603:10b6:303:138::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.16; Fri, 16 Sep
 2022 10:30:23 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::6d1c:5833:c6ab:f244]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::6d1c:5833:c6ab:f244%5]) with mapi id 15.20.5632.015; Fri, 16 Sep 2022
 10:30:22 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [RFC 1/1] drm/i915/dgfx: Handling of pin_map against
 rpm
Thread-Index: AQHYyO6f51LjJpIIM0KXpzFEjjEQI63guUUAgAEgXlA=
Date: Fri, 16 Sep 2022 10:30:22 +0000
Message-ID: <CY5PR11MB621113F5EEE9FC6AB9ECA22A95489@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20220915103311.5634-1-anshuman.gupta@intel.com>
 <20220915103311.5634-2-anshuman.gupta@intel.com>
 <e7def4d0-e0e7-2da2-f6f1-bd514672ca48@linux.intel.com>
In-Reply-To: <e7def4d0-e0e7-2da2-f6f1-bd514672ca48@linux.intel.com>
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
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|CO6PR11MB5570:EE_
x-ms-office365-filtering-correlation-id: 3c61ac70-8886-4fe3-d424-08da97ce75d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9Gw28PBRq2KdBWTEA9+dfcyGIorA9JMbm+9VQ7o6NLrkUBbWhkmm37a0prrhht7JGCfWV/eohzaB/PBVCycvZYfY7HZ1j0PYMpS43tOjmAhZQH08h1WIGIWDz5aFJ3YSEUyR+PBz3NZltiG57GXGh0Lwcd2Htu+qtCRwdx0ZvSvTzEzVq6fVJob9SBbzj5L9WFV1t9pVuDhEF6n+K5IHJ7oh0iygepeyhYcKgBNN7lnJ+ItxhI0CL43mAj57KcuWDCFzD9Gj1/oeaapYkiAdjtRrRmGizrzlfJDojvGbNNgs72agClo5VW824V50ueRMJtQ1IYWrpxcyYsU3XXTwTIIbMwHCqVXkHB1QV0/xt6UGZPhannFuOZatSRwNhvF50tSbrem3pvtt+uLr8phjWn7tr4Fqj3oqreoLbjSjP0as0q6frL68nOX0lSOsyKSxPhI3opZboycFcTf+qyjsOqgECZqgF5pwrs/OnxlyU8F56n+ObTb4o8AJ8dtLKklD/nsrUAY2VYXhzZ/rydIBqmohY6ywebFvLLTxKVwjpNZcQORXwhgP4xnaVaKhpK4RiTyG1pp/ceGE8VC4+xFSi0Yu2apUWSHg6GrDB+WwwWZJfnnPH2AaN9mIYYfhxnWVy9c3y78K/B6w7P0xYCEtVP69AclY0VM9Yvo4m5/YBteOHs7ATk2N0Cpbd2tz5+5Du98kUj68n59yyHtJ3yIj8Rjl7IE+aYqOzCNeNwupDWJjYRBfpL5gu1bVGIafP2+cWlsgJZ3xCiyrEoSkMUH3QA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(39860400002)(346002)(136003)(366004)(451199015)(55016003)(2906002)(122000001)(76116006)(82960400001)(38100700002)(5660300002)(52536014)(8936002)(33656002)(316002)(8676002)(66446008)(66476007)(66556008)(4326008)(66946007)(110136005)(86362001)(54906003)(186003)(478600001)(26005)(64756008)(38070700005)(9686003)(83380400001)(71200400001)(6506007)(7696005)(41300700001)(53546011)(55236004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?d0V6ZVdDQzVHOE54ZGh1S1d3LytWc3VCeXZBVWJDODVrSTRId0RpaVdkK1VP?=
 =?utf-8?B?czFsY20vZk93VURsa3NmZHdWMDN1amt3SU1iTGIvNjlBQWdlNzNWZW9Ka3R1?=
 =?utf-8?B?NGdtVWF4QUZjL3hXZUtjdVpEU0o4SVY1blhWM3pRNEhyRVRxUUJlbkd2UllN?=
 =?utf-8?B?emQwRllGOHRUTGVaVktYUzZyMk9UMlZFRTJDNzBrRHFnVVU2YjNweDdHUmQ2?=
 =?utf-8?B?VTlUaWFEcnN5WHhaQ3JFRndWNkdNUVY2TThyeVo1ZGRWWWI4Vm4zM3IvdTJy?=
 =?utf-8?B?dGpLazZmK0l3ajQrb0RGdU9NRHcyUEJ2c1l6d1VYNnpnOERCMDk5UWxaRkRs?=
 =?utf-8?B?cEVzcmF1ZUYra3gybGtOK2xobDVpWnh2K3FmM3JSSlk3RCsrbDRHaFZqRG81?=
 =?utf-8?B?TWtYcmF2Ujk1d2FxSDNRWXFQZ1BSOFlxdjFUVkozYTZXTS9PMFRkamR6YmFY?=
 =?utf-8?B?alpsSjJhVnVDenBxR1pETEVqODhsWHR6elNwQ0ZBVmNXcFArUUV3ZldQcEN6?=
 =?utf-8?B?MUlnSmk3TllNN0ppUnVMVUI0UXBzSWZHR3cxQW9UbGx3M1puaFhLUU5VYTAv?=
 =?utf-8?B?WjM2WlI4V2pqRkxSa0V5aW0xMnBVeGxwKzk5UTMrKzJRWEd2c1Z2UEk3TDRM?=
 =?utf-8?B?S0xCbFF1d2E2R1Q2UlpJbEl0VVVKZTBXZ0hFOWJvM2JjcEV2TDZHQTFnUzJx?=
 =?utf-8?B?djBGS1oxL2o5d1M0L285UzE1bUM3dnBXMlVZZ3VsdXRBRWJQWnR6Q3hYd3FC?=
 =?utf-8?B?Mk1MSTRMQ1czOWdzTDYwanZ3S3hKY1FlenZPRS9na1h3aE1CLzlLWW1RdXNS?=
 =?utf-8?B?K0F2aEpuWFJQbkZRY0Zpa2UwdWtGcncwWVVJWkJpaU5qL01XQWNCZzcrVjVk?=
 =?utf-8?B?eSs3ZHovWHQ1V3EvTDc2T2l0YVBUclF4ZHpOVDFKQ0p3ZDhSUlZObG5aTGx5?=
 =?utf-8?B?Si8vSDNLVlRGU3V4a2FLcFdaTTgrSldVNWMzcU5kZ0RyTE1VNTBqVlNDMitJ?=
 =?utf-8?B?Zi8zeVdRTzhrMWlFMVZlaGYxbGVZUHhEdm9jRnBjaHlVZzI4VHlJaC9Cdy9C?=
 =?utf-8?B?dWNSNEV5WFVIZUMydjdzZW5tRS9uVkZiSldEdktmekxFUXNaQmFDb2REZkJs?=
 =?utf-8?B?SGJPOVJCM1Q2ZlFINm12RC9za3BZZXl5MC9UUFZueG1UVEZkQ0NDcFU1Unh3?=
 =?utf-8?B?NTNSdXVQSlZzSUdrZWVoM1NLQlMvMW9jZmtnL2J1KzNhbWpGMzJBM0VaTnNC?=
 =?utf-8?B?ZS9ubmlHVjFCTWlLVnQ4OFdocUthZHVpSGM1RjNhWGFWVHJlUTV3aVJrd0VW?=
 =?utf-8?B?OGtoUVhIRExwdVhETFQ1Rk1YNUtoQ0liM1F4NCsyaElzMDMxdHRhUnV4YWFZ?=
 =?utf-8?B?eCtRK1hOWWdMV3g5dTlmdHcrdjIxZzczVzZySkFRZ1JibG1zc2hjTURiUFdJ?=
 =?utf-8?B?WTN0OGVCRnFFWi9OS2tlanEwYjJ3R3d1TngrdGIvUitkaCtoK3BPdGRqd2ky?=
 =?utf-8?B?WTlEbU5TaEtoa0tIUGtaVVI3UnRLZzBvTXByNjQzaHNlTXBaMTVRc2tiRzU0?=
 =?utf-8?B?bFlkQ1Ezd1RtandSY0VDRnh0WUtWTHRFbWtoUVJtZnNzY3NHaCtsd2o3WUZO?=
 =?utf-8?B?K2pDYWh0bk90WHAxVHRHaXRXSWl3OENKckJBUk1oZFpndFkxRUl2V25VK0VR?=
 =?utf-8?B?Smp5YUZ0ZGc0ejJ5cjE3R1A3em5nRnJaclNlM2sxejBVTUJ3ZFp3OVpWaU5N?=
 =?utf-8?B?WXduc25BV3pVQ3ZCSi85YUY4SDRHNFRrQ055aTM3TVQ2Zzl6eUJ1amhpME1H?=
 =?utf-8?B?R0xqT1FKOCs1TXkzMU1xeG9jamlocUlFZEJ4Z1UwS3JGTlVKd2c5b3VSQkRZ?=
 =?utf-8?B?UzBWNEg1ei8xbHFxVjJlTnhjRmJZZU9mSFVUeE54aDlIRTE1ZjcyTFRIekQ2?=
 =?utf-8?B?Y3l1ZmVLL1l1QU83eUNSWXBJMGxHY2tuR1E1a1VZamtqS3U5QUMzRlJhY09Q?=
 =?utf-8?B?M1Z1dmN6TCtDQWxSREk0aEFUS0g5RjBLSjUrelhjV3IvbVllS1RxL1pNdGM4?=
 =?utf-8?B?N0VCQzVDTFpDVUMvVW12bGJINm42T1ZhU1g1WGZUNDQzckN3ZGtTY2dHbEI3?=
 =?utf-8?Q?Usj06X6wXZDB5zyii2O1Tx6RT?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c61ac70-8886-4fe3-d424-08da97ce75d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Sep 2022 10:30:22.2129 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FCwG74MJgT2kdvqYuixiLGw1XHTb0MwpH7oGJnTYJEuo2SRN+lZfGlcv/8wm6wf7fPEk85p3r5bMis9GnwHrw9LC+njXqJTpZpxzp0GY1VY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5570
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 1/1] drm/i915/dgfx: Handling of pin_map
 against rpm
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
Cc: "Auld, Matthew" <matthew.auld@intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIFNlcHRl
bWJlciAxNSwgMjAyMiAxMDozNyBQTQ0KPiBUbzogR3VwdGEsIEFuc2h1bWFuIDxhbnNodW1hbi5n
dXB0YUBpbnRlbC5jb20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBD
YzogQXVsZCwgTWF0dGhldyA8bWF0dGhldy5hdWxkQGludGVsLmNvbT47IFZpdmksIFJvZHJpZ28N
Cj4gPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBb
UkZDIDEvMV0gZHJtL2k5MTUvZGdmeDogSGFuZGxpbmcgb2YgcGluX21hcCBhZ2FpbnN0DQo+IHJw
bQ0KPiANCj4gDQo+IE9uIDE1LzA5LzIwMjIgMTE6MzMsIEFuc2h1bWFuIEd1cHRhIHdyb3RlOg0K
PiA+IElmIGk5MTUgZ2VtIG9iaiBsaWVzIGluIGxtZW0sIHRoZW4gaTkxNV9nZW1fb2JqZWN0X3Bp
bl9tYXAgbmVlZCB0bw0KPiA+IGdyYWIgYSBycG0gd2FrZXJlZiB0byBtYWtlIHN1cmUgZ2Z4IFBD
SWUgZW5kcG9pbnQgZnVuY3Rpb24gc3RheXMgaW4gRDANCj4gPiBzdGF0ZSBkdXJpbmcgYW55IGFj
Y2VzcyB0byBtYXBwaW5nIHJldHVybmVkIGJ5DQo+ID4gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAo
KS4NCj4gPiBTdWJzZXF1ZW50bHkgaTkxNV9nZW1fb2JqZWN0X3VwaW5fbWFwIHdpbGwgcHV0IHRo
ZSB3YWtyZWYgYXMgd2VsbC4NCj4gDQo+IEFub3RoZXIgdGhpbmcgdG8gY2hlY2sgYXJlIHBlcm1h
IHBpbm5lZCBjb250ZXh0cy4gRm9sbG93IHRoZSBmbG93IGZyb20NCj4gaW50ZWxfZW5naW5lX2Ny
ZWF0ZV9waW5uZWRfY29udGV4dCB0byBpbnRlbF9lbmdpbmVfZGVzdHJveV9waW5uZWRfY29udGV4
dC4NCj4gSWYgeW91IGZpbmQgb3V0IHRoYXQga2VybmVsICgmY28pIGNvbnRleHRzIGFyZSBwaW5u
ZWQgZm9yIHRoZSBkdXJhdGlvbiBvZiBpOTE1DQo+IGxvYWQvYmluZCBhbmQgdGhhdCB0aGV5IHVz
ZSBsbWVtIG9iamVjdHMsIHRoYXQgd291bGQgbWVhbiB3YWtlcmVmIGlzIGhlbGQgZm9yDQo+IHRo
ZSBkdXJhdGlvbiBvZiBpOTE1IGxvYWRlZCBzdGF0ZS4gRGVmZWF0aW5nIHRoZSBwb2ludCBhbmQg
bWFraW5nIHRoZSBzb2x1dGlvbg0KPiBlZmZlY3RpdmVseSBlcXVhbCB0byBqdXN0IGRpc2FibGlu
ZyBSUE0uDQpUaGF04oCZcyBjb3JyZWN0ICBpbnRlbF9yaW5nX3BpbiBjYW4gcGluX21hcCB0aGUg
bG1lbSBvYmplY3QuDQogICAgICBpZiAoaTkxNV92bWFfaXNfbWFwX2FuZF9mZW5jZWFibGUodm1h
KSkgew0KICAgICAgICAgICAgICAgIGFkZHIgPSAodm9pZCBfX2ZvcmNlICopaTkxNV92bWFfcGlu
X2lvbWFwKHZtYSk7DQogICAgICAgIH0gZWxzZSB7DQogICAgICAgICAgICAgICAgaW50IHR5cGUg
PSBpOTE1X2NvaGVyZW50X21hcF90eXBlKHZtYS0+dm0tPmk5MTUsIHZtYS0+b2JqLCBmYWxzZSk7
DQoNCiAgICAgICAgICAgICAgICBhZGRyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAodm1hLT5v
YmosIHR5cGUpOw0KICAgICAgICB9DQoNCklmIHRoYXQgaXMgdGhlIGNhc2UgdGhpcyBSRkMgcHJv
cG9zYWwgd2lsbCBub3Qgd29yayBhbmQgaW4gdGhhdCBjYXNlIGV2ZXJ5IGNhbGxlciBvZiAgaTkx
NV9nZW1fb2JqZWN0X3Bpbl9tYXAgbmVlZCB0byBncmFiIHRoZSB3YWtyZXJlZiBiZWZvcmUNCmFj
Y2Vzc2luZyB0aGUgcmV0dW5lZCBhZGRyZXNzIGJ5IHBpbl9tYXAuIEFueSBpbnB1dHMgZnJvbSB5
b3Ugc2lkZSBmb3IgYW55IG90aGVyIGFwcHJvYWNoLg0KDQpUaGFua3MsDQpBbnNodW1hbiBHdXB0
YS4NCg0KPiANCj4gUmVnYXJkcywNCj4gDQo+IFR2cnRrbw0KPiANCj4gPiBDYzogTWF0dGhldyBB
dWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPg0KPiA+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJp
Z28udml2aUBpbnRlbC5jb20+DQo+ID4gQ2M6IEFuZGkgU2h5dGkgPGFuZGkuc2h5dGlAbGludXgu
aW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5n
dXB0YUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fb2JqZWN0LmMgICAgICAgfCAgMiArKw0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oICAgICAgIHwgIDUgKysrKysNCj4gPiAgIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaCB8IDE0ICsrKysrKysrKysr
KysrDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYyAgICAg
ICAgfCAgOCArKysrKysrKw0KPiA+ICAgNCBmaWxlcyBjaGFuZ2VkLCAyOSBpbnNlcnRpb25zKCsp
DQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X29iamVjdC5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0
LmMNCj4gPiBpbmRleCA4NTQ4MmEwNGQxNTguLmYyOTFmOTkwODM4ZCAxMDA2NDQNCj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMNCj4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmMNCj4gPiBAQCAtOTUsNiAr
OTUsNyBAQCB2b2lkIGk5MTVfZ2VtX29iamVjdF9pbml0KHN0cnVjdCBkcm1faTkxNV9nZW1fb2Jq
ZWN0DQo+ICpvYmosDQo+ID4gICAJbXV0ZXhfaW5pdCgmb2JqLT5tbS5nZXRfcGFnZS5sb2NrKTsN
Cj4gPiAgIAlJTklUX1JBRElYX1RSRUUoJm9iai0+bW0uZ2V0X2RtYV9wYWdlLnJhZGl4LCBHRlBf
S0VSTkVMIHwNCj4gX19HRlBfTk9XQVJOKTsNCj4gPiAgIAltdXRleF9pbml0KCZvYmotPm1tLmdl
dF9kbWFfcGFnZS5sb2NrKTsNCj4gPiArCW11dGV4X2luaXQoJm9iai0+d2FrZXJlZl9sb2NrKTsN
Cj4gPiAgIH0NCj4gPg0KPiA+ICAgLyoqDQo+ID4gQEAgLTExMCw2ICsxMTEsNyBAQCB2b2lkIF9f
aTkxNV9nZW1fb2JqZWN0X2Zpbmkoc3RydWN0DQo+IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikN
Cj4gPiAgIHsNCj4gPiAgIAltdXRleF9kZXN0cm95KCZvYmotPm1tLmdldF9wYWdlLmxvY2spOw0K
PiA+ICAgCW11dGV4X2Rlc3Ryb3koJm9iai0+bW0uZ2V0X2RtYV9wYWdlLmxvY2spOw0KPiA+ICsJ
bXV0ZXhfZGVzdHJveSgmb2JqLT53YWtlcmVmX2xvY2spOw0KPiA+ICAgCWRtYV9yZXN2X2Zpbmko
Jm9iai0+YmFzZS5fcmVzdik7DQo+ID4gICB9DQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oDQo+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgNCj4gPiBpbmRleCA3MzE3ZDQxMDI5NTUuLmIz
MWFjNmU0YzI3MiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fb2JqZWN0LmgNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fb2JqZWN0LmgNCj4gPiBAQCAtNTAxLDYgKzUwMSwxMSBAQCBzdGF0aWMgaW5saW5lIHZvaWQg
aTkxNV9nZW1fb2JqZWN0X2ZsdXNoX21hcChzdHJ1Y3QNCj4gZHJtX2k5MTVfZ2VtX29iamVjdCAq
b2JqKQ0KPiA+ICAgICovDQo+ID4gICBzdGF0aWMgaW5saW5lIHZvaWQgaTkxNV9nZW1fb2JqZWN0
X3VucGluX21hcChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdA0KPiAqb2JqKQ0KPiA+ICAgew0K
PiA+ICsJbXV0ZXh0X2xvY2sob2JqLT53YWtlcmVmX2xvY2spOw0KPiA+ICsJaWYgKCEtLW9iai0+
d2FrZXJlZl9jb3VudCkNCj4gPiArCQlpbnRlbF9ydW50aW1lX3BtX3B1dCgmdG9faTkxNShvYmot
PmJhc2UuZGV2KS0+cnVudGltZV9wbSwNCj4gb2JqLT53YWtlcmVmKTsNCj4gPiArCW11dGV4dF91
bmxvY2sob2JqLT53YWtlcmVmX2xvY2spOw0KPiA+ICsNCj4gPiAgIAlpOTE1X2dlbV9vYmplY3Rf
dW5waW5fcGFnZXMob2JqKTsNCj4gPiAgIH0NCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X3R5cGVzLmgNCj4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaA0KPiA+IGluZGV4IDlmNmIx
NGVjMTg5YS4uMzRhZmY5NWExOTg0IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfdHlwZXMuaA0KPiA+IEBAIC02NTcsNiArNjU3LDIw
IEBAIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0IHsNCj4gPg0KPiA+ICAgCQl2b2lkICpndnRf
aW5mbzsNCj4gPiAgIAl9Ow0KPiA+ICsNCj4gPiArCS8qKg0KPiA+ICsJICogd2FrZXJlZiB0byBw
cm90ZWN0IHRoZSBpOTE1IGxtZW0gaW9tZW0gbWFwcGluZ3MuDQo+ID4gKwkgKiBXZSBkb24ndCBw
aW5fbWFwIGFuIG9iamVjdCBwYXJ0aWFsbHkgdGhhdCBtYWtlcyBlYXN5DQo+ID4gKwkgKiB0byB0
cmFjayB0aGUgd2FrZXJlZiBjb29raWUsIGlmIHdha2VyZWYgaXMgYWxyZWFkeSBoZWxkDQo+ID4g
KwkgKiB0aGVuIHdlIGRvbid0IG5lZWQgdG8gZ3JhYiBpdCBhZ2FpbiBmb3Igb3RoZXIgcGluX21h
cC4NCj4gPiArCSAqIGZpcnN0IHBpbl9tYXAgd2lsbCBncmFiIHRoZSB3YWtlcmVmIGFuZCBsYXN0
IHVucGluX21hcA0KPiA+ICsJICogd2lsbCBwdXQgdGhlIHdha2VyZWYuDQo+ID4gKwkgKi8NCj4g
PiArCWludGVsX3dha2VyZWZfdCB3YWtlcmVmOw0KPiA+ICsJdW5zaWduZWQgaW50IHdha2VyZWZf
Y291bnQ7DQo+ID4gKw0KPiA+ICsJLyoqIHByb3RlY3RzIHRoZSB3YWtlcmVmX2NvdW50IHdha2Vy
ZWYgY29va2llIGFnYWluc3QgbXVsdGlwbGUNCj4gcGluX21hcCBhbmQgdW5waW5fbWFwICovDQo+
ID4gKwlzdHJ1Y3QgbXV0ZXggd2FrZXJlZl9sb2NrOw0KPiA+ICAgfTsNCj4gPg0KPiA+ICAgc3Rh
dGljIGlubGluZSBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqIGRpZmYgLS1naXQNCj4gPiBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9wYWdlcy5jDQo+ID4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fcGFnZXMuYw0KPiA+IGluZGV4IDRkZjUwYjA0OWNl
YS4uYjYzOGI1NDEzMjgwIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dl
bS9pOTE1X2dlbV9wYWdlcy5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX3BhZ2VzLmMNCj4gPiBAQCAtMzcwLDYgKzM3MCwxNCBAQCB2b2lkICppOTE1X2dlbV9v
YmplY3RfcGluX21hcChzdHJ1Y3QNCj4gPiBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosDQo+ID4N
Cj4gPiAgIAlhc3NlcnRfb2JqZWN0X2hlbGQob2JqKTsNCj4gPg0KPiA+ICsJaWYgKGk5MTVfZ2Vt
X29iamVjdF9pc19sbWVtKG9iaikpIHsNCj4gPiArCQltdXRleF9sb2NrKCZvYmotPndha2VyZWZf
bG9jayk7DQo+ID4gKwkJaWYgKCFvYmotPndha2VyZWZfY291bnQrKykNCj4gPiArCQkJb2JqLT53
YWtlcmVmID0NCj4gPiArCQkJCWludGVsX3J1bnRpbWVfcG1fZ2V0KCZ0b19pOTE1KG9iai0NCj4g
PmJhc2UuZGV2KS0+cnVudGltZV9wbSk7DQo+ID4gKwkJbXV0ZXhfdW5sb2NrKCZvYmotPndha2Vy
ZWZfbG9jayk7DQo+ID4gKwl9DQo+ID4gKw0KPiA+ICAgCXBpbm5lZCA9ICEodHlwZSAmIEk5MTVf
TUFQX09WRVJSSURFKTsNCj4gPiAgIAl0eXBlICY9IH5JOTE1X01BUF9PVkVSUklERTsNCj4gPg0K
