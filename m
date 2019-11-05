Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B4CEFCA3
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 12:47:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B75B88C0A;
	Tue,  5 Nov 2019 11:47:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AC8B88C0A
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2019 11:47:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19087711-1500050 for multiple; Tue, 05 Nov 2019 11:47:17 +0000
MIME-Version: 1.0
To: Ramalingam C <ramalingam.c@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191105113029.4328-1-ramalingam.c@intel.com>
References: <20191105113029.4328-1-ramalingam.c@intel.com>
Message-ID: <157295443686.14950.14625598446305857471@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 05 Nov 2019 11:47:16 +0000
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Create dumb buffer from LMEM
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
Cc: Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBSYW1hbGluZ2FtIEMgKDIwMTktMTEtMDUgMTE6MzA6MjkpCj4gV2hlbiBMTUVNIGlz
IHN1cHBvcnRlZCwgZHVtYiBidWZmZXIgcHJlZmVycmVkIHRvIGJlIGNyZWF0ZWQgZnJvbSBMTUVN
Lgo+IAo+IHYyOgo+ICAgUGFyYW1ldGVycyBhcmUgcmVzaHVmZmxlZC4gW0NocmlzXQo+IHYzOgo+
ICAgcy9yZWdpb25faWQvbWVtX3R5cGUKPiAKPiBTaWduZWQtb2ZmLWJ5OiBSYW1hbGluZ2FtIEMg
PHJhbWFsaW5nYW0uY0BpbnRlbC5jb20+Cj4gY2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxk
QGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyB8IDE3
ICsrKysrKysrKysrKysrLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwo+IGluZGV4IDE0M2E4OTUy
YjczNi4uZGI3MmFmOTg5MDVmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jCj4gQEAgLTQ0
LDYgKzQ0LDcgQEAKPiAgI2luY2x1ZGUgImdlbS9pOTE1X2dlbV9jbGZsdXNoLmgiCj4gICNpbmNs
dWRlICJnZW0vaTkxNV9nZW1fY29udGV4dC5oIgo+ICAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2lv
Y3Rscy5oIgo+ICsjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX2xtZW0uaCIKPiAgI2luY2x1ZGUgImdl
bS9pOTE1X2dlbV9wbS5oIgo+ICAjaW5jbHVkZSAiZ3QvaW50ZWxfZW5naW5lX3VzZXIuaCIKPiAg
I2luY2x1ZGUgImd0L2ludGVsX2d0LmgiCj4gQEAgLTE3NSw2ICsxNzYsNyBAQCBpOTE1X2dlbV9w
aHlzX3B3cml0ZShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+ICBzdGF0aWMgaW50
Cj4gIGk5MTVfZ2VtX2NyZWF0ZShzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUsCj4gICAgICAgICAgICAg
ICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiArICAgICAgICAgICAgICAg
ZW51bSBpbnRlbF9tZW1vcnlfdHlwZSBtZW1fdHlwZSwKPiAgICAgICAgICAgICAgICAgdTY0ICpz
aXplX3AsCj4gICAgICAgICAgICAgICAgIHUzMiAqaGFuZGxlX3ApCj4gIHsKPiBAQCAtMTg4LDcg
KzE5MCwxMSBAQCBpOTE1X2dlbV9jcmVhdGUoc3RydWN0IGRybV9maWxlICpmaWxlLAo+ICAgICAg
ICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPiAgCj4gICAgICAgICAvKiBBbGxvY2F0ZSB0aGUg
bmV3IG9iamVjdCAqLwo+IC0gICAgICAgb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zaG1l
bShkZXZfcHJpdiwgc2l6ZSk7Cj4gKyAgICAgICBpZiAobWVtX3R5cGUgPT0gSU5URUxfTUVNT1JZ
X0xPQ0FMKQo+ICsgICAgICAgICAgICAgICBvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX2xt
ZW0oZGV2X3ByaXYsIHNpemUsIDApOwo+ICsgICAgICAgZWxzZQo+ICsgICAgICAgICAgICAgICBv
YmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3NobWVtKGRldl9wcml2LCBzaXplKTsKCkhhdmUg
eW91IG5vdCB0YWxrZWQgTWF0dGhldyBpbnRvIGNyZWF0aW5nIGEKaTkxNV9nZW1fb2JqZWN0X2Ny
ZWF0ZV9yZWdpb24oP2Rldl9wcml2PywKCQkJICAgICAgaW50ZWxfbWVtb3J5X3JlZ2lvbl9sb29r
dXAoZGV2X3ByaXYsIG1lbV90eXBlKSwKCQkJICAgICAgc2l6ZSwgZmxhZ3MpCnlldD8KLUNocmlz
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
