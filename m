Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4CAB657D
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 16:08:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEABE89E33;
	Wed, 18 Sep 2019 14:08:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6037B89E33
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 14:08:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 07:08:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,520,1559545200"; d="scan'208";a="270871968"
Received: from mmoller-mobl2.ger.corp.intel.com (HELO [10.249.39.68])
 ([10.249.39.68])
 by orsmga001.jf.intel.com with ESMTP; 18 Sep 2019 07:08:03 -0700
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190905135044.2001-1-ville.syrjala@linux.intel.com>
 <20190905135044.2001-2-ville.syrjala@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <a549237c-1541-3cc2-6f80-ba9810564750@linux.intel.com>
Date: Wed, 18 Sep 2019 16:08:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190905135044.2001-2-ville.syrjala@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Don't advertise modes that
 exceed the max plane size
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
Cc: Leho Kraav <leho@kraav.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMDUtMDktMjAxOSBvbSAxNTo1MCBzY2hyZWVmIFZpbGxlIFN5cmphbGE6Cj4gRnJvbTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPgo+IE1vZGVybiBw
bGF0Zm9ybXMgYWxsb3cgdGhlIHRyYW5zY29kZXJzIGhkaXNwbGF5L3ZkaXNwbGF5IHRvIGV4Y2Vl
ZCB0aGUKPiBwbGFuZXMnIG1heCByZXNvbHV0aW9uLiBUaGlzIGhhcyB0aGUgbmFzdHkgaW1wbGlj
YXRpb24gdGhhdCBtb2RlcyBvbiB0aGUKPiBjb25uZWN0b3JzJyBtb2RlIGxpc3QgbWF5IG5vdCBi
ZSB1c2FibGUgd2hlbiB0aGUgdXNlciBhc2tzIGZvciBhCj4gZnVsbHNjcmVlbiBwbGFuZS4gU2Vl
aW5nIGFzIHRoYXQgaXMgdGhlIG1vc3QgY29tbW9uIHVzZSBjYXNlIGl0IHNlZW1zCj4gcHJ1ZGVu
dCB0byBmaWx0ZXIgb3V0IG1vZGVzIHRoYXQgZG9uJ3QgYWxsb3cgZm9yIGZ1bGxzY3JlZW4gcGxh
bmVzIHRvCj4gYmUgZW5hYmxlZC4KPgo+IExldCdzIGRvIHRoYXQgaW4gdGhlIGNvbm5ldG9yIC5t
b2RlX3ZhbGlkKCkgaG9vayBzbyB0aGF0IG5vcm1hbGx5Cj4gc3VjaCBtb2RlcyBhcmUga2VwdCBo
aWRkZW4gYnV0IHRoZSB1c2VyIGlzIHN0aWxsIGFibGUgdG8gZm9yY2libHkKPiBzcGVjaWZ5IHN1
Y2ggYSBtb2RlIGlmIHRoZXkga25vdyB0aGV5IGRvbid0IG5lZWQgZnVsbHNjcmVlbiBwbGFuZXMu
Cj4KPiBUaGlzIGlzIGluIGxpbmUgd2l0aCBlYWxpZXIgcG9saWNpZXMgcmVnYXJkaW5nIGNlcnRh
aW4gY2xvY2sgbGltaXRzLgo+IFRoZSBpZGVhIGlzIHRvIHByZXZlbnQgdGhlIGNhc3VhbCB1c2Vy
IGZyb20gZW5jb3VudGVyaW5nIGEgbW9kZSB0aGF0Cj4gd291bGQgZmFpbCB1bmRlciB0eXBpY2Fs
IGNvbmRpdGlvbnMsIGJ1dCBhbGxvdyB0aGUgZXhwZXJ0IHVzZXIgdG8KPiBmb3JjZSB0aGluZ3Mg
aWYgdGhleSBzbyB3aXNoLgo+Cj4gTWF5YmUgaW4gdGhlIGZ1dHVyZSB3ZSBzaG91bGQgY29uc2lk
ZXIgYXV0b21hZ2ljYWxseSB1c2luZyB0d28KPiBwbGFuZXMgd2hlbiBvbmUgY2FuJ3QgY292ZXIg
dGhlIGVudGlyZSBzY3JlZW4/IFdvdWxkbid0IGJlIGEKPiBncmVhdCBtYXRjaCBmb3IgdGhlIGN1
cnJlbnQgdWFwaSB3aXRoIGV4cGxpY2l0IHBsYW5lcyB0aG91Z2gsCj4gYnV0IEkgZ3Vlc3Mgbm8g
d29yc2UgdGhhbiB1c2luZyB0d28gcGlwZXMgKHdoaWNoIHdlIGFwcGFyZW50bHkKPiBoYXZlIHRv
IGluIHRoZSBmdXR1cmUgYW55d2F5KS4gRWl0aGVyIHRoYXQgb3Igd2UnZCBoYXZlIHRvCj4gdGVh
Y2ggdXNlcnNwYWNlIHRvIGRvIGl0IGZvciB1cy4KPgo+IENjOiBMZWhvIEtyYWF2IDxsZWhvQGty
YWF2LmNvbT4KPiBDYzogU2VhbiBQYXVsIDxzZWFuQHBvb3JseS5ydW4+Cj4gQ2M6IEpvc8OpIFJv
YmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMzEgKysrKysrKysr
KysrKysrKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmggfCAgNCArKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jICAg
ICAgfCAgMiArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzaS5jICAg
ICB8ICAzICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jICAg
IHwgIDQgKystCj4gIDUgZmlsZXMgY2hhbmdlZCwgNDEgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlv
bnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
Cj4gaW5kZXggNGU2MzM0MmVhNTk3Li45OTQ2NmEyOWJmMzYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0xNTg0Niw2ICsxNTg0Niw3
IEBAIGludGVsX21vZGVfdmFsaWQoc3RydWN0IGRybV9kZXZpY2UgKmRldiwKPiAgCQkJICAgRFJN
X01PREVfRkxBR19DTEtESVYyKSkKPiAgCQlyZXR1cm4gTU9ERV9CQUQ7Cj4gIAo+ICsJLyogVHJh
bnNjb2RlciB0aW1pbmcgbGltaXRzICovCj4gIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSA5
IHx8Cj4gIAkgICAgSVNfQlJPQURXRUxMKGRldl9wcml2KSB8fCBJU19IQVNXRUxMKGRldl9wcml2
KSkgewo+ICAJCWhkaXNwbGF5X21heCA9IDgxOTI7IC8qIEZESSBtYXggNDA5NiBoYW5kbGVkIGVs
c2V3aGVyZSAqLwo+IEBAIC0xNTg3OSw2ICsxNTg4MCwzNiBAQCBpbnRlbF9tb2RlX3ZhbGlkKHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4gIAlyZXR1cm4gTU9ERV9PSzsKPiAgfQo+ICAKPiArZW51
bSBkcm1fbW9kZV9zdGF0dXMKPiAraW50ZWxfbW9kZV92YWxpZF9tYXhfcGxhbmVfc2l6ZShzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gKwkJCQljb25zdCBzdHJ1Y3QgZHJtX2Rp
c3BsYXlfbW9kZSAqbW9kZSkKPiArewo+ICsJaW50IHBsYW5lX3dpZHRoX21heCwgcGxhbmVfaGVp
Z2h0X21heDsKPiArCj4gKwkvKgo+ICsJICogaW50ZWxfbW9kZV92YWxpZCgpIHNob3VsZCBiZQo+
ICsJICogc3VmZmljaWVudCBvbiBvbGRlciBwbGF0Zm9ybXMuCj4gKwkgKi8KPiArCWlmIChJTlRF
TF9HRU4oZGV2X3ByaXYpIDwgOSkKPiArCQlyZXR1cm4gTU9ERV9PSzsKPiArCj4gKwkvKgo+ICsJ
ICogTW9zdCBwZW9wbGUgd2lsbCBwcm9iYWJseSB3YW50IGEgZnVsbHNjcmVlbgo+ICsJICogcGxh
bmUgc28gbGV0J3Mgbm90IGFkdmVydGl6ZSBtb2RlcyB0aGF0IGFyZQo+ICsJICogdG9vIGJpZyBm
b3IgdGhhdC4KPiArCSAqLwo+ICsJcGxhbmVfd2lkdGhfbWF4ID0gNTEyMDsKPiArCXBsYW5lX2hl
aWdodF9tYXggPSA0MDk2Owo+ICsKPiArCWlmIChtb2RlLT5oZGlzcGxheSA+IHBsYW5lX3dpZHRo
X21heCkKPiArCQlyZXR1cm4gTU9ERV9IX0lMTEVHQUw7Cj4gKwo+ICsJaWYgKG1vZGUtPnZkaXNw
bGF5ID4gcGxhbmVfaGVpZ2h0X21heCkKPiArCQlyZXR1cm4gTU9ERV9WX0lMTEVHQUw7Cj4gKwo+
ICsJcmV0dXJuIE1PREVfT0s7Cj4gK30KPiArCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHJtX21v
ZGVfY29uZmlnX2Z1bmNzIGludGVsX21vZGVfZnVuY3MgPSB7Cj4gIAkuZmJfY3JlYXRlID0gaW50
ZWxfdXNlcl9mcmFtZWJ1ZmZlcl9jcmVhdGUsCj4gIAkuZ2V0X2Zvcm1hdF9pbmZvID0gaW50ZWxf
Z2V0X2Zvcm1hdF9pbmZvLAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5oCj4gaW5kZXggMzNmZDUyM2M0NjIyLi5lY2FiYjgyN2ViODcgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaAo+IEBAIC0zMiw2ICsz
Miw3IEBAIGVudW0gbGlua19tX25fc2V0Owo+ICBzdHJ1Y3QgZHBsbDsKPiAgc3RydWN0IGRybV9j
b25uZWN0b3I7Cj4gIHN0cnVjdCBkcm1fZGV2aWNlOwo+ICtzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9k
ZTsKPiAgc3RydWN0IGRybV9lbmNvZGVyOwo+ICBzdHJ1Y3QgZHJtX2ZpbGU7Cj4gIHN0cnVjdCBk
cm1fZnJhbWVidWZmZXI7Cj4gQEAgLTQ0Nyw2ICs0NDgsOSBAQCB2b2lkIGxwdF9kaXNhYmxlX2Ns
a291dF9kcChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOwo+ICB1MzIgaW50ZWxf
cGxhbmVfZmJfbWF4X3N0cmlkZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4g
IAkJCSAgICAgIHUzMiBwaXhlbF9mb3JtYXQsIHU2NCBtb2RpZmllcik7Cj4gIGJvb2wgaW50ZWxf
cGxhbmVfY2FuX3JlbWFwKGNvbnN0IHN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3Rh
dGUpOwo+ICtlbnVtIGRybV9tb2RlX3N0YXR1cwo+ICtpbnRlbF9tb2RlX3ZhbGlkX21heF9wbGFu
ZV9zaXplKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiArCQkJCWNvbnN0IHN0
cnVjdCBkcm1fZGlzcGxheV9tb2RlICptb2RlKTsKPiAgZW51bSBwaHkgaW50ZWxfcG9ydF90b19w
aHkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGVudW0gcG9ydCBwb3J0KTsKPiAgCj4g
IHZvaWQgaW50ZWxfcGxhbmVfZGVzdHJveShzdHJ1Y3QgZHJtX3BsYW5lICpwbGFuZSk7Cj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IGluZGV4IGQwOTEzM2E5NThlMS4u
Y2NhZjlmMDBiNzQ3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
Ywo+IEBAIC01NjIsNyArNTYyLDcgQEAgaW50ZWxfZHBfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2Nv
bm5lY3RvciAqY29ubmVjdG9yLAo+ICAJaWYgKG1vZGUtPmZsYWdzICYgRFJNX01PREVfRkxBR19E
QkxDTEspCj4gIAkJcmV0dXJuIE1PREVfSF9JTExFR0FMOwo+ICAKPiAtCXJldHVybiBNT0RFX09L
Owo+ICsJcmV0dXJuIGludGVsX21vZGVfdmFsaWRfbWF4X3BsYW5lX3NpemUoZGV2X3ByaXYsIG1v
ZGUpOwo+ICB9Cj4gIAo+ICB1MzIgaW50ZWxfZHBfcGFja19hdXgoY29uc3QgdTggKnNyYywgaW50
IHNyY19ieXRlcykKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kc2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNpLmMKPiBp
bmRleCA1ZmVjMDJhY2VhZWQuLmEyYTkzNzEwOWE1YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzaS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kc2kuYwo+IEBAIC01NSw2ICs1NSw3IEBAIGludCBpbnRlbF9kc2lf
Z2V0X21vZGVzKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpCj4gIGVudW0gZHJtX21v
ZGVfc3RhdHVzIGludGVsX2RzaV9tb2RlX3ZhbGlkKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25u
ZWN0b3IsCj4gIAkJCQkJICBzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZSkKPiAgewo+ICsJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjb25uZWN0b3ItPmRl
dik7Cj4gIAlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICppbnRlbF9jb25uZWN0b3IgPSB0b19pbnRl
bF9jb25uZWN0b3IoY29ubmVjdG9yKTsKPiAgCWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2Rl
ICpmaXhlZF9tb2RlID0gaW50ZWxfY29ubmVjdG9yLT5wYW5lbC5maXhlZF9tb2RlOwo+ICAJaW50
IG1heF9kb3RjbGsgPSB0b19pOTE1KGNvbm5lY3Rvci0+ZGV2KS0+bWF4X2RvdGNsa19mcmVxOwo+
IEBAIC03Myw3ICs3NCw3IEBAIGVudW0gZHJtX21vZGVfc3RhdHVzIGludGVsX2RzaV9tb2RlX3Zh
bGlkKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsCj4gIAkJCXJldHVybiBNT0RFX0NM
T0NLX0hJR0g7Cj4gIAl9Cj4gIAo+IC0JcmV0dXJuIE1PREVfT0s7Cj4gKwlyZXR1cm4gaW50ZWxf
bW9kZV92YWxpZF9tYXhfcGxhbmVfc2l6ZShkZXZfcHJpdiwgbW9kZSk7Cj4gIH0KPiAgCj4gIHN0
cnVjdCBpbnRlbF9kc2lfaG9zdCAqaW50ZWxfZHNpX2hvc3RfaW5pdChzdHJ1Y3QgaW50ZWxfZHNp
ICppbnRlbF9kc2ksCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMK
PiBpbmRleCBjNTAwZmM5MTU0YzguLmRiYzY4NjUxNWRjZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCj4gQEAgLTIxODgsOCArMjE4OCwxMCBAQCBpbnRl
bF9oZG1pX21vZGVfdmFsaWQoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKPiAgCQkJ
c3RhdHVzID0gaGRtaV9wb3J0X2Nsb2NrX3ZhbGlkKGhkbWksIGNsb2NrICogNSAvIDQsCj4gIAkJ
CQkJCSAgICAgICB0cnVlLCBmb3JjZV9kdmkpOwo+ICAJfQo+ICsJaWYgKHN0YXR1cyAhPSBNT0RF
X09LKQo+ICsJCXJldHVybiBzdGF0dXM7Cj4gIAo+IC0JcmV0dXJuIHN0YXR1czsKPiArCXJldHVy
biBpbnRlbF9tb2RlX3ZhbGlkX21heF9wbGFuZV9zaXplKGRldl9wcml2LCBtb2RlKTsKPiAgfQo+
ICAKPiAgc3RhdGljIGJvb2wgaGRtaV9kZWVwX2NvbG9yX3Bvc3NpYmxlKGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAoKUmV2aWV3ZWQtYnk6IE1hYXJ0ZW4gTGFua2hv
cnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
