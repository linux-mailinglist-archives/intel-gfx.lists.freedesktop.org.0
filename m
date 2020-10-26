Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED101298899
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Oct 2020 09:40:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCBCB6E96F;
	Mon, 26 Oct 2020 08:40:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAD55899D6;
 Mon, 26 Oct 2020 08:40:08 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 7F06AB202;
 Mon, 26 Oct 2020 08:40:07 +0000 (UTC)
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20201023122811.2374118-1-daniel.vetter@ffwll.ch>
 <20201023122811.2374118-4-daniel.vetter@ffwll.ch>
From: Thomas Zimmermann <tzimmermann@suse.de>
Message-ID: <105b45f8-1407-0bc7-89f7-b35f5c8b890f@suse.de>
Date: Mon, 26 Oct 2020 09:40:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.3
MIME-Version: 1.0
In-Reply-To: <20201023122811.2374118-4-daniel.vetter@ffwll.ch>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/5] drm: Allow const struct drm_driver
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: David Airlie <airlied@linux.ie>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkKCkFtIDIzLjEwLjIwIHVtIDE0OjI4IHNjaHJpZWIgRGFuaWVsIFZldHRlcjoKPiBJdCdzIG5p
Y2UgaWYgYSBiaWcgZnVuY3Rpb24vaW9jdGwgdGFibGUgbGlrZSB0aGlzIGlzIGNvbnN0LiBPbmx5
Cj4gZG93bnNpZGUgaGVyZSBpcyB0aGF0IHdlIG5lZWQgYSBmZXcgbW9yZSAjaWZkZWYgdG8gcGFw
ZXIgb3ZlciB0aGUKPiBkaWZmZXJlbmNlcyB3aGVuIENPTkZJR19EUk1fTEVHQUNZIGlzIGVuYWJs
ZWQuIE1heWJlIHByb3ZpZGVzIG1vcmUKPiBtb3RpdmF0aW9uIHRvIHN1bnNldCB0aGF0IGhvcnJv
ciBzaG93IDotKQo+IAo+IFNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0
ZXJAaW50ZWwuY29tPgo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RA
bGludXguaW50ZWwuY29tPgo+IENjOiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+
Cj4gQ2M6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRlPgo+IENjOiBEYXZp
ZCBBaXJsaWUgPGFpcmxpZWRAbGludXguaWU+Cj4gQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBm
ZndsbC5jaD4KPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZm
d2xsLmNoPgoKSSB2ZXJ5IG11Y2ggd2VsY29tZSB0aGUgY2hhbmdlLCBhbHRob3VnaCB0aGUgY29k
ZSBpcyAqcmVhbGx5KiB1Z2x5LgoKQWNrZWQtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVy
bWFubkBzdXNlLmRlPgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2RybV9kcnYuYyB8IDE1ICsr
KysrKysrKystLS0tLQo+ICBpbmNsdWRlL2RybS9kcm1fZGV2aWNlLmggIHwgIDQgKysrKwo+ICBp
bmNsdWRlL2RybS9kcm1fZHJ2LmggICAgIHwgIDUgKysrLS0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAx
NyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vZHJtX2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2RybV9kcnYuYwo+IGluZGV4IDQ1
N2FjMGY4MmJlMi4uOTRkMmM0MTExNWI4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9k
cm1fZHJ2LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2Rydi5jCj4gQEAgLTU3NCw3ICs1
NzQsNyBAQCBzdGF0aWMgdm9pZCBkcm1fZGV2X2luaXRfcmVsZWFzZShzdHJ1Y3QgZHJtX2Rldmlj
ZSAqZGV2LCB2b2lkICpyZXMpCj4gIH0KPiAgCj4gIHN0YXRpYyBpbnQgZHJtX2Rldl9pbml0KHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4gLQkJCXN0cnVjdCBkcm1fZHJpdmVyICpkcml2ZXIsCj4g
KwkJCWNvbnN0IHN0cnVjdCBkcm1fZHJpdmVyICpkcml2ZXIsCj4gIAkJCXN0cnVjdCBkZXZpY2Ug
KnBhcmVudCkKPiAgewo+ICAJaW50IHJldDsKPiBAQCAtNTg5LDcgKzU4OSwxMSBAQCBzdGF0aWMg
aW50IGRybV9kZXZfaW5pdChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAo+ICAKPiAgCWtyZWZfaW5p
dCgmZGV2LT5yZWYpOwo+ICAJZGV2LT5kZXYgPSBnZXRfZGV2aWNlKHBhcmVudCk7Cj4gKyNpZmRl
ZiBDT05GSUdfRFJNX0xFR0FDWQo+ICsJZGV2LT5kcml2ZXIgPSAoc3RydWN0IGRybV9kcml2ZXIg
KikgZHJpdmVyOwo+ICsjZWxzZQo+ICAJZGV2LT5kcml2ZXIgPSBkcml2ZXI7Cj4gKyNlbmRpZgo+
ICAKPiAgCUlOSVRfTElTVF9IRUFEKCZkZXYtPm1hbmFnZWQucmVzb3VyY2VzKTsKPiAgCXNwaW5f
bG9ja19pbml0KCZkZXYtPm1hbmFnZWQubG9jayk7Cj4gQEAgLTY2Myw3ICs2NjcsNyBAQCBzdGF0
aWMgdm9pZCBkZXZtX2RybV9kZXZfaW5pdF9yZWxlYXNlKHZvaWQgKmRhdGEpCj4gIAo+ICBzdGF0
aWMgaW50IGRldm1fZHJtX2Rldl9pbml0KHN0cnVjdCBkZXZpY2UgKnBhcmVudCwKPiAgCQkJICAg
ICBzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAo+IC0JCQkgICAgIHN0cnVjdCBkcm1fZHJpdmVyICpk
cml2ZXIpCj4gKwkJCSAgICAgY29uc3Qgc3RydWN0IGRybV9kcml2ZXIgKmRyaXZlcikKPiAgewo+
ICAJaW50IHJldDsKPiAgCj4gQEAgLTY3OCw3ICs2ODIsOCBAQCBzdGF0aWMgaW50IGRldm1fZHJt
X2Rldl9pbml0KHN0cnVjdCBkZXZpY2UgKnBhcmVudCwKPiAgCXJldHVybiByZXQ7Cj4gIH0KPiAg
Cj4gLXZvaWQgKl9fZGV2bV9kcm1fZGV2X2FsbG9jKHN0cnVjdCBkZXZpY2UgKnBhcmVudCwgc3Ry
dWN0IGRybV9kcml2ZXIgKmRyaXZlciwKPiArdm9pZCAqX19kZXZtX2RybV9kZXZfYWxsb2Moc3Ry
dWN0IGRldmljZSAqcGFyZW50LAo+ICsJCQkgICBjb25zdCBzdHJ1Y3QgZHJtX2RyaXZlciAqZHJp
dmVyLAo+ICAJCQkgICBzaXplX3Qgc2l6ZSwgc2l6ZV90IG9mZnNldCkKPiAgewo+ICAJdm9pZCAq
Y29udGFpbmVyOwo+IEBAIC03MTMsNyArNzE4LDcgQEAgRVhQT1JUX1NZTUJPTChfX2Rldm1fZHJt
X2Rldl9hbGxvYyk7Cj4gICAqIFJFVFVSTlM6Cj4gICAqIFBvaW50ZXIgdG8gbmV3IERSTSBkZXZp
Y2UsIG9yIEVSUl9QVFIgb24gZmFpbHVyZS4KPiAgICovCj4gLXN0cnVjdCBkcm1fZGV2aWNlICpk
cm1fZGV2X2FsbG9jKHN0cnVjdCBkcm1fZHJpdmVyICpkcml2ZXIsCj4gK3N0cnVjdCBkcm1fZGV2
aWNlICpkcm1fZGV2X2FsbG9jKGNvbnN0IHN0cnVjdCBkcm1fZHJpdmVyICpkcml2ZXIsCj4gIAkJ
CQkgc3RydWN0IGRldmljZSAqcGFyZW50KQo+ICB7Cj4gIAlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2
Owo+IEBAIC04NTgsNyArODYzLDcgQEAgc3RhdGljIHZvaWQgcmVtb3ZlX2NvbXBhdF9jb250cm9s
X2xpbmsoc3RydWN0IGRybV9kZXZpY2UgKmRldikKPiAgICovCj4gIGludCBkcm1fZGV2X3JlZ2lz
dGVyKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHVuc2lnbmVkIGxvbmcgZmxhZ3MpCj4gIHsKPiAt
CXN0cnVjdCBkcm1fZHJpdmVyICpkcml2ZXIgPSBkZXYtPmRyaXZlcjsKPiArCWNvbnN0IHN0cnVj
dCBkcm1fZHJpdmVyICpkcml2ZXIgPSBkZXYtPmRyaXZlcjsKPiAgCWludCByZXQ7Cj4gIAo+ICAJ
aWYgKCFkcml2ZXItPmxvYWQpCj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2RybV9kZXZpY2Uu
aCBiL2luY2x1ZGUvZHJtL2RybV9kZXZpY2UuaAo+IGluZGV4IGY0ZjY4ZTdhOTE0OS4uMmMzNjE5
NjRhZWU3IDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvZHJtL2RybV9kZXZpY2UuaAo+ICsrKyBiL2lu
Y2x1ZGUvZHJtL2RybV9kZXZpY2UuaAo+IEBAIC04Myw3ICs4MywxMSBAQCBzdHJ1Y3QgZHJtX2Rl
dmljZSB7Cj4gIAl9IG1hbmFnZWQ7Cj4gIAo+ICAJLyoqIEBkcml2ZXI6IERSTSBkcml2ZXIgbWFu
YWdpbmcgdGhlIGRldmljZSAqLwo+ICsjaWZkZWYgQ09ORklHX0RSTV9MRUdBQ1kKPiAgCXN0cnVj
dCBkcm1fZHJpdmVyICpkcml2ZXI7Cj4gKyNlbHNlCj4gKwljb25zdCBzdHJ1Y3QgZHJtX2RyaXZl
ciAqZHJpdmVyOwo+ICsjZW5kaWYKPiAgCj4gIAkvKioKPiAgCSAqIEBkZXZfcHJpdmF0ZToKPiBk
aWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX2Rydi5oIGIvaW5jbHVkZS9kcm0vZHJtX2Rydi5o
Cj4gaW5kZXggN2FmMjIwMjI2YTI1Li5jYzlkYTQzYjZlZGEgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVk
ZS9kcm0vZHJtX2Rydi5oCj4gKysrIGIvaW5jbHVkZS9kcm0vZHJtX2Rydi5oCj4gQEAgLTUxNiw3
ICs1MTYsOCBAQCBzdHJ1Y3QgZHJtX2RyaXZlciB7Cj4gICNlbmRpZgo+ICB9Owo+ICAKPiAtdm9p
ZCAqX19kZXZtX2RybV9kZXZfYWxsb2Moc3RydWN0IGRldmljZSAqcGFyZW50LCBzdHJ1Y3QgZHJt
X2RyaXZlciAqZHJpdmVyLAo+ICt2b2lkICpfX2Rldm1fZHJtX2Rldl9hbGxvYyhzdHJ1Y3QgZGV2
aWNlICpwYXJlbnQsCj4gKwkJCSAgIGNvbnN0IHN0cnVjdCBkcm1fZHJpdmVyICpkcml2ZXIsCj4g
IAkJCSAgIHNpemVfdCBzaXplLCBzaXplX3Qgb2Zmc2V0KTsKPiAgCj4gIC8qKgo+IEBAIC01NDks
NyArNTUwLDcgQEAgdm9pZCAqX19kZXZtX2RybV9kZXZfYWxsb2Moc3RydWN0IGRldmljZSAqcGFy
ZW50LCBzdHJ1Y3QgZHJtX2RyaXZlciAqZHJpdmVyLAo+ICAJKCh0eXBlICopIF9fZGV2bV9kcm1f
ZGV2X2FsbG9jKHBhcmVudCwgZHJpdmVyLCBzaXplb2YodHlwZSksIFwKPiAgCQkJCSAgICAgICBv
ZmZzZXRvZih0eXBlLCBtZW1iZXIpKSkKPiAgCj4gLXN0cnVjdCBkcm1fZGV2aWNlICpkcm1fZGV2
X2FsbG9jKHN0cnVjdCBkcm1fZHJpdmVyICpkcml2ZXIsCj4gK3N0cnVjdCBkcm1fZGV2aWNlICpk
cm1fZGV2X2FsbG9jKGNvbnN0IHN0cnVjdCBkcm1fZHJpdmVyICpkcml2ZXIsCj4gIAkJCQkgc3Ry
dWN0IGRldmljZSAqcGFyZW50KTsKPiAgaW50IGRybV9kZXZfcmVnaXN0ZXIoc3RydWN0IGRybV9k
ZXZpY2UgKmRldiwgdW5zaWduZWQgbG9uZyBmbGFncyk7Cj4gIHZvaWQgZHJtX2Rldl91bnJlZ2lz
dGVyKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpOwo+IAoKLS0gClRob21hcyBaaW1tZXJtYW5uCkdy
YXBoaWNzIERyaXZlciBEZXZlbG9wZXIKU1VTRSBTb2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBH
bWJICk1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZywgR2VybWFueQooSFJCIDM2ODA5LCBB
RyBOw7xybmJlcmcpCkdlc2Now6RmdHNmw7xocmVyOiBGZWxpeCBJbWVuZMO2cmZmZXIKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
