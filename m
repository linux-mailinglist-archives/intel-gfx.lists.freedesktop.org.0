Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECEEA219E92
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 13:01:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 470AD6E311;
	Thu,  9 Jul 2020 11:01:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 725526E311;
 Thu,  9 Jul 2020 11:01:31 +0000 (UTC)
IronPort-SDR: 6t56FRr+1k1hdn4MFjEl3rdt4AU8tHZO+ryPUL8aZALYAYOMIxnijDACtmKRDHqTGKOvIJJrlX
 WcjEjYBlooUA==
X-IronPort-AV: E=McAfee;i="6000,8403,9676"; a="136200241"
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="136200241"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2020 04:01:30 -0700
IronPort-SDR: ufyUQyo/2uF11SEGIKvzdY1FHFgnI4dDkhB50GgY53oE5Z/NCnOFWuA1DC7YgQp3S5H7Zvcj7X
 Kl4/IceH0/7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,331,1589266800"; d="scan'208";a="314925661"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga008.jf.intel.com with ESMTP; 09 Jul 2020 04:01:27 -0700
Date: Thu, 9 Jul 2020 16:25:18 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Sean Paul <sean@poorly.run>
Message-ID: <20200709105518.GE13481@intel.com>
References: <20200623155907.22961-1-sean@poorly.run>
 <20200623155907.22961-14-sean@poorly.run>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200623155907.22961-14-sean@poorly.run>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: dri-devel@lists.freedesktop.org, daniel.vetter@ffwll.ch,
 intel-gfx@lists.freedesktop.org, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAyMC0wNi0yMyBhdCAxMTo1OTowMyAtMDQwMCwgU2VhbiBQYXVsIHdyb3RlOgo+IEZyb206
