Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 583984514B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 03:46:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32700892E4;
	Fri, 14 Jun 2019 01:46:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA08D892E4
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 01:46:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 18:46:32 -0700
X-ExtLoop1: 1
Received: from kmsmsx152.gar.corp.intel.com ([172.21.73.87])
 by fmsmga005.fm.intel.com with ESMTP; 13 Jun 2019 18:46:31 -0700
Received: from pgsmsx111.gar.corp.intel.com ([169.254.2.51]) by
 KMSMSX152.gar.corp.intel.com ([169.254.11.195]) with mapi id 14.03.0415.000;
 Fri, 14 Jun 2019 09:42:08 +0800
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Refine eDP aux backlight enable
 sequence.
Thread-Index: AQHVIadSYgkM1Bppp0afFyU5IOmSuaaYyNqAgABCSICAAVXssA==
Date: Fri, 14 Jun 2019 01:42:08 +0000
Message-ID: <D42A2A322A1FCA4089E30E9A9BA36AC65D60CD02@PGSMSX111.gar.corp.intel.com>
References: <1560404842-13583-1-git-send-email-shawn.c.lee@intel.com>
 <20190613091943.GU5942@intel.com> <87muilwrp2.fsf@intel.com>
In-Reply-To: <87muilwrp2.fsf@intel.com>
Accept-Language: zh-TW, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZWM3ZTYzZTUtYWRjYy00YjFhLWI0OGYtNDUyNThmMGVlM2NhIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoibmJRM0xFZzRxbHhMMjJWOUFYU0V2bkk0amlcL1djaXBiXC9UYm1cLzNMaWtCZ2xVbWZRajRLS0hQVThYcXpRU2tINSJ9
x-ctpclassification: CTP_NT
x-originating-ip: [172.30.20.205]
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
Reply-To: "1560404842-13583-1-git-send-email-shawn.c.lee@intel.com"
 <1560404842-13583-1-git-send-email-shawn.c.lee@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIFRodSwgMTMgSnVuIDIwMTksIEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
