Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 18655EA3F7
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Oct 2019 20:19:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEDD56EB49;
	Wed, 30 Oct 2019 19:19:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC2896EB49
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Oct 2019 19:19:22 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Oct 2019 12:19:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,248,1569308400"; d="scan'208";a="401614434"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.135])
 by fmsmga006.fm.intel.com with ESMTP; 30 Oct 2019 12:19:23 -0700
Date: Wed, 30 Oct 2019 12:20:13 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Bob Paauwe <bob.j.paauwe@intel.com>
Message-ID: <20191030192013.GQ18842@mdroper-desk1.amr.corp.intel.com>
References: <20191028212459.1998-1-bob.j.paauwe@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191028212459.1998-1-bob.j.paauwe@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH] lib/color_encoding: Fix up support for XYUV
 format.
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBPY3QgMjgsIDIwMTkgYXQgMDI6MjQ6NTlQTSAtMDcwMCwgQm9iIFBhYXV3ZSB3cm90
ZToKPiBBZGQgWFlVVjg4ODggdG8gdGhlIGxpc3Qgb2YgRFJNIEZvcm1hdHMgdG8gdGVzdC4KPiAK
PiBBbHNvIGZpeCB0aGUgYnl0ZSBvcmRlciBmb3IgdGhlIGZvcm1hdC4KPiAKPiBTaWduZWQtb2Zm
LWJ5OiBCb2IgUGFhdXdlIDxib2Iuai5wYWF1d2VAaW50ZWwuY29tPgoKTG9va3MgbGlrZSBDSSBn
b3QgY29uZnVzZWQgYnkgdGhpcy4gIFlvdSdsbCB3YW50IHRvCgpDYzogaWd0LWRldkBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKCmFuZCBhbHNvIHNldCB5b3VyIHN1YmplY3RQcmVmaXggdG8gIlBBVENI
IGktZy10IiBzbyB0aGF0IENJIHJlY29nbml6ZXMKaXQgYXMgYW4gaWd0IHBhdGNoIGFuZCBub3Qg
YSBrZXJuZWwgcGF0Y2guCgoKTWF0dAoKPiAtLS0KPiAgbGliL2lndF9jb2xvcl9lbmNvZGluZy5j
IHwgMSArCj4gIGxpYi9pZ3RfZmIuYyAgICAgICAgICAgICB8IDYgKysrLS0tCj4gIDIgZmlsZXMg
Y2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQg
YS9saWIvaWd0X2NvbG9yX2VuY29kaW5nLmMgYi9saWIvaWd0X2NvbG9yX2VuY29kaW5nLmMKPiBp
bmRleCA3ZGU2ZDVhYi4uYTdiZDJiMjIgMTAwNjQ0Cj4gLS0tIGEvbGliL2lndF9jb2xvcl9lbmNv
ZGluZy5jCj4gKysrIGIvbGliL2lndF9jb2xvcl9lbmNvZGluZy5jCj4gQEAgLTE2MCw2ICsxNjAs
NyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGNvbG9yX2VuY29kaW5nX2Zvcm1hdCB7Cj4gIAl7IERS
TV9GT1JNQVRfWFZZVTIxMDEwMTAsIDEwMjMuZiwgNjQuZiwgOTQwLmYsIDY0LmYsIDUxMi5mLCA5
NjAuZiB9LAo+ICAJeyBEUk1fRk9STUFUX1hWWVUxMl8xNjE2MTYxNiwgNjU1MjAuZiwgNDA5Ni5m
LCA2MDE2MC5mLCA0MDk2LmYsIDMyNzY4LmYsIDYxNDQwLmYgfSwKPiAgCXsgRFJNX0ZPUk1BVF9Y
VllVMTYxNjE2MTYsIDY1NTM1LmYsIDQwOTYuZiwgNjAxNjAuZiwgNDA5Ni5mLCAzMjc2OC5mLCA2
MTQ0MC5mIH0sCj4gKwl7IERSTV9GT1JNQVRfWFlVVjg4ODgsIDI1NS5mLCAxNi5mLCAyMzUuZiwg
MTYuZiwgMTI4LmYsIDI0MC5mIH0sCj4gIH07Cj4gIAo+ICBzdGF0aWMgY29uc3Qgc3RydWN0IGNv
bG9yX2VuY29kaW5nX2Zvcm1hdCAqbG9va3VwX2ZvdXJjYyh1aW50MzJfdCBmb3VyY2MpCj4gZGlm
ZiAtLWdpdCBhL2xpYi9pZ3RfZmIuYyBiL2xpYi9pZ3RfZmIuYwo+IGluZGV4IDRhZGNhOTY3Li5m
ZTVmYTc0YiAxMDA2NDQKPiAtLS0gYS9saWIvaWd0X2ZiLmMKPiArKysgYi9saWIvaWd0X2ZiLmMK
PiBAQCAtMjQyMyw5ICsyNDIzLDkgQEAgc3RhdGljIHZvaWQgZ2V0X3l1dl9wYXJhbWV0ZXJzKHN0
cnVjdCBpZ3RfZmIgKmZiLCBzdHJ1Y3QgeXV2X3BhcmFtZXRlcnMgKnBhcmFtcykKPiAgCQlicmVh
azsKPiAgCj4gIAljYXNlIERSTV9GT1JNQVRfWFlVVjg4ODg6Cj4gLQkJcGFyYW1zLT55X29mZnNl
dCA9IGZiLT5vZmZzZXRzWzBdICsgMTsKPiAtCQlwYXJhbXMtPnVfb2Zmc2V0ID0gZmItPm9mZnNl
dHNbMF0gKyAyOwo+IC0JCXBhcmFtcy0+dl9vZmZzZXQgPSBmYi0+b2Zmc2V0c1swXSArIDM7Cj4g
KwkJcGFyYW1zLT55X29mZnNldCA9IGZiLT5vZmZzZXRzWzBdICsgMjsKPiArCQlwYXJhbXMtPnVf
b2Zmc2V0ID0gZmItPm9mZnNldHNbMF0gKyAxOwo+ICsJCXBhcmFtcy0+dl9vZmZzZXQgPSBmYi0+
b2Zmc2V0c1swXSArIDA7Cj4gIAkJYnJlYWs7Cj4gIAl9Cj4gIH0KPiAtLSAKPiAyLjIxLjAKPiAK
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVs
LWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKCi0t
IApNYXR0IFJvcGVyCkdyYXBoaWNzIFNvZnR3YXJlIEVuZ2luZWVyClZUVC1PU0dDIFBsYXRmb3Jt
IEVuYWJsZW1lbnQKSW50ZWwgQ29ycG9yYXRpb24KKDkxNikgMzU2LTI3OTUKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
