Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1600BB2EBDE
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 05:22:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC20710E85A;
	Thu, 21 Aug 2025 03:22:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=didiglobal.com header.i=@didiglobal.com header.b="axQ7ftNF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx9.didiglobal.com (mx9.didiglobal.com [111.202.70.124])
 by gabe.freedesktop.org (Postfix) with SMTP id CA60010E85A
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 03:22:06 +0000 (UTC)
Received: from mail.didiglobal.com (unknown [10.79.71.37])
 by mx9.didiglobal.com (MailData Gateway V2.8.8) with ESMTPS id 0B19618B3E86F9; 
 Thu, 21 Aug 2025 11:21:08 +0800 (CST)
Received: from BJ02-ACTMBX-07.didichuxing.com (10.79.65.14) by
 BJ03-ACTMBX-01.didichuxing.com (10.79.71.37) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.10; Thu, 21 Aug 2025 11:22:00 +0800
Received: from BJ03-ACTMBX-07.didichuxing.com (10.79.71.34) by
 BJ02-ACTMBX-07.didichuxing.com (10.79.65.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.10; Thu, 21 Aug 2025 11:21:59 +0800
Received: from BJ03-ACTMBX-07.didichuxing.com ([fe80::2e1a:dd47:6d25:287e]) by
 BJ03-ACTMBX-07.didichuxing.com ([fe80::2e1a:dd47:6d25:287e%7]) with
 mapi id 15.02.1748.010; Thu, 21 Aug 2025 11:21:59 +0800
X-MD-Sfrom: chentaotao@didiglobal.com
X-MD-SrcIP: 10.79.71.37
From: =?gb2312?B?s8LMzszOIFRhb3RhbyBDaGVu?= <chentaotao@didiglobal.com>
To: "andi.shyti@kernel.org" <andi.shyti@kernel.org>, "rodrigo.vivi@intel.com"
 <rodrigo.vivi@intel.com>
CC: "airlied@gmail.com" <airlied@gmail.com>, "brauner@kernel.org"
 <brauner@kernel.org>, =?gb2312?B?s8LMzszOIFRhb3RhbyBDaGVu?=
 <chentaotao@didiglobal.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>, "joonas.lahtinen@linux.intel.com"
 <joonas.lahtinen@linux.intel.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "lkp@intel.com" <lkp@intel.com>,
 "oe-lkp@lists.linux.dev" <oe-lkp@lists.linux.dev>, "oliver.sang@intel.com"
 <oliver.sang@intel.com>, "simona@ffwll.ch" <simona@ffwll.ch>,
 "tursulin@ursulin.net" <tursulin@ursulin.net>
Subject: Re: [PATCH 1/2] drm/i915: set O_LARGEFILE in __create_shmem()
Thread-Topic: [PATCH 1/2] drm/i915: set O_LARGEFILE in __create_shmem()
Thread-Index: AQHcEkrBvq4qfIVC9U6kg8R9EqP/Xw==
Date: Thu, 21 Aug 2025 03:21:59 +0000
Message-ID: <20250821032156.4946-1-chentaotao@didiglobal.com>
In-Reply-To: <nd2sd2vdwif242wslgkaonuvskawho36bp6j6a4caghauzx6f5@dgkaow5idqxt>
Accept-Language: zh-CN, en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.79.64.102]
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=didiglobal.com;
 s=2025; t=1755746471;
 bh=QIbg+7UJekuVhcRCR5H+JFkJMdK1lI4H9zNSAkonX4E=;
 h=From:To:CC:Subject:Date:Message-ID:Content-Type;
 b=axQ7ftNFi9gt9tS+UgrxjH9//DDzOdP3TiW7iA0+YMlAetbrOcVvY8yxUM1y8oD8g
 38wnCq3Bm95YWPVuhU+o1wNh8yyNIAWiJ3/U18CwweIKp3qH+pmjW9EH6urYGNcR8y
 HdO+XmurmzfuOCBmwCouCfuOO6Vuei1pl53PE/90=
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

