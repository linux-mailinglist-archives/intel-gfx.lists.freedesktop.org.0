Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 162D1276566
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 02:49:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAA826EA37;
	Thu, 24 Sep 2020 00:49:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7A286EA37
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 00:49:14 +0000 (UTC)
IronPort-SDR: YHg8nZBUr0yr6i7xgtKdPoJkBlH6Vyvm23TUKXU12c7roEPPFP/W0dgq9IwHAGSNRZ1PBqnT/r
 U4kR6z3aoETQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9753"; a="161131200"
X-IronPort-AV: E=Sophos;i="5.77,296,1596524400"; d="scan'208";a="161131200"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2020 17:49:13 -0700
IronPort-SDR: uo0J9kMqXqkxE8Ml558aatfstQux1LwwpoBpKjtaaAzWv3vxp5HFNr/j59sQan8ap5XSIp086/
 CL36/8yz5XPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,296,1596524400"; d="scan'208";a="305602497"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga003.jf.intel.com with ESMTP; 23 Sep 2020 17:49:13 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Sep 2020 17:49:13 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 23 Sep 2020 17:49:13 -0700
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.1713.004;
 Wed, 23 Sep 2020 17:49:13 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 08/14] drm/i915: Sort SKL PCI IDs
Thread-Index: AQHWkgL5+gqPJLwSD023UEnM4E98wal29EWg
Date: Thu, 24 Sep 2020 00:49:13 +0000
Message-ID: <e05b558822374fb782e5cfa4601974d4@intel.com>
References: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
 <20200716172106.2656-9-ville.syrjala@linux.intel.com>
