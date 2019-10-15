Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6939D7AD5
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 18:08:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EB606E844;
	Tue, 15 Oct 2019 16:08:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF30E6E844
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 16:08:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18846609-1500050 for multiple; Tue, 15 Oct 2019 17:08:31 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
 <20191015154449.10338-10-mika.kuoppala@linux.intel.com>
In-Reply-To: <20191015154449.10338-10-mika.kuoppala@linux.intel.com>
Message-ID: <157115571013.22469.6713712709491683894@skylake-alporthouse-com>
Date: Tue, 15 Oct 2019 17:08:30 +0100
Subject: Re: [Intel-gfx] [PATCH 10/11] drm/i915/tgl: Wa_1607030317,
 Wa_1607186500, Wa_1607297627
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTEwLTE1IDE2OjQ0OjQ4KQo+IERpc2FibGUgc2Vt
YXBob3JlIGlkbGUgbWVzc2FnZXMgYW5kIHdhaXQgZm9yIGV2ZW50Cj4gcG93ZXIgZG93bnMuCj4g
Cj4gU2lnbmVkLW9mZi1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRl
bC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRz
LmMgfCA4ICsrKysrKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAg
ICAgICAgfCAxICsKPiAgMiBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiBpbmRleCAzYmFjZjNk
OTY4NGUuLjczZmMxNjhkN2Y2MCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfd29ya2Fyb3VuZHMuYwo+IEBAIC0xMjgxLDYgKzEyODEsMTQgQEAgcmNzX2VuZ2luZV93YV9p
bml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgc3RydWN0IGk5MTVfd2FfbGlzdCAq
d2FsKQo+ICAgICAgICAgICAgICAgICB3YV93cml0ZV9vcih3YWwsCj4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIEdFTjlfQ1RYX1BSRUVNUFRfUkVHLAo+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBHRU4xMl9ESVNBQkxFX1BPU0hfQlVTWV9GRl9ET1BfQ0cpOwo+ICsKPiArICAgICAg
ICAgICAgICAgLyogV2FfMTYwNzAzMDMxNzp0Z2wgKi8KPiArICAgICAgICAgICAgICAgLyogV2Ff
MTYwNzE4NjUwMDp0Z2wgKi8KPiArICAgICAgICAgICAgICAgLyogV2FfMTYwNzI5NzYyNzp0Z2wg
Ki8KPiArICAgICAgICAgICAgICAgd2FfbWFza2VkX2VuKHdhbCwKPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIEdFTjZfUkNfU0xFRVBfUFNNSV9DT05UUk9MLAo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgR0VOMTJfV0FJVF9GT1JfRVZFTlRfUE9XRVJfRE9XTl9ESVNBQkxFIHwK
PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIEdFTjhfUkNfU0VNQV9JRExFX01TR19ESVNB
QkxFKTsKCnJjcyBvbmx5LCBhY2suCgo+ICAgICAgICAgfQo+ICAKPiAgICAgICAgIGlmIChJU19H
RU4oaTkxNSwgMTEpKSB7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gaW5kZXggMTlhYzAxMDU3
NTI4Li5iNTBlYzg3OGEwYjUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBAQCAtMjg4
NSw2ICsyODg1LDcgQEAgc3RhdGljIGlubGluZSBib29sIGk5MTVfbW1pb19yZWdfdmFsaWQoaTkx
NV9yZWdfdCByZWcpCj4gIAo+ICAjZGVmaW5lIEdFTjZfUkNfU0xFRVBfUFNNSV9DT05UUk9MICAg
ICBfTU1JTygweDIwNTApCj4gICNkZWZpbmUgICBHRU42X1BTTUlfU0xFRVBfTVNHX0RJU0FCTEUg
ICgxIDw8IDApCj4gKyNkZWZpbmUgICBHRU4xMl9XQUlUX0ZPUl9FVkVOVF9QT1dFUl9ET1dOX0RJ
U0FCTEUgKDEgPDwgNykKUkVHX0JJVCg3KQoKPiAgI2RlZmluZSAgIEdFTjhfUkNfU0VNQV9JRExF
X01TR19ESVNBQkxFICAgICAgICAoMSA8PCAxMikKPiAgI2RlZmluZSAgIEdFTjhfRkZfRE9QX0NM
T0NLX0dBVEVfRElTQUJMRSAgICAgICAoMSA8PCAxMCkKClJldmlld2VkLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
