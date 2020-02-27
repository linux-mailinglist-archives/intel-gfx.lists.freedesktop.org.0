Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD5B3172485
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 18:07:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AA236E958;
	Thu, 27 Feb 2020 17:07:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C62246E958
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 17:07:03 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 09:07:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,492,1574150400"; d="scan'208";a="256806991"
Received: from unknown (HELO intel.com) ([10.223.74.178])
 by orsmga002.jf.intel.com with ESMTP; 27 Feb 2020 09:07:01 -0800
Date: Thu, 27 Feb 2020 22:28:47 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200227165847.GC18198@intel.com>
References: <20200227061111.9186-1-anshuman.gupta@intel.com>
 <87tv3cqzoc.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87tv3cqzoc.fsf@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix kbuild test robot build error
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAyMC0wMi0yNyBhdCAwOTowNDowMyArMDIwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4gT24g
VGh1LCAyNyBGZWIgMjAyMCwgQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNv
bT4gd3JvdGU6Cj4gPiBGaXgga2J1aWxkIHRlc3Qgcm9ib3QgYnVpbGQgZXJyb3IgZm9yIGJlbG93
IGNvbW1pdAo+ID4gPGQ1NGMxYTUxM2M0ODdhYzZkNmIzYzQ1OTVlOTNlMzYyNWI0NjFjYzM+Lgo+
IAo+IFRoZSBwcm9wZXIgZm9ybWF0IHRvIHJlZmVyZW5jZSBvdGhlciBjb21taXRzIGlzCj4gCj4g
CWQ1NGMxYTUxM2M0OCAoImRybS9pOTE1OiBGaXggYnJva2VuIHRyYW5zY29kZXIgZXJyIHN0YXRl
IikKPiAKPiBJZiB5b3UgcHV0IHRoaXMgbWFnaWMgc3BlbGwgaW4geW91ciB+Ly5naXRjb25maWcg
dW5kZXIgW2FsaWFzXToKPiAKPiAJY2l0ZSA9ICIhZigpIHsgZ2l0IGxvZyAtMSAnLS1wcmV0dHk9
Zm9ybWF0OiVIIChcIiVzXCIpJW4nICQxIHwgc2VkIC1lICdzL1xcKFswLWZdXFx7MTJcXH1cXClb
MC1mXSovXFwxLyc7IH07IGYiCj4gCj4geW91IGNhbiB1c2UgJ2dpdCBjaXRlIDxjb21taXQtaXNo
PicgdG8gZ2l2ZSB5b3UgdGhlIHByb3Blcmx5IGZvcm1hdHRlZAo+IGNpdGF0aW9uLgpUaGFua3Mg
SmFuaSBmb3IgdGhlIGluZm8uCj4gCj4gPiBoYXNfdHJhbnNjb2RlcigpIHdhcyB1bnVzZWQgYmVj
YXVzZSBmdW5jdGlvbiB3aGljaCB3YXMgdXNpbmcgaXQKPiA+IGludGVsX2Rpc3BsYXlfY2FwdHVy
ZV9lcnJvcl9zdGF0ZSgpIGRlZmluZWQgdW5kZXIKPiA+IENPTkZJR19EUk1fSTkxNV9DQVBUVVJF
X0VSUk9SLgo+ID4gTW92aW5nIGhhc190cmFuc2NvZGVyKCkgdG8gdW5kZXIgQ09ORklHX0RSTV9J
OTE1X0NBUFRVUkVfRVJST1IuCj4gPiBObyBmdW5jdGlvbmFsIGNoYW5nZS4KPiA+Cj4gPiBDYzog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+IFJlcG9y
dGVkLWJ5OiBrYnVpbGQgdGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4KPiA+IFNpZ25lZC1vZmYt
Ynk6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+Cj4gCj4gRml4ZXM6
IGQ1NGMxYTUxM2M0OCAoImRybS9pOTE1OiBGaXggYnJva2VuIHRyYW5zY29kZXIgZXJyIHN0YXRl
IikKSSB3aWxsIGluY29ycG9yYXRlIGFib3ZlIGNpdGF0aW9uIGluIGNvbW1pdCBsb2cuCj4gUmV2
aWV3ZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gCj4gPiAtLS0K
PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDE4ICsr
KysrKysrKy0tLS0tLS0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDkg
ZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKPiA+IGluZGV4IDJmZDNjY2QzM2UzMC4uMjdlYzI0NWUwZGQyIDEwMDY0NAo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gPiBA
QCAtMjQ5LDE1ICsyNDksNiBAQCBpbnRlbF9mZGlfbGlua19mcmVxKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiwKPiA+ICAJCXJldHVybiBkZXZfcHJpdi0+ZmRpX3BsbF9mcmVxOwo+
ID4gIH0KPiA+ICAKPiA+IC1zdGF0aWMgYm9vbAo+ID4gLWhhc190cmFuc2NvZGVyKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSB0cmFuc2NvZGVyIGNwdV90cmFuc2NvZGVy
KQo+ID4gLXsKPiA+IC0JaWYgKGNwdV90cmFuc2NvZGVyID09IFRSQU5TQ09ERVJfRURQKQo+ID4g
LQkJcmV0dXJuIEhBU19UUkFOU0NPREVSX0VEUChkZXZfcHJpdik7Cj4gPiAtCWVsc2UKPiA+IC0J
CXJldHVybiBJTlRFTF9JTkZPKGRldl9wcml2KS0+cGlwZV9tYXNrICYgQklUKGNwdV90cmFuc2Nv
ZGVyKTsKPiA+IC19Cj4gPiAtCj4gPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9saW1pdCBp
bnRlbF9saW1pdHNfaTh4eF9kYWMgPSB7Cj4gPiAgCS5kb3QgPSB7IC5taW4gPSAyNTAwMCwgLm1h
eCA9IDM1MDAwMCB9LAo+ID4gIAkudmNvID0geyAubWluID0gOTA4MDAwLCAubWF4ID0gMTUxMjAw
MCB9LAo+ID4gQEAgLTE4ODM4LDYgKzE4ODI5LDE1IEBAIHZvaWQgaW50ZWxfbW9kZXNldF9kcml2
ZXJfcmVtb3ZlX25vaXJxKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ID4gIAo+ID4g
ICNpZiBJU19FTkFCTEVEKENPTkZJR19EUk1fSTkxNV9DQVBUVVJFX0VSUk9SKQo+ID4gIAo+ID4g
K3N0YXRpYyBib29sCj4gPiAraGFzX3RyYW5zY29kZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LCBlbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIpCj4gPiArewo+ID4gKwlp
ZiAoY3B1X3RyYW5zY29kZXIgPT0gVFJBTlNDT0RFUl9FRFApCj4gPiArCQlyZXR1cm4gSEFTX1RS
QU5TQ09ERVJfRURQKGRldl9wcml2KTsKPiA+ICsJZWxzZQo+ID4gKwkJcmV0dXJuIElOVEVMX0lO
Rk8oZGV2X3ByaXYpLT5waXBlX21hc2sgJiBCSVQoY3B1X3RyYW5zY29kZXIpOwo+ID4gK30KPiA+
ICsKPiA+ICBzdHJ1Y3QgaW50ZWxfZGlzcGxheV9lcnJvcl9zdGF0ZSB7Cj4gPiAgCj4gPiAgCXUz
MiBwb3dlcl93ZWxsX2RyaXZlcjsKPiAKPiAtLSAKPiBKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBT
b3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
