Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16412218B5
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 14:59:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1878D89247;
	Fri, 17 May 2019 12:59:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9366489247
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 12:59:19 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 05:59:18 -0700
X-ExtLoop1: 1
Received: from nuc.iind.intel.com (HELO intel.com) ([10.99.66.149])
 by orsmga001.jf.intel.com with ESMTP; 17 May 2019 05:59:16 -0700
Date: Fri, 17 May 2019 18:31:42 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190517130142.GB4714@intel.com>
References: <20190517102225.3069-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517102225.3069-1-chris@chris-wilson.co.uk>
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

T24gMjAxOS0wNS0xNyBhdCAxMToyMjoyMyArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IENh
dWdodCBieSBzbWF0Y2g6Cj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvL2d2dC9ndHQuYzoxMTA2IHBw
Z3R0X3BvcHVsYXRlX3NwdF9ieV9ndWVzdF9lbnRyeSgpIGVycm9yOiB1bmluaXRpYWxpemVkIHN5
bWJvbCAncmV0Jy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KPiBDYzogWmhlbnl1IFdhbmcgPHpoZW55dXdAbGludXguaW50ZWwuY29t
Pgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvZ3R0LmMgfCA0ICsrKy0KPiAgMSBm
aWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvZ3R0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndnQvZ3R0LmMKPiBpbmRleCAwOGM3NGU2NTgzNmIuLjI0NGFkMTcyOTc2NCAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndnQvZ3R0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndnQvZ3R0LmMKPiBAQCAtMTA3Niw4ICsxMDc2LDEwIEBAIHN0YXRpYyBzdHJ1Y3Qg
aW50ZWxfdmdwdV9wcGd0dF9zcHQgKnBwZ3R0X3BvcHVsYXRlX3NwdF9ieV9ndWVzdF9lbnRyeSgK
PiAgCX0gZWxzZSB7Cj4gIAkJaW50IHR5cGUgPSBnZXRfbmV4dF9wdF90eXBlKHdlLT50eXBlKTsK
PiAgCj4gLQkJaWYgKCFndHRfdHlwZV9pc19wdCh0eXBlKSkKPiArCQlpZiAoIWd0dF90eXBlX2lz
X3B0KHR5cGUpKSB7Cj4gKwkJCXJldCA9IC1FSU5WQUw7Cj4gIAkJCWdvdG8gZXJyOwo+ICsJCX0K
CnJldCB3aWxsIGJlIHN0aWxsIHVuaW5pdGlhbGl6ZWQgaWYgd2UgcGFzcwoJaWYgKHNwdCkgewph
bmQgbm90IHBhc3MKCWlmIChpcHMgIT0gc3B0LT5ndWVzdF9wYWdlLnBkZV9pcHMpIHsKCi1SYW0K
PiAgCj4gIAkJc3B0ID0gcHBndHRfYWxsb2Nfc3B0X2dmbih2Z3B1LCB0eXBlLCBvcHMtPmdldF9w
Zm4od2UpLCBpcHMpOwo+ICAJCWlmIChJU19FUlIoc3B0KSkgewo+IC0tIAo+IDIuMjAuMQo+IAo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
