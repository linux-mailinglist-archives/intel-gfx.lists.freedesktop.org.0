Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A17944B31F
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 09:32:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78DB86E30E;
	Wed, 19 Jun 2019 07:32:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35B676E30E
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 07:32:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 00:32:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,392,1557212400"; d="scan'208";a="181573637"
Received: from mcostacx-wtg.ger.corp.intel.com (HELO localhost)
 ([10.249.47.136])
 by fmsmga001.fm.intel.com with ESMTP; 19 Jun 2019 00:32:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Lee\, Shawn C" <shawn.c.lee@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <1560913807-10464-1-git-send-email-shawn.c.lee@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <1560913807-10464-1-git-send-email-shawn.c.lee@intel.com>
Date: Wed, 19 Jun 2019 10:34:02 +0300
Message-ID: <87lfxym3kl.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Check backlight type while doing
 eDP backlight initializaiton
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

T24gVHVlLCAxOCBKdW4gMjAxOSwgIkxlZSwgU2hhd24gQyIgPHNoYXduLmMubGVlQGludGVsLmNv
bT4gd3JvdGU6Cj4gSWYgTEZQIGJhY2tsaWdodCB0eXBlIHNldHRpbmcgZnJvbSBWQlQgd2FzICJW
RVNBIGVEUCBBVVggSW50ZXJmYWNlIi4KPiBEcml2ZXIgc2hvdWxkIGNoZWNrIHBhbmVsIGNhcGFi
aWxpdHkgYW5kIHRyeSB0byBpbml0aWFsaXplIGF1eCBiYWNrbGlnaHQuCj4gTm8gbWF0dGVyIGk5
MTVfbW9kcGFyYW1zLmVuYWJsZV9kcGNkX2JhY2tsaWdodCB3YXMgZW5hYmxlZCBvciBub3QuCgpU
aGUgdXN1YWwgdGhpbmcgdG8gZG8gaXMgdG8gc2V0IGk5MTUuZW5hYmxlX2RwY2RfYmFja2xpZ2h0
IGluaXRpYWwgdmFsdWUKdG8gLTEgKGkuZS4gbWFrZSBpdCBhbiBpbnQpLCBhbmQgd2l0aCB0aGF0
IGRlZmF1bHQgdmFsdWUgcmVzcGVjdApWQlQuIE90aGVyd2lzZSwgcmVzcGVjdCB0aGUgdmFsdWUg
b2YgZW5hYmxlX2RwY2RfYmFja2xpZ2h0LgoKPgo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFA
aW50ZWwuY29tPgo+IENjOiBKb3NlIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgo+IENjOiBDb29wZXIgQ2hpb3UgPGNvb3Blci5jaGlvdUBpbnRlbC5jb20+Cj4KPiBTaWdu
ZWQtb2ZmLWJ5OiBMZWUsIFNoYXduIEMgPHNoYXduLmMubGVlQGludGVsLmNvbT4KPiAtLS0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmggICAgICAgICAgICAgfCAg
MSArCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdo
dC5jIHwgMTEgKysrKysrKysrKy0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9iaW9zLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jp
b3MuaAo+IGluZGV4IDRlNDJjZmFmNjFhNy4uMGI3YmU2Mzg5YTA3IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5oCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmgKPiBAQCAtNDIsNiArNDIsNyBAQCBlbnVt
IGludGVsX2JhY2tsaWdodF90eXBlIHsKPiAgCUlOVEVMX0JBQ0tMSUdIVF9ESVNQTEFZX0RESSwK
PiAgCUlOVEVMX0JBQ0tMSUdIVF9EU0lfRENTLAo+ICAJSU5URUxfQkFDS0xJR0hUX1BBTkVMX0RS
SVZFUl9JTlRFUkZBQ0UsCj4gKwlJTlRFTF9CQUNLTElHSFRfVkVTQV9FRFBfQVVYX0lOVEVSRkFD
RSwKPiAgfTsKPiAgCj4gIHN0cnVjdCBlZHBfcG93ZXJfc2VxIHsKPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYwo+IGluZGV4
IDdkZWQ5NWEzMzRkYi4uMGNjYTViNzMyY2NmIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5jCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMKPiBAQCAtMjYxLDEx
ICsyNjEsMjAgQEAgaW50ZWxfZHBfYXV4X2Rpc3BsYXlfY29udHJvbF9jYXBhYmxlKHN0cnVjdCBp
bnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcikKPiAgCXJldHVybiBmYWxzZTsKPiAgfQo+ICAKPiAr
c3RhdGljIGJvb2wKPiAraW50ZWxfZHBfYmlvc191c2VfYXV4X2JhY2tsaWdodChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gK3sKPiArCWlmIChkZXZfcHJpdi0+dmJ0LmJhY2ts
aWdodC50eXBlID09IElOVEVMX0JBQ0tMSUdIVF9WRVNBX0VEUF9BVVhfSU5URVJGQUNFKQo+ICsJ
CXJldHVybiB0cnVlOwo+ICsJcmV0dXJuIGZhbHNlOwo+ICt9CgpJIHRoaW5rIEknZCBqdXN0IGFj
Y2VzcyBkZXZfcHJpdi0+dmJ0LmJhY2tsaWdodC50eXBlIGRpcmVjdGx5IGZyb20KaW50ZWxfZHBf
YXV4X2luaXRfYmFja2xpZ2h0X2Z1bmNzLgoKCkJSLApKYW5pLgoKCj4gKwo+ICBpbnQgaW50ZWxf
ZHBfYXV4X2luaXRfYmFja2xpZ2h0X2Z1bmNzKHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmludGVs
X2Nvbm5lY3RvcikKPiAgewo+ICAJc3RydWN0IGludGVsX3BhbmVsICpwYW5lbCA9ICZpbnRlbF9j
b25uZWN0b3ItPnBhbmVsOwo+ICAKPiAtCWlmICghaTkxNV9tb2RwYXJhbXMuZW5hYmxlX2RwY2Rf
YmFja2xpZ2h0KQo+ICsJaWYgKCFpOTE1X21vZHBhcmFtcy5lbmFibGVfZHBjZF9iYWNrbGlnaHQg
JiYKPiArCSAgICAhaW50ZWxfZHBfYmlvc191c2VfYXV4X2JhY2tsaWdodCh0b19pOTE1KGludGVs
X2Nvbm5lY3Rvci0+YmFzZS5kZXYpKSkKPiAgCQlyZXR1cm4gLUVOT0RFVjsKPiAgCj4gIAlpZiAo
IWludGVsX2RwX2F1eF9kaXNwbGF5X2NvbnRyb2xfY2FwYWJsZShpbnRlbF9jb25uZWN0b3IpKQoK
LS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
