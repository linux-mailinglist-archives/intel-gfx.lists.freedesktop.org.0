Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB62EB259
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 15:19:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFC266EC27;
	Thu, 31 Oct 2019 14:19:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 745166EC27
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2019 14:19:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19034257-1500050 for multiple; Thu, 31 Oct 2019 14:18:58 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191031100249.1626-1-chris@chris-wilson.co.uk>
 <20191031101116.19894-1-chris@chris-wilson.co.uk>
 <871rutknrl.fsf@gaia.fi.intel.com>
In-Reply-To: <871rutknrl.fsf@gaia.fi.intel.com>
Message-ID: <157253153647.11954.14804810030906563091@skylake-alporthouse-com>
Date: Thu, 31 Oct 2019 14:18:56 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Pretty print the
 i915_active
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTEwLTMxIDE0OjExOjU4KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBJZiB0aGUgaWRsZV9w
dWxzZSBmYWlscyB0byBmbHVzaCB0aGUgaTkxNV9hY3RpdmUsIGR1bXAgdGhlIHRyZWUgdG8gc2Vl
Cj4gPiBpZiB0aGF0IGhhcyBhbnkgY2x1ZXMuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiAtLS0KPiA+ICAuLi4vZHJtL2k5
MTUvZ3Qvc2VsZnRlc3RfZW5naW5lX2hlYXJ0YmVhdC5jICAgfCAgNCArKwo+ID4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfYWN0aXZlLmggICAgICAgICAgICB8ICAyICsKPiA+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9hY3RpdmUuYyAgfCA0NSArKysrKysrKysrKysr
KysrKysrCj4gPiAgMyBmaWxlcyBjaGFuZ2VkLCA1MSBpbnNlcnRpb25zKCspCj4gPgo+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZV9oZWFydGJl
YXQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZV9oZWFydGJlYXQu
Ywo+ID4gaW5kZXggMTU1YzUwODAyNGRmLi4xMzFjNDlkZGYzM2YgMTAwNjQ0Cj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9lbmdpbmVfaGVhcnRiZWF0LmMKPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2VuZ2luZV9oZWFydGJlYXQuYwo+
ID4gQEAgLTEwMCw4ICsxMDAsMTIgQEAgc3RhdGljIGludCBfX2xpdmVfaWRsZV9wdWxzZShzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCj4gPiAgICAgICBwdWxzZV91bmxvY2tfd2FpdChw
KTsgLyogc3luY2hyb25pemUgd2l0aCB0aGUgcmV0aXJlbWVudCBjYWxsYmFjayAqLwo+ID4gIAo+
ID4gICAgICAgaWYgKCFpOTE1X2FjdGl2ZV9pc19pZGxlKCZwLT5hY3RpdmUpKSB7Cj4gPiArICAg
ICAgICAgICAgIHN0cnVjdCBkcm1fcHJpbnRlciBtID0gZHJtX2Vycl9wcmludGVyKCJwdWxzZSIp
Owo+ID4gKwo+ID4gICAgICAgICAgICAgICBwcl9lcnIoIiVzOiBoZWFydGJlYXQgcHVsc2UgZGlk
IG5vdCBmbHVzaCBpZGxlIHRhc2tzXG4iLAo+ID4gICAgICAgICAgICAgICAgICAgICAgZW5naW5l
LT5uYW1lKTsKPiA+ICsgICAgICAgICAgICAgaTkxNV9hY3RpdmVfcHJpbnQoJnAtPmFjdGl2ZSwg
Jm0pOwo+ID4gKwo+ID4gICAgICAgICAgICAgICBlcnIgPSAtRUlOVkFMOwo+ID4gICAgICAgICAg
ICAgICBnb3RvIG91dDsKPiA+ICAgICAgIH0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2FjdGl2ZS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9hY3RpdmUu
aAo+ID4gaW5kZXggNGY1MmZlNjE0NmQyLi40NDg1OTM1NmNlOTcgMTAwNjQ0Cj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2FjdGl2ZS5oCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2FjdGl2ZS5oCj4gPiBAQCAtMjE0LDQgKzIxNCw2IEBAIGludCBpOTE1X2Fj
dGl2ZV9hY3F1aXJlX3ByZWFsbG9jYXRlX2JhcnJpZXIoc3RydWN0IGk5MTVfYWN0aXZlICpyZWYs
Cj4gPiAgdm9pZCBpOTE1X2FjdGl2ZV9hY3F1aXJlX2JhcnJpZXIoc3RydWN0IGk5MTVfYWN0aXZl
ICpyZWYpOwo+ID4gIHZvaWQgaTkxNV9yZXF1ZXN0X2FkZF9hY3RpdmVfYmFycmllcnMoc3RydWN0
IGk5MTVfcmVxdWVzdCAqcnEpOwo+ID4gIAo+ID4gK3ZvaWQgaTkxNV9hY3RpdmVfcHJpbnQoc3Ry
dWN0IGk5MTVfYWN0aXZlICpyZWYsIHN0cnVjdCBkcm1fcHJpbnRlciAqbSk7Cj4gPiArCj4gPiAg
I2VuZGlmIC8qIF9JOTE1X0FDVElWRV9IXyAqLwo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2FjdGl2ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
c2VsZnRlc3RzL2k5MTVfYWN0aXZlLmMKPiA+IGluZGV4IDk2NTEzYTdkNDczOS4uMjYwYjBlZTVk
MWUzIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVf
YWN0aXZlLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2Fj
dGl2ZS5jCj4gPiBAQCAtMjA1LDMgKzIwNSw0OCBAQCBpbnQgaTkxNV9hY3RpdmVfbGl2ZV9zZWxm
dGVzdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gPiAgCj4gPiAgICAgICByZXR1
cm4gaTkxNV9zdWJ0ZXN0cyh0ZXN0cywgaTkxNSk7Cj4gPiAgfQo+ID4gKwo+ID4gK3N0YXRpYyBz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpub2RlX3RvX2JhcnJpZXIoc3RydWN0IGFjdGl2ZV9ub2Rl
ICppdCkKPiA+ICt7Cj4gPiArICAgICBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7Cj4g
PiArCj4gPiArICAgICBpZiAoIWlzX2JhcnJpZXIoJml0LT5iYXNlKSkKPiA+ICsgICAgICAgICAg
ICAgcmV0dXJuIE5VTEw7Cj4gPiArCj4gPiArICAgICBlbmdpbmUgPSBfX2JhcnJpZXJfdG9fZW5n
aW5lKGl0KTsKPiA+ICsgICAgIHNtcF9ybWIoKTsgLyogc2VyaWFsaXNlIHdpdGggYWRkX2FjdGl2
ZV9iYXJyaWVycyAqLwo+IAo+IEkgZGlkIGZpbmQgdGhlIHBhaXIuIEJ1aWxkcyBjb25maWRlbmNl
Lgo+IAo+ID4gKyAgICAgaWYgKCFpc19iYXJyaWVyKCZpdC0+YmFzZSkpCj4gPiArICAgICAgICAg
ICAgIHJldHVybiBOVUxMOwo+ID4gKwo+ID4gKyAgICAgcmV0dXJuIGVuZ2luZTsKPiA+ICt9Cj4g
PiArCj4gPiArdm9pZCBpOTE1X2FjdGl2ZV9wcmludChzdHJ1Y3QgaTkxNV9hY3RpdmUgKnJlZiwg
c3RydWN0IGRybV9wcmludGVyICptKQo+ID4gK3sKPiA+ICsgICAgIGRybV9wcmludGYobSwgImFj
dGl2ZSAlcFM6JXBTXG4iLCByZWYtPmFjdGl2ZSwgcmVmLT5yZXRpcmUpOwo+ID4gKyAgICAgZHJt
X3ByaW50ZihtLCAiXHRjb3VudDogJWRcbiIsIGF0b21pY19yZWFkKCZyZWYtPmNvdW50KSk7Cj4g
PiArICAgICBkcm1fcHJpbnRmKG0sICJcdHByZWFsbG9jYXRlZCBiYXJyaWVycz8gJXNcbiIsCj4g
PiArICAgICAgICAgICAgICAgIHllc25vKCFsbGlzdF9lbXB0eSgmcmVmLT5wcmVhbGxvY2F0ZWRf
YmFycmllcnMpKSk7Cj4gPiArCj4gPiArICAgICBpZiAoaTkxNV9hY3RpdmVfYWNxdWlyZV9pZl9i
dXN5KHJlZikpIHsKPiA+ICsgICAgICAgICAgICAgc3RydWN0IGFjdGl2ZV9ub2RlICppdCwgKm47
Cj4gPiArCj4gPiArICAgICAgICAgICAgIHJidHJlZV9wb3N0b3JkZXJfZm9yX2VhY2hfZW50cnlf
c2FmZShpdCwgbiwgJnJlZi0+dHJlZSwgbm9kZSkgewo+ID4gKyAgICAgICAgICAgICAgICAgICAg
IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKPiA+ICsKPiAKPiBEb2VzIHRoZSBhcXVp
cmUgb2YgcmVmIGtlZXAgdGhlIG90aGVyIGxlZnMgYWxpdmU/Cj4gd2Ugc2VlbSB0byBiZSBzYWZl
IG9uIGludGVyYXRpb24gYnV0IHRoZSBwb2tpbmcgYWJvdXQKPiB0aGUgZmVuY2Ugc2V0IGFuZCB0
aW1lbGluZSBiZWxvdyBpcyBhIHF1ZXN0aW9uIG1hcmsuCgpJdCBwcmV2ZW50cyB0aGUgdHJlZStu
b2RlcyBmcm9tIGJlaW5nIGZyZWVkLCBzbyB3ZSBvbmx5IGhhdmUgdG8gd29ycnkKYWJvdXQgdGhl
IHZhbGlkaXR5IG9mIHRoZSBtZWFuaW5nIG9mIHRoZSBjb250ZW50cy4KCk15IG1lbW9yeSBzYXlz
LCBhbmQgbXkgYXNzdW1wdGlvbiBpbiB0aGlzIGNvZGUsIGlzIHRoYXQgdGhlCnRoZSBpdGVyYXRv
ciBpcyBzYWZlIGFnYWluc3QgaW5zZXJ0aW9ucyAtLSB3ZSB3b24ndCBnZXQgaG9ycmlibHkgbG9z
dCBpZgp0aGUgdHJlZSBpcyByZWJhbGFuY2VkIGFzIHdlIHdhbGsuCi1DaHJpcwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
