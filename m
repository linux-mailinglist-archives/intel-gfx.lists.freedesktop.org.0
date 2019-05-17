Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2FCE218DD
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 15:07:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B62789259;
	Fri, 17 May 2019 13:07:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7C6689259
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 13:07:40 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 06:07:40 -0700
X-ExtLoop1: 1
Received: from nuc.iind.intel.com (HELO intel.com) ([10.99.66.149])
 by orsmga001.jf.intel.com with ESMTP; 17 May 2019 06:07:38 -0700
Date: Fri, 17 May 2019 18:40:04 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190517131004.GC4714@intel.com>
References: <20190517102225.3069-1-chris@chris-wilson.co.uk>
 <20190517130142.GB4714@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517130142.GB4714@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gvt: Set return value for
 ppgtt_populate error path
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

T24gMjAxOS0wNS0xNyBhdCAxODozMTo0MiArMDUzMCwgUmFtYWxpbmdhbSBDIHdyb3RlOgo+IE9u
IDIwMTktMDUtMTcgYXQgMTE6MjI6MjMgKzAxMDAsIENocmlzIFdpbHNvbiB3cm90ZToKPiA+IENh
dWdodCBieSBzbWF0Y2g6Cj4gPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS8vZ3Z0L2d0dC5jOjExMDYg
cHBndHRfcG9wdWxhdGVfc3B0X2J5X2d1ZXN0X2VudHJ5KCkgZXJyb3I6IHVuaW5pdGlhbGl6ZWQg
c3ltYm9sICdyZXQnLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KPiA+IENjOiBaaGVueXUgV2FuZyA8emhlbnl1d0BsaW51eC5p
bnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvZ3R0LmMgfCA0
ICsrKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
Cj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvZ3R0LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvZ3R0LmMKPiA+IGluZGV4IDA4Yzc0ZTY1ODM2Yi4uMjQ0
YWQxNzI5NzY0IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2d0dC5j
Cj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvZ3R0LmMKPiA+IEBAIC0xMDc2LDgg
KzEwNzYsMTAgQEAgc3RhdGljIHN0cnVjdCBpbnRlbF92Z3B1X3BwZ3R0X3NwdCAqcHBndHRfcG9w
dWxhdGVfc3B0X2J5X2d1ZXN0X2VudHJ5KAo+ID4gIAl9IGVsc2Ugewo+ID4gIAkJaW50IHR5cGUg
PSBnZXRfbmV4dF9wdF90eXBlKHdlLT50eXBlKTsKPiA+ICAKPiA+IC0JCWlmICghZ3R0X3R5cGVf
aXNfcHQodHlwZSkpCj4gPiArCQlpZiAoIWd0dF90eXBlX2lzX3B0KHR5cGUpKSB7Cj4gPiArCQkJ
cmV0ID0gLUVJTlZBTDsKPiA+ICAJCQlnb3RvIGVycjsKPiA+ICsJCX0KPiAKPiByZXQgd2lsbCBi
ZSBzdGlsbCB1bmluaXRpYWxpemVkIGlmIHdlIHBhc3MKPiAJaWYgKHNwdCkgewo+IGFuZCBub3Qg
cGFzcwo+IAlpZiAoaXBzICE9IHNwdC0+Z3Vlc3RfcGFnZS5wZGVfaXBzKSB7CnJlbG9va2luZyBh
dCBpdCBpZiB3ZSBkb250IHBhc3MgdGhlICJpZiAoaXBzICE9CnNwdC0+Z3Vlc3RfcGFnZS5wZGVf
aXBzKSIgdGhlbiB0aGVyZSBpcyBubyBlcnIgZXhpdC4KClNvIAoKUmV2aWV3ZWQtYnk6IFJhbWFs
aW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KCi1SYW0KPiAKPiAtUmFtCj4gPiAgCj4g
PiAgCQlzcHQgPSBwcGd0dF9hbGxvY19zcHRfZ2ZuKHZncHUsIHR5cGUsIG9wcy0+Z2V0X3Bmbih3
ZSksIGlwcyk7Cj4gPiAgCQlpZiAoSVNfRVJSKHNwdCkpIHsKPiA+IC0tIAo+ID4gMi4yMC4xCj4g
PiAKPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4g
PiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCj4gPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Cj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
