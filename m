Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 509C4B35A4
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2019 09:31:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA7BB6E862;
	Mon, 16 Sep 2019 07:31:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBECB6E862
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2019 07:31:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Sep 2019 00:31:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,510,1559545200"; d="scan'208";a="201545351"
Received: from lfgiles-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.121])
 by fmsmga001.fm.intel.com with ESMTP; 16 Sep 2019 00:31:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20190913100407.30991-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190913100407.30991-1-jani.nikula@intel.com>
Date: Mon, 16 Sep 2019 10:32:22 +0300
Message-ID: <87impsu261.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: introduce
 INTEL_DISPLAY_ENABLED()
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

T24gRnJpLCAxMyBTZXAgMjAxOSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4g
d3JvdGU6Cj4gUHJlcGFyZSBmb3IgbWFraW5nIGEgZGlzdGluY3Rpb24gYmV0d2VlbiBub3QgaGF2
aW5nIGRpc3BsYXkgYW5kIGhhdmluZwo+IGRpc2FibGVkIGRpc3BsYXkuIEFkZCBJTlRFTF9ESVNQ
TEFZX0VOQUJMRUQoKSBhbmQgdXNlIGl0IHdoZXJlCj4gSEFTX0RJU1BMQVkoKSBpcyB1c2VkIGFm
dGVyIGludGVsX2RldmljZV9pbmZvX3J1bnRpbWVfaW5pdCgpLiBUaGlzIGlzCj4gaW5pdGlhbGx5
IGR1cGxpY2F0aW9uLCBhcyBkaXNhYmxpbmcgZGlzcGxheSBzdGlsbCBsZWFkcyB0byAtPnBpcGVf
bWFzayA9Cj4gMCBhbmQgSEFTX0RJU1BMQVkoKSBiZWluZyBmYWxzZS4KPgo+IE5vdGUgdGhhdCBl
dmVyIHNpbmNlIGk5MTUuZGlzcGxheV9kaXNhYmxlIHdhcyBpbnRyb2R1Y2VkLCBpdCBoYXMgbm90
Cj4gYWZmZWN0ZWQgUENIIGRldGVjdGlvbiBldmVuIGlmIGl0IHVzZXMgSEFTX0RJU1BMQVkoKSwg
YXMgZGlzcGxheSBkaXNhYmxlCj4gaGFwcGVucyBhZnRlciB0aGF0Lgo+Cj4gU2luY2UgSU5URUxf
RElTUExBWV9FTkFCTEVEKCkgd2lsbCBub3QgbWFrZSBzZW5zZSB1bmxlc3MgSEFTX0RJU1BMQVko
KQo+IGlzIHRydWUsIGluY2x1ZGUgYSB3YXJuaW5nIGZvciBjYXRjaGluZyBtaXN1c2VzIG1ha2lu
ZyBkZWNpc2lvbnMgb24KPiBJTlRFTF9ESVNQTEFZX0VOQUJMRUQoKSB3aGVuIEhBU19ESVNQTEFZ
KCkgaXMgZmFsc2UuCj4KPiB2MjogUmVtb3ZlIElOVEVMX0RJU1BMQVlfRU5BQkxFRCgpIGNoZWNr
IGZyb20gaW50ZWxfZGV0ZWN0X3BjaCgpIChDaHJpcykKClB1c2hlZCwgdGhhbmtzIGZvciB0aGUg
cmV2aWV3LgoKQlIsCkphbmkuCgo+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2ls
c29uLmNvLnVrPgo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVs
LmNvbT4KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KPiBSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRl
bC5jb20+Cj4gQWNrZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVs
LmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMg
ICAgfCAyICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
IHwgNCArKy0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYyAg
IHwgMiArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2dtYnVzLmMgICB8
IDIgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAgICAgfCA4
ICsrKystLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAgICAg
IHwgMyArKysKPiAgNiBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9u
cygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Ymlvcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKPiBpbmRl
eCBlZmIzOWYzNTBiMTkuLjFkZWY1NTBjNjhjOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYmlvcy5jCj4gQEAgLTE4MzMsNyArMTgzMyw3IEBAIHZvaWQgaW50ZWxf
Ymlvc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgCWNvbnN0IHN0
cnVjdCBiZGJfaGVhZGVyICpiZGI7Cj4gIAl1OCBfX2lvbWVtICpiaW9zID0gTlVMTDsKPiAgCj4g
LQlpZiAoIUhBU19ESVNQTEFZKGRldl9wcml2KSkgewo+ICsJaWYgKCFIQVNfRElTUExBWShkZXZf
cHJpdikgfHwgIUlOVEVMX0RJU1BMQVlfRU5BQkxFRChkZXZfcHJpdikpIHsKPiAgCQlEUk1fREVC
VUdfS01TKCJTa2lwcGluZyBWQlQgaW5pdCBkdWUgdG8gZGlzYWJsZWQgZGlzcGxheS5cbiIpOwo+
ICAJCXJldHVybjsKPiAgCX0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYwo+IGluZGV4IGExOWY4YzczZjJlMC4uMmMwY2IzMjIzNWMwIDEwMDY0NAo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBAQCAtMTUzNjYs
NyArMTUzNjYsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9zZXR1cF9vdXRwdXRzKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgCj4gIAlpbnRlbF9wcHNfaW5pdChkZXZfcHJpdik7
Cj4gIAo+IC0JaWYgKCFIQVNfRElTUExBWShkZXZfcHJpdikpCj4gKwlpZiAoIUhBU19ESVNQTEFZ
KGRldl9wcml2KSB8fCAhSU5URUxfRElTUExBWV9FTkFCTEVEKGRldl9wcml2KSkKPiAgCQlyZXR1
cm47Cj4gIAo+ICAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpIHsKPiBAQCAtMTcyNzMs
NyArMTcyNzMsNyBAQCBpbnRlbF9kaXNwbGF5X2NhcHR1cmVfZXJyb3Jfc3RhdGUoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAKPiAgCUJVSUxEX0JVR19PTihBUlJBWV9TSVpF
KHRyYW5zY29kZXJzKSAhPSBBUlJBWV9TSVpFKGVycm9yLT50cmFuc2NvZGVyKSk7Cj4gIAo+IC0J
aWYgKCFIQVNfRElTUExBWShkZXZfcHJpdikpCj4gKwlpZiAoIUhBU19ESVNQTEFZKGRldl9wcml2
KSB8fCAhSU5URUxfRElTUExBWV9FTkFCTEVEKGRldl9wcml2KSkKPiAgCQlyZXR1cm4gTlVMTDsK
PiAgCj4gIAllcnJvciA9IGt6YWxsb2Moc2l6ZW9mKCplcnJvciksIEdGUF9BVE9NSUMpOwo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMKPiBpbmRleCBkNTllZWU1
YzVkOWMuLjY4MzM4NjY5ZjA1NCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2ZiZGV2LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiZGV2LmMKPiBAQCAtNDQ0LDcgKzQ0NCw3IEBAIGludCBpbnRlbF9mYmRldl9pbml0
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCj4gIAlzdHJ1Y3QgaW50ZWxfZmJkZXYgKmlmYmRldjsK
PiAgCWludCByZXQ7Cj4gIAo+IC0JaWYgKFdBUk5fT04oIUhBU19ESVNQTEFZKGRldl9wcml2KSkp
Cj4gKwlpZiAoV0FSTl9PTighSEFTX0RJU1BMQVkoZGV2X3ByaXYpIHx8ICFJTlRFTF9ESVNQTEFZ
X0VOQUJMRUQoZGV2X3ByaXYpKSkKPiAgCQlyZXR1cm4gLUVOT0RFVjsKPiAgCj4gIAlpZmJkZXYg
PSBremFsbG9jKHNpemVvZihzdHJ1Y3QgaW50ZWxfZmJkZXYpLCBHRlBfS0VSTkVMKTsKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9nbWJ1cy5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9nbWJ1cy5jCj4gaW5kZXggZDY3NzVhMDA1
NzI2Li4zZDRkMTlhYzFkMTQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9nbWJ1cy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9nbWJ1cy5jCj4gQEAgLTgzNiw3ICs4MzYsNyBAQCBpbnQgaW50ZWxfZ21idXNfc2V0dXAo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAJdW5zaWduZWQgaW50IHBpbjsK
PiAgCWludCByZXQ7Cj4gIAo+IC0JaWYgKCFIQVNfRElTUExBWShkZXZfcHJpdikpCj4gKwlpZiAo
IUhBU19ESVNQTEFZKGRldl9wcml2KSB8fCAhSU5URUxfRElTUExBWV9FTkFCTEVEKGRldl9wcml2
KSkKPiAgCQlyZXR1cm4gMDsKPiAgCj4gIAlpZiAoSVNfVkFMTEVZVklFVyhkZXZfcHJpdikgfHwg
SVNfQ0hFUlJZVklFVyhkZXZfcHJpdikpCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCj4gaW5kZXgg
MGRmY2I0MGYzMTYyLi45OTA0Zjc2MmY0YmIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMK
PiBAQCAtMzM4LDcgKzMzOCw3IEBAIHN0YXRpYyBpbnQgaTkxNV9kcml2ZXJfbW9kZXNldF9wcm9i
ZShzdHJ1Y3QgZHJtX2RldmljZSAqZGV2KQo+ICAJaWYgKGk5MTVfaW5qZWN0X3Byb2JlX2ZhaWx1
cmUoZGV2X3ByaXYpKQo+ICAJCXJldHVybiAtRU5PREVWOwo+ICAKPiAtCWlmIChIQVNfRElTUExB
WShkZXZfcHJpdikpIHsKPiArCWlmIChIQVNfRElTUExBWShkZXZfcHJpdikgJiYgSU5URUxfRElT
UExBWV9FTkFCTEVEKGRldl9wcml2KSkgewo+ICAJCXJldCA9IGRybV92YmxhbmtfaW5pdCgmZGV2
X3ByaXYtPmRybSwKPiAgCQkJCSAgICAgIElOVEVMX05VTV9QSVBFUyhkZXZfcHJpdikpOwo+ICAJ
CWlmIChyZXQpCj4gQEAgLTM4OSw3ICszODksNyBAQCBzdGF0aWMgaW50IGk5MTVfZHJpdmVyX21v
ZGVzZXRfcHJvYmUoc3RydWN0IGRybV9kZXZpY2UgKmRldikKPiAgCj4gIAlpbnRlbF9vdmVybGF5
X3NldHVwKGRldl9wcml2KTsKPiAgCj4gLQlpZiAoIUhBU19ESVNQTEFZKGRldl9wcml2KSkKPiAr
CWlmICghSEFTX0RJU1BMQVkoZGV2X3ByaXYpIHx8ICFJTlRFTF9ESVNQTEFZX0VOQUJMRUQoZGV2
X3ByaXYpKQo+ICAJCXJldHVybiAwOwo+ICAKPiAgCXJldCA9IGludGVsX2ZiZGV2X2luaXQoZGV2
KTsKPiBAQCAtMTM3OCw3ICsxMzc4LDcgQEAgc3RhdGljIHZvaWQgaTkxNV9kcml2ZXJfcmVnaXN0
ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+ICAJfSBlbHNlCj4gIAkJRFJN
X0VSUk9SKCJGYWlsZWQgdG8gcmVnaXN0ZXIgZHJpdmVyIGZvciB1c2Vyc3BhY2UgYWNjZXNzIVxu
Iik7Cj4gIAo+IC0JaWYgKEhBU19ESVNQTEFZKGRldl9wcml2KSkgewo+ICsJaWYgKEhBU19ESVNQ
TEFZKGRldl9wcml2KSAmJiBJTlRFTF9ESVNQTEFZX0VOQUJMRUQoZGV2X3ByaXYpKSB7Cj4gIAkJ
LyogTXVzdCBiZSBkb25lIGFmdGVyIHByb2Jpbmcgb3V0cHV0cyAqLwo+ICAJCWludGVsX29wcmVn
aW9uX3JlZ2lzdGVyKGRldl9wcml2KTsKPiAgCQlhY3BpX3ZpZGVvX3JlZ2lzdGVyKCk7Cj4gQEAg
LTE0MDEsNyArMTQwMSw3IEBAIHN0YXRpYyB2b2lkIGk5MTVfZHJpdmVyX3JlZ2lzdGVyKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiAgCSAqIFdlIG5lZWQgdG8gY29vcmRpbmF0
ZSB0aGUgaG90cGx1Z3Mgd2l0aCB0aGUgYXN5bmNocm9ub3VzIGZiZGV2Cj4gIAkgKiBjb25maWd1
cmF0aW9uLCBmb3Igd2hpY2ggd2UgdXNlIHRoZSBmYmRldi0+YXN5bmNfY29va2llLgo+ICAJICov
Cj4gLQlpZiAoSEFTX0RJU1BMQVkoZGV2X3ByaXYpKQo+ICsJaWYgKEhBU19ESVNQTEFZKGRldl9w
cml2KSAmJiBJTlRFTF9ESVNQTEFZX0VOQUJMRUQoZGV2X3ByaXYpKQo+ICAJCWRybV9rbXNfaGVs
cGVyX3BvbGxfaW5pdChkZXYpOwo+ICAKPiAgCWludGVsX3Bvd2VyX2RvbWFpbnNfZW5hYmxlKGRl
dl9wcml2KTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKPiBpbmRleCBiZjYwMDg4OGIzZjEuLjRm
YWVjMmY5NGUxOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5o
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAo+IEBAIC0yMTkyLDYgKzIx
OTIsOSBAQCBJU19TVUJQTEFURk9STShjb25zdCBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSwKPiAgCj4gICNkZWZpbmUgSEFTX0RJU1BMQVkoZGV2X3ByaXYpIChJTlRFTF9JTkZPKGRldl9w
cml2KS0+cGlwZV9tYXNrICE9IDApCj4gIAo+ICsvKiBPbmx5IHZhbGlkIHdoZW4gSEFTX0RJU1BM
QVkoKSBpcyB0cnVlICovCj4gKyNkZWZpbmUgSU5URUxfRElTUExBWV9FTkFCTEVEKGRldl9wcml2
KSAoV0FSTl9PTighSEFTX0RJU1BMQVkoZGV2X3ByaXYpKSwgIWk5MTVfbW9kcGFyYW1zLmRpc2Fi
bGVfZGlzcGxheSkKPiArCj4gIHN0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF92dGRfYWN0aXZlKHZv
aWQpCj4gIHsKPiAgI2lmZGVmIENPTkZJR19JTlRFTF9JT01NVQoKLS0gCkphbmkgTmlrdWxhLCBJ
bnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
