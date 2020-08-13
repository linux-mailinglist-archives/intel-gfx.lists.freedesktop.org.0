Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA64243E88
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Aug 2020 19:57:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 962FB6E0A0;
	Thu, 13 Aug 2020 17:57:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B218F6E0A0
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Aug 2020 17:56:58 +0000 (UTC)
IronPort-SDR: oqtFDgyChTk/mlut3o5mpsllyJS6O2rEf+Una81w4KO59+SkqbEQPQGsWAExOfkHGPUKteQW2R
 Vtkdazb6DMuw==
X-IronPort-AV: E=McAfee;i="6000,8403,9712"; a="133815423"
X-IronPort-AV: E=Sophos;i="5.76,309,1592895600"; d="scan'208";a="133815423"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2020 10:56:58 -0700
IronPort-SDR: oTKhxJUw9iqrmawyN4104El9rOeszVqThnVQKIyw+w/5pThlqWcICxD1PEuKcdcABdfBX++AxK
 rm9/Y6efR1dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,309,1592895600"; d="scan'208";a="369676059"
Received: from fmsmsx603-2.cps.intel.com (HELO fmsmsx603.amr.corp.intel.com)
 ([10.18.84.213])
 by orsmga001.jf.intel.com with ESMTP; 13 Aug 2020 10:56:57 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 13 Aug 2020 10:56:57 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 13 Aug 2020 10:56:57 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Thu, 13 Aug 2020 10:56:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MdeIx5p4iGu+x9B5dQtofuiHT8mAlIU94ogM49YOGQQRBiqS1QexhHCS16bAJiltYP2h+oCKU0I/cVEYLSS7KY2rUgJx9eKn/G+ET9icMgW6BjPNak4E017XF9t3MvVuHgHiIhhWm+q7cFMZvyJqkiTia1ROPL/eC023xQuL82YYQfpE52WV7jmDvj3hGCSrbJvYrH7Dc/q+K4M7XkeEQroG9g0gNJwlwfw3csgYCKwqEp5H7PTHnQYthndEPLfr5n5LGAsXn7XdTJ679P1b4diFkhT3uCk+GxPznmMhcvsSJIz5beKagOkZY8ymGWIj5873a6FHOjPu7nFH404T8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XkCIcZW/TX6GO1moGyGnJKqHhKZt8YZ2LWEqD207NJE=;
 b=JVwaCQIuOHua7+4y2sPb0VffQWFTlAQu3IJi0lt4s/QU2aSxzg2zCVdkn+mEMLIGMeZ7NezCXLW7qkuCM5Nckj47enRwLjb9qrEU2Gzw1sUdticmWRrhrCc21150ghracB6Ahl1JTd0JralvO75dt/D386OiryTRI6jaq4MX2xRyBcJfvtgmilHatjTDcOoudhLVyypgaXTk9S0wbYXjLmyaUGK4xH+ofT6fy4HZs+bbXP4EpT4B/cPyJUYWHO9/ZnQOkbb5VSuGcKgQM4lgltoGqZeZkS/ys+vcsGdlkmXdwGiQKZO1FJyUiRjIdxcTfVF+ICXn9OOnTv75whYpUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XkCIcZW/TX6GO1moGyGnJKqHhKZt8YZ2LWEqD207NJE=;
 b=V9xnhSkN2V+rgUK45Ke/Ih+JuHeDPHchkqIXKGu5TGxXUD4L03kG6RnHOqDf56LXvvt/zxizsGzF0gz3d4nm+9t0WaUeoG6uoBQBP8wdQhmIciI/+/4fw8kWilt0/YyK85LP1gCgHeg/ZFguxvIWUAlMm6gOg/+T20XhqunTBvI=
