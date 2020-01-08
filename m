Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 162A41346A2
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2020 16:48:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69D106E095;
	Wed,  8 Jan 2020 15:48:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33D466E095
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2020 15:48:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19810778-1500050 for multiple; Wed, 08 Jan 2020 15:48:26 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200108145616.7349-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20200108145616.7349-1-ville.syrjala@linux.intel.com>
Message-ID: <157849850534.13423.14174641232666298165@skylake-alporthouse-com>
Date: Wed, 08 Jan 2020 15:48:25 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Pass cpu_transcoder to
 assert_pipe_disabled() always
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTAxLTA4IDE0OjU2OjE2KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gSSBtaXNzZWQg
YSBmZXcgYXNzZXJ0X3BpcGVfZGlzYWJsZWQoKSBjYXNlcyB3aGVuIGNoYW5naW5nIGl0IHRvCj4g
dGFrZSBlbnVtIHRyYW5zY29kZXIgaW5zdGVhZCBvZiBlbnVtIHBpcGUsIG1ha2luZyBzcGFyc2Ug
dW5oYXBweS4KPiBDb252ZXJ0IHRoZSBsZWZ0b3ZlcnMuCj4gCj4gUmVwb3J0ZWQtYnk6IGtidWls
ZCB0ZXN0IHJvYm90IDxsa3BAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDQgKystLQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3R2LmMgfCAyICstCj4gIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNl
cnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMKPiBpbmRleCA5OTFmMzQzNTc5ZWYuLjdjNzZkNDM3OTA2YiAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiBAQCAtMzA4NSw3ICszMDg1LDcg
QEAgc3RhdGljIHZvaWQgaWxrX2VkcF9wbGxfb24oc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwK
PiAgICAgICAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhwaXBlX2Nv
bmZpZy0+dWFwaS5jcnRjKTsKPiAgICAgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOwo+ICAKPiAtICAgICAgIGFzc2VydF9waXBl
X2Rpc2FibGVkKGRldl9wcml2LCBjcnRjLT5waXBlKTsKPiArICAgICAgIGFzc2VydF9waXBlX2Rp
c2FibGVkKGRldl9wcml2LCBwaXBlX2NvbmZpZy0+Y3B1X3RyYW5zY29kZXIpOwo+ICAgICAgICAg
YXNzZXJ0X2RwX3BvcnRfZGlzYWJsZWQoaW50ZWxfZHApOwo+ICAgICAgICAgYXNzZXJ0X2VkcF9w
bGxfZGlzYWJsZWQoZGV2X3ByaXYpOwo+ICAKPiBAQCAtMzEyNSw3ICszMTI1LDcgQEAgc3RhdGlj
IHZvaWQgaWxrX2VkcF9wbGxfb2ZmKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gICAgICAg
ICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMob2xkX2NydGNfc3RhdGUt
PnVhcGkuY3J0Yyk7Cj4gICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYg
PSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKPiAgCj4gLSAgICAgICBhc3NlcnRfcGlwZV9kaXNh
YmxlZChkZXZfcHJpdiwgY3J0Yy0+cGlwZSk7Cj4gKyAgICAgICBhc3NlcnRfcGlwZV9kaXNhYmxl
ZChkZXZfcHJpdiwgb2xkX2NydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyKTsKPiAgICAgICAgIGFz
c2VydF9kcF9wb3J0X2Rpc2FibGVkKGludGVsX2RwKTsKPiAgICAgICAgIGFzc2VydF9lZHBfcGxs
X2VuYWJsZWQoZGV2X3ByaXYpOwo+ICAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF90di5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF90di5jCj4gaW5kZXggNTA3MDM1MzY0MzZjLi40ZjNmOTAyZTRhOWEgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90di5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90di5jCj4gQEAgLTE1MjcsNyArMTUyNyw3IEBAIHN0
YXRpYyB2b2lkIGludGVsX3R2X3ByZV9lbmFibGUoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29k
ZXIsCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgKCh2aWRlb19sZXZlbHMtPmJsYWNrIDw8
IFRWX0JMQUNLX0xFVkVMX1NISUZUKSB8Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICh2
aWRlb19sZXZlbHMtPmJsYW5rIDw8IFRWX0JMQU5LX0xFVkVMX1NISUZUKSkpOwo+ICAKPiAtICAg
ICAgIGFzc2VydF9waXBlX2Rpc2FibGVkKGRldl9wcml2LCBpbnRlbF9jcnRjLT5waXBlKTsKPiAr
ICAgICAgIGFzc2VydF9waXBlX2Rpc2FibGVkKGRldl9wcml2LCBwaXBlX2NvbmZpZy0+Y3B1X3Ry
YW5zY29kZXIpOwoKT25seSB0aGlzIG9uZSBpcyBub3QgY2xlYXIgZnJvbSBjb250ZXh0IGFsb25l
Li4uClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
LUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
