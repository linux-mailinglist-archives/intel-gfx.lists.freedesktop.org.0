Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E281CDE87A
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2019 11:50:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F6E389DBF;
	Mon, 21 Oct 2019 09:50:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46A6E89C0D
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 09:50:03 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Oct 2019 02:50:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,323,1566889200"; d="scan'208";a="348690161"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga004.jf.intel.com with ESMTP; 21 Oct 2019 02:50:01 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id E2A225C1E41; Mon, 21 Oct 2019 12:49:14 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191021080226.537-1-chris@chris-wilson.co.uk>
References: <20191021080226.537-1-chris@chris-wilson.co.uk>
Date: Mon, 21 Oct 2019 12:49:14 +0300
Message-ID: <87pniq8m3p.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/16] drm/i915: Don't set
 queue_priority_hint if we don't kick the submission
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gSWYgd2Ug
Y2hhbmdlIHRoZSBwcmlvcml0eSBvZiB0aGUgYWN0aXZlIGNvbnRleHQsIHRoZW4gaXQgaGFzIG5v
IGltcGFjdAo+IG9uIHRoZSBkZWNpc2lvbiBvZiB3aGV0aGVyIHRvIHByZWVtcHQgdGhlIGFjdGl2
ZSBjb250ZXh0IC0tIHdlIGRvbid0Cj4gcHJlZW1wdCB0aGUgY29udGV4dCB3aXRoIGl0c2VsZi4g
SW4gdGhpcyBzaXR1YXRpb24sIHdlIGVsaWRlIHRoZSB0YXNrbGV0Cj4gcmVzY2hlZHVsaW5nIGFu
ZCBzaG91bGQgKm5vdCogYmUgbWFya2luZyB1cCB0aGUgcXVldWVfcHJpb3JpdHlfaGludCBhcwo+
IHRoYXQgbWF5IG1hc2sgYSBsYXRlciBzdWJtaXNzaW9uIHdoZXJlIHdlIGRlY2lkZSB3ZSBkb24n
dCBoYXZlIHRvIGtpY2sKPiB0aGUgdGFza2xldCBhcyBhIGhpZ2hlciBwcmlvcml0eSBzdWJtaXNz
aW9uIGlzIHBlbmRpbmcgKHNwb2lsZXIgYWxlcnQsCj4gaXQgd2FzIG5vdCkuCj4KPiBTaWduZWQt
b2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogVHZy
dGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiBDYzogTWlrYSBLdW9wcGFs
YSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfc2NoZWR1bGVyLmMgfCAzNyArKysrKysrKysrKysrKysrLS0tLS0tLS0tLS0K
PiAgMSBmaWxlIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKyksIDE1IGRlbGV0aW9ucygtKQo+Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2NoZWR1bGVyLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3NjaGVkdWxlci5jCj4gaW5kZXggMGNhNDBmNmJmMDhjLi5k
MmVkYjUyN2RjYjggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zY2hl
ZHVsZXIuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2NoZWR1bGVyLmMKPiBA
QCAtMTg5LDIyICsxODksMzQgQEAgc3RhdGljIGlubGluZSBib29sIG5lZWRfcHJlZW1wdChpbnQg
cHJpbywgaW50IGFjdGl2ZSkKPiAgCXJldHVybiBwcmlvID49IG1heChJOTE1X1BSSU9SSVRZX05P
Uk1BTCwgYWN0aXZlKTsKPiAgfQo+ICAKPiAtc3RhdGljIHZvaWQga2lja19zdWJtaXNzaW9uKHN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgaW50IHByaW8pCj4gK3N0YXRpYyB2b2lkIGtp
Y2tfc3VibWlzc2lvbihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCj4gKwkJCSAgICBj
b25zdCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwKPiArCQkJICAgIGludCBwcmlvKQo+ICB7Cj4g
LQljb25zdCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICppbmZsaWdodCA9Cj4gLQkJZXhlY2xpc3RzX2Fj
dGl2ZSgmZW5naW5lLT5leGVjbGlzdHMpOwo+ICsJY29uc3Qgc3RydWN0IGk5MTVfcmVxdWVzdCAq
aW5mbGlnaHQ7Cj4gKwo+ICsJLyoKPiArCSAqIFdlIG9ubHkgbmVlZCB0byBraWNrIHRoZSB0YXNr
bGV0IG9uY2UgZm9yIHRoZSBoaWdoIHByaW9yaXR5Cj4gKwkgKiBuZXcgY29udGV4dCB3ZSBhZGQg
aW50byB0aGUgcXVldWUuCj4gKwkgKi8KPiArCWlmIChwcmlvIDw9IGVuZ2luZS0+ZXhlY2xpc3Rz
LnF1ZXVlX3ByaW9yaXR5X2hpbnQpCj4gKwkJcmV0dXJuOwo+ICsKPiArCS8qIE5vdGhpbmcgY3Vy
cmVudGx5IGFjdGl2ZT8gV2UncmUgb3ZlcmR1ZSBmb3IgYSBzdWJtaXNzaW9uISAqLwo+ICsJaW5m
bGlnaHQgPSBleGVjbGlzdHNfYWN0aXZlKCZlbmdpbmUtPmV4ZWNsaXN0cyk7Cj4gKwlpZiAoIWlu
ZmxpZ2h0KQo+ICsJCXJldHVybjsKPiAgCj4gIAkvKgo+ICAJICogSWYgd2UgYXJlIGFscmVhZHkg
dGhlIGN1cnJlbnRseSBleGVjdXRpbmcgY29udGV4dCwgZG9uJ3QKPiAtCSAqIGJvdGhlciBldmFs
dWF0aW5nIGlmIHdlIHNob3VsZCBwcmVlbXB0IG91cnNlbHZlcywgb3IgaWYKPiAtCSAqIHdlIGV4
cGVjdCBub3RoaW5nIHRvIGNoYW5nZSBhcyBhIHJlc3VsdCBvZiBydW5uaW5nIHRoZQo+IC0JICog
dGFza2xldCwgaS5lLiB3ZSBoYXZlIG5vdCBjaGFuZ2UgdGhlIHByaW9yaXR5IHF1ZXVlCj4gLQkg
KiBzdWZmaWNpZW50bHkgdG8gb3VzdCB0aGUgcnVubmluZyBjb250ZXh0Lgo+ICsJICogYm90aGVy
IGV2YWx1YXRpbmcgaWYgd2Ugc2hvdWxkIHByZWVtcHQgb3Vyc2VsdmVzLgo+ICAJICovCj4gLQlp
ZiAoIWluZmxpZ2h0IHx8ICFuZWVkX3ByZWVtcHQocHJpbywgcnFfcHJpbyhpbmZsaWdodCkpKQo+
ICsJaWYgKGluZmxpZ2h0LT5od19jb250ZXh0ID09IHJxLT5od19jb250ZXh0KQoKSWYgdGhlcmUg
aXMgYSB0YWlsIHVwZGF0ZSBhdCB0aGlzIG1vbWVudCwgZG9lcyB0aGUgaGFyZHdhcmUKdGFrZSBp
dCBpbnRvIGFjY291bnQgb3IgZG8gd2UgbmVlZCB0byBraWNrPwoKLU1pa2EKCgo+ICAJCXJldHVy
bjsKPiAgCj4gLQl0YXNrbGV0X2hpX3NjaGVkdWxlKCZlbmdpbmUtPmV4ZWNsaXN0cy50YXNrbGV0
KTsKPiArCWVuZ2luZS0+ZXhlY2xpc3RzLnF1ZXVlX3ByaW9yaXR5X2hpbnQgPSBwcmlvOwo+ICsJ
aWYgKG5lZWRfcHJlZW1wdChwcmlvLCBycV9wcmlvKGluZmxpZ2h0KSkpCj4gKwkJdGFza2xldF9o
aV9zY2hlZHVsZSgmZW5naW5lLT5leGVjbGlzdHMudGFza2xldCk7Cj4gIH0KPiAgCj4gIHN0YXRp
YyB2b2lkIF9faTkxNV9zY2hlZHVsZShzdHJ1Y3QgaTkxNV9zY2hlZF9ub2RlICpub2RlLAo+IEBA
IC0zMzAsMTMgKzM0Miw4IEBAIHN0YXRpYyB2b2lkIF9faTkxNV9zY2hlZHVsZShzdHJ1Y3QgaTkx
NV9zY2hlZF9ub2RlICpub2RlLAo+ICAJCQlsaXN0X21vdmVfdGFpbCgmbm9kZS0+bGluaywgY2Fj
aGUucHJpb2xpc3QpOwo+ICAJCX0KPiAgCj4gLQkJaWYgKHByaW8gPD0gZW5naW5lLT5leGVjbGlz
dHMucXVldWVfcHJpb3JpdHlfaGludCkKPiAtCQkJY29udGludWU7Cj4gLQo+IC0JCWVuZ2luZS0+
ZXhlY2xpc3RzLnF1ZXVlX3ByaW9yaXR5X2hpbnQgPSBwcmlvOwo+IC0KPiAgCQkvKiBEZWZlciAo
dGFza2xldCkgc3VibWlzc2lvbiB1bnRpbCBhZnRlciBhbGwgb2Ygb3VyIHVwZGF0ZXMuICovCj4g
LQkJa2lja19zdWJtaXNzaW9uKGVuZ2luZSwgcHJpbyk7Cj4gKwkJa2lja19zdWJtaXNzaW9uKGVu
Z2luZSwgbm9kZV90b19yZXF1ZXN0KG5vZGUpLCBwcmlvKTsKPiAgCX0KPiAgCj4gIAlzcGluX3Vu
bG9jaygmZW5naW5lLT5hY3RpdmUubG9jayk7Cj4gLS0gCj4gMi4yNC4wLnJjMApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
