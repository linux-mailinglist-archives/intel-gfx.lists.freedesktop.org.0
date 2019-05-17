Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B297F21758
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 12:55:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4991A89612;
	Fri, 17 May 2019 10:55:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F30B389612;
 Fri, 17 May 2019 10:55:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 03:55:21 -0700
X-ExtLoop1: 1
Received: from irsmsx107.ger.corp.intel.com ([163.33.3.99])
 by fmsmga007.fm.intel.com with ESMTP; 17 May 2019 03:55:20 -0700
Received: from irsmsx155.ger.corp.intel.com (163.33.192.3) by
 IRSMSX107.ger.corp.intel.com (163.33.3.99) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Fri, 17 May 2019 11:55:19 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.93]) by
 irsmsx155.ger.corp.intel.com ([169.254.14.127]) with mapi id 14.03.0415.000;
 Fri, 17 May 2019 11:55:19 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "chris@chris-wilson.co.uk" <chris@chris-wilson.co.uk>
Thread-Topic: [igt-dev] [PATCH i-g-t] benchmarks/gem_wsim: Randomise random
 seed
Thread-Index: AQHVDBl1WPj1tJ2vl0GdB+7PNTFOJ6ZvFQGA
Date: Fri, 17 May 2019 10:55:19 +0000
Message-ID: <d3a0ad3da08f7cb2d73a117efee8c446e8498a40.camel@intel.com>
References: <20190516185840.19777-1-chris@chris-wilson.co.uk>
In-Reply-To: <20190516185840.19777-1-chris@chris-wilson.co.uk>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.181]
Content-ID: <228BCCEC92825642B864E6D6951B08DE@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] benchmarks/gem_wsim:
 Randomise random seed
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTA1LTE2IGF0IDE5OjU4ICswMTAwLCBDaHJpcyBXaWxzb24gd3JvdGU6DQo+
IFRvIGF2b2lkIGhpdHRpbmcgdGhlIHNhbWUgcnV0IG9uIGVhY2ggYmVuY2htYXJrIHJ1biwgc3Rh
cnQgd2l0aCBhIG5ldw0KPiByYW5kb20gc2VlZC4gVG8gYWxsb3cgaGl0dGluZyB0aGUgc2FtZSBy
dXQgYWdhaW4sIGxldCBpdCBiZSBzcGVjaWZpZWQNCj4gYnkgdGhlIHVzZXIuDQo+IA0KPiBTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4NCj4gQ2M6
IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgYmVu
Y2htYXJrcy9nZW1fd3NpbS5jIHwgNiArKysrKy0NCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9iZW5jaG1hcmtzL2dl
bV93c2ltLmMgYi9iZW5jaG1hcmtzL2dlbV93c2ltLmMNCj4gaW5kZXggNDg1NjhjZTQwLi5jZjJh
NDQ3NDYgMTAwNjQ0DQo+IC0tLSBhL2JlbmNobWFya3MvZ2VtX3dzaW0uYw0KPiArKysgYi9iZW5j
aG1hcmtzL2dlbV93c2ltLmMNCj4gQEAgLTIyODIsOCArMjI4Miw5IEBAIGludCBtYWluKGludCBh
cmdjLCBjaGFyICoqYXJndikNCj4gIAlpZ3RfcmVxdWlyZShmZCk7DQo+ICANCj4gIAlpbml0X2Ns
b2NrcygpOw0KPiArCXNyYW5kKHRpbWUoTlVMTCkpOw0KDQpNYXliZSB0aGUgc2VlZCB1c2VkIGZv
ciB0aGUgcnVuIHNob3VsZCBiZSBwcmludGVkIHRvIHN0ZGVyciwgc28gdGhhdCdzDQppdCdzIGVh
c3kgdG8gcmUtcnVuIGEgZmFpbHVyZT8NCg0KPiAtCXdoaWxlICgoYyA9IGdldG9wdChhcmdjLCBh
cmd2LCAiaHF2MlJTSHhHZGM6bjpyOnc6VzphOnQ6YjpwOiIpKSAhPSAtMSkgew0KPiArCXdoaWxl
ICgoYyA9IGdldG9wdChhcmdjLCBhcmd2LCAiaHF2MlJTSHhHZGM6bjpyOnc6VzphOnQ6YjpwOnM6
IikpICE9IC0xKSB7DQo+ICAJCXN3aXRjaCAoYykgew0KPiAgCQljYXNlICdXJzoNCj4gIAkJCWlm
IChtYXN0ZXJfd29ya2xvYWQgPj0gMCkgew0KPiBAQCAtMjMwMCw2ICsyMzAxLDkgQEAgaW50IG1h
aW4oaW50IGFyZ2MsIGNoYXIgKiphcmd2KQ0KPiAgCQljYXNlICdwJzoNCj4gIAkJCXByaW8gPSBh
dG9pKG9wdGFyZyk7DQo+ICAJCQlicmVhazsNCj4gKwkJY2FzZSAncyc6DQo+ICsJCQlzcmFuZChh
dG9pKG9wdGFyZykpOw0KPiArCQkJYnJlYWs7DQo+ICAJCWNhc2UgJ2EnOg0KPiAgCQkJaWYgKGFw
cGVuZF93b3JrbG9hZF9hcmcpIHsNCj4gIAkJCQlpZiAodmVyYm9zZSkNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
