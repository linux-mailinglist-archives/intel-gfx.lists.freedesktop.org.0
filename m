Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F634D5D36
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 10:15:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0176D89E47;
	Mon, 14 Oct 2019 08:15:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3763E89E47
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 08:15:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 01:15:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,295,1566889200"; d="scan'208";a="207923278"
Received: from vkuppusa-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.39.77])
 by fmsmga001.fm.intel.com with ESMTP; 14 Oct 2019 01:15:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20191011202030.8829-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191011202030.8829-1-ville.syrjala@linux.intel.com>
Date: Mon, 14 Oct 2019 11:16:08 +0300
Message-ID: <878spnd9o7.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Favor last VBT child device with
 conflicting AUX ch/DDC pin
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
Cc: Masami Ichikawa <masami256@gmail.com>, Torsten <freedesktop201910@liggy.de>,
 stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxMSBPY3QgMjAxOSwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBUaGUgZmlyc3QgY29tZSBmaXJzdCBzZXJ2ZWQgYXBwb3JvYWNo
IHRvIGhhbmRsaW5nIHRoZSBWQlQKPiBjaGlsZCBkZXZpY2UgQVVYIGNoIGNvbmZsaWN0cyBoYXMg
YmFja2ZpcmVkLiBXZSBoYXZlIG1hY2hpbmVzCj4gaW4gdGhlIHdpbGQgd2hlcmUgdGhlIFZCVCBz
cGVjaWZpZXMgYm90aCBwb3J0IEEgZURQIGFuZAo+IHBvcnQgRSBEUCAoaW4gdGhhdCBvcmRlcikg
d2l0aCBwb3J0IEUgYmVpbmcgdGhlIHJlYWwgb25lLgo+Cj4gU28gbGV0J3MgdHJ5IHRvIGZsaXAg
dGhlIHByZWZlcmVuY2UgYXJvdW5kIGFuZCBsZXQgdGhlIGxhc3QKPiBjaGlsZCBkZXZpY2Ugd2lu
IG9uY2UgYWdhaW4uCgpJIHRoaW5rIHRoZXJlIHdpbGwgYmUgbGVnaXRpbWF0ZSBjYXNlcyB3aGVy
ZSB3ZSBuZWVkIGZpcnN0IGNvbWUgZmlyc3QKc2VydmVkLiBPaCB3ZWxsLCBhbm90aGVyIFZCVCBt
aXNlcnkgdG8gdGFja2xlIGluIHRoZSBmdXR1cmUuCgpBY2tlZC1ieTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4KCgo+Cj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKPiBD
YzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiBDYzogTWFzYW1pIEljaGlr
YXdhIDxtYXNhbWkyNTZAZ21haWwuY29tPgo+IFRlc3RlZC1ieTogVG9yc3RlbiA8ZnJlZWRlc2t0
b3AyMDE5MTBAbGlnZ3kuZGU+Cj4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTExMTk2Ngo+IEZpeGVzOiAzNmEwZjkyMDIwZGMgKCJkcm0vaTkx
NS9iaW9zOiBtYWtlIGNoaWxkIGRldmljZSBvcmRlciB0aGUgcHJpb3JpdHkgb3JkZXIiKQo+IFNp
Z25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIHwg
MjIgKysrKysrKysrKysrKysrKy0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9u
cygrKSwgNiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Jpb3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYmlvcy5jCj4gaW5kZXggOTYyOGI0ODViMTc5Li5mMDMwN2IwNGNjMTMgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwo+IEBAIC0xMjcwLDcgKzEyNzAs
NyBAQCBzdGF0aWMgdm9pZCBzYW5pdGl6ZV9kZGNfcGluKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwKPiAgCQlEUk1fREVCVUdfS01TKCJwb3J0ICVjIHRyeWluZyB0byB1c2UgdGhl
IHNhbWUgRERDIHBpbiAoMHgleCkgYXMgcG9ydCAlYywgIgo+ICAJCQkgICAgICAiZGlzYWJsaW5n
IHBvcnQgJWMgRFZJL0hETUkgc3VwcG9ydFxuIiwKPiAgCQkJICAgICAgcG9ydF9uYW1lKHBvcnQp
LCBpbmZvLT5hbHRlcm5hdGVfZGRjX3BpbiwKPiAtCQkJICAgICAgcG9ydF9uYW1lKHApLCBwb3J0
X25hbWUocG9ydCkpOwo+ICsJCQkgICAgICBwb3J0X25hbWUocCksIHBvcnRfbmFtZShwKSk7Cj4g
IAo+ICAJCS8qCj4gIAkJICogSWYgd2UgaGF2ZSBtdWx0aXBsZSBwb3J0cyBzdXBwb3NlZGx5IHNo
YXJpbmcgdGhlCj4gQEAgLTEyNzgsOSArMTI3OCwxNCBAQCBzdGF0aWMgdm9pZCBzYW5pdGl6ZV9k
ZGNfcGluKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgCQkgKiBwb3J0LiBP
dGhlcndpc2UgdGhleSBzaGFyZSB0aGUgc2FtZSBkZGMgYmluIGFuZAo+ICAJCSAqIHN5c3RlbSBj
b3VsZG4ndCBjb21tdW5pY2F0ZSB3aXRoIHRoZW0gc2VwYXJhdGVseS4KPiAgCQkgKgo+IC0JCSAq
IEdpdmUgY2hpbGQgZGV2aWNlIG9yZGVyIHRoZSBwcmlvcml0eSwgZmlyc3QgY29tZSBmaXJzdAo+
IC0JCSAqIHNlcnZlZC4KPiArCQkgKiBHaXZlIGludmVyc2UgY2hpbGQgZGV2aWNlIG9yZGVyIHRo
ZSBwcmlvcml0eSwKPiArCQkgKiBsYXN0IG9uZSB3aW5zLiBZZXMsIHRoZXJlIGFyZSByZWFsIG1h
Y2hpbmVzCj4gKwkJICogKGVnLiBBc3JvY2sgQjI1ME0tSERWKSB3aGVyZSBWQlQgaGFzIGJvdGgK
PiArCQkgKiBwb3J0IEEgYW5kIHBvcnQgRSB3aXRoIHRoZSBzYW1lIEFVWCBjaCBhbmQKPiArCQkg
KiB3ZSBtdXN0IHBpY2sgcG9ydCBFIDooCj4gIAkJICovCj4gKwkJaW5mbyA9ICZkZXZfcHJpdi0+
dmJ0LmRkaV9wb3J0X2luZm9bcF07Cj4gKwo+ICAJCWluZm8tPnN1cHBvcnRzX2R2aSA9IGZhbHNl
Owo+ICAJCWluZm8tPnN1cHBvcnRzX2hkbWkgPSBmYWxzZTsKPiAgCQlpbmZvLT5hbHRlcm5hdGVf
ZGRjX3BpbiA9IDA7Cj4gQEAgLTEzMTYsNyArMTMyMSw3IEBAIHN0YXRpYyB2b2lkIHNhbml0aXpl
X2F1eF9jaChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gIAkJRFJNX0RFQlVH
X0tNUygicG9ydCAlYyB0cnlpbmcgdG8gdXNlIHRoZSBzYW1lIEFVWCBDSCAoMHgleCkgYXMgcG9y
dCAlYywgIgo+ICAJCQkgICAgICAiZGlzYWJsaW5nIHBvcnQgJWMgRFAgc3VwcG9ydFxuIiwKPiAg
CQkJICAgICAgcG9ydF9uYW1lKHBvcnQpLCBpbmZvLT5hbHRlcm5hdGVfYXV4X2NoYW5uZWwsCj4g
LQkJCSAgICAgIHBvcnRfbmFtZShwKSwgcG9ydF9uYW1lKHBvcnQpKTsKPiArCQkJICAgICAgcG9y
dF9uYW1lKHApLCBwb3J0X25hbWUocCkpOwo+ICAKPiAgCQkvKgo+ICAJCSAqIElmIHdlIGhhdmUg
bXVsdGlwbGUgcG9ydHMgc3VwcG9zZWRsdCBzaGFyaW5nIHRoZQo+IEBAIC0xMzI0LDkgKzEzMjks
MTQgQEAgc3RhdGljIHZvaWQgc2FuaXRpemVfYXV4X2NoKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwKPiAgCQkgKiBwb3J0LiBPdGhlcndpc2UgdGhleSBzaGFyZSB0aGUgc2FtZSBh
dXggY2hhbm5lbAo+ICAJCSAqIGFuZCBzeXN0ZW0gY291bGRuJ3QgY29tbXVuaWNhdGUgd2l0aCB0
aGVtIHNlcGFyYXRlbHkuCj4gIAkJICoKPiAtCQkgKiBHaXZlIGNoaWxkIGRldmljZSBvcmRlciB0
aGUgcHJpb3JpdHksIGZpcnN0IGNvbWUgZmlyc3QKPiAtCQkgKiBzZXJ2ZWQuCj4gKwkJICogR2l2
ZSBpbnZlcnNlIGNoaWxkIGRldmljZSBvcmRlciB0aGUgcHJpb3JpdHksCj4gKwkJICogbGFzdCBv
bmUgd2lucy4gWWVzLCB0aGVyZSBhcmUgcmVhbCBtYWNoaW5lcwo+ICsJCSAqIChlZy4gQXNyb2Nr
IEIyNTBNLUhEVikgd2hlcmUgVkJUIGhhcyBib3RoCj4gKwkJICogcG9ydCBBIGFuZCBwb3J0IEUg
d2l0aCB0aGUgc2FtZSBBVVggY2ggYW5kCj4gKwkJICogd2UgbXVzdCBwaWNrIHBvcnQgRSA6KAo+
ICAJCSAqLwo+ICsJCWluZm8gPSAmZGV2X3ByaXYtPnZidC5kZGlfcG9ydF9pbmZvW3BdOwo+ICsK
PiAgCQlpbmZvLT5zdXBwb3J0c19kcCA9IGZhbHNlOwo+ICAJCWluZm8tPmFsdGVybmF0ZV9hdXhf
Y2hhbm5lbCA9IDA7Cj4gIAl9CgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdy
YXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
