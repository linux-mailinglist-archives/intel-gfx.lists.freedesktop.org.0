Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C066B70E
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 08:59:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52E746E248;
	Wed, 17 Jul 2019 06:59:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
 (mail-eopbgr800042.outbound.protection.outlook.com [40.107.80.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C73836E23B;
 Wed, 17 Jul 2019 06:59:05 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W8fz0FTeST5C5XqEHkJb8dT1basy8hqh01u4DJ/Ox0u3RJ87R29iiPgZyRRIwquQ+a9krjtvvjjTG7tVrfN1E2YROVjHHg075d/XuGTeiNB09e67Ba/hSdHymZMWst15rir98B17fyqGcfBeyCb6xZbL0nMkCWgjgYGWRcmyVhG3FzE2tUWIdl3ph+Wn8sLt9eMWtA+5U0g+N0nL6FONBOf8xcep2NcHpK/G7fqV/GThbZApBbqRcoRS9JqTOvnY/RfVQWjobu2ouKcWiPrQ83gI/S7Mw96qwlC/2/clCp8eTpS/Ullz3zqxJB9Y+DEmKkOUYC+2g/mvNvrZmTmGuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nrfZFP0hZDOaFnYCRQwbfT9gTwR3cNCZAY+aVxan+js=;
 b=Ah0IMUcQ16VIKjoVMMvTaQNv6Vya7g0oL9MulZXf9Qf9dBIO9p/+Baq6V46F8nuAzhQ88J0RAFg18In82y/NeSZsm3jYnV2xRzeitaYBC3783N65tKWtiqW60tqhRwOJYsk7ji8q9c55MXSDsCH9aaBlCVsJIWHBK0UZJWDa+zgfvSU8Y99/gJD3+Mqgd2im3iPoHNgypLy3GCSGTEyF8fPR9896UMqh8snRAwqE3YMyDeWPdQ74RFqkTfu5kJdmIL9OIMuhiYCqg7+4pf5ESt0iSK1TuFYUSYdEioutZ8vstdxjxFGplhAIjkp3zTGOzhecE+DFKGwZeBMEI2KPpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=amd.com;dmarc=pass action=none header.from=amd.com;dkim=pass
 header.d=amd.com;arc=none
Received: from CY4PR12MB1543.namprd12.prod.outlook.com (10.172.70.20) by
 CY4PR12MB1160.namprd12.prod.outlook.com (10.168.164.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Wed, 17 Jul 2019 06:59:03 +0000
Received: from CY4PR12MB1543.namprd12.prod.outlook.com
 ([fe80::c8a8:e8c8:e61b:f7f8]) by CY4PR12MB1543.namprd12.prod.outlook.com
 ([fe80::c8a8:e8c8:e61b:f7f8%4]) with mapi id 15.20.2073.012; Wed, 17 Jul 2019
 06:59:03 +0000
From: "Koenig, Christian" <Christian.Koenig@amd.com>
To: Rob Clark <robdclark@gmail.com>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>
Thread-Topic: [PATCH v3 2/3] drm: plumb attaching dev thru to prime_pin/unpin
Thread-Index: AQHVPB9oAlgibIfiCE+FZlAPuAV8M6bNhkqA
Date: Wed, 17 Jul 2019 06:59:03 +0000
Message-ID: <fc57fbc8-3b37-519b-a6e2-9714df3c7715@amd.com>
References: <20190716213746.4670-1-robdclark@gmail.com>
 <20190716213746.4670-2-robdclark@gmail.com>
In-Reply-To: <20190716213746.4670-2-robdclark@gmail.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
x-originating-ip: [2a02:908:1252:fb60:be8a:bd56:1f94:86e7]
x-clientproxiedby: PR0P264CA0005.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100::17)
 To CY4PR12MB1543.namprd12.prod.outlook.com
 (2603:10b6:910:c::20)
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6678fe4f-f5b2-4f3a-e7b5-08d70a844069
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:CY4PR12MB1160; 
x-ms-traffictypediagnostic: CY4PR12MB1160:
x-microsoft-antispam-prvs: <CY4PR12MB11604A7B37D9415FD263790583C90@CY4PR12MB1160.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01018CB5B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(346002)(136003)(366004)(376002)(199004)(189003)(66946007)(2616005)(81156014)(11346002)(476003)(66556008)(86362001)(66446008)(2501003)(64756008)(446003)(71190400001)(31696002)(102836004)(71200400001)(4326008)(81166006)(316002)(110136005)(54906003)(58126008)(8936002)(5024004)(6506007)(386003)(66476007)(5660300002)(186003)(99286004)(229853002)(31686004)(14454004)(52116002)(76176011)(25786009)(65826007)(8676002)(7736002)(478600001)(305945005)(256004)(6486002)(6512007)(7416002)(6116002)(64126003)(53936002)(6246003)(46003)(14444005)(30864003)(36756003)(65806001)(68736007)(65956001)(2906002)(6436002)(486006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR12MB1160;
 H:CY4PR12MB1543.namprd12.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: gLq2eUYe7IVY4xtwFiFUohdHK7Hrt8WHnnoh+nNLRQh4He8f0RFy64+4fIQg8dCxgHi6AP0qb2SfEx32YHyGkQWPqDrPCbcvr5nqSbkQX9Dpj1NY8He+WfFfvenST37pblZaVHAKwX5hcrHyIabMyLDiIa9hL/AicMlewmKpHe8+nQhT3RxjpbbGyam9smof/MHHDrTMYX5Rozm06SqTi7SfQRO/StRYkNp6uILO1OGDieUn5Wy4lCHOrQSWpOav0DkBrItow1xo9WmIhFuWa8JW+TS1sPEt/FUfvEg162tTznRuKoKelSmbGJa038c3/IqLzfIFzCkzf/Os9ikBbQ2eKNmvarD2eHxEU0xLbfeUkPYssmZS1yC0jlaD8CnSwqeOA0DKUQn0CZkPTFqneJLJasGtGkKUNn4U004tk2k=
Content-ID: <E6EDA68FB1F2154482748941D0CB311D@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6678fe4f-f5b2-4f3a-e7b5-08d70a844069
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2019 06:59:03.1831 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ckoenig@amd.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR12MB1160
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amdcloud.onmicrosoft.com; s=selector1-amdcloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nrfZFP0hZDOaFnYCRQwbfT9gTwR3cNCZAY+aVxan+js=;
 b=u6xNCMhki6BvDqKJH/etS1zI8YMpnPDBf2hxT0j7fKvmlAvLVVNWhypLT2HxOZ8hcRbJHfVW69bc7K8o2G/Ebwpen+Jy8Dk4DY7/5fVM7UGGEAEHtDMsq9zkZH8Q3IxDCNED60GrxtaD4AM7LC7IZGi9cox9o9RH3QXH9Zaeme4=
X-Mailman-Original-Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=Christian.Koenig@amd.com; 
Subject: Re: [Intel-gfx] [PATCH v3 2/3] drm: plumb attaching dev thru to
 prime_pin/unpin
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
Cc: Eric Biggers <ebiggers@google.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 "nouveau@lists.freedesktop.org" <nouveau@lists.freedesktop.org>,
 Gerd Hoffmann <kraxel@redhat.com>, Emil Velikov <emil.velikov@collabora.com>,
 Rob Clark <robdclark@chromium.org>, "Zhou, 
 David\(ChunMing\)" <David1.Zhou@amd.com>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
 David Airlie <airlied@linux.ie>, Ben Skeggs <bskeggs@redhat.com>,
 Russell King <linux+etnaviv@armlinux.org.uk>, Dave Airlie <airlied@redhat.com>,
 "Sharma, Deepak" <Deepak.Sharma@amd.com>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 "etnaviv@lists.freedesktop.org" <etnaviv@lists.freedesktop.org>,
 "spice-devel@lists.freedesktop.org" <spice-devel@lists.freedesktop.org>,
 "virtualization@lists.linux-foundation.org"
 <virtualization@lists.linux-foundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, "Deucher,
 Alexander" <Alexander.Deucher@amd.com>,
 "freedreno@lists.freedesktop.org" <freedreno@lists.freedesktop.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMTYuMDcuMTkgdW0gMjM6Mzcgc2NocmllYiBSb2IgQ2xhcms6DQo+IEZyb206IFJvYiBDbGFy
ayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4NCj4NCj4gTmVlZGVkIGluIHRoZSBmb2xsb3dpbmcg
cGF0Y2ggZm9yIGNhY2hlIG9wZXJhdGlvbnMuDQoNCldlbGwgaGF2ZSB5b3Ugc2VlbiB0aGF0IHRo
b3NlIGNhbGxiYWNrcyBhcmUgZGVwcmVjYXRlZD8NCj4gICAJICogRGVwcmVjYXRlZCBob29rIGlu
IGZhdm91ciBvZiAmZHJtX2dlbV9vYmplY3RfZnVuY3MucGluLg0KDQo+ICAgCSAqIERlcHJlY2F0
ZWQgaG9vayBpbiBmYXZvdXIgb2YgJmRybV9nZW1fb2JqZWN0X2Z1bmNzLnVucGluLg0KPg0KDQpJ
IHdvdWxkIHJhdGhlciBzYXkgaWYgeW91IHdhbnQgdG8gZXh0ZW5kIHNvbWV0aGluZyBpdCB3b3Vs
ZCBiZSBiZXR0ZXIgdG8gDQpzd2l0Y2ggb3ZlciB0byB0aGUgcGVyIEdFTSBvYmplY3QgZnVuY3Rp
b25zIGZpcnN0Lg0KDQpSZWdhcmRzLA0KQ2hyaXN0aWFuLg0KDQo+DQo+IFNpZ25lZC1vZmYtYnk6
IFJvYiBDbGFyayA8cm9iZGNsYXJrQGNocm9taXVtLm9yZz4NCj4gLS0tDQo+IHYzOiByZWJhc2Vk
IG9uIGRybS10aXANCj4NCj4gICBkcml2ZXJzL2dwdS9kcm0vZHJtX2dlbS5jICAgICAgICAgICAg
ICAgICAgIHwgOCArKysrLS0tLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1faW50ZXJuYWwuaCAg
ICAgICAgICAgICAgfCA0ICsrLS0NCj4gICBkcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMgICAg
ICAgICAgICAgICAgIHwgNCArKy0tDQo+ICAgZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZp
dl9nZW1fcHJpbWUuYyB8IDQgKystLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2Rydi5o
ICAgICAgICAgICAgICAgfCA0ICsrLS0NCj4gICBkcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9nZW1f
cHJpbWUuYyAgICAgICAgIHwgNCArKy0tDQo+ICAgZHJpdmVycy9ncHUvZHJtL25vdXZlYXUvbm91
dmVhdV9nZW0uaCAgICAgICB8IDQgKystLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25v
dXZlYXVfcHJpbWUuYyAgICAgfCA0ICsrLS0NCj4gICBkcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9w
cmltZS5jICAgICAgICAgICAgIHwgNCArKy0tDQo+ICAgZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9y
YWRlb25fcHJpbWUuYyAgICAgICB8IDQgKystLQ0KPiAgIGRyaXZlcnMvZ3B1L2RybS92Z2VtL3Zn
ZW1fZHJ2LmMgICAgICAgICAgICAgfCA0ICsrLS0NCj4gICBpbmNsdWRlL2RybS9kcm1fZHJ2Lmgg
ICAgICAgICAgICAgICAgICAgICAgIHwgNSArKy0tLQ0KPiAgIDEyIGZpbGVzIGNoYW5nZWQsIDI2
IGluc2VydGlvbnMoKyksIDI3IGRlbGV0aW9ucygtKQ0KPg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2RybV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtLmMNCj4gaW5kZXgg
ODQ2ODljY2FlODg1Li5hZjI1NDljNDUwMjcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9kcm1fZ2VtLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9nZW0uYw0KPiBAQCAtMTIx
NSwyMiArMTIxNSwyMiBAQCB2b2lkIGRybV9nZW1fcHJpbnRfaW5mbyhzdHJ1Y3QgZHJtX3ByaW50
ZXIgKnAsIHVuc2lnbmVkIGludCBpbmRlbnQsDQo+ICAgCQlvYmotPmRldi0+ZHJpdmVyLT5nZW1f
cHJpbnRfaW5mbyhwLCBpbmRlbnQsIG9iaik7DQo+ICAgfQ0KPiAgIA0KPiAtaW50IGRybV9nZW1f
cGluKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQ0KPiAraW50IGRybV9nZW1fcGluKHN0cnVj
dCBkcm1fZ2VtX29iamVjdCAqb2JqLCBzdHJ1Y3QgZGV2aWNlICpkZXYpDQo+ICAgew0KPiAgIAlp
ZiAob2JqLT5mdW5jcyAmJiBvYmotPmZ1bmNzLT5waW4pDQo+ICAgCQlyZXR1cm4gb2JqLT5mdW5j
cy0+cGluKG9iaik7DQo+ICAgCWVsc2UgaWYgKG9iai0+ZGV2LT5kcml2ZXItPmdlbV9wcmltZV9w
aW4pDQo+IC0JCXJldHVybiBvYmotPmRldi0+ZHJpdmVyLT5nZW1fcHJpbWVfcGluKG9iaik7DQo+
ICsJCXJldHVybiBvYmotPmRldi0+ZHJpdmVyLT5nZW1fcHJpbWVfcGluKG9iaiwgZGV2KTsNCj4g
ICAJZWxzZQ0KPiAgIAkJcmV0dXJuIDA7DQo+ICAgfQ0KPiAgIA0KPiAtdm9pZCBkcm1fZ2VtX3Vu
cGluKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQ0KPiArdm9pZCBkcm1fZ2VtX3VucGluKHN0
cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLCBzdHJ1Y3QgZGV2aWNlICpkZXYpDQo+ICAgew0KPiAg
IAlpZiAob2JqLT5mdW5jcyAmJiBvYmotPmZ1bmNzLT51bnBpbikNCj4gICAJCW9iai0+ZnVuY3Mt
PnVucGluKG9iaik7DQo+ICAgCWVsc2UgaWYgKG9iai0+ZGV2LT5kcml2ZXItPmdlbV9wcmltZV91
bnBpbikNCj4gLQkJb2JqLT5kZXYtPmRyaXZlci0+Z2VtX3ByaW1lX3VucGluKG9iaik7DQo+ICsJ
CW9iai0+ZGV2LT5kcml2ZXItPmdlbV9wcmltZV91bnBpbihvYmosIGRldik7DQo+ICAgfQ0KPiAg
IA0KPiAgIHZvaWQgKmRybV9nZW1fdm1hcChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikNCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1faW50ZXJuYWwuaCBiL2RyaXZlcnMvZ3B1
L2RybS9kcm1faW50ZXJuYWwuaA0KPiBpbmRleCA1MWEyMDU1YzhmMTguLmU2NDA5MDM3M2UzYSAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9pbnRlcm5hbC5oDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9kcm1faW50ZXJuYWwuaA0KPiBAQCAtMTMzLDggKzEzMyw4IEBAIHZvaWQg
ZHJtX2dlbV9yZWxlYXNlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHN0cnVjdCBkcm1fZmlsZSAq
ZmlsZV9wcml2YXRlKTsNCj4gICB2b2lkIGRybV9nZW1fcHJpbnRfaW5mbyhzdHJ1Y3QgZHJtX3By
aW50ZXIgKnAsIHVuc2lnbmVkIGludCBpbmRlbnQsDQo+ICAgCQkJY29uc3Qgc3RydWN0IGRybV9n
ZW1fb2JqZWN0ICpvYmopOw0KPiAgIA0KPiAtaW50IGRybV9nZW1fcGluKHN0cnVjdCBkcm1fZ2Vt
X29iamVjdCAqb2JqKTsNCj4gLXZvaWQgZHJtX2dlbV91bnBpbihzdHJ1Y3QgZHJtX2dlbV9vYmpl
Y3QgKm9iaik7DQo+ICtpbnQgZHJtX2dlbV9waW4oc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmos
IHN0cnVjdCBkZXZpY2UgKmRldik7DQo+ICt2b2lkIGRybV9nZW1fdW5waW4oc3RydWN0IGRybV9n
ZW1fb2JqZWN0ICpvYmosIHN0cnVjdCBkZXZpY2UgKmRldik7DQo+ICAgdm9pZCAqZHJtX2dlbV92
bWFwKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKTsNCj4gICB2b2lkIGRybV9nZW1fdnVubWFw
KHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLCB2b2lkICp2YWRkcik7DQo+ICAgDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX3ByaW1lLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJt
X3ByaW1lLmMNCj4gaW5kZXggMTg5ZDk4MDQwMmFkLi4xMjY4NjA0MzJmZjkgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fcHJpbWUuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
ZHJtX3ByaW1lLmMNCj4gQEAgLTU3NSw3ICs1NzUsNyBAQCBpbnQgZHJtX2dlbV9tYXBfYXR0YWNo
KHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmLA0KPiAgIHsNCj4gICAJc3RydWN0IGRybV9nZW1fb2Jq
ZWN0ICpvYmogPSBkbWFfYnVmLT5wcml2Ow0KPiAgIA0KPiAtCXJldHVybiBkcm1fZ2VtX3Bpbihv
YmopOw0KPiArCXJldHVybiBkcm1fZ2VtX3BpbihvYmosIGF0dGFjaC0+ZGV2KTsNCj4gICB9DQo+
ICAgRVhQT1JUX1NZTUJPTChkcm1fZ2VtX21hcF9hdHRhY2gpOw0KPiAgIA0KPiBAQCAtNTkzLDcg
KzU5Myw3IEBAIHZvaWQgZHJtX2dlbV9tYXBfZGV0YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFfYnVm
LA0KPiAgIHsNCj4gICAJc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmogPSBkbWFfYnVmLT5wcml2
Ow0KPiAgIA0KPiAtCWRybV9nZW1fdW5waW4ob2JqKTsNCj4gKwlkcm1fZ2VtX3VucGluKG9iaiwg
YXR0YWNoLT5kZXYpOw0KPiAgIH0NCj4gICBFWFBPUlRfU1lNQk9MKGRybV9nZW1fbWFwX2RldGFj
aCk7DQo+ICAgDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2
X2dlbV9wcmltZS5jIGIvZHJpdmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW1fcHJpbWUu
Yw0KPiBpbmRleCBhMDUyOTJlOGVkNmYuLjY3ZTY5YTVmMDBmMiAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2V0bmF2aXYvZXRuYXZpdl9nZW1fcHJpbWUuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vZXRuYXZpdi9ldG5hdml2X2dlbV9wcmltZS5jDQo+IEBAIC00Myw3ICs0Myw3IEBA
IGludCBldG5hdml2X2dlbV9wcmltZV9tbWFwKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLA0K
PiAgIAlyZXR1cm4gZXRuYXZpdl9vYmotPm9wcy0+bW1hcChldG5hdml2X29iaiwgdm1hKTsNCj4g
ICB9DQo+ICAgDQo+IC1pbnQgZXRuYXZpdl9nZW1fcHJpbWVfcGluKHN0cnVjdCBkcm1fZ2VtX29i
amVjdCAqb2JqKQ0KPiAraW50IGV0bmF2aXZfZ2VtX3ByaW1lX3BpbihzdHJ1Y3QgZHJtX2dlbV9v
YmplY3QgKm9iaiwgc3RydWN0IGRldmljZSAqZGV2KQ0KPiAgIHsNCj4gICAJaWYgKCFvYmotPmlt
cG9ydF9hdHRhY2gpIHsNCj4gICAJCXN0cnVjdCBldG5hdml2X2dlbV9vYmplY3QgKmV0bmF2aXZf
b2JqID0gdG9fZXRuYXZpdl9ibyhvYmopOw0KPiBAQCAtNTUsNyArNTUsNyBAQCBpbnQgZXRuYXZp
dl9nZW1fcHJpbWVfcGluKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQ0KPiAgIAlyZXR1cm4g
MDsNCj4gICB9DQo+ICAgDQo+IC12b2lkIGV0bmF2aXZfZ2VtX3ByaW1lX3VucGluKHN0cnVjdCBk
cm1fZ2VtX29iamVjdCAqb2JqKQ0KPiArdm9pZCBldG5hdml2X2dlbV9wcmltZV91bnBpbihzdHJ1
Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwgc3RydWN0IGRldmljZSAqZGV2KQ0KPiAgIHsNCj4gICAJ
aWYgKCFvYmotPmltcG9ydF9hdHRhY2gpIHsNCj4gICAJCXN0cnVjdCBldG5hdml2X2dlbV9vYmpl
Y3QgKmV0bmF2aXZfb2JqID0gdG9fZXRuYXZpdl9ibyhvYmopOw0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL21zbS9tc21fZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vbXNtL21zbV9kcnYu
aA0KPiBpbmRleCBlZTdiNTEyZGMxNTguLjBlZWE2ODYxOGI2OCAxMDA2NDQNCj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL21zbS9tc21fZHJ2LmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL21zbS9t
c21fZHJ2LmgNCj4gQEAgLTI4OCw4ICsyODgsOCBAQCB2b2lkIG1zbV9nZW1fcHJpbWVfdnVubWFw
KHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqLCB2b2lkICp2YWRkcik7DQo+ICAgaW50IG1zbV9n
ZW1fcHJpbWVfbW1hcChzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwgc3RydWN0IHZtX2FyZWFf
c3RydWN0ICp2bWEpOw0KPiAgIHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqbXNtX2dlbV9wcmltZV9p
bXBvcnRfc2dfdGFibGUoc3RydWN0IGRybV9kZXZpY2UgKmRldiwNCj4gICAJCXN0cnVjdCBkbWFf
YnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwgc3RydWN0IHNnX3RhYmxlICpzZyk7DQo+IC1pbnQgbXNt
X2dlbV9wcmltZV9waW4oc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopOw0KPiAtdm9pZCBtc21f
Z2VtX3ByaW1lX3VucGluKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKTsNCj4gK2ludCBtc21f
Z2VtX3ByaW1lX3BpbihzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwgc3RydWN0IGRldmljZSAq
ZGV2KTsNCj4gK3ZvaWQgbXNtX2dlbV9wcmltZV91bnBpbihzdHJ1Y3QgZHJtX2dlbV9vYmplY3Qg
Km9iaiwgc3RydWN0IGRldmljZSAqZGV2KTsNCj4gICB2b2lkICptc21fZ2VtX2dldF92YWRkcihz
dHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaik7DQo+ICAgdm9pZCAqbXNtX2dlbV9nZXRfdmFkZHJf
YWN0aXZlKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKTsNCj4gICB2b2lkIG1zbV9nZW1fcHV0
X3ZhZGRyKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9tc20vbXNtX2dlbV9wcmltZS5jIGIvZHJpdmVycy9ncHUvZHJtL21zbS9tc21f
Z2VtX3ByaW1lLmMNCj4gaW5kZXggNWQ2NGUwNjcxZjdhLi5jYzA3YmY5NGUyMDYgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tc20vbXNtX2dlbV9wcmltZS5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9tc20vbXNtX2dlbV9wcmltZS5jDQo+IEBAIC00NywxNCArNDcsMTQgQEAgc3Ry
dWN0IGRybV9nZW1fb2JqZWN0ICptc21fZ2VtX3ByaW1lX2ltcG9ydF9zZ190YWJsZShzdHJ1Y3Qg
ZHJtX2RldmljZSAqZGV2LA0KPiAgIAlyZXR1cm4gbXNtX2dlbV9pbXBvcnQoZGV2LCBhdHRhY2gt
PmRtYWJ1Ziwgc2cpOw0KPiAgIH0NCj4gICANCj4gLWludCBtc21fZ2VtX3ByaW1lX3BpbihzdHJ1
Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikNCj4gK2ludCBtc21fZ2VtX3ByaW1lX3BpbihzdHJ1Y3Qg
ZHJtX2dlbV9vYmplY3QgKm9iaiwgc3RydWN0IGRldmljZSAqZGV2KQ0KPiAgIHsNCj4gICAJaWYg
KCFvYmotPmltcG9ydF9hdHRhY2gpDQo+ICAgCQltc21fZ2VtX2dldF9wYWdlcyhvYmopOw0KPiAg
IAlyZXR1cm4gMDsNCj4gICB9DQo+ICAgDQo+IC12b2lkIG1zbV9nZW1fcHJpbWVfdW5waW4oc3Ry
dWN0IGRybV9nZW1fb2JqZWN0ICpvYmopDQo+ICt2b2lkIG1zbV9nZW1fcHJpbWVfdW5waW4oc3Ry
dWN0IGRybV9nZW1fb2JqZWN0ICpvYmosIHN0cnVjdCBkZXZpY2UgKmRldikNCj4gICB7DQo+ICAg
CWlmICghb2JqLT5pbXBvcnRfYXR0YWNoKQ0KPiAgIAkJbXNtX2dlbV9wdXRfcGFnZXMob2JqKTsN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZ2VtLmggYi9k
cml2ZXJzL2dwdS9kcm0vbm91dmVhdS9ub3V2ZWF1X2dlbS5oDQo+IGluZGV4IGZlMzk5OThmNjVj
Yy4uOTFkY2Y4OTEzOGYxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbm91dmVhdS9u
b3V2ZWF1X2dlbS5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfZ2Vt
LmgNCj4gQEAgLTMyLDkgKzMyLDkgQEAgZXh0ZXJuIGludCBub3V2ZWF1X2dlbV9pb2N0bF9jcHVf
ZmluaShzdHJ1Y3QgZHJtX2RldmljZSAqLCB2b2lkICosDQo+ICAgZXh0ZXJuIGludCBub3V2ZWF1
X2dlbV9pb2N0bF9pbmZvKHN0cnVjdCBkcm1fZGV2aWNlICosIHZvaWQgKiwNCj4gICAJCQkJICBz
dHJ1Y3QgZHJtX2ZpbGUgKik7DQo+ICAgDQo+IC1leHRlcm4gaW50IG5vdXZlYXVfZ2VtX3ByaW1l
X3BpbihzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKik7DQo+ICtleHRlcm4gaW50IG5vdXZlYXVfZ2Vt
X3ByaW1lX3BpbihzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKiwgc3RydWN0IGRldmljZSAqKTsNCj4g
ICBzdHJ1Y3QgcmVzZXJ2YXRpb25fb2JqZWN0ICpub3V2ZWF1X2dlbV9wcmltZV9yZXNfb2JqKHN0
cnVjdCBkcm1fZ2VtX29iamVjdCAqKTsNCj4gLWV4dGVybiB2b2lkIG5vdXZlYXVfZ2VtX3ByaW1l
X3VucGluKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqKTsNCj4gK2V4dGVybiB2b2lkIG5vdXZlYXVf
Z2VtX3ByaW1lX3VucGluKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqLCBzdHJ1Y3QgZGV2aWNlICop
Ow0KPiAgIGV4dGVybiBzdHJ1Y3Qgc2dfdGFibGUgKm5vdXZlYXVfZ2VtX3ByaW1lX2dldF9zZ190
YWJsZShzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKik7DQo+ICAgZXh0ZXJuIHN0cnVjdCBkcm1fZ2Vt
X29iamVjdCAqbm91dmVhdV9nZW1fcHJpbWVfaW1wb3J0X3NnX3RhYmxlKA0KPiAgIAlzdHJ1Y3Qg
ZHJtX2RldmljZSAqLCBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICosIHN0cnVjdCBzZ190YWJs
ZSAqKTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfcHJp
bWUuYyBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1L25vdXZlYXVfcHJpbWUuYw0KPiBpbmRleCAx
ZmVmYzkzYWYxZDcuLmRlYzJkNWUzN2IzNCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L25vdXZlYXUvbm91dmVhdV9wcmltZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9ub3V2ZWF1
L25vdXZlYXVfcHJpbWUuYw0KPiBAQCAtODgsNyArODgsNyBAQCBzdHJ1Y3QgZHJtX2dlbV9vYmpl
Y3QgKm5vdXZlYXVfZ2VtX3ByaW1lX2ltcG9ydF9zZ190YWJsZShzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2LA0KPiAgIAlyZXR1cm4gJm52Ym8tPmdlbTsNCj4gICB9DQo+ICAgDQo+IC1pbnQgbm91dmVh
dV9nZW1fcHJpbWVfcGluKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQ0KPiAraW50IG5vdXZl
YXVfZ2VtX3ByaW1lX3BpbihzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwgc3RydWN0IGRldmlj
ZSAqZGV2KQ0KPiAgIHsNCj4gICAJc3RydWN0IG5vdXZlYXVfYm8gKm52Ym8gPSBub3V2ZWF1X2dl
bV9vYmplY3Qob2JqKTsNCj4gICAJaW50IHJldDsNCj4gQEAgLTEwMSw3ICsxMDEsNyBAQCBpbnQg
bm91dmVhdV9nZW1fcHJpbWVfcGluKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQ0KPiAgIAly
ZXR1cm4gMDsNCj4gICB9DQo+ICAgDQo+IC12b2lkIG5vdXZlYXVfZ2VtX3ByaW1lX3VucGluKHN0
cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKQ0KPiArdm9pZCBub3V2ZWF1X2dlbV9wcmltZV91bnBp
bihzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwgc3RydWN0IGRldmljZSAqZGV2KQ0KPiAgIHsN
Cj4gICAJc3RydWN0IG5vdXZlYXVfYm8gKm52Ym8gPSBub3V2ZWF1X2dlbV9vYmplY3Qob2JqKTsN
Cj4gICANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9xeGwvcXhsX3ByaW1lLmMgYi9k
cml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9wcmltZS5jDQo+IGluZGV4IDdkMzgxNmZjYTVhOC4uMjFl
OWI0NGViMmU0IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcXhsL3F4bF9wcmltZS5j
DQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9xeGwvcXhsX3ByaW1lLmMNCj4gQEAgLTI4LDE0ICsy
OCwxNCBAQA0KPiAgIC8qIEVtcHR5IEltcGxlbWVudGF0aW9ucyBhcyB0aGVyZSBzaG91bGQgbm90
IGJlIGFueSBvdGhlciBkcml2ZXIgZm9yIGEgdmlydHVhbA0KPiAgICAqIGRldmljZSB0aGF0IG1p
Z2h0IHNoYXJlIGJ1ZmZlcnMgd2l0aCBxeGwgKi8NCj4gICANCj4gLWludCBxeGxfZ2VtX3ByaW1l
X3BpbihzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikNCj4gK2ludCBxeGxfZ2VtX3ByaW1lX3Bp
bihzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwgc3RydWN0IGRldmljZSAqZGV2KQ0KPiAgIHsN
Cj4gICAJc3RydWN0IHF4bF9ibyAqYm8gPSBnZW1fdG9fcXhsX2JvKG9iaik7DQo+ICAgDQo+ICAg
CXJldHVybiBxeGxfYm9fcGluKGJvKTsNCj4gICB9DQo+ICAgDQo+IC12b2lkIHF4bF9nZW1fcHJp
bWVfdW5waW4oc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmopDQo+ICt2b2lkIHF4bF9nZW1fcHJp
bWVfdW5waW4oc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmosIHN0cnVjdCBkZXZpY2UgKmRldikN
Cj4gICB7DQo+ICAgCXN0cnVjdCBxeGxfYm8gKmJvID0gZ2VtX3RvX3F4bF9ibyhvYmopOw0KPiAg
IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fcHJpbWUuYyBi
L2RyaXZlcnMvZ3B1L2RybS9yYWRlb24vcmFkZW9uX3ByaW1lLmMNCj4gaW5kZXggZGVhZmZjZTUw
YTJlLi5mMzQ0MmJkODYwZjYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yYWRlb24v
cmFkZW9uX3ByaW1lLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JhZGVvbi9yYWRlb25fcHJp
bWUuYw0KPiBAQCAtODMsNyArODMsNyBAQCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKnJhZGVvbl9n
ZW1fcHJpbWVfaW1wb3J0X3NnX3RhYmxlKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsDQo+ICAgCXJl
dHVybiAmYm8tPmdlbV9iYXNlOw0KPiAgIH0NCj4gICANCj4gLWludCByYWRlb25fZ2VtX3ByaW1l
X3BpbihzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikNCj4gK2ludCByYWRlb25fZ2VtX3ByaW1l
X3BpbihzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwgc3RydWN0IGRldmljZSAqZGV2KQ0KPiAg
IHsNCj4gICAJc3RydWN0IHJhZGVvbl9ibyAqYm8gPSBnZW1fdG9fcmFkZW9uX2JvKG9iaik7DQo+
ICAgCWludCByZXQgPSAwOw0KPiBAQCAtMTAxLDcgKzEwMSw3IEBAIGludCByYWRlb25fZ2VtX3By
aW1lX3BpbihzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikNCj4gICAJcmV0dXJuIHJldDsNCj4g
ICB9DQo+ICAgDQo+IC12b2lkIHJhZGVvbl9nZW1fcHJpbWVfdW5waW4oc3RydWN0IGRybV9nZW1f
b2JqZWN0ICpvYmopDQo+ICt2b2lkIHJhZGVvbl9nZW1fcHJpbWVfdW5waW4oc3RydWN0IGRybV9n
ZW1fb2JqZWN0ICpvYmosIHN0cnVjdCBkZXZpY2UgKmRldikNCj4gICB7DQo+ICAgCXN0cnVjdCBy
YWRlb25fYm8gKmJvID0gZ2VtX3RvX3JhZGVvbl9ibyhvYmopOw0KPiAgIAlpbnQgcmV0ID0gMDsN
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS92Z2VtL3ZnZW1fZHJ2LmMgYi9kcml2ZXJz
L2dwdS9kcm0vdmdlbS92Z2VtX2Rydi5jDQo+IGluZGV4IDc2ZDk1YjVlMjg5Yy4uZTdkMTJlOTNi
MWYwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vdmdlbS92Z2VtX2Rydi5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS92Z2VtL3ZnZW1fZHJ2LmMNCj4gQEAgLTMwNyw3ICszMDcsNyBA
QCBzdGF0aWMgdm9pZCB2Z2VtX3VucGluX3BhZ2VzKHN0cnVjdCBkcm1fdmdlbV9nZW1fb2JqZWN0
ICpibykNCj4gICAJbXV0ZXhfdW5sb2NrKCZiby0+cGFnZXNfbG9jayk7DQo+ICAgfQ0KPiAgIA0K
PiAtc3RhdGljIGludCB2Z2VtX3ByaW1lX3BpbihzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikN
Cj4gK3N0YXRpYyBpbnQgdmdlbV9wcmltZV9waW4oc3RydWN0IGRybV9nZW1fb2JqZWN0ICpvYmos
IHN0cnVjdCBkZXZpY2UgKmRldikNCj4gICB7DQo+ICAgCXN0cnVjdCBkcm1fdmdlbV9nZW1fb2Jq
ZWN0ICpibyA9IHRvX3ZnZW1fYm8ob2JqKTsNCj4gICAJbG9uZyBuX3BhZ2VzID0gb2JqLT5zaXpl
ID4+IFBBR0VfU0hJRlQ7DQo+IEBAIC0zMjUsNyArMzI1LDcgQEAgc3RhdGljIGludCB2Z2VtX3By
aW1lX3BpbihzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaikNCj4gICAJcmV0dXJuIDA7DQo+ICAg
fQ0KPiAgIA0KPiAtc3RhdGljIHZvaWQgdmdlbV9wcmltZV91bnBpbihzdHJ1Y3QgZHJtX2dlbV9v
YmplY3QgKm9iaikNCj4gK3N0YXRpYyB2b2lkIHZnZW1fcHJpbWVfdW5waW4oc3RydWN0IGRybV9n
ZW1fb2JqZWN0ICpvYmosIHN0cnVjdCBkZXZpY2UgKmRldikNCj4gICB7DQo+ICAgCXN0cnVjdCBk
cm1fdmdlbV9nZW1fb2JqZWN0ICpibyA9IHRvX3ZnZW1fYm8ob2JqKTsNCj4gICANCj4gZGlmZiAt
LWdpdCBhL2luY2x1ZGUvZHJtL2RybV9kcnYuaCBiL2luY2x1ZGUvZHJtL2RybV9kcnYuaA0KPiBp
bmRleCBiMzNmMmNlZTIwOTkuLjJiM2Q3OWJkZTZlMSAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS9k
cm0vZHJtX2Rydi5oDQo+ICsrKyBiL2luY2x1ZGUvZHJtL2RybV9kcnYuaA0KPiBAQCAtNTkyLDIw
ICs1OTIsMTkgQEAgc3RydWN0IGRybV9kcml2ZXIgew0KPiAgIAkgKi8NCj4gICAJc3RydWN0IGRy
bV9nZW1fb2JqZWN0ICogKCpnZW1fcHJpbWVfaW1wb3J0KShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
LA0KPiAgIAkJCQlzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1Zik7DQo+IC0NCj4gICAJLyoqDQo+ICAg
CSAqIEBnZW1fcHJpbWVfcGluOg0KPiAgIAkgKg0KPiAgIAkgKiBEZXByZWNhdGVkIGhvb2sgaW4g
ZmF2b3VyIG9mICZkcm1fZ2VtX29iamVjdF9mdW5jcy5waW4uDQo+ICAgCSAqLw0KPiAtCWludCAo
KmdlbV9wcmltZV9waW4pKHN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqKTsNCj4gKwlpbnQgKCpn
ZW1fcHJpbWVfcGluKShzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKm9iaiwgc3RydWN0IGRldmljZSAq
ZGV2KTsNCj4gICANCj4gICAJLyoqDQo+ICAgCSAqIEBnZW1fcHJpbWVfdW5waW46DQo+ICAgCSAq
DQo+ICAgCSAqIERlcHJlY2F0ZWQgaG9vayBpbiBmYXZvdXIgb2YgJmRybV9nZW1fb2JqZWN0X2Z1
bmNzLnVucGluLg0KPiAgIAkgKi8NCj4gLQl2b2lkICgqZ2VtX3ByaW1lX3VucGluKShzdHJ1Y3Qg
ZHJtX2dlbV9vYmplY3QgKm9iaik7DQo+ICsJdm9pZCAoKmdlbV9wcmltZV91bnBpbikoc3RydWN0
IGRybV9nZW1fb2JqZWN0ICpvYmosIHN0cnVjdCBkZXZpY2UgKmRldik7DQo+ICAgDQo+ICAgDQo+
ICAgCS8qKg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
