Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94EB110E684
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2019 08:56:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9060D89C6E;
	Mon,  2 Dec 2019 07:56:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00ADE89C6E
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2019 07:56:21 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Dec 2019 23:56:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; d="scan'208";a="204460871"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga008.jf.intel.com with ESMTP; 01 Dec 2019 23:56:20 -0800
Date: Mon, 2 Dec 2019 13:25:47 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20191202075411.GA5177@intel.com>
References: <20191129185434.25549-1-ville.syrjala@linux.intel.com>
 <20191129185434.25549-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191129185434.25549-2-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 1/9] drm/i915: Use drm_rect to simplify
 plane {crtc, src}_{x, y, w, h} printing
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

T24gMjAxOS0xMS0yOSBhdCAyMDo1NDoyNiArMDIwMCwgVmlsbGUgU3lyamFsYSB3cm90ZToKPiBG
cm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IAo+
IFVzZSBEUk1fUkVDVF9GTVQgJiBjby4gdG8gc2ltcGlmeSB0aGUgY29kZS4KCkxvb2tzIGdvb2Qg
dG8gbWUuCgpSZXZpZXdlZC1ieTogUmFtYWxpbmdhbSBDIDxyYW1hbGluZ2FtLmNAaW50ZWwuY29t
Pgo+IAo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5j
IHwgMTggKysrKysrKy0tLS0tLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMo
KyksIDExIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCj4g
aW5kZXggY2FiNjMyNzkxZjczLi4zZjU0ZTY2YWI3NjIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2RlYnVnZnMuYwo+IEBAIC0yNTk5LDYgKzI1OTksNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9w
bGFuZV9pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgc3RydWN0IGludGVsX2NydGMgKmludGVsX2Ny
dGMpCj4gIAkJc3RydWN0IGRybV9wbGFuZV9zdGF0ZSAqc3RhdGU7Cj4gIAkJc3RydWN0IGRybV9w
bGFuZSAqcGxhbmUgPSAmaW50ZWxfcGxhbmUtPmJhc2U7Cj4gIAkJc3RydWN0IGRybV9mb3JtYXRf
bmFtZV9idWYgZm9ybWF0X25hbWU7Cj4gKwkJc3RydWN0IGRybV9yZWN0IHNyYywgZHN0Owo+ICAJ
CWNoYXIgcm90X3N0cls0OF07Cj4gIAo+ICAJCWlmICghcGxhbmUtPnN0YXRlKSB7Cj4gQEAgLTI2
MDgsNiArMjYwOSw5IEBAIHN0YXRpYyB2b2lkIGludGVsX3BsYW5lX2luZm8oc3RydWN0IHNlcV9m
aWxlICptLCBzdHJ1Y3QgaW50ZWxfY3J0YyAqaW50ZWxfY3J0YykKPiAgCj4gIAkJc3RhdGUgPSBw
bGFuZS0+c3RhdGU7Cj4gIAo+ICsJCXNyYyA9IGRybV9wbGFuZV9zdGF0ZV9zcmMoc3RhdGUpOwo+
ICsJCWRzdCA9IGRybV9wbGFuZV9zdGF0ZV9kZXN0KHN0YXRlKTsKPiArCj4gIAkJaWYgKHN0YXRl
LT5mYikgewo+ICAJCQlkcm1fZ2V0X2Zvcm1hdF9uYW1lKHN0YXRlLT5mYi0+Zm9ybWF0LT5mb3Jt
YXQsCj4gIAkJCQkJICAgICZmb3JtYXRfbmFtZSk7Cj4gQEAgLTI2MTcsMTkgKzI2MjEsMTEgQEAg
c3RhdGljIHZvaWQgaW50ZWxfcGxhbmVfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHN0cnVjdCBp
bnRlbF9jcnRjICppbnRlbF9jcnRjKQo+ICAKPiAgCQlwbGFuZV9yb3RhdGlvbihyb3Rfc3RyLCBz
aXplb2Yocm90X3N0ciksIHN0YXRlLT5yb3RhdGlvbik7Cj4gIAo+IC0JCXNlcV9wcmludGYobSwg
Ilx0LS1QbGFuZSBpZCAlZDogdHlwZT0lcywgY3J0Y19wb3M9JTRkeCU0ZCwgY3J0Y19zaXplPSU0
ZHglNGQsIHNyY19wb3M9JWQuJTA0dXglZC4lMDR1LCBzcmNfc2l6ZT0lZC4lMDR1eCVkLiUwNHUs
IGZvcm1hdD0lcywgcm90YXRpb249JXNcbiIsCj4gKwkJc2VxX3ByaW50ZihtLCAiXHQtLVBsYW5l
IGlkICVkOiB0eXBlPSVzLCBkc3Q9IiBEUk1fUkVDVF9GTVQgIiwgc3JjPSIgRFJNX1JFQ1RfRlBf
Rk1UICIsIGZvcm1hdD0lcywgcm90YXRpb249JXNcbiIsCj4gIAkJCSAgIHBsYW5lLT5iYXNlLmlk
LAo+ICAJCQkgICBwbGFuZV90eXBlKGludGVsX3BsYW5lLT5iYXNlLnR5cGUpLAo+IC0JCQkgICBz
dGF0ZS0+Y3J0Y194LCBzdGF0ZS0+Y3J0Y195LAo+IC0JCQkgICBzdGF0ZS0+Y3J0Y193LCBzdGF0
ZS0+Y3J0Y19oLAo+IC0JCQkgICAoc3RhdGUtPnNyY194ID4+IDE2KSwKPiAtCQkJICAgKChzdGF0
ZS0+c3JjX3ggJiAweGZmZmYpICogMTU2MjUpID4+IDEwLAo+IC0JCQkgICAoc3RhdGUtPnNyY195
ID4+IDE2KSwKPiAtCQkJICAgKChzdGF0ZS0+c3JjX3kgJiAweGZmZmYpICogMTU2MjUpID4+IDEw
LAo+IC0JCQkgICAoc3RhdGUtPnNyY193ID4+IDE2KSwKPiAtCQkJICAgKChzdGF0ZS0+c3JjX3cg
JiAweGZmZmYpICogMTU2MjUpID4+IDEwLAo+IC0JCQkgICAoc3RhdGUtPnNyY19oID4+IDE2KSwK
PiAtCQkJICAgKChzdGF0ZS0+c3JjX2ggJiAweGZmZmYpICogMTU2MjUpID4+IDEwLAo+ICsJCQkg
ICBEUk1fUkVDVF9BUkcoJmRzdCksCj4gKwkJCSAgIERSTV9SRUNUX0ZQX0FSRygmc3JjKSwKPiAg
CQkJICAgZm9ybWF0X25hbWUuc3RyLAo+ICAJCQkgICByb3Rfc3RyKTsKPiAgCX0KPiAtLSAKPiAy
LjIzLjAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
