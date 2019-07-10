Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A16B648BA
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 16:56:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C2286E0E1;
	Wed, 10 Jul 2019 14:56:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E2846E0E1
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 14:56:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 07:56:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,474,1557212400"; d="scan'208";a="170941545"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga006.jf.intel.com with ESMTP; 10 Jul 2019 07:56:04 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 84EB45C1EC2; Wed, 10 Jul 2019 17:55:52 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <87pnmiq9ta.fsf@gaia.fi.intel.com>
References: <20190707210024.26192-1-chris@chris-wilson.co.uk>
 <20190707210024.26192-6-chris@chris-wilson.co.uk>
 <87pnmiq9ta.fsf@gaia.fi.intel.com>
Date: Wed, 10 Jul 2019 17:55:52 +0300
Message-ID: <87a7dmq6pz.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 05/11] drm/i915/gtt: Compute the radix for
 gen8 page table levels
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

TWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+IHdyaXRlczoKCj4g
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKPgo+PiBUaGUg
cmFkaXggbGV2ZWxzIG9mIGVhY2ggcGFnZSBkaXJlY3RvcnkgYXJlIGVhc2lseSBkZXRlcm1pbmVk
IHNvIHJlcGxhY2UKPj4gdGhlIG51bWVyb3VzIGhhcmRjb2RlZCBjb25zdGFudHMgd2l0aCBwcmVj
b21wdXRlZCBkZXJpdmVkIGNvbnN0YW50cy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fZ3R0LmMgfCAzOSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKwo+
PiAgMSBmaWxlIGNoYW5nZWQsIDM5IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW1fZ3R0LmMKPj4gaW5kZXggMmZjNjBlOGFjZDlhLi4yNzEzMDU3MDVjMWMgMTAwNjQ0
Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCj4+IEBAIC04NjgsNiArODY4LDQ1IEBA
IHN0YXRpYyBpbnQgZ2VuOF9wcGd0dF9ub3RpZnlfdmd0KHN0cnVjdCBpOTE1X3BwZ3R0ICpwcGd0
dCwgYm9vbCBjcmVhdGUpCj4+ICAJcmV0dXJuIDA7Cj4+ICB9Cj4+ICAKPj4gKy8qIEluZGV4IHNo
aWZ0cyBpbnRvIHRoZSBwYWdldGFibGUgYXJlIG9mZnNldCBieSBHRU44X1BURV9TSElGVCBbMTJd
ICovCj4+ICsjZGVmaW5lIGdlbjhfcGRfc2hpZnQobHZsKSAoKGx2bCkgKiBpbG9nMihJOTE1X1BE
RVMpKQo+Cj4gQ291bGQgYmUganVzdCAobHZsKSAqIDkuIEJ1dCBsb29raW5nIGF0IGlsb2cyKCkg
aXQgd2lsbCBiZQo+IHNvIGJvdGggYXJlIGZpbmUuCj4KPj4gKyNkZWZpbmUgZ2VuOF9wZF9pbmRl
eChpLCBsdmwpIGk5MTVfcGRlX2luZGV4KChpKSwgZ2VuOF9wZF9zaGlmdChsdmwpKQo+PiArI2Rl
ZmluZSBfX2dlbjhfcHRlX3NoaWZ0KGx2bCkgKEdFTjhfUFRFX1NISUZUICsgZ2VuOF9wZF9zaGlm
dChsdmwpKQo+PiArI2RlZmluZSBfX2dlbjhfcHRlX2luZGV4KGEsIGx2bCkgaTkxNV9wZGVfaW5k
ZXgoKGEpLCBfX2dlbjhfcHRlX3NoaWZ0KGx2bCkpCj4+ICsKPj4gK3N0YXRpYyBpbmxpbmUgdW5z
aWduZWQgaW50Cj4+ICtnZW44X3BkX3JhbmdlKHU2NCBhZGRyLCB1NjQgZW5kLCBpbnQgbHZsLCB1
bnNpZ25lZCBpbnQgKmlkeCkKPgo+IEkgd2FzIGVub3VnaCBjb25mdXNlZCAoZXZlbiB0aG8gdGhl
IGxhc3QgZnVuY3Rpb24gcmV2ZWFscwo+IGl0IGNsZWFybHkpIHRoYXQgaW4gaXJjIHdlIGNvbmNs
dWRlZCB0aGF0IGFkZHIgYXMgYQo+IGZpcnN0IHBhcmFtZXRlciBpcyBtaXNsZWFkaW5nIGFuZCBj
b252ZXJnZWQgb24gJ3N0YXJ0Jwo+Cj4+ICt7Cj4+ICsJY29uc3QgaW50IHNoaWZ0ID0gZ2VuOF9w
ZF9zaGlmdChsdmwpOwo+PiArCWNvbnN0IHU2NCBtYXNrID0gfjB1bGwgPDwgZ2VuOF9wZF9zaGlm
dChsdmwgKyAxKTsKPj4gKwo+PiArCUdFTV9CVUdfT04oYWRkciA+PSBlbmQpOwo+PiArCWVuZCAr
PSB+bWFzayA+PiBnZW44X3BkX3NoaWZ0KDEpOwo+PiArCj4+ICsJKmlkeCA9IGk5MTVfcGRlX2lu
ZGV4KGFkZHIsIHNoaWZ0KTsKPj4gKwlpZiAoKGFkZHIgXiBlbmQpICYgbWFzaykKPj4gKwkJcmV0
dXJuIEk5MTVfUERFUyAtICppZHg7Cj4+ICsJZWxzZQo+PiArCQlyZXR1cm4gaTkxNV9wZGVfaW5k
ZXgoZW5kLCBzaGlmdCkgLSAqaWR4Owo+PiArfQo+PiArCj4+ICtzdGF0aWMgaW5saW5lIGJvb2wg
Z2VuOF9wZF9zdWJzdW1lcyh1NjQgYWRkciwgdTY0IGVuZCwgaW50IGx2bCkKPj4gK3sKPgo+IEp1
c3QgYSBzdWdnZXN0aW9uIGdlbjhfcGRfY29udGFpbnMoKSBmb3IgZW1waGFzaXMgb24gZXhjbHVz
aXZpdHkuCj4gQnV0IHdlbGwsIHRoaXMgaXMgZmluZSB0b28uIEkgZ3Vlc3Mgd2hhdCByZWFkcyBi
ZXR0ZXIgaW4gY2FsbHNpdGUsCj4gKHdoaWNoIHdlIGRvbnQgc2VlIHlldCEpCj4KPj4gKwljb25z
dCB1NjQgbWFzayA9IH4wdWxsIDw8IGdlbjhfcGRfc2hpZnQobHZsICsgMSk7Cj4+ICsKPj4gKwlH
RU1fQlVHX09OKGFkZHIgPj0gZW5kKTsKPj4gKwlyZXR1cm4gKGFkZHIgXiBlbmQpICYgbWFzayAm
JiAoYWRkciAmIH5tYXNrKSA9PSAwOwo+PiArfQo+PiArCj4+ICtzdGF0aWMgaW5saW5lIHVuc2ln
bmVkIGludCBnZW44X3B0X2NvdW50KHU2NCBhZGRyLCB1NjQgZW5kKQo+PiArewo+PiArCUdFTV9C
VUdfT04oYWRkciA+PSBlbmQpOwo+PiArCWlmICgoYWRkciBeIGVuZCkgJiB+STkxNV9QREVfTUFT
SykKPj4gKwkJcmV0dXJuIEk5MTVfUERFUyAtIChhZGRyICYgSTkxNV9QREVfTUFTSyk7Cj4KPiBP
aywgSSB5aWVsZCBvbiA1MTIuIEk5MTVfUERFUyBpcyBmaW5lIGFzIGl0IGF0bGVhc3QKPiBjb3Vw
bGVzIGl0IHRvIG1hc2sgOk8KPgo+IFdpdGggcy9hZGRyL3N0YXJ0LAo+Cj4gUmV2aWV3ZWQtYnk6
IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5j
b20+Cgpub3QgbG9uZyB0aWxsIHZhY2F0aW9uLCBoYW5naW5nIHRoZXJlIGJ1dCBpdCBzdGFydHMg
dG8gc2hvdy4uLgoKUmV2aWV3ZWQtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGlu
dXguaW50ZWwuY29tPgoKPgo+PiArCWVsc2UKPj4gKwkJcmV0dXJuIGVuZCAtIGFkZHI7Cj4+ICt9
Cj4+ICsKPj4gIHN0YXRpYyB2b2lkIGdlbjhfZnJlZV9wYWdlX3RhYmxlcyhzdHJ1Y3QgaTkxNV9h
ZGRyZXNzX3NwYWNlICp2bSwKPj4gIAkJCQkgIHN0cnVjdCBpOTE1X3BhZ2VfZGlyZWN0b3J5ICpw
ZCkKPj4gIHsKPj4gLS0gCj4+IDIuMjAuMQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
