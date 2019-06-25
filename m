Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68628552F8
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 17:10:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C706C6E148;
	Tue, 25 Jun 2019 15:10:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 566DE6E148
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 15:10:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 08:10:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="182907741"
Received: from triedme-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.35.180])
 by fmsmga001.fm.intel.com with ESMTP; 25 Jun 2019 08:10:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "1561087486-19339-1-git-send-email-shawn.c.lee\@intel.com"
 <1561087486-19339-1-git-send-email-shawn.c.lee@intel.com>,
 "intel-gfx\@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <D42A2A322A1FCA4089E30E9A9BA36AC65D61C79C@PGSMSX111.gar.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <1561087486-19339-1-git-send-email-shawn.c.lee@intel.com>
 <87y31poiu9.fsf@intel.com>
 <D42A2A322A1FCA4089E30E9A9BA36AC65D61C79C@PGSMSX111.gar.corp.intel.com>
Date: Tue, 25 Jun 2019 18:12:20 +0300
Message-ID: <87sgrxog17.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Refine eDP aux backlight
 enable/disable sequence
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
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyNSBKdW4gMjAxOSwgIkxlZSwgU2hhd24gQyIgPHNoYXduLmMubGVlQGludGVsLmNv
bT4gd3JvdGU6Cj4gT24gVHVlLCAyNSBKdW4gMjAxOSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxh
QGludGVsLmNvbT4gd3JvdGU6Cj4+T24gVGh1LCAyMCBKdW4gMjAxOSwgTGVlIFNoYXduIEMgPHNo
YXduLmMubGVlQGludGVsLmNvbT4gd3JvdGU6Cj4+PiBNb2RpZnkgYXV4IGJhY2tsaWdodCBlbmFi
bGUvZGlzYWJsZSBzZXF1ZW5jZSBqdXN0IGxpa2Ugd2hhdCB3ZSBkaWQgZm9yIAo+Pj4gZ2VuZXJu
YWwgZURQIHBhbmVsLgo+Pj4gMS4gU2V0dXAgUFdNIGZyZXEgYW5kIGJyaWdodG5lc3MgbGV2ZWwg
YmVmb3JlIGVuYWJsZSBkaXNwbGF5IGJhY2tsaWdodC4KPj4+IDIuIFNldCBQV00gdG8gMCBhZnRl
ciBiYWNrbGlnaHQgZW5hYmxlIHdhcyBvZmYuCj4+Cj4+SXQgdG9vayBtZSBhIHdoaWxlIHRvIHJl
YWxpemUgd2h5IHdlIGRvIHRoaXMgaW4gdGhpcyBvcmRlci4KPj4KPj5lRFAgdjEuNGIgc2F5cyBh
Ym91dCBEUENEIGFkZHJlc3NlcyAwMDcyMmgtMDA3MjNoIGkuZS4gRURQX0JBQ0tMSUdIVF9CUklH
SFRORVNTIE1TQiBhbmQgTFNCOgo+Pgo+PiIiIgo+PldyaXRlcyBhcmUgaWdub3JlZCBpZjoKPj4K
Pj5bLi4uXQo+Pgo+Pi0gQkFDS0xJR0hUX0VOQUJMRSBiaXQgaW4gdGhlIEVEUF9ESVNQTEFZX0NP
TlRST0wgcmVnaXN0ZXIgKERQQ0QgQWRkcmVzcwo+PiAgMDA3MjBoLCBiaXQgMCkgaXMgY2xlYXJl
ZCB0byAwIgo+PiIiIgo+Pgo+PmkuZS4gcGVyIHRoZSBzcGVjIHRoaXMgY2hhbmdlIG1ha2VzIHRo
ZSBicmlnaHRuZXNzIHVwZGF0ZXMgbm8tb3BzLgo+Pgo+PkRvIHlvdSBoYXZlIGEgcGFuZWwgd2hl
cmUgdGhpcyBwYXRjaCBtYWtlcyBhIGRpZmZlcmVuY2U/Cj4+Cj4+QlIsCj4+SmFuaS4KPj4KPgo+
IFdoYXQgeW91IHNheSBpcyBjb3JyZWN0LiBBY2NvcmRpbmcgdG8gc3BlYywgd3JpdGUgRURQX0JB
Q0tMSUdIVF9CUklHSFRORVNTIGRvZXMgbm90IGFmZmVjdAo+IGlmIEJBQ0tMSUdIVF9FTkFCTEUg
YWxyZWFkeSBiZSBvZmYuCj4KPiBCYWNrbGlnaHQgZW5hYmxlIGFsd2F5cyB0dXJuIG9mZiBiZWZv
cmUgc3RvcCBQV00gb3V0cHV0IHdoZW4gdXNlZCBnZW5lcmFsIGVEUCBiYWNrbGlnaHQgKGZyb20g
U09DKSBjb250cm9sLgo+IEJ1dCBBVVggYmFja2xpZ2h0IGNvbnRyb2wgaXMgYSBsaXR0bGUgZGlm
ZmVyZW50LiBJIHdpbGwgdXBkYXRlIHRoaXMgcGF0Y2ggYW5kIHJlbW92ZSAiU2V0IFBXTSB0byAw
Ii4KCkFGQUlDVCB0aGUgb25seSB0aGluZyB5b3UgY2FuIGRvLCByZWFsbHksIGlzIGNhbGxpbmcK
aW50ZWxfZHBfYXV4X3NldF9iYWNrbGlnaHQob2xkX2Nvbm5fc3RhdGUsIDApOyAqYmVmb3JlKgpz
ZXRfYXV4X2JhY2tsaWdodF9lbmFibGUoZW5jX3RvX2ludGVsX2RwKG9sZF9jb25uX3N0YXRlLT5i
ZXN0X2VuY29kZXIpLApmYWxzZSk7IGluIGludGVsX2RwX2F1eF9kaXNhYmxlX2JhY2tsaWdodCgp
LgoKQlIsCkphbmkuCgoKCj4KPj4+Cj4+PiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KPj4+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50
ZWwuY29tPgo+Pj4gQ2M6IEpvc2UgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5j
b20+Cj4+PiBDYzogQ29vcGVyIENoaW91IDxjb29wZXIuY2hpb3VAaW50ZWwuY29tPgo+Pj4KPj4+
IFNpZ25lZC1vZmYtYnk6IExlZSBTaGF3biBDIDxzaGF3bi5jLmxlZUBpbnRlbC5jb20+Cj4+PiAt
LS0KPj4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eF9iYWNrbGln
aHQuYyB8IDMgKystCj4+PiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYyAKPj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMKPj4+IGluZGV4IDZiMGI3MzQ3OWZiOC4uYmJj
NTc5NzM0MjM4IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMKPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5jCj4+PiBAQCAtMjE2LDEzICsyMTYsMTQgQEAg
c3RhdGljIHZvaWQgaW50ZWxfZHBfYXV4X2VuYWJsZV9iYWNrbGlnaHQoY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3QKPj4+ICAJCX0KPj4+ICAJfQo+Pj4gIAo+Pj4gLQlzZXRf
YXV4X2JhY2tsaWdodF9lbmFibGUoaW50ZWxfZHAsIHRydWUpOwo+Pj4gIAlpbnRlbF9kcF9hdXhf
c2V0X2JhY2tsaWdodChjb25uX3N0YXRlLCAKPj4+IGNvbm5lY3Rvci0+cGFuZWwuYmFja2xpZ2h0
LmxldmVsKTsKPj4+ICsJc2V0X2F1eF9iYWNrbGlnaHRfZW5hYmxlKGludGVsX2RwLCB0cnVlKTsK
Pj4+ICB9Cj4+PiAgCj4+PiAgc3RhdGljIHZvaWQgaW50ZWxfZHBfYXV4X2Rpc2FibGVfYmFja2xp
Z2h0KGNvbnN0IHN0cnVjdCAKPj4+IGRybV9jb25uZWN0b3Jfc3RhdGUgKm9sZF9jb25uX3N0YXRl
KSAgewo+Pj4gIAkKPj4+IHNldF9hdXhfYmFja2xpZ2h0X2VuYWJsZShlbmNfdG9faW50ZWxfZHAo
b2xkX2Nvbm5fc3RhdGUtPmJlc3RfZW5jb2RlcikKPj4+ICwgZmFsc2UpOwo+Pj4gKwlpbnRlbF9k
cF9hdXhfc2V0X2JhY2tsaWdodChvbGRfY29ubl9zdGF0ZSwgMCk7Cj4+PiAgfQo+Pj4gIAo+Pj4g
IHN0YXRpYyBpbnQgaW50ZWxfZHBfYXV4X3NldHVwX2JhY2tsaWdodChzdHJ1Y3QgaW50ZWxfY29u
bmVjdG9yIAo+Pj4gKmNvbm5lY3RvciwKPj4KPj4tLQo+PkphbmkgTmlrdWxhLCBJbnRlbCBPcGVu
IFNvdXJjZSBHcmFwaGljcyBDZW50ZXIKPj4KCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBT
b3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
