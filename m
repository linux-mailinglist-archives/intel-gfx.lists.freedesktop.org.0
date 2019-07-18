Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0571C6D497
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 21:19:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F60B6E45D;
	Thu, 18 Jul 2019 19:19:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2575F6E45D
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 19:19:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17408102-1500050 for multiple; Thu, 18 Jul 2019 20:19:10 +0100
MIME-Version: 1.0
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190718182843.GG5942@intel.com>
References: <20190718145407.21352-1-chris@chris-wilson.co.uk>
 <20190718145407.21352-2-chris@chris-wilson.co.uk>
 <20190718182843.GG5942@intel.com>
Message-ID: <156347754810.24728.7304494028374635459@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 18 Jul 2019 20:19:08 +0100
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915: Use maximum write flush for
 pwrite_gtt
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMTktMDctMTggMTk6Mjg6NDMpCj4gT24gVGh1LCBK
dWwgMTgsIDIwMTkgYXQgMDM6NTQ6MDVQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
QXMgcmVjZW50bHkgZGlzb3ZlcmVkIGJ5IGZvcmNpbmcgYmlnLWNvcmUgKCFsbGMpIG1hY2hpbmVz
IHRvIHVzZSB0aGUgR1RUCj4gPiBwYXRocywgd2UgbmVlZCBvdXIgZnVsbCBHVFQgd3JpdGUgZmx1
c2ggYmVmb3JlIG1hbmlwdWxhdGluZyB0aGUgR1RUIFBURQo+ID4gb3IgZWxzZSB0aGUgd3JpdGVz
IG1heSBiZSBkaXJlY3RlZCB0byB0aGUgd3JvbmcgcGFnZS4KPiA+IAo+ID4gU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiBDYzogSm9vbmFz
IExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29tPgo+ID4gQ2M6IE1hdHRo
ZXcgQXVsZCA8bWF0dGhldy53aWxsaWFtLmF1bGRAZ21haWwuY29tPgo+ID4gQ2M6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiBDYzogc3RhYmxlQHZn
ZXIua2VybmVsLm9yZwo+ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0u
YyB8IDUgKysrLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMKPiA+IGluZGV4IGZlZDBiYzQy
MWE1NS4uYzZiYTM1MGU2ZTRmIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9nZW0uYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYwo+ID4g
QEAgLTYxMCw3ICs2MTAsOCBAQCBpOTE1X2dlbV9ndHRfcHdyaXRlX2Zhc3Qoc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iaiwKPiA+ICAgICAgICAgICAgICAgdW5zaWduZWQgaW50IHBhZ2Vf
bGVuZ3RoID0gUEFHRV9TSVpFIC0gcGFnZV9vZmZzZXQ7Cj4gPiAgICAgICAgICAgICAgIHBhZ2Vf
bGVuZ3RoID0gcmVtYWluIDwgcGFnZV9sZW5ndGggPyByZW1haW4gOiBwYWdlX2xlbmd0aDsKPiA+
ICAgICAgICAgICAgICAgaWYgKG5vZGUuYWxsb2NhdGVkKSB7Cj4gPiAtICAgICAgICAgICAgICAg
ICAgICAgd21iKCk7IC8qIGZsdXNoIHRoZSB3cml0ZSBiZWZvcmUgd2UgbW9kaWZ5IHRoZSBHR1RU
ICovCj4gPiArICAgICAgICAgICAgICAgICAgICAgLyogZmx1c2ggdGhlIHdyaXRlIGJlZm9yZSB3
ZSBtb2RpZnkgdGhlIEdHVFQgKi8KPiA+ICsgICAgICAgICAgICAgICAgICAgICBpbnRlbF9ndF9m
bHVzaF9nZ3R0X3dyaXRlcyhnZ3R0LT52bS5ndCk7Cj4gCj4gTWF0Y2hlcyB0aGUgc3RvcnkgdG9s
ZCBieSBpbnRlbF9ndF9mbHVzaF9nZ3R0X3dyaXRlcygpLgo+IAo+IFJldmlld2VkLWJ5OiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgoKVGEsIHB1c2hlZCB0
byBkaW5xLiBIb3BlZnVsbHksIHRoaXMgbWF5IGV4cGxhaW4gc29tZSBteXN0ZXJ5IGZhaWxzIQoo
Tm90IHRoYXQgYW55IHNhbmUgdXNlcnNwYWNlIGRvZXMgZm9yKDs7KSB7IGdlbV93cml0ZSgpOyBn
ZW1fcmVhZCgpOyB9KQotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
