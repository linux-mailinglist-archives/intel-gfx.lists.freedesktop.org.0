Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6076457C0
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 10:39:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85A0E8967F;
	Fri, 14 Jun 2019 08:38:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CF0E8967F
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 08:38:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jun 2019 01:38:57 -0700
X-ExtLoop1: 1
Received: from pgsmsx105.gar.corp.intel.com ([10.221.44.96])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Jun 2019 01:38:55 -0700
Received: from pgsmsx111.gar.corp.intel.com ([169.254.2.51]) by
 PGSMSX105.gar.corp.intel.com ([169.254.4.239]) with mapi id 14.03.0415.000;
 Fri, 14 Jun 2019 16:38:55 +0800
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/2] drm/i915: Add backlight enable on/off delay for DP
 aux backlight control
Thread-Index: AQHVInOXSOcR9jDI8EKu54pJw4wwvqaaRdsAgACIAsA=
Date: Fri, 14 Jun 2019 08:38:54 +0000
Message-ID: <D42A2A322A1FCA4089E30E9A9BA36AC65D60D1D0@PGSMSX111.gar.corp.intel.com>
References: <1560492565-30405-1-git-send-email-shawn.c.lee@intel.com>
 <1560492565-30405-2-git-send-email-shawn.c.lee@intel.com>
 <87blz0wpul.fsf@intel.com>
In-Reply-To: <87blz0wpul.fsf@intel.com>
Accept-Language: zh-TW, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNDY0OWVjNjktZDBmNS00MmZlLTk2ZDUtMThhYmYzZDhhNjA1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoieTFaUXBaeE5rQW1WNWp0alppcG1FVG5UbmFPOTdTcXNpeEFqNSs5Znd5WWdhV2tOVVpcL1JMRWpBNGZxeTFnQkQifQ==
x-ctpclassification: CTP_NT
x-originating-ip: [172.30.20.205]
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
Reply-To: "1560492565-30405-2-git-send-email-shawn.c.lee@intel.com"
 <1560492565-30405-2-git-send-email-shawn.c.lee@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIEZyaSwgMTQgSnVuIDIwMTksIEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
