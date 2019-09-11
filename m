Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8162AF9C4
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2019 12:02:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 948296E194;
	Wed, 11 Sep 2019 10:02:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 892366E194
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2019 10:01:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18448977-1500050 for multiple; Wed, 11 Sep 2019 11:01:53 +0100
MIME-Version: 1.0
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190910085838.GC7482@intel.com>
References: <20190909225536.7037-1-chris@chris-wilson.co.uk>
 <20190910073931.GY7482@intel.com>
 <156810436552.30942.9639859021370310826@skylake-alporthouse-com>
 <20190910085838.GC7482@intel.com>
Message-ID: <156819611136.30942.101174903887053743@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 11 Sep 2019 11:01:51 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Allow clobbering gpu
 resets if the display is off
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMTktMDktMTAgMDk6NTg6MzgpCj4gT24gVHVlLCBT
ZXAgMTAsIDIwMTkgYXQgMDk6MzI6NDVBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMTktMDktMTAgMDg6Mzk6MzEpCj4gPiA+IE9uIE1v
biwgU2VwIDA5LCAyMDE5IGF0IDExOjU1OjM1UE0gKzAxMDAsIENocmlzIFdpbHNvbiB3cm90ZToK
PiA+ID4gPiBJZiB0aGUgZGlzcGxheSBpcyBpbmFjdGl2ZSwgd2UgbmVlZCBub3Qgd29ycnkgYWJv
dXQgdGhlIGdwdSByZXNldAo+ID4gPiA+IGNsb2JiZXJpbmcgdGhlIGRpc3BsYXkhCj4gPiA+ID4g
Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Cj4gPiA+ID4gLS0tCj4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3Jlc2V0LmMgfCAxOCArKysrKysrKysrKysrKysrKy0KPiA+ID4gPiAgMSBmaWxlIGNoYW5nZWQs
IDE3IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiA+ID4gPiAKPiA+ID4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKPiA+ID4gPiBpbmRleCBiOWQ4NGQ1MmU5ODYuLmZl
NTcyOTZiNzkwYyAxMDA2NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9yZXNldC5jCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
cmVzZXQuYwo+ID4gPiA+IEBAIC03LDYgKzcsNyBAQAo+ID4gPiA+ICAjaW5jbHVkZSA8bGludXgv
c2NoZWQvbW0uaD4KPiA+ID4gPiAgI2luY2x1ZGUgPGxpbnV4L3N0b3BfbWFjaGluZS5oPgo+ID4g
PiA+ICAKPiA+ID4gPiArI2luY2x1ZGUgImRpc3BsYXkvaW50ZWxfZGlzcGxheS5oIgo+ID4gPiA+
ICAjaW5jbHVkZSAiZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgiCj4gPiA+ID4gICNpbmNs
dWRlICJkaXNwbGF5L2ludGVsX292ZXJsYXkuaCIKPiA+ID4gPiAgCj4gPiA+ID4gQEAgLTcyOSw2
ICs3MzAsMjEgQEAgc3RhdGljIHZvaWQgbm9wX3N1Ym1pdF9yZXF1ZXN0KHN0cnVjdCBpOTE1X3Jl
cXVlc3QgKnJlcXVlc3QpCj4gPiA+ID4gICAgICAgaW50ZWxfZW5naW5lX3F1ZXVlX2JyZWFkY3J1
bWJzKGVuZ2luZSk7Cj4gPiA+ID4gIH0KPiA+ID4gPiAgCj4gPiA+ID4gK3N0YXRpYyBib29sIHJl
c2V0X2Nsb2JiZXJzX2Rpc3BsYXkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gPiA+
ID4gK3sKPiA+ID4gPiArICAgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKPiA+ID4gPiArCj4g
PiA+ID4gKyAgICAgaWYgKCFJTlRFTF9JTkZPKGk5MTUpLT5ncHVfcmVzZXRfY2xvYmJlcnNfZGlz
cGxheSkKPiA+ID4gPiArICAgICAgICAgICAgIHJldHVybiBmYWxzZTsKPiA+ID4gPiArCj4gPiA+
ID4gKyAgICAgZm9yX2VhY2hfaW50ZWxfY3J0YygmaTkxNS0+ZHJtLCBjcnRjKSB7Cj4gPiA+ID4g
KyAgICAgICAgICAgICBpZiAoY3J0Yy0+YWN0aXZlKQo+ID4gPiA+ICsgICAgICAgICAgICAgICAg
ICAgICByZXR1cm4gdHJ1ZTsKPiA+ID4gPiArICAgICB9Cj4gPiA+IAo+ID4gPiBUaGlzIGZlZWxz
IHJhY3kuIGNydGMtPmFjdGl2ZSBnZXRzIHNldCBzb21ld2hlcmUgaW4gdGhlIG1pZGRsZSBvZiB0
aGUKPiA+ID4gbW9kZXNldCwgc28gbG9va3MgbGlrZSBub3cgd2UgY291bGQgY2xvYmJlciBhbGwg
dGhlIHN0dWZmIHdlJ3ZlIGFscmVhZHkKPiA+ID4gc2V0IHVwIGJlZm9yZSBjcnRjLT5hY3RpdmUg
Z290IHNldC4KPiA+IAo+ID4gVGhlIHF1ZXN0aW9uIGlzLCBkb2VzIGl0IG1hdHRlcj8gQWZ0ZXIg
d2UgdW53ZWRnZSwgd2UgY2xvYmJlciBhZ2FpbiBmb3IKPiA+IHJlYWx6LiBOb3QgdGhhdCB3ZSBo
YXZlIGFueXRoaW5nIGRlbGliZXJhdGVseSB0cnlpbmcgdG8gcmFjZQo+ID4gd2VkZ2UtdnMtbW9k
ZXNldChvbi9vZmYpLgo+IAo+IE5vdCBzdXJlLiBCdXQgSSBzdXNwZWN0IHRoZSBodyBtaWdodCBk
ZWNpZGUgdG8gaGFuZyB0aGUgYm94IGlmIGVnLgo+IHRoZSBQTEwgaXMgYm9ya2VkIHdoZW4gd2Ug
dG91Y2ggc29tZXRoaW5nIHRoYXQgcmVhbGx5IG5lZWRzIHRoZSBjbG9jay4KCmNydGMtPmFjdGl2
ZSBvbmx5IGNoYW5nZXMgd2l0aGluIHRoZSBhdG9taWNfdGFpbD8gV29yc3QgY2FzZSBJIGd1ZXNz
IGlzCndlIGFkZAoKc3JjdSA9IC1FTk9ERVY7CmlmIChpOTE1LT5ncHVfcmVzZXRfY2xvYmJlcnNf
ZGlzcGxheSkKCS8qIG9ubHkgZmFpbHMgaWYgaW50ZXJydXB0ZWQgKi8KCXNyY3UgPSBpbnRlbF9n
dF9yZXNldF90cnlsb2NrKCZpOTE1LT5ndCk7CgouLi4KCmlmIChzcmN1ID4gMCkKCWludGVsX2d0
X3Jlc2V0X3VubG9jaygmaTkxNS0+Z3QsIHNyY3UpOwoKLUNocmlzCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