In-Reply-To: <20200716172106.2656-9-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 08/14] drm/i915: Sort SKL PCI IDs
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFRodXJzZGF5LCBKdWx5IDE2LCAyMDIwIDEwOjIxIEFNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCAwOC8xNF0gZHJtL2k5MTU6IFNvcnQgU0tMIFBDSSBJRHMNCj4gDQo+IEZyb206IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBTb3J0
IHRoZSBTS0wgUENJIElEcyBudW1lcmljYWxseS4gU29tZSBvcmRlciBzZWVtcyBiZXR0ZXIgdGhh
bg0KPiByYW5kb21uZXNzLg0KDQpUaGVyZSBhcmUgMiBwYXRjaGVzIC0gcGF0Y2ggMiBhbmQgMyBp
biB0aGUgc2VyaWVzIHRoYXQgYXJlIHJlY2xhc3NpZnlpbmcgc29tZSBQQ0kgSURzICBhbmQgdGhl
cmUgaXMgcGF0Y2ggNCB0aGF0IGFkZHMgYSBtaXNzaW5nIElELiBBbGwgb2YgdGhvc2Ugd2l0aCB0
aGlzIHBhdGNoIGNhbiBiZSBjb21iaW5lZCB0byBhIHNpbmdsZSBwYXRjaCBPUiBwYXRjaCAyLCAz
IGFuZCA0IGNhbiBiZSBzcXVhc2hlZCBhcyBvbmUgc29saXRhcnkgcGF0Y2guDQoNCkFudXNoYSAN
Cj4gQ2M6IEFsZXhlaSBQb2R0ZWxlemhuaWtvdiA8YXBvZHRlbGVAZ21haWwuY29tPg0KPiBTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pg0KPiAtLS0NCj4gIGluY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmggfCA4ICsrKystLS0tDQo+ICAx
IGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmggYi9pbmNsdWRlL2RybS9pOTE1X3Bj
aWlkcy5oIGluZGV4DQo+IDQ4NzBjM2M5ZjliMi4uNTE4NWFjNzg5MDM4IDEwMDY0NA0KPiAtLS0g
YS9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oDQo+ICsrKyBiL2luY2x1ZGUvZHJtL2k5MTVfcGNp
aWRzLmgNCj4gQEAgLTM0MCw4ICszNDAsOCBAQA0KPiAgCUlOVEVMX1NLTF9VTFRfR1QxX0lEUyhp
bmZvKSwgXA0KPiAgCUlOVEVMX1NLTF9VTFhfR1QxX0lEUyhpbmZvKSwgXA0KPiAgCUlOVEVMX1ZH
QV9ERVZJQ0UoMHgxOTAyLCBpbmZvKSwgLyogRFQgIEdUMSAqLyBcDQo+IC0JSU5URUxfVkdBX0RF
VklDRSgweDE5MEIsIGluZm8pLCAvKiBIYWxvIEdUMSAqLyBcDQo+ICAJSU5URUxfVkdBX0RFVklD
RSgweDE5MEEsIGluZm8pLCAvKiBTUlYgR1QxICovIFwNCj4gKwlJTlRFTF9WR0FfREVWSUNFKDB4
MTkwQiwgaW5mbyksIC8qIEhhbG8gR1QxICovIFwNCj4gIAlJTlRFTF9WR0FfREVWSUNFKDB4MTkx
NywgaW5mbykgIC8qIERUICBHVDEuNSAqLw0KPiANCj4gICNkZWZpbmUgSU5URUxfU0tMX1VMVF9H
VDJfSURTKGluZm8pIFwNCj4gQEAgLTM1NSw4ICszNTUsOCBAQA0KPiAgCUlOVEVMX1NLTF9VTFRf
R1QyX0lEUyhpbmZvKSwgXA0KPiAgCUlOVEVMX1NLTF9VTFhfR1QyX0lEUyhpbmZvKSwgXA0KPiAg
CUlOVEVMX1ZHQV9ERVZJQ0UoMHgxOTEyLCBpbmZvKSwgLyogRFQgIEdUMiAqLyBcDQo+IC0JSU5U
RUxfVkdBX0RFVklDRSgweDE5MUIsIGluZm8pLCAvKiBIYWxvIEdUMiAqLyBcDQo+ICAJSU5URUxf
VkdBX0RFVklDRSgweDE5MUEsIGluZm8pLCAvKiBTUlYgR1QyICovIFwNCj4gKwlJTlRFTF9WR0Ff
REVWSUNFKDB4MTkxQiwgaW5mbyksIC8qIEhhbG8gR1QyICovIFwNCj4gIAlJTlRFTF9WR0FfREVW
SUNFKDB4MTkxRCwgaW5mbykgIC8qIFdLUyBHVDIgKi8NCj4gDQo+ICAjZGVmaW5lIElOVEVMX1NL
TF9VTFRfR1QzX0lEUyhpbmZvKSBcDQo+IEBAIC0zNzIsOSArMzcyLDkgQEANCj4gDQo+ICAjZGVm
aW5lIElOVEVMX1NLTF9HVDRfSURTKGluZm8pIFwNCj4gIAlJTlRFTF9WR0FfREVWSUNFKDB4MTkz
MiwgaW5mbyksIC8qIERUIEdUNCAqLyBcDQo+ICsJSU5URUxfVkdBX0RFVklDRSgweDE5M0EsIGlu
Zm8pLCAvKiBTUlYgR1Q0ZSAqLyBcDQo+ICAJSU5URUxfVkdBX0RFVklDRSgweDE5M0IsIGluZm8p
LCAvKiBIYWxvIEdUNGUgKi8gXA0KPiAtCUlOVEVMX1ZHQV9ERVZJQ0UoMHgxOTNELCBpbmZvKSwg
LyogV0tTIEdUNGUgKi8gXA0KPiAtCUlOVEVMX1ZHQV9ERVZJQ0UoMHgxOTNBLCBpbmZvKSAgLyog
U1JWIEdUNGUgKi8NCj4gKwlJTlRFTF9WR0FfREVWSUNFKDB4MTkzRCwgaW5mbykgLyogV0tTIEdU
NGUgKi8NCj4gDQo+ICAjZGVmaW5lIElOVEVMX1NLTF9JRFMoaW5mbykJIFwNCj4gIAlJTlRFTF9T
S0xfR1QxX0lEUyhpbmZvKSwgXA0KPiAtLQ0KPiAyLjI2LjINCj4gDQo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IEludGVsLWdmeCBtYWlsaW5nIGxp
c3QNCj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA0KX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
