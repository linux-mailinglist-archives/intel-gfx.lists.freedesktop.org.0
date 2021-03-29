Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8516234C4A2
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Mar 2021 09:12:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19CD089826;
	Mon, 29 Mar 2021 07:12:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F2E989826
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Mar 2021 07:12:28 +0000 (UTC)
IronPort-SDR: UN7+mDkgwWvRZ0zUEG3XJ/hciVbXinedUjJB3I+npEj0igO5h5+sHh1BO+8md59vFVu3KphoWK
 7bt3k+SIOLOw==
X-IronPort-AV: E=McAfee;i="6000,8403,9937"; a="252841025"
X-IronPort-AV: E=Sophos;i="5.81,287,1610438400"; d="scan'208";a="252841025"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2021 00:12:27 -0700
IronPort-SDR: UNa2JAOxdEVaWzZAvuunOfFPaI5dxfJXGJu48m8Fs41pZleIBfdytJ0cef3vIkf835VRu0D7C/
 Izp0at76MRyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,287,1610438400"; d="scan'208";a="437751067"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 29 Mar 2021 00:12:27 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 29 Mar 2021 00:12:27 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 29 Mar 2021 00:12:27 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 29 Mar 2021 00:12:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h6qBBbG6T5Ngb4Vdh7IUbrS+StDduL3RfdBiyGkOLyKpWFZZ9c5rhvjA7pADGpQk4B1HFJrfN2gJDaRtJlGTJdSRdNhEmjg+fIEryx4pwEJPdPcsvK/r8pqcGNHDz48yPfSjcBFRLTRzN/fSI3Y0OhBA5k7/cpBb0sc02wuBc73Ov67zSA3TbH0roGzQwFVZVKLMfDDsgrBpyx82AY5HFwRec8PrSH08fAzWNXIPzdiZX7EqJoWVed+CnZHCLoOgAhC/Rdl1RXfDBp+0ByjqAddybfauMTcDhyWE00/emhKM7TltLJ4sdRsqfS+wrZxbnb+UCQ4X5w/EZ64LCh+1kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+L14TFVzI6KZUn9dUQu4fFCK2tYFOilpD1y6+2P/CbI=;
 b=GEWIvL/+y7DwLMiYfFaskSdJwwbmHtdOZC1QR6ViOM/d4s9F8JcLsABktoh4mm7sXWQ+0an01+IxKG6419rI3OVdxOaz0Wch+c1/qQ+a9zOz82guAscYL+Xkl+oLsalcgdEfLMyMb51HgZqpKpA55FsnVZrK/WUW6oxQyFhNHtvvF0Fgsu8Tt2aG7rkUgEjhXk9CIVyq3qpdV/Lq7KlXYr5B0bv4vAfV/kvj+2sQz6+OFkhCZWtGbiRNImJ6jk/C3GakwYUSyBaNkEkzWdPDYyHdv2iVq2pQ5hphYtf1Erg1F0+lUwbqZbbDghki1OmX4/O5N/aB7CWMfgjnWI43Pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+L14TFVzI6KZUn9dUQu4fFCK2tYFOilpD1y6+2P/CbI=;
 b=lu9Otqc0KOKSgC0M4E3yVE4VrMUct8f06T7JsFrGbD1dRfIsi9386B+udn54/qgVJ1xfIIH8Nh8etRIShiJh8xUFpy55Uo5r2Hag3I6DvKaTvUb/wofhCnfOm+73/VpEgj0FiU1T4azCfWL7Lc26Tf9oFaL7e8yn54JLZG/xlx8=
Received: from CO1PR11MB5026.namprd11.prod.outlook.com (2603:10b6:303:9c::13)
 by MWHPR11MB1389.namprd11.prod.outlook.com (2603:10b6:300:26::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.30; Mon, 29 Mar
 2021 07:12:23 +0000
Received: from CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::7c75:c69a:694d:c0c]) by CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::7c75:c69a:694d:c0c%7]) with mapi id 15.20.3977.033; Mon, 29 Mar 2021
 07:12:23 +0000
From: "Gao, Fred" <fred.gao@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIHZmaW8vcGNpOiBBZGQgc3Vw?=
 =?utf-8?Q?port_for_opregion_v2.0+_(rev5)?=
