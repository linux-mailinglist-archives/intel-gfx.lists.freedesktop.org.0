Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13EBB10EC14
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Dec 2019 16:09:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67B6D89471;
	Mon,  2 Dec 2019 15:08:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EB5489471
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Dec 2019 15:08:58 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Dec 2019 07:08:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,268,1571727600"; d="scan'208";a="241982780"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by fmsmga002.fm.intel.com with ESMTP; 02 Dec 2019 07:08:55 -0800
Date: Mon, 2 Dec 2019 20:38:23 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20191202150823.GE15371@intel.com>
References: <20191129185434.25549-1-ville.syrjala@linux.intel.com>
 <20191129185434.25549-8-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191129185434.25549-8-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 7/9] drm/i915: Use the canonical
 [CRTC:%d:%s]/etc. format in i915_display_info
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

T24gMjAxOS0xMS0yOSBhdCAyMDo1NDozMiArMDIwMCwgVmlsbGUgU3lyamFsYSB3cm90ZToKPiBG
cm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IAo+
IFVzZSB0aGUgY2Fub25pY2FsdCAiW0NSVEM6JWQ6JXNdIiBmb3JtYXQgZm9yIHRoZSBvYmogaWQv
bmFtZQo+IGluIHRoZSBkZWJ1Z2ZzIGRpc3BsYXlfaW5mbyBkdW1wLiBFdmVyeW9uZSBzaG91bGQg
YWxyZWFkeSBiZQo+IGZhbWlsaWFyIHdpdGggdGhlIGZvcm1hdCBzaW5jZSBpdCdzIHVzZWQgaW4g
dGhlIGRlYnVnIGxvZ3MKPiBleHRlbnNpdmVseS4KCkxvb2tzIGdvb2QgdG8gbWUuCgpSZXZpZXdl
ZC1ieTogUmFtYWxpbmdhbSBDIDxyYW1hbGluZ2FtLmNAaW50ZWwuY29tPgoKPiAKPiBTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+
IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyB8IDE0ICsrKysrKyst
LS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKPiBpbmRleCAzYmY3ZDRlMmY5NDAu
LjRkZmZiZmYxYjhiZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rl
YnVnZnMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCj4gQEAg
LTIzODUsMTEgKzIzODUsMTEgQEAgc3RhdGljIHZvaWQgaW50ZWxfZW5jb2Rlcl9pbmZvKHN0cnVj
dCBzZXFfZmlsZSAqbSwKPiAgCXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSAmZGV2X3ByaXYtPmRy
bTsKPiAgCXN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcjsKPiAgCj4gLQlzZXFfcHJp
bnRmKG0sICJcdGVuY29kZXIgJWQ6IHR5cGU6ICVzLCBjb25uZWN0b3JzOlxuIiwKPiArCXNlcV9w
cmludGYobSwgIlx0W0VOQ09ERVI6JWQ6JXNdOiBjb25uZWN0b3JzOlxuIiwKPiAgCQkgICBlbmNv
ZGVyLT5iYXNlLmJhc2UuaWQsIGVuY29kZXItPmJhc2UubmFtZSk7Cj4gIAo+ICAJZm9yX2VhY2hf
Y29ubmVjdG9yX29uX2VuY29kZXIoZGV2LCAmZW5jb2Rlci0+YmFzZSwgY29ubmVjdG9yKQo+IC0J
CXNlcV9wcmludGYobSwgIlx0XHRjb25uZWN0b3IgJWQ6IHR5cGU6ICVzXG4iLAo+ICsJCXNlcV9w
cmludGYobSwgIlx0XHRbQ09OTkVDVE9SOiVkOiVzXVxuIiwKPiAgCQkJICAgY29ubmVjdG9yLT5i
YXNlLmJhc2UuaWQsIGNvbm5lY3Rvci0+YmFzZS5uYW1lKTsKPiAgfQo+ICAKPiBAQCAtMjQ3OCw3
ICsyNDc4LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfY29ubmVjdG9yX2luZm8oc3RydWN0IHNlcV9m
aWxlICptLAo+ICAJc3RydWN0IGludGVsX2VuY29kZXIgKmludGVsX2VuY29kZXIgPSBpbnRlbF9j
b25uZWN0b3ItPmVuY29kZXI7Cj4gIAlzdHJ1Y3QgZHJtX2Rpc3BsYXlfbW9kZSAqbW9kZTsKPiAg
Cj4gLQlzZXFfcHJpbnRmKG0sICJjb25uZWN0b3IgJWQ6IHR5cGUgJXMsIHN0YXR1czogJXNcbiIs
Cj4gKwlzZXFfcHJpbnRmKG0sICJbQ09OTkVDVE9SOiVkOiVzXTogc3RhdHVzOiAlc1xuIiwKPiAg
CQkgICBjb25uZWN0b3ItPmJhc2UuaWQsIGNvbm5lY3Rvci0+bmFtZSwKPiAgCQkgICBkcm1fZ2V0
X2Nvbm5lY3Rvcl9zdGF0dXNfbmFtZShjb25uZWN0b3ItPnN0YXR1cykpOwo+ICAKPiBAQCAtMjU4
NSw4ICsyNTg1LDggQEAgc3RhdGljIHZvaWQgaW50ZWxfcGxhbmVfaW5mbyhzdHJ1Y3Qgc2VxX2Zp
bGUgKm0sIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQo+ICAJCXBsYW5lX3JvdGF0aW9uKHJvdF9z
dHIsIHNpemVvZihyb3Rfc3RyKSwKPiAgCQkJICAgICAgIHBsYW5lX3N0YXRlLT51YXBpLnJvdGF0
aW9uKTsKPiAgCj4gLQkJc2VxX3ByaW50ZihtLCAiXHQtLVBsYW5lIGlkICVkOiB0eXBlPSVzLCBm
Yj0lZCwlcywlZHglZCwgc3JjPSIgRFJNX1JFQ1RfRlBfRk1UICIsIGRzdD0iIERSTV9SRUNUX0ZN
VCAiLCByb3RhdGlvbj0lc1xuIiwKPiAtCQkJICAgcGxhbmUtPmJhc2UuYmFzZS5pZCwKPiArCQlz
ZXFfcHJpbnRmKG0sICJcdFtQTEFORTolZDolc106IHR5cGU9JXMsIGZiPSVkLCVzLCVkeCVkLCBz
cmM9IiBEUk1fUkVDVF9GUF9GTVQgIiwgZHN0PSIgRFJNX1JFQ1RfRk1UICIsIHJvdGF0aW9uPSVz
XG4iLAo+ICsJCQkgICBwbGFuZS0+YmFzZS5iYXNlLmlkLCBwbGFuZS0+YmFzZS5uYW1lLAo+ICAJ
CQkgICBwbGFuZV90eXBlKHBsYW5lLT5iYXNlLnR5cGUpLAo+ICAJCQkgICBmYiA/IGZiLT5iYXNl
LmlkIDogMCwKPiAgCQkJICAgZmIgPyBmb3JtYXRfbmFtZS5zdHIgOiAibi9hIiwKPiBAQCAtMjYz
MSw4ICsyNjMxLDggQEAgc3RhdGljIHZvaWQgaW50ZWxfY3J0Y19pbmZvKHN0cnVjdCBzZXFfZmls
ZSAqbSwgc3RydWN0IGludGVsX2NydGMgKmNydGMpCj4gIAljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9Cj4gIAkJdG9faW50ZWxfY3J0Y19zdGF0ZShjcnRjLT5iYXNl
LnN0YXRlKTsKPiAgCj4gLQlzZXFfcHJpbnRmKG0sICJDUlRDICVkOiBwaXBlOiAlYywgYWN0aXZl
PSVzLCAoc2l6ZT0lZHglZCksIGRpdGhlcj0lcywgYnBwPSVkXG4iLAo+IC0JCSAgIGNydGMtPmJh
c2UuYmFzZS5pZCwgcGlwZV9uYW1lKGNydGMtPnBpcGUpLAo+ICsJc2VxX3ByaW50ZihtLCAiW0NS
VEM6JWQ6JXNdOiBhY3RpdmU9JXMsIChzaXplPSVkeCVkKSwgZGl0aGVyPSVzLCBicHA9JWRcbiIs
Cj4gKwkJICAgY3J0Yy0+YmFzZS5iYXNlLmlkLCBjcnRjLT5iYXNlLm5hbWUsCj4gIAkJICAgeWVz
bm8oY3J0Y19zdGF0ZS0+aHcuYWN0aXZlKSwKPiAgCQkgICBjcnRjX3N0YXRlLT5waXBlX3NyY193
LCBjcnRjX3N0YXRlLT5waXBlX3NyY19oLAo+ICAJCSAgIHllc25vKGNydGNfc3RhdGUtPmRpdGhl
ciksIGNydGNfc3RhdGUtPnBpcGVfYnBwKTsKPiAtLSAKPiAyLjIzLjAKPiAKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5n
IGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
