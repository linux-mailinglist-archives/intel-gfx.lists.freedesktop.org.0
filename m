Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A356C3428
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2019 14:23:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50E0F6E62C;
	Tue,  1 Oct 2019 12:23:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34B9C6E634
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Oct 2019 12:23:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18679442-1500050 for multiple; Tue, 01 Oct 2019 13:23:04 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191001094526.30083-1-chris@chris-wilson.co.uk>
 <20191001095111.3912-1-chris@chris-wilson.co.uk>
 <527dcfb5-ca40-ceb9-9351-80456591b752@linux.intel.com>
In-Reply-To: <527dcfb5-ca40-ceb9-9351-80456591b752@linux.intel.com>
Message-ID: <156993257911.1880.5792739591895468114@skylake-alporthouse-com>
Date: Tue, 01 Oct 2019 13:22:59 +0100
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0wMSAxMzoxNjoxOSkKPiAKPiBPbiAwMS8x
MC8yMDE5IDEwOjUxLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiArCj4gPiArICAgICAgICAgICAg
ICAgICAgICAgLyoKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgKiBTZXR1cCB0aGUgcGFpciBv
ZiBjb250ZXh0cyBzdWNoIHRoYXQgaWYgd2UKPiA+ICsgICAgICAgICAgICAgICAgICAgICAgKiBs
aXRlLXJlc3RvcmUgdXNpbmcgdGhlIFJJTkdfVEFJTCBmcm9tIGNlWzFdIGl0Cj4gPiArICAgICAg
ICAgICAgICAgICAgICAgICogd2lsbCBleGVjdXRlIGdhcmJhZ2UgZnJvbSBjZVswXS0+cmluZy4K
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgKi8KPiA+ICsgICAgICAgICAgICAgICAgICAgICBt
ZW1zZXQoY2Vbbl0tPnJpbmctPnZhZGRyLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBQT0lTT05fSU5VU0UsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNlW25dLT5y
aW5nLT52bWEtPnNpemUpOwo+ID4gKyAgICAgICAgICAgICB9Cj4gPiArICAgICAgICAgICAgIGlu
dGVsX3JpbmdfcmVzZXQoY2VbMV0tPnJpbmcsIGNlWzFdLT5yaW5nLT52bWEtPnNpemUgLyAyKTsK
PiA+ICsgICAgICAgICAgICAgX19leGVjbGlzdHNfdXBkYXRlX3JlZ19zdGF0ZShjZVsxXSwgZW5n
aW5lKTsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgcnFbMF0gPSBpZ3Rfc3Bpbm5lcl9jcmVhdGVf
cmVxdWVzdCgmc3BpbiwgY2VbMF0sIE1JX0FSQl9DSEVDSyk7Cj4gPiArICAgICAgICAgICAgIGlm
IChJU19FUlIocnFbMF0pKSB7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgZXJyID0gUFRSX0VS
UihycVswXSk7Cj4gPiArICAgICAgICAgICAgICAgICAgICAgZ290byBlcnJfY2U7Cj4gPiArICAg
ICAgICAgICAgIH0KPiA+ICsKPiA+ICsgICAgICAgICAgICAgR0VNX0JVR19PTihycVswXS0+dGFp
bCA+IGNlWzFdLT5yaW5nLT5lbWl0KTsKPiA+ICsgICAgICAgICAgICAgaTkxNV9yZXF1ZXN0X2dl
dChycVswXSk7Cj4gPiArICAgICAgICAgICAgIGk5MTVfcmVxdWVzdF9hZGQocnFbMF0pOwo+ID4g
Kwo+ID4gKyAgICAgICAgICAgICBpZiAoIWlndF93YWl0X2Zvcl9zcGlubmVyKCZzcGluLCBycVsw
XSkpIHsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBpOTE1X3JlcXVlc3RfcHV0KHJxWzBdKTsK
PiA+ICsgICAgICAgICAgICAgICAgICAgICBnb3RvIGVycl9jZTsKPiA+ICsgICAgICAgICAgICAg
fQo+ID4gKwo+ID4gKyAgICAgICAgICAgICBycVsxXSA9IGk5MTVfcmVxdWVzdF9jcmVhdGUoY2Vb
MV0pOwo+ID4gKyAgICAgICAgICAgICBpZiAoSVNfRVJSKHJxWzFdKSkgewo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgIGVyciA9IFBUUl9FUlIocnFbMV0pOwo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgIGk5MTVfcmVxdWVzdF9wdXQocnFbMF0pOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGdv
dG8gZXJyX2NlOwo+ID4gKyAgICAgICAgICAgICB9Cj4gPiArICAgICAgICAgICAgIEdFTV9CVUdf
T04ocnFbMV0tPnRhaWwgPD0gcnFbMF0tPnRhaWwpOwo+ID4gKwo+ID4gKyAgICAgICAgICAgICAv
KiBFbnN1cmUgd2UgZG8gYSBjb21wbGV0aW9uIHN3aXRjaCBmcm9tIGNlWzBdIHRvIGNlWzFdICov
Cj4gPiArICAgICAgICAgICAgIGk5MTVfcmVxdWVzdF9hd2FpdF9kbWFfZmVuY2UocnFbMV0sICZy
cVswXS0+ZmVuY2UpOwo+IAo+IFdoYXQgZG8geW91IG1lYW4gYnkgY29tcGxldGlvbiBzd2l0Y2g/
IFlvdSBhcmUgc2V0dGluZyB1cCBhIGRlcGVuZGVuY3kgCj4gc28gcnFbMV0gKGFuZCBycVsyXSkg
d29uJ3QgYmUgcHV0IGludG8gdGhlIGVsc3AgdW50aWwgc3Bpbm5lciBpcyBlbmRlZCAKPiBzbyBp
dCBtYXkgbm90IGV2ZW4gYmUgYSBjb250ZXh0IHN3aXRjaC4gV291bGRuJ3QgeW91IGFjdHVhbGx5
IG5lZWQgdGhlIAo+IG9wcG9zaXRlPyBJIHdhcyBleHBlY3RpbmcgeW91IHdvdWxkIGxldCB0aGUg
c3Bpbm5lciBydW4sIG1ha2Ugc3VyZSBycVsxXSAKPiBpcyBpbiBlbHNwIGFuZCB0aGVuIGNvdW50
IG9uIHRpbWUgc2xpY2luZyB0byB0cmlnZ2VyIGEgY29udGV4dCBzd2l0Y2guCgpUaGUgdGVzdCBJ
IGhhZCBpbiBtaW5kIHdhcyB0byBoYXZlCgoJRUxTUFswXSA9IGNlWzBdCglFTFNQWzFdID0gY2Vb
MV0KCmFuZCBzbyBjaG9zZSB0byBwcmV2ZW50IGFueSB0aW1lc2xpY2luZyByZW9yZGVyaW5nIHRo
YXQuIFNhbWUgZW5naW5lLCBzbwppdCB3aWxsIGFkZCBhIHdhaXQtb24tc3VibWl0LWZlbmNlIChp
LmUuIGEgbm8tb3ApIGJ1dCB3b3VsZCBpbnN0YWxsIHRoZQpkZXBlbmRlbmN5IGxpbmsgdG8gcHJl
dmVudCBhbnkgcmVvcmRlcmluZy4KCkEgc2Vjb25kIHRlc3QgdG8gaGF2ZSB0aGUgc3Bpbm5lciBy
dW5uaW5nIHRoZW4gdXNpbmcgcHJpb3JpdHkgdG8gcHJlZW1wdAppdCwgc2VlbXMgbGlrZSBhIGdv
b2QgYWRkaXRpb24uCi1DaHJpcwogCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
