Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5038D55287
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 16:51:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FE776E131;
	Tue, 25 Jun 2019 14:51:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 045B56E131
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 14:51:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 07:51:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="152319488"
Received: from kmsmsx154.gar.corp.intel.com ([172.21.73.14])
 by orsmga007.jf.intel.com with ESMTP; 25 Jun 2019 07:51:39 -0700
Received: from pgsmsx111.gar.corp.intel.com ([169.254.2.124]) by
 KMSMSX154.gar.corp.intel.com ([169.254.12.105]) with mapi id 14.03.0439.000;
 Tue, 25 Jun 2019 22:49:46 +0800
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Refine eDP aux backlight enable/disable
 sequence
Thread-Index: AQHVJ9z/YXObb3Erp0O5S0v0G/W1n6ar6f0AgACMteA=
Date: Tue, 25 Jun 2019 14:49:46 +0000
Message-ID: <D42A2A322A1FCA4089E30E9A9BA36AC65D61C79C@PGSMSX111.gar.corp.intel.com>
References: <1561087486-19339-1-git-send-email-shawn.c.lee@intel.com>
 <87y31poiu9.fsf@intel.com>
In-Reply-To: <87y31poiu9.fsf@intel.com>
Accept-Language: zh-TW, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNDFiMWUxMTItZWY4MC00OThkLTliYjgtNDlkNTkxODgzOTljIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoick9CaEdWanBkM25Cb3JyU2RVNEtFempkYnRcL2pKQVN2eWQ5b2Y5TFkxKzNkdFwvemhDT0RzZStrWERoN3paYkpLIn0=
x-ctpclassification: CTP_NT
x-originating-ip: [172.30.20.205]
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
Reply-To: "1561087486-19339-1-git-send-email-shawn.c.lee@intel.com"
 <1561087486-19339-1-git-send-email-shawn.c.lee@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIFR1ZSwgMjUgSnVuIDIwMTksIEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
