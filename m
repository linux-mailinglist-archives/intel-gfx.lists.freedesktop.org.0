Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A9BEFCA2
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 12:47:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55DA36E9F5;
	Tue,  5 Nov 2019 11:47:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DA586E9F5;
 Tue,  5 Nov 2019 11:47:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Nov 2019 03:46:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,271,1569308400"; d="scan'208";a="200769440"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga007.fm.intel.com with ESMTP; 05 Nov 2019 03:46:58 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 033F55C1E04; Tue,  5 Nov 2019 13:46:53 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <157295394385.14950.10836757962075610612@skylake-alporthouse-com>
References: <20191104201710.3778-1-chris@chris-wilson.co.uk>
 <87imnyo8u8.fsf@gaia.fi.intel.com>
 <157295394385.14950.10836757962075610612@skylake-alporthouse-com>
Date: Tue, 05 Nov 2019 13:46:53 +0200
Message-ID: <87ftj2o89e.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_balancer: Wait for both
 engines to complete before resubmitting
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTExLTA1IDExOjM0OjIzKQo+PiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+PiAKPj4gPiBBcyB0aGUgc2NyYXRjaCBi
dWYgaXMgc2hhcmVkIGJldHdlZW4gdGhlIHR3byByZXF1ZXN0cyBvbiBib3RoIGVuZ2luZXMsCj4+
ID4gd2UgbmVlZCB0byB3YWl0IGZvciBib3RoIHRvIGZpbmlzaCB1c2luZyB0aGUgYnVmZmVyIGJl
Zm9yZSB3ZSByZXNldCBpdC4KPj4gPgo+PiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+PiA+IENjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1
b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KPj4gPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51
cnN1bGluQGludGVsLmNvbT4KPj4gPiAtLS0KPj4gPiAgdGVzdHMvaTkxNS9nZW1fZXhlY19iYWxh
bmNlci5jIHwgMiArLQo+PiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVs
ZXRpb24oLSkKPj4gPgo+PiA+IGRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dlbV9leGVjX2JhbGFu
Y2VyLmMgYi90ZXN0cy9pOTE1L2dlbV9leGVjX2JhbGFuY2VyLmMKPj4gPiBpbmRleCBlNTJmNWRm
OTUuLjcwYzQ1MjliNCAxMDA2NDQKPj4gPiAtLS0gYS90ZXN0cy9pOTE1L2dlbV9leGVjX2JhbGFu
Y2VyLmMKPj4gPiArKysgYi90ZXN0cy9pOTE1L2dlbV9leGVjX2JhbGFuY2VyLmMKPj4gPiBAQCAt
ODQwLDcgKzg0MCw3IEBAIHN0YXRpYyB2b2lkIGJvbmRlZF9zbGljZShpbnQgaTkxNSkKPj4gPiAg
ICAgICAgICAgICAgICAgICAgICAgZ2VtX2V4ZWNidWYoaTkxNSwgJmViKTsKPj4gPiAgICAgICAg
ICAgICAgICAgICAgICAgY2xvc2UoZWIucnN2ZDIpOwo+PiA+ICAKPj4gPiAtICAgICAgICAgICAg
ICAgICAgICAgZ2VtX3N5bmMoaTkxNSwgb2JqWzJdLmhhbmRsZSk7Cj4+ID4gKyAgICAgICAgICAg
ICAgICAgICAgIGdlbV9zeW5jKGk5MTUsIG9ialswXS5oYW5kbGUpOwo+PiAKPj4gT2ssIGxldCBt
ZSB0cnkgdG8gbWFrZSBzZW5zZSBvZiBpdCBhbGwuIEZpcnN0IG9mZiwgdGhlIG5lZWQgZm9yCj4+
IG9ialtJR1RfU1BJTl9TQ1JBVENIXS5oYW5kbGUgZ3Jvd3MuCj4+IAo+PiBCdXQgYXMgdGhlIHNl
bWFwaG9yZSB3aWxsIHdhaXQgdGhlIHNwaW5uZXIgdG8gc3RhcnQgYW5kIHRoZW4gZW5kIGl0Lgo+
PiBJdCBpcyBub3QgZW5vdWdoIHRvIHdhaXQgdGhlIHNlbWFwaG9yZSBiYXRjaCB0byBzeW5jLiBU
aGF0IGlzIGNsZWFyLgo+Cj4gSXQgc2hvdWxkIGJlIGVub3VnaCB0byB3YWl0IGZvciB0aGUgc3Bp
bm5lciBjb21wbGV0aW9uIHRvIGJlIHN1cmUgdGhhdAo+IHRoZSBzZW1hcGhvcmUgYmF0Y2ggaXMg
cGFzdCB0aGUgcG9pbnQgb2Ygbm8gcmV0dXJuIChidXQgbm90IG5lY2Vzc2FyaWx5Cj4gY29tcGxl
dGUgYXMgaXQgbWF5IGJlIHByZWVtcHRlZCBiZWZvcmUgd2UgbWFyayBpdCBhcyBjb21wbGV0ZSku
IFNvIGl0Cj4gd291bGQgYmUgcG9zc2libGUgZm9yIHVzIHRvIHNlZSB0aGUgY29udGV4dCBzdGls
bCBpbiBmbGlnaHQgYW5kIHJlZHVjZQo+IHRoZSByYW5kb21uZXNzIG9mIG91ciBzZWxlY3Rpb24u
Cj4gIAo+PiBCdXQgb24gc3luY2luZyB0aGUgc2NyYXRjaDogdGhlIG9ialsxXS5oYW5kbGUgaXMg
Y2F1c2luZyB3cml0ZQo+PiBoYXphcmQgdG8gb2JqWzBdIHNvIGlmIHdlIHdhaXQgb2JqWzBdLCB0
aGVuIGl0IGlzIGltcGxpZWQgdGhhdAo+PiBvYmpbMV0uaGFuZGxlIGhhcyBmaW5pc2hlZD8KPgo+
IFllcy4gb2JqWzJdLmhhbmRsZSBoYXMgb25lIGZlbmNlIChmcm9tIHRoZSBzcGlubmVyIGJhdGNo
KSwgb2JqWzBdLmhhbmRsZQo+IGhhcyB0d28gZmVuY2VzIChmcm9tIGJvdGggYmF0Y2hlcyksIGxp
a2V3aXNlIG9ialsxXS5oYW5kbGUuIFNvIGlmIHlvdQo+IHdhaXQgb24gZWl0aGVyIG9ialswXS5o
YW5kbGUgb3Igb2JqWzFdLmhhbmRsZSwgeW91IGZsdXNoIGJvdGggZmVuY2VzLgoKV2UgbmVlZCB0
byBnZXQgcmlkIG9mIHRoZSBhYnNvbHV0ZSBpbmRleGluZyBpbnNpZGUgc3BpbiBoYW5kbGVzCmF0
IHNvbWUgcG9pbnQuIEJ1dCBub3QgdG9kYXkuCgpSZXZpZXdlZC1ieTogTWlrYSBLdW9wcGFsYSA8
bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cgo+IC1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
