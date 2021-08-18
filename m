Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 120DD3F00ED
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 11:50:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E35F6E50B;
	Wed, 18 Aug 2021 09:50:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6DDA6E50B
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Aug 2021 09:50:31 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10079"; a="214445672"
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="214445672"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2021 02:50:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; d="scan'208";a="488514239"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga008.fm.intel.com with ESMTP; 18 Aug 2021 02:50:30 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Wed, 18 Aug 2021 02:50:29 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Wed, 18 Aug 2021 02:50:29 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Wed, 18 Aug 2021 02:50:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xx7f5ZH7hBiCeVbdk650fgk9IuUizqj+I4yxWloeXJ0tUll6oyDxYGjpk9nqo4Pn4ijw3koRXtF8p26X5ZyQGe2PVoI4goYE3Hk0jtcLk53z02iBsL+X0YaUwGJoCZKsKRLjwaW/KoMjR0jAs11iiuL44q7/hEQtS45XILBEU527lueIS84uk0/0ijVZ4vpUSev4vOvS9zdUlN422ouyb/ohq5GWkPNIf/qhwegSLbbmXEEgE31vefCA8DrS+7yxYV1F4qkSNzATCVe+qfkfzv+NJuX7e1xri2n6L1IQluB//jScdDXIAPaBjqYXGpoCPLykhqQTRoJeBvsaYAbPjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=04wbNy68mcuN6qFZPaMCF2236YILk6a5gnUH3iCERbQ=;
 b=Uvgr7LDVlswnFaTsbEO9On2kEP6ARiuF5BmxmHq+NX+b0cprP/NeiN5lhwwzCrLYabOqc5vMOjQmhTSHbwp4KJ5E6DSicaz8Tof0f0iXtdKuo3B/OIN+8eS3OMVx2/NnCkt2uxe38GPeJcpT+aEphf+f5vt9Xj4xGBkogHxppFV520mCclozbw9SUwc9uGOErZu6uWmB9gxVszomH8wM+rlVTyUqiJvJJR3J9b4WtBWhW5s9N5Vo9HKW1ecr6/TyhJlns0n3C6TWePRm1x+2HYXCkZwGNCPHlFvmLW4lprhRsji9LkNu69SxIPDcpIpt4He3RHB/vohLAv3vWoxKFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=04wbNy68mcuN6qFZPaMCF2236YILk6a5gnUH3iCERbQ=;
 b=VzYAzLdT/YhqJCuOPNp3la0wkbQFOxe7qkK8y19wszq9CCfy4wBt0naO3KGvBx2gPt1qOLbpbjSGiWv3MzmkAyduSYZQoln9S9ag00mjt+tebepAMl+mKQYdt3HsScnY3V6Lz5Qr8dI6lRenBp6AEReVWdheZ+yPYO1mtrTDEqQ=
