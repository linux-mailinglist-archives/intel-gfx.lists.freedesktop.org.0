Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE622138A9
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jul 2020 12:34:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59EA96E0AF;
	Fri,  3 Jul 2020 10:34:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 071776E0AF;
 Fri,  3 Jul 2020 10:34:01 +0000 (UTC)
IronPort-SDR: aJJOp1MGjdwiVbtAhe+3NffbhdxfzD5aIxDi53+mIeDuuAyjGNlup82KQ9r1waS7NUTAfkLe4k
 KW3tFWbUlKEQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9670"; a="145260720"
X-IronPort-AV: E=Sophos;i="5.75,308,1589266800"; d="scan'208";a="145260720"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2020 03:34:01 -0700
IronPort-SDR: 70k9KZ2Im/nS4SmKg+sBYkWTMDa1yI7VJ9PHHAViQzTOJ3UR7w9pX8LgiIpimED0vg7IWXCUJR
 SWaKwM37D4Ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,308,1589266800"; d="scan'208";a="282263881"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by orsmga006.jf.intel.com with ESMTP; 03 Jul 2020 03:33:59 -0700
Date: Fri, 3 Jul 2020 15:52:28 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Sean Paul <sean@poorly.run>
Message-ID: <20200703102227.GH15183@intel.com>
References: <20200623155907.22961-1-sean@poorly.run>
 <20200623155907.22961-14-sean@poorly.run>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200623155907.22961-14-sean@poorly.run>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v7 13/17] drm/i915: Plumb port through hdcp
 init
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
Cc: "daniel.vetter@ffwll.ch" <daniel.vetter@ffwll.ch>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Sean Paul <seanpaul@chromium.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAyMC0wNi0yMyBhdCAyMToyOTowMyArMDUzMCwgU2VhbiBQYXVsIHdyb3RlOgo+IEZyb206
IFNlYW4gUGF1bCA8c2VhbnBhdWxAY2hyb21pdW0ub3JnPgo+IAo+IFRoaXMgcGF0Y2ggcGx1bWJz
IHBvcnQgdGhyb3VnaCBoZGNwIGluaXQgaW5zdGVhZCBvZiByZWx5aW5nIG9uCj4gaW50ZWxfYXR0
YWNoZWRfZW5jb2RlcigpIHRvIHJldHVybiBhIG5vbi1OVUxMIGVuY29kZXIgd2hpY2ggd29uJ3Qg
d29yawo+IGZvciBNU1QgY29ubmVjdG9ycy4KTG9va3MgZ29vZCB0byBtZSwKUmV2aWV3ZWQtYnk6
IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+Cj4gCj4gQ2M6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1i
eTogU2VhbiBQYXVsIDxzZWFucGF1bEBjaHJvbWl1bS5vcmc+Cj4gTGluazogaHR0cHM6Ly9wYXRj
aHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21zZ2lkLzIwMjAwMzA1MjAxMjM2LjE1MjMwNy0x
My1zZWFuQHBvb3JseS5ydW4gI3Y1Cj4gTGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0
b3Aub3JnL3BhdGNoL21zZ2lkLzIwMjAwNDI5MTk1NTAyLjM5OTE5LTEzLXNlYW5AcG9vcmx5LnJ1
biAjdjYKPiAKPiBDaGFuZ2VzIGluIHY1Ogo+IC1BZGRlZCB0byB0aGUgc2V0Cj4gQ2hhbmdlcyBp
biB2NjoKPiAtTm9uZQo+IENoYW5nZXMgaW4gdjc6Cj4gLU5vbmUKPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9oZGNwLmMgfCAgMyArKy0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMgICAgfCAxMSArKysrKystLS0tLQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuaCAgICB8ICAyICstCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jICAgIHwgIDIgKy0KPiAgNCBm
aWxlcyBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2hkY3AuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfaGRjcC5jCj4gaW5kZXggMGUwNmEx
MDY2ZDYxLi5lMjZhNDVmODgwY2IgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcF9oZGNwLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwX2hkY3AuYwo+IEBAIC02MzAsNyArNjMwLDggQEAgaW50IGludGVsX2RwX2lu
aXRfaGRjcChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCwKPiAgCQly
ZXR1cm4gMDsKPiAgCj4gIAlpZiAoIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpCj4gLQkJcmV0
dXJuIGludGVsX2hkY3BfaW5pdChpbnRlbF9jb25uZWN0b3IsICZpbnRlbF9kcF9oZGNwX3NoaW0p
Owo+ICsJCXJldHVybiBpbnRlbF9oZGNwX2luaXQoaW50ZWxfY29ubmVjdG9yLCBwb3J0LAo+ICsJ
CQkJICAgICAgICZpbnRlbF9kcF9oZGNwX3NoaW0pOwo+ICAKPiAgCXJldHVybiAwOwo+ICB9Cj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMKPiBpbmRleCA1Njc5ODc3
YzZiNGMuLmQ3OWQ0MTQyYWVhNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2hkY3AuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfaGRjcC5jCj4gQEAgLTE5NTUsNiArMTk1NSw3IEBAIHN0YXRpYyBlbnVtIG1laV9md190
YyBpbnRlbF9nZXRfbWVpX2Z3X3RjKGVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlcikKPiAg
fQo+ICAKPiAgc3RhdGljIGludCBpbml0aWFsaXplX2hkY3BfcG9ydF9kYXRhKHN0cnVjdCBpbnRl
bF9jb25uZWN0b3IgKmNvbm5lY3RvciwKPiArCQkJCSAgICAgZW51bSBwb3J0IHBvcnQsCj4gIAkJ
CQkgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9oZGNwX3NoaW0gKnNoaW0pCj4gIHsKPiAgCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY29ubmVjdG9yLT5iYXNlLmRl
dik7Cj4gQEAgLTE5NjIsOCArMTk2Myw3IEBAIHN0YXRpYyBpbnQgaW5pdGlhbGl6ZV9oZGNwX3Bv
cnRfZGF0YShzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsCj4gIAlzdHJ1Y3QgaGRj
cF9wb3J0X2RhdGEgKmRhdGEgPSAmaGRjcC0+cG9ydF9kYXRhOwo+ICAKPiAgCWlmIChJTlRFTF9H
RU4oZGV2X3ByaXYpIDwgMTIpCj4gLQkJZGF0YS0+ZndfZGRpID0KPiAtCQkJaW50ZWxfZ2V0X21l
aV9md19kZGlfaW5kZXgoaW50ZWxfYXR0YWNoZWRfZW5jb2Rlcihjb25uZWN0b3IpLT5wb3J0KTsK
PiArCQlkYXRhLT5md19kZGkgPSBpbnRlbF9nZXRfbWVpX2Z3X2RkaV9pbmRleChwb3J0KTsKPiAg
CWVsc2UKPiAgCQkvKgo+ICAJCSAqIEFzIHBlciBNRSBGVyBBUEkgZXhwZWN0YXRpb24sIGZvciBH
RU4gMTIrLCBmd19kZGkgaXMgZmlsbGVkCj4gQEAgLTIwMzMsMTQgKzIwMzMsMTQgQEAgdm9pZCBp
bnRlbF9oZGNwX2NvbXBvbmVudF9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKPiAgCX0KPiAgfQo+ICAKPiAtc3RhdGljIHZvaWQgaW50ZWxfaGRjcDJfaW5pdChzdHJ1Y3Qg
aW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsCj4gK3N0YXRpYyB2b2lkIGludGVsX2hkY3AyX2lu
aXQoc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yLCBlbnVtIHBvcnQgcG9ydCwKPiAg
CQkJICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfaGRjcF9zaGltICpzaGltKQo+ICB7Cj4gIAlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoY29ubmVjdG9yLT5iYXNlLmRldik7
Cj4gIAlzdHJ1Y3QgaW50ZWxfaGRjcCAqaGRjcCA9ICZjb25uZWN0b3ItPmhkY3A7Cj4gIAlpbnQg
cmV0Owo+ICAKPiAtCXJldCA9IGluaXRpYWxpemVfaGRjcF9wb3J0X2RhdGEoY29ubmVjdG9yLCBz
aGltKTsKPiArCXJldCA9IGluaXRpYWxpemVfaGRjcF9wb3J0X2RhdGEoY29ubmVjdG9yLCBwb3J0
LCBzaGltKTsKPiAgCWlmIChyZXQpIHsKPiAgCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiTWVp
IGhkY3AgZGF0YSBpbml0IGZhaWxlZFxuIik7Cj4gIAkJcmV0dXJuOwo+IEBAIC0yMDUwLDYgKzIw
NTAsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9oZGNwMl9pbml0KHN0cnVjdCBpbnRlbF9jb25uZWN0
b3IgKmNvbm5lY3RvciwKPiAgfQo+ICAKPiAgaW50IGludGVsX2hkY3BfaW5pdChzdHJ1Y3QgaW50
ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsCj4gKwkJICAgIGVudW0gcG9ydCBwb3J0LAo+ICAJCSAg
ICBjb25zdCBzdHJ1Y3QgaW50ZWxfaGRjcF9zaGltICpzaGltKQo+ICB7Cj4gIAlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNvbm5lY3Rvci0+YmFzZS5kZXYpOwo+
IEBAIC0yMDYwLDcgKzIwNjEsNyBAQCBpbnQgaW50ZWxfaGRjcF9pbml0KHN0cnVjdCBpbnRlbF9j
b25uZWN0b3IgKmNvbm5lY3RvciwKPiAgCQlyZXR1cm4gLUVJTlZBTDsKPiAgCj4gIAlpZiAoaXNf
aGRjcDJfc3VwcG9ydGVkKGRldl9wcml2KSkKPiAtCQlpbnRlbF9oZGNwMl9pbml0KGNvbm5lY3Rv
ciwgc2hpbSk7Cj4gKwkJaW50ZWxfaGRjcDJfaW5pdChjb25uZWN0b3IsIHBvcnQsIHNoaW0pOwo+
ICAKPiAgCXJldCA9Cj4gIAlkcm1fY29ubmVjdG9yX2F0dGFjaF9jb250ZW50X3Byb3RlY3Rpb25f
cHJvcGVydHkoJmNvbm5lY3Rvci0+YmFzZSwKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2hkY3AuaAo+IGluZGV4IDg2YmJhZWMxMjBjYy4uMWJiZjViNjdlZDBhIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5oCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmgKPiBAQCAtMjIsNyArMjIs
NyBAQCBlbnVtIHRyYW5zY29kZXI7Cj4gIHZvaWQgaW50ZWxfaGRjcF9hdG9taWNfY2hlY2soc3Ry
dWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKPiAgCQkJICAgICBzdHJ1Y3QgZHJtX2Nvbm5l
Y3Rvcl9zdGF0ZSAqb2xkX3N0YXRlLAo+ICAJCQkgICAgIHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0
YXRlICpuZXdfc3RhdGUpOwo+IC1pbnQgaW50ZWxfaGRjcF9pbml0KHN0cnVjdCBpbnRlbF9jb25u
ZWN0b3IgKmNvbm5lY3RvciwKPiAraW50IGludGVsX2hkY3BfaW5pdChzdHJ1Y3QgaW50ZWxfY29u
bmVjdG9yICpjb25uZWN0b3IsIGVudW0gcG9ydCBwb3J0LAo+ICAJCSAgICBjb25zdCBzdHJ1Y3Qg
aW50ZWxfaGRjcF9zaGltICpoZGNwX3NoaW0pOwo+ICBpbnQgaW50ZWxfaGRjcF9lbmFibGUoc3Ry
dWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yLAo+ICAJCSAgICAgIGVudW0gdHJhbnNjb2Rl
ciBjcHVfdHJhbnNjb2RlciwgdTggY29udGVudF90eXBlKTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2hkbWkuYwo+IGluZGV4IGE1OWFjZmZmNDU2ZS4uY2E3MWVlM2RkMWM3
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKPiBAQCAt
MzI2MCw3ICszMjYwLDcgQEAgdm9pZCBpbnRlbF9oZG1pX2luaXRfY29ubmVjdG9yKHN0cnVjdCBp
bnRlbF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0LAo+ICAJaW50ZWxfaGRtaS0+YXR0YWNo
ZWRfY29ubmVjdG9yID0gaW50ZWxfY29ubmVjdG9yOwo+ICAKPiAgCWlmIChpc19oZGNwX3N1cHBv
cnRlZChkZXZfcHJpdiwgcG9ydCkpIHsKPiAtCQlpbnQgcmV0ID0gaW50ZWxfaGRjcF9pbml0KGlu
dGVsX2Nvbm5lY3RvciwKPiArCQlpbnQgcmV0ID0gaW50ZWxfaGRjcF9pbml0KGludGVsX2Nvbm5l
Y3RvciwgcG9ydCwKPiAgCQkJCQkgICZpbnRlbF9oZG1pX2hkY3Bfc2hpbSk7Cj4gIAkJaWYgKHJl
dCkKPiAgCQkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sCj4gLS0gCj4gU2VhbiBQYXVsLCBT
b2Z0d2FyZSBFbmdpbmVlciwgR29vZ2xlIC8gQ2hyb21pdW0gT1MKPiAKPiBfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxp
c3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
