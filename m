Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 330FDDC2B8
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 12:25:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C9CC89CD9;
	Fri, 18 Oct 2019 10:25:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C31E189CD9
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 10:25:32 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Oct 2019 03:25:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,311,1566889200"; d="scan'208";a="208578992"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 18 Oct 2019 03:25:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Oct 2019 13:25:26 +0300
Date: Fri, 18 Oct 2019 13:25:26 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20191018102526.GW1208@intel.com>
References: <20191016185240.28299-1-manasi.d.navare@intel.com>
 <20191016185240.28299-4-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016185240.28299-4-manasi.d.navare@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [CI v10 4/6] drm/i915/display/icl: Enable
 master-slaves in trans port sync
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBPY3QgMTYsIDIwMTkgYXQgMTE6NTI6MzhBTSAtMDcwMCwgTWFuYXNpIE5hdmFyZSB3
cm90ZToKPiBBcyBwZXIgdGhlIGRpc3BsYXkgZW5hYmxlIHNlcXVlbmNlLCB3ZSBuZWVkIHRvIGZv
bGxvdyB0aGUgZW5hYmxlIHNlcXVlbmNlCj4gZm9yIHNsYXZlcyBmaXJzdCB3aXRoIERQX1RQX0NU
TCBzZXQgdG8gSWRsZSBhbmQgY29uZmlndXJlIHRoZSB0cmFuc2NvZGVyCj4gcG9ydCBzeW5jIHJl
Z2lzdGVyIHRvIHNlbGVjdCB0aGUgY29yZXJzcG9uZGluZyBtYXN0ZXIsIHRoZW4gZm9sbG93IHRo
ZQo+IGVuYWJsZSBzZXF1ZW5jZSBmb3IgbWFzdGVyIGxlYXZpbmcgRFBfVFBfQ1RMIHRvIGlkbGUu
Cj4gQXQgdGhpcyBwb2ludCB0aGUgdHJhbnNjb2RlciBwb3J0IHN5bmMgbW9kZSBpcyBjb25maWd1
cmVkIGFuZCBlbmFibGVkCj4gYW5kIHRoZSBWYmxhbmtzIG9mIGJvdGggcG9ydHMgYXJlIHN5bmNo
cm9uaXplZCBzbyB0aGVuIHNldCBEUF9UUF9DVEwKPiBmb3IgdGhlIHNsYXZlIGFuZCBtYXN0ZXIg
dG8gTm9ybWFsIGFuZCBkbyBwb3N0IGNydGMgZW5hYmxlIHVwZGF0ZXMuCj4gCj4gdjk6Cj4gUmVt
b3ZlIHVwZGF0ZV9zY2FubGluZV9vZmZzZXQgdG8gcmViYXNlIG9uIE1hYXJ0ZW4ncyBwYXRjaCAo
TWFuYXNpKQo+IHY4Ogo+ICogUmViYXNlIG9uIE1hYXJ0ZW4ncyBwYXRjaGVzIChNYW5hc2kpCj4g
djc6Cj4gKiBVc2UgZmZzKHNsYXZlcykgdG8gZ2V0IHNsYXZlIGNydGMgKFZpbGxlKQo+IHY2Ogo+
ICogTW9kZXNldCBpbXBsaWVzIGFjdGl2ZV9jaGFuZ2VkLCByZW1vdmUgb25lIGNvbmRpdGlvbiAo
TWFhcnRlbikKPiB2NToKPiAqIEZpeCBjaGVja3BhdGNoIHdhcm5pbmcgKE1hbmFzaSkKPiB2NDoK
PiAqIFJldXNlIHNrbF9jb21taXRfbW9kZXNldF9lbmFibGVzKCkgaG9vayAoTWFhcnRlbikKPiAq
IE9idGFpbiBzbGF2ZSBjcnRjIGFuZCBzdGF0ZXMgZnJvbSBtYXN0ZXIgKE1hYXJ0ZW4pCj4gdjM6
Cj4gKiBSZWJhc2Ugb24gZHJtLXRpcCAoTWFuYXNpKQo+IHYyOgo+ICogQ3JlYXRlIGEgaWNsX3Vw
ZGF0ZV9jcnRjcyBob29rIChNYWFydGVuLCBEYW52ZXQpCj4gKiBUaGlzIHNlcXVlbmNlIG9ubHkg
Zm9yIENSVENzIGluIHRyYW5zIHBvcnQgc3luYyBtb2RlIChNYWFydGVuKQo+IAo+IENjOiBEYW5p
ZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgo+IENjOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8
bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+IENjOiBNYXR0IFJvcGVyIDxtYXR0
aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1h
bmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Cj4gUmV2aWV3ZWQtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0
IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgICAgIHwgICAzICstCj4gIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMTM2ICsrKysrKysrKysrKysrKysr
Ky0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggfCAgIDIg
Kwo+ICAzIGZpbGVzIGNoYW5nZWQsIDEzNyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+IGluZGV4IDgwZjhl
MjY5OGJlMC4uMjNhNzM0OGMyZmQ1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RkaS5jCj4gQEAgLTM1NzIsNyArMzU3Miw4IEBAIHN0YXRpYyB2b2lkIGhzd19kZGlf
cHJlX2VuYWJsZV9kcChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCQkJCQkgICAg
ICB0cnVlKTsKPiAgCWludGVsX2RwX3Npbmtfc2V0X2ZlY19yZWFkeShpbnRlbF9kcCwgY3J0Y19z
dGF0ZSk7Cj4gIAlpbnRlbF9kcF9zdGFydF9saW5rX3RyYWluKGludGVsX2RwKTsKPiAtCWlmIChw
b3J0ICE9IFBPUlRfQSB8fCBJTlRFTF9HRU4oZGV2X3ByaXYpID49IDkpCj4gKwlpZiAoKHBvcnQg
IT0gUE9SVF9BIHx8IElOVEVMX0dFTihkZXZfcHJpdikgPj0gOSkgJiYKPiArCSAgICAhaXNfdHJh
bnNfcG9ydF9zeW5jX21vZGUoY3J0Y19zdGF0ZSkpCj4gIAkJaW50ZWxfZHBfc3RvcF9saW5rX3Ry
YWluKGludGVsX2RwKTsKPiAgCj4gIAlpbnRlbF9kZGlfZW5hYmxlX2ZlYyhlbmNvZGVyLCBjcnRj
X3N0YXRlKTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Ywo+IGluZGV4IGUzM2VkZDI4NDRhZC4uZDg2ZTBiZjAyYTk4IDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBAQCAtMTQwNDEsNiArMTQwNDEs
MTggQEAgc3RhdGljIHZvaWQgaW50ZWxfdXBkYXRlX2NydGMoc3RydWN0IGludGVsX2NydGMgKmNy
dGMsCj4gIAkJaW50ZWxfY3J0Y19hcm1fZmlmb191bmRlcnJ1bihjcnRjLCBuZXdfY3J0Y19zdGF0
ZSk7Cj4gIH0KPiAgCj4gK3N0YXRpYyBzdHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxfZ2V0X3NsYXZl
X2NydGMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRlKQo+ICt7
Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KG5ld19jcnRj
X3N0YXRlLT5iYXNlLmNydGMtPmRldik7Cj4gKwllbnVtIHRyYW5zY29kZXIgc2xhdmVfdHJhbnNj
b2RlcjsKPiArCj4gKwlXQVJOX09OKCFpc19wb3dlcl9vZl8yKG5ld19jcnRjX3N0YXRlLT5zeW5j
X21vZGVfc2xhdmVzX21hc2spKTsKPiArCj4gKwlzbGF2ZV90cmFuc2NvZGVyID0gZmZzKG5ld19j
cnRjX3N0YXRlLT5zeW5jX21vZGVfc2xhdmVzX21hc2spIC0gMTsKPiArCXJldHVybiBpbnRlbF9n
ZXRfY3J0Y19mb3JfcGlwZShkZXZfcHJpdiwKPiArCQkJCSAgICAgICAoZW51bSBwaXBlKXNsYXZl
X3RyYW5zY29kZXIpOwo+ICt9Cj4gKwo+ICBzdGF0aWMgdm9pZCBpbnRlbF9vbGRfY3J0Y19zdGF0
ZV9kaXNhYmxlcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiAgCQkJCQkgIHN0
cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0ZSwKPiAgCQkJCQkgIHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSwKPiBAQCAtMTQxMTksNiArMTQxMzEsMTEz
IEBAIHN0YXRpYyB2b2lkIGludGVsX2NvbW1pdF9tb2Rlc2V0X2VuYWJsZXMoc3RydWN0IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUpCj4gIAl9Cj4gIH0KPiAgCj4gK3N0YXRpYyB2b2lkIGludGVs
X2NydGNfZW5hYmxlX3RyYW5zX3BvcnRfc3luYyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKPiAr
CQkJCQkgICAgICBzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiArCQkJCQkgICAg
ICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUpCj4gK3sKPiArCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KTsK
PiArCj4gKwlpbnRlbF9jcnRjX3VwZGF0ZV9hY3RpdmVfdGltaW5ncyhuZXdfY3J0Y19zdGF0ZSk7
Cj4gKwlkZXZfcHJpdi0+ZGlzcGxheS5jcnRjX2VuYWJsZShuZXdfY3J0Y19zdGF0ZSwgc3RhdGUp
Owo+ICsJaW50ZWxfY3J0Y19lbmFibGVfcGlwZV9jcmMoY3J0Yyk7Cj4gK30KPiArCj4gK3N0YXRp
YyB2b2lkIGludGVsX3NldF9kcF90cF9jdGxfbm9ybWFsKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
LAo+ICsJCQkJICAgICAgIHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQo+ICt7Cj4g
KwlzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqY29ubl9zdGF0ZTsKPiArCXN0cnVjdCBkcm1f
Y29ubmVjdG9yICpjb25uOwo+ICsJc3RydWN0IGludGVsX2RwICppbnRlbF9kcDsKPiArCWludCBp
Owo+ICsKPiArCWZvcl9lYWNoX25ld19jb25uZWN0b3JfaW5fc3RhdGUoJnN0YXRlLT5iYXNlLCBj
b25uLCBjb25uX3N0YXRlLCBpKSB7Cj4gKwkJaWYgKGNvbm5fc3RhdGUtPmNydGMgPT0gJmNydGMt
PmJhc2UpCj4gKwkJCWJyZWFrOwo+ICsJfQo+ICsJaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAo
JmludGVsX2F0dGFjaGVkX2VuY29kZXIoY29ubiktPmJhc2UpOwo+ICsJaW50ZWxfZHBfc3RvcF9s
aW5rX3RyYWluKGludGVsX2RwKTsKPiArfQo+ICsKPiArc3RhdGljIHZvaWQgaW50ZWxfcG9zdF9j
cnRjX2VuYWJsZV91cGRhdGVzKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAo+ICsJCQkJCSAgIHN0
cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQo+ICt7Cj4gKwlzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGUgPQo+ICsJCWludGVsX2F0b21pY19nZXRfbmV3X2NydGNf
c3RhdGUoc3RhdGUsIGNydGMpOwo+ICsJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRj
X3N0YXRlID0KPiArCQlpbnRlbF9hdG9taWNfZ2V0X29sZF9jcnRjX3N0YXRlKHN0YXRlLCBjcnRj
KTsKPiArCXN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqbmV3X3BsYW5lX3N0YXRlID0KPiArCQlp
bnRlbF9hdG9taWNfZ2V0X25ld19wbGFuZV9zdGF0ZShzdGF0ZSwKPiArCQkJCQkJIHRvX2ludGVs
X3BsYW5lKGNydGMtPmJhc2UucHJpbWFyeSkpOwo+ICsJYm9vbCBtb2Rlc2V0ID0gbmVlZHNfbW9k
ZXNldChuZXdfY3J0Y19zdGF0ZSk7Cj4gKwo+ICsJaWYgKG5ld19jcnRjX3N0YXRlLT51cGRhdGVf
cGlwZSAmJiAhbmV3X2NydGNfc3RhdGUtPmVuYWJsZV9mYmMpCj4gKwkJaW50ZWxfZmJjX2Rpc2Fi
bGUoY3J0Yyk7Cj4gKwllbHNlIGlmIChuZXdfcGxhbmVfc3RhdGUpCj4gKwkJaW50ZWxfZmJjX2Vu
YWJsZShjcnRjLCBuZXdfY3J0Y19zdGF0ZSwgbmV3X3BsYW5lX3N0YXRlKTsKPiArCj4gKwkvKiBQ
ZXJmb3JtIHZibGFuayBldmFzaW9uIGFyb3VuZCBjb21taXQgb3BlcmF0aW9uICovCj4gKwlpbnRl
bF9waXBlX3VwZGF0ZV9zdGFydChuZXdfY3J0Y19zdGF0ZSk7Cj4gKwljb21taXRfcGlwZV9jb25m
aWcoc3RhdGUsIG9sZF9jcnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSk7Cj4gKwlza2xfdXBkYXRl
X3BsYW5lc19vbl9jcnRjKHN0YXRlLCBjcnRjKTsKPiArCWludGVsX3BpcGVfdXBkYXRlX2VuZChu
ZXdfY3J0Y19zdGF0ZSk7Cj4gKwo+ICsJLyoKPiArCSAqIFdlIHVzdWFsbHkgZW5hYmxlIEZJRk8g
dW5kZXJydW4gaW50ZXJydXB0cyBhcyBwYXJ0IG9mIHRoZQo+ICsJICogQ1JUQyBlbmFibGUgc2Vx
dWVuY2UgZHVyaW5nIG1vZGVzZXRzLiAgQnV0IHdoZW4gd2UgaW5oZXJpdCBhCj4gKwkgKiB2YWxp
ZCBwaXBlIGNvbmZpZ3VyYXRpb24gZnJvbSB0aGUgQklPUyB3ZSBuZWVkIHRvIHRha2UgY2FyZQo+
ICsJICogb2YgZW5hYmxpbmcgdGhlbSBvbiB0aGUgQ1JUQydzIGZpcnN0IGZhc3RzZXQuCj4gKwkg
Ki8KPiArCWlmIChuZXdfY3J0Y19zdGF0ZS0+dXBkYXRlX3BpcGUgJiYgIW1vZGVzZXQgJiYKPiAr
CSAgICBvbGRfY3J0Y19zdGF0ZS0+YmFzZS5tb2RlLnByaXZhdGVfZmxhZ3MgJiBJOTE1X01PREVf
RkxBR19JTkhFUklURUQpCj4gKwkJaW50ZWxfY3J0Y19hcm1fZmlmb191bmRlcnJ1bihjcnRjLCBu
ZXdfY3J0Y19zdGF0ZSk7Cj4gK30KPiArCj4gK3N0YXRpYyB2b2lkIGludGVsX3VwZGF0ZV90cmFu
c19wb3J0X3N5bmNfY3J0Y3Moc3RydWN0IGludGVsX2NydGMgKmNydGMsCj4gKwkJCQkJICAgICAg
IHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ICsJCQkJCSAgICAgICBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsCj4gKwkJCQkJICAgICAgIHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSkKPiArewo+ICsJc3RydWN0IGludGVsX2Ny
dGMgKnNsYXZlX2NydGMgPSBpbnRlbF9nZXRfc2xhdmVfY3J0YyhuZXdfY3J0Y19zdGF0ZSk7Cj4g
KwlzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X3NsYXZlX2NydGNfc3RhdGUgPQo+ICsJCWlu
dGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIHNsYXZlX2NydGMpOwo+ICsJc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9zbGF2ZV9jcnRjX3N0YXRlID0KPiArCQlpbnRlbF9h
dG9taWNfZ2V0X29sZF9jcnRjX3N0YXRlKHN0YXRlLCBzbGF2ZV9jcnRjKTsKPiArCj4gKwlXQVJO
X09OKCFzbGF2ZV9jcnRjIHx8ICFuZXdfc2xhdmVfY3J0Y19zdGF0ZSB8fAo+ICsJCSFvbGRfc2xh
dmVfY3J0Y19zdGF0ZSk7Cj4gKwo+ICsJRFJNX0RFQlVHX0tNUygiVXBkYXRpbmcgVHJhbnNjb2Rl
ciBQb3J0IFN5bmMgTWFzdGVyIENSVEMgPSAlZCAlcyBhbmQgU2xhdmUgQ1JUQyAlZCAlc1xuIiwK
PiArCQkgICAgICBjcnRjLT5iYXNlLmJhc2UuaWQsIGNydGMtPmJhc2UubmFtZSwgc2xhdmVfY3J0
Yy0+YmFzZS5iYXNlLmlkLAo+ICsJCSAgICAgIHNsYXZlX2NydGMtPmJhc2UubmFtZSk7Cj4gKwo+
ICsJLyogRW5hYmxlIHNlcSBmb3Igc2xhdmUgd2l0aCB3aXRoIERQX1RQX0NUTCBsZWZ0IElkbGUg
dW50aWwgdGhlCj4gKwkgKiBtYXN0ZXIgaXMgcmVhZHkKPiArCSAqLwo+ICsJaW50ZWxfY3J0Y19l
bmFibGVfdHJhbnNfcG9ydF9zeW5jKHNsYXZlX2NydGMsCj4gKwkJCQkJICBzdGF0ZSwKPiArCQkJ
CQkgIG5ld19zbGF2ZV9jcnRjX3N0YXRlKTsKPiArCj4gKwkvKiBFbmFibGUgc2VxIGZvciBtYXN0
ZXIgd2l0aCB3aXRoIERQX1RQX0NUTCBsZWZ0IElkbGUgKi8KPiArCWludGVsX2NydGNfZW5hYmxl
X3RyYW5zX3BvcnRfc3luYyhjcnRjLAo+ICsJCQkJCSAgc3RhdGUsCj4gKwkJCQkJICBuZXdfY3J0
Y19zdGF0ZSk7Cj4gKwo+ICsJLyogU2V0IFNsYXZlJ3MgRFBfVFBfQ1RMIHRvIE5vcm1hbCAqLwo+
ICsJaW50ZWxfc2V0X2RwX3RwX2N0bF9ub3JtYWwoc2xhdmVfY3J0YywKPiArCQkJCSAgIHN0YXRl
KTsKPiArCj4gKwkvKiBTZXQgTWFzdGVyJ3MgRFBfVFBfQ1RMIFRvIE5vcm1hbCAqLwo+ICsJdXNs
ZWVwX3JhbmdlKDIwMCwgNDAwKTsKPiArCWludGVsX3NldF9kcF90cF9jdGxfbm9ybWFsKGNydGMs
Cj4gKwkJCQkgICBzdGF0ZSk7Cj4gKwo+ICsJLyogTm93IGRvIHRoZSBwb3N0IGNydGMgZW5hYmxl
IGZvciBhbGwgbWFzdGVyIGFuZCBzbGF2ZXMgKi8KPiArCWludGVsX3Bvc3RfY3J0Y19lbmFibGVf
dXBkYXRlcyhzbGF2ZV9jcnRjLAo+ICsJCQkJICAgICAgIHN0YXRlKTsKPiArCWludGVsX3Bvc3Rf
Y3J0Y19lbmFibGVfdXBkYXRlcyhjcnRjLAo+ICsJCQkJICAgICAgIHN0YXRlKTsKPiArfQo+ICsK
PiAgc3RhdGljIHZvaWQgc2tsX2NvbW1pdF9tb2Rlc2V0X2VuYWJsZXMoc3RydWN0IGludGVsX2F0
b21pY19zdGF0ZSAqc3RhdGUpCj4gIHsKPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiA9IHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KTsKPiBAQCAtMTQxNTMsNiArMTQyNzIsNyBA
QCBzdGF0aWMgdm9pZCBza2xfY29tbWl0X21vZGVzZXRfZW5hYmxlcyhzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSkKPiAgCQlmb3JfZWFjaF9vbGRuZXdfaW50ZWxfY3J0Y19pbl9zdGF0
ZShzdGF0ZSwgY3J0Yywgb2xkX2NydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRlLCBpKSB7Cj4gIAkJ
CWJvb2wgdmJsX3dhaXQgPSBmYWxzZTsKPiAgCQkJdW5zaWduZWQgaW50IGNtYXNrID0gZHJtX2Ny
dGNfbWFzaygmY3J0Yy0+YmFzZSk7Cj4gKwkJCWJvb2wgbW9kZXNldCA9IG5lZWRzX21vZGVzZXQo
bmV3X2NydGNfc3RhdGUpOwo+ICAKPiAgCQkJcGlwZSA9IGNydGMtPnBpcGU7Cj4gIAo+IEBAIC0x
NDE3NSwxMiArMTQyOTUsMjIgQEAgc3RhdGljIHZvaWQgc2tsX2NvbW1pdF9tb2Rlc2V0X2VuYWJs
ZXMoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCj4gIAkJCSAqLwo+ICAJCQlpZiAo
IXNrbF9kZGJfZW50cnlfZXF1YWwoJm5ld19jcnRjX3N0YXRlLT53bS5za2wuZGRiLAo+ICAJCQkJ
CQkgJm9sZF9jcnRjX3N0YXRlLT53bS5za2wuZGRiKSAmJgo+IC0JCQkgICAgIW5ld19jcnRjX3N0
YXRlLT5iYXNlLmFjdGl2ZV9jaGFuZ2VkICYmCj4gKwkJCSAgICAhbW9kZXNldCAmJgoKVGhhdCBw
YXJ0IHNob3VsZCBiZSBhIHNlcGFyYXRlIHBhdGNoLiBBcyBpcyB0aGVyZSBpcyBubyBtZW50aW9u
IG9mIHRoaXMKaW4gdGhlIGNvbW1pdCBtZXNzYWdlLgoKPiAgCQkJICAgIHN0YXRlLT53bV9yZXN1
bHRzLmRpcnR5X3BpcGVzICE9IHVwZGF0ZWQpCj4gIAkJCQl2Ymxfd2FpdCA9IHRydWU7Cj4gIAo+
IC0JCQlpbnRlbF91cGRhdGVfY3J0YyhjcnRjLCBzdGF0ZSwgb2xkX2NydGNfc3RhdGUsCj4gLQkJ
CQkJICBuZXdfY3J0Y19zdGF0ZSk7Cj4gKwkJCWlmIChtb2Rlc2V0ICYmIGlzX3RyYW5zX3BvcnRf
c3luY19tb2RlKG5ld19jcnRjX3N0YXRlKSkgewo+ICsJCQkJaWYgKGlzX3RyYW5zX3BvcnRfc3lu
Y19tYXN0ZXIobmV3X2NydGNfc3RhdGUpKQo+ICsJCQkJCWludGVsX3VwZGF0ZV90cmFuc19wb3J0
X3N5bmNfY3J0Y3MoY3J0YywKPiArCQkJCQkJCQkJICAgc3RhdGUsCj4gKwkJCQkJCQkJCSAgIG9s
ZF9jcnRjX3N0YXRlLAo+ICsJCQkJCQkJCQkgICBuZXdfY3J0Y19zdGF0ZSk7Cj4gKwkJCQllbHNl
Cj4gKwkJCQkJY29udGludWU7CgpXZSBuZWVkIHRvIGFkZHJlc3MgdGhlIGRkYiBvdmVybGFwIGJ1
ZyBoZXJlLiBJIHRoaW5rIHdlIGNhbiBhdm9pZCBpdApieSBzaW1wbHkgbWFraW5nIHN1cmUgbm9u
ZSBvZiB0aGUgc3luY2VkIHBpcGVzIGhhcyBhbiBvdmVybGFwIHdpdGgKYW55dGhpbmcgZWxzZS4g
U2luY2Ugd2UgZG8gdGhpcyBvbmx5IGZvciBtb2Rlc2V0cyB0aGF0IHNob3VsZCBiZSBmaW5lCmFu
ZCBJIGRvbid0IHRoaW5rIHdlIGNhbiBlbmQgdXAgaW4gYSBkZWFkIGVuZC4KCj4gKwkJCX0gZWxz
ZSB7Cj4gKwkJCQlpbnRlbF91cGRhdGVfY3J0YyhjcnRjLCBzdGF0ZSwgb2xkX2NydGNfc3RhdGUs
Cj4gKwkJCQkJCSAgbmV3X2NydGNfc3RhdGUpOwo+ICsJCQl9Cj4gIAo+ICAJCQlpZiAodmJsX3dh
aXQpCj4gIAkJCQlpbnRlbF93YWl0X2Zvcl92YmxhbmsoZGV2X3ByaXYsIHBpcGUpOwo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCj4gaW5kZXggMGNkYTI3
NTU3M2UyLi5hNDk1ODA2MzJhOGQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuaAo+IEBAIC0yNyw2ICsyNyw3IEBACj4gIAo+ICAjaW5jbHVkZSA8
ZHJtL2RybV91dGlsLmg+Cj4gICNpbmNsdWRlIDxkcm0vaTkxNV9kcm0uaD4KPiArI2luY2x1ZGUg
ImludGVsX2RwX2xpbmtfdHJhaW5pbmcuaCIKPiAgCj4gIGVudW0gbGlua19tX25fc2V0Owo+ICBz
dHJ1Y3QgZHBsbDsKPiBAQCAtNTQsNiArNTUsNyBAQCBzdHJ1Y3QgaW50ZWxfcGxhbmU7Cj4gIHN0
cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZTsKPiAgc3RydWN0IGludGVsX3JlbWFwcGVkX2luZm87Cj4g
IHN0cnVjdCBpbnRlbF9yb3RhdGlvbl9pbmZvOwo+ICtzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZTsK
PiAgCj4gIGVudW0gaTkxNV9ncGlvIHsKPiAgCUdQSU9BLAo+IC0tIAo+IDIuMTkuMQoKLS0gClZp
bGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
