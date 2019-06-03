Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC08B33BFB
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 01:33:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 851E489349;
	Mon,  3 Jun 2019 23:33:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5B0C89349
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2019 23:33:49 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jun 2019 16:33:49 -0700
X-ExtLoop1: 1
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga004.jf.intel.com with ESMTP; 03 Jun 2019 16:33:49 -0700
Date: Mon, 3 Jun 2019 16:35:35 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: matthew.s.atwood@intel.com
Message-ID: <20190603233534.GA3575@intel.com>
References: <20190603214940.11996-1-matthew.s.atwood@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603214940.11996-1-matthew.s.atwood@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Correctly advertise HBR3 for
 GEN11+
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
Cc: intel-gfx@lists.freedesktop.org, dhinakaran.pandiyan@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBKdW4gMDMsIDIwMTkgYXQgMDI6NDk6NDBQTSAtMDcwMCwgbWF0dGhldy5zLmF0d29v
ZEBpbnRlbC5jb20gd3JvdGU6Cj4gRnJvbTogTWF0dCBBdHdvb2QgPG1hdHRoZXcucy5hdHdvb2RA
aW50ZWwuY29tPgo+IAo+IGludGVsX2RwX3NldF9zb3VyY2VfcmF0ZXMoKSBjYWxscyBpbnRlbF9k
cF9pc19lZHAoKSwgd2hpY2ggaXMgdW5zYWZlIHRvCj4gdXNlIGJlZm9yZSBlbmNvZGVyX3R5cGUg
aXMgc2V0LiBUaGlzIGNhdXNlZCBHRU4xMSsgdG8gaW5jb3JyZWN0bHkgc3RyaXAKPiBIQlIzIGZy
b20gc291cmNlIHJhdGVzLiBNb3ZlIGludGVsX2RwX3NldF9zb3VyY2VfcmF0ZXMoKSB0byBhZnRl
cgo+IGVuY29kZXJfdHlwZSBpcyBzZXQuIEFkZCBjb21tZW50IHRvIGludGVsX2RwX2lzX2VkcCgp
IGRlc2NyaWJpbmcgdW5zYWZlCj4gdXNhZ2VzLgoKTWF5IGJlIGFsc28gYWRkIGEgV0FSTl9PTiBp
bnNpZGUgaW50ZWxfZHBfaXNfZWRwKCkgZm9yIGVuY29kZXItPnR5cGUKc3RpbGwgc2V0IHRvIElO
VEVMX09VVFBVVF9EREkKCj4gCj4gRml4ZXM6IGIyNjVhMmE2MjU1ZjUgKCJkcm0vaTkxNS9pY2w6
IGNvbWJvIHBvcnQgdnN3aW5nIHByb2dyYW1taW5nCj4gY2hhbmdlcyBwZXIgQlNQRUMiKQo+IFNp
Z25lZC1vZmYtYnk6IE1hdHQgQXR3b29kIDxtYXR0aGV3LnMuYXR3b29kQGludGVsLmNvbT4KPiAt
LS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYyB8IDYgKysrKy0tCj4gIDEgZmls
ZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kcC5jCj4gaW5kZXggMjRiNTZiMmE3NmM4Li5hNDQ5MGJjYWQ2ODQgMTAwNjQ0Cj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2RwLmMKPiBAQCAtMTQxLDYgKzE0MSw4IEBAIHN0YXRpYyBjb25zdCB1
OCB2YWxpZF9kc2Nfc2xpY2Vjb3VudFtdID0gezEsIDIsIDR9Owo+ICAgKgo+ICAgKiBJZiBhIENQ
VSBvciBQQ0ggRFAgb3V0cHV0IGlzIGF0dGFjaGVkIHRvIGFuIGVEUCBwYW5lbCwgdGhpcyBmdW5j
dGlvbgo+ICAgKiB3aWxsIHJldHVybiB0cnVlLCBhbmQgZmFsc2Ugb3RoZXJ3aXNlLgo+ICsgKgo+
ICsgKiBUaGlzIGZ1bmN0aW9uIGlzIG5vdCBzYWZlIHRvIHVzZSBwcmlvciB0byBlbmNvZGVyIHR5
cGUgYmVpbmcgc2V0Lgo+ICAgKi8KPiAgYm9vbCBpbnRlbF9kcF9pc19lZHAoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCkKCklNSE8sIHRoaXMgY29tbWVudCBhbmQgV0FSTl9PTiBsaWtlIEkgbWVu
dGlvbmVkIGFib3ZlIHNob3VsZCBiZSBhIHNlcGFyYXRlCnBhdGNoIHNpbmNlIGl0cyBqdXN0IGEg
Y2xlYW51cCBhbmQgbm8gZnVuY3Rpb25hbCBjaGFuZ2UuCgpNYW5hc2kKCj4gIHsKPiBAQCAtNzM0
Miw4ICs3MzQ0LDYgQEAgaW50ZWxfZHBfaW5pdF9jb25uZWN0b3Ioc3RydWN0IGludGVsX2RpZ2l0
YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQsCj4gIAkJIGludGVsX2RpZ19wb3J0LT5tYXhfbGFuZXMs
IHBvcnRfbmFtZShwb3J0KSkpCj4gIAkJcmV0dXJuIGZhbHNlOwo+ICAKPiAtCWludGVsX2RwX3Nl
dF9zb3VyY2VfcmF0ZXMoaW50ZWxfZHApOwo+IC0KPiAgCWludGVsX2RwLT5yZXNldF9saW5rX3Bh
cmFtcyA9IHRydWU7Cj4gIAlpbnRlbF9kcC0+cHBzX3BpcGUgPSBJTlZBTElEX1BJUEU7Cj4gIAlp
bnRlbF9kcC0+YWN0aXZlX3BpcGUgPSBJTlZBTElEX1BJUEU7Cj4gQEAgLTczODgsNiArNzM4OCw4
IEBAIGludGVsX2RwX2luaXRfY29ubmVjdG9yKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmlu
dGVsX2RpZ19wb3J0LAo+ICAJCQl0eXBlID09IERSTV9NT0RFX0NPTk5FQ1RPUl9lRFAgPyAiZURQ
IiA6ICJEUCIsCj4gIAkJCXBvcnRfbmFtZShwb3J0KSk7Cj4gIAo+ICsJaW50ZWxfZHBfc2V0X3Nv
dXJjZV9yYXRlcyhpbnRlbF9kcCk7Cj4gKwo+ICAJZHJtX2Nvbm5lY3Rvcl9pbml0KGRldiwgY29u
bmVjdG9yLCAmaW50ZWxfZHBfY29ubmVjdG9yX2Z1bmNzLCB0eXBlKTsKPiAgCWRybV9jb25uZWN0
b3JfaGVscGVyX2FkZChjb25uZWN0b3IsICZpbnRlbF9kcF9jb25uZWN0b3JfaGVscGVyX2Z1bmNz
KTsKPiAgCj4gLS0gCj4gMi4xNy4yCj4gCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
