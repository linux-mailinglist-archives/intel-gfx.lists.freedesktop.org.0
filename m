Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B496445E
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 11:29:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA9E589F3B;
	Wed, 10 Jul 2019 09:29:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9C3389F3B
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 09:29:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17195997-1500050 for multiple; Wed, 10 Jul 2019 10:28:57 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190707210024.26192-1-chris@chris-wilson.co.uk>
 <20190707210024.26192-6-chris@chris-wilson.co.uk>
 <87zhlmz1gf.fsf@gaia.fi.intel.com>
In-Reply-To: <87zhlmz1gf.fsf@gaia.fi.intel.com>
Message-ID: <156275093607.11940.12963522231025244274@skylake-alporthouse-com>
Date: Wed, 10 Jul 2019 10:28:56 +0100
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA3LTEwIDEwOjI0OjQ4KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBUaGUgcmFkaXggbGV2
ZWxzIG9mIGVhY2ggcGFnZSBkaXJlY3RvcnkgYXJlIGVhc2lseSBkZXRlcm1pbmVkIHNvIHJlcGxh
Y2UKPiA+IHRoZSBudW1lcm91cyBoYXJkY29kZWQgY29uc3RhbnRzIHdpdGggcHJlY29tcHV0ZWQg
ZGVyaXZlZCBjb25zdGFudHMuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9ndHQuYyB8IDM5ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiAg
MSBmaWxlIGNoYW5nZWQsIDM5IGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbV9ndHQuYwo+ID4gaW5kZXggMmZjNjBlOGFjZDlhLi4yNzEzMDU3MDVjMWMgMTAwNjQ0
Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9ndHQuYwo+ID4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMKPiA+IEBAIC04NjgsNiArODY4LDQ1
IEBAIHN0YXRpYyBpbnQgZ2VuOF9wcGd0dF9ub3RpZnlfdmd0KHN0cnVjdCBpOTE1X3BwZ3R0ICpw
cGd0dCwgYm9vbCBjcmVhdGUpCj4gPiAgICAgICByZXR1cm4gMDsKPiA+ICB9Cj4gPiAgCj4gPiAr
LyogSW5kZXggc2hpZnRzIGludG8gdGhlIHBhZ2V0YWJsZSBhcmUgb2Zmc2V0IGJ5IEdFTjhfUFRF
X1NISUZUIFsxMl0gKi8KPiA+ICsjZGVmaW5lIGdlbjhfcGRfc2hpZnQobHZsKSAoKGx2bCkgKiBp
bG9nMihJOTE1X1BERVMpKQo+ID4gKyNkZWZpbmUgZ2VuOF9wZF9pbmRleChpLCBsdmwpIGk5MTVf
cGRlX2luZGV4KChpKSwgZ2VuOF9wZF9zaGlmdChsdmwpKQo+ID4gKyNkZWZpbmUgX19nZW44X3B0
ZV9zaGlmdChsdmwpIChHRU44X1BURV9TSElGVCArIGdlbjhfcGRfc2hpZnQobHZsKSkKPiA+ICsj
ZGVmaW5lIF9fZ2VuOF9wdGVfaW5kZXgoYSwgbHZsKSBpOTE1X3BkZV9pbmRleCgoYSksIF9fZ2Vu
OF9wdGVfc2hpZnQobHZsKSkKPiA+ICsKPiA+ICtzdGF0aWMgaW5saW5lIHVuc2lnbmVkIGludAo+
ID4gK2dlbjhfcGRfcmFuZ2UodTY0IGFkZHIsIHU2NCBlbmQsIGludCBsdmwsIHVuc2lnbmVkIGlu
dCAqaWR4KQo+ID4gK3sKPiA+ICsgICAgIGNvbnN0IGludCBzaGlmdCA9IGdlbjhfcGRfc2hpZnQo
bHZsKTsKPiA+ICsgICAgIGNvbnN0IHU2NCBtYXNrID0gfjB1bGwgPDwgZ2VuOF9wZF9zaGlmdChs
dmwgKyAxKTsKPiA+ICsKPiA+ICsgICAgIEdFTV9CVUdfT04oYWRkciA+PSBlbmQpOwo+IAo+IEdF
TV9CVUdfT04oIWx2bCkgPwoKSXQgd29ya2VkIGZvciAhbHZsIHNvIEkgbGVmdCBpdCBvdXQuCgo+
ID4gKyAgICAgZW5kICs9IH5tYXNrID4+IGdlbjhfcGRfc2hpZnQoMSk7Cj4gPiArCj4gPiArICAg
ICAqaWR4ID0gaTkxNV9wZGVfaW5kZXgoYWRkciwgc2hpZnQpOwo+IAo+IEFzIEkgc2VlIG5vIHVz
YWdlIG9mIHRoaXMgbWFjcm8geWV0LCB0aGlzIGxvb2tzCj4gd3JvbmcgYXMgdGhlIHNoaWZ0IGRv
ZXNuJ3QgaW5jbHVkZSB0aGUgcHRlIHNoaWZ0PwoKV2h5IHdvdWxkIGl0IHNpbmNlIEknbSBub3Qg
d29ya2luZyBvbiBwYWdlIGFkZHJlc3NlcyBidXQgcGQgaW5kaWNlcz8gOi1wCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
