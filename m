Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEED64364E
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 15:14:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6006289951;
	Thu, 13 Jun 2019 13:14:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C87F589951
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 13:14:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 06:14:00 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 13 Jun 2019 06:13:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Lee\,
 Shawn C" <shawn.c.lee@intel.com>
In-Reply-To: <20190613091943.GU5942@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <1560404842-13583-1-git-send-email-shawn.c.lee@intel.com>
 <20190613091943.GU5942@intel.com>
Date: Thu, 13 Jun 2019 16:16:57 +0300
Message-ID: <87muilwrp2.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Refine eDP aux backlight enable
 sequence.
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
Cc: Cooper Chiou <cooper.chiou@intel.com>, intel-gfx@lists.freedesktop.org,
 Lee@freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAxMyBKdW4gMjAxOSwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4gd3JvdGU6Cj4gT24gV2VkLCBKdW4gMTIsIDIwMTkgYXQgMTA6NDc6MjJQTSAt
MDcwMCwgTGVlLCBTaGF3biBDIHdyb3RlOgo+PiBNb2RpZnkgYXV4IGJhY2tsaWdodCBlbmFibGUg
c2VxdWVuY2UganVzdCBsaWtlIHdoYXQgd2UKPj4gZGlkIGZvciBnZW5lcm5hbCBlRFAgcGFuZWwu
Cj4+IDEuIFNldHVwIFBXTSBmcmVxIGFuZCBicmlnaHRuZXNzIGxldmVsIGJlZm9yZSBlbmFibGUg
ZGlzcGxheSBiYWNrbGlnaHQuCj4+IDIuIEFkZCBUOCAodmFsaWQgZGF0YSB0byBiYWNrbGlnaHQg
ZW5hYmxlKSBkZWxheS4KPgo+IElmIHdlIHJlc3BlY3QgdGhlIG9uX2RlbGF5IHNob3VsZG4ndCB3
ZSB0aGVuIHJlc3BlY3QgdGhlIG9mZl9kZWxheSB0b28/Cj4KPiBJbiB3aGljaCBjYXNlIEkgc3Vn
Z2VzdCB0d28gcGF0Y2hlczoKPiAxLiBzd2FhcCB0aGUgZW5hYmxlIHZzLiBzZXRfYnJpZ2h0bmVz
cyBvcmRlcgo+IDIuIGFkZCB0aGUgb24vb2ZmIGRlbGF5cwoKVGhlIGF1eCBiYWNrbGlnaHQgZnVu
Y3Rpb25zIGFyZSBjYWxsZWQgdmlhIHRoZSBzYW1lIGhvb2tzIGFzIGV2ZXJ5dGhpbmcKaW4gaW50
ZWxfcGFuZWwuYywgd2hpY2ggZG8gbm90IGhhdmUgZGVsYXlzICh0aGV5J3JlIGFsbCBvbiB0aGUg
Y2FsbGluZwpzaWRlIGluIGludGVsX2RwLmMpIHNvIEknbSBjb25mdXNlZCB3aHkgdGhlc2Ugd291
bGQgcmVxdWlyZSB0aGUgZGVsYXlzLgoKQlIsCkphbmkuCgoKCj4KPj4gCj4+IENjOiBKYW5pIE5p
a3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+PiBDYzogSm9zZSBSb2JlcnRvIGRlIFNvdXph
IDxqb3NlLnNvdXphQGludGVsLmNvbT4KPj4gQ2M6IENvb3BlciBDaGlvdSA8Y29vcGVyLmNoaW91
QGludGVsLmNvbT4KPj4gCj4+IFNpZ25lZC1vZmYtYnk6IExlZSwgU2hhd24gQyA8c2hhd24uYy5s
ZWVAaW50ZWwuY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwX2F1
eF9iYWNrbGlnaHQuYyB8IDYgKysrKystCj4+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25z
KCspLCAxIGRlbGV0aW9uKC0pCj4+IAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
ZHBfYXV4X2JhY2tsaWdodC5jCj4+IGluZGV4IDdkZWQ5NWEzMzRkYi4uYzExMmUwYjkzMGRlIDEw
MDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0
LmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5j
Cj4+IEBAIC0yMTYsOCArMjE2LDEyIEBAIHN0YXRpYyB2b2lkIGludGVsX2RwX2F1eF9lbmFibGVf
YmFja2xpZ2h0KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0Cj4+ICAJCX0K
Pj4gIAl9Cj4+ICAKPj4gLQlzZXRfYXV4X2JhY2tsaWdodF9lbmFibGUoaW50ZWxfZHAsIHRydWUp
Owo+PiAgCWludGVsX2RwX2F1eF9zZXRfYmFja2xpZ2h0KGNvbm5fc3RhdGUsIGNvbm5lY3Rvci0+
cGFuZWwuYmFja2xpZ2h0LmxldmVsKTsKPj4gKwo+PiArCXdhaXRfcmVtYWluaW5nX21zX2Zyb21f
amlmZmllcyhpbnRlbF9kcC0+bGFzdF9wb3dlcl9vbiwKPj4gKwkJCQkgICAgICAgaW50ZWxfZHAt
PmJhY2tsaWdodF9vbl9kZWxheSk7Cj4+ICsKPj4gKwlzZXRfYXV4X2JhY2tsaWdodF9lbmFibGUo
aW50ZWxfZHAsIHRydWUpOwo+PiAgfQo+PiAgCj4+ICBzdGF0aWMgdm9pZCBpbnRlbF9kcF9hdXhf
ZGlzYWJsZV9iYWNrbGlnaHQoY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKm9sZF9j
b25uX3N0YXRlKQo+PiAtLSAKPj4gMi43LjQKPj4gCj4+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPj4gSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBP
cGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
