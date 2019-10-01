Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 585D8C3438
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 14:30:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31C236E634;
	Tue,  1 Oct 2019 12:30:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 597346E634
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 12:30:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Oct 2019 05:30:40 -0700
X-IronPort-AV: E=Sophos;i="5.64,571,1559545200"; d="scan'208";a="190577054"
Received: from paaron-mobl.ger.corp.intel.com (HELO [10.251.93.134])
 ([10.251.93.134])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/AES256-SHA;
 01 Oct 2019 05:30:39 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191001094526.30083-1-chris@chris-wilson.co.uk>
 <20191001095111.3912-1-chris@chris-wilson.co.uk>
 <527dcfb5-ca40-ceb9-9351-80456591b752@linux.intel.com>
 <156993257911.1880.5792739591895468114@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <59990cbd-eabc-237b-e53c-a293cbb45f00@linux.intel.com>
Date: Tue, 1 Oct 2019 13:30:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156993257911.1880.5792739591895468114@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Exercise potential
 false lite-restore
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

Ck9uIDAxLzEwLzIwMTkgMTM6MjIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTEwLTAxIDEzOjE2OjE5KQo+Pgo+PiBPbiAwMS8xMC8yMDE5IDEwOjUx
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiArCj4+PiArICAgICAgICAgICAgICAgICAgICAgLyoK
Pj4+ICsgICAgICAgICAgICAgICAgICAgICAgKiBTZXR1cCB0aGUgcGFpciBvZiBjb250ZXh0cyBz
dWNoIHRoYXQgaWYgd2UKPj4+ICsgICAgICAgICAgICAgICAgICAgICAgKiBsaXRlLXJlc3RvcmUg
dXNpbmcgdGhlIFJJTkdfVEFJTCBmcm9tIGNlWzFdIGl0Cj4+PiArICAgICAgICAgICAgICAgICAg
ICAgICogd2lsbCBleGVjdXRlIGdhcmJhZ2UgZnJvbSBjZVswXS0+cmluZy4KPj4+ICsgICAgICAg
ICAgICAgICAgICAgICAgKi8KPj4+ICsgICAgICAgICAgICAgICAgICAgICBtZW1zZXQoY2Vbbl0t
PnJpbmctPnZhZGRyLAo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICBQT0lTT05fSU5V
U0UsCj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNlW25dLT5yaW5nLT52bWEtPnNp
emUpOwo+Pj4gKyAgICAgICAgICAgICB9Cj4+PiArICAgICAgICAgICAgIGludGVsX3JpbmdfcmVz
ZXQoY2VbMV0tPnJpbmcsIGNlWzFdLT5yaW5nLT52bWEtPnNpemUgLyAyKTsKPj4+ICsgICAgICAg
ICAgICAgX19leGVjbGlzdHNfdXBkYXRlX3JlZ19zdGF0ZShjZVsxXSwgZW5naW5lKTsKPj4+ICsK
Pj4+ICsgICAgICAgICAgICAgcnFbMF0gPSBpZ3Rfc3Bpbm5lcl9jcmVhdGVfcmVxdWVzdCgmc3Bp
biwgY2VbMF0sIE1JX0FSQl9DSEVDSyk7Cj4+PiArICAgICAgICAgICAgIGlmIChJU19FUlIocnFb
MF0pKSB7Cj4+PiArICAgICAgICAgICAgICAgICAgICAgZXJyID0gUFRSX0VSUihycVswXSk7Cj4+
PiArICAgICAgICAgICAgICAgICAgICAgZ290byBlcnJfY2U7Cj4+PiArICAgICAgICAgICAgIH0K
Pj4+ICsKPj4+ICsgICAgICAgICAgICAgR0VNX0JVR19PTihycVswXS0+dGFpbCA+IGNlWzFdLT5y
aW5nLT5lbWl0KTsKPj4+ICsgICAgICAgICAgICAgaTkxNV9yZXF1ZXN0X2dldChycVswXSk7Cj4+
PiArICAgICAgICAgICAgIGk5MTVfcmVxdWVzdF9hZGQocnFbMF0pOwo+Pj4gKwo+Pj4gKyAgICAg
ICAgICAgICBpZiAoIWlndF93YWl0X2Zvcl9zcGlubmVyKCZzcGluLCBycVswXSkpIHsKPj4+ICsg
ICAgICAgICAgICAgICAgICAgICBpOTE1X3JlcXVlc3RfcHV0KHJxWzBdKTsKPj4+ICsgICAgICAg
ICAgICAgICAgICAgICBnb3RvIGVycl9jZTsKPj4+ICsgICAgICAgICAgICAgfQo+Pj4gKwo+Pj4g
KyAgICAgICAgICAgICBycVsxXSA9IGk5MTVfcmVxdWVzdF9jcmVhdGUoY2VbMV0pOwo+Pj4gKyAg
ICAgICAgICAgICBpZiAoSVNfRVJSKHJxWzFdKSkgewo+Pj4gKyAgICAgICAgICAgICAgICAgICAg
IGVyciA9IFBUUl9FUlIocnFbMV0pOwo+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGk5MTVfcmVx
dWVzdF9wdXQocnFbMF0pOwo+Pj4gKyAgICAgICAgICAgICAgICAgICAgIGdvdG8gZXJyX2NlOwo+
Pj4gKyAgICAgICAgICAgICB9Cj4+PiArICAgICAgICAgICAgIEdFTV9CVUdfT04ocnFbMV0tPnRh
aWwgPD0gcnFbMF0tPnRhaWwpOwo+Pj4gKwo+Pj4gKyAgICAgICAgICAgICAvKiBFbnN1cmUgd2Ug
ZG8gYSBjb21wbGV0aW9uIHN3aXRjaCBmcm9tIGNlWzBdIHRvIGNlWzFdICovCj4+PiArICAgICAg
ICAgICAgIGk5MTVfcmVxdWVzdF9hd2FpdF9kbWFfZmVuY2UocnFbMV0sICZycVswXS0+ZmVuY2Up
Owo+Pgo+PiBXaGF0IGRvIHlvdSBtZWFuIGJ5IGNvbXBsZXRpb24gc3dpdGNoPyBZb3UgYXJlIHNl
dHRpbmcgdXAgYSBkZXBlbmRlbmN5Cj4+IHNvIHJxWzFdIChhbmQgcnFbMl0pIHdvbid0IGJlIHB1
dCBpbnRvIHRoZSBlbHNwIHVudGlsIHNwaW5uZXIgaXMgZW5kZWQKPj4gc28gaXQgbWF5IG5vdCBl
dmVuIGJlIGEgY29udGV4dCBzd2l0Y2guIFdvdWxkbid0IHlvdSBhY3R1YWxseSBuZWVkIHRoZQo+
PiBvcHBvc2l0ZT8gSSB3YXMgZXhwZWN0aW5nIHlvdSB3b3VsZCBsZXQgdGhlIHNwaW5uZXIgcnVu
LCBtYWtlIHN1cmUgcnFbMV0KPj4gaXMgaW4gZWxzcCBhbmQgdGhlbiBjb3VudCBvbiB0aW1lIHNs
aWNpbmcgdG8gdHJpZ2dlciBhIGNvbnRleHQgc3dpdGNoLgo+IAo+IFRoZSB0ZXN0IEkgaGFkIGlu
IG1pbmQgd2FzIHRvIGhhdmUKPiAKPiAJRUxTUFswXSA9IGNlWzBdCj4gCUVMU1BbMV0gPSBjZVsx
XQo+IAo+IGFuZCBzbyBjaG9zZSB0byBwcmV2ZW50IGFueSB0aW1lc2xpY2luZyByZW9yZGVyaW5n
IHRoYXQuIFNhbWUgZW5naW5lLCBzbwo+IGl0IHdpbGwgYWRkIGEgd2FpdC1vbi1zdWJtaXQtZmVu
Y2UgKGkuZS4gYSBuby1vcCkgYnV0IHdvdWxkIGluc3RhbGwgdGhlCj4gZGVwZW5kZW5jeSBsaW5r
IHRvIHByZXZlbnQgYW55IHJlb3JkZXJpbmcuCgpBaCBteSBiYWQsIGRpZCBub3QgdGhpbmsgYWJv
dXQgdGhlIHNhbWUgZW5naW5lIG9wdGltaXNhdGlvbi4gRXhwYW5kIHRoZSAKY29tbWVudD8gOikK
Cj4gQSBzZWNvbmQgdGVzdCB0byBoYXZlIHRoZSBzcGlubmVyIHJ1bm5pbmcgdGhlbiB1c2luZyBw
cmlvcml0eSB0byBwcmVlbXB0Cj4gaXQsIHNlZW1zIGxpa2UgYSBnb29kIGFkZGl0aW9uLgoKUHJp
b3JpdHkgaXQgbW9yZSBjb250cm9sbGFibGUgdGhhbiB0aW1lc2xpY2luZywgdHJ1ZS4KClJlZ2Fy
ZHMsCgpUdnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
