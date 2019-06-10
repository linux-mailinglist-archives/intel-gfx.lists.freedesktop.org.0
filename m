Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC7E3B266
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jun 2019 11:45:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B973888BF3;
	Mon, 10 Jun 2019 09:45:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84C0988BF3
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jun 2019 09:45:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jun 2019 02:45:34 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 10 Jun 2019 02:45:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Lee\, Shawn C" <shawn.c.lee@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <1560156055-10451-1-git-send-email-shawn.c.lee@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <1560156055-10451-1-git-send-email-shawn.c.lee@intel.com>
Date: Mon, 10 Jun 2019 12:48:33 +0300
Message-ID: <878su9zs7i.fsf@intel.com>
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

T24gTW9uLCAxMCBKdW4gMjAxOSwgIkxlZSwgU2hhd24gQyIgPHNoYXduLmMubGVlQGludGVsLmNv
bT4gd3JvdGU6Cj4gVGhlIGxhdGVzdCBWQlQgc3VwcG9ydCBiYWNrbGlnaHQgY29udHJvbCB2aWEg
YXV4LiBXZSBoYXZlIHRvCj4gY2hlY2sgVkJUJ3Mgc2V0dGluZyBiZWZvcmUgZG9pbmcgYmFja2xp
Z2h0IGluaXRpYWxpemF0aW9uLgo+IFRoZW4gRHJpdmVyIHdpbGwgYXNzaWduIGNvcnJlY3QgY2Fs
bGJhY2sgZnVuY3Rpb24gZm9yIGVEUAo+IGJhY2tsaWdodCBjb250cm9sLgo+Cj4gQ2M6IEphbmkg
TmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gQ2M6IEpvc2UgUm9iZXJ0byBkZSBTb3V6
YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gQ2M6IENvb3BlciBDaGlvdSA8Y29vcGVyLmNoaW91
QGludGVsLmNvbT4KPgo+IFNpZ25lZC1vZmYtYnk6IExlZSwgU2hhd24gQyA8c2hhd24uYy5sZWVA
aW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9iaW9zLmMgICAg
IHwgMyArKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdmJ0X2RlZnMuaCB8IDYgKysr
Ky0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Jpb3MuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2Jpb3MuYwo+IGluZGV4IDFjMDM3ZGZhODNmNS4uMjdiZGE0
NTUyMGVjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Jpb3MuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Jpb3MuYwo+IEBAIC0zMTcsNyArMzE3
LDggQEAgcGFyc2VfbGZwX2JhY2tsaWdodChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsCj4gIAo+ICAJZW50cnkgPSAmYmFja2xpZ2h0X2RhdGEtPmRhdGFbcGFuZWxfdHlwZV07Cj4g
IAo+IC0JZGV2X3ByaXYtPnZidC5iYWNrbGlnaHQucHJlc2VudCA9IGVudHJ5LT50eXBlID09IEJE
Ql9CQUNLTElHSFRfVFlQRV9QV007Cj4gKwlkZXZfcHJpdi0+dmJ0LmJhY2tsaWdodC5wcmVzZW50
ID0gKGVudHJ5LT50eXBlID09IEJEQl9CQUNLTElHSFRfVFlQRV9QV01fU09DIHx8Cj4gKwkJCQkJ
ICAgZW50cnktPnR5cGUgPT0gQkRCX0JBQ0tMSUdIVF9UWVBFX1BXTV9WRVNBX0VEUF9BVVgpOwo+
ICAJaWYgKCFkZXZfcHJpdi0+dmJ0LmJhY2tsaWdodC5wcmVzZW50KSB7Cj4gIAkJRFJNX0RFQlVH
X0tNUygiUFdNIGJhY2tsaWdodCBub3QgcHJlc2VudCBpbiBWQlQgKHR5cGUgJXUpXG4iLAo+ICAJ
CQkgICAgICBlbnRyeS0+dHlwZSk7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3ZidF9kZWZzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF92YnRfZGVmcy5o
Cj4gaW5kZXggODllZjE0Y2FmYjZiLi43MTBmNTM5ZjE3ZGUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfdmJ0X2RlZnMuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3ZidF9kZWZzLmgKPiBAQCAtNzYwLDggKzc2MCwxMCBAQCBzdHJ1Y3QgYmRiX2x2
ZHNfbGZwX2RhdGEgewo+ICAgKiBCbG9jayA0MyAtIExGUCBCYWNrbGlnaHQgQ29udHJvbCBEYXRh
IEJsb2NrCj4gICAqLwo+ICAKPiAtI2RlZmluZSBCREJfQkFDS0xJR0hUX1RZUEVfTk9ORQkwCj4g
LSNkZWZpbmUgQkRCX0JBQ0tMSUdIVF9UWVBFX1BXTQkyCj4gKyNkZWZpbmUgQkRCX0JBQ0tMSUdI
VF9UWVBFX05PTkUJCQkJMAo+ICsjZGVmaW5lIEJEQl9CQUNLTElHSFRfVFlQRV9QV01fU09DCQkJ
Mgo+ICsjZGVmaW5lIEJEQl9CQUNLTElHSFRfVFlQRV9QV01fUEFORUxfRFJJVkVSX09MRUQJNAo+
ICsjZGVmaW5lIEJEQl9CQUNLTElHSFRfVFlQRV9QV01fVkVTQV9FRFBfQVVYCQk1CgplbnRyeS0+
dHlwZSBpcyB0d28gYml0cywgMC0xIGluIHRoZSBGZWF0dXJlcyBieXRlIG9mIHRoZSBCYWNrbGln
aHQgRGF0YQpTdHJ1Y3R1cmUgaW4gdGhlIHNwZWMuIEJEQl9CQUNLTElHSFRfVFlQRV9QV01fVkVT
QV9FRFBfQVVYIHdpbGwgbmV2ZXIKbWF0Y2gsIHNvIHRoaXMgd2FzIGFsc28gbmV2ZXIgdGVzdGVk
LiBUaGVyZSBhcmUgbm8gdXBkYXRlcyB0byB0aGUgVkJUCnNwZWMgdG8gcmVmbGVjdCB0aGUgYWJv
dmUgY2hhbmdlIChhbmQgaWYgSSBzYXcgb25lLCBJJ2QgcmVqZWN0IGl0IGFzCmJhY2t3YXJkIGlu
Y29tcGF0aWJsZSkuCgpQbGVhc2UgZG9uJ3QgdGVsbCBtZSB5b3UgaGF2ZSBzb21lIHByb2R1Y3Qg
c3BlY2lmaWMgc3BlYyBhbmQgVkJUIHRoZXJlLApiZWNhdXNlIGl0J3Mgbm90IGZseWluZyB1cHN0
cmVhbS4KClRoZSBicmlnaHRuZXNzIGNvbnRyb2wgbWV0aG9kIHN0cnVjdHVyZSBkb2VzIGhhdmUg
YSBtb3JlIGRldGFpbGVkIHdheSBvZgpkZXNjcmliaW5nIHRoZSBtZXRob2QsIGFuZCBpdCBwcm9i
YWJseSBhbHJlYWR5IGNvdmVycyB3aGF0IHlvdSBuZWVkLgoKQlIsCkphbmkuCgoKPiAgCj4gIHN0
cnVjdCBsZnBfYmFja2xpZ2h0X2RhdGFfZW50cnkgewo+ICAJdTggdHlwZToyOwoKLS0gCkphbmkg
TmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
