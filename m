Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74AC6A34D6
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 12:20:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AEE0892B1;
	Fri, 30 Aug 2019 10:20:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C00456E0EC
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Aug 2019 10:20:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 03:20:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,447,1559545200"; d="scan'208";a="206046798"
Received: from aborowie-mobl.ger.corp.intel.com (HELO [10.249.35.21])
 ([10.249.35.21])
 by fmsmga004.fm.intel.com with ESMTP; 30 Aug 2019 03:20:01 -0700
To: Manasi Navare <manasi.d.navare@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190827221735.29351-3-manasi.d.navare@intel.com>
 <20190828224701.422-1-manasi.d.navare@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <215ba9b9-cc48-21bd-be5b-08b93aa78479@linux.intel.com>
Date: Fri, 30 Aug 2019 12:20:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190828224701.422-1-manasi.d.navare@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915/display: Move the
 commit_tail() disable sequence to separate function
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMjktMDgtMjAxOSBvbSAwMDo0NyBzY2hyZWVmIE1hbmFzaSBOYXZhcmU6Cj4gQ3JlYXRlIGEg
bmV3IGZ1bmN0aW9uIGludGVsX2NvbW1pdF9tb2Rlc2V0X2Rpc2FibGVzKCkgY29uc2lzdGVudCB3
aXRoIHRoZSBuYW1pbmcKPiBpbiBkcm0gYXRvbWljIGhlbHBlcnMgYW5kIHNpbWlsYXIgdG8gdGhl
IGVuYWJsZSBmdW5jdGlvbi4KPiBUaGlzIGhlbHBzIGJldHRlciBvcmdhbml6ZSB0aGUgZGlzYWJs
ZSBzZXF1ZW5jZSBpbiBhdG9taWNfY29tbWl0X3RhaWwoKQo+Cj4gTm8gZnVuY3Rpb25hbCBjaGFu
Z2UKPgo+IHY0Ogo+ICogRG8gbm90IGNyZWF0ZSBhIGZ1bmN0aW9uIHBvaW50ZXIsIGp1c3QgYSBm
dW5jdGlvbiAoTWFhcnRlbikKPiB2MzoKPiAqIFJlYmFzZSAoTWFuYXNpKQo+IHYyOgo+ICogQ3Jl
YXRlIGEgaGVscGVyIGZvciBvbGRfY3J0Y19zdGF0ZSBkaXNhYmxlcyAoTHVjYXMpCj4KPiBTdWdn
ZXN0ZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+IENjOiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IENjOiBNYWFy
dGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+IENjOiBN
YXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+IENjOiBKYW5pIE5pa3VsYSA8
amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1h
bmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgOTIgKysrKysrKysrKysrLS0tLS0tLS0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICAgfCAgMSArCj4gIDIgZmlsZXMg
Y2hhbmdlZCwgNTkgaW5zZXJ0aW9ucygrKSwgMzQgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IGluZGV4IDc3ZGZiMGY2YTZl
MC4uNWM1M2I0NWRjMDZlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKPiBAQCAtMTM3NTgsNiArMTM3NTgsNjEgQEAgc3RhdGljIHZvaWQgaW50
ZWxfdXBkYXRlX2NydGMoc3RydWN0IGludGVsX2NydGMgKmNydGMsCj4gIAlpbnRlbF9maW5pc2hf
Y3J0Y19jb21taXQoc3RhdGUsIGNydGMpOwo+ICB9Cj4gIAo+ICtzdGF0aWMgdm9pZCBpbnRlbF9v
bGRfY3J0Y19zdGF0ZV9kaXNhYmxlcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwK
PiArCQkJCQkgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwKPiArCQkJ
CQkgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSwKPiArCQkJCQkgIHN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjKQo+ICt7Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYgPSB0b19pOTE1KHN0YXRlLT5iYXNlLmRldik7Cj4gKwo+ICsJaW50ZWxfY3J0Y19k
aXNhYmxlX3BsYW5lcyhzdGF0ZSwgY3J0Yyk7Cj4gKwo+ICsJLyoKPiArCSAqIFdlIG5lZWQgdG8g
ZGlzYWJsZSBwaXBlIENSQyBiZWZvcmUgZGlzYWJsaW5nIHRoZSBwaXBlLAo+ICsJICogb3Igd2Ug
cmFjZSBhZ2FpbnN0IHZibGFuayBvZmYuCj4gKwkgKi8KPiArCWludGVsX2NydGNfZGlzYWJsZV9w
aXBlX2NyYyhjcnRjKTsKPiArCj4gKwlkZXZfcHJpdi0+ZGlzcGxheS5jcnRjX2Rpc2FibGUob2xk
X2NydGNfc3RhdGUsIHN0YXRlKTsKPiArCWNydGMtPmFjdGl2ZSA9IGZhbHNlOwo+ICsJaW50ZWxf
ZmJjX2Rpc2FibGUoY3J0Yyk7Cj4gKwlpbnRlbF9kaXNhYmxlX3NoYXJlZF9kcGxsKG9sZF9jcnRj
X3N0YXRlKTsKPiArCj4gKwkvKgo+ICsJICogVW5kZXJydW5zIGRvbid0IGFsd2F5cyByYWlzZSBp
bnRlcnJ1cHRzLAo+ICsJICogc28gY2hlY2sgbWFudWFsbHkuCj4gKwkgKi8KPiArCWludGVsX2No
ZWNrX2NwdV9maWZvX3VuZGVycnVucyhkZXZfcHJpdik7Cj4gKwlpbnRlbF9jaGVja19wY2hfZmlm
b191bmRlcnJ1bnMoZGV2X3ByaXYpOwo+ICsKPiArCS8qIEZJWE1FIHVuaWZ5IHRoaXMgZm9yIGFs
bCBwbGF0Zm9ybXMgKi8KPiArCWlmICghbmV3X2NydGNfc3RhdGUtPmJhc2UuYWN0aXZlICYmCj4g
KwkgICAgIUhBU19HTUNIKGRldl9wcml2KSAmJgo+ICsJICAgIGRldl9wcml2LT5kaXNwbGF5Lmlu
aXRpYWxfd2F0ZXJtYXJrcykKPiArCQlkZXZfcHJpdi0+ZGlzcGxheS5pbml0aWFsX3dhdGVybWFy
a3Moc3RhdGUsCj4gKwkJCQkJCSAgICAgbmV3X2NydGNfc3RhdGUpOwo+ICt9Cj4gKwo+ICtzdGF0
aWMgdm9pZCBpbnRlbF9jb21taXRfbW9kZXNldF9kaXNhYmxlcyhzdHJ1Y3QgaW50ZWxfYXRvbWlj
X3N0YXRlICpzdGF0ZSkKPiArewo+ICsJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRj
X3N0YXRlLCAqb2xkX2NydGNfc3RhdGU7Cj4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKPiAr
CWludCBpOwo+ICsKPiArCWZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRl
LCBjcnRjLCBvbGRfY3J0Y19zdGF0ZSwgbmV3X2NydGNfc3RhdGUsIGkpIHsKWW91IGRyb3BwZWQg
YSBmb3JfZWFjaF8qX3JldmVyc2UuIDopIEZpeCBzZW50Lgo+ICsJCWlmICghbmVlZHNfbW9kZXNl
dChuZXdfY3J0Y19zdGF0ZSkpCj4gKwkJCWNvbnRpbnVlOwo+ICsKPiArCQlpbnRlbF9wcmVfcGxh
bmVfdXBkYXRlKG9sZF9jcnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSk7Cj4gKwo+ICsJCWlmIChv
bGRfY3J0Y19zdGF0ZS0+YmFzZS5hY3RpdmUpCj4gKwkJCWludGVsX29sZF9jcnRjX3N0YXRlX2Rp
c2FibGVzKHN0YXRlLAo+ICsJCQkJCQkgICAgICBvbGRfY3J0Y19zdGF0ZSwKPiArCQkJCQkJICAg
ICAgbmV3X2NydGNfc3RhdGUsCj4gKwkJCQkJCSAgICAgIGNydGMpOwo+ICsJfQo+ICt9Cj4gIHN0
YXRpYyB2b2lkIGludGVsX2NvbW1pdF9tb2Rlc2V0X2VuYWJsZXMoc3RydWN0IGludGVsX2F0b21p
Y19zdGF0ZSAqc3RhdGUpCj4gIHsKPiAgCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOwo+IEBAIC0x
MzkzOCw0MiArMTM5OTMsMTAgQEAgc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2NvbW1pdF90YWls
KHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQo+ICAJCQlwdXRfZG9tYWluc1tjcnRj
LT5waXBlXSA9Cj4gIAkJCQltb2Rlc2V0X2dldF9jcnRjX3Bvd2VyX2RvbWFpbnMobmV3X2NydGNf
c3RhdGUpOwo+ICAJCX0KPiAtCj4gLQkJaWYgKCFuZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRl
KSkKPiAtCQkJY29udGludWU7Cj4gLQo+IC0JCWludGVsX3ByZV9wbGFuZV91cGRhdGUob2xkX2Ny
dGNfc3RhdGUsIG5ld19jcnRjX3N0YXRlKTsKPiAtCj4gLQkJaWYgKG9sZF9jcnRjX3N0YXRlLT5i
YXNlLmFjdGl2ZSkgewo+IC0JCQlpbnRlbF9jcnRjX2Rpc2FibGVfcGxhbmVzKHN0YXRlLCBjcnRj
KTsKPiAtCj4gLQkJCS8qCj4gLQkJCSAqIFdlIG5lZWQgdG8gZGlzYWJsZSBwaXBlIENSQyBiZWZv
cmUgZGlzYWJsaW5nIHRoZSBwaXBlLAo+IC0JCQkgKiBvciB3ZSByYWNlIGFnYWluc3QgdmJsYW5r
IG9mZi4KPiAtCQkJICovCj4gLQkJCWludGVsX2NydGNfZGlzYWJsZV9waXBlX2NyYyhjcnRjKTsK
PiAtCj4gLQkJCWRldl9wcml2LT5kaXNwbGF5LmNydGNfZGlzYWJsZShvbGRfY3J0Y19zdGF0ZSwg
c3RhdGUpOwo+IC0JCQljcnRjLT5hY3RpdmUgPSBmYWxzZTsKPiAtCQkJaW50ZWxfZmJjX2Rpc2Fi
bGUoY3J0Yyk7Cj4gLQkJCWludGVsX2Rpc2FibGVfc2hhcmVkX2RwbGwob2xkX2NydGNfc3RhdGUp
Owo+IC0KPiAtCQkJLyoKPiAtCQkJICogVW5kZXJydW5zIGRvbid0IGFsd2F5cyByYWlzZQo+IC0J
CQkgKiBpbnRlcnJ1cHRzLCBzbyBjaGVjayBtYW51YWxseS4KPiAtCQkJICovCj4gLQkJCWludGVs
X2NoZWNrX2NwdV9maWZvX3VuZGVycnVucyhkZXZfcHJpdik7Cj4gLQkJCWludGVsX2NoZWNrX3Bj
aF9maWZvX3VuZGVycnVucyhkZXZfcHJpdik7Cj4gLQo+IC0JCQkvKiBGSVhNRSB1bmlmeSB0aGlz
IGZvciBhbGwgcGxhdGZvcm1zICovCj4gLQkJCWlmICghbmV3X2NydGNfc3RhdGUtPmJhc2UuYWN0
aXZlICYmCj4gLQkJCSAgICAhSEFTX0dNQ0goZGV2X3ByaXYpICYmCj4gLQkJCSAgICBkZXZfcHJp
di0+ZGlzcGxheS5pbml0aWFsX3dhdGVybWFya3MpCj4gLQkJCQlkZXZfcHJpdi0+ZGlzcGxheS5p
bml0aWFsX3dhdGVybWFya3Moc3RhdGUsCj4gLQkJCQkJCQkJICAgICBuZXdfY3J0Y19zdGF0ZSk7
Cj4gLQkJfQo+ICAJfQo+ICAKPiArCWludGVsX2NvbW1pdF9tb2Rlc2V0X2Rpc2FibGVzKHN0YXRl
KTsKPiArCj4gIAkvKiBGSVhNRTogRXZlbnR1YWxseSBnZXQgcmlkIG9mIG91ciBjcnRjLT5jb25m
aWcgcG9pbnRlciAqLwo+ICAJZm9yX2VhY2hfbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUs
IGNydGMsIG5ld19jcnRjX3N0YXRlLCBpKQo+ICAJCWNydGMtPmNvbmZpZyA9IG5ld19jcnRjX3N0
YXRlOwo+IEBAIC0xNTkyOSw2ICsxNTk1Miw3IEBAIHZvaWQgaW50ZWxfaW5pdF9kaXNwbGF5X2hv
b2tzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgCQlkZXZfcHJpdi0+ZGlz
cGxheS5jb21taXRfbW9kZXNldF9lbmFibGVzID0gc2tsX2NvbW1pdF9tb2Rlc2V0X2VuYWJsZXM7
Cj4gIAllbHNlCj4gIAkJZGV2X3ByaXYtPmRpc3BsYXkuY29tbWl0X21vZGVzZXRfZW5hYmxlcyA9
IGludGVsX2NvbW1pdF9tb2Rlc2V0X2VuYWJsZXM7Cj4gKwo+ICB9Cj4gIAo+ICBzdGF0aWMgaTkx
NV9yZWdfdCBpOTE1X3ZnYWNudHJsX3JlZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYpCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gaW5kZXggNzVhNDJlOGRmNjdlLi5kYjc0ODA4
MzFlNTIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiBAQCAtMjg5LDYgKzI4OSw3IEBA
IHN0cnVjdCBkcm1faTkxNV9kaXNwbGF5X2Z1bmNzIHsKPiAgCXZvaWQgKCpjcnRjX2Rpc2FibGUp
KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwKPiAgCQkJICAgICBzdHJ1
Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpvbGRfc3RhdGUpOwo+ICAJdm9pZCAoKmNvbW1pdF9tb2Rl
c2V0X2VuYWJsZXMpKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKTsKPiArCXZvaWQg
KCpjb21taXRfbW9kZXNldF9kaXNhYmxlcykoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3Rh
dGUpOwo+ICAJdm9pZCAoKmF1ZGlvX2NvZGVjX2VuYWJsZSkoc3RydWN0IGludGVsX2VuY29kZXIg
KmVuY29kZXIsCj4gIAkJCQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSwKPiAgCQkJCSAgIGNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlICpjb25uX3N0
YXRlKTsKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
