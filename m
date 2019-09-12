Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D798B0FF3
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 15:30:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A050F6ED5E;
	Thu, 12 Sep 2019 13:30:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 2119 seconds by postgrey-1.36 at gabe;
 Thu, 12 Sep 2019 12:24:48 UTC
Received: from m9a0003g.houston.softwaregrp.com
 (m9a0003g.houston.softwaregrp.com [15.124.64.68])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 229E86E04E
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 12:24:48 +0000 (UTC)
Received: FROM m9a0003g.houston.softwaregrp.com (15.121.0.191) BY
 m9a0003g.houston.softwaregrp.com WITH ESMTP; 
 Thu, 12 Sep 2019 12:23:58 +0000
Received: from M9W0068.microfocus.com (2002:f79:bf::f79:bf) by
 M9W0068.microfocus.com (2002:f79:bf::f79:bf) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10; Thu, 12 Sep 2019 11:23:16 +0000
Received: from NAM05-CO1-obe.outbound.protection.outlook.com (15.124.72.14) by
 M9W0068.microfocus.com (15.121.0.191) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.1591.10 via Frontend Transport; Thu, 12 Sep 2019 11:23:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gY8qgw9foCDdO5lidXrPIrchyZrTCZo2j6ds5Pnpx+DdK6uJFOKtwddzUK+z5I4b18rDn1cq6p4wDAgOqv6jeNOACpGt4ksTDbGBdo9nbEK/b3WtqV7Ywv5FlKrAscVxYFs0TbPLoZQwUzc6n0cnVQ8qu6a958Im0qZYYqOtOGlsVAuv3WFbUNMK60yKHQRgDbw0LOQL7i3kL3wMtp3NBuBUlBH3lpltPNH2uIJGPLjnTHcFXyJYWEG0GHZUvfuoFuQc3oA/+0MtcyVSutGvpeyzErV1IjunJ6Y5/oZUu7nrx+odZ9dkEps00iVrqcCMKuey7zLWd2YoPKNhUpReLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nwo4KWkACWyRIvqaHvb2vG9rVDF2Flb6xXZ1Mb//3+g=;
 b=ZGihH00hhFbdK6h/IXFQ3///LvS4UOSkgKb3TQ5CCKuQGcaop73i0+lBYKytubtxyoS+YqAHn/RaW+SY0qBUPogHbnqgMhw4eixeN3YenspWdQ2fmCuZrZZ1u+71hsJtfju5d5QRnun/f7QG8HMpQcNFz1kdmHYdDtMCeGTqLirahLdsI4qHd0DW2hs8LCOEb1YUTia2hlgcU3GRNwUCvCjrFw9cL0InFjTA/sWmFjgQvaTRusYGTDreyLVcVhn5yycP2lNwaz6wDzdZst5vs0TwOFwhCRndVM7CPkItV2xDFF0v7S/x9BhJ2L/gsLryeugxS/xrNr7RJSmdpvtp8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from CH2PR18MB3349.namprd18.prod.outlook.com (52.132.246.91) by
 CH2PR18MB3174.namprd18.prod.outlook.com (52.132.244.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.14; Thu, 12 Sep 2019 11:23:10 +0000
Received: from CH2PR18MB3349.namprd18.prod.outlook.com
 ([fe80::d507:1099:1d46:c025]) by CH2PR18MB3349.namprd18.prod.outlook.com
 ([fe80::d507:1099:1d46:c025%6]) with mapi id 15.20.2241.018; Thu, 12 Sep 2019
 11:23:10 +0000
From: Martin Wilck <Martin.Wilck@suse.com>
To: "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Thread-Topic: 5.3-rc3: Frozen graphics with kcompactd migrating i915 pages
Thread-Index: AQHVTq/MWvioSNESukKKSJFs3b9mpA==
Date: Thu, 12 Sep 2019 11:23:09 +0000
Message-ID: <3dcff41048621ff440687dd6691aae31a8647a1e.camel@suse.com>
References: <ad70d1985e8d0227dc55fedeec769de166e63ae0.camel@suse.com>
 <156535522344.29541.9312856809559678262@skylake-alporthouse-com>
 <20190910142047.GB3029@papaya>
In-Reply-To: <20190910142047.GB3029@papaya>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [90.186.0.117]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d3f7940e-eef7-4d2d-58a2-08d737739795
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CH2PR18MB3174; 
x-ms-traffictypediagnostic: CH2PR18MB3174:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CH2PR18MB317485CF15328040084DBBECFCB00@CH2PR18MB3174.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01583E185C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(396003)(366004)(136003)(39860400002)(346002)(189003)(199004)(229853002)(316002)(7736002)(3846002)(64756008)(71200400001)(25786009)(305945005)(71190400001)(6486002)(66066001)(102836004)(6916009)(81166006)(26005)(2616005)(476003)(54906003)(486006)(8936002)(36756003)(76176011)(478600001)(14454004)(186003)(5640700003)(99286004)(966005)(11346002)(2351001)(2501003)(446003)(86362001)(6436002)(6246003)(2906002)(1730700003)(91956017)(66446008)(8676002)(6512007)(6506007)(81156014)(5660300002)(6306002)(66946007)(66556008)(66476007)(76116006)(118296001)(6116002)(256004)(14444005)(53936002)(4326008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CH2PR18MB3174;
 H:CH2PR18MB3349.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: suse.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 34+h9T3jAlwFhzsMn4O6ay99BKMy0GamzyeySR0wyvZzy0EbXub1+NTyU2y1a7leYSAShjX2uyF5kzSGFNC71edmCHvLz277jUp4Hia6uGylcUhEzPlzsCfA1g3QZCNjZP1M+2Wdb9t1ZJgD1ZAGtlq6dTN0gcf5+RiXTCGf0aElN/s3qjJ8dTqtxqG4yPt4cohtjjbNEkvKR9VShgCiYAFnA50BatUusnkmbdHP6YsR/MqntTKsOPHKAVRYptrEz6C56ETJ9Q+5+Wd5ryA/Uz03fJ3ugwwH23dkqgCiYezXUFyIstGWQdf4BzH8gMahz3/+pcBjAz/ZQ/PxrSy4RJ5fmHphs9tMF47Y7uhHkl+vwQ3jKXQtcf+75EfR04LnJibWvCnFQc2I8ZivP+HujCETEX74Ri/kp10TJ58Azfw=
Content-ID: <60855FB0E4AAC44BB47EE686AD7CFB89@namprd18.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: d3f7940e-eef7-4d2d-58a2-08d737739795
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2019 11:23:09.8849 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 856b813c-16e5-49a5-85ec-6f081e13b527
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Xyar+MxXvrqqSF62b0aKHnv0R/86aNW643Q2ZGpWHwayiSYhmsYRzbKxJoK2qlfy5F9dPQrO+Pd6YTt6nYdszw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR18MB3174
X-OriginatorOrg: suse.com
X-Mailman-Approved-At: Thu, 12 Sep 2019 13:30:44 +0000
X-Mailman-Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Martin.Wilck@suse.com; 
Subject: Re: [Intel-gfx] 5.3-rc3: Frozen graphics with kcompactd migrating
 i915 pages
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: "tiwai@suse.de" <tiwai@suse.de>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "leho@kraav.com" <leho@kraav.com>, Michal Koutny <MKoutny@suse.com>,
 "torvalds@linux-foundation.org" <torvalds@linux-foundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXMsDQoNCk9uIFR1ZSwgMjAxOS0wOS0xMCBhdCAxNzoyMCArMDMwMCwgTGVobyBLcmFh
diB3cm90ZToNCj4gT24gRnJpLCBBdWcgMDksIDIwMTkgYXQgMDE6NTM6NDNQTSArMDEwMCwgQ2hy
aXMgV2lsc29uIHdyb3RlOg0KPiA+IFF1b3RpbmcgTWFydGluIFdpbGNrICgyMDE5LTA4LTA5IDEz
OjQxOjQyKQ0KPiA+ID4gVGhpcyBoYXBwZW5lZCB0byBtZSB0b2RheSwgcnVubmluZyBrZXJuZWwg
NS4zLjAtcmMzLTEuZzU3MTg2M2ItDQo+ID4gPiBkZWZhdWx0DQo+ID4gPiAoNS4zLXJjMyB3aXRo
IGp1c3QgYSBmZXcgcGF0Y2hlcyBvbiB0b3ApLCBhZnRlciBzdGFydGluZyBhIEtWTQ0KPiA+ID4g
dmlydHVhbA0KPiA+ID4gbWFjaGluZS4gVGhlIFggc2NyZWVuIHdhcyBmcm96ZW4uIFJlbW90ZSBs
b2dpbiB2aWEgc3NoIHdhcyBzdGlsbA0KPiA+ID4gcG9zc2libGUsIHRodXMgSSB3YXMgYWJsZSB0
byByZXRyaWV2ZSBiYXNpYyBsb2dzLg0KPiA+ID4gDQo+ID4gPiBzeXNycS13IHNob3dlZCB0d28g
YmxvY2tlZCBwcm9jZXNzZXMgKGtjb21wYWN0ZDAgYW5kIEtWTSkuIEFmdGVyDQo+ID4gPiBhDQo+
ID4gPiBtaW51dGUsIHRoZSBzYW1lIHR3byBwcm9jZXNzZXMgd2VyZSBzdGlsbCBibG9ja2VkLiBL
Vk0gc2VlbXMgdG8NCj4gPiA+IHRyeSB0bw0KPiA+ID4gYWNxdWlyZSBhIGxvY2sgdGhhdCBrY29t
cGFjdGQgaXMgaG9sZGluZy4ga2NvbXBhY3RkIGlzIHdhaXRpbmcNCj4gPiA+IGZvciBJTw0KPiA+
ID4gdG8gY29tcGxldGUgb24gcGFnZXMgb3duZWQgYnkgdGhlIGk5MTUgZHJpdmVyLg0KPiA+IA0K
PiA+IE15IGJhZCwgaXQncyBrbm93bi4gV2UgaGF2ZW4ndCBkZWNpZGVkIG9uIHdoZXRoZXIgdG8g
cmV2ZXJ0IHRoZQ0KPiA+IHVuZm9ydHVuYXRlIHJlY3Vyc2l2ZSBsb2NraW5nIChhbmQgc28gaGl0
IGFub3RoZXIgd2FybiBlbHNld2hlcmUpDQo+ID4gb3IgdG8NCj4gPiBpZ25vcmUgdGhlIGRpcnR5
IHBhZ2VzIChhbmQgc28gcmlzayBsb3NpbmcgZGF0YSBhY3Jvc3Mgc3dhcCkuDQo+ID4gDQo+ID4g
Y2I2ZDdjN2RjN2ZmICgiZHJtL2k5MTUvdXNlcnB0cjogQWNxdWlyZSB0aGUgcGFnZSBsb2NrIGFy
b3VuZA0KPiA+IHNldF9wYWdlX2RpcnR5KCkiKQ0KPiA+IC1DaHJpcw0KPiANCj4gSGkgQ2hyaXMu
IElzIHRoaXMgZXhhY3RseSB3aGF0IEknbSBoaXR0aW5nIGF0DQo+IGh0dHBzOi8vYnVncy5mcmVl
ZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTUwMCBwZXJoYXBzPw0KPiANCj4gSXQgcmVs
aWFibHkgYnJlYWtzIHRoZSBncmFwaGljcyB1c2VybGFuZCwgYXMgdGhlIG1hY2hpbmUgY29uc2lz
dGVudGx5DQo+IGZyZWV6ZXMgYXQgYW55IHJhbmRvbSBtb21lbnQuDQo+IA0KPiBBbnkgd29ya2Fy
b3VuZCBvcHRpb25zLCBldmVuIGlmIHdpdGggYSBwZXJmb3JtYW5jZSBwZW5hbHR5PyBSZXZlcnQN
Cj4gY2I2ZDdjN2RjN2ZmIGJ1dCBzaWRlIGVmZmVjdHM/DQo+IA0KPiA1LjMgaGFzIHVzZWZ1bCBO
Vk1lIHBvd2VyIG1nbXQgdXBkYXRlcyBmb3IgbGFwdG9wcywgSSdkIGxpa2UgdG8gc3RpY2sNCj4g
d2l0aCB0aGUgbmV3ZXN0IGlmIHBvc3NpYmxlLg0KDQpUaGVyZSdzIGEgY29uc2lkZXJhYmxlIHJp
c2sgdGhhdCBtYW55IHVzZXJzIHdpbGwgc3RhcnQgc2VlaW5nIHRoaXMNCnJlZ3Jlc3Npb24gd2hl
biA1LjMgaXMgcmVsZWFzZWQuIEkgYW0gbm90IGF3YXJlIG9mIGEgd29ya2Fyb3VuZC4NCg0KSXMg
dGhlcmUgYW4gYWx0ZXJuYXRpdmUgdG8gcmV2ZXJ0aW5nIGFhNTZhMjkyY2U2MiAoImRybS9pOTE1
L3VzZXJwdHI6DQpBY3F1aXJlIHRoZSBwYWdlIGxvY2sgYXJvdW5kIHNldF9wYWdlX2RpcnR5KCki
KT8gQW5kIGlmIHdlIGRvLCB3aGF0DQp3b3VsZCBiZSB0aGUgY29uc2VxdWVuY2VzPyBXb3VsZCBv
dGhlciBwYXRjaGVzIG5lZWQgdG8gYmUgcmV2ZXJ0ZWQsDQp0b28/DQoNClRoYW5rcywNCk1hcnRp
bg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
