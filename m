Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B998F1245BE
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 12:27:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26B556E2CC;
	Wed, 18 Dec 2019 11:27:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC6BC6E2CC
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 11:27:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 03:27:52 -0800
X-IronPort-AV: E=Sophos;i="5.69,329,1571727600"; d="scan'208";a="210059490"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 03:27:50 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20191217135646.89481-1-jose.souza@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191217135646.89481-1-jose.souza@intel.com>
Date: Wed, 18 Dec 2019 13:27:47 +0200
Message-ID: <871rt1zxe4.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Force the state
 compute phase once to enable PSR
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
Cc: s.zharkoff@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAxNyBEZWMgMjAxOSwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+IHdyb3RlOgo+IFJlY2VudCBpbXByb3ZlbWVudHMgaW4gdGhlIHN0YXRlIHRyYWNr
aW5nIGluIGk5MTUgY2F1c2VkIFBTUiB0byBub3QgYmUKPiBlbmFibGVkIHdoZW4gcmV1c2luZyBm
aXJtd2FyZS9CSU9TIG1vZGVzZXQsIHRoaXMgaXMgZHVlIHRvIGFsbCBpbml0aWFsCj4gY29tbWl0
cyByZXR1cm5pbmcgZWFsaWVyIGluIGludGVsX2F0b21pY19jaGVjaygpIGFzIG5lZWRzX21vZGVz
ZXQoKQo+IGlzIGFsd2F5cyBmYWxzZS4KPgo+IFRvIGZpeCB0aGF0IGhlcmUgZm9yY2luZyB0aGUg
c3RhdGUgY29tcHV0ZSBwaGFzZSBpbiBDUlRDIHRoYXQgaXMKPiBkcml2aW5nIHRoZSBlRFAgdGhh
dCBzdXBwb3J0cyBQU1Igb25jZS4gRW5hYmxlIG9yIGRpc2FibGUgUFNSIGRvIG5vdAo+IHJlcXVp
cmUgYSBmdWxsbW9kZXNldCwgc28gdXNlciB3aWxsIHN0aWxsIGV4cGVyaWVuY2UgZ2xpdGNoIGZy
ZWUgYm9vdAo+IHByb2Nlc3MgcGx1cyB0aGUgcG93ZXIgc2F2aW5ncyB0aGF0IFBTUiBicmluZ3Mu
Cj4KPiBJdCB3YXMgdHJpZWQgdG8gc2V0IG1vZGVfY2hhbmdlZCBpbiBpbnRlbF9pbml0aWFsX2Nv
bW1pdCgpIGJ1dCBhdAo+IHRoaXMgcG9pbnQgdGhlIGNvbm5lY3RvcnMgYXJlIG5vdCByZWdpc3Rl
cmVkIGNhdXNpbmcgYSBjcmFzaCB3aGVuCj4gY29tcHV0aW5nIGVuY29kZXIgc3RhdGUuCj4KPiB2
MjoKPiAtIHJlbW92ZWQgZnVuY3Rpb24gcmV0dXJuCj4gLSBjaGFuZ2UgYXJndW1lbnRzIHRvIG1h
dGNoIGludGVsX2hkY3BfYXRvbWljX2NoZWNrCj4KPiBCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZy
ZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMjUzCj4gUmVwb3J0ZWQtYnk6IDxzLnpo
YXJrb2ZmQGdtYWlsLmNvbT4KPiBDYzogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5ZW9uZy5tdW5A
aW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uu
c291emFAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2F0b21pYy5jIHwgIDIgKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYyAgICB8IDI0ICsrKysrKysrKysrKysrKysrKysrKwo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oICAgIHwgIDYgKysrKysrCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAgfCAgMSArCj4gIDQgZmlsZXMgY2hhbmdlZCwg
MzMgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYXRvbWljLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2F0b21pYy5jCj4gaW5kZXggZmQwMDI2ZmMzNjE4Li41OWJlMWQwYzRmMzYgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMKPiBAQCAtMzcsNiArMzcs
NyBAQAo+ICAjaW5jbHVkZSAiaW50ZWxfYXRvbWljLmgiCj4gICNpbmNsdWRlICJpbnRlbF9kaXNw
bGF5X3R5cGVzLmgiCj4gICNpbmNsdWRlICJpbnRlbF9oZGNwLmgiCj4gKyNpbmNsdWRlICJpbnRl
bF9wc3IuaCIKPiAgI2luY2x1ZGUgImludGVsX3Nwcml0ZS5oIgo+ICAKPiAgLyoqCj4gQEAgLTEy
OSw2ICsxMzAsNyBAQCBpbnQgaW50ZWxfZGlnaXRhbF9jb25uZWN0b3JfYXRvbWljX2NoZWNrKHN0
cnVjdCBkcm1fY29ubmVjdG9yICpjb25uLAo+ICAJc3RydWN0IGRybV9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlOwo+ICAKPiAgCWludGVsX2hkY3BfYXRvbWljX2NoZWNrKGNvbm4sIG9sZF9zdGF0ZSwg
bmV3X3N0YXRlKTsKPiArCWludGVsX3Bzcl9hdG9taWNfY2hlY2soY29ubiwgb2xkX3N0YXRlLCBu
ZXdfc3RhdGUpOwo+ICAKPiAgCWlmICghbmV3X3N0YXRlLT5jcnRjKQo+ICAJCXJldHVybiAwOwo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+IGluZGV4IDE2ZTlmZjQ3
ZDUxOS4uZTNmZDVmMWUyZDIxIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jCj4gQEAgLTE1MjMsMyArMTUyMywyNyBAQCBib29sIGludGVsX3Bzcl9lbmFibGVk
KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCj4gIAo+ICAJcmV0dXJuIHJldDsKPiAgfQo+ICsK
PiArdm9pZCBpbnRlbF9wc3JfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25u
ZWN0b3IsCj4gKwkJCSAgICBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqb2xkX3N0YXRlLAo+
ICsJCQkgICAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKm5ld19zdGF0ZSkKPiArewo+ICsJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjb25uZWN0b3ItPmRl
dik7Cj4gKwlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICppbnRlbF9jb25uZWN0b3I7Cj4gKwlzdHJ1
Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydDsKPiArCXN0cnVjdCBkcm1fY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZTsKPiArCj4gKwlpZiAoIUNBTl9QU1IoZGV2X3ByaXYpIHx8ICFuZXdfc3Rh
dGUtPmNydGMgfHwKPiArCSAgICBkZXZfcHJpdi0+cHNyLmluaXRpYWxseV9wcm9iZWQpCj4gKwkJ
cmV0dXJuOwo+ICsKPiArCWludGVsX2Nvbm5lY3RvciA9IHRvX2ludGVsX2Nvbm5lY3Rvcihjb25u
ZWN0b3IpOwo+ICsJZGlnX3BvcnQgPSBlbmNfdG9fZGlnX3BvcnQoJmludGVsX2Nvbm5lY3Rvci0+
ZW5jb2Rlci0+YmFzZSk7Cj4gKwlpZiAoZGV2X3ByaXYtPnBzci5kcCAhPSAmZGlnX3BvcnQtPmRw
KQo+ICsJCXJldHVybjsKPiArCj4gKwljcnRjX3N0YXRlID0gZHJtX2F0b21pY19nZXRfbmV3X2Ny
dGNfc3RhdGUobmV3X3N0YXRlLT5zdGF0ZSwKPiArCQkJCQkJICAgbmV3X3N0YXRlLT5jcnRjKTsK
PiArCWNydGNfc3RhdGUtPm1vZGVfY2hhbmdlZCA9IHRydWU7Cj4gKwlkZXZfcHJpdi0+cHNyLmlu
aXRpYWxseV9wcm9iZWQgPSB0cnVlOwo+ICt9Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5oCj4gaW5kZXggNDZlNGRlOGI4Y2Q1Li42MzQ4ZGYzMmJhZWQgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaAo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgKPiBAQCAtNiw2ICs2LDkgQEAK
PiAgI2lmbmRlZiBfX0lOVEVMX1BTUl9IX18KPiAgI2RlZmluZSBfX0lOVEVMX1BTUl9IX18KPiAg
Cj4gKyNpbmNsdWRlIDxkcm0vZHJtX2F0b21pYy5oPgo+ICsjaW5jbHVkZSA8ZHJtL2RybV9jb25u
ZWN0b3IuaD4KPiArCgpQbGVhc2UgdXNlIGZvcndhcmQgZGVjbGFyYXRpb25zIGluc3RlYWQgb2Yg
I2luY2x1ZGVzIHdoZW4gdGhhdCdzIGVub3VnaC4KCkJSLApKYW5pLgoKPiAgI2luY2x1ZGUgImlu
dGVsX2Zyb250YnVmZmVyLmgiCj4gIAo+ICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZTsKPiBAQCAt
MzUsNSArMzgsOCBAQCB2b2lkIGludGVsX3Bzcl9zaG9ydF9wdWxzZShzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwKTsKPiAgaW50IGludGVsX3Bzcl93YWl0X2Zvcl9pZGxlKGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSwKPiAgCQkJICAgIHUzMiAqb3V0X3ZhbHVl
KTsKPiAgYm9vbCBpbnRlbF9wc3JfZW5hYmxlZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsK
PiArdm9pZCBpbnRlbF9wc3JfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25u
ZWN0b3IsCj4gKwkJCSAgICBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqb2xkX3N0YXRlLAo+
ICsJCQkgICAgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKm5ld19zdGF0ZSk7Cj4gIAo+ICAj
ZW5kaWYgLyogX19JTlRFTF9QU1JfSF9fICovCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCj4gaW5k
ZXggMDc4MWI2MzI2YjhjLi44NzNlZWMxZTM3ZTkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmgKPiBAQCAtNTA1LDYgKzUwNSw3IEBAIHN0cnVjdCBpOTE1X3BzciB7Cj4gIAlib29sIGRjM2Nv
X2VuYWJsZWQ7Cj4gIAl1MzIgZGMzY29fZXhpdF9kZWxheTsKPiAgCXN0cnVjdCBkZWxheWVkX3dv
cmsgaWRsZV93b3JrOwo+ICsJYm9vbCBpbml0aWFsbHlfcHJvYmVkOwo+ICB9Owo+ICAKPiAgI2Rl
ZmluZSBRVUlSS19MVkRTX1NTQ19ESVNBQkxFICgxPDwxKQoKLS0gCkphbmkgTmlrdWxhLCBJbnRl
bCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4Cg==
