Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E97110829A
	for <lists+intel-gfx@lfdr.de>; Sun, 24 Nov 2019 10:27:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA33289B78;
	Sun, 24 Nov 2019 09:27:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 967A389B18
 for <intel-gfx@lists.freedesktop.org>; Sun, 24 Nov 2019 09:27:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19317515-1500050 
 for multiple; Sun, 24 Nov 2019 09:26:48 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 24 Nov 2019 09:26:43 +0000
Message-Id: <20191124092643.1297921-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191124092643.1297921-1-chris@chris-wilson.co.uk>
References: <20191124092643.1297921-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915/gt: Schedule request retirement
 when timeline idles
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

VGhlIG1ham9yIGRyYXdiYWNrIG9mIGNvbW1pdCA3ZTM0ZjRlNGFhZDMgKCJkcm0vaTkxNS9nZW44
KzogQWRkIFJDNiBDVFgKY29ycnVwdGlvbiBXQSIpIGlzIHRoYXQgaXQgZGlzYWJsZXMgUkM2IHdo
aWxlIFNreWxha2UgKGFuZCBmcmllbmRzKSBpcwphY3RpdmUsIGFuZCB3ZSBkbyBub3QgY29uc2lk
ZXIgdGhlIEdQVSBpZGxlIHVudGlsIGFsbCBvdXRzdGFuZGluZwpyZXF1ZXN0cyBoYXZlIGJlZW4g
cmV0aXJlZCBhbmQgdGhlIGVuZ2luZSBzd2l0Y2hlZCBvdmVyIHRvIHRoZSBrZXJuZWwKY29udGV4
dC4gSWYgdXNlcnNwYWNlIGlzIGlkbGUsIHRoaXMgdGFzayBmYWxscyBvbnRvIG91ciBiYWNrZ3Jv
dW5kIGlkbGUKd29ya2VyLCB3aGljaCBvbmx5IHJ1bnMgcm91Z2hseSBvbmNlIGEgc2Vjb25kLCBt
ZWFuaW5nIHRoYXQgdXNlcnNwYWNlIGhhcwp0byBoYXZlIGJlZW4gaWRsZSBmb3IgYSBjb3VwbGUg
b2Ygc2Vjb25kcyBiZWZvcmUgd2UgZW5hYmxlIFJDNiBhZ2Fpbi4KTmF0dXJhbGx5LCB0aGlzIGNh
dXNlcyB1cyB0byBjb25zdW1lIGNvbnNpZGVyYWJseSBtb3JlIGVuZXJneSB0aGFuCmJlZm9yZSBh
cyBwb3dlcnNhdmluZyBpcyBlZmZlY3RpdmVseSBkaXNhYmxlZCB3aGlsZSBhIGRpc3BsYXkgc2Vy
dmVyCihoZXJlJ3MgbG9va2luZyBhdCB5b3UgWG9yZykgaXMgcnVubmluZy4KCkFzIGV4ZWNsaXN0
cyB3aWxsIGdldCBhIGNvbXBsZXRpb24gZXZlbnQgYXMgZWFjaCBjb250ZXh0IGlzIGNvbXBsZXRl
ZCwKd2UgY2FuIHVzZSB0aGlzIGludGVycnVwdCB0byBxdWV1ZSBhIHJldGlyZSB3b3JrZXIgYm91
bmQgdG8gdGhpcyBlbmdpbmUKdG8gY2xlYW51cCBpZGxlIHRpbWVsaW5lcy4gV2Ugd2lsbCB0aGVu
IGltbWVkaWF0ZWx5IG5vdGljZSB0aGUgaWRsZQplbmdpbmUgKHdpdGhvdXQgdXNlcnNwYWNlIGlu
dGVydmVudGlvbiBvciB0aGUgYWlkIG9mIHRoZSBiYWNrZ3JvdW5kCnJldGlyZSB3b3JrZXIpIGFu
ZCBzdGFydCBwYXJraW5nIHRoZSBHUFUuIFRodXMgZHVyaW5nIGxpZ2h0IHdvcmtsb2FkcywKd2Ug
d2lsbCBkbyBtdWNoIG1vcmUgd29yayB0byBpZGxlIHRoZSBHUFUgZmFzdGVyLi4uICBIb3BlZnVs
bHkgd2l0aApjb21tZW5zdXJhdGUgcG93ZXIgc2F2aW5nIQoKdjI6IFdhdGNoIGNvbnRleHQgY29t
cGxldGlvbnMgYW5kIG9ubHkgbG9vayBhdCB0aG9zZSBsb2NhbCB0byB0aGUgZW5naW5lCndoZW4g
cmV0aXJpbmcgdG8gcmVkdWNlIHRoZSBhbW91bnQgb2YgZXhjZXNzIHdvcmsgd2UgcGVyZm9ybS4K
ClJlZmVyZW5jZXM6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcuY2dpP2lk
PTExMjMxNQpSZWZlcmVuY2VzOiA3ZTM0ZjRlNGFhZDMgKCJkcm0vaTkxNS9nZW44KzogQWRkIFJD
NiBDVFggY29ycnVwdGlvbiBXQSIpClJlZmVyZW5jZXM6IDIyNDhhMjgzODRmZSAoImRybS9pOTE1
L2dlbjgrOiBBZGQgUkM2IENUWCBjb3JydXB0aW9uIFdBIikKU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZy
dGtvLnVyc3VsaW5AaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRr
by51cnN1bGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9l
bmdpbmVfY3MuYyAgICAgfCAgOCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5n
aW5lX3R5cGVzLmggIHwgIDggKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3Jl
cXVlc3RzLmMgICB8IDczICsrKysrKysrKysrKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2d0X3JlcXVlc3RzLmggICB8IDEyICsrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbHJjLmMgICAgICAgICAgIHwgIDkgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF90aW1lbGluZS5jICAgICAgfCAgMSArCiAuLi4vZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3RpbWVsaW5lX3R5cGVzLmggICAgfCAgMyArCiA3IGZpbGVzIGNoYW5nZWQsIDExMCBpbnNlcnRp
b25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2VuZ2luZV9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5n
aW5lX2NzLmMKaW5kZXggYjk2MTNkMDQ0MzkzLi44ZjZlMzUzY2FhNjYgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCkBAIC0yOCwxMyArMjgsMTMgQEAKIAogI2lu
Y2x1ZGUgImk5MTVfZHJ2LmgiCiAKLSNpbmNsdWRlICJndC9pbnRlbF9ndC5oIgotCisjaW5jbHVk
ZSAiaW50ZWxfY29udGV4dC5oIgogI2luY2x1ZGUgImludGVsX2VuZ2luZS5oIgogI2luY2x1ZGUg
ImludGVsX2VuZ2luZV9wbS5oIgogI2luY2x1ZGUgImludGVsX2VuZ2luZV9wb29sLmgiCiAjaW5j
bHVkZSAiaW50ZWxfZW5naW5lX3VzZXIuaCIKLSNpbmNsdWRlICJpbnRlbF9jb250ZXh0LmgiCisj
aW5jbHVkZSAiaW50ZWxfZ3QuaCIKKyNpbmNsdWRlICJpbnRlbF9ndF9yZXF1ZXN0cy5oIgogI2lu
Y2x1ZGUgImludGVsX2xyYy5oIgogI2luY2x1ZGUgImludGVsX3Jlc2V0LmgiCiAjaW5jbHVkZSAi
aW50ZWxfcmluZy5oIgpAQCAtNjE3LDYgKzYxNyw3IEBAIHN0YXRpYyBpbnQgaW50ZWxfZW5naW5l
X3NldHVwX2NvbW1vbihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJaW50ZWxfZW5n
aW5lX2luaXRfZXhlY2xpc3RzKGVuZ2luZSk7CiAJaW50ZWxfZW5naW5lX2luaXRfY21kX3BhcnNl
cihlbmdpbmUpOwogCWludGVsX2VuZ2luZV9pbml0X19wbShlbmdpbmUpOworCWludGVsX2VuZ2lu
ZV9pbml0X3JldGlyZShlbmdpbmUpOwogCiAJaW50ZWxfZW5naW5lX3Bvb2xfaW5pdCgmZW5naW5l
LT5wb29sKTsKIApAQCAtODM5LDYgKzg0MCw3IEBAIHZvaWQgaW50ZWxfZW5naW5lX2NsZWFudXBf
Y29tbW9uKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAogCWNsZWFudXBfc3RhdHVz
X3BhZ2UoZW5naW5lKTsKIAorCWludGVsX2VuZ2luZV9maW5pX3JldGlyZShlbmdpbmUpOwogCWlu
dGVsX2VuZ2luZV9wb29sX2ZpbmkoJmVuZ2luZS0+cG9vbCk7CiAJaW50ZWxfZW5naW5lX2Zpbmlf
YnJlYWRjcnVtYnMoZW5naW5lKTsKIAlpbnRlbF9lbmdpbmVfY2xlYW51cF9jbWRfcGFyc2VyKGVu
Z2luZSk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVf
dHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oCmlu
ZGV4IDc1OGYwZThlYzY3Mi4uMTdmMWYxNDQxZWZjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaApAQCAtNDUxLDYgKzQ1MSwxNCBAQCBzdHJ1Y3QgaW50
ZWxfZW5naW5lX2NzIHsKIAogCXN0cnVjdCBpbnRlbF9lbmdpbmVfZXhlY2xpc3RzIGV4ZWNsaXN0
czsKIAorCS8qCisJICogS2VlcCB0cmFjayBvZiBjb21wbGV0ZWQgdGltZWxpbmVzIG9uIHRoaXMg
ZW5naW5lIGZvciBlYXJseQorCSAqIHJldGlyZW1lbnQgd2l0aCB0aGUgZ29hbCBvZiBxdWlja2x5
IGVuYWJsaW5nIHBvd2Vyc2F2aW5nIGFzCisJICogc29vbiBhcyB0aGUgZW5naW5lIGlzIGlkbGUu
CisJICovCisJc3RydWN0IGludGVsX3RpbWVsaW5lICpyZXRpcmU7CisJc3RydWN0IHdvcmtfc3Ry
dWN0IHJldGlyZV93b3JrOworCiAJLyogc3RhdHVzX25vdGlmaWVyOiBsaXN0IG9mIGNhbGxiYWNr
cyBmb3IgY29udGV4dC1zd2l0Y2ggY2hhbmdlcyAqLwogCXN0cnVjdCBhdG9taWNfbm90aWZpZXJf
aGVhZCBjb250ZXh0X3N0YXR1c19ub3RpZmllcjsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcmVxdWVzdHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2d0X3JlcXVlc3RzLmMKaW5kZXggZjAyZjc4MWI4NDkyLi4yMWE4Nzc0NTlkOWYgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3JlcXVlc3RzLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcmVxdWVzdHMuYwpAQCAtMjksNiAr
MjksNzkgQEAgc3RhdGljIHZvaWQgZmx1c2hfc3VibWlzc2lvbihzdHJ1Y3QgaW50ZWxfZ3QgKmd0
KQogCQlpbnRlbF9lbmdpbmVfZmx1c2hfc3VibWlzc2lvbihlbmdpbmUpOwogfQogCitzdGF0aWMg
dm9pZCBlbmdpbmVfcmV0aXJlKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKK3sKKwlzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUgPQorCQljb250YWluZXJfb2Yod29yaywgdHlwZW9mKCpl
bmdpbmUpLCByZXRpcmVfd29yayk7CisJc3RydWN0IGludGVsX3RpbWVsaW5lICp0bCA9IHhjaGco
JmVuZ2luZS0+cmV0aXJlLCBOVUxMKTsKKworCWRvIHsKKwkJc3RydWN0IGludGVsX3RpbWVsaW5l
ICpuZXh0ID0geGNoZygmdGwtPnJldGlyZSwgTlVMTCk7CisKKwkJLyoKKwkJICogT3VyIGdvYWwg
aGVyZSBpcyB0byByZXRpcmUgX2lkbGVfIHRpbWVsaW5lcyBhcyBzb29uIGFzCisJCSAqIHBvc3Np
YmxlIChhcyB0aGV5IGFyZSBpZGxlLCB3ZSBkbyBub3QgZXhwZWN0IHVzZXJzcGFjZQorCQkgKiB0
byBiZSBjbGVhbmluZyB1cCBhbnl0aW1lIHNvb24pLgorCQkgKgorCQkgKiBJZiB0aGUgdGltZWxp
bmUgaXMgY3VycmVudGx5IGxvY2tlZCwgZWl0aGVyIGl0IGlzIGJlaW5nCisJCSAqIHJldGlyZWQg
ZWxzZXdoZXJlIG9yIGFib3V0IHRvIGJlIQorCQkgKi8KKwkJaWYgKG11dGV4X3RyeWxvY2soJnRs
LT5tdXRleCkpIHsKKwkJCXJldGlyZV9yZXF1ZXN0cyh0bCk7CisJCQltdXRleF91bmxvY2soJnRs
LT5tdXRleCk7CisJCX0KKwkJaW50ZWxfdGltZWxpbmVfcHV0KHRsKTsKKworCQlHRU1fQlVHX09O
KCFuZXh0KTsKKwkJdGwgPSBwdHJfbWFza19iaXRzKG5leHQsIDEpOworCX0gd2hpbGUgKHRsKTsK
K30KKworc3RhdGljIGJvb2wgYWRkX3JldGlyZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUsCisJCSAgICAgICBzdHJ1Y3QgaW50ZWxfdGltZWxpbmUgKnRsKQoreworCXN0cnVjdCBpbnRl
bF90aW1lbGluZSAqZmlyc3Q7CisKKwkvKgorCSAqIFdlIG9wZW4tY29kZSBhIGxsaXN0IGhlcmUg
dG8gaW5jbHVkZSB0aGUgYWRkaXRpb25hbCB0YWcgW0JJVCgwKV0KKwkgKiBzbyB0aGF0IHdlIGtu
b3cgd2hlbiB0aGUgdGltZWxpbmUgaXMgYWxyZWFkeSBvbiBhCisJICogcmV0aXJlbWVudCBxdWV1
ZTogZWl0aGVyIHRoaXMgZW5naW5lIG9yIGFub3RoZXIuCisJICoKKwkgKiBIb3dldmVyLCB3ZSBy
ZWx5IG9uIHRoYXQgYSB0aW1lbGluZSBjYW4gb25seSBiZSBhY3RpdmUgb24gYSBzaW5nbGUKKwkg
KiBlbmdpbmUgYXQgYW55IG9uZSB0aW1lIGFuZCB0aGF0IGFkZF9yZXRpcmUoKSBpcyBjYWxsZWQg
YmVmb3JlIHRoZQorCSAqIGVuZ2luZSByZWxlYXNlcyB0aGUgdGltZWxpbmUgYW5kIHRyYW5zZmVy
cmVkIHRvIGFub3RoZXIgdG8gcmV0aXJlLgorCSAqLworCisJaWYgKFJFQURfT05DRSh0bC0+cmV0
aXJlKSkgLyogYWxyZWFkeSBxdWV1ZWQgKi8KKwkJcmV0dXJuIGZhbHNlOworCisJaW50ZWxfdGlt
ZWxpbmVfZ2V0KHRsKTsKKwlmaXJzdCA9IFJFQURfT05DRShlbmdpbmUtPnJldGlyZSk7CisJZG8K
KwkJdGwtPnJldGlyZSA9IHB0cl9wYWNrX2JpdHMoZmlyc3QsIDEsIDEpOworCXdoaWxlICghdHJ5
X2NtcHhjaGcoJmVuZ2luZS0+cmV0aXJlLCAmZmlyc3QsIHRsKSk7CisKKwlyZXR1cm4gIWZpcnN0
OworfQorCit2b2lkIGludGVsX2VuZ2luZV9hZGRfcmV0aXJlKHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSwKKwkJCSAgICAgc3RydWN0IGludGVsX3RpbWVsaW5lICp0bCkKK3sKKwlpZiAo
YWRkX3JldGlyZShlbmdpbmUsIHRsKSkKKwkJc2NoZWR1bGVfd29yaygmZW5naW5lLT5yZXRpcmVf
d29yayk7Cit9CisKK3ZvaWQgaW50ZWxfZW5naW5lX2luaXRfcmV0aXJlKHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZSkKK3sKKwlJTklUX1dPUksoJmVuZ2luZS0+cmV0aXJlX3dvcmssIGVu
Z2luZV9yZXRpcmUpOworfQorCit2b2lkIGludGVsX2VuZ2luZV9maW5pX3JldGlyZShzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUpCit7CisJZmx1c2hfd29yaygmZW5naW5lLT5yZXRpcmVf
d29yayk7CisJR0VNX0JVR19PTihlbmdpbmUtPnJldGlyZSk7Cit9CisKIGxvbmcgaW50ZWxfZ3Rf
cmV0aXJlX3JlcXVlc3RzX3RpbWVvdXQoc3RydWN0IGludGVsX2d0ICpndCwgbG9uZyB0aW1lb3V0
KQogewogCXN0cnVjdCBpbnRlbF9ndF90aW1lbGluZXMgKnRpbWVsaW5lcyA9ICZndC0+dGltZWxp
bmVzOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcmVxdWVz
dHMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3JlcXVlc3RzLmgKaW5kZXgg
ZmRlNTQ2NDI0YzYzLi4yNTJjNjA2NDk4OWMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2d0X3JlcXVlc3RzLmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZ3RfcmVxdWVzdHMuaApAQCAtNyw3ICs3LDEyIEBACiAjaWZuZGVmIElOVEVMX0dUX1JF
UVVFU1RTX0gKICNkZWZpbmUgSU5URUxfR1RfUkVRVUVTVFNfSAogCi1zdHJ1Y3QgaW50ZWxfZ3Q7
CisjaW5jbHVkZSA8bGludXgvd29ya3F1ZXVlLmg+CisKKyNpbmNsdWRlICJpbnRlbF9ndF90eXBl
cy5oIgorCitzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzOworc3RydWN0IGludGVsX3RpbWVsaW5lOwog
CiBsb25nIGludGVsX2d0X3JldGlyZV9yZXF1ZXN0c190aW1lb3V0KHN0cnVjdCBpbnRlbF9ndCAq
Z3QsIGxvbmcgdGltZW91dCk7CiBzdGF0aWMgaW5saW5lIHZvaWQgaW50ZWxfZ3RfcmV0aXJlX3Jl
cXVlc3RzKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCkBAIC0xNSw2ICsyMCwxMSBAQCBzdGF0aWMgaW5s
aW5lIHZvaWQgaW50ZWxfZ3RfcmV0aXJlX3JlcXVlc3RzKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCiAJ
aW50ZWxfZ3RfcmV0aXJlX3JlcXVlc3RzX3RpbWVvdXQoZ3QsIDApOwogfQogCit2b2lkIGludGVs
X2VuZ2luZV9pbml0X3JldGlyZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpOwordm9p
ZCBpbnRlbF9lbmdpbmVfYWRkX3JldGlyZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUs
CisJCQkgICAgIHN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGwpOwordm9pZCBpbnRlbF9lbmdpbmVf
ZmluaV9yZXRpcmUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKTsKKwogaW50IGludGVs
X2d0X3dhaXRfZm9yX2lkbGUoc3RydWN0IGludGVsX2d0ICpndCwgbG9uZyB0aW1lb3V0KTsKIAog
dm9pZCBpbnRlbF9ndF9pbml0X3JlcXVlc3RzKHN0cnVjdCBpbnRlbF9ndCAqZ3QpOwpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9scmMuYwppbmRleCAxZDBhM2ZiZDQ4ODQuLjRhZGM2YzhkMDJlYiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTE0Miw2ICsxNDIsNyBAQAogI2lu
Y2x1ZGUgImludGVsX2VuZ2luZV9wbS5oIgogI2luY2x1ZGUgImludGVsX2d0LmgiCiAjaW5jbHVk
ZSAiaW50ZWxfZ3RfcG0uaCIKKyNpbmNsdWRlICJpbnRlbF9ndF9yZXF1ZXN0cy5oIgogI2luY2x1
ZGUgImludGVsX2xyY19yZWcuaCIKICNpbmNsdWRlICJpbnRlbF9tb2NzLmgiCiAjaW5jbHVkZSAi
aW50ZWxfcmVzZXQuaCIKQEAgLTExNzAsNiArMTE3MSwxNCBAQCBfX2V4ZWNsaXN0c19zY2hlZHVs
ZV9vdXQoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsCiAJICogcmVmcmFpbiBmcm9tIGRvaW5nIG5v
bi10cml2aWFsIHdvcmsgaGVyZS4KIAkgKi8KIAorCS8qCisJICogSWYgd2UgaGF2ZSBqdXN0IGNv
bXBsZXRlZCB0aGlzIGNvbnRleHQsIHRoZSBlbmdpbmUgbWF5IG5vdyBiZQorCSAqIGlkbGUgYW5k
IHdlIHdhbnQgdG8gcmUtZW50ZXIgcG93ZXJzYXZpbmcuCisJICovCisJaWYgKGxpc3RfaXNfbGFz
dCgmcnEtPmxpbmssICZjZS0+dGltZWxpbmUtPnJlcXVlc3RzKSAmJgorCSAgICBpOTE1X3JlcXVl
c3RfY29tcGxldGVkKHJxKSkKKwkJaW50ZWxfZW5naW5lX2FkZF9yZXRpcmUoZW5naW5lLCBjZS0+
dGltZWxpbmUpOworCiAJaW50ZWxfZW5naW5lX2NvbnRleHRfb3V0KGVuZ2luZSk7CiAJZXhlY2xp
c3RzX2NvbnRleHRfc3RhdHVzX2NoYW5nZShycSwgSU5URUxfQ09OVEVYVF9TQ0hFRFVMRV9PVVQp
OwogCWludGVsX2d0X3BtX3B1dF9hc3luYyhlbmdpbmUtPmd0KTsKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF90aW1lbGluZS5jCmluZGV4IGIxOTBhNWQ5YWIwMi4uYzFkMjQxOTQ0NGY4IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3RpbWVsaW5lLmMKQEAgLTI3Nyw2ICsyNzcs
NyBAQCB2b2lkIGludGVsX3RpbWVsaW5lX2Zpbmkoc3RydWN0IGludGVsX3RpbWVsaW5lICp0aW1l
bGluZSkKIHsKIAlHRU1fQlVHX09OKGF0b21pY19yZWFkKCZ0aW1lbGluZS0+cGluX2NvdW50KSk7
CiAJR0VNX0JVR19PTighbGlzdF9lbXB0eSgmdGltZWxpbmUtPnJlcXVlc3RzKSk7CisJR0VNX0JV
R19PTih0aW1lbGluZS0+cmV0aXJlKTsKIAogCWlmICh0aW1lbGluZS0+aHdzcF9jYWNoZWxpbmUp
CiAJCWNhY2hlbGluZV9mcmVlKHRpbWVsaW5lLT5od3NwX2NhY2hlbGluZSk7CmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90aW1lbGluZV90eXBlcy5oIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdGltZWxpbmVfdHlwZXMuaAppbmRleCA1MjQ0NjE1ZWQx
Y2IuLmFhZjE1Y2JlMWNlMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfdGltZWxpbmVfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF90
aW1lbGluZV90eXBlcy5oCkBAIC02Niw2ICs2Niw5IEBAIHN0cnVjdCBpbnRlbF90aW1lbGluZSB7
CiAJICovCiAJc3RydWN0IGk5MTVfYWN0aXZlX2ZlbmNlIGxhc3RfcmVxdWVzdDsKIAorCS8qKiBB
IGNoYWluIG9mIGNvbXBsZXRlZCB0aW1lbGluZXMgcmVhZHkgZm9yIGVhcmx5IHJldGlyZW1lbnQu
ICovCisJc3RydWN0IGludGVsX3RpbWVsaW5lICpyZXRpcmU7CisKIAkvKioKIAkgKiBXZSB0cmFj
ayB0aGUgbW9zdCByZWNlbnQgc2Vxbm8gdGhhdCB3ZSB3YWl0IG9uIGluIGV2ZXJ5IGNvbnRleHQg
c28KIAkgKiB0aGF0IHdlIG9ubHkgaGF2ZSB0byBlbWl0IGEgbmV3IGF3YWl0IGFuZCBkZXBlbmRl
bmN5IG9uIGEgbW9yZQotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