IFNlYW4gUGF1bCA8c2VhbnBhdWxAY2hyb21pdW0ub3JnPgo+IAo+IFRoaXMgcGF0Y2ggcGx1bWJz
IHBvcnQgdGhyb3VnaCBoZGNwIGluaXQgaW5zdGVhZCBvZiByZWx5aW5nIG9uCj4gaW50ZWxfYXR0
YWNoZWRfZW5jb2RlcigpIHRvIHJldHVybiBhIG5vbi1OVUxMIGVuY29kZXIgd2hpY2ggd29uJ3Qg
d29yawo+IGZvciBNU1QgY29ubmVjdG9ycy4KPiAKPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBTZWFuIFBhdWwgPHNl
YW5wYXVsQGNocm9taXVtLm9yZz4KUmV2aWV3ZWQtYnk6IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdh
bS5jQGludGVsLmNvbT4KCj4gTGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3BhdGNoL21zZ2lkLzIwMjAwMzA1MjAxMjM2LjE1MjMwNy0xMy1zZWFuQHBvb3JseS5ydW4gI3Y1
Cj4gTGluazogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoL21zZ2lkLzIw
MjAwNDI5MTk1NTAyLjM5OTE5LTEzLXNlYW5AcG9vcmx5LnJ1biAjdjYKPiAKPiBDaGFuZ2VzIGlu
IHY1Ogo+IC1BZGRlZCB0byB0aGUgc2V0Cj4gQ2hhbmdlcyBpbiB2NjoKPiAtTm9uZQo+IENoYW5n
ZXMgaW4gdjc6Cj4gLU5vbmUKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9oZGNwLmMgfCAgMyArKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9oZGNwLmMgICAgfCAxMSArKysrKystLS0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2hkY3AuaCAgICB8ICAyICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfaGRtaS5jICAgIHwgIDIgKy0KPiAgNCBmaWxlcyBjaGFuZ2VkLCAxMCBpbnNl
cnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2hkY3AuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfaGRjcC5jCj4gaW5kZXggMGUwNmExMDY2ZDYxLi5lMjZhNDVmODgwY2Ig
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9oZGNw
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2hkY3AuYwo+
IEBAIC02MzAsNyArNjMwLDggQEAgaW50IGludGVsX2RwX2luaXRfaGRjcChzdHJ1Y3QgaW50ZWxf
ZGlnaXRhbF9wb3J0ICppbnRlbF9kaWdfcG9ydCwKPiAgCQlyZXR1cm4gMDsKPiAgCj4gIAlpZiAo
IWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpCj4gLQkJcmV0dXJuIGludGVsX2hkY3BfaW5pdChp
bnRlbF9jb25uZWN0b3IsICZpbnRlbF9kcF9oZGNwX3NoaW0pOwo+ICsJCXJldHVybiBpbnRlbF9o
ZGNwX2luaXQoaW50ZWxfY29ubmVjdG9yLCBwb3J0LAo+ICsJCQkJICAgICAgICZpbnRlbF9kcF9o
ZGNwX3NoaW0pOwo+ICAKPiAgCXJldHVybiAwOwo+ICB9Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9oZGNwLmMKPiBpbmRleCA1Njc5ODc3YzZiNGMuLmQ3OWQ0MTQyYWVhNyAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5jCj4gQEAgLTE5
NTUsNiArMTk1NSw3IEBAIHN0YXRpYyBlbnVtIG1laV9md190YyBpbnRlbF9nZXRfbWVpX2Z3X3Rj
KGVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlcikKPiAgfQo+ICAKPiAgc3RhdGljIGludCBp
bml0aWFsaXplX2hkY3BfcG9ydF9kYXRhKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3Rv
ciwKPiArCQkJCSAgICAgZW51bSBwb3J0IHBvcnQsCj4gIAkJCQkgICAgIGNvbnN0IHN0cnVjdCBp
bnRlbF9oZGNwX3NoaW0gKnNoaW0pCj4gIHsKPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9IHRvX2k5MTUoY29ubmVjdG9yLT5iYXNlLmRldik7Cj4gQEAgLTE5NjIsOCArMTk2
Myw3IEBAIHN0YXRpYyBpbnQgaW5pdGlhbGl6ZV9oZGNwX3BvcnRfZGF0YShzdHJ1Y3QgaW50ZWxf
Y29ubmVjdG9yICpjb25uZWN0b3IsCj4gIAlzdHJ1Y3QgaGRjcF9wb3J0X2RhdGEgKmRhdGEgPSAm
aGRjcC0+cG9ydF9kYXRhOwo+ICAKPiAgCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpIDwgMTIpCj4g
LQkJZGF0YS0+ZndfZGRpID0KPiAtCQkJaW50ZWxfZ2V0X21laV9md19kZGlfaW5kZXgoaW50ZWxf
YXR0YWNoZWRfZW5jb2Rlcihjb25uZWN0b3IpLT5wb3J0KTsKPiArCQlkYXRhLT5md19kZGkgPSBp
bnRlbF9nZXRfbWVpX2Z3X2RkaV9pbmRleChwb3J0KTsKPiAgCWVsc2UKPiAgCQkvKgo+ICAJCSAq
IEFzIHBlciBNRSBGVyBBUEkgZXhwZWN0YXRpb24sIGZvciBHRU4gMTIrLCBmd19kZGkgaXMgZmls
bGVkCj4gQEAgLTIwMzMsMTQgKzIwMzMsMTQgQEAgdm9pZCBpbnRlbF9oZGNwX2NvbXBvbmVudF9p
bml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgCX0KPiAgfQo+ICAKPiAt
c3RhdGljIHZvaWQgaW50ZWxfaGRjcDJfaW5pdChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25u
ZWN0b3IsCj4gK3N0YXRpYyB2b2lkIGludGVsX2hkY3AyX2luaXQoc3RydWN0IGludGVsX2Nvbm5l
Y3RvciAqY29ubmVjdG9yLCBlbnVtIHBvcnQgcG9ydCwKPiAgCQkJICAgICBjb25zdCBzdHJ1Y3Qg
aW50ZWxfaGRjcF9zaGltICpzaGltKQo+ICB7Cj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
aTkxNSA9IHRvX2k5MTUoY29ubmVjdG9yLT5iYXNlLmRldik7Cj4gIAlzdHJ1Y3QgaW50ZWxfaGRj
cCAqaGRjcCA9ICZjb25uZWN0b3ItPmhkY3A7Cj4gIAlpbnQgcmV0Owo+ICAKPiAtCXJldCA9IGlu
aXRpYWxpemVfaGRjcF9wb3J0X2RhdGEoY29ubmVjdG9yLCBzaGltKTsKPiArCXJldCA9IGluaXRp
YWxpemVfaGRjcF9wb3J0X2RhdGEoY29ubmVjdG9yLCBwb3J0LCBzaGltKTsKPiAgCWlmIChyZXQp
IHsKPiAgCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiTWVpIGhkY3AgZGF0YSBpbml0IGZhaWxl
ZFxuIik7Cj4gIAkJcmV0dXJuOwo+IEBAIC0yMDUwLDYgKzIwNTAsNyBAQCBzdGF0aWMgdm9pZCBp
bnRlbF9oZGNwMl9pbml0KHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciwKPiAgfQo+
ICAKPiAgaW50IGludGVsX2hkY3BfaW5pdChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0
b3IsCj4gKwkJICAgIGVudW0gcG9ydCBwb3J0LAo+ICAJCSAgICBjb25zdCBzdHJ1Y3QgaW50ZWxf
aGRjcF9zaGltICpzaGltKQo+ICB7Cj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYgPSB0b19pOTE1KGNvbm5lY3Rvci0+YmFzZS5kZXYpOwo+IEBAIC0yMDYwLDcgKzIwNjEsNyBA
QCBpbnQgaW50ZWxfaGRjcF9pbml0KHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciwK
PiAgCQlyZXR1cm4gLUVJTlZBTDsKPiAgCj4gIAlpZiAoaXNfaGRjcDJfc3VwcG9ydGVkKGRldl9w
cml2KSkKPiAtCQlpbnRlbF9oZGNwMl9pbml0KGNvbm5lY3Rvciwgc2hpbSk7Cj4gKwkJaW50ZWxf
aGRjcDJfaW5pdChjb25uZWN0b3IsIHBvcnQsIHNoaW0pOwo+ICAKPiAgCXJldCA9Cj4gIAlkcm1f
Y29ubmVjdG9yX2F0dGFjaF9jb250ZW50X3Byb3RlY3Rpb25fcHJvcGVydHkoJmNvbm5lY3Rvci0+
YmFzZSwKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9o
ZGNwLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuaAo+IGluZGV4
IDg2YmJhZWMxMjBjYy4uMWJiZjViNjdlZDBhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5oCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9oZGNwLmgKPiBAQCAtMjIsNyArMjIsNyBAQCBlbnVtIHRyYW5zY29kZXI7
Cj4gIHZvaWQgaW50ZWxfaGRjcF9hdG9taWNfY2hlY2soc3RydWN0IGRybV9jb25uZWN0b3IgKmNv
bm5lY3RvciwKPiAgCQkJICAgICBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqb2xkX3N0YXRl
LAo+ICAJCQkgICAgIHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpuZXdfc3RhdGUpOwo+IC1p
bnQgaW50ZWxfaGRjcF9pbml0KHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciwKPiAr
aW50IGludGVsX2hkY3BfaW5pdChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsIGVu
dW0gcG9ydCBwb3J0LAo+ICAJCSAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfaGRjcF9zaGltICpoZGNw
X3NoaW0pOwo+ICBpbnQgaW50ZWxfaGRjcF9lbmFibGUoc3RydWN0IGludGVsX2Nvbm5lY3RvciAq
Y29ubmVjdG9yLAo+ICAJCSAgICAgIGVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciwgdTgg
Y29udGVudF90eXBlKTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9oZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWku
Ywo+IGluZGV4IGE1OWFjZmZmNDU2ZS4uY2E3MWVlM2RkMWM3IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKPiBAQCAtMzI2MCw3ICszMjYwLDcgQEAgdm9p
ZCBpbnRlbF9oZG1pX2luaXRfY29ubmVjdG9yKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmlu
dGVsX2RpZ19wb3J0LAo+ICAJaW50ZWxfaGRtaS0+YXR0YWNoZWRfY29ubmVjdG9yID0gaW50ZWxf
Y29ubmVjdG9yOwo+ICAKPiAgCWlmIChpc19oZGNwX3N1cHBvcnRlZChkZXZfcHJpdiwgcG9ydCkp
IHsKPiAtCQlpbnQgcmV0ID0gaW50ZWxfaGRjcF9pbml0KGludGVsX2Nvbm5lY3RvciwKPiArCQlp
bnQgcmV0ID0gaW50ZWxfaGRjcF9pbml0KGludGVsX2Nvbm5lY3RvciwgcG9ydCwKPiAgCQkJCQkg
ICZpbnRlbF9oZG1pX2hkY3Bfc2hpbSk7Cj4gIAkJaWYgKHJldCkKPiAgCQkJZHJtX2RiZ19rbXMo
JmRldl9wcml2LT5kcm0sCj4gLS0gCj4gU2VhbiBQYXVsLCBTb2Z0d2FyZSBFbmdpbmVlciwgR29v
Z2xlIC8gQ2hyb21pdW0gT1MKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