IHdyb3RlOgo+T24gVGh1LCAxMyBKdW4gMjAxOSwgIkxlZSwgU2hhd24gQyIgPHNoYXduLmMubGVl
QGludGVsLmNvbT4gd3JvdGU6Cj4+IEZvbGxvdyBnZW5lcmxhIGVEUCBiYWNrbGlnaHQgZW5hYmxl
IGNvbnRyb2wgc2VxdWVuY2UuIEFkZCBUOCAodmFsaWQgCj4+IHZpZGVvIGRhdGEgdG8gYmFja2xp
Z2h0IGVuYWJsZSkgZGVsYXkgYmVmb3JlIHR1cm4gYmFja2xpZ2h0X2VuYWJsZSBvbi4KPj4gQW5k
IFQ5IChiYWNrbGlnaHQgZGlzYWJsZSB0byBlbmQgb2YgdmFsaWRhIHZpZGVvIGRhdGEpIGRlbGF5
IGFmdGVyIAo+PiBiYWNrbGlnaHRfZW5hYmxlIG9mZi4KPgo+VGhlcmUgYXJlIHR3byB0aGluZ3Mg
dGhhdCBhcmUgd3JvbmcgaGVyZToKPgo+Rmlyc3QsIHlvdSdyZSBhZGRpbmcgKnR3byogd2FpdHMg
b24gdGhlIERQIEFVWCBiYWNrbGlnaHQgZW5hYmxlIGFuZCBkaXNhYmxlIHBhdGhzLiBJSVVDIHRo
ZXJlIGlzIG5vIHJlYXNvbiB0byB3YWl0IGJldHdlZW4gc2V0dGluZyB0aGUgbGV2ZWwgYW5kIGVu
YWJsaW5nIGhlcmUuIFRoZSB3YWl0cyBoYXZlIGFscmVhZHkgYmVlbiBkb25lIG9uIGludGVsX2Rw
LmMgbGV2ZWwuCj4KPlNlY29uZCwgdGhlIGxhc3RfcG93ZXJfb24sIGJhY2tsaWdodF9vbl9kZWxh
eSwgbGFzdF9iYWNrbGlnaHRfb2ZmLCBhbmQgYmFja2xpZ2h0X29mZl9kZWxheSBtZW1iZXJzIG9m
IGludGVsX2RwIHNob3VsZCBhbGwgYmUgcHJpdmF0ZSB0byBpbnRlbF9kcC5jLiBJbmRlZWQgdGhl
c2Ugd2FpdHMgZXZlbiBoYXZlIHdyYXBwZXJzICp3aXRoaW4qIGludGVsX2RwLmMgc28gdGhhdCBv
bmx5IHZlcnkgc3BlY2lmaWMgZnVuY3Rpb25zIGluIGludGVsX2RwLmMgZXZlciBsb29rIGF0IHRo
ZXNlIG1lbWJlcnMuIFRoaXMgaXMgYSBodWdlIHJlZCBmbGFnLgo+Cj5XaGF0J3MgdGhlIHByb2Js
ZW0geW91J3JlIHRyeWluZyB0byBzb2x2ZT8gRG9lcyB0aGlzIGZpeCBzb21ldGhpbmcKPiphY3R1
YWwqIHRoYXQgeW91J3JlIHNlZWluZz8KPgo+QlIsCj5KYW5pLgoKVGhpcyBjaGFuZ2Ugd2lsbCBj
YWxsIG9uL29mZiBkZWxheSB0d2ljZS4gSXQgaXMgYSBtaXN0YWtlLgoKSSBjaGVjayB0aGUgZHJp
dmVyIGFnYWluLiBUbyB1c2UgdGhlIG9yaWdpbmFsIG9uL29mZiBkZWxheSBpbiBfaW50ZWxfZWRw
X2JhY2tsaWdodF9vbigpIGFuZCBfaW50ZWxfZWRwX2JhY2tsaWdodF9vZmYoKSBhcmUgZW5vdWdo
LgpBbmQgd2Ugc2hvdWxkIGJ5cGFzcyBiYWNrbGlnaHRfZW5hYmxlIG9uL29mZiBjb250cm9sIGJ5
IHNvYyBpZiBhdXggYmFja2xpZ2h0IGNvbnRyb2wgYWN0aXZlLiBSaWdodD8KCk9uZSBtb3JlIHF1
ZXN0aW9uIGFib3V0IHRoZSBvZmYgZmxvdy4gSW4gdGhpcyBjYXNlLCBiYWNrbGlnaHRfZW5hYmxl
IHdpbGwgYmUgb2ZmIGF0IGJhY2tsaWdodC5kaXNhYmxlKCkgZnVuY3Rpb24uCkJ1dCB3YWl0IGRl
bGF5IHdhcyBleGVjdXRlZCBhdCBfaW50ZWxfZWRwX2JhY2tsaWdodF9vZmYoKSBiZWZvcmUgYmFj
a2xpZ2h0LmRpc2FibGUoKS4gCgpXZSBhcmUgdHJ5aW5nIHRvIGVuYWJsZSBhIHBhbmVsIHdpdGgg
RFAgYXV4IGJhY2tsaWdodCBjb250cm9sLiBUaGUgbW9kaWZpY2F0aW9uIGluIHBhdGNoICMxIHRv
IGNvcnJlY3QgdGhlIHNlcXVlbmNlIGFuZCBtYWtlIGl0IHdvcmtzLgpCdXQgc2VlbXMgd2Ugc2hv
dWxkIG1vZGlmeSB0aGUgZGVsYXkgdGltZSB0byBmaXQgcGFuZWwncyBzcGVjIGp1c3QgbGlrZSB3
aGF0IHdlIGRpZCBmb3IgZ2VuZXJhbCBlRFAgcGFuZWwuCgpCZXN0IHJlZ2FyZHMsClNoYXduCgo+
Cj4+Cj4+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pgo+PiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPj4gQ2M6IEpvc2Ug
Um9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4+IENjOiBDb29wZXIgQ2hp
b3UgPGNvb3Blci5jaGlvdUBpbnRlbC5jb20+Cj4+Cj4+IFNpZ25lZC1vZmYtYnk6IExlZSwgU2hh
d24gQyA8c2hhd24uYy5sZWVAaW50ZWwuY29tPgo+PiAtLS0KPj4gIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYyB8IDEzICsrKysrKysrKysrKysKPj4gIDEgZmls
ZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMgCj4+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5jCj4+IGluZGV4IDk4MjEwYWUxNzI4NS4uYjAw
OGU4ODdmNGU5IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcF9h
dXhfYmFja2xpZ2h0LmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHBfYXV4
X2JhY2tsaWdodC5jCj4+IEBAIC0yMTcsMTIgKzIxNywyNSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9k
cF9hdXhfZW5hYmxlX2JhY2tsaWdodChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdAo+PiAgCX0KPj4gIAo+PiAgCWludGVsX2RwX2F1eF9zZXRfYmFja2xpZ2h0KGNvbm5fc3Rh
dGUsIAo+PiBjb25uZWN0b3ItPnBhbmVsLmJhY2tsaWdodC5sZXZlbCk7Cj4+ICsKPj4gKwl3YWl0
X3JlbWFpbmluZ19tc19mcm9tX2ppZmZpZXMoaW50ZWxfZHAtPmxhc3RfcG93ZXJfb24sCj4+ICsJ
CQkJICAgICAgIGludGVsX2RwLT5iYWNrbGlnaHRfb25fZGVsYXkpOwo+PiArCj4+ICAJc2V0X2F1
eF9iYWNrbGlnaHRfZW5hYmxlKGludGVsX2RwLCB0cnVlKTsgIH0KPj4gIAo+PiAgc3RhdGljIHZv
aWQgaW50ZWxfZHBfYXV4X2Rpc2FibGVfYmFja2xpZ2h0KGNvbnN0IHN0cnVjdCAKPj4gZHJtX2Nv
bm5lY3Rvcl9zdGF0ZSAqb2xkX2Nvbm5fc3RhdGUpICB7Cj4+ICsJc3RydWN0IGludGVsX2Nvbm5l
Y3RvciAqY29ubmVjdG9yID0gdG9faW50ZWxfY29ubmVjdG9yKG9sZF9jb25uX3N0YXRlLT5jb25u
ZWN0b3IpOwo+PiArCXN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAgPSAKPj4gK2VuY190b19pbnRl
bF9kcCgmY29ubmVjdG9yLT5lbmNvZGVyLT5iYXNlKTsKPj4gKwo+PiArCWludGVsX2RwLT5sYXN0
X2JhY2tsaWdodF9vZmYgPSBqaWZmaWVzOwo+PiArCj4+ICAJCj4+IHNldF9hdXhfYmFja2xpZ2h0
X2VuYWJsZShlbmNfdG9faW50ZWxfZHAob2xkX2Nvbm5fc3RhdGUtPmJlc3RfZW5jb2RlcikKPj4g
LCBmYWxzZSk7Cj4+ICsKPj4gKwl3YWl0X3JlbWFpbmluZ19tc19mcm9tX2ppZmZpZXMoaW50ZWxf
ZHAtPmxhc3RfYmFja2xpZ2h0X29mZiwKPj4gKwkJCQkgICAgICAgaW50ZWxfZHAtPmJhY2tsaWdo
dF9vZmZfZGVsYXkpOwo+PiArCj4+ICAJaW50ZWxfZHBfYXV4X3NldF9iYWNrbGlnaHQob2xkX2Nv
bm5fc3RhdGUsIDApOyAgfQo+Cj4tLQo+SmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdy
YXBoaWNzIENlbnRlcgo+Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
