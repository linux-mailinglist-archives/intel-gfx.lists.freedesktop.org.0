Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA84C1793F
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 14:18:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C84A89804;
	Wed,  8 May 2019 12:18:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC50589804
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 12:18:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 May 2019 05:18:51 -0700
X-ExtLoop1: 1
Received: from gaia.fi.intel.com ([10.237.72.169])
 by orsmga007.jf.intel.com with ESMTP; 08 May 2019 05:18:49 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 2DD5C5C04BF; Wed,  8 May 2019 15:18:06 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190508115245.27790-1-chris@chris-wilson.co.uk>
References: <20190508115245.27790-1-chris@chris-wilson.co.uk>
Date: Wed, 08 May 2019 15:18:06 +0300
Message-ID: <87imuldts1.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Reboot CI if forcewake fails
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

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gSWYgdGhl
IEhXIGZhaWwgdG8gYWNrIGEgY2hhbmdlIGluIGZvcmNld2FrZSBzdGF0dXMsIHRoZSBtYWNoaW5l
IGlzIGFzCj4gZ29vZCBhcyBkZWFkIC0tIGl0IG1heSByZWNvdmVyLCBidXQgaW4gcmVhbGl0eSBp
dCBtaXNzZWQgdGhlIG1taW8KPiB1cGRhdGVzIGFuZCBpcyBub3cgaW4gYSB2ZXJ5IGluY29uc2lz
dGVudCBzdGF0ZS4gSWYgaXQgaGFwcGVucywgd2UgY2FuJ3QKPiB0cnVzdCB0aGUgQ0kgcmVzdWx0
cyAob3IgYXQgbGVhc3QgdGhlIGZhaWxzIG1heSBiZSBnZW51aW5lIGJ1dCBkdWUgdG8KPiB0aGUg
SFcgYmVpbmcgZGVhZCBhbmQgbm90IHRoZSBhY3R1YWwgdGVzdCEpIHNvIHJlYm9vdCB0aGUgbWFj
aGluZSAoQ0kKPiBjaGVja3MgZm9yIGEga2VybmVsIHRhaW50IGluIGJldHdlZW4gZWFjaCB0ZXN0
IGFuZCByZWJvb3RzIGlmIHRoZQo+IG1hY2hpbmUgaXMgdGFpbnRlZCkuCj4KPiBTaWduZWQtb2Zm
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTWlrYSBL
dW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IFR2cnRrbyBVcnN1
bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb20+CgpTb3VuZHMgYW5kIGxvb2tzIHJl
YXNvbmFibGUuIFNob3VsZCB3ZSBhbHNvIHRhaW50IGlmIHdlIGhhdmUKdW5jbGFpbWVkIG1taW8g
YWZ0ZXIgaW5pdCBzZXF1ZW5jZT8KClJldmlld2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1
b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX3Jlc2V0LmMgfCAgMiArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
ICAgICAgIHwgMTEgKysrKysrKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5j
b3JlLmMgICB8ICA4ICsrKysrKy0tCj4gIDMgZmlsZXMgY2hhbmdlZCwgMTggaW5zZXJ0aW9ucygr
KSwgMyBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9yZXNldC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwo+
IGluZGV4IDQxOWIzNDE1MzcwYi4uNDY0MzY5YmM1NWFkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9yZXNldC5jCj4gQEAgLTEwNDIsNyArMTA0Miw3IEBAIHZvaWQgaTkxNV9yZXNl
dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiAgCSAqIHJhdGhlciB0aGFuIGNvbnRp
bnVlIG9uIGludG8gb2JsaXZpb24uIEZvciBldmVyeW9uZSBlbHNlLAo+ICAJICogdGhlIHN5c3Rl
bSBzaG91bGQgc3RpbGwgcGxvZCBhbG9uZywgYnV0IHRoZXkgaGF2ZSBiZWVuIHdhcm5lZCEKPiAg
CSAqLwo+IC0JYWRkX3RhaW50KFRBSU5UX1dBUk4sIExPQ0tERVBfU1RJTExfT0spOwo+ICsJYWRk
X3RhaW50X2Zvcl9DSShUQUlOVF9XQVJOKTsKPiAgZXJyb3I6Cj4gIAlfX2k5MTVfZ2VtX3NldF93
ZWRnZWQoaTkxNSk7Cj4gIAlnb3RvIGZpbmlzaDsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiBp
bmRleCAwYTZlYzYxNDk2ZjEuLmQwMjU3ODA4NzM0YyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaAo+IEBAIC0zMzc1LDQgKzMzNzUsMTUgQEAgc3RhdGljIGlubGluZSB1MzIgaTkxNV9zY3Jh
dGNoX29mZnNldChjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiAgCXJldHVy
biBpOTE1X2dndHRfb2Zmc2V0KGk5MTUtPmd0LnNjcmF0Y2gpOwo+ICB9Cj4gIAo+ICtzdGF0aWMg
aW5saW5lIHZvaWQgYWRkX3RhaW50X2Zvcl9DSSh1bnNpZ25lZCBpbnQgdGFpbnQpCj4gK3sKPiAr
CS8qCj4gKwkgKiBUaGUgc3lzdGVtIGlzICJvayIsIGp1c3QgYWJvdXQgc3Vydml2aW5nIGZvciB0
aGUgdXNlciwgYnV0Cj4gKwkgKiBDSSByZXN1bHRzIGFyZSBub3cgdW5yZWxpYWJsZSBhcyB0aGUg
SFcgaXMgdmVyeSBzdXNwZWN0Lgo+ICsJICogQ0kgY2hlY2tzIHRoZSB0YWludCBzdGF0ZSBhZnRl
ciBldmVyeSB0ZXN0IGFuZCB3aWxsIHJlYm9vdAo+ICsJICogdGhlIG1hY2hpbmUgaWYgdGhlIGtl
cm5lbCBpcyB0YWludGVkLgo+ICsJICovCj4gKwlhZGRfdGFpbnQodGFpbnQsIExPQ0tERVBfU1RJ
TExfT0spOwo+ICt9Cj4gKwo+ICAjZW5kaWYKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfdW5jb3JlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUu
Ywo+IGluZGV4IGQxZDUxZTExMjFlMi4uNmVjMWJjOTdiNjY1IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfdW5jb3JlLmMKPiBAQCAtMTExLDkgKzExMSwxMSBAQCB3YWl0X2Fja19zZXQoY29u
c3Qgc3RydWN0IGludGVsX3VuY29yZV9mb3JjZXdha2VfZG9tYWluICpkLAo+ICBzdGF0aWMgaW5s
aW5lIHZvaWQKPiAgZndfZG9tYWluX3dhaXRfYWNrX2NsZWFyKGNvbnN0IHN0cnVjdCBpbnRlbF91
bmNvcmVfZm9yY2V3YWtlX2RvbWFpbiAqZCkKPiAgewo+IC0JaWYgKHdhaXRfYWNrX2NsZWFyKGQs
IEZPUkNFV0FLRV9LRVJORUwpKQo+ICsJaWYgKHdhaXRfYWNrX2NsZWFyKGQsIEZPUkNFV0FLRV9L
RVJORUwpKSB7Cj4gIAkJRFJNX0VSUk9SKCIlczogdGltZWQgb3V0IHdhaXRpbmcgZm9yIGZvcmNl
d2FrZSBhY2sgdG8gY2xlYXIuXG4iLAo+ICAJCQkgIGludGVsX3VuY29yZV9mb3JjZXdha2VfZG9t
YWluX3RvX3N0cihkLT5pZCkpOwo+ICsJCWFkZF90YWludF9mb3JfQ0koVEFJTlRfV0FSTik7IC8q
IENJIHVucmVsaWFibGUgKi8KPiArCX0KPiAgfQo+ICAKPiAgZW51bSBhY2tfdHlwZSB7Cj4gQEAg
LTE4Niw5ICsxODgsMTEgQEAgZndfZG9tYWluX2dldChjb25zdCBzdHJ1Y3QgaW50ZWxfdW5jb3Jl
X2ZvcmNld2FrZV9kb21haW4gKmQpCj4gIHN0YXRpYyBpbmxpbmUgdm9pZAo+ICBmd19kb21haW5f
d2FpdF9hY2tfc2V0KGNvbnN0IHN0cnVjdCBpbnRlbF91bmNvcmVfZm9yY2V3YWtlX2RvbWFpbiAq
ZCkKPiAgewo+IC0JaWYgKHdhaXRfYWNrX3NldChkLCBGT1JDRVdBS0VfS0VSTkVMKSkKPiArCWlm
ICh3YWl0X2Fja19zZXQoZCwgRk9SQ0VXQUtFX0tFUk5FTCkpIHsKPiAgCQlEUk1fRVJST1IoIiVz
OiB0aW1lZCBvdXQgd2FpdGluZyBmb3IgZm9yY2V3YWtlIGFjayByZXF1ZXN0LlxuIiwKPiAgCQkJ
ICBpbnRlbF91bmNvcmVfZm9yY2V3YWtlX2RvbWFpbl90b19zdHIoZC0+aWQpKTsKPiArCQlhZGRf
dGFpbnRfZm9yX0NJKFRBSU5UX1dBUk4pOyAvKiBDSSB1bnJlbGlhYmxlICovCj4gKwl9Cj4gIH0K
PiAgCj4gIHN0YXRpYyBpbmxpbmUgdm9pZAo+IC0tIAo+IDIuMjAuMQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
