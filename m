Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF257D1413
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 18:32:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D8D56EA0E;
	Wed,  9 Oct 2019 16:32:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54E156EA0C
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 16:32:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18780599-1500050 for multiple; Wed, 09 Oct 2019 17:32:35 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191009160906.16195-1-chris@chris-wilson.co.uk>
References: <20191009100955.21477-2-chris@chris-wilson.co.uk>
 <20191009160906.16195-1-chris@chris-wilson.co.uk>
Message-ID: <157063875263.18808.2380891000356981190@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 09 Oct 2019 17:32:32 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: execlists->active is
 serialised by the tasklet
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTAtMDkgMTc6MDk6MDYpCj4gVGhlIGFjdGl2ZS9w
ZW5kaW5nIGV4ZWNsaXN0cyBpcyBubyBsb25nZXIgcHJvdGVjdGVkIGJ5IHRoZQo+IGVuZ2luZS0+
YWN0aXZlLmxvY2ssIGJ1dCBpcyBzZXJpYWxpc2VkIGJ5IHRoZSB0YXNrbGV0IGluc3RlYWQuIFVw
ZGF0ZQo+IHRoZSBsb2NraW5nIGFyb3VuZCB0aGUgZGVidWcgYW5kIHN0YXRzIHRvIGZvbGxvdyBz
dWl0Lgo+IAo+IHYyOiBsb2NhbF9iaF9kaXNhYmxlKCkgdG8gcHJldmVudCByZWN1cnNpbmcgaW50
byB0aGUgdGFza2xldCBpbiBjYXNlIHdlCj4gdHJpZ2dlciBhIHNvZnRpcnEgKFR2cnRrbykKPiAK
PiBGaXhlczogZGY0MDMwNjkwMjlkICgiZHJtL2k5MTUvZXhlY2xpc3RzOiBMaWZ0IHByb2Nlc3Nf
Y3NiKCkgb3V0IG9mIHRoZSBpcnEtb2ZmIHNwaW5sb2NrIikKPiBTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTWlrYSBLdW9wcGFsYSA8
bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0
a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2VuZ2luZS5oICAgIHwgMTQgKysrKysrKysrKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgfCAxNiArKysrKysrLS0tLS0tLS0tCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtLmggICAgICAgICAgIHwgIDYgKysrKysrCj4gIDMgZmlsZXMg
Y2hhbmdlZCwgMjcgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9lbmdpbmUuaAo+IGluZGV4IGQ2MjQ3NTJmMmE5Mi4uZmE3NzBkM2Nh
MjA4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZS5o
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmgKPiBAQCAtMTM2
LDYgKzEzNiwyMCBAQCBleGVjbGlzdHNfYWN0aXZlKGNvbnN0IHN0cnVjdCBpbnRlbF9lbmdpbmVf
ZXhlY2xpc3RzICpleGVjbGlzdHMpCj4gICAgICAgICByZXR1cm4gUkVBRF9PTkNFKCpleGVjbGlz
dHMtPmFjdGl2ZSk7Cj4gIH0KPiAgCj4gK3N0YXRpYyBpbmxpbmUgdm9pZAo+ICtleGVjbGlzdHNf
YWN0aXZlX2xvY2soc3RydWN0IGludGVsX2VuZ2luZV9leGVjbGlzdHMgKmV4ZWNsaXN0cykKCmV4
ZWNsaXN0c19hY3RpdmVfYmhfbG9jaygpIHRvIGluY2x1ZGUgdGhlIGNsdWUgYWJvdXQgYmhfZGlz
YWJsZT8KCj4gK3sKPiArICAgICAgIGxvY2FsX2JoX2Rpc2FibGUoKTsgLyogcHJldmVudCBsb2Nh
bCBzb2Z0aXJxIGFuZCBsb2NrIHJlY3Vyc2lvbiAqLwo+ICsgICAgICAgdGFza2xldF9sb2NrKCZl
eGVjbGlzdHMtPnRhc2tsZXQpOwo+ICt9Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
