Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6694D1170C0
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 16:43:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77F4B89FDE;
	Mon,  9 Dec 2019 15:43:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC05389FDE
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 15:43:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 07:43:30 -0800
X-IronPort-AV: E=Sophos;i="5.69,296,1571727600"; d="scan'208";a="206931478"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 07:43:27 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Kulkarni\, Vandita" <vandita.kulkarni@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <57510F3E2013164E925CD03ED7512A3B809D9AFE@BGSMSX108.gar.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1574775655.git.jani.nikula@intel.com>
 <1026c6bb4c002fc8caada18fbf4ee9b5948a1d18.1574775655.git.jani.nikula@intel.com>
 <57510F3E2013164E925CD03ED7512A3B809D9AFE@BGSMSX108.gar.corp.intel.com>
Date: Mon, 09 Dec 2019 17:43:23 +0200
Message-ID: <87muc14i90.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 06/13] drm/i915/dsc: add support for
 computing and writing PPS for DSI encoders
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

T24gVGh1LCAwNSBEZWMgMjAxOSwgIkt1bGthcm5pLCBWYW5kaXRhIiA8dmFuZGl0YS5rdWxrYXJu
aUBpbnRlbC5jb20+IHdyb3RlOgo+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+PiBGcm9t
OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+PiBTZW50OiBUdWVzZGF5LCBO
b3ZlbWJlciAyNiwgMjAxOSA3OjEzIFBNCj4+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCj4+IENjOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47IE5hdmFy
ZSwgTWFuYXNpIEQKPj4gPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+OyBLdWxrYXJuaSwgVmFu
ZGl0YQo+PiA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+OyBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+PiBTdWJqZWN0OiBbUEFUQ0ggdjMgMDYvMTNd
IGRybS9pOTE1L2RzYzogYWRkIHN1cHBvcnQgZm9yIGNvbXB1dGluZyBhbmQKPj4gd3JpdGluZyBQ
UFMgZm9yIERTSSBlbmNvZGVycwo+PiAKPj4gQWRkIERTSSBzcGVjaWZpYyBjb21wdXRhdGlvbiBh
bmQgdHJhbnNtaXNzaW9uIHRvIGRpc3BsYXkgb2YgUFBTLgo+PiAKPj4gV2l0aCBob3BlcyB0aGF0
IHRoaXMgYXBwcm9hY2ggd2lsbCB3b3JrIGZvciBib3RoIERQIGFuZCBEU0kgZW5jb2RlcnMuCj4+
IAo+PiBDYzogTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KPj4gQ2M6
IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29tPgo+PiBDYzogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPj4gU2lnbmVkLW9m
Zi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPj4gLS0tCj4+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYyB8IDI1ICsrKysrKysrKysrKysr
KysrKysrKystCj4+ICAxIGZpbGUgY2hhbmdlZCwgMjQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQo+PiAKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdmRzYy5jCj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMK
Pj4gaW5kZXggYzUzMDI0ZGZiMWVjLi43YmQ3MjcxMjlhOGYgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jCj4+IEBAIC0xMCw2ICsxMCw3IEBACj4+IAo+
PiAgI2luY2x1ZGUgImk5MTVfZHJ2LmgiCj4+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBl
cy5oIgo+PiArI2luY2x1ZGUgImludGVsX2RzaS5oIgo+PiAgI2luY2x1ZGUgImludGVsX3Zkc2Mu
aCIKPj4gCj4+ICBlbnVtIFJPV19JTkRFWF9CUFAgewo+PiBAQCAtODQ0LDYgKzg0NSwyNSBAQCBz
dGF0aWMgdm9pZCBpbnRlbF9kc2NfcHBzX2NvbmZpZ3VyZShzdHJ1Y3QKPj4gaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlciwKPj4gIAl9Cj4+ICB9Cj4+IAo+PiArc3RhdGljIHZvaWQgaW50ZWxfZHNjX2Rz
aV9wcHNfd3JpdGUoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4+ICsJCQkJICAgIGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKSB7Cj4+ICsJY29uc3Qgc3Ry
dWN0IGRybV9kc2NfY29uZmlnICp2ZHNjX2NmZyA9ICZjcnRjX3N0YXRlLT5kc2MuY29uZmlnOwo+
PiArCXN0cnVjdCBpbnRlbF9kc2kgKmludGVsX2RzaSA9IGVuY190b19pbnRlbF9kc2koJmVuY29k
ZXItPmJhc2UpOwo+PiArCXN0cnVjdCBtaXBpX2RzaV9kZXZpY2UgKmRzaTsKPj4gKwlzdHJ1Y3Qg
ZHJtX2RzY19waWN0dXJlX3BhcmFtZXRlcl9zZXQgcHBzOwo+PiArCWVudW0gcG9ydCBwb3J0Owo+
PiArCj4+ICsJZHJtX2RzY19wcHNfcGF5bG9hZF9wYWNrKCZwcHMsIHZkc2NfY2ZnKTsKPj4gKwo+
PiArCWZvcl9lYWNoX2RzaV9wb3J0KHBvcnQsIGludGVsX2RzaS0+cG9ydHMpIHsKPj4gKwkJZHNp
ID0gaW50ZWxfZHNpLT5kc2lfaG9zdHNbcG9ydF0tPmRldmljZTsKPj4gKwo+PiArCQltaXBpX2Rz
aV9waWN0dXJlX3BhcmFtZXRlcl9zZXQoZHNpLCAmcHBzKTsKPj4gKwkJbWlwaV9kc2lfY29tcHJl
c3Npb25fbW9kZShkc2ksIHRydWUpOwo+PiArCX0KPj4gK30KPj4gKwo+PiAgc3RhdGljIHZvaWQg
aW50ZWxfZHNjX2RwX3Bwc193cml0ZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPj4g
IAkJCQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgIHsKPj4g
QEAgLTg4Miw3ICs5MDIsMTAgQEAgdm9pZCBpbnRlbF9kc2NfZW5hYmxlKHN0cnVjdCBpbnRlbF9l
bmNvZGVyCj4+ICplbmNvZGVyLAo+PiAKPiBTbGlnaHRseSBvdXQgb2Ygc2NvcGUgb2YgdGhpcyBw
YXRjaCwgYnV0IEkgc2VlIHRoYXQgd2hpbGUgY29uZmlndXJpbmcgUFBTOSwgd2UgYXJlIHVzaW5n
IGRpcmVjdCBtYWNyb3MgYW5kIG5vdCB1c2luZyBhbnl0aGluZyBmcm9tCj4gdmRzY19jZmctPnJj
X21vZGVsX3NpemUgYW5kIHdlIGhhdmUgbm90IGluaXRpYWxpemVkIHZkc2NfY2ZnLT4gcmNfZWRn
ZV9mYWN0b3IKCkFzIG1lbnRpb25lZCBvbiBJUkMsIHdlJ2xsIG5lZWQgdG8gZml4IHRoaXMgYWxz
byBmb3IgRFAgSSB0aGluaywgYW5kCnRoYXQncyBpbmRlZWQgc2xpZ2h0bHkgb3V0IG9mIHNjb3Bl
IGhlcmUuCgpCUiwKSmFuaS4KCj4KPj4gIAlpbnRlbF9kc2NfcHBzX2NvbmZpZ3VyZShlbmNvZGVy
LCBjcnRjX3N0YXRlKTsKPj4gCj4gT3RoZXIgdGhhbiB0aGF0LCB0aGlzIHBhdGNoIExHVE0uCj4g
UmV2aWV3ZWQtYnk6IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50ZWwuY29t
Pgo+Cj4gVGhhbmtzLAo+IFZhbmRpdGEKPj4gLQlpbnRlbF9kc2NfZHBfcHBzX3dyaXRlKGVuY29k
ZXIsIGNydGNfc3RhdGUpOwo+PiArCWlmIChlbmNvZGVyLT50eXBlID09IElOVEVMX09VVFBVVF9E
U0kpCj4+ICsJCWludGVsX2RzY19kc2lfcHBzX3dyaXRlKGVuY29kZXIsIGNydGNfc3RhdGUpOwo+
PiArCWVsc2UKPj4gKwkJaW50ZWxfZHNjX2RwX3Bwc193cml0ZShlbmNvZGVyLCBjcnRjX3N0YXRl
KTsKPj4gCj4+ICAJaWYgKGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyID09IFRSQU5TQ09ERVJf
RURQKSB7Cj4+ICAJCWRzc19jdGwxX3JlZyA9IERTU19DVEwxOwo+PiAtLQo+PiAyLjIwLjEKPgoK
LS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
