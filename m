Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA1735C6E
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2019 14:19:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DF4A88862;
	Wed,  5 Jun 2019 12:19:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE47D88862
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2019 12:19:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Jun 2019 05:19:36 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 05 Jun 2019 05:19:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <20190531140454.GV5942@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1559308269.git.jani.nikula@intel.com>
 <34ab98880386a095422521ad39f4c080eeb3989a.1559308269.git.jani.nikula@intel.com>
 <20190531140454.GV5942@intel.com>
Date: Wed, 05 Jun 2019 15:22:41 +0300
Message-ID: <87muiw2pda.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/13] drm/i915/bios: make child device
 order the priority order
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

T24gRnJpLCAzMSBNYXkgMjAxOSwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gRnJpLCBNYXkgMzEsIDIwMTkgYXQgMDQ6MTQ6NTFQTSAr
MDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4+IE1ha2UgdGhlIGNoaWxkIGRldmljZSBvcmRlciB0
aGUgcHJpb3JpdHkgb3JkZXIgaW4gc2FuaXRpemluZyBEREMgcGluIGFuZAo+PiBBVVggQ0guIEZp
cnN0IGNvbWUsIGZpcnN0IHNlcnZlZC4KPj4gCj4+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8
amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2Jpb3MuYyB8IDMyICsrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0KPj4gIDEgZmls
ZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAxNyBkZWxldGlvbnMoLSkKPj4gCj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9iaW9zLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9iaW9zLmMKPj4gaW5kZXggYTBiNzA4ZjdmMzg0Li4wYTFiOWE0YTFiNzEg
MTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Jpb3MuYwo+PiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9iaW9zLmMKPj4gQEAgLTEyNDIsOCArMTI0Miw3
IEBAIHN0YXRpYyB1OCB0cmFuc2xhdGVfaWJvb3N0KHU4IHZhbCkKPj4gIHN0YXRpYyB2b2lkIHNh
bml0aXplX2RkY19waW4oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+PiAgCQkJ
ICAgICBlbnVtIHBvcnQgcG9ydCkKPj4gIHsKPj4gLQljb25zdCBzdHJ1Y3QgZGRpX3ZidF9wb3J0
X2luZm8gKmluZm8gPQo+PiAtCQkmZGV2X3ByaXYtPnZidC5kZGlfcG9ydF9pbmZvW3BvcnRdOwo+
PiArCXN0cnVjdCBkZGlfdmJ0X3BvcnRfaW5mbyAqaW5mbyA9ICZkZXZfcHJpdi0+dmJ0LmRkaV9w
b3J0X2luZm9bcG9ydF07Cj4+ICAJZW51bSBwb3J0IHA7Cj4+ICAKPj4gIAlpZiAoIWluZm8tPmFs
dGVybmF0ZV9kZGNfcGluKQo+PiBAQCAtMTI1OCw4ICsxMjU3LDggQEAgc3RhdGljIHZvaWQgc2Fu
aXRpemVfZGRjX3BpbihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4+ICAKPj4g
IAkJRFJNX0RFQlVHX0tNUygicG9ydCAlYyB0cnlpbmcgdG8gdXNlIHRoZSBzYW1lIEREQyBwaW4g
KDB4JXgpIGFzIHBvcnQgJWMsICIKPj4gIAkJCSAgICAgICJkaXNhYmxpbmcgcG9ydCAlYyBEVkkv
SERNSSBzdXBwb3J0XG4iLAo+PiAtCQkJICAgICAgcG9ydF9uYW1lKHApLCBpLT5hbHRlcm5hdGVf
ZGRjX3BpbiwKPj4gLQkJCSAgICAgIHBvcnRfbmFtZShwb3J0KSwgcG9ydF9uYW1lKHApKTsKPj4g
KwkJCSAgICAgIHBvcnRfbmFtZShwb3J0KSwgaW5mby0+YWx0ZXJuYXRlX2RkY19waW4sCj4+ICsJ
CQkgICAgICBwb3J0X25hbWUocCksIHBvcnRfbmFtZShwb3J0KSk7Cj4+ICAKPj4gIAkJLyoKPj4g
IAkJICogSWYgd2UgaGF2ZSBtdWx0aXBsZSBwb3J0cyBzdXBwb3NlZGx5IHNoYXJpbmcgdGhlCj4+
IEBAIC0xMjY3LDIwICsxMjY2LDE5IEBAIHN0YXRpYyB2b2lkIHNhbml0aXplX2RkY19waW4oc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+PiAgCQkgKiBwb3J0LiBPdGhlcndpc2Ug
dGhleSBzaGFyZSB0aGUgc2FtZSBkZGMgYmluIGFuZAo+PiAgCQkgKiBzeXN0ZW0gY291bGRuJ3Qg
Y29tbXVuaWNhdGUgd2l0aCB0aGVtIHNlcGFyYXRlbHkuCj4+ICAJCSAqCj4+IC0JCSAqIER1ZSB0
byBwYXJzaW5nIHRoZSBwb3J0cyBpbiBjaGlsZCBkZXZpY2Ugb3JkZXIsCj4+IC0JCSAqIGEgbGF0
ZXIgZGV2aWNlIHdpbGwgYWx3YXlzIGNsb2JiZXIgYW4gZWFybGllciBvbmUuCj4+ICsJCSAqIEdp
dmUgY2hpbGQgZGV2aWNlIG9yZGVyIHRoZSBwcmlvcml0eSwgZmlyc3QgY29tZSBmaXJzdAo+PiAr
CQkgKiBzZXJ2ZWQuCj4+ICAJCSAqLwo+PiAtCQlpLT5zdXBwb3J0c19kdmkgPSBmYWxzZTsKPj4g
LQkJaS0+c3VwcG9ydHNfaGRtaSA9IGZhbHNlOwo+PiAtCQlpLT5hbHRlcm5hdGVfZGRjX3BpbiA9
IDA7Cj4+ICsJCWluZm8tPnN1cHBvcnRzX2R2aSA9IGZhbHNlOwo+PiArCQlpbmZvLT5zdXBwb3J0
c19oZG1pID0gZmFsc2U7Cj4+ICsJCWluZm8tPmFsdGVybmF0ZV9kZGNfcGluID0gMDsKPgo+ICdp
JyBjYW4gbm93IGJlIGNvbnN0IEkgdGhpbmsuCgpJIGlnbm9yZWQgdGhhdCBiZWNhdXNlICdpJyBn
ZXRzIHJlbW92ZWQgYSBjb3VwbGUgb2YgcGF0Y2hlcyBsYXRlcgphbnl3YXkuCgo+Cj4gU2VyaWVz
IGlzCj4gUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Cj4KPiBUaG91Z2ggSSBvbmx5IGdsYW5jZWQgYXQgdGhlIGhlYWRlciByZW9yZ2Fu
aXphdGlvbiB0aGluZ3MgaW5zdGVhZAo+IG9mIHJlYWRpbmcgdGhyb3VnaCBpdCBhbGwgaW4gZGV0
YWlsLgoKVGhhbmtzLCBwdXNoZWQgdGhlIGxvdC4KCkJSLApKYW5pLgoKPgo+PiAgCX0KPj4gIH0K
Pj4gIAo+PiAgc3RhdGljIHZvaWQgc2FuaXRpemVfYXV4X2NoKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdiwKPj4gIAkJCSAgICBlbnVtIHBvcnQgcG9ydCkKPj4gIHsKPj4gLQljb25z
dCBzdHJ1Y3QgZGRpX3ZidF9wb3J0X2luZm8gKmluZm8gPQo+PiAtCQkmZGV2X3ByaXYtPnZidC5k
ZGlfcG9ydF9pbmZvW3BvcnRdOwo+PiArCXN0cnVjdCBkZGlfdmJ0X3BvcnRfaW5mbyAqaW5mbyA9
ICZkZXZfcHJpdi0+dmJ0LmRkaV9wb3J0X2luZm9bcG9ydF07Cj4+ICAJZW51bSBwb3J0IHA7Cj4+
ICAKPj4gIAlpZiAoIWluZm8tPmFsdGVybmF0ZV9hdXhfY2hhbm5lbCkKPj4gQEAgLTEyOTUsOCAr
MTI5Myw4IEBAIHN0YXRpYyB2b2lkIHNhbml0aXplX2F1eF9jaChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsCj4+ICAKPj4gIAkJRFJNX0RFQlVHX0tNUygicG9ydCAlYyB0cnlpbmcg
dG8gdXNlIHRoZSBzYW1lIEFVWCBDSCAoMHgleCkgYXMgcG9ydCAlYywgIgo+PiAgCQkJICAgICAg
ImRpc2FibGluZyBwb3J0ICVjIERQIHN1cHBvcnRcbiIsCj4+IC0JCQkgICAgICBwb3J0X25hbWUo
cCksIGktPmFsdGVybmF0ZV9hdXhfY2hhbm5lbCwKPj4gLQkJCSAgICAgIHBvcnRfbmFtZShwb3J0
KSwgcG9ydF9uYW1lKHApKTsKPj4gKwkJCSAgICAgIHBvcnRfbmFtZShwb3J0KSwgaW5mby0+YWx0
ZXJuYXRlX2F1eF9jaGFubmVsLAo+PiArCQkJICAgICAgcG9ydF9uYW1lKHApLCBwb3J0X25hbWUo
cG9ydCkpOwo+PiAgCj4+ICAJCS8qCj4+ICAJCSAqIElmIHdlIGhhdmUgbXVsdGlwbGUgcG9ydHMg
c3VwcG9zZWRsdCBzaGFyaW5nIHRoZQo+PiBAQCAtMTMwNCwxMSArMTMwMiwxMSBAQCBzdGF0aWMg
dm9pZCBzYW5pdGl6ZV9hdXhfY2goc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+
PiAgCQkgKiBwb3J0LiBPdGhlcndpc2UgdGhleSBzaGFyZSB0aGUgc2FtZSBhdXggY2hhbm5lbAo+
PiAgCQkgKiBhbmQgc3lzdGVtIGNvdWxkbid0IGNvbW11bmljYXRlIHdpdGggdGhlbSBzZXBhcmF0
ZWx5Lgo+PiAgCQkgKgo+PiAtCQkgKiBEdWUgdG8gcGFyc2luZyB0aGUgcG9ydHMgaW4gY2hpbGQg
ZGV2aWNlIG9yZGVyLAo+PiAtCQkgKiBhIGxhdGVyIGRldmljZSB3aWxsIGFsd2F5cyBjbG9iYmVy
IGFuIGVhcmxpZXIgb25lLgo+PiArCQkgKiBHaXZlIGNoaWxkIGRldmljZSBvcmRlciB0aGUgcHJp
b3JpdHksIGZpcnN0IGNvbWUgZmlyc3QKPj4gKwkJICogc2VydmVkLgo+PiAgCQkgKi8KPj4gLQkJ
aS0+c3VwcG9ydHNfZHAgPSBmYWxzZTsKPj4gLQkJaS0+YWx0ZXJuYXRlX2F1eF9jaGFubmVsID0g
MDsKPj4gKwkJaW5mby0+c3VwcG9ydHNfZHAgPSBmYWxzZTsKPj4gKwkJaW5mby0+YWx0ZXJuYXRl
X2F1eF9jaGFubmVsID0gMDsKPj4gIAl9Cj4+ICB9Cj4+ICAKPj4gLS0gCj4+IDIuMjAuMQoKLS0g
CkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