Thread-Index: AQHXIbqaXfHY4B4o8UW2QY/Ux3rr9aqakZzQ
Date: Mon, 29 Mar 2021 07:12:23 +0000
Message-ID: <CO1PR11MB502634D68A7ABCC7D224708F9D7E9@CO1PR11MB5026.namprd11.prod.outlook.com>
References: <20201202171249.17083-1-fred.gao@intel.com>
 <161670632639.15545.18267924720650476934@emeril.freedesktop.org>
In-Reply-To: <161670632639.15545.18267924720650476934@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.198.147.202]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 22e9a327-dcba-4b51-b6fd-08d8f2820002
x-ms-traffictypediagnostic: MWHPR11MB1389:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1389772BC313B3EF766096B89D7E9@MWHPR11MB1389.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: J4de5A4TBPhueqkQTfqvLAiqfWKj/pa0cVyfkY/fYJhDW/YEsCo7YkUPh6QVfR/rqmSOo/1XEZHyCaEdMfHyYP56YlGV99wpP17nsBSHctQCKQYaTp9o3CiV2R184jx4nXZqQhNYSP/iorvfMTBEm3Z8l68BbOv2pvxVekjBdmnF3WahvGhBXV6ms3la+GR6Zmm9X6h1qST7IBXVUhoXweE2nO7x9s9JG3IAr9VrjhdXFObyVwv+d9BPu69GGCTgFZdXSfjLu8RG181tIp3PvbZLxjyBUcAun58uj84wwy74ATdtl+ll7/SHI+KeVF6qYWqn2SVTclB8spQoZ/7oYatTxdgUvevqluDds0MGf2q1auDKGK5Jkv4O4tVA4Kp6eOEGPHG1wLJ1LPIRD5b2+V5SwGPN47Dov9JtUG8j7uOa8/lM2FNZ0fgTs4+hxRssFEEfZQIstTToDhFlz8c4Fh9QrshgCIJ7QASS0Q0qZgf3776fMJVwzS77zb0buRZFNUpsyZry2VhwFYA9q8dA7JQjcjQi6cdm9vWsyysE2+YVhqMEOqtAl/+7ozk/07U3bHUFBD0jjy27lSWcKF8vI5iwDPP4TMIJcl3G6+Pwm9xLfEwPkdDpbQ52EpohO4kWSFl3XrqStYA2l5lMGvjsiABLgh2bE/bNGDuOnGx2OyzN3RyQ6THZkpe3lX4Y7Ce4
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5026.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39860400002)(346002)(376002)(136003)(366004)(6506007)(52536014)(53546011)(66446008)(66476007)(478600001)(76116006)(66946007)(966005)(26005)(66556008)(7696005)(110136005)(64756008)(4326008)(5660300002)(6636002)(86362001)(2906002)(38100700001)(83380400001)(9686003)(107886003)(55016002)(33656002)(8936002)(316002)(71200400001)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?aUp0ditMWDhDSVROa1dUQmVuTHhhczJIYy92eHNsOXJxZ1owZXpZTFlmRUJB?=
 =?utf-8?B?K2lNdDNNaGIwME1wZk44SFhydXNxdjJuQ29YeGlPU3JJV3lVUkNTQUZ4NUVJ?=
 =?utf-8?B?V1dMaE44dEJtRDFndjZaeWlmdUtpckdmVzhOTUdVMU1SUjN4K3cwaFFSQTRa?=
 =?utf-8?B?eGtJMzl0ZGNsY3dudzVaQmFMQTdFQkw4dnhlczdoUUhIaW9NYkxzcnBhbU1j?=
 =?utf-8?B?cml3T1RxQmRabTVGMXdtNXhwZWtGcWczZDNiaFZKaGgyR0xSOC9zMy9BVUx3?=
 =?utf-8?B?NjloU3MzeUpPTEUydjlHZkZvb2ZBVG5lQ1NjaC9nNnZZVU9CeHBrelBBSllY?=
 =?utf-8?B?YXBueXNPMVB0bFhQb0xkVjhONE51S2JaMHE5bjdJTGxDRkZFTkVoZFJQbUp3?=
 =?utf-8?B?NzhHYnd4SThEQkpBemZJNVlVaGN5anYvcWZkakJINHpaWTdPMExTNlV6QndJ?=
 =?utf-8?B?OVJhMzc0bWRpME92ekQ1cE5RQ3ZVRTFjUm1LSG83Ymdvdnp2RmZQS1oyd2tJ?=
 =?utf-8?B?cmpyUS9DWmtZOWtGeFIxRExtOVVwa2NzN1A4R2QzYldOM3QvZHk0NkxKb2w3?=
 =?utf-8?B?S21VRFFBRjUzRm5ZRTRMOUFzOHBuRmFLRU5PZEdHWUFieUhCL3RmQkFvSnB6?=
 =?utf-8?B?SmZpY2JMT3gvWFkyTGFjZDFGYStCYi9hbEYzTmQ0bWRqcjByRlgzT1gyLzNX?=
 =?utf-8?B?SEYvRE1TSkZZcy9vOEUyajM1VmI0aUZ3dVMzcFZZZzJJNHRZTjFBY0xDaHF3?=
 =?utf-8?B?bzNlSFJsRjhWMzR0ZWUrS0ZTbkRHSlhNKzVrdzRCRzlMMkdzMko3eGV6S2JH?=
 =?utf-8?B?bWdJNVFCVDdiSGpXS085c3JKMU5XWkd3R3FUZXV6dVNVYmxoMXNRK29EbHU5?=
 =?utf-8?B?UE1WQWMweDl5MHZtZVBZZVBoQWlkOG44YmsyU3BHK0JkcngvOFRoZlVoYTZ6?=
 =?utf-8?B?aVgvRlZVWW5hSDBuanJtanhaVDZlZno2Z1dtNS9CK3lZVC8rcEdIeXpqOUJz?=
 =?utf-8?B?N0ZmQWhVRXBEU2Q5Z3dBbkwvMkZsaXJERkZ1dmMyT2RzcUZJem1UekZ5N0lC?=
 =?utf-8?B?SW1DcU5CaEJ0cE9yaSthRmZsS2kvL3kzVDRMZlI4UHcvSUVwTWI2cWRPdWFQ?=
 =?utf-8?B?anloYTBWOCtraFFUbnpOUzZPS3VHUTFSN0l2RHNqSmJKbEpxMHM1eVQrei9p?=
 =?utf-8?B?d0hKK0JkZjc4d21CNCtKSDdHRlNYRnA0djNTMWNONmVvVE0xV3N2b3hBQVBP?=
 =?utf-8?B?YjBnQVVmaktJaHNUekVZeFlHMjNTd21CYklTTlZWQWtqVmh2R2tVeW5LSE9m?=
 =?utf-8?B?bDJLdDAvQzlsK2RpekljUmRKWC9FcUxKQnc0enFMaGE3UHIzdkxRVml0UlZn?=
 =?utf-8?B?SmhIcXBlQi9oRnYwSThJOTRta0l2TjgyYktEVE43b1kvNlArUnZSZ0IvT2ls?=
 =?utf-8?B?OU8yQVlvUCtSak0rU3h2S2duZ0s1WUJkZWZFU3NQSzNmTXZtUXJBZ1poRnBa?=
 =?utf-8?B?WHNQdDVwRkJWWjdpK1VMbUV4VUgxVEtWcU1uYkVXb2dOalJrNUdjRDdjTi9P?=
 =?utf-8?B?WUpiQzBOMG1jeTAvanpiU1dvQTlHTTI0UEJUaWQ2Tk0xUWxodm9ZUEdQMU1q?=
 =?utf-8?B?M01RTmhYWGR5REk2OGc0dCtLVkQxUGp6eXMzb01wbnFzUEVIZVE3bzc3SFFz?=
 =?utf-8?B?L3FqcEJBT1FZR2kybGZwS3BhbXpkTWxRd3JKdURycEVDNlBkcTE3L0RkS2lH?=
 =?utf-8?Q?XSSZU9LVDqOuQowz6B2N97nujTZ9mE460iLYrnS?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5026.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 22e9a327-dcba-4b51-b6fd-08d8f2820002
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Mar 2021 07:12:23.0861 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FnAkF/VT8Lhf9mC7h/E9kXWoBMDVEwdqjXm0hDyitjGXg00G85B68c0U2KWQdG3sssNh961B9BSSbQFK+x5VYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1389
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIHZm?=
 =?utf-8?q?io/pci=3A_Add_support_for_opregion_v2=2E0+_=28rev5=29?=
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
Cc: "Wang, Zhenyu Z" <zhenyu.z.wang@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksIExha3NobWk6DQoNCkNhbiB1IGhlbHAgb24gdGhpcyBmYWlsdXJlIGFnYWluLCANCnRoZSBv
bmx5IGRpZmZlcmVuY2UgYmV0d2VlbiB2ZXJzaW9uIDUmIDQgaXMgdGhlIGNvbW1lbnRzLg0KVGhh
bmtzIGluIGFkdmFuY2UuDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTog
UGF0Y2h3b3JrIDxwYXRjaHdvcmtAZW1lcmlsLmZyZWVkZXNrdG9wLm9yZz4NCj4gU2VudDogRnJp
ZGF5LCBNYXJjaCAyNiwgMjAyMSA1OjA1IEFNDQo+IFRvOiBHYW8sIEZyZWQgPGZyZWQuZ2FvQGlu
dGVsLmNvbT4NCj4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVj
dDog4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIHZmaW8vcGNpOiBBZGQgc3VwcG9ydCBmb3Ig
b3ByZWdpb24gdjIuMCsNCj4gKHJldjUpDQo+IA0KPiA9PSBTZXJpZXMgRGV0YWlscyA9PQ0KPiAN
Cj4gU2VyaWVzOiB2ZmlvL3BjaTogQWRkIHN1cHBvcnQgZm9yIG9wcmVnaW9uIHYyLjArIChyZXY1
KQ0KPiBVUkwgICA6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvODQ0
OTQvDQo+IFN0YXRlIDogd2FybmluZw0KPiANCj4gPT0gU3VtbWFyeSA9PQ0KPiANCj4gJCBtYWtl
IGh0bWxkb2NzIDI+JjEgPiAvZGV2L251bGwgfCBncmVwIGk5MTUNCj4gLi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fc2hyaW5rZXIuYzoxMDI6IHdhcm5pbmc6IEZ1bmN0aW9uDQo+
IHBhcmFtZXRlciBvciBtZW1iZXIgJ3d3JyBub3QgZGVzY3JpYmVkIGluICdpOTE1X2dlbV9zaHJp
bmsnDQo+IC4vZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9jbWRfcGFyc2VyLmM6MTQyMDogd2Fy
bmluZzogRXhjZXNzIGZ1bmN0aW9uDQo+IHBhcmFtZXRlciAndHJhbXBvbGluZScgZGVzY3JpcHRp
b24gaW4gJ2ludGVsX2VuZ2luZV9jbWRfcGFyc2VyJw0KPiAuL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfY21kX3BhcnNlci5jOjE0MjA6IHdhcm5pbmc6IEZ1bmN0aW9uDQo+IHBhcmFtZXRlciBv
ciBtZW1iZXIgJ2p1bXBfd2hpdGVsaXN0JyBub3QgZGVzY3JpYmVkIGluDQo+ICdpbnRlbF9lbmdp
bmVfY21kX3BhcnNlcicNCj4gLi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2NtZF9wYXJzZXIu
YzoxNDIwOiB3YXJuaW5nOiBGdW5jdGlvbg0KPiBwYXJhbWV0ZXIgb3IgbWVtYmVyICdzaGFkb3df
bWFwJyBub3QgZGVzY3JpYmVkIGluDQo+ICdpbnRlbF9lbmdpbmVfY21kX3BhcnNlcicNCj4gLi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2NtZF9wYXJzZXIuYzoxNDIwOiB3YXJuaW5nOiBGdW5j
dGlvbg0KPiBwYXJhbWV0ZXIgb3IgbWVtYmVyICdiYXRjaF9tYXAnIG5vdCBkZXNjcmliZWQgaW4N
Cj4gJ2ludGVsX2VuZ2luZV9jbWRfcGFyc2VyJw0KPiAuL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfY21kX3BhcnNlci5jOjE0MjA6IHdhcm5pbmc6IEV4Y2VzcyBmdW5jdGlvbg0KPiBwYXJhbWV0
ZXIgJ3RyYW1wb2xpbmUnIGRlc2NyaXB0aW9uIGluICdpbnRlbF9lbmdpbmVfY21kX3BhcnNlcicN
Cj4gL2hvbWUvY2lkcm0va2VybmVsL0RvY3VtZW50YXRpb24vZ3B1L2k5MTU6MjI6IC4vZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaQ0KPiBudGVsX3J1bnRpbWVfcG0uYzo0MjM6IFdBUk5JTkc6IElubGlu
ZSBzdHJvbmcgc3RhcnQtc3RyaW5nIHdpdGhvdXQgZW5kLQ0KPiBzdHJpbmcuDQo+IA0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
