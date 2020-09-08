Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 438D42614CF
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 18:37:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89B048970B;
	Tue,  8 Sep 2020 16:37:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 390FA8970B
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Sep 2020 16:37:40 +0000 (UTC)
IronPort-SDR: wOSmFLitJ5DwyHTRjIg6IJEuGfJa2vG8inGRplRG+P8QOpPtdBUs0YDx002iWMbBzrk+6Cp21W
 iM5dBZdQN+Ug==
X-IronPort-AV: E=McAfee;i="6000,8403,9738"; a="138218800"
X-IronPort-AV: E=Sophos;i="5.76,406,1592895600"; d="scan'208";a="138218800"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2020 09:37:39 -0700
IronPort-SDR: yfGTYAgtz1t1lrn5I1tplGM9nm8ZfGGQ7RXLPdKnrRZUB4Gxsc/9Yw4xlR+ssoOJrK8qP3Z3ht
 oxia09jCyUEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,406,1592895600"; d="scan'208";a="317243552"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga002.jf.intel.com with ESMTP; 08 Sep 2020 09:37:39 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Sep 2020 09:37:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 8 Sep 2020 09:37:38 -0700
Received: from orsmsx610.amr.corp.intel.com ([10.22.229.23]) by
 ORSMSX610.amr.corp.intel.com ([10.22.229.23]) with mapi id 15.01.1713.004;
 Tue, 8 Sep 2020 09:37:38 -0700
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [04/12] drm/i915: Add VBT DVO ports H and I
Thread-Index: AQHWhfmeyB+oTOiJ7Em247R2uAHE4qlfZu+A
Date: Tue, 8 Sep 2020 16:37:38 +0000
Message-ID: <cb3098cb236091ee498f9d928f583599f7b06666.camel@intel.com>
References: <20200630215601.28557-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20200630215601.28557-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.100]
Content-ID: <22B57A379C6A614093A91EF260B1C212@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [04/12] drm/i915: Add VBT DVO ports H and I
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

T24gV2VkLCAyMDIwLTA3LTAxIGF0IDAwOjU1ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPA0KPiB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bQ0KPiA+DQo+IA0KPiBWQlQgaGFzIHBvcnRzIEggYW5kIEkgc2luY2UgdmVyc2lvbiAyMTcuDQo+
IA0KDQpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRl
bC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDwNCj4gdmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20NCj4gPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYmlvcy5jICAgICB8IDIgKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaCB8IDggKysrKysrLS0NCj4gIDIgZmlsZXMgY2hhbmdl
ZCwgOCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gaW5kZXggNjU5M2UyYzM4MDQzLi4yYmYwYmMw
ZGVlZTggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Ymlvcy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5j
DQo+IEBAIC0xNjUzLDYgKzE2NTMsOCBAQCBzdGF0aWMgZW51bSBwb3J0IGR2b19wb3J0X3RvX3Bv
cnQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiAgCQlbUE9SVF9FXSA9IHsg
RFZPX1BPUlRfSERNSUUsIERWT19QT1JUX0RQRSwgRFZPX1BPUlRfQ1JUIH0sDQo+ICAJCVtQT1JU
X0ZdID0geyBEVk9fUE9SVF9IRE1JRiwgRFZPX1BPUlRfRFBGLCAtMSB9LA0KPiAgCQlbUE9SVF9H
XSA9IHsgRFZPX1BPUlRfSERNSUcsIERWT19QT1JUX0RQRywgLTEgfSwNCj4gKwkJW1BPUlRfSF0g
PSB7IERWT19QT1JUX0hETUlILCBEVk9fUE9SVF9EUEgsIC0xIH0sDQo+ICsJCVtQT1JUX0ldID0g
eyBEVk9fUE9SVF9IRE1JSSwgRFZPX1BPUlRfRFBJLCAtMSB9LA0KPiAgCX07DQo+ICAJLyoNCj4g
IAkgKiBCc3BlYyBsaXN0cyB0aGUgcG9ydHMgYXMgQSwgQiwgQywgRCAtIGhvd2V2ZXIgaW50ZXJu
YWxseSBpbiBvdXINCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfdmJ0X2RlZnMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0
X2RlZnMuaA0KPiBpbmRleCBhZWY3ZmU5MzJkMWEuLmU1MDJkNjUzMDBmYSAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YnRfZGVmcy5oDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJ0X2RlZnMuaA0KPiBAQCAtMjkz
LDggKzI5MywxMiBAQCBzdHJ1Y3QgYmRiX2dlbmVyYWxfZmVhdHVyZXMgew0KPiAgI2RlZmluZSBE
Vk9fUE9SVF9IRE1JRQkJMTIJCQkJLyogMTkzICovDQo+ICAjZGVmaW5lIERWT19QT1JUX0RQRgkJ
MTMJCQkJLyogTi9BICovDQo+ICAjZGVmaW5lIERWT19QT1JUX0hETUlGCQkxNAkJCQkvKiBOL0Eg
Ki8NCj4gLSNkZWZpbmUgRFZPX1BPUlRfRFBHCQkxNQ0KPiAtI2RlZmluZSBEVk9fUE9SVF9IRE1J
RwkJMTYNCj4gKyNkZWZpbmUgRFZPX1BPUlRfRFBHCQkxNQkJCQkvKiAyMTcgKi8NCj4gKyNkZWZp
bmUgRFZPX1BPUlRfSERNSUcJCTE2CQkJCS8qIDIxNyAqLw0KPiArI2RlZmluZSBEVk9fUE9SVF9E
UEgJCTE3CQkJCS8qIDIxNyAqLw0KPiArI2RlZmluZSBEVk9fUE9SVF9IRE1JSAkJMTgJCQkJLyog
MjE3ICovDQo+ICsjZGVmaW5lIERWT19QT1JUX0RQSQkJMTkJCQkJLyogMjE3ICovDQo+ICsjZGVm
aW5lIERWT19QT1JUX0hETUlJCQkyMAkJCQkvKiAyMTcgKi8NCj4gICNkZWZpbmUgRFZPX1BPUlRf
TUlQSUEJCTIxCQkJCS8qIDE3MSAqLw0KPiAgI2RlZmluZSBEVk9fUE9SVF9NSVBJQgkJMjIJCQkJ
LyogMTcxICovDQo+ICAjZGVmaW5lIERWT19QT1JUX01JUElDCQkyMwkJCQkvKiAxNzEgKi8NCj4g
DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
