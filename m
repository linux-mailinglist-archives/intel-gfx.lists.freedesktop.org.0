Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C24C62425
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 17:40:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A659989E50;
	Mon,  8 Jul 2019 15:40:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B9A789E50
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 15:40:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 08:40:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,466,1557212400"; d="scan'208";a="188529064"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga004.fm.intel.com with ESMTP; 08 Jul 2019 08:40:41 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 840E85C0A98; Mon,  8 Jul 2019 18:40:30 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190707221521.31929-1-chris@chris-wilson.co.uk>
References: <20190707221521.31929-1-chris@chris-wilson.co.uk>
Date: Mon, 08 Jul 2019 18:40:30 +0300
Message-ID: <87muho1qmp.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Explicitly track active fw_domain
 timers
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gU3RvcCBn
dWVzc2luZyBvdmVyIHdoZXRoZXIgd2UgaGF2ZSBhbiBleHRyYSB3YWtlcmVmIGhlbGQgYnkgdGhl
IGRlbGF5ZWQKPiBmdyBwdXQsIGFuZCB0cmFjayBpdCBleHBsaWNpdGx5IGZvciB0aGUgc2FrZSBv
ZiBkZWJ1Zy4KPgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29t
Pgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYyB8IDEzICsrKysr
Ky0tLS0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmggfCAgMSArCj4g
IDIgZmlsZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+Cj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmMKPiBpbmRleCA1ZjAzNjdmZDMyMDAuLjc2OGZlZTNj
NTlhYSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5jCj4gQEAgLTc4LDYgKzc4
LDggQEAgZndfZG9tYWluX3Jlc2V0KGNvbnN0IHN0cnVjdCBpbnRlbF91bmNvcmVfZm9yY2V3YWtl
X2RvbWFpbiAqZCkKPiAgc3RhdGljIGlubGluZSB2b2lkCj4gIGZ3X2RvbWFpbl9hcm1fdGltZXIo
c3RydWN0IGludGVsX3VuY29yZV9mb3JjZXdha2VfZG9tYWluICpkKQo+ICB7Cj4gKwlHRU1fQlVH
X09OKGQtPnVuY29yZS0+ZndfZG9tYWluc190aW1lciAmIGQtPm1hc2spOwo+ICsJZC0+dW5jb3Jl
LT5md19kb21haW5zX3RpbWVyIHw9IGQtPm1hc2s7Cj4gIAlkLT53YWtlX2NvdW50Kys7Cj4gIAlo
cnRpbWVyX3N0YXJ0X3JhbmdlX25zKCZkLT50aW1lciwKPiAgCQkJICAgICAgIE5TRUNfUEVSX01T
RUMsCj4gQEAgLTM1Myw5ICszNTUsOCBAQCBpbnRlbF91bmNvcmVfZndfcmVsZWFzZV90aW1lcihz
dHJ1Y3QgaHJ0aW1lciAqdGltZXIpCj4gIAkJcmV0dXJuIEhSVElNRVJfUkVTVEFSVDsKPiAgCj4g
IAlzcGluX2xvY2tfaXJxc2F2ZSgmdW5jb3JlLT5sb2NrLCBpcnFmbGFncyk7Cj4gLQlpZiAoV0FS
Tl9PTihkb21haW4tPndha2VfY291bnQgPT0gMCkpCj4gLQkJZG9tYWluLT53YWtlX2NvdW50Kys7
Cj4gIAo+ICsJdW5jb3JlLT5md19kb21haW5zX3RpbWVyICY9IH5kb21haW4tPm1hc2s7Cj4gIAlp
ZiAoLS1kb21haW4tPndha2VfY291bnQgPT0gMCkKPiAgCQl1bmNvcmUtPmZ1bmNzLmZvcmNlX3dh
a2VfcHV0KHVuY29yZSwgZG9tYWluLT5tYXNrKTsKPiAgCj4gQEAgLTY3Myw4ICs2NzQsNyBAQCBz
dGF0aWMgdm9pZCBfX2ludGVsX3VuY29yZV9mb3JjZXdha2VfcHV0KHN0cnVjdCBpbnRlbF91bmNv
cmUgKnVuY29yZSwKPiAgCWZ3X2RvbWFpbnMgJj0gdW5jb3JlLT5md19kb21haW5zOwo+ICAKPiAg
CWZvcl9lYWNoX2Z3X2RvbWFpbl9tYXNrZWQoZG9tYWluLCBmd19kb21haW5zLCB1bmNvcmUsIHRt
cCkgewo+IC0JCWlmIChXQVJOX09OKGRvbWFpbi0+d2FrZV9jb3VudCA9PSAwKSkKPiAtCQkJY29u
dGludWU7Cj4gKwkJR0VNX0JVR19PTighZG9tYWluLT53YWtlX2NvdW50KTsKCkZpcnN0IGltcHJl
c3Npb24gd2FzIGhhcnNoLiBCdXQgb24gc2Vjb25kIHRob3VnaHQsIGlmIHdlIGNhbid0IGdldApv
dXIgY291bnRzIHJpZ2h0LCB0aGVuIHdoYXQgaG9wZSBpcyB0aGVyZS4gTm9uZS4KCj4gIAo+ICAJ
CWlmICgtLWRvbWFpbi0+d2FrZV9jb3VudCkgewo+ICAJCQlkb21haW4tPmFjdGl2ZSA9IHRydWU7
Cj4gQEAgLTc2NCw3ICs3NjQsNyBAQCB2b2lkIGFzc2VydF9mb3JjZXdha2VzX2FjdGl2ZShzdHJ1
Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUsCj4gIAkJdW5zaWduZWQgaW50IGFjdHVhbCA9IFJFQURf
T05DRShkb21haW4tPndha2VfY291bnQpOwo+ICAJCXVuc2lnbmVkIGludCBleHBlY3QgPSAxOwo+
ICAKPiAtCQlpZiAoaHJ0aW1lcl9hY3RpdmUoJmRvbWFpbi0+dGltZXIpICYmIFJFQURfT05DRShk
b21haW4tPmFjdGl2ZSkpCj4gKwkJaWYgKHVuY29yZS0+ZndfZG9tYWluc190aW1lciAmIGRvbWFp
bi0+bWFzaykKPiAgCQkJZXhwZWN0Kys7IC8qIHBlbmRpbmcgYXV0b21hdGljIHJlbGVhc2UgKi8K
CmFzc2V0aW9uIG9mIHRpbWVyIGFjdGl2ZSBvbiByZWxlYXNlIHBhdGggc2VlbXMgYWxzbyBzdXBl
cmZsdW91cwphcyB0aGUgY291bnQgaXMgb3VyIGd1YXJkLgoKCgpSZXZpZXdlZC1ieTogTWlrYSBL
dW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cgo+ICAKPiAgCQlpZiAoV0FS
TihhY3R1YWwgPCBleHBlY3QsCj4gQEAgLTExNjAsOCArMTE2MCw3IEBAIHN0YXRpYyBub2lubGlu
ZSB2b2lkIF9fX2ZvcmNlX3dha2VfYXV0byhzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUsCj4g
IHN0YXRpYyBpbmxpbmUgdm9pZCBfX2ZvcmNlX3dha2VfYXV0byhzdHJ1Y3QgaW50ZWxfdW5jb3Jl
ICp1bmNvcmUsCj4gIAkJCQkgICAgIGVudW0gZm9yY2V3YWtlX2RvbWFpbnMgZndfZG9tYWlucykK
PiAgewo+IC0JaWYgKFdBUk5fT04oIWZ3X2RvbWFpbnMpKQo+IC0JCXJldHVybjsKPiArCUdFTV9C
VUdfT04oIWZ3X2RvbWFpbnMpOwo+ICAKPiAgCS8qIFR1cm4gb24gYWxsIHJlcXVlc3RlZCBidXQg
aW5hY3RpdmUgc3VwcG9ydGVkIGZvcmNld2FrZSBkb21haW5zLiAqLwo+ICAJZndfZG9tYWlucyAm
PSB1bmNvcmUtPmZ3X2RvbWFpbnM7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3VuY29yZS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3JlLmgKPiBp
bmRleCA3MTA4NDc1ZDliMjQuLjJmNmZmYTMwOTY2OSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3VuY29yZS5oCj4gQEAgLTEyMyw2ICsxMjMsNyBAQCBzdHJ1Y3QgaW50ZWxfdW5jb3JlIHsK
PiAgCj4gIAllbnVtIGZvcmNld2FrZV9kb21haW5zIGZ3X2RvbWFpbnM7Cj4gIAllbnVtIGZvcmNl
d2FrZV9kb21haW5zIGZ3X2RvbWFpbnNfYWN0aXZlOwo+ICsJZW51bSBmb3JjZXdha2VfZG9tYWlu
cyBmd19kb21haW5zX3RpbWVyOwo+ICAJZW51bSBmb3JjZXdha2VfZG9tYWlucyBmd19kb21haW5z
X3NhdmVkOyAvKiB1c2VyIGRvbWFpbnMgc2F2ZWQgZm9yIFMzICovCj4gIAo+ICAJc3RydWN0IGlu
dGVsX3VuY29yZV9mb3JjZXdha2VfZG9tYWluIHsKPiAtLSAKPiAyLjIwLjEKPgo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
