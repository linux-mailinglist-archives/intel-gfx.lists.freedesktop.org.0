Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ECBA7A302
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 10:18:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 426D66E43C;
	Tue, 30 Jul 2019 08:18:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7139B6E43C
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 08:18:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 01:18:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,326,1559545200"; d="scan'208";a="190810913"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 30 Jul 2019 01:17:59 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <87o91coqp9.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190729140847.18557-1-jani.nikula@intel.com>
 <156440976334.6373.17742144058690324554@skylake-alporthouse-com>
 <87o91coqp9.fsf@intel.com>
Date: Tue, 30 Jul 2019 11:22:21 +0300
Message-ID: <87imrknd8i.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: use upstream version of header
 tests
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

T24gTW9uLCAyOSBKdWwgMjAxOSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4g
d3JvdGU6Cj4gT24gTW9uLCAyOSBKdWwgMjAxOSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+IHdyb3RlOgo+PiBRdW90aW5nIEphbmkgTmlrdWxhICgyMDE5LTA3LTI5IDE1
OjA4OjQ3KQo+Pj4gVGhyb3cgb3V0IG91ciBsb2NhbCBoYWNrcyBvZiBoZWFkZXIgdGVzdHMgbm93
IHRoYXQgdGhlIG1vcmUgZ2VuZXJpYwo+Pj4ga2J1aWxkIHZlcnNpb25zIGFyZSB1cHN0cmVhbS4K
Pj4+IAo+Pj4gQXQgbGVhc3QgZm9yIG5vdywgY29udGludWUgdG8ga2VlcCB0aGUgaGVhZGVyIHRl
c3RzIGJlaGluZAo+Pj4gQ09ORklHX0RSTV9JOTE1X1dFUlJPUj15IGtub2IuCj4+PiAKPj4+IENj
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPj4+IFNpZ25lZC1vZmYt
Ynk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4+PiAKPj4+IC0tLQo+Pj4g
Cj4+PiBUZWNobmljYWxseSB0aGUgdXBzdHJlYW0gdmVyc2lvbnMgYXJlIG9ubHkgaW4gZHJtLXRp
cCwgYW5kIG5vdCBpbiBkaW5xCj4+PiB1bnRpbCBhIGJhY2ttZXJnZSwgYnV0IEkgdGhpbmsgaXQn
cyBnb29kIGVub3VnaC4gSSBkb24ndCB0aGluayBpdCBzaG91bGQKPj4+IG1lc3MgYW55dGhpbmcg
dXAuCj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1
ZyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcuZGVidWcKPj4+IGluZGV4IDRjZGMwMTgx
YTA5My4uODdhMzhjNmFhYTQxIDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
S2NvbmZpZy5kZWJ1Zwo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvS2NvbmZpZy5kZWJ1
Zwo+Pj4gQEAgLTcsNiArNyw3IEBAIGNvbmZpZyBEUk1fSTkxNV9XRVJST1IKPj4+ICAgICAgICAg
ICMgV2UgdXNlIHRoZSBkZXBlbmRlbmN5IG9uICFDT01QSUxFX1RFU1QgdG8gbm90IGJlIGVuYWJs
ZWQgaW4KPj4+ICAgICAgICAgICMgYWxsbW9kY29uZmlnIG9yIGFsbHllc2NvbmZpZyBjb25maWd1
cmF0aW9ucwo+Pj4gICAgICAgICAgZGVwZW5kcyBvbiAhQ09NUElMRV9URVNUCj4+PiArICAgICAg
IHNlbGVjdCBIRUFERVJfVEVTVAo+Pj4gICAgICAgICAgZGVmYXVsdCBuCj4+PiAgICAgICAgICBo
ZWxwCj4+PiAgICAgICAgICAgIEFkZCAtV2Vycm9yIHRvIHRoZSBidWlsZCBmbGFncyBmb3IgKGFu
ZCBvbmx5IGZvcikgaTkxNS5rby4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9NYWtlZmlsZSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCj4+PiBpbmRleCA0MmMx
N2E3YjBjYjAuLjMzMWIxOWNjODI0NyAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L01ha2VmaWxlCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQo+Pj4g
QEAgLTMyLDcgKzMyLDcgQEAgc3ViZGlyLWNjZmxhZ3MteSArPSBcCj4+PiAgICAgICAgICQoY2Fs
bCBhcy1pbnN0cixtb3ZudGRxYSAoJWVheCkkKGNvbW1hKSV4bW0wLC1EQ09ORklHX0FTX01PVk5U
RFFBKQo+Pj4gIAo+Pj4gICMgRXh0cmEgaGVhZGVyIHRlc3RzCj4+PiAtaW5jbHVkZSAkKHNyYykv
TWFrZWZpbGUuaGVhZGVyLXRlc3QKPj4+ICtoZWFkZXItdGVzdC1wYXR0ZXJuLSQoQ09ORklHX0RS
TV9JOTE1X1dFUlJPUikgOj0gKi5oCj4+Cj4+IEJ1dCB3b24ndCB0aGF0IGFjdHVhbGx5IGJyZWFr
IGRpbnEgY29tcGlsYXRpb24gdW50aWwgdGhlIGJhY2ttZXJnZT8gRm9yCj4+IHRob3NlIG9mIHVz
IHRoYXQgY29tcGlsZSB3aXRoIFdFUlJPUi4KPgo+IEl0IGJyZWFrcyB0aGUgaGVhZGVyIHRlc3Rp
bmcgYnkgZG9pbmcgbm90aGluZyBpbnN0ZWFkLCBiZWNhdXNlIG9uIGRpbnEKPiB0aG9zZSBoZWFk
ZXItdGVzdC0qIHZhcmlhYmxlcyBkb24ndCBtZWFuIGFueXRoaW5nLgo+Cj4gQWxhcyB0aGlzIGRv
ZXNuJ3QgYXBwbHkgdG8gZGlucSBhbnl3YXkgc28gSSBndWVzcyBJJ2xsIHdhaXQgZm9yIHRoZQo+
IGJhY2ttZXJnZS4KCkdvdCB0aGUgYmFja21lcmdlLCB0aGlzIGFwcGxpZXMgY2xlYW5seSB0byBk
aW5xIGFuZCBzaG91bGQgd29yayBmaW5lCm5vdy4gTWF5IEkgdHJvdWJsZSB5b3UgZm9yIHJldmll
dyBwbGVhc2U/CgpCUiwKSmFuaS4KCgo+Cj4gQlIsCj4gSmFuaS4KPgo+Cj4+IC1DaHJpcwo+PiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBJbnRlbC1n
ZnggbWFpbGluZyBsaXN0Cj4+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4gaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0t
IApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
