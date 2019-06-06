Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9738536D39
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 09:20:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F13A689804;
	Thu,  6 Jun 2019 07:20:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BF4389804;
 Thu,  6 Jun 2019 07:20:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 00:20:26 -0700
X-ExtLoop1: 1
Received: from irsmsx110.ger.corp.intel.com ([163.33.3.25])
 by orsmga001.jf.intel.com with ESMTP; 06 Jun 2019 00:20:25 -0700
Received: from irsmsx112.ger.corp.intel.com (10.108.20.5) by
 irsmsx110.ger.corp.intel.com (163.33.3.25) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 6 Jun 2019 08:20:24 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.227]) by
 irsmsx112.ger.corp.intel.com ([169.254.1.197]) with mapi id 14.03.0415.000;
 Thu, 6 Jun 2019 08:20:24 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "guillaume.tucker@collabora.com" <guillaume.tucker@collabora.com>,
 "Hiler, Arkadiusz" <arkadiusz.hiler@intel.com>, "Latvala, Petri"
 <petri.latvala@intel.com>
Thread-Topic: [igt-dev] [PATCH i-g-t 3/4] i915/gem_create: use __atomic_*
 instead of __sync_*
Thread-Index: AQHVGgM4OqEqfVIN1kCrBnyYexbdhKaOK9aA
Date: Thu, 6 Jun 2019 07:20:23 +0000
Message-ID: <facd43d06d2f0f2060163727ba1bcd17a871ca84.camel@intel.com>
References: <73773a5061681c502db373df698d2d24b4ad267a.1559562608.git.guillaume.tucker@collabora.com>
 <af5b9b35eb142b53fb7cb4684b494bc6ccb047f1.1559562608.git.guillaume.tucker@collabora.com>
