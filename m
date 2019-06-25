Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4583D55361
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 17:29:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8912589911;
	Tue, 25 Jun 2019 15:29:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3E6789911
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 15:29:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 08:29:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="184523583"
Received: from pgsmsx114.gar.corp.intel.com ([10.108.55.203])
 by fmsmga004.fm.intel.com with ESMTP; 25 Jun 2019 08:29:23 -0700
Received: from pgsmsx111.gar.corp.intel.com ([169.254.2.124]) by
 pgsmsx114.gar.corp.intel.com ([169.254.4.160]) with mapi id 14.03.0439.000;
 Tue, 25 Jun 2019 23:29:22 +0800
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915: Refine eDP aux backlight enable/disable
 sequence
Thread-Index: AQHVK2ev8skhmvO6iUCglYO6vVRNW6ar9DoAgACGlVA=
Date: Tue, 25 Jun 2019 15:29:21 +0000
Message-ID: <D42A2A322A1FCA4089E30E9A9BA36AC65D61C808@PGSMSX111.gar.corp.intel.com>
References: <1561087486-19339-1-git-send-email-shawn.c.lee@intel.com>
 <1561476910-23655-1-git-send-email-shawn.c.lee@intel.com>
 <87pnn1ofyx.fsf@intel.com>
In-Reply-To: <87pnn1ofyx.fsf@intel.com>
Accept-Language: zh-TW, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiOWE3OWYxZGYtYTY1NC00YTY1LThlNjEtNDc0YmZiN2ZhMTVmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiTTJLNWxYcWFxaDJIeks1UTkwZUpRTkFtOFdcL3QxVVJ2bDJlY0hjRTdwV3l1aURBYUp3T3pGcmNLYXoxUWI0bjEifQ==
x-ctpclassification: CTP_NT
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Refine eDP aux backlight
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
Reply-To: "1561476910-23655-1-git-send-email-shawn.c.lee@intel.com"
 <1561476910-23655-1-git-send-email-shawn.c.lee@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIFR1ZSwgMjUgSnVuIDIwMTksIEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
IHdyb3RlOgo+T24gVHVlLCAyNSBKdW4gMjAxOSwgTGVlIFNoYXduIEMgPHNoYXduLmMubGVlQGlu
dGVsLmNvbT4gd3JvdGU6Cj4+IE1vZGlmeSBhdXggYmFja2xpZ2h0IGVuYWJsZS9kaXNhYmxlIHNl
cXVlbmNlIGp1c3QgbGlrZSB3aGF0IHdlIGRpZCBmb3IgCj4+IGdlbmVybmFsIGVEUCBwYW5lbC4g
U2V0dXAgUFdNIGZyZXEgYW5kIGJyaWdodG5lc3MgbGV2ZWwgYmVmb3JlIGVuYWJsZSAKPj4gZGlz
cGxheSBiYWNrbGlnaHQuCj4+Cj4+IHYyOiBBY2NvcmRpbmcgdG8gc3BlYywgaXQgaXMgbm90IG5l
Y2Vzc2FyeSB0byBzZXQgUFdNIHRvIDAgaWYKPj4gICAgIGJhY2tsaWdodCBlbmFibGUgYWxyZWFk
eSBvZmYuIFJlbW92ZSBpbnRlbF9kcF9hdXhfc2V0X2JhY2tsaWdodCB0byAwLgo+Cj5QbGVhc2Ug
dGhpbmsgaXQgdGhyb3VnaCBhZ2Fpbi4gVGhlIHNhbWUgYXBwbGllcyBoZXJlLiBUaGUgYnJpZ2h0
bmVzcyBjaGFuZ2UgYmVmb3JlIGVuYWJsZSBpcyBpZ25vcmVkIGFjY29yZGluZyB0byBlRFAgc3Bl
Yy4KPgo+QlIsCj5KYW5pLgo+CgpUaGlzIGlzIHdoYXQgdGhlIHByb2JsZW0gd2Ugc2VlIG9uIGEg
bmV3IGVEUCBwYW5lbCBmcm9tIGN1c3RvbWVyLiBUQ09OIGRpZCBub3QgdHVybiBiYWNrbGlnaHQg
b24gc3VjY2Vzc2Z1bC4KQWZ0ZXIgc2F3cCB0aGUgc2VxdWVuY2UsIGJhY2tsaWdodCB3b3JrcyB3
ZWxsIGFzIGV4cGVjdGVkLiAKCkluIHRoZSBvdGhlciB3b3Jkcy4gTG9va3MgbGlrZSB0aGlzIFRD
T04gYmFja2xpZ2h0IGVuYWJsZSBmbG93IHZpb2xhdGUgZURQIHNwZWMuIFdoYXQgZG8geW91IHRo
aW5rPwoKPj4KPj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+Cj4+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+PiBDYzog
Sm9zZSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPj4gQ2M6IENvb3Bl
ciBDaGlvdSA8Y29vcGVyLmNoaW91QGludGVsLmNvbT4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTGVl
IFNoYXduIEMgPHNoYXduLmMubGVlQGludGVsLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYyB8IDIgKy0KPj4gIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMg
Cj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0
LmMKPj4gaW5kZXggNmIwYjczNDc5ZmI4Li43MGQ5YjljOTU4NmYgMTAwNjQ0Cj4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5jCj4+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5j
Cj4+IEBAIC0yMTYsOCArMjE2LDggQEAgc3RhdGljIHZvaWQgaW50ZWxfZHBfYXV4X2VuYWJsZV9i
YWNrbGlnaHQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3QKPj4gIAkJfQo+
PiAgCX0KPj4gIAo+PiAtCXNldF9hdXhfYmFja2xpZ2h0X2VuYWJsZShpbnRlbF9kcCwgdHJ1ZSk7
Cj4+ICAJaW50ZWxfZHBfYXV4X3NldF9iYWNrbGlnaHQoY29ubl9zdGF0ZSwgCj4+IGNvbm5lY3Rv
ci0+cGFuZWwuYmFja2xpZ2h0LmxldmVsKTsKPj4gKwlzZXRfYXV4X2JhY2tsaWdodF9lbmFibGUo
aW50ZWxfZHAsIHRydWUpOwo+PiAgfQo+PiAgCj4+ICBzdGF0aWMgdm9pZCBpbnRlbF9kcF9hdXhf
ZGlzYWJsZV9iYWNrbGlnaHQoY29uc3Qgc3RydWN0IAo+PiBkcm1fY29ubmVjdG9yX3N0YXRlICpv
bGRfY29ubl9zdGF0ZSkKPgo+LS0KPkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFw
aGljcyBDZW50ZXIKPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
