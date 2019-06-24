Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF6B9508C4
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 12:23:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2CDF898E8;
	Mon, 24 Jun 2019 10:23:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BAF8898E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2019 10:23:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jun 2019 03:23:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,411,1557212400"; d="scan'208";a="359517532"
Received: from gaia.fi.intel.com ([10.237.72.169])
 by fmsmga005.fm.intel.com with ESMTP; 24 Jun 2019 03:23:19 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 21D235C060E; Mon, 24 Jun 2019 13:23:08 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156136787988.15678.9866740483242300072@skylake-alporthouse-com>
References: <20190624054315.18910-1-chris@chris-wilson.co.uk>
 <87mui75p8r.fsf@gaia.fi.intel.com>
 <156136787988.15678.9866740483242300072@skylake-alporthouse-com>
Date: Mon, 24 Jun 2019 13:23:08 +0300
Message-ID: <87k1db5lkj.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/19] drm/i915/execlists: Always clear
 ring_pause if we do not submit
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTA2LTI0IDEwOjAzOjQ4KQo+PiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+PiAKPj4gPiBJbiB0aGUgdW5saWtlbHkg
Y2FzZSAodGhhbmsgeW91IENJISksIHdlIG1heSBmaW5kIG91cnNlbHZlcyB3YW50aW5nIHRvCj4+
ID4gaXNzdWUgYSBwcmVlbXB0aW9uIGJ1dCBoYXZpbmcgbm8gcnVubmFibGUgcmVxdWVzdHMgbGVm
dC4gSW4gdGhpcyBjYXNlLAo+PiA+IHdlIHNldCB0aGUgc2VtYXBob3JlIGJlZm9yZSBjb21wdXRp
bmcgdGhlIHByZWVtcHRpb24gYW5kIHNvIG11c3QgdW5zZXQKPj4gPiBpdCBiZWZvcmUgZm9yZ2V0
dGluZyAob3IgZWxzZSB3ZSBsZWF2ZSB0aGUgbWFjaGluZSBidXN5d2FpdGluZyB1bnRpbCB0aGUK
Pj4gPiBuZXh0IHJlcXVlc3QgY29tZXMgYWxvbmcgYW5kIHNvIGxpa2VseSBoYW5nKS4KPj4gPgo+
PiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
Pgo+PiA+IC0tLQo+PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDkg
KysrKysrKystCj4+ID4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDEgZGVsZXRp
b24oLSkKPj4gPgo+PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4+ID4gaW5kZXgg
YzhhMGM5YjMyNzY0Li5lZmNjYzMxODg3ZGUgMTAwNjQ0Cj4+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYwo+PiA+IEBAIC0yMzMsMTMgKzIzMywxOCBAQCBzdGF0aWMgaW5saW5lIHUz
MiBpbnRlbF9od3NfcHJlZW1wdF9hZGRyZXNzKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2lu
ZSkKPj4gPiAgc3RhdGljIGlubGluZSB2b2lkCj4+ID4gIHJpbmdfc2V0X3BhdXNlZChjb25zdCBz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIGludCBzdGF0ZSkKPj4gPiAgewo+PiA+ICsg
ICAgIHUzMiAqc2VtYSA9ICZlbmdpbmUtPnN0YXR1c19wYWdlLmFkZHJbSTkxNV9HRU1fSFdTX1BS
RUVNUFRdOwo+PiA+ICsKPj4gPiArICAgICBpZiAoKnNlbWEgPT0gc3RhdGUpCj4+ID4gKyAgICAg
ICAgICAgICByZXR1cm47Cj4+ID4gKwo+PiAKPj4gU28geW91IHdhbnQgdG8gYXZvaWQgdXNlbGVz
cyB3bWIsIGFzIEkgZG9uJ3Qgc2VlIG90aGVyCj4+IGJlbmVmaXQuIE1ha2VzIHRoaXMgbG9vayBz
dXNwaWNpb3VzbHkgcmFjeSBidXQgc2VlbXMKPj4gdG8gYmUganVzdCBteSB1c3VhbCBwYXJhbm9p
YS4KPgo+IEluc3RlYWQgb2YgdGhlIHJlYWRiYWNrLAo+IAlpZiAoc3RhdGUpCj4gCQl3bWIoKTsK
PiB3b3VsZCBhbHNvIHdvcmssIGlmIHdlIGRpdGNoIG9uZSBoYWxmIHRoZSBwYXJhbm9pYS4gVGhh
dCdzIGJldHRlci4KCk9rLCBhcyB1bnBhdXNpbmcgc2hvdWxkIG5vdCBiZSBzbyBjcml0aWNhbC4g
U28gYm90aCBmb3JtcwpvZiBwYXJhbm9pYSBpcyBmaW5lIHdpdGggbWUuCgpGb3Igd21iIG9uZSBj
YW4gdGhpbmsgb2YgaXQgYXMgYSBwYXJhbm9pYSBvciBvbmUgY2FuIHRoaW5rIGl0IG9mIGFzCmRv
Y3VtZW50YXRpb24uIE9yIGJvdGguCgpSZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5r
dW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cgo+IC1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
