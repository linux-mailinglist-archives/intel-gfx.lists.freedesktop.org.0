Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5386A2FCDB6
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 11:03:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B27DE89958;
	Wed, 20 Jan 2021 10:03:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C48D289958
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jan 2021 10:03:22 +0000 (UTC)
IronPort-SDR: Azj5npIiIVaUI7Mr9ierwrhxcO3MSSnieyaHXb6b3yFk4C+6z6OFT4gCKMbiFPdR5ECr87QiNW
 OCuMmYHkh/hQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9869"; a="197802708"
X-IronPort-AV: E=Sophos;i="5.79,360,1602572400"; d="scan'208";a="197802708"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 02:03:18 -0800
IronPort-SDR: tMvAj0ifU5XOpd2C/nSv6YCzhqnkAjMAsbnJzYq6Nnso6dHABe2HVavh7syfdwE0Hf+QiYG9z3
 Jzmo3GnVAG2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,360,1602572400"; d="scan'208";a="426842138"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 20 Jan 2021 02:03:14 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 20 Jan 2021 02:03:14 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 20 Jan 2021 02:03:13 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 20 Jan 2021 02:03:13 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Wed, 20 Jan 2021 02:03:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m/wym0xV7V1s7ijCe4nFeQedV3d9fkvfxF73qExjS7qk448pDcmOwUpGclknwZ8CIQNsn0MgjhqPpZWfitYsK3P/XOgqbLAztTnFu0bCXaicl1zdIcy58fy3jmRWBOK8O5XrXDqyDhn2uq/G8c09iT25dPF4srxYF4TdiHEhOIoQlNhaazpykRbd75S1VY1CS8HPEoyUU0wKBG0Tychxkv+LKikquNg1GDQGYziuULUxzKhWR6hXCw/FNM59cS7qXW+lALPIOyC3denkPYV3CjrDGvgy7i30L4hc7iXacQ96z656pLqUM4XelwfdlFXgON8CB6MEp0G7h6PUDqPpHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R7U9EA6H0uvpOydZZe6FY0bBt0lCeFNOOKCLwnEwh3c=;
 b=Fc7U+FDIeYhf9k+gu8bMArEPw4Zfy1Men06VwncsCS3raDteyiTr+gjKYL1Km1ayYrtplD8r/zChw04vx+dBazXHj8adxAyYzb/Ju40r+cTQEsSYyFGyHVNriCmObjya3F3/evfuowLQKmp5BpZghyT4bpVYUXVB/I7YcvjxNvboj78f0WCJF1xHpvn0I6mqsFXtrygvVOKQdLb62VYgs7fSP0BA+6RJxGIjV7H1RVS8/z3TCUZhRbUi+u66wzrjHDjlvKrl/5QLiVlVsBgLlQhUdA6+raUXxatM/ndfBpXLGwDNvdB4xqcd+v5ejelp/DR/zJPSv+kMUwLSZXMwdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R7U9EA6H0uvpOydZZe6FY0bBt0lCeFNOOKCLwnEwh3c=;
 b=U8e9Gd6FbO4SqVN1hTezHSx6c6Hc+MaZ9WHfHqEK/XZefX4keM3qzWdXMunBUlJO1LB1AwHflzCAsRyPMxQJRx6PphvRz2Z7c5fL8Y1Q2XSw+QQcOpXrfMmSrSZPKKZGjHRgGIsVbweJB7P5GKL4Ro8tADudw3UELtKgLRm1Lqg=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SN6PR11MB3343.namprd11.prod.outlook.com (2603:10b6:805:ba::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.14; Wed, 20 Jan
 2021 10:03:09 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::910b:5087:a18e:f19]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::910b:5087:a18e:f19%6]) with mapi id 15.20.3763.014; Wed, 20 Jan 2021
 10:03:09 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: "Tseng, William" <william.tseng@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2] [v2] x86/gpu: add JSL stolen memory
 support
