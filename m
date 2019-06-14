Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C86456D1
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 09:55:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED8898989C;
	Fri, 14 Jun 2019 07:55:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8C9C897EB
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 07:55:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 00:55:06 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 14 Jun 2019 00:55:05 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "1560404842-13583-1-git-send-email-shawn.c.lee\@intel.com"
 <1560404842-13583-1-git-send-email-shawn.c.lee@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <D42A2A322A1FCA4089E30E9A9BA36AC65D60CD02@PGSMSX111.gar.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <1560404842-13583-1-git-send-email-shawn.c.lee@intel.com>
 <20190613091943.GU5942@intel.com> <87muilwrp2.fsf@intel.com>
 <D42A2A322A1FCA4089E30E9A9BA36AC65D60CD02@PGSMSX111.gar.corp.intel.com>
Date: Fri, 14 Jun 2019 10:58:03 +0300
Message-ID: <87ef3wwqd0.fsf@intel.com>
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxNCBKdW4gMjAxOSwgIkxlZSwgU2hhd24gQyIgPHNoYXduLmMubGVlQGludGVsLmNv
bT4gd3JvdGU6Cj4gT24gVGh1LCAxMyBKdW4gMjAxOSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxh
QGludGVsLmNvbT4gd3JvdGU6Cj4+T24gVGh1LCAxMyBKdW4gMjAxOSwgVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4+PiBPbiBXZWQsIEp1biAx
MiwgMjAxOSBhdCAxMDo0NzoyMlBNIC0wNzAwLCBMZWUsIFNoYXduIEMgd3JvdGU6Cj4+Pj4gTW9k
aWZ5IGF1eCBiYWNrbGlnaHQgZW5hYmxlIHNlcXVlbmNlIGp1c3QgbGlrZSB3aGF0IHdlIGRpZCBm
b3IgCj4+Pj4gZ2VuZXJuYWwgZURQIHBhbmVsLgo+Pj4+IDEuIFNldHVwIFBXTSBmcmVxIGFuZCBi
cmlnaHRuZXNzIGxldmVsIGJlZm9yZSBlbmFibGUgZGlzcGxheSBiYWNrbGlnaHQuCj4+Pj4gMi4g
QWRkIFQ4ICh2YWxpZCBkYXRhIHRvIGJhY2tsaWdodCBlbmFibGUpIGRlbGF5Lgo+Pj4KPj4+IElm
IHdlIHJlc3BlY3QgdGhlIG9uX2RlbGF5IHNob3VsZG4ndCB3ZSB0aGVuIHJlc3BlY3QgdGhlIG9m
Zl9kZWxheSB0b28/Cj4+Pgo+Pj4gSW4gd2hpY2ggY2FzZSBJIHN1Z2dlc3QgdHdvIHBhdGNoZXM6
Cj4+PiAxLiBzd2FhcCB0aGUgZW5hYmxlIHZzLiBzZXRfYnJpZ2h0bmVzcyBvcmRlciAyLiBhZGQg
dGhlIG9uL29mZiBkZWxheXMKPj4KPj5UaGUgYXV4IGJhY2tsaWdodCBmdW5jdGlvbnMgYXJlIGNh
bGxlZCB2aWEgdGhlIHNhbWUgaG9va3MgYXMgZXZlcnl0aGluZyBpbiBpbnRlbF9wYW5lbC5jLCB3
aGljaCBkbyBub3QgaGF2ZSBkZWxheXMgKHRoZXkncmUgYWxsIG9uIHRoZSBjYWxsaW5nIHNpZGUg
aW4gaW50ZWxfZHAuYykgc28gSSdtIGNvbmZ1c2VkIHdoeSB0aGVzZSB3b3VsZCByZXF1aXJlIHRo
ZSBkZWxheXMuCj4+Cj4+QlIsCj4+SmFuaS4KPgo+IFJlZmVyIHRvIGludGVsX2VkcF9iYWNrbGln
aHRfb24oKS4gUFdNIHdhcyByZXN0b3JlZCBhdCB0aGUgZW5kIG9mCj4gaW50ZWxfcGFuZWxfZW5h
YmxlX2JhY2tsaWdodCgpLiAgQWZ0ZXIgdGhhdCwgZHJpdmVyIHdvdWxkIHdhaXQgZm9yCj4gc29t
ZSBkZWxheSB3YWl0X2JhY2tsaWdodF9vbigpIGJlZm9yZSBlbmFibGUgYmFja2xpZ2h0LgoKWW91
IG5lZWQgdG8gYmUgbW9yZSBzcGVjaWZpYy4KCkkgcmVwZWF0OiBXaGVuIHlvdSBoYXZlIERQQ0Qg
QVVYIGJhY2tsaWdodCBpbiB1c2UsIGl0IGdldHMgZW5hYmxlZCB2aWEKaW50ZWxfcGFuZWxfZW5h
YmxlX2JhY2tsaWdodCgpLiBBbGwgdGhlIGRlbGF5cyBmb3IgYmFja2xpZ2h0IChyZWdhcmRsZXNz
Cm9mIHdoZXRoZXIgaXQncyBEREkgUFdNIG9yIERQQ0QgQVVYKSBhcmUgYWxyZWFkeSBoYW5kbGVk
IGluIGludGVsX2RwLmMuCgpXaGF0IGlzIHRoZSBleGFjdCBwcm9ibGVtIHlvdSdyZSB0cnlpbmcg
dG8gc29sdmU/CgpCUiwKSmFuaS4KCgo+Cj4gVGhhbmtzIGZvciBWaWxsZSdzIHJlY29tbWVuZGF0
aW9uLiBJIHdpbGwgc2VuZCBzZXBhcmF0ZSBmb3IgdGhpcyBjaGFuZ2UuCj4KPiBCZXN0IHJlZ2Fy
ZHMsCj4gU2hhd24KPgo+Pj4+IAo+Pj4+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50
ZWwuY29tPgo+Pj4+IENjOiBKb3NlIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgo+Pj4+IENjOiBDb29wZXIgQ2hpb3UgPGNvb3Blci5jaGlvdUBpbnRlbC5jb20+Cj4+Pj4g
Cj4+Pj4gU2lnbmVkLW9mZi1ieTogTGVlLCBTaGF3biBDIDxzaGF3bi5jLmxlZUBpbnRlbC5jb20+
Cj4+Pj4gLS0tCj4+Pj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwX2F1eF9iYWNrbGln
aHQuYyB8IDYgKysrKystCj4+Pj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKPj4+PiAKPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZHBfYXV4X2JhY2tsaWdodC5jCj4+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kcF9hdXhfYmFja2xpZ2h0LmMKPj4+PiBpbmRleCA3ZGVkOTVhMzM0ZGIuLmMxMTJlMGI5MzBk
ZSAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcF9hdXhfYmFj
a2xpZ2h0LmMKPj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcF9hdXhfYmFj
a2xpZ2h0LmMKPj4+PiBAQCAtMjE2LDggKzIxNiwxMiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kcF9h
dXhfZW5hYmxlX2JhY2tsaWdodChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dAo+Pj4+ICAJCX0KPj4+PiAgCX0KPj4+PiAgCj4+Pj4gLQlzZXRfYXV4X2JhY2tsaWdodF9lbmFi
bGUoaW50ZWxfZHAsIHRydWUpOwo+Pj4+ICAJaW50ZWxfZHBfYXV4X3NldF9iYWNrbGlnaHQoY29u
bl9zdGF0ZSwKPj4+PiBjb25uZWN0b3ItPnBhbmVsLmJhY2tsaWdodC5sZXZlbCk7Cj4+Pj4gKwo+
Pj4+ICsJd2FpdF9yZW1haW5pbmdfbXNfZnJvbV9qaWZmaWVzKGludGVsX2RwLT5sYXN0X3Bvd2Vy
X29uLAo+Pj4+ICsJCQkJICAgICAgIGludGVsX2RwLT5iYWNrbGlnaHRfb25fZGVsYXkpOwo+Pj4+
ICsKPj4+PiArCXNldF9hdXhfYmFja2xpZ2h0X2VuYWJsZShpbnRlbF9kcCwgdHJ1ZSk7Cj4+Pj4g
IH0KPj4+PiAgCj4+Pj4gIHN0YXRpYyB2b2lkIGludGVsX2RwX2F1eF9kaXNhYmxlX2JhY2tsaWdo
dChjb25zdCBzdHJ1Y3QgCj4+Pj4gZHJtX2Nvbm5lY3Rvcl9zdGF0ZSAqb2xkX2Nvbm5fc3RhdGUp
Cj4+Pj4gLS0KPj4+PiAyLjcuNAo+Pj4+IAo+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+Pj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+Pj4+IElu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4+PiBodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo+Pgo+Pi0tCj4+SmFuaSBOaWt1bGEs
IEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IElu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBP
cGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