In-Reply-To: <af5b9b35eb142b53fb7cb4684b494bc6ccb047f1.1559562608.git.guillaume.tucker@collabora.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.181]
Content-ID: <9C0C03EA6BB06244AE7FF6205F8FC112@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 3/4] i915/gem_create: use
 __atomic_* instead of __sync_*
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDE5LTA2LTAzIGF0IDEyOjU0ICswMTAwLCBHdWlsbGF1bWUgVHVja2VyIHdyb3Rl
Og0KPiBSZXBsYWNlIGNhbGxzIHRvIHRoZSBvbGRlciBfX3N5bmNfKiBmdW5jdGlvbnMgd2l0aCB0
aGUgbmV3IF9fYXRvbWljXyoNCj4gc3RhbmRhcmQgb25lcy4gIFRoaXMgZml4ZXMgYnVpbGRzIG9u
IHNvbWUgYXJjaGl0ZWN0dXJlcywgaW4gcGFydGljdWxhcg0KPiBNSVBTIHdoaWNoIGRvZXNuJ3Qg
aGF2ZSBfX3N5bmNfYWRkX2FuZF9mZXRjaF84IGFuZA0KPiBfX3N5bmNfdmFsX2NvbXBhcmVfYW5k
X3N3YXBfOCBmb3IgNjQtYml0IHZhcmlhYmxlIGhhbmRsaW5nLg0KDQpDYW4ndCB3ZSB1c2UgdGhl
IEMxMSBhdG9taWNzIGZyb20gc3RkYXRvbWljLmggaW5zdGVhZD8NCg0KRm9yIGluc3RhbmNlOg0K
aHR0cHM6Ly9lbi5jcHByZWZlcmVuY2UuY29tL3cvYy9hdG9taWMvYXRvbWljX2NvbXBhcmVfZXhj
aGFuZ2UNCg0KPiBTaWduZWQtb2ZmLWJ5OiBHdWlsbGF1bWUgVHVja2VyIDxndWlsbGF1bWUudHVj
a2VyQGNvbGxhYm9yYS5jb20+DQo+IC0tLQ0KPiAgdGVzdHMvTWFrZWZpbGUuYW0gICAgICAgfCAg
MiArLQ0KPiAgdGVzdHMvaTkxNS9nZW1fY3JlYXRlLmMgfCAxMiArKysrKysrKysrLS0NCj4gIDIg
ZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRp
ZmYgLS1naXQgYS90ZXN0cy9NYWtlZmlsZS5hbSBiL3Rlc3RzL01ha2VmaWxlLmFtDQo+IGluZGV4
IDUwOTdkZWJmNjI5Yy4uMThhMGYxZjIwNTkyIDEwMDY0NA0KPiAtLS0gYS90ZXN0cy9NYWtlZmls
ZS5hbQ0KPiArKysgYi90ZXN0cy9NYWtlZmlsZS5hbQ0KPiBAQCAtOTAsNyArOTAsNyBAQCBBTV9M
REZMQUdTID0gLVdsLC0tYXMtbmVlZGVkDQo+ICBkcm1faW1wb3J0X2V4cG9ydF9DRkxBR1MgPSAk
KEFNX0NGTEFHUykgJChUSFJFQURfQ0ZMQUdTKQ0KPiAgZHJtX2ltcG9ydF9leHBvcnRfTERBREQg
PSAkKExEQUREKSAtbHB0aHJlYWQNCj4gIGdlbV9jcmVhdGVfQ0ZMQUdTID0gJChBTV9DRkxBR1Mp
ICQoVEhSRUFEX0NGTEFHUykNCj4gLWdlbV9jcmVhdGVfTERBREQgPSAkKExEQUREKSAtbHB0aHJl
YWQNCj4gK2dlbV9jcmVhdGVfTERBREQgPSAkKExEQUREKSAtbHB0aHJlYWQgLWxhdG9taWMNCj4g
IGdlbV9jbG9zZV9yYWNlX0NGTEFHUyA9ICQoQU1fQ0ZMQUdTKSAkKFRIUkVBRF9DRkxBR1MpDQo+
ICBnZW1fY2xvc2VfcmFjZV9MREFERCA9ICQoTERBREQpIC1scHRocmVhZA0KPiAgZ2VtX2N0eF90
aHJhc2hfQ0ZMQUdTID0gJChBTV9DRkxBR1MpICQoVEhSRUFEX0NGTEFHUykNCj4gZGlmZiAtLWdp
dCBhL3Rlc3RzL2k5MTUvZ2VtX2NyZWF0ZS5jIGIvdGVzdHMvaTkxNS9nZW1fY3JlYXRlLmMNCj4g
aW5kZXggNDNjYmY0NWYyODliLi5hNGFlYjk0YjNmOTMgMTAwNjQ0DQo+IC0tLSBhL3Rlc3RzL2k5
MTUvZ2VtX2NyZWF0ZS5jDQo+ICsrKyBiL3Rlc3RzL2k5MTUvZ2VtX2NyZWF0ZS5jDQo+IEBAIC0x
NTYsNiArMTU2LDE0IEBAIHN0YXRpYyB2b2lkIGludmFsaWRfbm9uYWxpZ25lZF9zaXplKGludCBm
ZCkNCj4gIAlnZW1fY2xvc2UoZmQsIGNyZWF0ZS5oYW5kbGUpOw0KPiAgfQ0KPiAgDQo+ICtzdGF0
aWMgdWludDY0X3QgYXRvbWljX2NvbXBhcmVfc3dhcF91NjQodWludDY0X3QgKnB0ciwgdWludDY0
X3Qgb2xkdmFsLA0KPiArCQkJCQl1aW50NjRfdCBuZXd2YWwpDQo+ICt7DQo+ICsJX19hdG9taWNf
Y29tcGFyZV9leGNoYW5nZV9uKHB0ciwgJm9sZHZhbCwgbmV3dmFsLCAwLA0KPiArCQkJCSAgICBf
X0FUT01JQ19TRVFfQ1NULCBfX0FUT01JQ19TRVFfQ1NUKTsNCj4gKwlyZXR1cm4gb2xkdmFsOw0K
PiArfQ0KPiArDQo+ICBzdGF0aWMgdWludDY0X3QgZ2V0X25wYWdlcyh1aW50NjRfdCAqZ2xvYmFs
LCB1aW50NjRfdCBucGFnZXMpDQo+ICB7DQo+ICAJdWludDY0X3QgdHJ5LCBvbGQsIG1heDsNCj4g
QEAgLTE2NSw3ICsxNzMsNyBAQCBzdGF0aWMgdWludDY0X3QgZ2V0X25wYWdlcyh1aW50NjRfdCAq
Z2xvYmFsLCB1aW50NjRfdCBucGFnZXMpDQo+ICAJCW9sZCA9IG1heDsNCj4gIAkJdHJ5ID0gMSAr
IG5wYWdlcyAlIChtYXggLyAyKTsNCj4gIAkJbWF4IC09IHRyeTsNCj4gLQl9IHdoaWxlICgobWF4
ID0gX19zeW5jX3ZhbF9jb21wYXJlX2FuZF9zd2FwKGdsb2JhbCwgb2xkLCBtYXgpKSAhPSBvbGQp
Ow0KPiArCX0gd2hpbGUgKChtYXggPSBhdG9taWNfY29tcGFyZV9zd2FwX3U2NChnbG9iYWwsIG9s
ZCwgbWF4KSkgIT0gb2xkKTsNCj4gIA0KPiAgCXJldHVybiB0cnk7DQo+ICB9DQo+IEBAIC0yMDIs
NyArMjEwLDcgQEAgc3RhdGljIHZvaWQgKnRocmVhZF9jbGVhcih2b2lkICpkYXRhKQ0KPiAgCQl9
DQo+ICAJCWdlbV9jbG9zZShpOTE1LCBjcmVhdGUuaGFuZGxlKTsNCj4gIA0KPiAtCQlfX3N5bmNf
YWRkX2FuZF9mZXRjaCgmYXJnLT5tYXgsIG5wYWdlcyk7DQo+ICsJCV9fYXRvbWljX2FkZF9mZXRj
aCgmYXJnLT5tYXgsIG5wYWdlcywgX19BVE9NSUNfU0VRX0NTVCk7DQo+ICAJfQ0KPiAgDQo+ICAJ
cmV0dXJuIE5VTEw7DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