IHdyb3RlOgo+T24gVGh1LCAyMCBKdW4gMjAxOSwgTGVlIFNoYXduIEMgPHNoYXduLmMubGVlQGlu
dGVsLmNvbT4gd3JvdGU6Cj4+IE1vZGlmeSBhdXggYmFja2xpZ2h0IGVuYWJsZS9kaXNhYmxlIHNl
cXVlbmNlIGp1c3QgbGlrZSB3aGF0IHdlIGRpZCBmb3IgCj4+IGdlbmVybmFsIGVEUCBwYW5lbC4K
Pj4gMS4gU2V0dXAgUFdNIGZyZXEgYW5kIGJyaWdodG5lc3MgbGV2ZWwgYmVmb3JlIGVuYWJsZSBk
aXNwbGF5IGJhY2tsaWdodC4KPj4gMi4gU2V0IFBXTSB0byAwIGFmdGVyIGJhY2tsaWdodCBlbmFi
bGUgd2FzIG9mZi4KPgo+SXQgdG9vayBtZSBhIHdoaWxlIHRvIHJlYWxpemUgd2h5IHdlIGRvIHRo
aXMgaW4gdGhpcyBvcmRlci4KPgo+ZURQIHYxLjRiIHNheXMgYWJvdXQgRFBDRCBhZGRyZXNzZXMg
MDA3MjJoLTAwNzIzaCBpLmUuIEVEUF9CQUNLTElHSFRfQlJJR0hUTkVTUyBNU0IgYW5kIExTQjoK
Pgo+IiIiCj5Xcml0ZXMgYXJlIGlnbm9yZWQgaWY6Cj4KPlsuLi5dCj4KPi0gQkFDS0xJR0hUX0VO
QUJMRSBiaXQgaW4gdGhlIEVEUF9ESVNQTEFZX0NPTlRST0wgcmVnaXN0ZXIgKERQQ0QgQWRkcmVz
cwo+ICAwMDcyMGgsIGJpdCAwKSBpcyBjbGVhcmVkIHRvIDAiCj4iIiIKPgo+aS5lLiBwZXIgdGhl
IHNwZWMgdGhpcyBjaGFuZ2UgbWFrZXMgdGhlIGJyaWdodG5lc3MgdXBkYXRlcyBuby1vcHMuCj4K
PkRvIHlvdSBoYXZlIGEgcGFuZWwgd2hlcmUgdGhpcyBwYXRjaCBtYWtlcyBhIGRpZmZlcmVuY2U/
Cj4KPkJSLAo+SmFuaS4KPgoKV2hhdCB5b3Ugc2F5IGlzIGNvcnJlY3QuIEFjY29yZGluZyB0byBz
cGVjLCB3cml0ZSBFRFBfQkFDS0xJR0hUX0JSSUdIVE5FU1MgZG9lcyBub3QgYWZmZWN0CmlmIEJB
Q0tMSUdIVF9FTkFCTEUgYWxyZWFkeSBiZSBvZmYuCgpCYWNrbGlnaHQgZW5hYmxlIGFsd2F5cyB0
dXJuIG9mZiBiZWZvcmUgc3RvcCBQV00gb3V0cHV0IHdoZW4gdXNlZCBnZW5lcmFsIGVEUCBiYWNr
bGlnaHQgKGZyb20gU09DKSBjb250cm9sLgpCdXQgQVVYIGJhY2tsaWdodCBjb250cm9sIGlzIGEg
bGl0dGxlIGRpZmZlcmVudC4gSSB3aWxsIHVwZGF0ZSB0aGlzIHBhdGNoIGFuZCByZW1vdmUgIlNl
dCBQV00gdG8gMCIuCgo+Pgo+PiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4KPj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
Cj4+IENjOiBKb3NlIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+PiBD
YzogQ29vcGVyIENoaW91IDxjb29wZXIuY2hpb3VAaW50ZWwuY29tPgo+Pgo+PiBTaWduZWQtb2Zm
LWJ5OiBMZWUgU2hhd24gQyA8c2hhd24uYy5sZWVAaW50ZWwuY29tPgo+PiAtLS0KPj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5jIHwgMyArKy0K
Pj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4KPj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4X2Jh
Y2tsaWdodC5jIAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4
X2JhY2tsaWdodC5jCj4+IGluZGV4IDZiMGI3MzQ3OWZiOC4uYmJjNTc5NzM0MjM4IDEwMDY0NAo+
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eF9iYWNrbGln
aHQuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eF9i
YWNrbGlnaHQuYwo+PiBAQCAtMjE2LDEzICsyMTYsMTQgQEAgc3RhdGljIHZvaWQgaW50ZWxfZHBf
YXV4X2VuYWJsZV9iYWNrbGlnaHQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3QKPj4gIAkJfQo+PiAgCX0KPj4gIAo+PiAtCXNldF9hdXhfYmFja2xpZ2h0X2VuYWJsZShpbnRl
bF9kcCwgdHJ1ZSk7Cj4+ICAJaW50ZWxfZHBfYXV4X3NldF9iYWNrbGlnaHQoY29ubl9zdGF0ZSwg
Cj4+IGNvbm5lY3Rvci0+cGFuZWwuYmFja2xpZ2h0LmxldmVsKTsKPj4gKwlzZXRfYXV4X2JhY2ts
aWdodF9lbmFibGUoaW50ZWxfZHAsIHRydWUpOwo+PiAgfQo+PiAgCj4+ICBzdGF0aWMgdm9pZCBp
bnRlbF9kcF9hdXhfZGlzYWJsZV9iYWNrbGlnaHQoY29uc3Qgc3RydWN0IAo+PiBkcm1fY29ubmVj
dG9yX3N0YXRlICpvbGRfY29ubl9zdGF0ZSkgIHsKPj4gIAkKPj4gc2V0X2F1eF9iYWNrbGlnaHRf
ZW5hYmxlKGVuY190b19pbnRlbF9kcChvbGRfY29ubl9zdGF0ZS0+YmVzdF9lbmNvZGVyKQo+PiAs
IGZhbHNlKTsKPj4gKwlpbnRlbF9kcF9hdXhfc2V0X2JhY2tsaWdodChvbGRfY29ubl9zdGF0ZSwg
MCk7Cj4+ICB9Cj4+ICAKPj4gIHN0YXRpYyBpbnQgaW50ZWxfZHBfYXV4X3NldHVwX2JhY2tsaWdo
dChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yIAo+PiAqY29ubmVjdG9yLAo+Cj4tLQo+SmFuaSBOaWt1
bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgo+Cl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