IHdyb3RlOgo+T24gVGh1LCAxMyBKdW4gMjAxOSwgVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4gd3JvdGU6Cj4+IE9uIFdlZCwgSnVuIDEyLCAyMDE5IGF0IDEw
OjQ3OjIyUE0gLTA3MDAsIExlZSwgU2hhd24gQyB3cm90ZToKPj4+IE1vZGlmeSBhdXggYmFja2xp
Z2h0IGVuYWJsZSBzZXF1ZW5jZSBqdXN0IGxpa2Ugd2hhdCB3ZSBkaWQgZm9yIAo+Pj4gZ2VuZXJu
YWwgZURQIHBhbmVsLgo+Pj4gMS4gU2V0dXAgUFdNIGZyZXEgYW5kIGJyaWdodG5lc3MgbGV2ZWwg
YmVmb3JlIGVuYWJsZSBkaXNwbGF5IGJhY2tsaWdodC4KPj4+IDIuIEFkZCBUOCAodmFsaWQgZGF0
YSB0byBiYWNrbGlnaHQgZW5hYmxlKSBkZWxheS4KPj4KPj4gSWYgd2UgcmVzcGVjdCB0aGUgb25f
ZGVsYXkgc2hvdWxkbid0IHdlIHRoZW4gcmVzcGVjdCB0aGUgb2ZmX2RlbGF5IHRvbz8KPj4KPj4g
SW4gd2hpY2ggY2FzZSBJIHN1Z2dlc3QgdHdvIHBhdGNoZXM6Cj4+IDEuIHN3YWFwIHRoZSBlbmFi
bGUgdnMuIHNldF9icmlnaHRuZXNzIG9yZGVyIDIuIGFkZCB0aGUgb24vb2ZmIGRlbGF5cwo+Cj5U
aGUgYXV4IGJhY2tsaWdodCBmdW5jdGlvbnMgYXJlIGNhbGxlZCB2aWEgdGhlIHNhbWUgaG9va3Mg
YXMgZXZlcnl0aGluZyBpbiBpbnRlbF9wYW5lbC5jLCB3aGljaCBkbyBub3QgaGF2ZSBkZWxheXMg
KHRoZXkncmUgYWxsIG9uIHRoZSBjYWxsaW5nIHNpZGUgaW4gaW50ZWxfZHAuYykgc28gSSdtIGNv
bmZ1c2VkIHdoeSB0aGVzZSB3b3VsZCByZXF1aXJlIHRoZSBkZWxheXMuCj4KPkJSLAo+SmFuaS4K
ClJlZmVyIHRvIGludGVsX2VkcF9iYWNrbGlnaHRfb24oKS4gUFdNIHdhcyByZXN0b3JlZCBhdCB0
aGUgZW5kIG9mIGludGVsX3BhbmVsX2VuYWJsZV9iYWNrbGlnaHQoKS4KQWZ0ZXIgdGhhdCwgZHJp
dmVyIHdvdWxkIHdhaXQgZm9yIHNvbWUgZGVsYXkgd2FpdF9iYWNrbGlnaHRfb24oKSBiZWZvcmUg
ZW5hYmxlIGJhY2tsaWdodC4gCgpUaGFua3MgZm9yIFZpbGxlJ3MgcmVjb21tZW5kYXRpb24uIEkg
d2lsbCBzZW5kIHNlcGFyYXRlIGZvciB0aGlzIGNoYW5nZS4KCkJlc3QgcmVnYXJkcywKU2hhd24K
Cj4+PiAKPj4+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+Pj4gQ2M6
IEpvc2UgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4+PiBDYzogQ29v
cGVyIENoaW91IDxjb29wZXIuY2hpb3VAaW50ZWwuY29tPgo+Pj4gCj4+PiBTaWduZWQtb2ZmLWJ5
OiBMZWUsIFNoYXduIEMgPHNoYXduLmMubGVlQGludGVsLmNvbT4KPj4+IC0tLQo+Pj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYyB8IDYgKysrKystCj4+PiAg
MSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pj4gCj4+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5j
Cj4+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYwo+Pj4g
aW5kZXggN2RlZDk1YTMzNGRiLi5jMTEyZTBiOTMwZGUgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMKPj4+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYwo+Pj4gQEAgLTIxNiw4ICsyMTYs
MTIgQEAgc3RhdGljIHZvaWQgaW50ZWxfZHBfYXV4X2VuYWJsZV9iYWNrbGlnaHQoY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3QKPj4+ICAJCX0KPj4+ICAJfQo+Pj4gIAo+Pj4g
LQlzZXRfYXV4X2JhY2tsaWdodF9lbmFibGUoaW50ZWxfZHAsIHRydWUpOwo+Pj4gIAlpbnRlbF9k
cF9hdXhfc2V0X2JhY2tsaWdodChjb25uX3N0YXRlLAo+Pj4gY29ubmVjdG9yLT5wYW5lbC5iYWNr
bGlnaHQubGV2ZWwpOwo+Pj4gKwo+Pj4gKwl3YWl0X3JlbWFpbmluZ19tc19mcm9tX2ppZmZpZXMo
aW50ZWxfZHAtPmxhc3RfcG93ZXJfb24sCj4+PiArCQkJCSAgICAgICBpbnRlbF9kcC0+YmFja2xp
Z2h0X29uX2RlbGF5KTsKPj4+ICsKPj4+ICsJc2V0X2F1eF9iYWNrbGlnaHRfZW5hYmxlKGludGVs
X2RwLCB0cnVlKTsKPj4+ICB9Cj4+PiAgCj4+PiAgc3RhdGljIHZvaWQgaW50ZWxfZHBfYXV4X2Rp
c2FibGVfYmFja2xpZ2h0KGNvbnN0IHN0cnVjdCAKPj4+IGRybV9jb25uZWN0b3Jfc3RhdGUgKm9s
ZF9jb25uX3N0YXRlKQo+Pj4gLS0KPj4+IDIuNy40Cj4+PiAKPj4+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+PiBJbnRlbC1nZnggbWFpbGluZyBsaXN0
Cj4+PiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+PiBodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo+Cj4tLQo+SmFuaSBOaWt1
bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