Thread-Index: AQHW7vmPaDpHFOZuW0mkunuV/n3OqKowSJNw
Date: Wed, 20 Jan 2021 10:03:09 +0000
Message-ID: <SN6PR11MB34214F12F644FC98790473B1DFA20@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20210120070013.28100-1-william.tseng@intel.com>
In-Reply-To: <20210120070013.28100-1-william.tseng@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [103.249.233.127]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 4512261e-32d4-4d19-d1a1-08d8bd2a9740
x-ms-traffictypediagnostic: SN6PR11MB3343:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB334316112EDA5209650E5177DFA20@SN6PR11MB3343.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:186;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kOrKbPKvPl1Vx3s4Mc4CvveuzJcCycA9uNzalLXF4Dk98sESae+1gCfilxXkY6PsVOZHr2SHkw/d6ZNOCzzobEwKhrn4rjXB6D9d8wRWxDsn0dqYbAYatoQTiJepDODBpNwX3/113LkfWwdo4UHIP8TXZqpUQB6hIwE7NeFQVsAdpmqFzSJee1PX0yVyUSgARpN3AHwSX8/bKLAl6U0qFn7pal7gNFXNID2tsig3N7j4mAczNwVcd8s19I/AGW/zO6qT2MONRgINfRxdOKhyj3DvXzPX/GSDXFwgX2Mqt2hWqAWyJVa2XtzlP3Dnn/6DKeRJXHlyZoYtQ7pjlXxRYRn0hT+AD17mmip722OcZBLHPwOsRdS5qhXCyj85VCjGpP9P4Y/qlLenCbK8yzOq0ZTPZ/Lk4D/wnQ+K1F68qNY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(346002)(376002)(396003)(39860400002)(366004)(71200400001)(33656002)(55016002)(64756008)(6506007)(76116006)(8936002)(53546011)(7696005)(8676002)(186003)(110136005)(107886003)(316002)(2906002)(966005)(4326008)(5660300002)(26005)(52536014)(86362001)(9686003)(54906003)(66946007)(66476007)(66446008)(478600001)(66556008)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?TlBoaTlvT1ZmREtnY1BQc0xoTkZZL29PQVk2WWpGUEhBYld4Y3NTRW5EOFJr?=
 =?utf-8?B?cUp6NVZSK21KUHRVaFdNcHRQbDhFb2c5K0pXdzVHK0FUbFBRYUcyZDJkempJ?=
 =?utf-8?B?Vk1Xa1VsM2ppcjFWang5U2NwbDlQUUtOTnFndm9sbU53eGZMMDhURVFmOXNS?=
 =?utf-8?B?TmZIazZSUmQ4V2ZtWW5ZcXlxSTFpcWppdkZadHFTV1I4dEhaak5mRGFDSitX?=
 =?utf-8?B?ZDF4NS9rS21vTFhTY2NGdGNGV0VSV0d2djErS0pyZTJnVlNpeGlBN0ZRMml0?=
 =?utf-8?B?Vm9JVmRFZk5ZbmpLbFBKODZLUTlaWFRXMGxCUk9uYnd5djFWWnJxb2FHZlJ4?=
 =?utf-8?B?eHlvSk1UQjk3RmROUjdHTDhaa05OOS9xaE81OFJETFBsUzJ4Yi9yb29nUUxT?=
 =?utf-8?B?YTBMK1ZCUmM1K3ZENkxJQUlOQzhEczc4RnNOeGVqZTJzd05kUTZGa1grbmRt?=
 =?utf-8?B?U25tMVZXTlg2WGtJV0FuZEdZWHkxL0dJQnB5TjZDbmtsbmR5bUJ1akM5UUF4?=
 =?utf-8?B?VlpkVFg0eUI4WHNjUEMrdmgyOXo5UnpNVzAyalhTc3Q4Q0pGdEkxY29ESzEz?=
 =?utf-8?B?NFlLREdHT2Q1ZmdFanAxMHpEY2YvNTI1VVhuSGQ3VkkrL1hxTktiZFJmYXpO?=
 =?utf-8?B?L0NZVHV6UzI4MU4vb2crYnl5dUlwYW44eXhIMnpkTmZWNlFUajB3Zmk5Rndh?=
 =?utf-8?B?UVEraWEyRXdLVS9HUmVXKzlRcjlWSFo2blBjYU1RdUQzVlE3WXgxeHAvby84?=
 =?utf-8?B?WTY2TFArQVhHM0RheVVvc29zMEJNblE5SzdkejZ3T3k2WEc4K2hGa3dkMHBP?=
 =?utf-8?B?WS85cDFQQXl4dzNYVi90K2MyVjdBTkY4NFhwNXZGckxaYnU1Sjg2OWxEYjJi?=
 =?utf-8?B?TWNiZEhQZTA5RllORHVKQTNKSHM0L3JOREhTWk1ETVJBZTRFd3VEZllqUDd3?=
 =?utf-8?B?dUpRUEN5bHFnUlovRzlTWXNzSXFKVVM4bXBtUUgzOW1IQ1ZHczVlQVFZZFgv?=
 =?utf-8?B?QzdXZmhQRmhjc3pPUDJKZVN3VEo1ZVQ5ZnBZalBXcXFuVTQ0a2U0c0cyK0lv?=
 =?utf-8?B?RFNxTmhsYnc1NTZ4d1ZjQ01RZDNZaHBZck51QTBZcUFIWkwxWE12Szh4dVVC?=
 =?utf-8?B?bHpLVjh1Y3FQL2h2V1RTWjdCUFRpam43b1RzbVdkSEJTTWxQN2pCYS9ZaWlP?=
 =?utf-8?B?SmQ4YzNnOW5LQ0tmRDVPV2JjUWw2dDR2dnp0M2tFOE5pQ3EvNnRNOVBwNEV1?=
 =?utf-8?B?bGFjaG5SbXcrVkp0U3dlemMrUW9wSjhkY29YM1RHMStrWnlzUmpUZlpkdHJk?=
 =?utf-8?Q?g7gpbj6fQE2lwNdA8d8bGyT9Tjpqj6kqVv?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4512261e-32d4-4d19-d1a1-08d8bd2a9740
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2021 10:03:09.5969 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vz4/4IQjsnHY29a+cgGZtFRUnpniD+T2UPHZ0GFVQNg+0HsrAvQ3RL1qJ5rfqRR4l6dgJSGRQ+YdenXwDhk7pG5bfnm0ZieRkDzHKHIiKFs6ohMPzpjyYtLbkbI/sv5Q0va5BQQqxgswiF1X1yCKXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3343
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] [v2] x86/gpu: add JSL stolen memory
 support
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
Cc: "Pandey, Hariom" <hariom.pandey@intel.com>, "Tseng,
 William" <william.tseng@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2ltaWxhciBwYXRjaCBpcyBhbHJlYWR5IHVuZGVyIHJldmlldyB3aXRoIHg4NiBtYWludGFpbmVy
