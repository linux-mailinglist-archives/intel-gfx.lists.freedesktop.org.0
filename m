Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F76D17A17F
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 09:37:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F00546EBA9;
	Thu,  5 Mar 2020 08:37:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94E766EBA1;
 Thu,  5 Mar 2020 08:37:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 00:37:37 -0800
X-IronPort-AV: E=Sophos;i="5.70,517,1574150400"; d="scan'208";a="234346542"
Received: from bennur-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.38.13])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 00:37:34 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Mario Kleiner <mario.kleiner.de@gmail.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
In-Reply-To: <87zhcvnqqx.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200305081219.2900-1-mario.kleiner.de@gmail.com>
 <87zhcvnqqx.fsf@intel.com>
Date: Thu, 05 Mar 2020 10:37:35 +0200
Message-ID: <87wo7znqnk.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Add dpcd link_rate quirk for
 Apple 15" MBP 2017 (v2)
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAwNSBNYXIgMjAyMCwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4g
d3JvdGU6Cj4gT24gVGh1LCAwNSBNYXIgMjAyMCwgTWFyaW8gS2xlaW5lciA8bWFyaW8ua2xlaW5l
ci5kZUBnbWFpbC5jb20+IHdyb3RlOgo+PiBUaGlzIGZpeGVzIGEgcHJvYmxlbSBmb3VuZCBvbiB0
aGUgTWFjQm9va1BybyAyMDE3IFJldGluYSBwYW5lbC4KPj4KPj4gVGhlIHBhbmVsIHJlcG9ydHMg
MTAgYnBjIGNvbG9yIGRlcHRoIGluIGl0cyBFRElELCBhbmQgdGhlCj4+IGZpcm13YXJlIGNob29z
ZXMgbGluayBzZXR0aW5ncyBhdCBib290IHdoaWNoIHN1cHBvcnQgZW5vdWdoCj4+IGJhbmR3aWR0
aCBmb3IgMTAgYnBjICgzMjQwMDAga2JpdC9zZWMgPSBtdWx0aXBsaWVyIDB4YyksCj4+IGJ1dCB0
aGUgRFBfTUFYX0xJTktfUkFURSBkcGNkIHJlZ2lzdGVyIG9ubHkgcmVwb3J0cwo+PiAyLjcgR2Jw
cyAobXVsdGlwbGllciB2YWx1ZSAweGEpIGFzIHBvc3NpYmxlLCBpbiBkaXJlY3QKPj4gY29udHJh
ZGljdGlvbiBvZiB3aGF0IHRoZSBmaXJtd2FyZSBzdWNjZXNzZnVsbHkgc2V0IHVwLgo+Pgo+PiBU
aGlzIHJlc3RyaWN0cyB0aGUgcGFuZWwgdG8gOCBicGMsIG5vdCBwcm92aWRpbmcgdGhlIGZ1bGwK
Pj4gY29sb3IgZGVwdGggb2YgdGhlIHBhbmVsLgo+Pgo+PiBUaGlzIHBhdGNoIGFkZHMgYSBxdWly
ayBzcGVjaWZpYyB0byB0aGUgTUJQIDIwMTcgMTUiIFJldGluYQo+PiBwYW5lbCB0byBhZGQgdGhl
IGFkZGl0aWlvbmFsIDMyNDAwMCBrYnBzIGxpbmsgcmF0ZSBkdXJpbmcKPj4gZWRwIHNldHVwLgo+
Pgo+PiBMaW5rIHRvIHByZXZpb3VzIGRpc2N1c3Npb24gb2YgYSBkaWZmZXJlbnQgYXR0ZW1wdGVk
IGZpeAo+PiB3aXRoIFZpbGxlIGFuZCBKYW5pOgo+Pgo+PiBodHRwczovL3BhdGNod29yay5rZXJu
ZWwub3JnL3BhdGNoLzExMzI1OTM1Lwo+Pgo+PiB2MjogRm9sbG93IEphbmkncyBwcm9wb3NhbCBv
ZiBkZWZpbmluZyBxdWlya19yYXRlc1tdIGluc3RlYWQKPj4gICAgIG9mIGp1c3QgYXBwZW5kaW5n
IDMyNDAwMC4gVGhpcyBmb3IgYmV0dGVyIGNsYXJpdHkuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IE1h
cmlvIEtsZWluZXIgPG1hcmlvLmtsZWluZXIuZGVAZ21haWwuY29tPgo+PiBUZXN0ZWQtYnk6IE1h
cmlvIEtsZWluZXIgPG1hcmlvLmtsZWluZXIuZGVAZ21haWwuY29tPgo+PiBDYzogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPj4gQ2M6IEphbmkgTmlrdWxh
IDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4KPiBBcyBtdWNoIGFzIEkgZGlzbGlrZSBxdWlya3Ms
IEkgdGhpbmsgd2UgZGlkIGV4aGF1c3Qgb3RoZXIgb3B0aW9ucyB3aGVuCj4gd2UgZGVidWdnZWQg
dGhpcywgYW5kIHRoaXMgaXMgbm93IHZlcnkgbmljZWx5IGlzb2xhdGVkLiBUaGFua3MgZm9yIHRo
ZQo+IHBhdGNoLgo+Cj4gUmV2aWV3ZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRl
bC5jb20+Cj4KPiBJJ2xsIG1lcmdlIG9uY2UgdGhlIENJIHJlc3VsdHMgYXJlIGluLCBtb3N0bHkg
dG8gZW5zdXJlIHRoaXMgZG9lc24ndAo+IGltcGFjdCBvdGhlciBwbGF0Zm9ybXMsIGFzIHdlIGRv
bid0IGhhdmUgdGhlIG1hY2hpbmUgaW4gdGhlIENJIGZhcm0uCgpOb3RlIHRvIHNlbGYsIGFkZCB0
aGlzIHdoZW4gbWVyZ2luZyBwZXIgTWFyaW8ncyBzdWdnZXN0aW9uOgoKQ2M6IHN0YWJsZUB2Z2Vy
Lmtlcm5lbC5vcmcKCj4KPj4gLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2hlbHBlci5j
ICAgICAgICAgfCAgMiArKwo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jIHwgMTEgKysrKysrKysrKysKPj4gIGluY2x1ZGUvZHJtL2RybV9kcF9oZWxwZXIuaCAgICAg
ICAgICAgICB8ICA3ICsrKysrKysKPj4gIDMgZmlsZXMgY2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygr
KQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9kcm1fZHBfaGVscGVyLmMKPj4gaW5kZXggNWExMDNlOWIzYzg2Li4zNmEz
NzFjMDE2Y2IgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfaGVscGVyLmMK
Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIuYwo+PiBAQCAtMTE3OSw2ICsx
MTc5LDggQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkcGNkX3F1aXJrIGRwY2RfcXVpcmtfbGlzdFtd
ID0gewo+PiAgCXsgT1VJKDB4MDAsIDB4MDAsIDB4MDApLCBERVZJQ0VfSUQoJ0MnLCAnSCcsICc3
JywgJzUnLCAnMScsICcxJyksIGZhbHNlLCBCSVQoRFBfRFBDRF9RVUlSS19OT19TSU5LX0NPVU5U
KSB9LAo+PiAgCS8qIFN5bmFwdGljcyBEUDEuNCBNU1QgaHVicyBjYW4gc3VwcG9ydCBEU0Mgd2l0
aG91dCB2aXJ0dWFsIERQQ0QgKi8KPj4gIAl7IE9VSSgweDkwLCAweENDLCAweDI0KSwgREVWSUNF
X0lEX0FOWSwgdHJ1ZSwgQklUKERQX0RQQ0RfUVVJUktfRFNDX1dJVEhPVVRfVklSVFVBTF9EUENE
KSB9LAo+PiArCS8qIEFwcGxlIE1hY0Jvb2tQcm8gMjAxNyAxNSBpbmNoIGVEUCBSZXRpbmEgcGFu
ZWwgcmVwb3J0cyB0b28gbG93IERQX01BWF9MSU5LX1JBVEUgKi8KPj4gKwl7IE9VSSgweDAwLCAw
eDEwLCAweGZhKSwgREVWSUNFX0lEKDEwMSwgNjgsIDIxLCAxMDEsIDk4LCA5NyksIGZhbHNlLCBC
SVQoRFBfRFBDRF9RVUlSS19DQU5fRE9fTUFYX0xJTktfUkFURV8zXzI0X0dCUFMpIH0sCj4+ICB9
Owo+PiAgCj4+ICAjdW5kZWYgT1VJCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMKPj4gaW5kZXggNDA3NGQ4M2IxYTVmLi5jMGQyYzcwYjA0ZmIgMTAwNjQ0Cj4+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+PiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPj4gQEAgLTE2OSw2ICsxNjksMTcgQEAg
c3RhdGljIHZvaWQgaW50ZWxfZHBfc2V0X3NpbmtfcmF0ZXMoc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCkKPj4gIAl9Owo+PiAgCWludCBpLCBtYXhfcmF0ZTsKPj4gIAo+PiArCWlmIChkcm1fZHBf
aGFzX3F1aXJrKCZpbnRlbF9kcC0+ZGVzYywKPj4gKwkJCSAgICAgRFBfRFBDRF9RVUlSS19DQU5f
RE9fTUFYX0xJTktfUkFURV8zXzI0X0dCUFMpKSB7Cj4+ICsJCS8qIE5lZWRlZCwgZS5nLiwgZm9y
IEFwcGxlIE1CUCAyMDE3LCAxNSBpbmNoIGVEUCBSZXRpbmEgcGFuZWwgKi8KPj4gKwkJc3RhdGlj
IGNvbnN0IGludCBxdWlya19yYXRlc1tdID0geyAxNjIwMDAsIDI3MDAwMCwgMzI0MDAwIH07Cj4+
ICsKPj4gKwkJbWVtY3B5KGludGVsX2RwLT5zaW5rX3JhdGVzLCBxdWlya19yYXRlcywgc2l6ZW9m
KHF1aXJrX3JhdGVzKSk7Cj4+ICsJCWludGVsX2RwLT5udW1fc2lua19yYXRlcyA9IEFSUkFZX1NJ
WkUocXVpcmtfcmF0ZXMpOwo+PiArCj4+ICsJCXJldHVybjsKPj4gKwl9Cj4+ICsKPj4gIAltYXhf
cmF0ZSA9IGRybV9kcF9id19jb2RlX3RvX2xpbmtfcmF0ZShpbnRlbF9kcC0+ZHBjZFtEUF9NQVhf
TElOS19SQVRFXSk7Cj4+ICAKPj4gIAlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShkcF9yYXRl
cyk7IGkrKykgewo+PiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vZHJtX2RwX2hlbHBlci5oIGIv
aW5jbHVkZS9kcm0vZHJtX2RwX2hlbHBlci5oCj4+IGluZGV4IDI2MmZhZjllNWU5NC4uNGI4NmEx
ZjJhNTU5IDEwMDY0NAo+PiAtLS0gYS9pbmNsdWRlL2RybS9kcm1fZHBfaGVscGVyLmgKPj4gKysr
IGIvaW5jbHVkZS9kcm0vZHJtX2RwX2hlbHBlci5oCj4+IEBAIC0xNTMyLDYgKzE1MzIsMTMgQEAg
ZW51bSBkcm1fZHBfcXVpcmsgewo+PiAgCSAqIFRoZSBEU0MgY2FwcyBjYW4gYmUgcmVhZCBmcm9t
IHRoZSBwaHlzaWNhbCBhdXggaW5zdGVhZC4KPj4gIAkgKi8KPj4gIAlEUF9EUENEX1FVSVJLX0RT
Q19XSVRIT1VUX1ZJUlRVQUxfRFBDRCwKPj4gKwkvKioKPj4gKwkgKiBARFBfRFBDRF9RVUlSS19D
QU5fRE9fTUFYX0xJTktfUkFURV8zXzI0X0dCUFM6Cj4+ICsJICoKPj4gKwkgKiBUaGUgZGV2aWNl
IHN1cHBvcnRzIGEgbGluayByYXRlIG9mIDMuMjQgR2JwcyAobXVsdGlwbGllciAweGMpIGRlc3Bp
dGUKPj4gKwkgKiB0aGUgRFBfTUFYX0xJTktfUkFURSByZWdpc3RlciByZXBvcnRpbmcgYSBsb3dl
ciBtYXggbXVsdGlwbGllci4KPj4gKwkgKi8KPj4gKwlEUF9EUENEX1FVSVJLX0NBTl9ET19NQVhf
TElOS19SQVRFXzNfMjRfR0JQUywKPj4gIH07Cj4+ICAKPj4gIC8qKgoKLS0gCkphbmkgTmlrdWxh
LCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
