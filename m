Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 897FDC2262
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2019 15:47:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E2226E440;
	Mon, 30 Sep 2019 13:47:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAD2A6E43F
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Sep 2019 13:47:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Sep 2019 06:47:29 -0700
X-IronPort-AV: E=Sophos;i="5.64,567,1559545200"; d="scan'208";a="190260896"
Received: from paaron-mobl.ger.corp.intel.com (HELO [10.251.93.134])
 ([10.251.93.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/AES256-SHA;
 30 Sep 2019 06:47:28 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190930110917.21194-1-chris@chris-wilson.co.uk>
 <20190930113106.27596-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b2d4c209-9f10-8c0b-1a0d-77a92fe5773d@linux.intel.com>
Date: Mon, 30 Sep 2019 14:47:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190930113106.27596-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/selftests: Exercise context
 switching in parallel
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

Ck9uIDMwLzA5LzIwMTkgMTI6MzEsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXZSBjdXJyZW50bHkg
dGVzdCBjb250ZXh0IHN3aXRjaGluZyBvbiBlYWNoIGVuZ2luZSBhcyBhIGJhc2ljIHN0cmVzcwo+
IHRlc3QgKGp1c3QgdmVyaWZ5aW5nIHRoYXQgbm90aGluZyBleHBsb2RlcyBpZiB3ZSBleGVjdXRl
IDIgcmVxdWVzdHMgZnJvbQo+IGRpZmZlcmVudCBjb250ZXh0cyBzZXF1ZW50aWFsbHkpLiBXaGF0
IHdlIGhhdmUgbm90IHRlc3RlZCBpcyB3aGF0Cj4gaGFwcGVucyBpZiB3ZSB0cnkgYW5kIGRvIHNv
IG9uIGFsbCBhdmFpbGFibGUgZW5naW5lcyBzaW11bHRhbmVvdXNseSwKPiBwdXR0aW5nIG91ciBT
VyBhbmQgdGhlIEhXIHVuZGVyIHRoZSBtYXhpbWFsIHN0cmVzcy4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTWlrYSBLdW9w
cGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gS2VlcCBzdHJ1Y3Rf
bXV0ZXggdGhlIG91dGVyIGxvY2sgd2hpbGUgaXQgc3RpbGwgZXhpc3RzCj4gLS0tCj4gICAuLi4v
ZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMgfCAyMDMgKysrKysrKysr
KysrKysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgMjAzIGluc2VydGlvbnMoKykKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250
ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRl
eHQuYwo+IGluZGV4IGRjMjViY2MzZTM3Mi4uODMyNWM3MzI5ZGM3IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1fY29udGV4dC5jCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMK
PiBAQCAtMTU2LDYgKzE1NiwyMDggQEAgc3RhdGljIGludCBsaXZlX25vcF9zd2l0Y2godm9pZCAq
YXJnKQo+ICAgCXJldHVybiBlcnI7Cj4gICB9Cj4gICAKPiArc3RydWN0IHBhcmFsbGVsX3N3aXRj
aCB7Cj4gKwlzdHJ1Y3QgdGFza19zdHJ1Y3QgKnRzazsKPiArCXN0cnVjdCBpbnRlbF9jb250ZXh0
ICpjZVsyXTsKPiArfTsKPiArCj4gK3N0YXRpYyBpbnQgX19saXZlX3BhcmFsbGVsX3N3aXRjaDEo
dm9pZCAqZGF0YSkKPiArewo+ICsJc3RydWN0IHBhcmFsbGVsX3N3aXRjaCAqYXJnID0gZGF0YTsK
PiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gYXJnLT5jZVswXS0+ZW5naW5lLT5p
OTE1Owo+ICsJSUdUX1RJTUVPVVQoZW5kX3RpbWUpOwo+ICsJdW5zaWduZWQgbG9uZyBjb3VudDsK
PiArCj4gKwljb3VudCA9IDA7Cj4gKwlkbyB7Cj4gKwkJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7
Cj4gKwkJaW50IGVycjsKPiArCj4gKwkJbXV0ZXhfbG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRl
eCk7Cj4gKwkJcnEgPSBpOTE1X3JlcXVlc3RfY3JlYXRlKGFyZy0+Y2VbMF0pOwo+ICsJCWlmIChJ
U19FUlIocnEpKSB7Cj4gKwkJCW11dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7
Cj4gKwkJCXJldHVybiBQVFJfRVJSKHJxKTsKPiArCQl9Cj4gKwo+ICsJCWk5MTVfcmVxdWVzdF9h
ZGQocnEpOwo+ICsJCW11dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7Cj4gKwo+
ICsJCW11dGV4X2xvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwoKdW5sb2NrLWxvY2shIDop
IEkgZ3Vlc3MgaW4gYW50aWNpcGF0aW9uIG9mIHJlbW92aW5nIGl0IGFsbC4KCj4gKwkJcnEgPSBp
OTE1X3JlcXVlc3RfY3JlYXRlKGFyZy0+Y2VbMV0pOwo+ICsJCWlmIChJU19FUlIocnEpKSB7Cj4g
KwkJCW11dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7Cj4gKwkJCXJldHVybiBQ
VFJfRVJSKHJxKTsKPiArCQl9Cj4gKwo+ICsJCWk5MTVfcmVxdWVzdF9nZXQocnEpOwo+ICsJCWk5
MTVfcmVxdWVzdF9hZGQocnEpOwo+ICsJCW11dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9t
dXRleCk7Cj4gKwo+ICsJCWVyciA9IDA7Cj4gKwkJaWYgKGk5MTVfcmVxdWVzdF93YWl0KHJxLCAw
LCBIWiAvIDUpIDwgMCkKPiArCQkJZXJyID0gLUVUSU1FOwo+ICsJCWk5MTVfcmVxdWVzdF9wdXQo
cnEpOwo+ICsJCWlmIChlcnIpCj4gKwkJCXJldHVybiBlcnI7Cj4gKwo+ICsJCWNvdW50Kys7Cj4g
Kwl9IHdoaWxlICghX19pZ3RfdGltZW91dChlbmRfdGltZSwgTlVMTCkpOwo+ICsKPiArCXByX2lu
Zm8oIiVzOiAlbHUgc3dpdGNoZXMgKHN5bmMpXG4iLCBhcmctPmNlWzBdLT5lbmdpbmUtPm5hbWUs
IGNvdW50KTsKPiArCXJldHVybiAwOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IF9fbGl2ZV9wYXJh
bGxlbF9zd2l0Y2hOKHZvaWQgKmRhdGEpCj4gK3sKPiArCXN0cnVjdCBwYXJhbGxlbF9zd2l0Y2gg
KmFyZyA9IGRhdGE7Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGFyZy0+Y2Vb
MF0tPmVuZ2luZS0+aTkxNTsKPiArCUlHVF9USU1FT1VUKGVuZF90aW1lKTsKPiArCXVuc2lnbmVk
IGxvbmcgY291bnQ7Cj4gKwo+ICsJY291bnQgPSAwOwo+ICsJZG8gewo+ICsJCXN0cnVjdCBpOTE1
X3JlcXVlc3QgKnJxOwo+ICsKPiArCQltdXRleF9sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4
KTsKPiArCQlycSA9IGk5MTVfcmVxdWVzdF9jcmVhdGUoYXJnLT5jZVswXSk7Cj4gKwkJaWYgKElT
X0VSUihycSkpIHsKPiArCQkJbXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsK
PiArCQkJcmV0dXJuIFBUUl9FUlIocnEpOwo+ICsJCX0KPiArCj4gKwkJaTkxNV9yZXF1ZXN0X2Fk
ZChycSk7Cj4gKwkJbXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKPiArCj4g
KwkJbXV0ZXhfbG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7Cj4gKwkJcnEgPSBpOTE1X3Jl
cXVlc3RfY3JlYXRlKGFyZy0+Y2VbMV0pOwo+ICsJCWlmIChJU19FUlIocnEpKSB7Cj4gKwkJCW11
dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7Cj4gKwkJCXJldHVybiBQVFJfRVJS
KHJxKTsKPiArCQl9Cj4gKwo+ICsJCWk5MTVfcmVxdWVzdF9hZGQocnEpOwo+ICsJCW11dGV4X3Vu
bG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7Cj4gKwo+ICsJCWNvdW50Kys7Cj4gKwl9IHdo
aWxlICghX19pZ3RfdGltZW91dChlbmRfdGltZSwgTlVMTCkpOwo+ICsKPiArCXByX2luZm8oIiVz
OiAlbHUgc3dpdGNoZXMgKG1hbnkpXG4iLCBhcmctPmNlWzBdLT5lbmdpbmUtPm5hbWUsIGNvdW50
KTsKPiArCXJldHVybiAwOwo+ICt9Cj4gKwo+ICtzdGF0aWMgaW50IGxpdmVfcGFyYWxsZWxfc3dp
dGNoKHZvaWQgKmFyZykKPiArewo+ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBh
cmc7Cj4gKwlzdGF0aWMgaW50ICgqIGNvbnN0IGZ1bmNbXSkodm9pZCAqYXJnKSA9IHsKPiArCQlf
X2xpdmVfcGFyYWxsZWxfc3dpdGNoMSwKPiArCQlfX2xpdmVfcGFyYWxsZWxfc3dpdGNoTiwKPiAr
CQlOVUxMLAo+ICsJfTsKPiArCXN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHhbMl07Cj4gKwlz
dHJ1Y3QgcGFyYWxsZWxfc3dpdGNoICpkYXRhOwo+ICsJaW50ICgqIGNvbnN0ICpmbikodm9pZCAq
YXJnKTsKPiArCXN0cnVjdCBkcm1fZmlsZSAqZmlsZTsKPiArCWludCBlcnIgPSAwOwo+ICsJaW50
IG47Cj4gKwo+ICsJLyoKPiArCSAqIENoZWNrIHdlIGNhbiBwcm9jZXNzIHN3aXRjaGVzIG9uIGFs
bCBlbmdpbmVzIHNpbXVsdGFuZW91c2x5Lgo+ICsJICovCj4gKwo+ICsJaWYgKCFEUklWRVJfQ0FQ
UyhpOTE1KS0+aGFzX2xvZ2ljYWxfY29udGV4dHMpCj4gKwkJcmV0dXJuIDA7Cj4gKwo+ICsJZmls
ZSA9IG1vY2tfZmlsZShpOTE1KTsKPiArCWlmIChJU19FUlIoZmlsZSkpCj4gKwkJcmV0dXJuIFBU
Ul9FUlIoZmlsZSk7Cj4gKwo+ICsJZGF0YSA9IGtjYWxsb2MoSTkxNV9OVU1fRU5HSU5FUywgc2l6
ZW9mKCpkYXRhKSwgR0ZQX0tFUk5FTCk7CgpUaGVyZSBpcyBhIGxpdHRsZSBiaXQgb2YgbWl4aW5n
IHVwIEk5MTVfTlVNX0VOR0lORVMgYW5kIGdlbSBlbmdpbmVzIAood2hpY2ggY29udGFpbnMgdGhl
IG51bV9lbmdpbmVzIGZpZWxkKSBpbiB0aGlzIGZ1bmN0aW9uLgoKSSB0aGluayBpdCB3b3VsZCBi
ZSBiZXR0ZXIgdG8gbGltaXQgdG8gb25lIC0gc28gbWF5YmUgZ2V0IHRoZSBjb3VudCBmcm9tIApn
ZW0gZW5naW5lcz8gSXQgY2FuJ3QgY2hhbmdlIGR1cmluZyBzZWxmdGVzdCBzbyBkb24ndCBoYXZl
IHRvIGhhdmUgdGhlbSAKbG9ja2VkIGZvciB0aGUgd2hvbGUgdGltZS4KCj4gKwlpZiAoIWRhdGEp
Cgptb2NrX2ZpbGVfZnJlZQoKPiArCQlyZXR1cm4gLUVOT01FTTsKPiArCj4gKwlmb3IgKG4gPSAw
OyBuIDwgQVJSQVlfU0laRShjdHgpOyBuKyspIHsKPiArCQlzdHJ1Y3QgaTkxNV9nZW1fZW5naW5l
c19pdGVyIGl0Owo+ICsJCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZTsKPiArCj4gKwkJbXV0ZXhf
bG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7Cj4gKwkJY3R4W25dID0gbGl2ZV9jb250ZXh0
KGk5MTUsIGZpbGUpOwo+ICsJCWlmIChJU19FUlIoY3R4W25dKSkgewo+ICsJCQllcnIgPSBQVFJf
RVJSKGN0eFtuXSk7Cj4gKwkJCWdvdG8gb3V0X2xvY2tlZDsKPiArCQl9Cj4gKwo+ICsJCWZvcl9l
YWNoX2dlbV9lbmdpbmUoY2UsCj4gKwkJCQkgICAgaTkxNV9nZW1fY29udGV4dF9sb2NrX2VuZ2lu
ZXMoY3R4W25dKSwgaXQpIHsKPiArCQkJZXJyID0gaW50ZWxfY29udGV4dF9waW4oY2UpOwo+ICsJ
CQlpZiAoZXJyKSB7Cj4gKwkJCQlpOTE1X2dlbV9jb250ZXh0X3VubG9ja19lbmdpbmVzKGN0eFtu
XSk7Cj4gKwkJCQlnb3RvIG91dF9sb2NrZWQ7Cj4gKwkJCX0KPiArCQkJZGF0YVtjZS0+ZW5naW5l
LT5sZWdhY3lfaWR4XS5jZVtuXSA9IGNlOwoKSU1ITyBhIGJpdCBjb25mdXNpbmcgdG8gdXNlIGxl
Z2FjeV9pZHggLSBtYWtlcyBpdCBzb3VuZCBsaWtlIHRoZXJlIGlzIApzb21lIHNpZ25pZmljYW5j
ZSB0byB0aGUgbGVnYWN5IHBhcnQgc28gd2h5IG5vdCBqdXN0IHVzZSBlbmdpbmUtPmlkPwoKPiAr
CQl9Cj4gKwkJaTkxNV9nZW1fY29udGV4dF91bmxvY2tfZW5naW5lcyhjdHhbbl0pOwo+ICsJCW11
dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7Cj4gKwl9Cj4gKwo+ICsJZm9yIChm
biA9IGZ1bmM7ICFlcnIgJiYgKmZuOyBmbisrKSB7Cj4gKwkJc3RydWN0IGlndF9saXZlX3Rlc3Qg
dDsKPiArCQlpbnQgbjsKPiArCj4gKwkJbXV0ZXhfbG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRl
eCk7Cj4gKwkJZXJyID0gaWd0X2xpdmVfdGVzdF9iZWdpbigmdCwgaTkxNSwgX19mdW5jX18sICIi
KTsKPiArCQltdXRleF91bmxvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwo+ICsJCWlmIChl
cnIpCj4gKwkJCWJyZWFrOwo+ICsKPiArCQlmb3IgKG4gPSAwOyBuIDwgSTkxNV9OVU1fRU5HSU5F
UzsgbisrKSB7Cj4gKwkJCWlmIChkYXRhW25dLmNlWzBdID09IE5VTEwgfHwgZGF0YVtuXS5jZVsx
XSA9PSBOVUxMKQo+ICsJCQkJY29udGludWU7Cj4gKwo+ICsJCQlkYXRhW25dLnRzayA9IGt0aHJl
YWRfcnVuKCpmbiwgJmRhdGFbbl0sCj4gKwkJCQkJCSAgImlndC9wYXJhbGxlbDolcyIsCj4gKwkJ
CQkJCSAgZGF0YVtuXS5jZVswXS0+ZW5naW5lLT5uYW1lKTsKPiArCQkJaWYgKElTX0VSUihkYXRh
W25dLnRzaykpIHsKPiArCQkJCWVyciA9IFBUUl9FUlIoZGF0YVtuXS50c2spOwo+ICsJCQkJYnJl
YWs7Cj4gKwkJCX0KPiArCQkJZ2V0X3Rhc2tfc3RydWN0KGRhdGFbbl0udHNrKTsKPiArCQl9Cj4g
Kwo+ICsJCWZvciAobiA9IDA7IG4gPCBJOTE1X05VTV9FTkdJTkVTOyBuKyspIHsKPiArCQkJaW50
IHN0YXR1czsKPiArCj4gKwkJCWlmIChJU19FUlJfT1JfTlVMTChkYXRhW25dLnRzaykpCj4gKwkJ
CQljb250aW51ZTsKPiArCj4gKwkJCXN0YXR1cyA9IGt0aHJlYWRfc3RvcChkYXRhW25dLnRzayk7
Cj4gKwkJCWlmIChzdGF0dXMgJiYgIWVycikKPiArCQkJCWVyciA9IHN0YXR1czsKPiArCj4gKwkJ
CXB1dF90YXNrX3N0cnVjdChkYXRhW25dLnRzayk7Cj4gKwkJCWRhdGFbbl0udHNrID0gTlVMTDsK
PiArCQl9Cj4gKwo+ICsJCW11dGV4X2xvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwo+ICsJ
CWlmIChpZ3RfbGl2ZV90ZXN0X2VuZCgmdCkpCj4gKwkJCWVyciA9IC1FSU87Cj4gKwkJbXV0ZXhf
dW5sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKPiArCX0KPiArCj4gKwltdXRleF9sb2Nr
KCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKPiArb3V0X2xvY2tlZDoKPiArCWZvciAobiA9IDA7
IG4gPCBJOTE1X05VTV9FTkdJTkVTOyBuKyspIHsKPiArCQlpZiAoZGF0YVtuXS5jZVswXSkKPiAr
CQkJaW50ZWxfY29udGV4dF91bnBpbihkYXRhW25dLmNlWzBdKTsKPiArCQlpZiAoZGF0YVtuXS5j
ZVsxXSkKPiArCQkJaW50ZWxfY29udGV4dF91bnBpbihkYXRhW25dLmNlWzFdKTsKPiArCX0KPiAr
CW11dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7Cj4gKwlrZnJlZShkYXRhKTsK
PiArCW1vY2tfZmlsZV9mcmVlKGk5MTUsIGZpbGUpOwo+ICsJcmV0dXJuIGVycjsKPiArfQo+ICsK
PiAgIHN0YXRpYyB1bnNpZ25lZCBsb25nIHJlYWxfcGFnZV9jb3VudChzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX29iamVjdCAqb2JqKQo+ICAgewo+ICAgCXJldHVybiBodWdlX2dlbV9vYmplY3RfcGh5c19z
aXplKG9iaikgPj4gUEFHRV9TSElGVDsKPiBAQCAtMTY4MSw2ICsxODgzLDcgQEAgaW50IGk5MTVf
Z2VtX2NvbnRleHRfbGl2ZV9zZWxmdGVzdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUp
Cj4gICB7Cj4gICAJc3RhdGljIGNvbnN0IHN0cnVjdCBpOTE1X3N1YnRlc3QgdGVzdHNbXSA9IHsK
PiAgIAkJU1VCVEVTVChsaXZlX25vcF9zd2l0Y2gpLAo+ICsJCVNVQlRFU1QobGl2ZV9wYXJhbGxl
bF9zd2l0Y2gpLAo+ICAgCQlTVUJURVNUKGlndF9jdHhfZXhlYyksCj4gICAJCVNVQlRFU1QoaWd0
X2N0eF9yZWFkb25seSksCj4gICAJCVNVQlRFU1QoaWd0X2N0eF9zc2V1KSwKPiAKClJlZ2FyZHMs
CgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
