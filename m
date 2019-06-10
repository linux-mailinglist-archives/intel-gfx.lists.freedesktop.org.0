Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0D13B268
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 11:49:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAE3489100;
	Mon, 10 Jun 2019 09:49:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B942089100
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 09:48:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 02:48:58 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 10 Jun 2019 02:48:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Lee\, Shawn C" <shawn.c.lee@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <878su9zs7i.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <1560156055-10451-1-git-send-email-shawn.c.lee@intel.com>
 <878su9zs7i.fsf@intel.com>
Date: Mon, 10 Jun 2019 12:51:58 +0300
Message-ID: <875zpdzs1t.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Backlight control via VESA eDP
 aux interface
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
Cc: Cooper Chiou <cooper.chiou@intel.com>, Lee@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAxMCBKdW4gMjAxOSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4g
d3JvdGU6Cj4gT24gTW9uLCAxMCBKdW4gMjAxOSwgIkxlZSwgU2hhd24gQyIgPHNoYXduLmMubGVl
QGludGVsLmNvbT4gd3JvdGU6Cj4+IFRoZSBsYXRlc3QgVkJUIHN1cHBvcnQgYmFja2xpZ2h0IGNv
bnRyb2wgdmlhIGF1eC4gV2UgaGF2ZSB0bwo+PiBjaGVjayBWQlQncyBzZXR0aW5nIGJlZm9yZSBk
b2luZyBiYWNrbGlnaHQgaW5pdGlhbGl6YXRpb24uCj4+IFRoZW4gRHJpdmVyIHdpbGwgYXNzaWdu
IGNvcnJlY3QgY2FsbGJhY2sgZnVuY3Rpb24gZm9yIGVEUAo+PiBiYWNrbGlnaHQgY29udHJvbC4K
Pj4KPj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4+IENjOiBKb3Nl
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+PiBDYzogQ29vcGVyIENo
aW91IDxjb29wZXIuY2hpb3VAaW50ZWwuY29tPgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBMZWUsIFNo
YXduIEMgPHNoYXduLmMubGVlQGludGVsLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9iaW9zLmMgICAgIHwgMyArKy0KPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3ZidF9kZWZzLmggfCA2ICsrKystLQo+PiAgMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlv
bnMoKyksIDMgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9iaW9zLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9iaW9zLmMKPj4g
aW5kZXggMWMwMzdkZmE4M2Y1Li4yN2JkYTQ1NTIwZWMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2Jpb3MuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9iaW9zLmMKPj4gQEAgLTMxNyw3ICszMTcsOCBAQCBwYXJzZV9sZnBfYmFja2xpZ2h0KHN0
cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPj4gIAo+PiAgCWVudHJ5ID0gJmJhY2ts
aWdodF9kYXRhLT5kYXRhW3BhbmVsX3R5cGVdOwo+PiAgCj4+IC0JZGV2X3ByaXYtPnZidC5iYWNr
bGlnaHQucHJlc2VudCA9IGVudHJ5LT50eXBlID09IEJEQl9CQUNLTElHSFRfVFlQRV9QV007Cj4+
ICsJZGV2X3ByaXYtPnZidC5iYWNrbGlnaHQucHJlc2VudCA9IChlbnRyeS0+dHlwZSA9PSBCREJf
QkFDS0xJR0hUX1RZUEVfUFdNX1NPQyB8fAo+PiArCQkJCQkgICBlbnRyeS0+dHlwZSA9PSBCREJf
QkFDS0xJR0hUX1RZUEVfUFdNX1ZFU0FfRURQX0FVWCk7Cj4+ICAJaWYgKCFkZXZfcHJpdi0+dmJ0
LmJhY2tsaWdodC5wcmVzZW50KSB7Cj4+ICAJCURSTV9ERUJVR19LTVMoIlBXTSBiYWNrbGlnaHQg
bm90IHByZXNlbnQgaW4gVkJUICh0eXBlICV1KVxuIiwKPj4gIAkJCSAgICAgIGVudHJ5LT50eXBl
KTsKPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3ZidF9kZWZzLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF92YnRfZGVmcy5oCj4+IGluZGV4IDg5ZWYxNGNh
ZmI2Yi4uNzEwZjUzOWYxN2RlIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF92YnRfZGVmcy5oCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3ZidF9k
ZWZzLmgKPj4gQEAgLTc2MCw4ICs3NjAsMTAgQEAgc3RydWN0IGJkYl9sdmRzX2xmcF9kYXRhIHsK
Pj4gICAqIEJsb2NrIDQzIC0gTEZQIEJhY2tsaWdodCBDb250cm9sIERhdGEgQmxvY2sKPj4gICAq
Lwo+PiAgCj4+IC0jZGVmaW5lIEJEQl9CQUNLTElHSFRfVFlQRV9OT05FCTAKPj4gLSNkZWZpbmUg
QkRCX0JBQ0tMSUdIVF9UWVBFX1BXTQkyCj4+ICsjZGVmaW5lIEJEQl9CQUNLTElHSFRfVFlQRV9O
T05FCQkJCTAKPj4gKyNkZWZpbmUgQkRCX0JBQ0tMSUdIVF9UWVBFX1BXTV9TT0MJCQkyCj4+ICsj
ZGVmaW5lIEJEQl9CQUNLTElHSFRfVFlQRV9QV01fUEFORUxfRFJJVkVSX09MRUQJNAo+PiArI2Rl
ZmluZSBCREJfQkFDS0xJR0hUX1RZUEVfUFdNX1ZFU0FfRURQX0FVWAkJNQo+Cj4gZW50cnktPnR5
cGUgaXMgdHdvIGJpdHMsIDAtMSBpbiB0aGUgRmVhdHVyZXMgYnl0ZSBvZiB0aGUgQmFja2xpZ2h0
IERhdGEKPiBTdHJ1Y3R1cmUgaW4gdGhlIHNwZWMuIEJEQl9CQUNLTElHSFRfVFlQRV9QV01fVkVT
QV9FRFBfQVVYIHdpbGwgbmV2ZXIKPiBtYXRjaCwgc28gdGhpcyB3YXMgYWxzbyBuZXZlciB0ZXN0
ZWQuIFRoZXJlIGFyZSBubyB1cGRhdGVzIHRvIHRoZSBWQlQKPiBzcGVjIHRvIHJlZmxlY3QgdGhl
IGFib3ZlIGNoYW5nZSAoYW5kIGlmIEkgc2F3IG9uZSwgSSdkIHJlamVjdCBpdCBhcwo+IGJhY2t3
YXJkIGluY29tcGF0aWJsZSkuCj4KPiBQbGVhc2UgZG9uJ3QgdGVsbCBtZSB5b3UgaGF2ZSBzb21l
IHByb2R1Y3Qgc3BlY2lmaWMgc3BlYyBhbmQgVkJUIHRoZXJlLAo+IGJlY2F1c2UgaXQncyBub3Qg
Zmx5aW5nIHVwc3RyZWFtLgo+Cj4gVGhlIGJyaWdodG5lc3MgY29udHJvbCBtZXRob2Qgc3RydWN0
dXJlIGRvZXMgaGF2ZSBhIG1vcmUgZGV0YWlsZWQgd2F5IG9mCj4gZGVzY3JpYmluZyB0aGUgbWV0
aG9kLCBhbmQgaXQgcHJvYmFibHkgYWxyZWFkeSBjb3ZlcnMgd2hhdCB5b3UgbmVlZC4KCkluZGVl
ZCB5b3UgcHJvYmFibHkgd2FudCB0byBsb29rIGF0IGRldl9wcml2LT52YnQuYmFja2xpZ2h0LnR5
cGUgYW5kIGhvdwppdCdzIGFzc2lnbmVkLCBhcyB3ZWxsIGFzIHVwZGF0ZSBlbnVtIGludGVsX2Jh
Y2tsaWdodF90eXBlLgoKQlIsCkphbmkuCgoKPgo+IEJSLAo+IEphbmkuCj4KPgo+PiAgCj4+ICBz
dHJ1Y3QgbGZwX2JhY2tsaWdodF9kYXRhX2VudHJ5IHsKPj4gIAl1OCB0eXBlOjI7CgotLSAKSmFu
aSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
