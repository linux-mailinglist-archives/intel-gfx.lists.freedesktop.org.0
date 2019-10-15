Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A46DD7AAF
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 18:00:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EEA86E841;
	Tue, 15 Oct 2019 16:00:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C5C66E841
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 16:00:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18846441-1500050 for multiple; Tue, 15 Oct 2019 17:00:30 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191015154449.10338-1-mika.kuoppala@linux.intel.com>
 <20191015154449.10338-5-mika.kuoppala@linux.intel.com>
In-Reply-To: <20191015154449.10338-5-mika.kuoppala@linux.intel.com>
Message-ID: <157115522823.22469.9620304117275509516@skylake-alporthouse-com>
Date: Tue, 15 Oct 2019 17:00:28 +0100
Subject: Re: [Intel-gfx] [PATCH 05/11] drm/i915/tgl: Keep FF dop clock
 enabled for A0
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTEwLTE1IDE2OjQ0OjQzKQo+IFRvIGVuc3VyZSBj
b3JyZWN0IHN0YXRlIGRhdGEgZm9yIGNvbXB1dGUgd29ya2xvYWRzLCB3ZQo+IG5lZWQgdG8ga2Vl
cCB0aGUgZmYgZG9wIGNsb2NrIGVuYWJsZWQuCj4gCj4gUmVmZXJlbmNlczogSFNERVMjMTYwNjcw
MDYxNwo+IFNpZ25lZC1vZmYtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXgu
aW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJv
dW5kcy5jIHwgOSArKysrKysrKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAg
ICAgICAgICAgICB8IDEgKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3Vu
ZHMuYwo+IGluZGV4IGJhNjVlNTAxODk3OC4uZGI3ODQ0ZGFhY2U5IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gQEAgLTU2Nyw3ICs1NjcsNyBA
QCBzdGF0aWMgdm9pZCBpY2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lLAo+ICBzdGF0aWMgdm9pZCB0Z2xfY3R4X3dvcmthcm91bmRzX2luaXQoc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCj4gIHsKPiAtICAgICAgIC8qIFdh
XzE0MDkxNDIyNTkgKi8KPiArICAgICAgIC8qIFdhXzE0MDkxNDIyNTk6dGdsICovCj4gICAgICAg
ICBXQV9TRVRfQklUX01BU0tFRChHRU4xMV9DT01NT05fU0xJQ0VfQ0hJQ0tFTjMsCj4gICAgICAg
ICAgICAgICAgICAgICAgICAgICBHRU4xMl9ESVNBQkxFX0NQU19BV0FSRV9DT0xPUl9QSVBFKTsK
PiAgfQo+IEBAIC0xMjYwLDYgKzEyNjAsMTMgQEAgcmNzX2VuZ2luZV93YV9pbml0KHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQo+ICB7Cj4g
ICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGVuZ2luZS0+aTkxNTsKPiAg
Cj4gKyAgICAgICBpZiAoSVNfVEdMX1JFVklEKGk5MTUsIFRHTF9SRVZJRF9BMCwgVEdMX1JFVklE
X0EwKSkgewo+ICsgICAgICAgICAgICAgICAvKiBXYV8xNjA2NzAwNjE3OnRnbCAqLwo+ICsgICAg
ICAgICAgICAgICB3YV9tYXNrZWRfZW4od2FsLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgR0VOOV9DU19ERUJVR19NT0RFMSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIEZG
X0RPUF9DTE9DS19HQVRFX0RJU0FCTEUpOwo+ICsgICAgICAgfQoKQmFoLCBhbmQgdGhleSB3YW50
ZWQgaXQgZHluYW1pYyEKCj4gKwo+ICAgICAgICAgaWYgKElTX0dFTihpOTE1LCAxMSkpIHsKPiAg
ICAgICAgICAgICAgICAgLyogVGhpcyBpcyBub3QgYW4gV2EuIEVuYWJsZSBmb3IgYmV0dGVyIGlt
YWdlIHF1YWxpdHkgKi8KPiAgICAgICAgICAgICAgICAgd2FfbWFza2VkX2VuKHdhbCwKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmgKPiBpbmRleCA3ZGQxMjZjYzNhYzMuLjc4MWNhMThjYjQ1YiAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IEBAIC03NjcxLDYgKzc2NzEsNyBAQCBlbnVtIHsK
PiAgI2RlZmluZSAgR0VOOV9QT09MRURfRVVfTE9BRF9CQUxBTkNJTkdfRklYX0RJU0FCTEUgICgx
IDw8IDEwKQo+ICAKPiAgI2RlZmluZSBHRU45X0NTX0RFQlVHX01PREUxICAgICAgICAgICAgX01N
SU8oMHgyMGVjKQo+ICsgICNkZWZpbmUgRkZfRE9QX0NMT0NLX0dBVEVfRElTQUJMRSAgICBCSVQo
MSkKClJFR19CSVQoMSkKUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
