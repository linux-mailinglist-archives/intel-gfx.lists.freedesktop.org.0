Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E012C896
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 16:18:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 004E06E0EC;
	Tue, 28 May 2019 14:18:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 283966E0EC
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 14:18:03 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 May 2019 07:18:02 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 28 May 2019 07:18:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 May 2019 17:17:58 +0300
Date: Tue, 28 May 2019 17:17:58 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190528141758.GM5942@intel.com>
References: <20190528075354.22341-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528075354.22341-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Take a runtime pm wakeref for
 atomic commits
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBNYXkgMjgsIDIwMTkgYXQgMDg6NTM6NTRBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IEJlZm9yZSB3ZSBzdGFydCBwcmVwcGluZyB0aGUgc3lzdGVtIGZvciBhbiBhdG9taWMg
bW9kZXNldCwgd2FrZSB0aGUKPiBkZXZpY2UgdXAuIFdlIHRoZW4ga2VlcCB0cmFjayBvZiB0aGlz
IHdha2VyZWYgdW50aWwgd2UgY29tcGxldGUgdGhlCj4gYXRvbWljIGNvbW1pdCwgc28gd2UgaG9s
ZCBrZWVwIHRoZSBkZXZpY2UgYXdha2UgZm9yIGFsbCBwb3RlbnRpYWwgSFcKPiBhY2Nlc3MsIGFu
ZCBkbyBub3QgYWxsb3cgdGhlIGRldmljZSB0byBzbGVlcCB3aXRoIGEgcGVuZGluZyBtb2Rlc2V0
Lgo+IAo+IEJ1Z3ppbGxhOiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNn
aT9pZD0xMTA3NzEKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KPiBDYzogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4
LmludGVsLmNvbT4KCmxndG0KUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+Cgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kaXNwbGF5LmMgfCA1ICsrKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rydi5o
ICAgICB8IDIgKysKPiAgMiBmaWxlcyBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggOTA5MTcxZDNlYzI1Li5hZmU3NjE4
NTY3YzcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCj4gQEAgLTEzODEx
LDYgKzEzODExLDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2NvbW1pdF90YWlsKHN0cnVj
dCBkcm1fYXRvbWljX3N0YXRlICpzdGF0ZSkKPiAgCQlpbnRlbF91bmNvcmVfYXJtX3VuY2xhaW1l
ZF9tbWlvX2RldGVjdGlvbigmZGV2X3ByaXYtPnVuY29yZSk7Cj4gIAkJaW50ZWxfZGlzcGxheV9w
b3dlcl9wdXQoZGV2X3ByaXYsIFBPV0VSX0RPTUFJTl9NT0RFU0VULCB3YWtlcmVmKTsKPiAgCX0K
PiArCWludGVsX3J1bnRpbWVfcG1fcHV0KGRldl9wcml2LCBpbnRlbF9zdGF0ZS0+d2FrZXJlZik7
Cj4gIAo+ICAJLyoKPiAgCSAqIERlZmVyIHRoZSBjbGVhbnVwIG9mIHRoZSBvbGQgc3RhdGUgdG8g
YSBzZXBhcmF0ZSB3b3JrZXIgdG8gbm90Cj4gQEAgLTEzODg5LDYgKzEzODkwLDggQEAgc3RhdGlj
IGludCBpbnRlbF9hdG9taWNfY29tbWl0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4gIAlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGRldik7Cj4gIAlpbnQgcmV0
ID0gMDsKPiAgCj4gKwlpbnRlbF9zdGF0ZS0+d2FrZXJlZiA9IGludGVsX3J1bnRpbWVfcG1fZ2V0
KGRldl9wcml2KTsKPiArCj4gIAlkcm1fYXRvbWljX3N0YXRlX2dldChzdGF0ZSk7Cj4gIAlpOTE1
X3N3X2ZlbmNlX2luaXQoJmludGVsX3N0YXRlLT5jb21taXRfcmVhZHksCj4gIAkJCSAgIGludGVs
X2F0b21pY19jb21taXRfcmVhZHkpOwo+IEBAIC0xMzkyNSw2ICsxMzkyOCw3IEBAIHN0YXRpYyBp
bnQgaW50ZWxfYXRvbWljX2NvbW1pdChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAo+ICAJaWYgKHJl
dCkgewo+ICAJCURSTV9ERUJVR19BVE9NSUMoIlByZXBhcmluZyBzdGF0ZSBmYWlsZWQgd2l0aCAl
aVxuIiwgcmV0KTsKPiAgCQlpOTE1X3N3X2ZlbmNlX2NvbW1pdCgmaW50ZWxfc3RhdGUtPmNvbW1p
dF9yZWFkeSk7Cj4gKwkJaW50ZWxfcnVudGltZV9wbV9wdXQoZGV2X3ByaXYsIGludGVsX3N0YXRl
LT53YWtlcmVmKTsKPiAgCQlyZXR1cm4gcmV0Owo+ICAJfQo+ICAKPiBAQCAtMTM5MzYsNiArMTM5
NDAsNyBAQCBzdGF0aWMgaW50IGludGVsX2F0b21pY19jb21taXQoc3RydWN0IGRybV9kZXZpY2Ug
KmRldiwKPiAgCQlpOTE1X3N3X2ZlbmNlX2NvbW1pdCgmaW50ZWxfc3RhdGUtPmNvbW1pdF9yZWFk
eSk7Cj4gIAo+ICAJCWRybV9hdG9taWNfaGVscGVyX2NsZWFudXBfcGxhbmVzKGRldiwgc3RhdGUp
Owo+ICsJCWludGVsX3J1bnRpbWVfcG1fcHV0KGRldl9wcml2LCBpbnRlbF9zdGF0ZS0+d2FrZXJl
Zik7Cj4gIAkJcmV0dXJuIHJldDsKPiAgCX0KPiAgCWRldl9wcml2LT53bS5kaXN0cnVzdF9iaW9z
X3dtID0gZmFsc2U7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Ry
di5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJ2LmgKPiBpbmRleCBmMzQxMDQyYjZj
NzkuLjcwYWZmMWQ2ZjU5NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kcnYuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rydi5oCj4gQEAgLTQy
MCw2ICs0MjAsOCBAQCBzdHJ1Y3QgZHBsbCB7Cj4gIHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUg
ewo+ICAJc3RydWN0IGRybV9hdG9taWNfc3RhdGUgYmFzZTsKPiAgCj4gKwlpbnRlbF93YWtlcmVm
X3Qgd2FrZXJlZjsKPiArCj4gIAlzdHJ1Y3Qgewo+ICAJCS8qCj4gIAkJICogTG9naWNhbCBzdGF0
ZSBvZiBjZGNsayAodXNlZCBmb3IgYWxsIHNjYWxpbmcsIHdhdGVybWFyaywKPiAtLSAKPiAyLjIw
LjEKCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