RnJvbTogVGFvdGFvIENoZW4gPGNoZW50YW90YW9AZGlkaWdsb2JhbC5jb20+DQoNCkhpIEFuZGks
DQoNCj4gSGkgVGFvdGFvLA0KPiANCj4+IFJlcG9ydGVkLWJ5OiBrZXJuZWwgdGVzdCByb2JvdCA8
b2xpdmVyLnNhbmdAaW50ZWwuY29tPg0KPj4gQ2xvc2VzOiBodHRwczovL2xvcmUua2VybmVsLm9y
Zy9vZS1sa3AvMjAyNTA4MDgxMDI5LjM0MzE5MmVjLWxrcEBpbnRlbC5jb20NCj4NCj4gLi4uDQo+
IA0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zaG1l
bS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3NobWVtLmMNCj4+IGluZGV4
IGUzZDE4ODQ1NWY2Ny4uMmI1M2FhZDkxNWY1IDEwMDY0NA0KPj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3NobWVtLmMNCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV9zaG1lbS5jDQo+PiBAQCAtNTE0LDYgKzUxNCwxMSBAQCBzdGF0aWMg
aW50IF9fY3JlYXRlX3NobWVtKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LA0KPj4gIAlp
ZiAoSVNfRVJSKGZpbHApKQ0KPj4gIAkJcmV0dXJuIFBUUl9FUlIoZmlscCk7DQo+PiAgDQo+PiAr
CS8qDQo+PiArCSAqIFByZXZlbnQgLUVGQklHIGJ5IGFsbG93aW5nIGxhcmdlIHdyaXRlcyBiZXlv
bmQgTUFYX05PTl9MRlMgb24gc2htZW0NCj4+ICsJICogb2JqZWN0cyBieSBzZXR0aW5nIE9fTEFS
R0VGSUxFLg0KPj4gKwkgKi8NCj4+ICsJZmlscC0+Zl9mbGFncyB8PSBPX0xBUkdFRklMRTsNCj4N
Cj4gSSBkb24ndCBoYXZlIGFueXRoaW5nIGFnYWluc3QgdGhpcywgYnV0IGlzIGl0IHJlYWxseSBm
aXhpbmcgdGhlDQo+IGlzc3VlPyBJIHRob3VnaHQgdGhhdCBPX0xBUkdFRklMRSBpcyBpZ25vcmVk
IGluIDY0IGJpdCBtYWNoaW5lcywNCj4gd2hpbGUgaGVyZSB0aGUgZmFpbHVyZSBpcyBoYXBwZW5p
bmcgaW4gNjQgYml0IG1hY2hpbmVzLg0KDQpBcyBtZW50aW9uZWQgaW4gdGhlIGNvbW1pdCBib2R5
LCB3aXRob3V0IE9fTEFSR0VGSUxFLCBmaWxlLT5mX29wLT53cml0ZV9pdGVyDQpjYWxscyBnZW5l
cmljX3dyaXRlX2NoZWNrX2xpbWl0cygpLCB3aGljaCBlbmZvcmNlcyB0aGUgMkdCIChNQVhfTk9O
X0xGUykgbGltaXQNCmFuZCBjYXVzZXMgLUVGQklHIG9uIGxhcmdlIHdyaXRlcy4NCg0KT24gNjQt
Yml0IHN5c3RlbXMgT19MQVJHRUZJTEUgaXMgc3RpbGwgc2V0IHdoZW4gb3BlbmluZyBmaWxlcyAo
ZS5nLiB2aWEgb3BlbigpKSwNCnNvIHdlIGFsc28gbmVlZCB0byBzZXQgaXQgaGVyZSBmb3Igc2ht
ZW0gb2JqZWN0cyBjcmVhdGVkIGluc2lkZSB0aGUga2VybmVsLg0KDQpIb3dldmVyLCBvbiBvbGRl
ciAzMi1iaXQgc3lzdGVtcywgc2V0dGluZyBPX0xBUkdFRklMRSB1bmNvbmRpdGlvbmFsbHkgbWF5
IGJlIHJpc2t5Lg0KUHJldmlvdXNseSBJIGRpZCBub3QgY2hlY2sgdGhpcywgYnV0IHRvIHJlZHVj
ZSB0aGUgcmlzayBhIHNhZmVyIGFwcHJvYWNoIGlzIHRvIHdyYXANCml0IGluIGEgY2hlY2ssIGZv
ciBleGFtcGxlOg0KDQorCWlmIChmb3JjZV9vX2xhcmdlZmlsZSgpKQ0KKwkJZmlscC0+Zl9mbGFn
cyB8PSBPX0xBUkdFRklMRTsNCg0KPg0KPiBCZXNpZGVzLCB3aGVyZSBkbyB5b3Ugc2VlIGluIHRo
ZSBMS1AgbG9ncyB0aGUgLUVGQklHIGVycm9yDQo+IG1lc3NhZ2U/DQo+DQoNCkR1ZSB0byB0aGUg
cHJldmlvdXMgcmV0dXJuIG9yZGVyIGluIHNobWVtX3B3cml0ZSgpLCB0aGlzIC1FRkJJRyB3YXMg
YmVpbmcgb3ZlcndyaXR0ZW4NCmJ5IC1FSU8gb24gc2hvcnQgd3JpdGVzLiBUaGlzIGlzc3VlIHdp
bGwgYmUgZml4ZWQgaW4gUEFUQ0ggMi8yLg0KDQpUYW90YW8NCg0KPiBBbmRpDQo+DQo+PiAgCW9i
ai0+ZmlscCA9IGZpbHA7DQo+PiAgCXJldHVybiAwOw0KPj4gIH0NCj4+IC0tIA0KPj4gMi4zNC4x
DQo=
