Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCC51622E
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 12:54:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED3506E797;
	Tue,  7 May 2019 10:54:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 055D46E797
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 10:54:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 03:54:14 -0700
X-ExtLoop1: 1
Received: from jzapadkx-mobl1.ger.corp.intel.com (HELO [10.252.0.159])
 ([10.252.0.159])
 by fmsmga005.fm.intel.com with ESMTP; 07 May 2019 03:54:13 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190503115225.30831-1-chris@chris-wilson.co.uk>
 <20190503115225.30831-5-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <979f484a-04e2-75b0-2044-b980b39b3506@linux.intel.com>
Date: Tue, 7 May 2019 11:54:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190503115225.30831-5-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 05/13] drm/i915: Remove delay for idle_work
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDAzLzA1LzIwMTkgMTI6NTIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUaGUgb3JpZ2luYWwg
aW50ZW50IGZvciB0aGUgZGVsYXkgYmVmb3JlIHJ1bm5pbmcgdGhlIGlkbGVfd29yayB3YXMgdG8K
PiBwcm92aWRlIGEgaHlzdGVyZXNpcyB0byBhdm9pZCBwaW5nLXBvbmdpbmcgdGhlIGRldmljZSBy
dW50aW1lLXBtLiBTaW5jZQo+IHRoZW4gd2UgaGF2ZSBhbHNvIHB1bGxlZCBpbiBzb21lIG1lbW9y
eSBtYW5hZ2VtZW50IGFuZCBnZW5lcmFsIGRldmljZQo+IG1hbmFnZW1lbnQgZm9yIHBhcmtpbmcu
IEJ1dCB3aXRoIHRoZSBpbnZlcnNpb24gb2YgdGhlIHdha2VyZWYgaGFuZGxpbmcsCj4gR0VNIGlz
IG5vIGxvbmdlciByZXNwb25zaWJsZSBmb3IgdGhlIHdha2VyZWYgYW5kIGJ5IHRoZSB0aW1lIHdl
IGNhbGwgdGhlCj4gaWRsZV93b3JrLCB0aGUgZGV2aWNlIGlzIGFzbGVlcC4gSXQgc2VlbXMgYXBw
cm9wcmlhdGUgbm93IHRvIGRyb3AgdGhlCj4gZGVsYXkgYW5kIGp1c3QgcnVuIHRoZSB3b3JrZXIg
aW1tZWRpYXRlbHkgdG8gZmx1c2ggdGhlIGNhY2hlZCBHRU0gc3RhdGUKPiBiZWZvcmUgc2xlZXBp
bmcuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Cj4gLS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyAgICAg
ICAgICAgfCAgMiArLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAg
ICAgICAgIHwgIDIgKy0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3BtLmMgICAg
ICAgICAgICB8IDIxICsrKysrKystLS0tLS0tLS0tLS0KPiAgIC4uLi9ncHUvZHJtL2k5MTUvc2Vs
ZnRlc3RzL2k5MTVfZ2VtX29iamVjdC5jICB8ICAyICstCj4gICAuLi4vZ3B1L2RybS9pOTE1L3Nl
bGZ0ZXN0cy9tb2NrX2dlbV9kZXZpY2UuYyAgfCAgNCArKy0tCj4gICA1IGZpbGVzIGNoYW5nZWQs
IDEyIGluc2VydGlvbnMoKyksIDE5IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZGVidWdmcy5jCj4gaW5kZXggZGE0ZmI5ZjM0ZDI3Li42NzRjOGM5MzYwNTcgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwo+IEBAIC0zOTMxLDggKzM5MzEsOCBAQCBpOTE1
X2Ryb3BfY2FjaGVzX3NldCh2b2lkICpkYXRhLCB1NjQgdmFsKQo+ICAgCWlmICh2YWwgJiBEUk9Q
X0lETEUpIHsKPiAgIAkJZG8gewo+ICAgCQkJZmx1c2hfZGVsYXllZF93b3JrKCZpOTE1LT5nZW0u
cmV0aXJlX3dvcmspOwo+IC0JCQlkcmFpbl9kZWxheWVkX3dvcmsoJmk5MTUtPmdlbS5pZGxlX3dv
cmspOwo+ICAgCQl9IHdoaWxlIChSRUFEX09OQ0UoaTkxNS0+Z3QuYXdha2UpKTsKPiArCQlmbHVz
aF93b3JrKCZpOTE1LT5nZW0uaWRsZV93b3JrKTsKPiAgIAl9Cj4gICAKPiAgIAlpZiAodmFsICYg
RFJPUF9GUkVFRCkKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiBpbmRleCA2NGZhMzUzYTYyYmIu
LjJiZjUxOGZlYTM2ZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Ry
di5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+IEBAIC0yMDMxLDcg
KzIwMzEsNyBAQCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSB7Cj4gICAJCSAqIGFycml2ZSB3aXRo
aW4gYSBzbWFsbCBwZXJpb2Qgb2YgdGltZSwgd2UgZmlyZQo+ICAgCQkgKiBvZmYgdGhlIGlkbGVf
d29yay4KPiAgIAkJICovCj4gLQkJc3RydWN0IGRlbGF5ZWRfd29yayBpZGxlX3dvcms7Cj4gKwkJ
c3RydWN0IHdvcmtfc3RydWN0IGlkbGVfd29yazsKPiAgIAl9IGdlbTsKPiAgIAo+ICAgCS8qIEZv
ciBpOTQ1Z20gdmJsYW5rIGlycSB2cy4gQzMgd29ya2Fyb3VuZCAqLwo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fcG0uYwo+IGluZGV4IDQ5YjBjZTU5NGYyMC4uYWU5MWFkN2NiMzFlIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3BtLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9wbS5jCj4gQEAgLTI5LDEyICsyOSwxMiBAQCBzdGF0aWMg
dm9pZCBpOTE1X2dlbV9wYXJrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICAgc3Rh
dGljIHZvaWQgaWRsZV93b3JrX2hhbmRsZXIoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQo+ICAg
ewo+ICAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0KPiAtCQljb250YWluZXJfb2Yo
d29yaywgdHlwZW9mKCppOTE1KSwgZ2VtLmlkbGVfd29yay53b3JrKTsKPiArCQljb250YWluZXJf
b2Yod29yaywgdHlwZW9mKCppOTE1KSwgZ2VtLmlkbGVfd29yayk7Cj4gICAKPiAgIAltdXRleF9s
b2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKPiAgIAo+ICAgCWludGVsX3dha2VyZWZfbG9j
aygmaTkxNS0+Z3Qud2FrZXJlZik7Cj4gLQlpZiAoIWludGVsX3dha2VyZWZfYWN0aXZlKCZpOTE1
LT5ndC53YWtlcmVmKSkKPiArCWlmICghaW50ZWxfd2FrZXJlZl9hY3RpdmUoJmk5MTUtPmd0Lndh
a2VyZWYpICYmICF3b3JrX3BlbmRpbmcod29yaykpCj4gICAJCWk5MTVfZ2VtX3BhcmsoaTkxNSk7
Cj4gICAJaW50ZWxfd2FrZXJlZl91bmxvY2soJmk5MTUtPmd0Lndha2VyZWYpOwo+ICAgCj4gQEAg
LTc0LDkgKzc0LDcgQEAgc3RhdGljIGludCBwbV9ub3RpZmllcihzdHJ1Y3Qgbm90aWZpZXJfYmxv
Y2sgKm5iLAo+ICAgCQlicmVhazsKPiAgIAo+ICAgCWNhc2UgSU5URUxfR1RfUEFSSzoKPiAtCQlt
b2RfZGVsYXllZF93b3JrKGk5MTUtPndxLAo+IC0JCQkJICZpOTE1LT5nZW0uaWRsZV93b3JrLAo+
IC0JCQkJIG1zZWNzX3RvX2ppZmZpZXMoMTAwKSk7Cj4gKwkJcXVldWVfd29yayhpOTE1LT53cSwg
Jmk5MTUtPmdlbS5pZGxlX3dvcmspOwo+ICAgCQlicmVhazsKPiAgIAl9Cj4gICAKPiBAQCAtMTQy
LDE2ICsxNDAsMTEgQEAgdm9pZCBpOTE1X2dlbV9zdXNwZW5kKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1KQo+ICAgCSAqIEFzc2VydCB0aGF0IHdlIHN1Y2Nlc3NmdWxseSBmbHVzaGVkIGFs
bCB0aGUgd29yayBhbmQKPiAgIAkgKiByZXNldCB0aGUgR1BVIGJhY2sgdG8gaXRzIGlkbGUsIGxv
dyBwb3dlciBzdGF0ZS4KPiAgIAkgKi8KPiAtCUdFTV9CVUdfT04oaTkxNS0+Z3QuYXdha2UpOwo+
IC0JY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5jKCZpOTE1LT5ncHVfZXJyb3IuaGFuZ2NoZWNrX3dv
cmspOwo+IC0KPiAgIAlkcmFpbl9kZWxheWVkX3dvcmsoJmk5MTUtPmdlbS5yZXRpcmVfd29yayk7
Cj4gKwlHRU1fQlVHX09OKGk5MTUtPmd0LmF3YWtlKTsKPiArCWZsdXNoX3dvcmsoJmk5MTUtPmdl
bS5pZGxlX3dvcmspOwo+ICAgCj4gLQkvKgo+IC0JICogQXMgdGhlIGlkbGVfd29yayBpcyByZWFy
bWluZyBpZiBpdCBkZXRlY3RzIGEgcmFjZSwgcGxheSBzYWZlIGFuZAo+IC0JICogcmVwZWF0IHRo
ZSBmbHVzaCB1bnRpbCBpdCBpcyBkZWZpbml0ZWx5IGlkbGUuCj4gLQkgKi8KPiAtCWRyYWluX2Rl
bGF5ZWRfd29yaygmaTkxNS0+Z2VtLmlkbGVfd29yayk7Cj4gKwljYW5jZWxfZGVsYXllZF93b3Jr
X3N5bmMoJmk5MTUtPmdwdV9lcnJvci5oYW5nY2hlY2tfd29yayk7Cj4gICAKPiAgIAlpOTE1X2dl
bV9kcmFpbl9mcmVlZF9vYmplY3RzKGk5MTUpOwo+ICAgCj4gQEAgLTI0Miw3ICsyMzUsNyBAQCB2
b2lkIGk5MTVfZ2VtX3Jlc3VtZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiAgIAo+
ICAgdm9pZCBpOTE1X2dlbV9pbml0X19wbShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkK
PiAgIHsKPiAtCUlOSVRfREVMQVlFRF9XT1JLKCZpOTE1LT5nZW0uaWRsZV93b3JrLCBpZGxlX3dv
cmtfaGFuZGxlcik7Cj4gKwlJTklUX1dPUksoJmk5MTUtPmdlbS5pZGxlX3dvcmssIGlkbGVfd29y
a19oYW5kbGVyKTsKPiAgIAlJTklUX0RFTEFZRURfV09SSygmaTkxNS0+Z2VtLnJldGlyZV93b3Jr
LCByZXRpcmVfd29ya19oYW5kbGVyKTsKPiAgIAo+ICAgCWk5MTUtPmdlbS5wbV9ub3RpZmllci5u
b3RpZmllcl9jYWxsID0gcG1fbm90aWZpZXI7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbV9vYmplY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L3NlbGZ0ZXN0cy9pOTE1X2dlbV9vYmplY3QuYwo+IGluZGV4IDA4OGIyYWEwNWRjZC4uYjkyNmQx
Y2QxNjVkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1
X2dlbV9vYmplY3QuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1
X2dlbV9vYmplY3QuYwo+IEBAIC01MDksNyArNTA5LDcgQEAgc3RhdGljIHZvaWQgZGlzYWJsZV9y
ZXRpcmVfd29ya2VyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICAgCWludGVsX2d0
X3BtX2dldChpOTE1KTsKPiAgIAo+ICAgCWNhbmNlbF9kZWxheWVkX3dvcmtfc3luYygmaTkxNS0+
Z2VtLnJldGlyZV93b3JrKTsKPiAtCWNhbmNlbF9kZWxheWVkX3dvcmtfc3luYygmaTkxNS0+Z2Vt
LmlkbGVfd29yayk7Cj4gKwlmbHVzaF93b3JrKCZpOTE1LT5nZW0uaWRsZV93b3JrKTsKPiAgIH0K
PiAgIAo+ICAgc3RhdGljIHZvaWQgcmVzdG9yZV9yZXRpcmVfd29ya2VyKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1KQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxm
dGVzdHMvbW9ja19nZW1fZGV2aWNlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMv
bW9ja19nZW1fZGV2aWNlLmMKPiBpbmRleCBlNDAzM2QwNTc2YzQuLmQ5MTlmNTEyMDQyYyAxMDA2
NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNl
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNl
LmMKPiBAQCAtNTksNyArNTksNyBAQCBzdGF0aWMgdm9pZCBtb2NrX2RldmljZV9yZWxlYXNlKHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYpCj4gICAJbXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0uc3RydWN0
X211dGV4KTsKPiAgIAo+ICAgCWRyYWluX2RlbGF5ZWRfd29yaygmaTkxNS0+Z2VtLnJldGlyZV93
b3JrKTsKPiAtCWRyYWluX2RlbGF5ZWRfd29yaygmaTkxNS0+Z2VtLmlkbGVfd29yayk7Cj4gKwlm
bHVzaF93b3JrKCZpOTE1LT5nZW0uaWRsZV93b3JrKTsKPiAgIAlpOTE1X2dlbV9kcmFpbl93b3Jr
cXVldWUoaTkxNSk7Cj4gICAKPiAgIAltdXRleF9sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4
KTsKPiBAQCAtMTk1LDcgKzE5NSw3IEBAIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICptb2NrX2dl
bV9kZXZpY2Uodm9pZCkKPiAgIAltb2NrX2luaXRfY29udGV4dHMoaTkxNSk7Cj4gICAKPiAgIAlJ
TklUX0RFTEFZRURfV09SSygmaTkxNS0+Z2VtLnJldGlyZV93b3JrLCBtb2NrX3JldGlyZV93b3Jr
X2hhbmRsZXIpOwo+IC0JSU5JVF9ERUxBWUVEX1dPUksoJmk5MTUtPmdlbS5pZGxlX3dvcmssIG1v
Y2tfaWRsZV93b3JrX2hhbmRsZXIpOwo+ICsJSU5JVF9XT1JLKCZpOTE1LT5nZW0uaWRsZV93b3Jr
LCBtb2NrX2lkbGVfd29ya19oYW5kbGVyKTsKPiAgIAo+ICAgCWk5MTUtPmd0LmF3YWtlID0gdHJ1
ZTsKPiAgIAo+IAoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBp
bnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