Received: from BYAPR11MB3190.namprd11.prod.outlook.com (2603:10b6:a03:7b::17)
 by BY5PR11MB4182.namprd11.prod.outlook.com (2603:10b6:a03:183::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3283.18; Thu, 13 Aug
 2020 17:56:48 +0000
Received: from BYAPR11MB3190.namprd11.prod.outlook.com
 ([fe80::5500:d278:6406:ccbf]) by BYAPR11MB3190.namprd11.prod.outlook.com
 ([fe80::5500:d278:6406:ccbf%3]) with mapi id 15.20.3261.026; Thu, 13 Aug 2020
 17:56:48 +0000
From: "Runyan, Arthur J" <arthur.j.runyan@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, Kai-Heng Feng
 <kai.heng.feng@canonical.com>
Thread-Topic: [Regression] "drm/i915: Implement display w/a #1143" breaks HDMI
 on ASUS GL552VW
Thread-Index: AQHWcSdUQCvrdeyJJk2X6NbGbHjfx6k2QUkAgAARAoA=
Date: Thu, 13 Aug 2020 17:56:48 +0000
Message-ID: <BYAPR11MB31902A8155BE70687A93FAFAB2430@BYAPR11MB3190.namprd11.prod.outlook.com>
References: <844BC1FA-9C2F-4AAF-A0D9-B9A1EA40F51D@canonical.com>
 <32B7CFB3-045A-463D-8556-A63BACEB89D1@intel.com>
In-Reply-To: <32B7CFB3-045A-463D-8556-A63BACEB89D1@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [73.2.83.51]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2aa9069d-e129-4723-055c-08d83fb24024
x-ms-traffictypediagnostic: BY5PR11MB4182:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4182A3242A7C27E64077ACE9B2430@BY5PR11MB4182.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6Dk6yan1/RfQSzGPJQN7p4gxGELFMXftJq4SNneNGs0hs+JJqtgTKHk5CVVjz1Ig4gmV0cZty/4YQJRUSpNCIDlvmatd4RcUkVFh+l0Zgh4LCDszcOy5YdGW8IrfmRY7Hd8K9bfQtBzJ+ETxpgwvbVgTgTgsdVXqhxEpVXRjoMvKlM0HR/h03b3eGG7yYKZF6Y9M0BDG0VmDmERjKj5Z4otSEkiChrb1c8uVfUDE+6xCbNUnflywdfUrja/GnT4IfAETippTCjBKeXeys+thxopDDijGZ4Db62+DL3VrYH2jSApo1EUQRwYXwnpFRJkp9riETSdPPdo8KWKvvI0l8HLvxB9MXzg+dCfwl6o0RpuHAfnRxm48HS/fD/oMeYUauXJ3f38ok23HqFs8tdjnKw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3190.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(39860400002)(376002)(366004)(136003)(396003)(83380400001)(6506007)(33656002)(7696005)(66574015)(66556008)(53546011)(66476007)(66946007)(4326008)(966005)(71200400001)(86362001)(478600001)(66446008)(64756008)(2906002)(76116006)(5660300002)(26005)(54906003)(8936002)(316002)(110136005)(52536014)(8676002)(55016002)(9686003)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: /NniFr5vhSk8jK3L8XsbjawxN0BEU+TCBq8t1CHc4gIu9tW4XkvWurjPGsR91yqHgqSihNrt1VejKCpRn3fpP/HeDGOXlA9LdWWrM1foWCxxII8BK8cORjufqxUeY2Vb7j3oT0cnDw6YshAsGI8pYCtCiLJyoqpQwP6wtBG6vv4Lz42wEbrEfvxioacpVCwrsxGTI0oVKdnZy+9+rhx51kPBcufW2hrbmfWYzYjSdzmqfAp+oIu2YkuEqhaeMYKI1hiMxJyh9X3243H6v1GEsYVtKfZM/my6MbVCEH/Ee++BBwwl6hrkczx5befQV/CchVEUpovTLWy2ifg5T/KAeQux12fvkAdcnR2axjG62I5yZ6jYGEVDGYWmtMEORoHqKcmuQnjbzEv7e+3ONymxshjHpTs8kKPT/1SJG6SybAjpDv0sP1+j8qdsUEJ6tBSsjYjOOF5jA4jfYp8Q9f0T0otzXLOMcdCEA83LQiUY2pvcoF4HTZEpkfp0kR0Lr75WXQaGAlYh2Ie2y6RFPfFKbBbbGRc6TjUIG3G+8jYoTCrafovvLmAHmbXdQZtC5ZuRb8gx274G+VMstpNQd6b6YH34sC9DlxDiUBqM02DZ9QS822g3Suj2lQNdFnkq0kAV+RVizZmp4FmGpIYGm7S4xw==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3190.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2aa9069d-e129-4723-055c-08d83fb24024
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2020 17:56:48.4157 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bqBsewWDluEAZSHWUKNmlpSJXeQruqixh3/OyG7P4/81fhyKDmI0GsVwtyzfF2gwMbhnP7CsGgnVK3/aUnPWrHTttKSlZxhDRmLOYMdPCAQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4182
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Regression] "drm/i915: Implement display w/a
 #1143" breaks HDMI on ASUS GL552VW
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIHdvcmthcm91bmQgaXMgZnJlZWluZyB1cCBzdHVjayB2c3dpbmcgdmFsdWVzIHRvIGxldCBu
ZXcgdnN3aW5nIHByb2dyYW1taW5nIGtpY2sgaW4uICBNYXliZSB0aGUgbmV3IHZzd2luZyB2YWx1
ZXMgYXJlIHdyb25nLg0KVHJ5IGNoZWNraW5nIHRoZSB2c3dpbmcgdGhhdCBkcml2ZXIgcHJvZ3Jh
bXMgYWdhaW5zdCB3aGF0IEJJT1MvR09QIHByb2dyYW1zLg0KDQotLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQ0KRnJvbTogVml2aSwgUm9kcmlnbyA8cm9kcmlnby52aXZpQGludGVsLmNvbT4gDQpT
ZW50OiBUaHVyc2RheSwgQXVndXN0IDEzLCAyMDIwIDk6NTAgQU0NClRvOiBLYWktSGVuZyBGZW5n
IDxrYWkuaGVuZy5mZW5nQGNhbm9uaWNhbC5jb20+OyBSdW55YW4sIEFydGh1ciBKIDxhcnRodXIu
ai5ydW55YW5AaW50ZWwuY29tPg0KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+OyBpbnRlbC1nZnggPGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmc+DQpTdWJqZWN0OiBSZTogW1JlZ3Jlc3Npb25dICJkcm0vaTkxNTogSW1wbGVtZW50IGRpc3Bs
YXkgdy9hICMxMTQzIiBicmVha3MgSERNSSBvbiBBU1VTIEdMNTUyVlcNCg0KQXJ0LCBhbnkgY29t
bWVudCBoZXJlPw0KDQpJIGp1c3QgY2hlY2tlZCBhbmQgdGhlICBXL2EgMTE0MyBpcyBpbXBsZW1l
bnRlZCBhcyBkZXNjcmliZWQsIGJ1dCBpdCBpcyBmYWlsaW5nIEhETUkgb24gdGhpcyBoeWJyaWQg
c3lzdGVtLg0KDQo+IE9uIEF1ZyAxMiwgMjAyMCwgYXQgOTowNyBQTSwgS2FpLUhlbmcgRmVuZyA8
a2FpLmhlbmcuZmVuZ0BjYW5vbmljYWwuY29tPiB3cm90ZToNCj4gDQo+IEhpLA0KPiANCj4gVGhl
cmUncyBhIHJlZ3Jlc3Npb24gcmVwb3J0ZWQgdGhhdCBIRE1JIG91dHB1dCBzdG9wcyB3b3JraW5n
IGFmdGVyIG9zIHVwZ3JhZGU6DQo+IGh0dHBzOi8vYnVncy5sYXVuY2hwYWQubmV0L2J1Z3MvMTg3
MTcyMQ0KPiANCj4gSGVyZSdzIHRoZSBiaXNlY3QgcmVzdWx0Og0KPiAwNTE5YzEwMmY1Mjg1NDc2
ZDc4NjhhMzg3YmRiNmM1ODM4NWU0MDc0IGlzIHRoZSBmaXJzdCBiYWQgY29tbWl0IA0KPiBjb21t
aXQgMDUxOWMxMDJmNTI4NTQ3NmQ3ODY4YTM4N2JkYjZjNTgzODVlNDA3NA0KPiBBdXRob3I6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IERhdGU6ICAg
TW9uIEphbiAyMiAxOTo0MTozMSAyMDE4ICswMjAwDQo+IA0KPiAgICBkcm0vaTkxNTogSW1wbGVt
ZW50IGRpc3BsYXkgdy9hICMxMTQzDQo+IA0KPiAgICBBcHBhcmVudGx5IFNLTC9LQkwvQ0ZMIG5l
ZWQgc29tZSBtYW51YWwgaGVscCB0byBnZXQgdGhlDQo+ICAgIHByb2dyYW1tZWQgSERNSSB2c3dp
bmcgdG8gc3RpY2suIEltcGxlbWVudCB0aGUgcmVsZXZhbnQNCj4gICAgd29ya2Fyb3VuZCAoZGlz
cGxheSB3L2EgIzExNDMpLg0KPiANCj4gICAgTm90ZSB0aGF0IHRoZSByZWxldmFudCBjaGlja2Vu
IGJpdHMgbGl2ZSBpbiBhIHRyYW5zY29kZXIgcmVnaXN0ZXINCj4gICAgZXZlbiB0aG91Z2ggdGhl
IGJpdHMgYWZmZWN0IGEgc3BlY2lmaWMgRERJIHBvcnQgcmF0aGVyIHRoYW4gYQ0KPiAgICBzcGVj
aWZpYyB0cmFuc2NvZGVyLiBIZW5jZSB3ZSBtdXN0IHBpY2sgdGhlIGNvcnJlY3QgdHJhbnNjb2Rl
cg0KPiAgICByZWdpc3RlciBpbnN0YW5jZSBiYXNlZCBvbiB0aGUgcG9ydCByYXRoZXIgdGhhbiBi
YXNlZCBvbiB0aGUNCj4gICAgY3B1X3RyYW5zY29kZXIuDQo+IA0KPiAgICBBbHNvIG5vdGUgdGhh
dCBmb3IgY29tcGxldGVuZXNzIEkgaW5jbHVkZWQgc3VwcG9ydCBmb3IgRERJIEEvRQ0KPiAgICBp
biB0aGUgY29kZSBldmVuIHRob3VnaCB3ZSBuZXZlciBoYXZlIEhETUkgb24gdGhvc2UgcG9ydHMu
DQo+IA0KPiAgICB2MjogQ0ZMIG5lZWRzIHRoZSB3L2EgYXMgd2VsbCAoUm9kcmlnbyBhbmQgQXJ0
KQ0KPiANCj4gICAgQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4NCj4g
ICAgQ2M6IEFydCBSdW55YW4gPGFydGh1ci5qLnJ1bnlhbkBpbnRlbC5jb20+DQo+ICAgIFNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
DQo+ICAgIExpbms6IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC9tc2dp
ZC8yMDE4MDEyMjE3NDEzMS4yODA0Ni0xLXZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tDQo+
ICAgIFJldmlld2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+
IA0KPiANCj4gZG1lc2cgZnJvbSBkcm0tdGlwIHdpdGggZHJtLmRlYnVnPTB4ZSBjYW4gYmUgZm91
bmQgaGVyZToNCj4gaHR0cHM6Ly9idWdzLmxhdW5jaHBhZC5uZXQvdWJ1bnR1Lytzb3VyY2UvbGlu
dXgvK2J1Zy8xODcxNzIxL2NvbW1lbnRzLw0KPiA2NA0KPiANCj4gS2FpLUhlbmcNCg0KDQpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
