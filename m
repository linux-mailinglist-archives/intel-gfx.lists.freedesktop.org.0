Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 46BDA19EE3
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2019 16:18:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2838F89D84;
	Fri, 10 May 2019 14:17:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E1FE89D84
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2019 14:17:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 May 2019 07:17:57 -0700
X-ExtLoop1: 1
Received: from gaia.fi.intel.com ([10.237.72.169])
 by orsmga002.jf.intel.com with ESMTP; 10 May 2019 07:17:55 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 825855C1ECC; Fri, 10 May 2019 17:17:12 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190508080704.24223-29-chris@chris-wilson.co.uk>
References: <20190508080704.24223-1-chris@chris-wilson.co.uk>
 <20190508080704.24223-29-chris@chris-wilson.co.uk>
Date: Fri, 10 May 2019 17:17:12 +0300
Message-ID: <87bm0a8kd3.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 29/40] drm/i915: Move GEM object waiting to
 its own file
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gQ29udGlu
dWluZyB0aGUgZGVjbHV0dGVyaW5nIG9mIGk5MTVfZ2VtLmMgYnkgbW92aW5nIHRoZSBvYmplY3Qg
d2FpdAo+IGRlY29tcG9zaXRpb24gaW50byBpdHMgb3duIGZpbGUuCj4KPiBTaWduZWQtb2ZmLWJ5
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgICAgICAgICAgICAgIHwgICAxICsKPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX29iamVjdC5oIHwgICA4ICsKPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYyAgIHwgMjc3ICsrKysrKysrKysrKysrKysrKysr
Kwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oICAgICAgICAgICAgfCAgIDcgLQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jICAgICAgICAgICAgfCAyNTQgLS0tLS0t
LS0tLS0tLS0tLS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3V0aWxzLmggICAgICAg
ICAgfCAgMTAgLQo+ICA2IGZpbGVzIGNoYW5nZWQsIDI4NiBpbnNlcnRpb25zKCspLCAyNzEgZGVs
ZXRpb25zKC0pCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0v
aTkxNV9nZW1fd2FpdC5jCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFr
ZWZpbGUgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQo+IGluZGV4IGU1MzQ4YzM1NTk4
Ny4uYTRjYzJmN2Y5YmM2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2Vm
aWxlCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKPiBAQCAtMTA1LDYgKzEw
NSw3IEBAIGdlbS15ICs9IFwKPiAgCWdlbS9pOTE1X2dlbV9zdG9sZW4ubyBcCj4gIAlnZW0vaTkx
NV9nZW1fdGlsaW5nLm8gXAo+ICAJZ2VtL2k5MTVfZ2VtX3VzZXJwdHIubyBcCj4gKwlnZW0vaTkx
NV9nZW1fd2FpdC5vIFwKPiAgCWdlbS9pOTE1X2dlbWZzLm8KPiAgaTkxNS15ICs9IFwKPiAgCSAg
JChnZW0teSkgXAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fb2JqZWN0LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgK
PiBpbmRleCA1MDlkMTQ1ZDgwOGEuLjIzYmNhMDAzZmJmYiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmgKPiBAQCAtNDM2LDQgKzQzNiwxMiBAQCBzdGF0
aWMgaW5saW5lIHZvaWQgX19zdGFydF9jcHVfd3JpdGUoc3RydWN0IGRybV9pOTE1X2dlbV9vYmpl
Y3QgKm9iaikKPiAgCQlvYmotPmNhY2hlX2RpcnR5ID0gdHJ1ZTsKPiAgfQo+ICAKPiAraW50IGk5
MTVfZ2VtX29iamVjdF93YWl0KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4gKwkJ
CSB1bnNpZ25lZCBpbnQgZmxhZ3MsCj4gKwkJCSBsb25nIHRpbWVvdXQpOwo+ICtpbnQgaTkxNV9n
ZW1fb2JqZWN0X3dhaXRfcHJpb3JpdHkoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwK
PiArCQkJCSAgdW5zaWduZWQgaW50IGZsYWdzLAo+ICsJCQkJICBjb25zdCBzdHJ1Y3QgaTkxNV9z
Y2hlZF9hdHRyICphdHRyKTsKPiArI2RlZmluZSBJOTE1X1BSSU9SSVRZX0RJU1BMQVkgSTkxNV9V
U0VSX1BSSU9SSVRZKEk5MTVfUFJJT1JJVFlfTUFYKQo+ICsKPiAgI2VuZGlmCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV93YWl0LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fd2FpdC5jCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQKPiBp
bmRleCAwMDAwMDAwMDAwMDAuLmZlZDVjNzUxZWYzNwo+IC0tLSAvZGV2L251bGwKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fd2FpdC5jCj4gQEAgLTAsMCArMSwyNzcg
QEAKPiArLyoKPiArICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAo+ICsgKgo+ICsgKiBD
b3B5cmlnaHQgwqkgMjAxNiBJbnRlbCBDb3Jwb3JhdGlvbgo+ICsgKi8KPiArCj4gKyNpbmNsdWRl
IDxsaW51eC9kbWEtZmVuY2UtYXJyYXkuaD4KPiArI2luY2x1ZGUgPGxpbnV4L2ppZmZpZXMuaD4K
PiArCj4gKyNpbmNsdWRlICJndC9pbnRlbF9lbmdpbmUuaCIKPiArCj4gKyNpbmNsdWRlICJpOTE1
X2dlbV9pb2N0bHMuaCIKPiArI2luY2x1ZGUgImk5MTVfZ2VtX29iamVjdC5oIgo+ICsKPiArc3Rh
dGljIGxvbmcKPiAraTkxNV9nZW1fb2JqZWN0X3dhaXRfZmVuY2Uoc3RydWN0IGRtYV9mZW5jZSAq
ZmVuY2UsCj4gKwkJCSAgIHVuc2lnbmVkIGludCBmbGFncywKPiArCQkJICAgbG9uZyB0aW1lb3V0
KQo+ICt7Cj4gKwlCVUlMRF9CVUdfT04oSTkxNV9XQUlUX0lOVEVSUlVQVElCTEUgIT0gMHgxKTsK
PiArCj4gKwlpZiAodGVzdF9iaXQoRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklULCAmZmVuY2Ut
PmZsYWdzKSkKPiArCQlyZXR1cm4gdGltZW91dDsKPiArCj4gKwlpZiAoZG1hX2ZlbmNlX2lzX2k5
MTUoZmVuY2UpKQo+ICsJCXJldHVybiBpOTE1X3JlcXVlc3Rfd2FpdCh0b19yZXF1ZXN0KGZlbmNl
KSwgZmxhZ3MsIHRpbWVvdXQpOwo+ICsKPiArCXJldHVybiBkbWFfZmVuY2Vfd2FpdF90aW1lb3V0
KGZlbmNlLAo+ICsJCQkJICAgICAgZmxhZ3MgJiBJOTE1X1dBSVRfSU5URVJSVVBUSUJMRSwKPiAr
CQkJCSAgICAgIHRpbWVvdXQpOwo+ICt9Cj4gKwo+ICtzdGF0aWMgbG9uZwo+ICtpOTE1X2dlbV9v
YmplY3Rfd2FpdF9yZXNlcnZhdGlvbihzdHJ1Y3QgcmVzZXJ2YXRpb25fb2JqZWN0ICpyZXN2LAo+
ICsJCQkJIHVuc2lnbmVkIGludCBmbGFncywKPiArCQkJCSBsb25nIHRpbWVvdXQpCj4gK3sKPiAr
CXVuc2lnbmVkIGludCBzZXEgPSBfX3JlYWRfc2VxY291bnRfYmVnaW4oJnJlc3YtPnNlcSk7Cj4g
KwlzdHJ1Y3QgZG1hX2ZlbmNlICpleGNsOwo+ICsJYm9vbCBwcnVuZV9mZW5jZXMgPSBmYWxzZTsK
PiArCj4gKwlpZiAoZmxhZ3MgJiBJOTE1X1dBSVRfQUxMKSB7Cj4gKwkJc3RydWN0IGRtYV9mZW5j
ZSAqKnNoYXJlZDsKPiArCQl1bnNpZ25lZCBpbnQgY291bnQsIGk7Cj4gKwkJaW50IHJldDsKPiAr
Cj4gKwkJcmV0ID0gcmVzZXJ2YXRpb25fb2JqZWN0X2dldF9mZW5jZXNfcmN1KHJlc3YsCj4gKwkJ
CQkJCQkmZXhjbCwgJmNvdW50LCAmc2hhcmVkKTsKPiArCQlpZiAocmV0KQo+ICsJCQlyZXR1cm4g
cmV0Owo+ICsKPiArCQlmb3IgKGkgPSAwOyBpIDwgY291bnQ7IGkrKykgewo+ICsJCQl0aW1lb3V0
ID0gaTkxNV9nZW1fb2JqZWN0X3dhaXRfZmVuY2Uoc2hhcmVkW2ldLAo+ICsJCQkJCQkJICAgICBm
bGFncywgdGltZW91dCk7Cj4gKwkJCWlmICh0aW1lb3V0IDwgMCkKPiArCQkJCWJyZWFrOwo+ICsK
PiArCQkJZG1hX2ZlbmNlX3B1dChzaGFyZWRbaV0pOwo+ICsJCX0KPiArCj4gKwkJZm9yICg7IGkg
PCBjb3VudDsgaSsrKQo+ICsJCQlkbWFfZmVuY2VfcHV0KHNoYXJlZFtpXSk7Cj4gKwkJa2ZyZWUo
c2hhcmVkKTsKPiArCj4gKwkJLyoKPiArCQkgKiBJZiBib3RoIHNoYXJlZCBmZW5jZXMgYW5kIGFu
IGV4Y2x1c2l2ZSBmZW5jZSBleGlzdCwKPiArCQkgKiB0aGVuIGJ5IGNvbnN0cnVjdGlvbiB0aGUg
c2hhcmVkIGZlbmNlcyBtdXN0IGJlIGxhdGVyCj4gKwkJICogdGhhbiB0aGUgZXhjbHVzaXZlIGZl
bmNlLiBJZiB3ZSBzdWNjZXNzZnVsbHkgd2FpdCBmb3IKPiArCQkgKiBhbGwgdGhlIHNoYXJlZCBm
ZW5jZXMsIHdlIGtub3cgdGhhdCB0aGUgZXhjbHVzaXZlIGZlbmNlCj4gKwkJICogbXVzdCBhbGwg
YmUgc2lnbmFsZWQuIElmIGFsbCB0aGUgc2hhcmVkIGZlbmNlcyBhcmUKPiArCQkgKiBzaWduYWxl
ZCwgd2UgY2FuIHBydW5lIHRoZSBhcnJheSBhbmQgcmVjb3ZlciB0aGUKPiArCQkgKiBmbG9hdGlu
ZyByZWZlcmVuY2VzIG9uIHRoZSBmZW5jZXMvcmVxdWVzdHMuCj4gKwkJICovCj4gKwkJcHJ1bmVf
ZmVuY2VzID0gY291bnQgJiYgdGltZW91dCA+PSAwOwo+ICsJfSBlbHNlIHsKPiArCQlleGNsID0g
cmVzZXJ2YXRpb25fb2JqZWN0X2dldF9leGNsX3JjdShyZXN2KTsKPiArCX0KPiArCj4gKwlpZiAo
ZXhjbCAmJiB0aW1lb3V0ID49IDApCj4gKwkJdGltZW91dCA9IGk5MTVfZ2VtX29iamVjdF93YWl0
X2ZlbmNlKGV4Y2wsIGZsYWdzLCB0aW1lb3V0KTsKPiArCj4gKwlkbWFfZmVuY2VfcHV0KGV4Y2wp
Owo+ICsKPiArCS8qCj4gKwkgKiBPcHBvcnR1bmlzdGljYWxseSBwcnVuZSB0aGUgZmVuY2VzIGlm
ZiB3ZSBrbm93IHRoZXkgaGF2ZSAqYWxsKiBiZWVuCj4gKwkgKiBzaWduYWxlZCBhbmQgdGhhdCB0
aGUgcmVzZXJ2YXRpb24gb2JqZWN0IGhhcyBub3QgYmVlbiBjaGFuZ2VkIChpLmUuCj4gKwkgKiBu
byBuZXcgZmVuY2VzIGhhdmUgYmVlbiBhZGRlZCkuCj4gKwkgKi8KPiArCWlmIChwcnVuZV9mZW5j
ZXMgJiYgIV9fcmVhZF9zZXFjb3VudF9yZXRyeSgmcmVzdi0+c2VxLCBzZXEpKSB7Cj4gKwkJaWYg
KHJlc2VydmF0aW9uX29iamVjdF90cnlsb2NrKHJlc3YpKSB7Cj4gKwkJCWlmICghX19yZWFkX3Nl
cWNvdW50X3JldHJ5KCZyZXN2LT5zZXEsIHNlcSkpCj4gKwkJCQlyZXNlcnZhdGlvbl9vYmplY3Rf
YWRkX2V4Y2xfZmVuY2UocmVzdiwgTlVMTCk7Cj4gKwkJCXJlc2VydmF0aW9uX29iamVjdF91bmxv
Y2socmVzdik7Cj4gKwkJfQo+ICsJfQo+ICsKPiArCXJldHVybiB0aW1lb3V0Owo+ICt9Cj4gKwo+
ICtzdGF0aWMgdm9pZCBfX2ZlbmNlX3NldF9wcmlvcml0eShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5j
ZSwKPiArCQkJCSBjb25zdCBzdHJ1Y3QgaTkxNV9zY2hlZF9hdHRyICphdHRyKQo+ICt7Cj4gKwlz
dHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKPiArCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2lu
ZTsKPiArCj4gKwlpZiAoZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlKSB8fCAhZG1hX2ZlbmNl
X2lzX2k5MTUoZmVuY2UpKQo+ICsJCXJldHVybjsKPiArCj4gKwlycSA9IHRvX3JlcXVlc3QoZmVu
Y2UpOwo+ICsJZW5naW5lID0gcnEtPmVuZ2luZTsKPiArCj4gKwlsb2NhbF9iaF9kaXNhYmxlKCk7
Cj4gKwlyY3VfcmVhZF9sb2NrKCk7IC8qIFJDVSBzZXJpYWxpc2F0aW9uIGZvciBzZXQtd2VkZ2Vk
IHByb3RlY3Rpb24gKi8KPiArCWlmIChlbmdpbmUtPnNjaGVkdWxlKQo+ICsJCWVuZ2luZS0+c2No
ZWR1bGUocnEsIGF0dHIpOwo+ICsJcmN1X3JlYWRfdW5sb2NrKCk7Cj4gKwlsb2NhbF9iaF9lbmFi
bGUoKTsgLyoga2ljayB0aGUgdGFza2xldHMgaWYgcXVldWVzIHdlcmUgcmVwcmlvcml0aXNlZCAq
Lwo+ICt9Cj4gKwo+ICtzdGF0aWMgdm9pZCBmZW5jZV9zZXRfcHJpb3JpdHkoc3RydWN0IGRtYV9m
ZW5jZSAqZmVuY2UsCj4gKwkJCSAgICAgICBjb25zdCBzdHJ1Y3QgaTkxNV9zY2hlZF9hdHRyICph
dHRyKQo+ICt7Cj4gKwkvKiBSZWN1cnNlIG9uY2UgaW50byBhIGZlbmNlLWFycmF5ICovCj4gKwlp
ZiAoZG1hX2ZlbmNlX2lzX2FycmF5KGZlbmNlKSkgewo+ICsJCXN0cnVjdCBkbWFfZmVuY2VfYXJy
YXkgKmFycmF5ID0gdG9fZG1hX2ZlbmNlX2FycmF5KGZlbmNlKTsKPiArCQlpbnQgaTsKPiArCj4g
KwkJZm9yIChpID0gMDsgaSA8IGFycmF5LT5udW1fZmVuY2VzOyBpKyspCj4gKwkJCV9fZmVuY2Vf
c2V0X3ByaW9yaXR5KGFycmF5LT5mZW5jZXNbaV0sIGF0dHIpOwo+ICsJfSBlbHNlIHsKPiArCQlf
X2ZlbmNlX3NldF9wcmlvcml0eShmZW5jZSwgYXR0cik7Cj4gKwl9Cj4gK30KPiArCj4gK2ludAo+
ICtpOTE1X2dlbV9vYmplY3Rfd2FpdF9wcmlvcml0eShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVj
dCAqb2JqLAo+ICsJCQkgICAgICB1bnNpZ25lZCBpbnQgZmxhZ3MsCj4gKwkJCSAgICAgIGNvbnN0
IHN0cnVjdCBpOTE1X3NjaGVkX2F0dHIgKmF0dHIpCj4gK3sKPiArCXN0cnVjdCBkbWFfZmVuY2Ug
KmV4Y2w7Cj4gKwo+ICsJaWYgKGZsYWdzICYgSTkxNV9XQUlUX0FMTCkgewo+ICsJCXN0cnVjdCBk
bWFfZmVuY2UgKipzaGFyZWQ7Cj4gKwkJdW5zaWduZWQgaW50IGNvdW50LCBpOwo+ICsJCWludCBy
ZXQ7Cj4gKwo+ICsJCXJldCA9IHJlc2VydmF0aW9uX29iamVjdF9nZXRfZmVuY2VzX3JjdShvYmot
PnJlc3YsCj4gKwkJCQkJCQkmZXhjbCwgJmNvdW50LCAmc2hhcmVkKTsKPiArCQlpZiAocmV0KQo+
ICsJCQlyZXR1cm4gcmV0Owo+ICsKPiArCQlmb3IgKGkgPSAwOyBpIDwgY291bnQ7IGkrKykgewo+
ICsJCQlmZW5jZV9zZXRfcHJpb3JpdHkoc2hhcmVkW2ldLCBhdHRyKTsKPiArCQkJZG1hX2ZlbmNl
X3B1dChzaGFyZWRbaV0pOwo+ICsJCX0KPiArCj4gKwkJa2ZyZWUoc2hhcmVkKTsKPiArCX0gZWxz
ZSB7Cj4gKwkJZXhjbCA9IHJlc2VydmF0aW9uX29iamVjdF9nZXRfZXhjbF9yY3Uob2JqLT5yZXN2
KTsKPiArCX0KPiArCj4gKwlpZiAoZXhjbCkgewo+ICsJCWZlbmNlX3NldF9wcmlvcml0eShleGNs
LCBhdHRyKTsKPiArCQlkbWFfZmVuY2VfcHV0KGV4Y2wpOwo+ICsJfQo+ICsJcmV0dXJuIDA7Cj4g
K30KPiArCj4gKy8qKgo+ICsgKiBXYWl0cyBmb3IgcmVuZGVyaW5nIHRvIHRoZSBvYmplY3QgdG8g
YmUgY29tcGxldGVkCj4gKyAqIEBvYmo6IGk5MTUgZ2VtIG9iamVjdAo+ICsgKiBAZmxhZ3M6IGhv
dyB0byB3YWl0ICh1bmRlciBhIGxvY2ssIGZvciBhbGwgcmVuZGVyaW5nIG9yIGp1c3QgZm9yIHdy
aXRlcyBldGMpCj4gKyAqIEB0aW1lb3V0OiBob3cgbG9uZyB0byB3YWl0Cj4gKyAqLwo+ICtpbnQK
PiAraTkxNV9nZW1fb2JqZWN0X3dhaXQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwK
PiArCQkgICAgIHVuc2lnbmVkIGludCBmbGFncywKPiArCQkgICAgIGxvbmcgdGltZW91dCkKPiAr
ewo+ICsJbWlnaHRfc2xlZXAoKTsKPiArCUdFTV9CVUdfT04odGltZW91dCA8IDApOwo+ICsKPiAr
CXRpbWVvdXQgPSBpOTE1X2dlbV9vYmplY3Rfd2FpdF9yZXNlcnZhdGlvbihvYmotPnJlc3YsIGZs
YWdzLCB0aW1lb3V0KTsKPiArCXJldHVybiB0aW1lb3V0IDwgMCA/IHRpbWVvdXQgOiAwOwo+ICt9
Cj4gKwo+ICtzdGF0aWMgaW5saW5lIHVuc2lnbmVkIGxvbmcgbnNlY3NfdG9famlmZmllc190aW1l
b3V0KGNvbnN0IHU2NCBuKQo+ICt7Cj4gKwkvKiBuc2Vjc190b19qaWZmaWVzNjQoKSBkb2VzIG5v
dCBndWFyZCBhZ2FpbnN0IG92ZXJmbG93ICovCj4gKwlpZiAoTlNFQ19QRVJfU0VDICUgSFogJiYK
PiArCSAgICBkaXZfdTY0KG4sIE5TRUNfUEVSX1NFQykgPj0gTUFYX0pJRkZZX09GRlNFVCAvIEha
KQo+ICsJCXJldHVybiBNQVhfSklGRllfT0ZGU0VUOwo+ICsKPiArCXJldHVybiBtaW5fdCh1NjQs
IE1BWF9KSUZGWV9PRkZTRVQsIG5zZWNzX3RvX2ppZmZpZXM2NChuKSArIDEpOwo+ICt9Cj4gKwo+
ICtzdGF0aWMgdW5zaWduZWQgbG9uZyB0b193YWl0X3RpbWVvdXQoczY0IHRpbWVvdXRfbnMpCj4g
K3sKPiArCWlmICh0aW1lb3V0X25zIDwgMCkKPiArCQlyZXR1cm4gTUFYX1NDSEVEVUxFX1RJTUVP
VVQ7Cj4gKwo+ICsJaWYgKHRpbWVvdXRfbnMgPT0gMCkKPiArCQlyZXR1cm4gMDsKPiArCj4gKwly
ZXR1cm4gbnNlY3NfdG9famlmZmllc190aW1lb3V0KHRpbWVvdXRfbnMpOwo+ICt9Cj4gKwo+ICsv
KioKPiArICogaTkxNV9nZW1fd2FpdF9pb2N0bCAtIGltcGxlbWVudHMgRFJNX0lPQ1RMX0k5MTVf
R0VNX1dBSVQKPiArICogQGRldjogZHJtIGRldmljZSBwb2ludGVyCj4gKyAqIEBkYXRhOiBpb2N0
bCBkYXRhIGJsb2IKPiArICogQGZpbGU6IGRybSBmaWxlIHBvaW50ZXIKPiArICoKPiArICogUmV0
dXJucyAwIGlmIHN1Y2Nlc3NmdWwsIGVsc2UgYW4gZXJyb3IgaXMgcmV0dXJuZWQgd2l0aCB0aGUg
cmVtYWluaW5nIHRpbWUgaW4KPiArICogdGhlIHRpbWVvdXQgcGFyYW1ldGVyLgo+ICsgKiAgLUVU
SU1FOiBvYmplY3QgaXMgc3RpbGwgYnVzeSBhZnRlciB0aW1lb3V0Cj4gKyAqICAtRVJFU1RBUlRT
WVM6IHNpZ25hbCBpbnRlcnJ1cHRlZCB0aGUgd2FpdAo+ICsgKiAgLUVOT05FTlQ6IG9iamVjdCBk
b2Vzbid0IGV4aXN0Cj4gKyAqIEFsc28gcG9zc2libGUsIGJ1dCByYXJlOgo+ICsgKiAgLUVBR0FJ
TjogaW5jb21wbGV0ZSwgcmVzdGFydCBzeXNjYWxsCj4gKyAqICAtRU5PTUVNOiBkYW1uCj4gKyAq
ICAtRU5PREVWOiBJbnRlcm5hbCBJUlEgZmFpbAo+ICsgKiAgLUU/OiBUaGUgYWRkIHJlcXVlc3Qg
ZmFpbGVkCj4gKyAqCj4gKyAqIFRoZSB3YWl0IGlvY3RsIHdpdGggYSB0aW1lb3V0IG9mIDAgcmVp
bXBsZW1lbnRzIHRoZSBidXN5IGlvY3RsLiBXaXRoIGFueQo+ICsgKiBub24temVybyB0aW1lb3V0
IHBhcmFtZXRlciB0aGUgd2FpdCBpb2N0bCB3aWxsIHdhaXQgZm9yIHRoZSBnaXZlbiBudW1iZXIg
b2YKPiArICogbmFub3NlY29uZHMgb24gYW4gb2JqZWN0IGJlY29taW5nIHVuYnVzeS4gU2luY2Ug
dGhlIHdhaXQgaXRzZWxmIGRvZXMgc28KPiArICogd2l0aG91dCBob2xkaW5nIHN0cnVjdF9tdXRl
eCB0aGUgb2JqZWN0IG1heSBiZWNvbWUgcmUtYnVzaWVkIGJlZm9yZSB0aGlzCj4gKyAqIGZ1bmN0
aW9uIGNvbXBsZXRlcy4gQSBzaW1pbGFyIGJ1dCBzaG9ydGVyICogcmFjZSBjb25kaXRpb24gZXhp
c3RzIGluIHRoZSBidXN5Cj4gKyAqIGlvY3RsCj4gKyAqLwo+ICtpbnQKPiAraTkxNV9nZW1fd2Fp
dF9pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRhLCBzdHJ1Y3QgZHJtX2Zp
bGUgKmZpbGUpCj4gK3sKPiArCXN0cnVjdCBkcm1faTkxNV9nZW1fd2FpdCAqYXJncyA9IGRhdGE7
Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqOwo+ICsJa3RpbWVfdCBzdGFydDsK
PiArCWxvbmcgcmV0Owo+ICsKPiArCWlmIChhcmdzLT5mbGFncyAhPSAwKQo+ICsJCXJldHVybiAt
RUlOVkFMOwo+ICsKPiArCW9iaiA9IGk5MTVfZ2VtX29iamVjdF9sb29rdXAoZmlsZSwgYXJncy0+
Ym9faGFuZGxlKTsKPiArCWlmICghb2JqKQo+ICsJCXJldHVybiAtRU5PRU5UOwo+ICsKPiArCXN0
YXJ0ID0ga3RpbWVfZ2V0KCk7Cj4gKwo+ICsJcmV0ID0gaTkxNV9nZW1fb2JqZWN0X3dhaXQob2Jq
LAo+ICsJCQkJICAgSTkxNV9XQUlUX0lOVEVSUlVQVElCTEUgfAo+ICsJCQkJICAgSTkxNV9XQUlU
X1BSSU9SSVRZIHwKPiArCQkJCSAgIEk5MTVfV0FJVF9BTEwsCj4gKwkJCQkgICB0b193YWl0X3Rp
bWVvdXQoYXJncy0+dGltZW91dF9ucykpOwo+ICsKPiArCWlmIChhcmdzLT50aW1lb3V0X25zID4g
MCkgewo+ICsJCWFyZ3MtPnRpbWVvdXRfbnMgLT0ga3RpbWVfdG9fbnMoa3RpbWVfc3ViKGt0aW1l
X2dldCgpLCBzdGFydCkpOwo+ICsJCWlmIChhcmdzLT50aW1lb3V0X25zIDwgMCkKPiArCQkJYXJn
cy0+dGltZW91dF9ucyA9IDA7Cj4gKwo+ICsJCS8qCj4gKwkJICogQXBwYXJlbnRseSBrdGltZSBp
c24ndCBhY2N1cmF0ZSBlbm91Z2ggYW5kIG9jY2FzaW9uYWxseSBoYXMgYQo+ICsJCSAqIGJpdCBv
ZiBtaXNtYXRjaCBpbiB0aGUgamlmZmllczwtPm5zZWNzPC0+a3RpbWUgbG9vcC4gU28gcGF0Y2gK
PiArCQkgKiB0aGluZ3MgdXAgdG8gbWFrZSB0aGUgdGVzdCBoYXBweS4gV2UgYWxsb3cgdXAgdG8g
MSBqaWZmeS4KPiArCQkgKgo+ICsJCSAqIFRoaXMgaXMgYSByZWdyZXNzaW9uIGZyb20gdGhlIHRp
bWVzcGVjLT5rdGltZSBjb252ZXJzaW9uLgo+ICsJCSAqLwo+ICsJCWlmIChyZXQgPT0gLUVUSU1F
ICYmICFuc2Vjc190b19qaWZmaWVzKGFyZ3MtPnRpbWVvdXRfbnMpKQo+ICsJCQlhcmdzLT50aW1l
b3V0X25zID0gMDsKPiArCj4gKwkJLyogQXNrZWQgdG8gd2FpdCBiZXlvbmQgdGhlIGppZmZpZS9z
Y2hlZHVsZXIgcHJlY2lzaW9uPyAqLwo+ICsJCWlmIChyZXQgPT0gLUVUSU1FICYmIGFyZ3MtPnRp
bWVvdXRfbnMpCj4gKwkJCXJldCA9IC1FQUdBSU47Cj4gKwl9Cj4gKwo+ICsJaTkxNV9nZW1fb2Jq
ZWN0X3B1dChvYmopOwo+ICsJcmV0dXJuIHJldDsKPiArfQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aAo+IGluZGV4IDZmOGRkZmJlN2Q4NS4uOGViMDFiMWIzZTBlIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oCj4gQEAgLTI3NDIsMTMgKzI3NDIsNiBAQCB2b2lkIGk5MTVfZ2VtX3N1c3BlbmQo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKPiAgdm9pZCBpOTE1X2dlbV9zdXNw
ZW5kX2xhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKPiAgdm9pZCBpOTE1
X2dlbV9yZXN1bWUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KTsKPiAgdm1fZmF1
bHRfdCBpOTE1X2dlbV9mYXVsdChzdHJ1Y3Qgdm1fZmF1bHQgKnZtZik7Cj4gLWludCBpOTE1X2dl
bV9vYmplY3Rfd2FpdChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+IC0JCQkgdW5z
aWduZWQgaW50IGZsYWdzLAo+IC0JCQkgbG9uZyB0aW1lb3V0KTsKPiAtaW50IGk5MTVfZ2VtX29i
amVjdF93YWl0X3ByaW9yaXR5KHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmosCj4gLQkJ
CQkgIHVuc2lnbmVkIGludCBmbGFncywKPiAtCQkJCSAgY29uc3Qgc3RydWN0IGk5MTVfc2NoZWRf
YXR0ciAqYXR0cik7Cj4gLSNkZWZpbmUgSTkxNV9QUklPUklUWV9ESVNQTEFZIEk5MTVfVVNFUl9Q
UklPUklUWShJOTE1X1BSSU9SSVRZX01BWCkKPiAgCj4gIGludCBpOTE1X2dlbV9vcGVuKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1LCBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUpOwo+ICB2b2lk
IGk5MTVfZ2VtX3JlbGVhc2Uoc3RydWN0IGRybV9kZXZpY2UgKmRldiwgc3RydWN0IGRybV9maWxl
ICpmaWxlKTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKPiBpbmRleCAzMmZkYzE5NzdhZmUuLjQ2
NzI3M2RkMmQ0YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwo+IEBAIC0xMjQsMTc4ICsx
MjQsNiBAQCBpbnQgaTkxNV9nZW1fb2JqZWN0X3VuYmluZChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29i
amVjdCAqb2JqKQo+ICAJcmV0dXJuIHJldDsKPiAgfQo+ICAKPiAtc3RhdGljIGxvbmcKPiAtaTkx
NV9nZW1fb2JqZWN0X3dhaXRfZmVuY2Uoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsCj4gLQkJCSAg
IHVuc2lnbmVkIGludCBmbGFncywKPiAtCQkJICAgbG9uZyB0aW1lb3V0KQo+IC17Cj4gLQlCVUlM
RF9CVUdfT04oSTkxNV9XQUlUX0lOVEVSUlVQVElCTEUgIT0gMHgxKTsKPiAtCj4gLQlpZiAodGVz
dF9iaXQoRE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklULCAmZmVuY2UtPmZsYWdzKSkKPiAtCQly
ZXR1cm4gdGltZW91dDsKPiAtCj4gLQlpZiAoZG1hX2ZlbmNlX2lzX2k5MTUoZmVuY2UpKQo+IC0J
CXJldHVybiBpOTE1X3JlcXVlc3Rfd2FpdCh0b19yZXF1ZXN0KGZlbmNlKSwgZmxhZ3MsIHRpbWVv
dXQpOwo+IC0KPiAtCXJldHVybiBkbWFfZmVuY2Vfd2FpdF90aW1lb3V0KGZlbmNlLAo+IC0JCQkJ
ICAgICAgZmxhZ3MgJiBJOTE1X1dBSVRfSU5URVJSVVBUSUJMRSwKPiAtCQkJCSAgICAgIHRpbWVv
dXQpOwo+IC19Cj4gLQo+IC1zdGF0aWMgbG9uZwo+IC1pOTE1X2dlbV9vYmplY3Rfd2FpdF9yZXNl
cnZhdGlvbihzdHJ1Y3QgcmVzZXJ2YXRpb25fb2JqZWN0ICpyZXN2LAo+IC0JCQkJIHVuc2lnbmVk
IGludCBmbGFncywKPiAtCQkJCSBsb25nIHRpbWVvdXQpCj4gLXsKPiAtCXVuc2lnbmVkIGludCBz
ZXEgPSBfX3JlYWRfc2VxY291bnRfYmVnaW4oJnJlc3YtPnNlcSk7Cj4gLQlzdHJ1Y3QgZG1hX2Zl
bmNlICpleGNsOwo+IC0JYm9vbCBwcnVuZV9mZW5jZXMgPSBmYWxzZTsKPiAtCj4gLQlpZiAoZmxh
Z3MgJiBJOTE1X1dBSVRfQUxMKSB7Cj4gLQkJc3RydWN0IGRtYV9mZW5jZSAqKnNoYXJlZDsKPiAt
CQl1bnNpZ25lZCBpbnQgY291bnQsIGk7Cj4gLQkJaW50IHJldDsKPiAtCj4gLQkJcmV0ID0gcmVz
ZXJ2YXRpb25fb2JqZWN0X2dldF9mZW5jZXNfcmN1KHJlc3YsCj4gLQkJCQkJCQkmZXhjbCwgJmNv
dW50LCAmc2hhcmVkKTsKPiAtCQlpZiAocmV0KQo+IC0JCQlyZXR1cm4gcmV0Owo+IC0KPiAtCQlm
b3IgKGkgPSAwOyBpIDwgY291bnQ7IGkrKykgewo+IC0JCQl0aW1lb3V0ID0gaTkxNV9nZW1fb2Jq
ZWN0X3dhaXRfZmVuY2Uoc2hhcmVkW2ldLAo+IC0JCQkJCQkJICAgICBmbGFncywgdGltZW91dCk7
Cj4gLQkJCWlmICh0aW1lb3V0IDwgMCkKPiAtCQkJCWJyZWFrOwo+IC0KPiAtCQkJZG1hX2ZlbmNl
X3B1dChzaGFyZWRbaV0pOwo+IC0JCX0KPiAtCj4gLQkJZm9yICg7IGkgPCBjb3VudDsgaSsrKQo+
IC0JCQlkbWFfZmVuY2VfcHV0KHNoYXJlZFtpXSk7Cj4gLQkJa2ZyZWUoc2hhcmVkKTsKPiAtCj4g
LQkJLyoKPiAtCQkgKiBJZiBib3RoIHNoYXJlZCBmZW5jZXMgYW5kIGFuIGV4Y2x1c2l2ZSBmZW5j
ZSBleGlzdCwKPiAtCQkgKiB0aGVuIGJ5IGNvbnN0cnVjdGlvbiB0aGUgc2hhcmVkIGZlbmNlcyBt
dXN0IGJlIGxhdGVyCj4gLQkJICogdGhhbiB0aGUgZXhjbHVzaXZlIGZlbmNlLiBJZiB3ZSBzdWNj
ZXNzZnVsbHkgd2FpdCBmb3IKPiAtCQkgKiBhbGwgdGhlIHNoYXJlZCBmZW5jZXMsIHdlIGtub3cg
dGhhdCB0aGUgZXhjbHVzaXZlIGZlbmNlCj4gLQkJICogbXVzdCBhbGwgYmUgc2lnbmFsZWQuIElm
IGFsbCB0aGUgc2hhcmVkIGZlbmNlcyBhcmUKPiAtCQkgKiBzaWduYWxlZCwgd2UgY2FuIHBydW5l
IHRoZSBhcnJheSBhbmQgcmVjb3ZlciB0aGUKPiAtCQkgKiBmbG9hdGluZyByZWZlcmVuY2VzIG9u
IHRoZSBmZW5jZXMvcmVxdWVzdHMuCj4gLQkJICovCj4gLQkJcHJ1bmVfZmVuY2VzID0gY291bnQg
JiYgdGltZW91dCA+PSAwOwo+IC0JfSBlbHNlIHsKPiAtCQlleGNsID0gcmVzZXJ2YXRpb25fb2Jq
ZWN0X2dldF9leGNsX3JjdShyZXN2KTsKPiAtCX0KPiAtCj4gLQlpZiAoZXhjbCAmJiB0aW1lb3V0
ID49IDApCj4gLQkJdGltZW91dCA9IGk5MTVfZ2VtX29iamVjdF93YWl0X2ZlbmNlKGV4Y2wsIGZs
YWdzLCB0aW1lb3V0KTsKPiAtCj4gLQlkbWFfZmVuY2VfcHV0KGV4Y2wpOwo+IC0KPiAtCS8qCj4g
LQkgKiBPcHBvcnR1bmlzdGljYWxseSBwcnVuZSB0aGUgZmVuY2VzIGlmZiB3ZSBrbm93IHRoZXkg
aGF2ZSAqYWxsKiBiZWVuCj4gLQkgKiBzaWduYWxlZCBhbmQgdGhhdCB0aGUgcmVzZXJ2YXRpb24g
b2JqZWN0IGhhcyBub3QgYmVlbiBjaGFuZ2VkIChpLmUuCj4gLQkgKiBubyBuZXcgZmVuY2VzIGhh
dmUgYmVlbiBhZGRlZCkuCj4gLQkgKi8KPiAtCWlmIChwcnVuZV9mZW5jZXMgJiYgIV9fcmVhZF9z
ZXFjb3VudF9yZXRyeSgmcmVzdi0+c2VxLCBzZXEpKSB7Cj4gLQkJaWYgKHJlc2VydmF0aW9uX29i
amVjdF90cnlsb2NrKHJlc3YpKSB7Cj4gLQkJCWlmICghX19yZWFkX3NlcWNvdW50X3JldHJ5KCZy
ZXN2LT5zZXEsIHNlcSkpCj4gLQkJCQlyZXNlcnZhdGlvbl9vYmplY3RfYWRkX2V4Y2xfZmVuY2Uo
cmVzdiwgTlVMTCk7Cj4gLQkJCXJlc2VydmF0aW9uX29iamVjdF91bmxvY2socmVzdik7Cj4gLQkJ
fQo+IC0JfQo+IC0KPiAtCXJldHVybiB0aW1lb3V0Owo+IC19Cj4gLQo+IC1zdGF0aWMgdm9pZCBf
X2ZlbmNlX3NldF9wcmlvcml0eShzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwKPiAtCQkJCSBjb25z
dCBzdHJ1Y3QgaTkxNV9zY2hlZF9hdHRyICphdHRyKQo+IC17Cj4gLQlzdHJ1Y3QgaTkxNV9yZXF1
ZXN0ICpycTsKPiAtCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZTsKPiAtCj4gLQlpZiAo
ZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGZlbmNlKSB8fCAhZG1hX2ZlbmNlX2lzX2k5MTUoZmVuY2Up
KQo+IC0JCXJldHVybjsKPiAtCj4gLQlycSA9IHRvX3JlcXVlc3QoZmVuY2UpOwo+IC0JZW5naW5l
ID0gcnEtPmVuZ2luZTsKPiAtCj4gLQlsb2NhbF9iaF9kaXNhYmxlKCk7Cj4gLQlyY3VfcmVhZF9s
b2NrKCk7IC8qIFJDVSBzZXJpYWxpc2F0aW9uIGZvciBzZXQtd2VkZ2VkIHByb3RlY3Rpb24gKi8K
PiAtCWlmIChlbmdpbmUtPnNjaGVkdWxlKQo+IC0JCWVuZ2luZS0+c2NoZWR1bGUocnEsIGF0dHIp
Owo+IC0JcmN1X3JlYWRfdW5sb2NrKCk7Cj4gLQlsb2NhbF9iaF9lbmFibGUoKTsgLyoga2ljayB0
aGUgdGFza2xldHMgaWYgcXVldWVzIHdlcmUgcmVwcmlvcml0aXNlZCAqLwo+IC19Cj4gLQo+IC1z
dGF0aWMgdm9pZCBmZW5jZV9zZXRfcHJpb3JpdHkoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UsCj4g
LQkJCSAgICAgICBjb25zdCBzdHJ1Y3QgaTkxNV9zY2hlZF9hdHRyICphdHRyKQo+IC17Cj4gLQkv
KiBSZWN1cnNlIG9uY2UgaW50byBhIGZlbmNlLWFycmF5ICovCj4gLQlpZiAoZG1hX2ZlbmNlX2lz
X2FycmF5KGZlbmNlKSkgewo+IC0JCXN0cnVjdCBkbWFfZmVuY2VfYXJyYXkgKmFycmF5ID0gdG9f
ZG1hX2ZlbmNlX2FycmF5KGZlbmNlKTsKPiAtCQlpbnQgaTsKPiAtCj4gLQkJZm9yIChpID0gMDsg
aSA8IGFycmF5LT5udW1fZmVuY2VzOyBpKyspCj4gLQkJCV9fZmVuY2Vfc2V0X3ByaW9yaXR5KGFy
cmF5LT5mZW5jZXNbaV0sIGF0dHIpOwo+IC0JfSBlbHNlIHsKPiAtCQlfX2ZlbmNlX3NldF9wcmlv
cml0eShmZW5jZSwgYXR0cik7Cj4gLQl9Cj4gLX0KPiAtCj4gLWludAo+IC1pOTE1X2dlbV9vYmpl
Y3Rfd2FpdF9wcmlvcml0eShzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLAo+IC0JCQkg
ICAgICB1bnNpZ25lZCBpbnQgZmxhZ3MsCj4gLQkJCSAgICAgIGNvbnN0IHN0cnVjdCBpOTE1X3Nj
aGVkX2F0dHIgKmF0dHIpCj4gLXsKPiAtCXN0cnVjdCBkbWFfZmVuY2UgKmV4Y2w7Cj4gLQo+IC0J
aWYgKGZsYWdzICYgSTkxNV9XQUlUX0FMTCkgewo+IC0JCXN0cnVjdCBkbWFfZmVuY2UgKipzaGFy
ZWQ7Cj4gLQkJdW5zaWduZWQgaW50IGNvdW50LCBpOwo+IC0JCWludCByZXQ7Cj4gLQo+IC0JCXJl
dCA9IHJlc2VydmF0aW9uX29iamVjdF9nZXRfZmVuY2VzX3JjdShvYmotPnJlc3YsCj4gLQkJCQkJ
CQkmZXhjbCwgJmNvdW50LCAmc2hhcmVkKTsKPiAtCQlpZiAocmV0KQo+IC0JCQlyZXR1cm4gcmV0
Owo+IC0KPiAtCQlmb3IgKGkgPSAwOyBpIDwgY291bnQ7IGkrKykgewo+IC0JCQlmZW5jZV9zZXRf
cHJpb3JpdHkoc2hhcmVkW2ldLCBhdHRyKTsKPiAtCQkJZG1hX2ZlbmNlX3B1dChzaGFyZWRbaV0p
Owo+IC0JCX0KPiAtCj4gLQkJa2ZyZWUoc2hhcmVkKTsKPiAtCX0gZWxzZSB7Cj4gLQkJZXhjbCA9
IHJlc2VydmF0aW9uX29iamVjdF9nZXRfZXhjbF9yY3Uob2JqLT5yZXN2KTsKPiAtCX0KPiAtCj4g
LQlpZiAoZXhjbCkgewo+IC0JCWZlbmNlX3NldF9wcmlvcml0eShleGNsLCBhdHRyKTsKPiAtCQlk
bWFfZmVuY2VfcHV0KGV4Y2wpOwo+IC0JfQo+IC0JcmV0dXJuIDA7Cj4gLX0KPiAtCj4gLS8qKgo+
IC0gKiBXYWl0cyBmb3IgcmVuZGVyaW5nIHRvIHRoZSBvYmplY3QgdG8gYmUgY29tcGxldGVkCj4g
LSAqIEBvYmo6IGk5MTUgZ2VtIG9iamVjdAo+IC0gKiBAZmxhZ3M6IGhvdyB0byB3YWl0ICh1bmRl
ciBhIGxvY2ssIGZvciBhbGwgcmVuZGVyaW5nIG9yIGp1c3QgZm9yIHdyaXRlcyBldGMpCj4gLSAq
IEB0aW1lb3V0OiBob3cgbG9uZyB0byB3YWl0Cj4gLSAqLwo+IC1pbnQKPiAtaTkxNV9nZW1fb2Jq
ZWN0X3dhaXQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKPiAtCQkgICAgIHVuc2ln
bmVkIGludCBmbGFncywKPiAtCQkgICAgIGxvbmcgdGltZW91dCkKPiAtewo+IC0JbWlnaHRfc2xl
ZXAoKTsKPiAtCUdFTV9CVUdfT04odGltZW91dCA8IDApOwo+IC0KPiAtCXRpbWVvdXQgPSBpOTE1
X2dlbV9vYmplY3Rfd2FpdF9yZXNlcnZhdGlvbihvYmotPnJlc3YsIGZsYWdzLCB0aW1lb3V0KTsK
PiAtCXJldHVybiB0aW1lb3V0IDwgMCA/IHRpbWVvdXQgOiAwOwo+IC19Cj4gLQo+ICBzdGF0aWMg
aW50Cj4gIGk5MTVfZ2VtX3BoeXNfcHdyaXRlKHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpv
YmosCj4gIAkJICAgICBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX3B3cml0ZSAqYXJncywKPiBAQCAtMTA3
Myw4OCArOTAxLDYgQEAgdm9pZCBpOTE1X2dlbV9ydW50aW1lX3N1c3BlbmQoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAJfQo+ICB9Cj4gIAo+IC1zdGF0aWMgdW5zaWduZWQg
bG9uZyB0b193YWl0X3RpbWVvdXQoczY0IHRpbWVvdXRfbnMpCj4gLXsKPiAtCWlmICh0aW1lb3V0
X25zIDwgMCkKPiAtCQlyZXR1cm4gTUFYX1NDSEVEVUxFX1RJTUVPVVQ7Cj4gLQo+IC0JaWYgKHRp
bWVvdXRfbnMgPT0gMCkKPiAtCQlyZXR1cm4gMDsKPiAtCj4gLQlyZXR1cm4gbnNlY3NfdG9famlm
Zmllc190aW1lb3V0KHRpbWVvdXRfbnMpOwo+IC19Cj4gLQo+IC0vKioKPiAtICogaTkxNV9nZW1f
d2FpdF9pb2N0bCAtIGltcGxlbWVudHMgRFJNX0lPQ1RMX0k5MTVfR0VNX1dBSVQKPiAtICogQGRl
djogZHJtIGRldmljZSBwb2ludGVyCj4gLSAqIEBkYXRhOiBpb2N0bCBkYXRhIGJsb2IKPiAtICog
QGZpbGU6IGRybSBmaWxlIHBvaW50ZXIKPiAtICoKPiAtICogUmV0dXJucyAwIGlmIHN1Y2Nlc3Nm
dWwsIGVsc2UgYW4gZXJyb3IgaXMgcmV0dXJuZWQgd2l0aCB0aGUgcmVtYWluaW5nIHRpbWUgaW4K
PiAtICogdGhlIHRpbWVvdXQgcGFyYW1ldGVyLgo+IC0gKiAgLUVUSU1FOiBvYmplY3QgaXMgc3Rp
bGwgYnVzeSBhZnRlciB0aW1lb3V0Cj4gLSAqICAtRVJFU1RBUlRTWVM6IHNpZ25hbCBpbnRlcnJ1
cHRlZCB0aGUgd2FpdAo+IC0gKiAgLUVOT05FTlQ6IG9iamVjdCBkb2Vzbid0IGV4aXN0Cj4gLSAq
IEFsc28gcG9zc2libGUsIGJ1dCByYXJlOgo+IC0gKiAgLUVBR0FJTjogaW5jb21wbGV0ZSwgcmVz
dGFydCBzeXNjYWxsCj4gLSAqICAtRU5PTUVNOiBkYW1uCj4gLSAqICAtRU5PREVWOiBJbnRlcm5h
bCBJUlEgZmFpbAo+IC0gKiAgLUU/OiBUaGUgYWRkIHJlcXVlc3QgZmFpbGVkCj4gLSAqCj4gLSAq
IFRoZSB3YWl0IGlvY3RsIHdpdGggYSB0aW1lb3V0IG9mIDAgcmVpbXBsZW1lbnRzIHRoZSBidXN5
IGlvY3RsLiBXaXRoIGFueQo+IC0gKiBub24temVybyB0aW1lb3V0IHBhcmFtZXRlciB0aGUgd2Fp
dCBpb2N0bCB3aWxsIHdhaXQgZm9yIHRoZSBnaXZlbiBudW1iZXIgb2YKPiAtICogbmFub3NlY29u
ZHMgb24gYW4gb2JqZWN0IGJlY29taW5nIHVuYnVzeS4gU2luY2UgdGhlIHdhaXQgaXRzZWxmIGRv
ZXMgc28KPiAtICogd2l0aG91dCBob2xkaW5nIHN0cnVjdF9tdXRleCB0aGUgb2JqZWN0IG1heSBi
ZWNvbWUgcmUtYnVzaWVkIGJlZm9yZSB0aGlzCj4gLSAqIGZ1bmN0aW9uIGNvbXBsZXRlcy4gQSBz
aW1pbGFyIGJ1dCBzaG9ydGVyICogcmFjZSBjb25kaXRpb24gZXhpc3RzIGluIHRoZSBidXN5Cj4g
LSAqIGlvY3RsCj4gLSAqLwo+IC1pbnQKPiAtaTkxNV9nZW1fd2FpdF9pb2N0bChzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2LCB2b2lkICpkYXRhLCBzdHJ1Y3QgZHJtX2ZpbGUgKmZpbGUpCj4gLXsKPiAt
CXN0cnVjdCBkcm1faTkxNV9nZW1fd2FpdCAqYXJncyA9IGRhdGE7Cj4gLQlzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqOwo+IC0Ja3RpbWVfdCBzdGFydDsKPiAtCWxvbmcgcmV0Owo+IC0K
PiAtCWlmIChhcmdzLT5mbGFncyAhPSAwKQo+IC0JCXJldHVybiAtRUlOVkFMOwo+IC0KPiAtCW9i
aiA9IGk5MTVfZ2VtX29iamVjdF9sb29rdXAoZmlsZSwgYXJncy0+Ym9faGFuZGxlKTsKPiAtCWlm
ICghb2JqKQo+IC0JCXJldHVybiAtRU5PRU5UOwo+IC0KPiAtCXN0YXJ0ID0ga3RpbWVfZ2V0KCk7
Cj4gLQo+IC0JcmV0ID0gaTkxNV9nZW1fb2JqZWN0X3dhaXQob2JqLAo+IC0JCQkJICAgSTkxNV9X
QUlUX0lOVEVSUlVQVElCTEUgfAo+IC0JCQkJICAgSTkxNV9XQUlUX1BSSU9SSVRZIHwKPiAtCQkJ
CSAgIEk5MTVfV0FJVF9BTEwsCj4gLQkJCQkgICB0b193YWl0X3RpbWVvdXQoYXJncy0+dGltZW91
dF9ucykpOwo+IC0KPiAtCWlmIChhcmdzLT50aW1lb3V0X25zID4gMCkgewo+IC0JCWFyZ3MtPnRp
bWVvdXRfbnMgLT0ga3RpbWVfdG9fbnMoa3RpbWVfc3ViKGt0aW1lX2dldCgpLCBzdGFydCkpOwo+
IC0JCWlmIChhcmdzLT50aW1lb3V0X25zIDwgMCkKPiAtCQkJYXJncy0+dGltZW91dF9ucyA9IDA7
Cj4gLQo+IC0JCS8qCj4gLQkJICogQXBwYXJlbnRseSBrdGltZSBpc24ndCBhY2N1cmF0ZSBlbm91
Z2ggYW5kIG9jY2FzaW9uYWxseSBoYXMgYQo+IC0JCSAqIGJpdCBvZiBtaXNtYXRjaCBpbiB0aGUg
amlmZmllczwtPm5zZWNzPC0+a3RpbWUgbG9vcC4gU28gcGF0Y2gKPiAtCQkgKiB0aGluZ3MgdXAg
dG8gbWFrZSB0aGUgdGVzdCBoYXBweS4gV2UgYWxsb3cgdXAgdG8gMSBqaWZmeS4KPiAtCQkgKgo+
IC0JCSAqIFRoaXMgaXMgYSByZWdyZXNzaW9uIGZyb20gdGhlIHRpbWVzcGVjLT5rdGltZSBjb252
ZXJzaW9uLgo+IC0JCSAqLwo+IC0JCWlmIChyZXQgPT0gLUVUSU1FICYmICFuc2Vjc190b19qaWZm
aWVzKGFyZ3MtPnRpbWVvdXRfbnMpKQo+IC0JCQlhcmdzLT50aW1lb3V0X25zID0gMDsKPiAtCj4g
LQkJLyogQXNrZWQgdG8gd2FpdCBiZXlvbmQgdGhlIGppZmZpZS9zY2hlZHVsZXIgcHJlY2lzaW9u
PyAqLwo+IC0JCWlmIChyZXQgPT0gLUVUSU1FICYmIGFyZ3MtPnRpbWVvdXRfbnMpCj4gLQkJCXJl
dCA9IC1FQUdBSU47Cj4gLQl9Cj4gLQo+IC0JaTkxNV9nZW1fb2JqZWN0X3B1dChvYmopOwo+IC0J
cmV0dXJuIHJldDsKPiAtfQo+IC0KPiAgc3RhdGljIGludCB3YWl0X2Zvcl9lbmdpbmVzKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICB7Cj4gIAlpZiAod2FpdF9mb3IoaW50ZWxfZW5n
aW5lc19hcmVfaWRsZShpOTE1KSwgSTkxNV9JRExFX0VOR0lORVNfVElNRU9VVCkpIHsKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV91dGlscy5oCj4gaW5kZXggZWRmYzY5YWNkYWFjLi45OTExZjUzMzgyYTUg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oCj4gQEAgLTIxOCwxNiArMjE4LDYgQEAg
c3RhdGljIGlubGluZSB1bnNpZ25lZCBsb25nIG1zZWNzX3RvX2ppZmZpZXNfdGltZW91dChjb25z
dCB1bnNpZ25lZCBpbnQgbSkKPiAgCXJldHVybiBtaW5fdCh1bnNpZ25lZCBsb25nLCBNQVhfSklG
RllfT0ZGU0VULCBqICsgMSk7Cj4gIH0KPiAgCj4gLXN0YXRpYyBpbmxpbmUgdW5zaWduZWQgbG9u
ZyBuc2Vjc190b19qaWZmaWVzX3RpbWVvdXQoY29uc3QgdTY0IG4pCj4gLXsKPiAtCS8qIG5zZWNz
X3RvX2ppZmZpZXM2NCgpIGRvZXMgbm90IGd1YXJkIGFnYWluc3Qgb3ZlcmZsb3cgKi8KPiAtCWlm
IChOU0VDX1BFUl9TRUMgJSBIWiAmJgo+IC0JICAgIGRpdl91NjQobiwgTlNFQ19QRVJfU0VDKSA+
PSBNQVhfSklGRllfT0ZGU0VUIC8gSFopCj4gLQkJcmV0dXJuIE1BWF9KSUZGWV9PRkZTRVQ7Cj4g
LQo+IC0gICAgICAgIHJldHVybiBtaW5fdCh1NjQsIE1BWF9KSUZGWV9PRkZTRVQsIG5zZWNzX3Rv
X2ppZmZpZXM2NChuKSArIDEpOwo+IC19CgpTZWVtcyB0aGF0IHRoZSB3YWl0IHN0dWZmIHdhcyBv
bmx5IHVzZXIgc28gamlmZml5aW5nIHRoZSB0aW1lb3V0LiBKdXN0IGxvb2tzCmdlbmVyaWMgZm9y
IG90aGVyIHVzYWdlIHRvby4KClJldmlld2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3Bw
YWxhQGxpbnV4LmludGVsLmNvbT4KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