cyB3aGljaCBJIHNlbnQgMSBtb250aCBhZ28uIExldCB0aGF0IHBhdGNoIGdldCBkb25lIHdpdGgg
cmV2aWV3IHRoZW4gd2Ugd2lsbCBub3QgbmVlZCB0aGlzLg0KDQpUaGFua3MsDQpUZWphcw0KDQo+
IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8aW50ZWwtZ2Z4
LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YNCj4gV2lsbGlhbSBU
c2VuZw0KPiBTZW50OiAyMCBKYW51YXJ5IDIwMjEgMTI6MzANCj4gVG86IGludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IFRzZW5nLCBXaWxsaWFtIDx3aWxsaWFtLnRzZW5nQGlu
dGVsLmNvbT4NCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIIHYyXSBbdjJdIHg4Ni9ncHU6
IGFkZCBKU0wgc3RvbGVuIG1lbW9yeSBzdXBwb3J0DQo+IA0KPiBUaGlzIHBhdGNoIGhhcyBhIGRl
cGVuZGVuY3kgb246DQo+ICJkcm0vaTkxNS9qc2w6IFNwbGl0IEVITC9KU0wgcGxhdGZvcm0gaW5m
byBhbmQgUENJIGlkcyINCj4gDQo+IENjIDogVGVqYXMgVXBhZGh5YXkgPHRlamFza3VtYXJ4LnN1
cmVuZHJha3VtYXIudXBhZGh5YXlAaW50ZWwuY29tPg0KPiBDYyA6IE1hdHQgUm9wZXIgPG1hdHRo
ZXcuZC5yb3BlckBpbnRlbC5jb20+IENjIDogVmlsbGUgU3lyasOkbMOkDQo+IDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogV2lsbGlhbSBUc2VuZyA8d2ls
bGlhbS50c2VuZ0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgYXJjaC94ODYva2VybmVsL2Vhcmx5LXF1
aXJrcy5jIHwgMSArDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykNCj4gDQo+IGRp
ZmYgLS1naXQgYS9hcmNoL3g4Ni9rZXJuZWwvZWFybHktcXVpcmtzLmMgYi9hcmNoL3g4Ni9rZXJu
ZWwvZWFybHktcXVpcmtzLmMNCj4gaW5kZXggYTRiNWFmMDNkY2MxLi41MzRjYzNmNzhjNmIgMTAw
NjQ0DQo+IC0tLSBhL2FyY2gveDg2L2tlcm5lbC9lYXJseS1xdWlya3MuYw0KPiArKysgYi9hcmNo
L3g4Ni9rZXJuZWwvZWFybHktcXVpcmtzLmMNCj4gQEAgLTU0OSw2ICs1NDksNyBAQCBzdGF0aWMg
Y29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgaW50ZWxfZWFybHlfaWRzW10NCj4gX19pbml0Y29u
c3QgPSB7DQo+ICAJSU5URUxfQ05MX0lEUygmZ2VuOV9lYXJseV9vcHMpLA0KPiAgCUlOVEVMX0lD
TF8xMV9JRFMoJmdlbjExX2Vhcmx5X29wcyksDQo+ICAJSU5URUxfRUhMX0lEUygmZ2VuMTFfZWFy
bHlfb3BzKSwNCj4gKwlJTlRFTF9KU0xfSURTKCZnZW4xMV9lYXJseV9vcHMpLA0KPiAgCUlOVEVM
X1RHTF8xMl9JRFMoJmdlbjExX2Vhcmx5X29wcyksDQo+ICAJSU5URUxfUktMX0lEUygmZ2VuMTFf
ZWFybHlfb3BzKSwNCj4gIH07DQo+IC0tDQo+IDIuMTcuMQ0KPiANCj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dA0KPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IGh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
