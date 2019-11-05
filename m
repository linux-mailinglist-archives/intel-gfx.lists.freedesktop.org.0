Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFFADEF530
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 06:54:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F52D6E8FC;
	Tue,  5 Nov 2019 05:54:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBE686E8FC
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2019 05:53:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Nov 2019 21:53:58 -0800
X-IronPort-AV: E=Sophos;i="5.68,270,1569308400"; d="scan'208";a="195705797"
Received: from gliebl-mobl.ger.corp.intel.com (HELO localhost) ([10.252.42.19])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Nov 2019 21:53:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
In-Reply-To: <20191104222714.GD32264@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191104141439.26312-1-jani.nikula@intel.com>
 <20191104141439.26312-4-jani.nikula@intel.com>
 <20191104222714.GD32264@intel.com>
Date: Tue, 05 Nov 2019 07:53:53 +0200
Message-ID: <87eeymyiku.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/dsc: rename functions for
 consistency
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

T24gTW9uLCAwNCBOb3YgMjAxOSwgTWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVs
LmNvbT4gd3JvdGU6Cj4gT24gTW9uLCBOb3YgMDQsIDIwMTkgYXQgMDQ6MTQ6MzlQTSArMDIwMCwg
SmFuaSBOaWt1bGEgd3JvdGU6Cj4+IFVzZSBpbnRlbF9kc2NfIHByZWZpeC4gTm8gZnVuY3Rpb25h
bCBjaGFuZ2VzLgo+PiAKPj4gQ2M6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRl
bC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5j
b20+Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMg
fCAxMiArKysrKystLS0tLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDYg
ZGVsZXRpb25zKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF92ZHNjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zk
c2MuYwo+PiBpbmRleCBhYzEwNzM2YTA3NmEuLmIyM2JhOGQxMDhkYiAxMDA2NDQKPj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMKPj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMKPj4gQEAgLTUwMSw4ICs1MDEsOCBA
QCBpbnRlbF9kc2NfcG93ZXJfZG9tYWluKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKQo+PiAgCQlyZXR1cm4gUE9XRVJfRE9NQUlOX1RSQU5TQ09ERVIoY3B1X3RyYW5z
Y29kZXIpOwo+PiAgfQo+PiAgCj4+IC1zdGF0aWMgdm9pZCBpbnRlbF9jb25maWd1cmVfcHBzX2Zv
cl9kc2NfZW5jb2RlcihzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPj4gLQkJCQkJCWNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+PiArc3RhdGljIHZvaWQg
aW50ZWxfZHNjX3Bwc19jb25maWd1cmUoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4+
ICsJCQkJICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+PiAg
ewo+PiAgCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRl
LT51YXBpLmNydGMpOwo+PiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRv
X2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOwo+PiBAQCAtOTAxLDggKzkwMSw4IEBAIHN0YXRpYyB2
b2lkIGludGVsX2NvbmZpZ3VyZV9wcHNfZm9yX2RzY19lbmNvZGVyKHN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyLAo+PiAgCX0KPj4gIH0KPj4gIAo+PiAtc3RhdGljIHZvaWQgaW50ZWxfZHBf
d3JpdGVfZHNjX3Bwc19zZHAoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4+IC0JCQkJ
ICAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQo+PiArc3Rh
dGljIHZvaWQgaW50ZWxfZHNjX2RwX3Bwc193cml0ZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5j
b2RlciwKPj4gKwkJCQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSkKPgo+IFRoaXMgZnVuY3Rpb24gd3JpdGVzIHBwcyBoZWFkZXIgYW5kIHBhY2tzIHBwcyBwYXls
b2FkLCBpZiB0aGF0IGFsc28gYXBwbGllcyB0byBkc2kgZHNjCj4gdGhlbiB3ZSBjYW4gZ2V0IHJp
ZCBvZiB0aGUgX2RwIGluIHRoaXMgZnVuY3Rpb24uCj4KPiBpZiBpdCBkb2VzbnQgYXBwbHksIHRo
ZSByZW5hbWUgbG9va3MgZ29vZCB0byBtZSBhbmQgaW4gdGhhdCBjYXNlOgoKSXQncyBzbGlnaHRs
eSBkaWZmZXJlbnQgZm9yIERTSS4gWW91J2xsIHNlZS4gOykKCj4KPiBSZXZpZXdlZC1ieTogTWFu
YXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KClRoYW5rcy4KCkJSLApKYW5p
LgoKPgo+IE1hbmFzaQo+Cj4+ICB7Cj4+ICAJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVu
Y190b19pbnRlbF9kcCgmZW5jb2Rlci0+YmFzZSk7Cj4+ICAJc3RydWN0IGludGVsX2RpZ2l0YWxf
cG9ydCAqaW50ZWxfZGlnX3BvcnQgPSBkcF90b19kaWdfcG9ydChpbnRlbF9kcCk7Cj4+IEBAIC05
MzcsOSArOTM3LDkgQEAgdm9pZCBpbnRlbF9kc2NfZW5hYmxlKHN0cnVjdCBpbnRlbF9lbmNvZGVy
ICplbmNvZGVyLAo+PiAgCWludGVsX2Rpc3BsYXlfcG93ZXJfZ2V0KGRldl9wcml2LAo+PiAgCQkJ
CWludGVsX2RzY19wb3dlcl9kb21haW4oY3J0Y19zdGF0ZSkpOwo+PiAgCj4+IC0JaW50ZWxfY29u
ZmlndXJlX3Bwc19mb3JfZHNjX2VuY29kZXIoZW5jb2RlciwgY3J0Y19zdGF0ZSk7Cj4+ICsJaW50
ZWxfZHNjX3Bwc19jb25maWd1cmUoZW5jb2RlciwgY3J0Y19zdGF0ZSk7Cj4+ICAKPj4gLQlpbnRl
bF9kcF93cml0ZV9kc2NfcHBzX3NkcChlbmNvZGVyLCBjcnRjX3N0YXRlKTsKPj4gKwlpbnRlbF9k
c2NfZHBfcHBzX3dyaXRlKGVuY29kZXIsIGNydGNfc3RhdGUpOwo+PiAgCj4+ICAJaWYgKGNydGNf
c3RhdGUtPmNwdV90cmFuc2NvZGVyID09IFRSQU5TQ09ERVJfRURQKSB7Cj4+ICAJCWRzc19jdGwx
X3JlZyA9IERTU19DVEwxOwo+PiAtLSAKPj4gMi4yMC4xCj4+IAo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+
IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gCkphbmkgTmlrdWxhLCBJbnRl
bCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
