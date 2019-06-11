Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 468853D721
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jun 2019 21:45:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A52EC891E2;
	Tue, 11 Jun 2019 19:45:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A350891E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jun 2019 19:45:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16868904-1500050 for multiple; Tue, 11 Jun 2019 20:45:23 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190611172731.19174-1-mika.kuoppala@linux.intel.com>
 <20190611172731.19174-3-mika.kuoppala@linux.intel.com>
In-Reply-To: <20190611172731.19174-3-mika.kuoppala@linux.intel.com>
Message-ID: <156028232214.2193.59085367614713572@skylake-alporthouse-com>
Date: Tue, 11 Jun 2019 20:45:22 +0100
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915/gtt: Introduce
 init_pd_with_page
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTExIDE4OjI3OjI1KQo+IFdlIHNldCB0aGUg
cGFnZSBkaXJlY3RvcnkgZW50cmllcyB0byBwb2ludCBpbnRvIGEgcGFnZSB0YWJsZS4KPiBUaGVy
ZSBpcyBubyBnZW4gc3BlY2lmaWNzIGluIGhlcmUgc28gbWFrZSBpdCBzaW1wbGUgYW5kCj4gb2J2
aW91cy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxp
bnV4LmludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0
LmMgfCAxNiArKysrKysrKy0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMo
KyksIDggZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiBp
bmRleCA5YTFmOTU2YTgxN2EuLjlkODdmMGZiNWIxNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZ2VtX2d0dC5jCj4gQEAgLTcyNCwxMiArNzI0LDEyIEBAIHN0YXRpYyB2b2lkIGZyZWVfcGQo
c3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCj4gICAgICAgICBrZnJlZShwZCk7Cj4gIH0K
PiAgCj4gLXN0YXRpYyB2b2lkIGdlbjhfaW5pdGlhbGl6ZV9wZChzdHJ1Y3QgaTkxNV9hZGRyZXNz
X3NwYWNlICp2bSwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGk5MTVf
cGFnZV9kaXJlY3RvcnkgKnBkKQo+ICtzdGF0aWMgdm9pZCBpbml0X3BkX3dpdGhfcGFnZShzdHJ1
Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBzdHJ1Y3QgaTkxNV9wYWdlX2RpcmVjdG9yeSAqIGNvbnN0IHBkLAo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHN0cnVjdCBpOTE1X3BhZ2VfdGFibGUgKnB0KQo+ICB7Cj4gLSAgICAg
ICBmaWxsX3B4KHZtLCBwZCwKPiAtICAgICAgICAgICAgICAgZ2VuOF9wZGVfZW5jb2RlKHB4X2Rt
YSh2bS0+c2NyYXRjaF9wdCksIEk5MTVfQ0FDSEVfTExDKSk7Cj4gLSAgICAgICBtZW1zZXRfcChw
ZC0+ZW50cnksIHZtLT5zY3JhdGNoX3B0LCBJOTE1X1BERVMpOwo+ICsgICAgICAgZmlsbF9weCh2
bSwgcGQsIGdlbjhfcGRlX2VuY29kZShweF9kbWEocHQpLCBJOTE1X0NBQ0hFX0xMQykpOwoKQWhl
bSwgdGhlIHNjcmF0Y2hfcHRlIHZhbHVlIGlzIGtub3duIGFwcmlvcmkgYW5kIGRvZXNuJ3QgbmVl
ZApyZWNvbXB1dGluZz8KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
