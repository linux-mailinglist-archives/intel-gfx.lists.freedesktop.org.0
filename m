Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B25118681
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 10:05:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 816D989AB9;
	Thu,  9 May 2019 08:05:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D25D89AB9
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 08:05:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16498653-1500050 for multiple; Thu, 09 May 2019 09:05:13 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190509061954.10379-1-imre.deak@intel.com>
 <20190509061954.10379-3-imre.deak@intel.com>
In-Reply-To: <20190509061954.10379-3-imre.deak@intel.com>
Message-ID: <155738911078.28545.11911109999113833161@skylake-alporthouse-com>
Date: Thu, 09 May 2019 09:05:10 +0100
Subject: Re: [Intel-gfx] [PATCH v2 02/11] drm/i915: Force printing wakeref
 tacking during pm_cleanup
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

UXVvdGluZyBJbXJlIERlYWsgKDIwMTktMDUtMDkgMDc6MTk6NDUpCj4gTWFrZSBzdXJlIHdlIHBy
aW50IGFuZCBkcm9wIHRoZSB3YWtlcmVmIHRyYWNraW5nIGluZm8gZHVyaW5nIHBtX2NsZWFudXAK
PiBldmVuIGlmIHRoZXJlIGFyZSB3YWtlcmVmIGhvbGRlcnMgKGVpdGhlciByYXctd2FrZXJlZiBv
ciB3YWtlbG9jawo+IGhvbGRlcnMpLiBEcm9wcGluZyB0aGUgd2FrZXJlZiB0cmFja2luZyBtZWFu
cyB0aGF0IGEgbGF0ZSBwdXQgb24gdGhlIHJlZgo+IHdpbGwgV0FSTiBzaW5jZSB0aGUgd2FrZXJl
ZiB3aWxsIGJlIHVua25vd24sIGJ1dCB0aGF0IGlzIHJpZ2h0bHkgc28sCj4gc2luY2UgdGhlIHB1
dCBpcyBsYXRlIGFuZCB3ZSB3YW50IHRvIGNhdGNoIHRoYXQgY2FzZS4KPiAKPiBDYzogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gU2lnbmVkLW9mZi1ieTogSW1yZSBE
ZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9ydW50aW1lX3BtLmMgfCA3NSArKysrKysrKysrKysrKysrKystLS0tLS0tCj4gIDEgZmls
ZSBjaGFuZ2VkLCA1NCBpbnNlcnRpb25zKCspLCAyMSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5jCj4gaW5kZXggODRhMThkOGI5NDJjLi5kYzk2
NGM4NjA4ZjEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGlt
ZV9wbS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcnVudGltZV9wbS5jCj4g
QEAgLTIzMywzMSArMjMzLDYwIEBAIF9fcHJpbnRfaW50ZWxfcnVudGltZV9wbV93YWtlcmVmKHN0
cnVjdCBkcm1fcHJpbnRlciAqcCwKPiAgfQo+ICAKPiAgc3RhdGljIG5vaW5saW5lIHZvaWQKPiAt
X19pbnRlbF93YWtlcmVmX2RlY19hbmRfY2hlY2tfdHJhY2tpbmcoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUpCj4gK19fdW50cmFja19hbGxfd2FrZXJlZnMoc3RydWN0IGludGVsX3J1bnRp
bWVfcG1fZGVidWcgKmRlYnVnLAo+ICsgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGludGVs
X3J1bnRpbWVfcG1fZGVidWcgKnNhdmVkKQo+ICt7Cj4gKyAgICAgICAqc2F2ZWQgPSAqZGVidWc7
Cj4gKwo+ICsgICAgICAgZGVidWctPm93bmVycyA9IE5VTEw7Cj4gKyAgICAgICBkZWJ1Zy0+Y291
bnQgPSAwOwo+ICsgICAgICAgZGVidWctPmxhc3RfcmVsZWFzZSA9IF9fc2F2ZV9kZXBvdF9zdGFj
aygpOwo+ICt9Cj4gKwo+ICtzdGF0aWMgdm9pZAo+ICtkdW1wX2FuZF9mcmVlX3dha2VyZWZfdHJh
Y2tpbmcoc3RydWN0IGludGVsX3J1bnRpbWVfcG1fZGVidWcgKmRlYnVnKQo+ICB7Cj4gLSAgICAg
ICBzdHJ1Y3QgaTkxNV9ydW50aW1lX3BtICpycG0gPSAmaTkxNS0+cnVudGltZV9wbTsKPiAtICAg
ICAgIHN0cnVjdCBpbnRlbF9ydW50aW1lX3BtX2RlYnVnIGRiZyA9IHt9Owo+ICAgICAgICAgc3Ry
dWN0IGRybV9wcmludGVyIHA7Cj4gLSAgICAgICB1bnNpZ25lZCBsb25nIGZsYWdzOwo+ICAKPiAt
ICAgICAgIGlmIChhdG9taWNfZGVjX2FuZF9sb2NrX2lycXNhdmUoJnJwbS0+d2FrZXJlZl9jb3Vu
dCwKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgJnJwbS0+ZGVidWcu
bG9jaywKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZmxhZ3MpKSB7
Cj4gLSAgICAgICAgICAgICAgIGRiZyA9IHJwbS0+ZGVidWc7Cj4gLQo+IC0gICAgICAgICAgICAg
ICBycG0tPmRlYnVnLm93bmVycyA9IE5VTEw7Cj4gLSAgICAgICAgICAgICAgIHJwbS0+ZGVidWcu
Y291bnQgPSAwOwo+IC0gICAgICAgICAgICAgICBycG0tPmRlYnVnLmxhc3RfcmVsZWFzZSA9IF9f
c2F2ZV9kZXBvdF9zdGFjaygpOwo+IC0KPiAtICAgICAgICAgICAgICAgc3Bpbl91bmxvY2tfaXJx
cmVzdG9yZSgmcnBtLT5kZWJ1Zy5sb2NrLCBmbGFncyk7Cj4gLSAgICAgICB9Cj4gLSAgICAgICBp
ZiAoIWRiZy5jb3VudCkKPiArICAgICAgIGlmICghZGVidWctPmNvdW50KQo+ICAgICAgICAgICAg
ICAgICByZXR1cm47Cj4gIAo+ICAgICAgICAgcCA9IGRybV9kZWJ1Z19wcmludGVyKCJpOTE1Iik7
Cj4gLSAgICAgICBfX3ByaW50X2ludGVsX3J1bnRpbWVfcG1fd2FrZXJlZigmcCwgJmRiZyk7Cj4g
KyAgICAgICBfX3ByaW50X2ludGVsX3J1bnRpbWVfcG1fd2FrZXJlZigmcCwgZGVidWcpOwo+ICAK
PiAtICAgICAgIGtmcmVlKGRiZy5vd25lcnMpOwo+ICsgICAgICAga2ZyZWUoZGVidWctPm93bmVy
cyk7Cj4gK30KPiArCj4gK3N0YXRpYyBub2lubGluZSB2b2lkCj4gK19faW50ZWxfd2FrZXJlZl9k
ZWNfYW5kX2NoZWNrX3RyYWNraW5nKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICt7
Cj4gKyAgICAgICBzdHJ1Y3QgaTkxNV9ydW50aW1lX3BtICpycG0gPSAmaTkxNS0+cnVudGltZV9w
bTsKPiArICAgICAgIHN0cnVjdCBpbnRlbF9ydW50aW1lX3BtX2RlYnVnIGRiZyA9IHt9Owo+ICsg
ICAgICAgdW5zaWduZWQgbG9uZyBmbGFnczsKPiArCj4gKyAgICAgICBpZiAoIWF0b21pY19kZWNf
YW5kX2xvY2tfaXJxc2F2ZSgmcnBtLT53YWtlcmVmX2NvdW50LAo+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgJnJwbS0+ZGVidWcubG9jaywKPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGZsYWdzKSkKPiArICAgICAgICAgICAgICAgcmV0
dXJuOwo+ICsKPiArICAgICAgIF9fdW50cmFja19hbGxfd2FrZXJlZnMoJnJwbS0+ZGVidWcsICZk
YmcpOwo+ICsgICAgICAgc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgmcnBtLT5kZWJ1Zy5sb2NrLCBm
bGFncyk7Cj4gKwo+ICsgICAgICAgZHVtcF9hbmRfZnJlZV93YWtlcmVmX3RyYWNraW5nKCZkYmcp
Owo+ICt9Cj4gKwo+ICtzdGF0aWMgbm9pbmxpbmUgdm9pZAo+ICt1bnRyYWNrX2FsbF9pbnRlbF9y
dW50aW1lX3BtX3dha2VyZWZzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICt7Cj4g
KyAgICAgICBzdHJ1Y3QgaTkxNV9ydW50aW1lX3BtICpycG0gPSAmaTkxNS0+cnVudGltZV9wbTsK
PiArICAgICAgIHN0cnVjdCBpbnRlbF9ydW50aW1lX3BtX2RlYnVnIGRiZyA9IHt9Owo+ICsgICAg
ICAgdW5zaWduZWQgbG9uZyBmbGFnczsKPiArCj4gKyAgICAgICBzcGluX2xvY2tfaXJxc2F2ZSgm
cnBtLT5kZWJ1Zy5sb2NrLCBmbGFncyk7Cj4gKyAgICAgICBfX3VudHJhY2tfYWxsX3dha2VyZWZz
KCZycG0tPmRlYnVnLCAmZGJnKTsKPiArICAgICAgIHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnJw
bS0+ZGVidWcubG9jaywgZmxhZ3MpOwo+ICsKPiArICAgICAgIGR1bXBfYW5kX2ZyZWVfd2FrZXJl
Zl90cmFja2luZygmZGJnKTsKPiAgfQo+ICAKPiAgdm9pZCBwcmludF9pbnRlbF9ydW50aW1lX3Bt
X3dha2VyZWYoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4gQEAgLTMyMSw2ICszNTAs
MTEgQEAgX19pbnRlbF93YWtlcmVmX2RlY19hbmRfY2hlY2tfdHJhY2tpbmcoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUpCj4gICAgICAgICBhdG9taWNfZGVjKCZpOTE1LT5ydW50aW1lX3Bt
Lndha2VyZWZfY291bnQpOwo+ICB9Cj4gIAo+ICtzdGF0aWMgdm9pZAo+ICt1bnRyYWNrX2FsbF9p
bnRlbF9ydW50aW1lX3BtX3dha2VyZWZzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+
ICt7Cj4gK30KPiArCj4gICNlbmRpZgo+ICAKPiAgc3RhdGljIHZvaWQKPiBAQCAtNDgzOCwxNSAr
NDg3MiwxNCBAQCB2b2lkIGludGVsX3J1bnRpbWVfcG1fZGlzYWJsZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSkKPiAgdm9pZCBpbnRlbF9ydW50aW1lX3BtX2NsZWFudXAoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gIHsKPiAgICAgICAgIHN0cnVjdCBpOTE1X3J1bnRpbWVf
cG0gKnJwbSA9ICZpOTE1LT5ydW50aW1lX3BtOwo+IC0gICAgICAgaW50IGNvdW50Owo+ICsgICAg
ICAgaW50IGNvdW50ID0gYXRvbWljX3JlYWQoJnJwbS0+d2FrZXJlZl9jb3VudCk7Cj4gIAo+IC0g
ICAgICAgY291bnQgPSBhdG9taWNfZmV0Y2hfaW5jKCZycG0tPndha2VyZWZfY291bnQpOyAvKiBi
YWxhbmNlIHVudHJhY2sgKi8KPiAgICAgICAgIFdBUk4oY291bnQsCj4gICAgICAgICAgICAgICJp
OTE1IHJhdy13YWtlcmVmcz0lZCB3YWtlbG9ja3M9JWQgb24gY2xlYW51cFxuIiwKPiAgICAgICAg
ICAgICAgaW50ZWxfcnBtX3Jhd193YWtlcmVmX2NvdW50KGNvdW50KSwKPiAgICAgICAgICAgICAg
aW50ZWxfcnBtX3dha2Vsb2NrX2NvdW50KGNvdW50KSk7Cj4gIAo+IC0gICAgICAgaW50ZWxfcnVu
dGltZV9wbV9yZWxlYXNlKGk5MTUsIGZhbHNlKTsKPiArICAgICAgIHVudHJhY2tfYWxsX2ludGVs
X3J1bnRpbWVfcG1fd2FrZXJlZnMoaTkxNSk7Cj4gIH0KClRoYXQgbG9va3MgbXVjaCBiZXR0ZXIs
IHRoYW5rcyEKClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
