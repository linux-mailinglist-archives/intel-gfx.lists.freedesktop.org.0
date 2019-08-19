Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4524692275
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 13:32:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A06E789D5C;
	Mon, 19 Aug 2019 11:32:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5B5289D5C
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 11:32:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 04:32:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,403,1559545200"; d="scan'208";a="182839676"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga006.jf.intel.com with ESMTP; 19 Aug 2019 04:32:07 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id D603B5C1F29; Mon, 19 Aug 2019 14:31:21 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156620549366.30002.3962015031126643907@skylake-alporthouse-com>
References: <20190819075835.20065-1-chris@chris-wilson.co.uk>
 <20190819075835.20065-3-chris@chris-wilson.co.uk>
 <87ftlx5yvi.fsf@gaia.fi.intel.com>
 <156620549366.30002.3962015031126643907@skylake-alporthouse-com>
Date: Mon, 19 Aug 2019 14:31:21 +0300
Message-ID: <87a7c55r3q.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 02/18] drm/i915/gt: Mark up the nested
 engine-pm timeline lock as irqsafe
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
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTE5IDA5OjQzOjI5KQo+PiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+PiAKPj4gPiBXZSB1c2UgYSBmYWtlIHRp
bWVsaW5lLT5tdXRleCBsb2NrIHRvIHJlYXNzdXJlIGxvY2tkZXAgdGhhdCB0aGUgdGltZWxpbmUK
Pj4gPiBpcyBhbHdheXMgbG9ja2VkIHdoZW4gZW1pdHRpbmcgcmVxdWVzdHMuIEhvd2V2ZXIsIHRo
ZSB1c2UgaW5zaWRlCj4+ID4gX19lbmdpbmVfcGFyaygpIG1heSBiZSBpbnNpZGUgaGFyZGlycSBh
bmQgc28gbG9ja2RlcCBub3cgY29tcGxhaW5zIGFib3V0Cj4+ID4gdGhlIG1peGVkIGlycS1zdGF0
ZSBvZiB0aGUgbmVzdGVkIGxvY2tlZC4gRGlzYWJsZSBpcnFzIGFyb3VuZCB0aGUKPj4gPiBsb2Nr
ZGVwIHRyYWNraW5nIHRvIGtlZXAgaXQgaGFwcHkuCj4+ID4KPj4gPiBGaXhlczogNmM2OWE0NTQ0
NWFmICgiZHJtL2k5MTUvZ3Q6IE1hcmsgY29udGV4dC0+YWN0aXZlX2NvdW50IGFzIHByb3RlY3Rl
ZCBieSB0aW1lbGluZS0+bXV0ZXgiKQo+PiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+PiA+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AaW50ZWwuY29tPgo+PiA+IENjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxh
QGxpbnV4LmludGVsLmNvbT4KPj4gPiAtLS0KPj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZW5naW5lX3BtLmMgfCAxOCArKysrKysrKysrKysrKysrKysKPj4gPiAgMSBmaWxlIGNo
YW5nZWQsIDE4IGluc2VydGlvbnMoKykKPj4gPgo+PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2VuZ2luZV9wbS5jCj4+ID4gaW5kZXggNWYwM2Y3ZGNhZDcyLi41ZDAwMzc1MTk2OGIg
MTAwNjQ0Cj4+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3Bt
LmMKPj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYwo+
PiA+IEBAIC0zNyw5ICszNywxNSBAQCBzdGF0aWMgaW50IF9fZW5naW5lX3VucGFyayhzdHJ1Y3Qg
aW50ZWxfd2FrZXJlZiAqd2YpCj4+ID4gICAgICAgcmV0dXJuIDA7Cj4+ID4gIH0KPj4gPiAgCj4+
ID4gKyNpZiBJU19FTkFCTEVEKENPTkZJR19MT0NLREVQKQo+PiA+ICsKPj4gPiAgc3RhdGljIGlu
bGluZSB2b2lkIF9fdGltZWxpbmVfbWFya19sb2NrKHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkK
Pj4gPiAgewo+PiA+ICsgICAgIHVuc2lnbmVkIGxvbmcgZmxhZ3M7Cj4+ID4gKwo+PiA+ICsgICAg
IGxvY2FsX2lycV9zYXZlKGZsYWdzKTsKPj4gPiAgICAgICBtdXRleF9hY3F1aXJlKCZjZS0+dGlt
ZWxpbmUtPm11dGV4LmRlcF9tYXAsIDIsIDAsIF9USElTX0lQXyk7Cj4+ID4gKyAgICAgbG9jYWxf
aXJxX3Jlc3RvcmUoZmxhZ3MpOwo+PiAKPj4gSSBhbSBzdGFydGluZyB0byBoYXZlIHNlY29uZCB0
aG91Z2h0cy4gT25lIGNvdWxkIGFyZ3VlIHRoYXQgdGhlCj4+IG5ldCBlZmZlY3QgaXMgb24gcG9z
aXRpdmUgc2lkZS4KPj4gCj4+IEJ1dCB3ZSBkaXZlcmdlIG9uIGJlaGF2aW91ciBub3cuCj4KPiBB
cmUgeW91IHdvcnJ5aW5nIGFib3V0IHRoZSAjaWYtI2Vsc2UgYW5kIGFjY2lkZW50YWxseSBzdGlj
a2luZyBtb3JlIGNvZGUKPiBpbiB0aGVyZT8KCkp1c3QgdGhlIGRldGFpbCB0aGF0IG5vdyB3aXRo
IGxvY2tkZXAgd2UgY2hhbmdlIHRoZSBpcnEgcGF0dGVybgpidXQgbm93IHRoaW5raW5nIGFib3V0
IGl0IG1vcmUsIHdpdGggdGhpcyBibG9jayBpdCBzaG91bGQgbm90IG1hdHRlcgphdCBhbGwuIFNv
IGNvdWxkIGJlIHRoYXQgbXkgY29uY2VybiBpcyB0b3RhbGx5IGJvZ3VzLgoKLU1pa2EKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
