Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9A8456F1
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 10:06:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4783888EBA;
	Fri, 14 Jun 2019 08:06:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5807888EBA
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 08:06:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 01:06:10 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 14 Jun 2019 01:06:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Lee\, Shawn C" <shawn.c.lee@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <1560492565-30405-2-git-send-email-shawn.c.lee@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <1560492565-30405-1-git-send-email-shawn.c.lee@intel.com>
 <1560492565-30405-2-git-send-email-shawn.c.lee@intel.com>
Date: Fri, 14 Jun 2019 11:09:06 +0300
Message-ID: <87blz0wpul.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Add backlight enable on/off
 delay for DP aux backlight control
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

T24gVGh1LCAxMyBKdW4gMjAxOSwgIkxlZSwgU2hhd24gQyIgPHNoYXduLmMubGVlQGludGVsLmNv
bT4gd3JvdGU6Cj4gRm9sbG93IGdlbmVybGEgZURQIGJhY2tsaWdodCBlbmFibGUgY29udHJvbCBz
ZXF1ZW5jZS4gQWRkIFQ4ICh2YWxpZCB2aWRlbwo+IGRhdGEgdG8gYmFja2xpZ2h0IGVuYWJsZSkg
ZGVsYXkgYmVmb3JlIHR1cm4gYmFja2xpZ2h0X2VuYWJsZSBvbi4KPiBBbmQgVDkgKGJhY2tsaWdo
dCBkaXNhYmxlIHRvIGVuZCBvZiB2YWxpZGEgdmlkZW8gZGF0YSkgZGVsYXkgYWZ0ZXIKPiBiYWNr
bGlnaHRfZW5hYmxlIG9mZi4KClRoZXJlIGFyZSB0d28gdGhpbmdzIHRoYXQgYXJlIHdyb25nIGhl
cmU6CgpGaXJzdCwgeW91J3JlIGFkZGluZyAqdHdvKiB3YWl0cyBvbiB0aGUgRFAgQVVYIGJhY2ts
aWdodCBlbmFibGUgYW5kCmRpc2FibGUgcGF0aHMuIElJVUMgdGhlcmUgaXMgbm8gcmVhc29uIHRv
IHdhaXQgYmV0d2VlbiBzZXR0aW5nIHRoZSBsZXZlbAphbmQgZW5hYmxpbmcgaGVyZS4gVGhlIHdh
aXRzIGhhdmUgYWxyZWFkeSBiZWVuIGRvbmUgb24gaW50ZWxfZHAuYyBsZXZlbC4KClNlY29uZCwg
dGhlIGxhc3RfcG93ZXJfb24sIGJhY2tsaWdodF9vbl9kZWxheSwgbGFzdF9iYWNrbGlnaHRfb2Zm
LCBhbmQKYmFja2xpZ2h0X29mZl9kZWxheSBtZW1iZXJzIG9mIGludGVsX2RwIHNob3VsZCBhbGwg
YmUgcHJpdmF0ZSB0bwppbnRlbF9kcC5jLiBJbmRlZWQgdGhlc2Ugd2FpdHMgZXZlbiBoYXZlIHdy
YXBwZXJzICp3aXRoaW4qIGludGVsX2RwLmMgc28KdGhhdCBvbmx5IHZlcnkgc3BlY2lmaWMgZnVu
Y3Rpb25zIGluIGludGVsX2RwLmMgZXZlciBsb29rIGF0IHRoZXNlCm1lbWJlcnMuIFRoaXMgaXMg
YSBodWdlIHJlZCBmbGFnLgoKV2hhdCdzIHRoZSBwcm9ibGVtIHlvdSdyZSB0cnlpbmcgdG8gc29s
dmU/IERvZXMgdGhpcyBmaXggc29tZXRoaW5nCiphY3R1YWwqIHRoYXQgeW91J3JlIHNlZWluZz8K
CkJSLApKYW5pLgoKCj4KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPiBD
YzogSm9zZSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiBDYzogQ29v
cGVyIENoaW91IDxjb29wZXIuY2hpb3VAaW50ZWwuY29tPgo+Cj4gU2lnbmVkLW9mZi1ieTogTGVl
LCBTaGF3biBDIDxzaGF3bi5jLmxlZUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYyB8IDEzICsrKysrKysrKysrKysKPiAgMSBm
aWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMKPiBpbmRleCA5ODIxMGFlMTcyODUuLmIwMDhlODg3
ZjRlOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcF9hdXhfYmFj
a2xpZ2h0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcF9hdXhfYmFja2xp
Z2h0LmMKPiBAQCAtMjE3LDEyICsyMTcsMjUgQEAgc3RhdGljIHZvaWQgaW50ZWxfZHBfYXV4X2Vu
YWJsZV9iYWNrbGlnaHQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3QKPiAg
CX0KPiAgCj4gIAlpbnRlbF9kcF9hdXhfc2V0X2JhY2tsaWdodChjb25uX3N0YXRlLCBjb25uZWN0
b3ItPnBhbmVsLmJhY2tsaWdodC5sZXZlbCk7Cj4gKwo+ICsJd2FpdF9yZW1haW5pbmdfbXNfZnJv
bV9qaWZmaWVzKGludGVsX2RwLT5sYXN0X3Bvd2VyX29uLAo+ICsJCQkJICAgICAgIGludGVsX2Rw
LT5iYWNrbGlnaHRfb25fZGVsYXkpOwo+ICsKPiAgCXNldF9hdXhfYmFja2xpZ2h0X2VuYWJsZShp
bnRlbF9kcCwgdHJ1ZSk7Cj4gIH0KPiAgCj4gIHN0YXRpYyB2b2lkIGludGVsX2RwX2F1eF9kaXNh
YmxlX2JhY2tsaWdodChjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqb2xkX2Nvbm5f
c3RhdGUpCj4gIHsKPiArCXN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciA9IHRvX2lu
dGVsX2Nvbm5lY3RvcihvbGRfY29ubl9zdGF0ZS0+Y29ubmVjdG9yKTsKPiArCXN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoJmNvbm5lY3Rvci0+ZW5jb2Rlci0+YmFz
ZSk7Cj4gKwo+ICsJaW50ZWxfZHAtPmxhc3RfYmFja2xpZ2h0X29mZiA9IGppZmZpZXM7Cj4gKwo+
ICAJc2V0X2F1eF9iYWNrbGlnaHRfZW5hYmxlKGVuY190b19pbnRlbF9kcChvbGRfY29ubl9zdGF0
ZS0+YmVzdF9lbmNvZGVyKSwgZmFsc2UpOwo+ICsKPiArCXdhaXRfcmVtYWluaW5nX21zX2Zyb21f
amlmZmllcyhpbnRlbF9kcC0+bGFzdF9iYWNrbGlnaHRfb2ZmLAo+ICsJCQkJICAgICAgIGludGVs
X2RwLT5iYWNrbGlnaHRfb2ZmX2RlbGF5KTsKPiArCj4gIAlpbnRlbF9kcF9hdXhfc2V0X2JhY2ts
aWdodChvbGRfY29ubl9zdGF0ZSwgMCk7Cj4gIH0KCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3Bl
biBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