Received: from BL3PR11MB5746.namprd11.prod.outlook.com (2603:10b6:208:353::21)
 by MN2PR11MB3759.namprd11.prod.outlook.com (2603:10b6:208:f2::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.21; Wed, 18 Aug
 2021 09:50:28 +0000
Received: from BL3PR11MB5746.namprd11.prod.outlook.com
 ([fe80::4c20:46b9:9b67:c9ed]) by BL3PR11MB5746.namprd11.prod.outlook.com
 ([fe80::4c20:46b9:9b67:c9ed%9]) with mapi id 15.20.4436.019; Wed, 18 Aug 2021
 09:50:28 +0000
From: "Siddiqui, Ayaz A" <ayaz.siddiqui@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Patchwork
 <patchwork@emeril.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcgZm9y?=
 =?utf-8?B?IGRybS9pOTE1L2d0OiBJbml0aWFsaXplIHVudXNlZCBNT0NTIGVudHJpZXMg?=
 =?utf-8?Q?to_L3=5FWB?=
Thread-Index: AQHXj2BQiyWgrZpP5kyYzx8YEaAkj6txEkaAgAf7ezA=
Date: Wed, 18 Aug 2021 09:50:28 +0000
Message-ID: <BL3PR11MB5746625BAB1065D88081E0A0FCFF9@BL3PR11MB5746.namprd11.prod.outlook.com>
References: <20210812064758.4102925-1-ayaz.siddiqui@intel.com>
 <162876217249.21763.7891104765823416043@emeril.freedesktop.org>
 <87sfzdlqy4.fsf@intel.com>
In-Reply-To: <87sfzdlqy4.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
dlp-reaction: no-action
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c3d20244-10db-4e54-fef9-08d9622d9c56
x-ms-traffictypediagnostic: MN2PR11MB3759:
x-microsoft-antispam-prvs: <MN2PR11MB3759643E36E7B0DA617FF33FFCFF9@MN2PR11MB3759.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:483;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: lwa7HK+uHK+jlfWiqjuGrBdg301gIwNxFq4XKT+OnhCgwXoEtgbT7a1VnF+4pYJsvjgPEh0O2IcEOC4TGFVCuXVIJYk3ygxeRvctpdLoqDqYwMoeIlzPRDNlVhR6BhFYXG64C2fs7e16lisT4wrT8Cps7cn4XRg/5oHgmbbV5IXyj60Wc+akOuEe4cT1vOJQL9UDA//yL5z+K2lpmYC874mZzXBrVcGCnU3RrIIvGd7CdyjCuy8Rj4DffnhDB8DYyIasGyzAuhAQLUXEuAtOjoDGgenz6gW8caK0IRZrqKP8rE3RNQp3Z/e0k5TWTQXut2eyrK9N8ZyAdSV7RyKqnEYenZ+NxgjvCZNyoOxUvZjynHtt5nXSxjuU69gWsBcvLbJgPCxOo7KReRrxJThMKjCWvkW26EKrJUMVYGcEfduNmZWXWxj16z+F5lyzeYOXmx8gJ8lN4r+j+HGMFw+6RoHOL6PKad5vQ9Y31SyFgSWNX5MKboEak9P8fl7KWSVk7l4GTFs+YAJFERU6RPJ/kFGBLMtGg2c0IsS84A6nQc8YqZR8jzAqsrz5nq+7SeSv/5tGf5wLGGAmFs+0xqcDtyMX/oyuAF2XBw42e1G9fIwQ/9Nj/5kbbErkdrpiOe83X0Jk8XApMgsWc9IJIOOFY+ggXffL8WxNn5uqaOHYL2Ei93R7VVdhh1QOc0r76fTcWR2tdmEq4Rr8ThsSguCVQg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB5746.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(186003)(9686003)(66556008)(26005)(55016002)(53546011)(6506007)(7696005)(5660300002)(8936002)(4326008)(38100700002)(66946007)(2906002)(122000001)(33656002)(86362001)(83380400001)(76116006)(316002)(71200400001)(52536014)(966005)(508600001)(110136005)(66446008)(64756008)(38070700005)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K0s4ZnFIdkoyQ2U2em1CYUUxcS9PeHh6c2kwakljYTQ2NFdZWUJqSFkvMEwz?=
 =?utf-8?B?SGg0bGFndlUya2hpUFZ1cEVuaTF0L2g4MnFld0hBM2FUeVdnNFJ0QTY5R1A1?=
 =?utf-8?B?MEVKZUVENVNSY2VKaitSc3V4WXgzYzVQL25pMFBZRWxLVnNpTm5nd0NFeWZu?=
 =?utf-8?B?VWt3cmNvU1hlWnpFUlZWMUJ3Z2MwM2sxSW9jY1l2ZnorL0UyS21VODJkamtO?=
 =?utf-8?B?bFlhOWEzU3ZrQVFENjFtQkxOcS9aMHJzNFo2ZjBTeGlOLzhkL2pXRGVaa0d1?=
 =?utf-8?B?ZGZJKzU4YVVNVzZvT3pUTVhRR3IvMXM2WjhhcUxVc1dXVWY5VDJ3S2c3WWdS?=
 =?utf-8?B?elIxSjlKaHZEZjZqU3cwczl2ZGJIdm1MRnFKVmFXZGR4RE9SN1NhcXJaNm5R?=
 =?utf-8?B?bFRTS3FLQ3JWNU8zOEs0emFrdk1vK0tzbkJIbTdKaUtSRTViSGJ6VXVIZGlG?=
 =?utf-8?B?K3VBU2JKbHhiazl3M2srVDlvUHF4MjhiRTBleUxlRC9sd3FWMHJObTFhWlhM?=
 =?utf-8?B?NVg5Wkp3QXZYU1oySS9TQXR4RDNYZHZLVFZ5T3hvSVlzZHpJWGk1NTVXM241?=
 =?utf-8?B?K21VOWZOVlRmcmVocXJXUUlnMkQ5L1o4K0RMK0xDZEdVM3YwVlFsT2Q1THdY?=
 =?utf-8?B?UStYVGdOZGc5clpSOE1OalZSYmc4aWlPcFFzRitzYTVrQ2pIbnZXMmJTcnE5?=
 =?utf-8?B?K2ZhMVJMdy84RElaVjYzSDZwNTRuUEs3eGduc3pyTnhkMnQxZjZKM0o4aWIv?=
 =?utf-8?B?emE3LzNRLzlDOGdZazdNTHJROFZzZGFvclhXaUFRTWpGVVRLakdGMmZXcnE3?=
 =?utf-8?B?MGJBRE81Z3RMZ0pDdmlEYzhsbXJiT1BYcFN5ZWk1QUd5NTBFdDVXaVc2Zmpv?=
 =?utf-8?B?L2xIWkdMbGgxckRuMERVUkRnVUpFekR1QUU5YlZCc1F0WHVGM0ZmU09tL3FT?=
 =?utf-8?B?U3UvWkh1NWN1ays5dkNxdFpWem1UNUptOG5KbGN4RWdGT0xWYk1aRVVIVHZ0?=
 =?utf-8?B?NXVjWlJoeTVuVS9IMyt6S3VMUXBUMXpBSWJtWXFWNSt2WStqS0trMjQ0QTVG?=
 =?utf-8?B?ZDhCSHlWcytYWlhpQ2syM2d0SVVHUnBXNVdxNG1GNEtZbm5ieVZoaWlZUllF?=
 =?utf-8?B?ejNycGU3ZzNhTG9Bek1ONVVybXJ1d3lVOFdodEtsYUhzaDBsQlBFK2Z1QVpa?=
 =?utf-8?B?NjBZaTVsN2dmcWdqd3k2MTM5RFlib0cyOGF6SVNoVitxQUFUdTM0OHhZUHVO?=
 =?utf-8?B?RC9UYXpQdXJrSkNCcjRaVWs5UFNOcjJyUFZVSkR5OE9YQSttbDZUZUh5QmJY?=
 =?utf-8?B?bGh4SzM3akZDU3JoZDh3RUNIalRzeGZWcDBuNWVPNkl0MlJOVVFJZ1FzbXQ4?=
 =?utf-8?B?OVc0SnN4NHUzaWN3UnVHOU9jRDVDcDhFYlJrOUt5eVJWY0YvZWVMbDJsdFhs?=
 =?utf-8?B?aHErV1Y0YWw0OHpMZjMxVXhXYXg0QUNuYm9lN2plcGcrK0I4SHliN0E3a2tX?=
 =?utf-8?B?NDMzcmFMb09MdnRleXBSQmRabzJrbkpMT0NneHVlTXYvRjcxWGJ3MkpkMlhZ?=
 =?utf-8?B?VWlsVWhNaDNiNFdmQXB1S2NiMzdxam9ndjZYVlhhVXBvUGNSTFlTOTFQNW50?=
 =?utf-8?B?SlpvQmVGc1Z1Mm1va3prWmlNQVVaVHZzZUovTGRMV0RUdU5BUHhRbHUyZEdM?=
 =?utf-8?B?S09JMDlTOHFpSVBNSW5oS3BFalo1MWZnWGthT2JpQ042RkluZk5yVW1HRG85?=
 =?utf-8?Q?oJWlLjT362mSVopV2A=3D?=
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB5746.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3d20244-10db-4e54-fef9-08d9622d9c56
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2021 09:50:28.4657 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Qh4iI6OH2JWq5vdQgksQhB1hvcvEzN/UeF1yynWbdGZ9t1cv2Qa+zH8TRVhFGY6AQ3OGeKm6oPD/v0qh+X08JQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3759
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3A_Initialize_unused_MOCS_entries_to_L3=5FWB?=
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogRnJpZGF5LCBBdWd1c3QgMTMsIDIw
MjEgMToyNSBQTQ0KPiBUbzogUGF0Y2h3b3JrIDxwYXRjaHdvcmtAZW1lcmlsLmZyZWVkZXNrdG9w
Lm9yZz47IFNpZGRpcXVpLCBBeWF6IEENCj4gPGF5YXouc2lkZGlxdWlAaW50ZWwuY29tPg0KPiBD
YzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW0ludGVs
LWdmeF0g4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcgZm9yIGRybS9pOTE1L2d0Og0KPiBJ
bml0aWFsaXplIHVudXNlZCBNT0NTIGVudHJpZXMgdG8gTDNfV0INCj4gDQo+IA0KPiBUaGVzZSBh
cmUgYWxsIHZhbGlkIHdhcm5pbmdzLCBwbGVhc2UgZml4Lg0KPiANCj4gQlIsDQo+IEphbmksDQpU
aGFua3MgSmFuaSwgSSBoYXZlIGZpeGVkIGFsbCB0aGUgd2FybmluZyBpbiB2MiwgaXQgd2FzIGR1
ZSB0byByZWdpb24gdGhhdCBpbiBteSBsb2NhbA0KUGF0Y2ggY2hlY2sgaXMgbm90IHVzaW5nIC0t
c3RpY3Qgb3B0aW9uIC4NCi1BeWF6DQoNCj4gDQo+IA0KPiBPbiBUaHUsIDEyIEF1ZyAyMDIxLCBQ
YXRjaHdvcmsgPHBhdGNod29ya0BlbWVyaWwuZnJlZWRlc2t0b3Aub3JnPg0KPiB3cm90ZToNCj4g
PiA9PSBTZXJpZXMgRGV0YWlscyA9PQ0KPiA+DQo+ID4gU2VyaWVzOiBkcm0vaTkxNS9ndDogSW5p
dGlhbGl6ZSB1bnVzZWQgTU9DUyBlbnRyaWVzIHRvIEwzX1dCDQo+ID4gVVJMICAgOiBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzkzNjI2Lw0KPiA+IFN0YXRlIDogd2Fy
bmluZw0KPiA+DQo+ID4gPT0gU3VtbWFyeSA9PQ0KPiA+DQo+ID4gJCBkaW0gY2hlY2twYXRjaCBv
cmlnaW4vZHJtLXRpcA0KPiA+IGVhODYzYWUwMjI2OCBkcm0vaTkxNS9ndDogQWRkIHN1cHBvcnQg
b2YgbW9jcyBwcm9wYWdhdGlvbg0KPiA+IC06NTU6IENIRUNLOlBBUkVOVEhFU0lTX0FMSUdOTUVO
VDogQWxpZ25tZW50IHNob3VsZCBtYXRjaCBvcGVuDQo+ID4gcGFyZW50aGVzaXMNCj4gPiAjNTU6
IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYzo1MTE6DQo+ID4gK3N0
YXRpYyB2b2lkIHNldF9tb2NzX2luZGV4KHN0cnVjdCBpbnRlbF9ndCAqZ3QsDQo+ID4gKwkJCSAg
ICBzdHJ1Y3QgZHJtX2k5MTVfbW9jc190YWJsZSAqdGFibGUpDQo+ID4NCj4gPiB0b3RhbDogMCBl
cnJvcnMsIDAgd2FybmluZ3MsIDEgY2hlY2tzLCA0NCBsaW5lcyBjaGVja2VkIGVlMTIxNGM4ZWI0
ZA0KPiA+IGRybS9pOTE1L2d0OiBVc2UgY21kX2NjdGwgb3ZlcnJpZGUgZm9yIHBsYXRmb3JtcyA+
PSBnZW4xMg0KPiA+IC06ODU6IEVSUk9SOkNPREVfSU5ERU5UOiBjb2RlIGluZGVudCBzaG91bGQg
dXNlIHRhYnMgd2hlcmUgcG9zc2libGUNCj4gPiAjODU6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX21vY3MuYzozOTQ6DQo+ID4gK15JICAgICAgICAgICAgICAgICAgICJQbGF0
Zm9ybSB0aGF0IHNob3VsZCBoYXZlIFVDIGluZGV4IGRlZmluZWQgYW5kIGRvZXMNCj4gbm90XG4i
KSkgeyQNCj4gPg0KPiA+IC06MTg5OiBDSEVDSzpVTk5FQ0VTU0FSWV9QQVJFTlRIRVNFUzogVW5u
ZWNlc3NhcnkgcGFyZW50aGVzZXMNCj4gYXJvdW5kICdtYXNrZWRfdmFsdWUgIT0gZXhwZWN0Jw0K
PiA+ICMxODk6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X21vY3MuYzox
ODU6DQo+ID4gKwkJaWYgKCFyLT5za2lwX2NoZWNrICYmIChtYXNrZWRfdmFsdWUgIT0gZXhwZWN0
KSkgew0KPiA+DQo+ID4gdG90YWw6IDEgZXJyb3JzLCAwIHdhcm5pbmdzLCAxIGNoZWNrcywgMjM1
IGxpbmVzIGNoZWNrZWQgZmQzMmE5OGQ4YjRmDQo+ID4gZHJtL2k5MTUvZ3Q6IFNldCBCTElUX0ND
VEwgcmVnIHRvIHVuLWNhY2hlZA0KPiA+IC06NjE6IENIRUNLOk1BQ1JPX0FSR19QUkVDRURFTkNF
OiBNYWNybyBhcmd1bWVudCAnZHN0JyBtYXkgYmUNCj4gYmV0dGVyDQo+ID4gYXMgJyhkc3QpJyB0
byBhdm9pZCBwcmVjZWRlbmNlIGlzc3Vlcw0KPiA+ICM2MTogRklMRTogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaDoyNTc0Og0KPiA+ICsjZGVmaW5lICAgQkxJVF9DQ1RMX01PQ1MoZHN0
LCBzcmMpDQo+IAkJXA0KPiA+ICsJKCgoZHN0IDw8IDEpIDw8IEJMSVRfQ0NUTF9EU1RfTU9DU19T
SElGVCkgfCAoc3JjIDw8IDEpKQ0KPiA+DQo+ID4gLTo2MTogQ0hFQ0s6TUFDUk9fQVJHX1BSRUNF
REVOQ0U6IE1hY3JvIGFyZ3VtZW50ICdzcmMnIG1heSBiZQ0KPiBiZXR0ZXINCj4gPiBhcyAnKHNy
YyknIHRvIGF2b2lkIHByZWNlZGVuY2UgaXNzdWVzDQo+ID4gIzYxOiBGSUxFOiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oOjI1NzQ6DQo+ID4gKyNkZWZpbmUgICBCTElUX0NDVExfTU9D
Uyhkc3QsIHNyYykNCj4gCQlcDQo+ID4gKwkoKChkc3QgPDwgMSkgPDwgQkxJVF9DQ1RMX0RTVF9N
T0NTX1NISUZUKSB8IChzcmMgPDwgMSkpDQo+ID4NCj4gPiB0b3RhbDogMCBlcnJvcnMsIDAgd2Fy
bmluZ3MsIDIgY2hlY2tzLCAzOCBsaW5lcyBjaGVja2VkDQo+ID4gNzAyODI5YzI1ZDk4IGRybS9p
OTE1L2d0OiBJbml0aWFsaXplIHVudXNlZCBNT0NTIGVudHJpZXMgd2l0aCBkZXZpY2UNCj4gPiBz
cGVjaWZpYyB2YWx1ZXMgNGYzMzA2NzM5YTdlIGRybS9pOTUvYWRsOiBEZWZpbmUgTU9DUyB0YWJs
ZSBmb3INCj4gPiBBbGRlcmxha2UNCj4gPiAtOjIyOiBDSEVDSzpMSU5FX1NQQUNJTkc6IFBsZWFz
ZSB1c2UgYSBibGFuayBsaW5lIGFmdGVyDQo+ID4gZnVuY3Rpb24vc3RydWN0L3VuaW9uL2VudW0g
ZGVjbGFyYXRpb25zDQo+ID4gIzIyOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9tb2NzLmM6MzI1Og0KPiA+ICB9Ow0KPiA+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9pOTE1
X21vY3NfZW50cnkgYWRsX21vY3NfdGFibGVbXSA9IHsNCj4gPg0KPiA+IC06MjU6IENIRUNLOlBB
UkVOVEhFU0lTX0FMSUdOTUVOVDogQWxpZ25tZW50IHNob3VsZCBtYXRjaCBvcGVuDQo+ID4gcGFy
ZW50aGVzaXMNCj4gPiAjMjU6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21v
Y3MuYzozMjg6DQo+ID4gKwlNT0NTX0VOVFJZKDAsDQo+ID4gKwkJCUxFXzNfV0IgfCBMRV9UQ18x
X0xMQyB8IExFX0xSVU0oMyksDQo+ID4NCj4gPiAtOjMxOiBDSEVDSzpQQVJFTlRIRVNJU19BTElH
Tk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3Blbg0KPiA+IHBhcmVudGhlc2lzDQo+ID4g
IzMxOiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmM6MzM0Og0KPiA+
ICsJTU9DU19FTlRSWSg0OCwNCj4gPiArCQkJTEVfM19XQiB8IExFX1RDXzFfTExDIHwgTEVfTFJV
TSgzKSwNCj4gPg0KPiA+IC06MzU6IENIRUNLOlBBUkVOVEhFU0lTX0FMSUdOTUVOVDogQWxpZ25t
ZW50IHNob3VsZCBtYXRjaCBvcGVuDQo+ID4gcGFyZW50aGVzaXMNCj4gPiAjMzU6IEZJTEU6IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYzozMzg6DQo+ID4gKwlNT0NTX0VOVFJZ
KDQ5LA0KPiA+ICsJCQlMRV8xX1VDIHwgTEVfVENfMV9MTEMsDQo+ID4NCj4gPiAtOjM5OiBDSEVD
SzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFsaWdubWVudCBzaG91bGQgbWF0Y2ggb3Blbg0KPiA+
IHBhcmVudGhlc2lzDQo+ID4gIzM5OiBGSUxFOiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9tb2NzLmM6MzQyOg0KPiA+ICsJTU9DU19FTlRSWSg1MCwNCj4gPiArCQkJTEVfM19XQiB8IExF
X1RDXzFfTExDIHwgTEVfTFJVTSgzKSwNCj4gPg0KPiA+IC06NDM6IENIRUNLOlBBUkVOVEhFU0lT
X0FMSUdOTUVOVDogQWxpZ25tZW50IHNob3VsZCBtYXRjaCBvcGVuDQo+ID4gcGFyZW50aGVzaXMN
Cj4gPiAjNDM6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21vY3MuYzozNDY6
DQo+ID4gKwlNT0NTX0VOVFJZKDUxLA0KPiA+ICsJCQlMRV8xX1VDIHwgTEVfVENfMV9MTEMsDQo+
ID4NCj4gPiAtOjQ3OiBDSEVDSzpQQVJFTlRIRVNJU19BTElHTk1FTlQ6IEFsaWdubWVudCBzaG91
bGQgbWF0Y2ggb3Blbg0KPiA+IHBhcmVudGhlc2lzDQo+ID4gIzQ3OiBGSUxFOiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmM6MzUwOg0KPiA+ICsJTU9DU19FTlRSWSg2MCwNCj4g
PiArCQkJTEVfM19XQiB8IExFX1RDXzFfTExDIHwgTEVfTFJVTSgzKSwNCj4gPg0KPiA+IC06NTE6
IENIRUNLOlBBUkVOVEhFU0lTX0FMSUdOTUVOVDogQWxpZ25tZW50IHNob3VsZCBtYXRjaCBvcGVu
DQo+ID4gcGFyZW50aGVzaXMNCj4gPiAjNTE6IEZJTEU6IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX21vY3MuYzozNTQ6DQo+ID4gKwlNT0NTX0VOVFJZKDYxLA0KPiA+ICsJCQlMRV8xX1VD
IHwgTEVfVENfMV9MTEMsDQo+ID4NCj4gPiB0b3RhbDogMCBlcnJvcnMsIDAgd2FybmluZ3MsIDgg
Y2hlY2tzLCA1MiBsaW5lcyBjaGVja2VkDQo+ID4NCj4gPg0KPiANCj4gLS0NCj4gSmFuaSBOaWt1
bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcg0K
