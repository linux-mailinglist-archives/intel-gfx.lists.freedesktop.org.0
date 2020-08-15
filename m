Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CB5D2450CF
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Aug 2020 11:59:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 707636E119;
	Sat, 15 Aug 2020 09:59:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41A6C6E119
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Aug 2020 09:59:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22135452-1500050 for multiple; Sat, 15 Aug 2020 10:59:24 +0100
MIME-Version: 1.0
In-Reply-To: <1e1abf15-21ed-5c8a-56b2-da34fc67439d@intel.com>
References: <20200814155735.29138-1-chris@chris-wilson.co.uk>
 <20200814155735.29138-2-chris@chris-wilson.co.uk>
 <4e8f3929-06d9-9183-f5ed-9cf18abf40dc@intel.com>
 <159743033592.31882.10893400044974332038@build.alporthouse.com>
 <66272f87-c6c1-2b45-87f4-cf54303ab44b@intel.com>
 <1e1abf15-21ed-5c8a-56b2-da34fc67439d@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Chang, Bruce" <yu.bruce.chang@intel.com>, intel-gfx@lists.freedesktop.org
Date: Sat, 15 Aug 2020 10:59:22 +0100
Message-ID: <159748556276.31882.7166299307802898937@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/gt: Wait for CSB entries on
 Tigerlake
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaGFuZywgQnJ1Y2UgKDIwMjAtMDgtMTUgMDM6MTY6NTgpCj4gT24gOC8xNC8yMDIw
IDU6MzYgUE0sIENoYW5nLCBCcnVjZSB3cm90ZToKPiA+Cj4gPj4+PiBAQCAtMjQ5OCw5ICsyNDk4
LDIyIEBAIGludmFsaWRhdGVfY3NiX2VudHJpZXMoY29uc3QgdTY0ICpmaXJzdCwgCj4gPj4+PiBj
b25zdCB1NjQgKmxhc3QpCj4gPj4+PiDCoMKgwqAgKi8KPiA+Pj4+IMKgwqAgc3RhdGljIGlubGlu
ZSBib29sIGdlbjEyX2NzYl9wYXJzZShjb25zdCB1NjQgKmNzYikKPiA+Pj4+IMKgwqAgewo+ID4+
Pj4gLcKgwqDCoMKgIHU2NCBlbnRyeSA9IFJFQURfT05DRSgqY3NiKTsKPiA+Pj4+IC3CoMKgwqDC
oCBib29sIGN0eF9hd2F5X3ZhbGlkID0gR0VOMTJfQ1NCX0NUWF9WQUxJRCh1cHBlcl8zMl9iaXRz
KGVudHJ5KSk7Cj4gPj4+PiAtwqDCoMKgwqAgYm9vbCBuZXdfcXVldWUgPQo+ID4+Pj4gK8KgwqDC
oMKgIGJvb2wgY3R4X2F3YXlfdmFsaWQ7Cj4gPj4+PiArwqDCoMKgwqAgYm9vbCBuZXdfcXVldWU7
Cj4gPj4+PiArwqDCoMKgwqAgdTY0IGVudHJ5Owo+ID4+Pj4gKwo+ID4+Pj4gK8KgwqDCoMKgIC8q
IFhYWCBIU0QgKi8KPiA+Pj4+ICvCoMKgwqDCoCBlbnRyeSA9IFJFQURfT05DRSgqY3NiKTsKPiA+
Pj4+ICvCoMKgwqDCoCBpZiAodW5saWtlbHkoZW50cnkgPT0gLTEpKSB7Cj4gPj4+PiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIHByZWVtcHRfZGlzYWJsZSgpOwo+ID4+Pj4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCBpZiAod2FpdF9mb3JfYXRvbWljX3VzKChlbnRyeSA9IFJFQURfT05DRSgq
Y3NiKSkgIT0gCj4gPj4+PiAtMSwgNTApKQo+ID4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgR0VNX1dBUk5fT04oIjUwdXMgQ1NCIHRpbWVvdXQiKTsKPiA+Pj4g
T3V0IHRlc3RzIHNob3dlZCB0aGF0IDEwdXMgaXMgbm90IGxvbmcgZW5vdWdoLCBidXQgMjB1cyB3
b3JrZWQgd2VsbC4gU28KPiA+Pj4gNTB1cyBzaG91bGQgYmUgZ29vZCBlbm91Z2guCj4gPgo+ID4g
SnVzdCByZWFsaXplZCB0aGlzIG1heSBub3QgZnVsbHkgd29yaywgYXMgb25lIG9mIHRoZSBjb21t
b24gaXNzdWUgd2UgCj4gPiBydW4gaW50byBpcyB0aGF0IGhpZ2hlciAzMmJpdCBpcyB1cGRhdGVk
IGZyb20gdGhlIEhXLCBidXQgbG93ZXIgMzJiaXQgCj4gPiB1cGRhdGUgYXQgYSBsYXRlciB0aW1l
OiBtZWFuaW5nIHRoZSBjc2Igd2lsbCByZWFkIGxpa2UgCj4gPiAweEZGRkZGRkZGOnh4eHh4eHh4
IChsb3c6aGlnaCkgLiBTbyB0aGlzIGNoZWNrICghPSAtMSkgY2FuIHN0aWxsIHBhc3MgCj4gPiBi
dXQgd2l0aCBhIHBhcnRpYWwgaW52YWxpZCBjc2Igc3RhdHVzLiBTbywgd2UgbWF5IG5lZWQgdG8g
Y2hlY2sgZWFjaCAKPiA+IDMyYml0IHNlcGFyYXRlbHkuCj4gPgo+IEFmdGVyIHRlc3RlZCwgd2l0
aCB0aGUgbmV3IDY0Yml0IHJlYWQsIHRoZSBhYm92ZSBpc3N1ZSBuZXZlciBoYXBwZW5lZCBzbyAK
PiBmYXIuIFNvLCBpdCBzZWVtcyB0aGlzIG9ubHkgYXBwbGljYWJsZSB0byAzMmJpdCByZWFkIChD
U0IgdXBkYXRlZCAKPiBiZXR3ZWVuIHRoZSB0d28gbG93ZXIgYW5kIGhpZ2ggMzJiaXQgcmVhZHMp
LiBBc3N1bWluZyB0aGUgSFcgNjRiaXQgQ1NCIAo+IHVwZGF0ZSBpcyBhbHNvIGF0b21pYywgdGhl
IGFib3ZlIGNvZGUgc2hvdWxkIGJlIGZpbmUuCgpGb3J0dW5hdGVseSBmb3IgYWxsIHRoZSBwbGF0
Zm9ybXMgd2UgY2FyZSBhYm91dCBoZXJlLCBSRUFEX09OQ0UodTY0KQp3aWxsIGJlIGEgc2luZ2xl
IDY0YiByZWFkIGFuZCBzbyBib3RoIGxvd2VyL3VwcGVyIGR3b3JkcyB3aWxsIGJlIHB1bGxlZApm
cm9tIHRoZSBzYW1lIGJ1cyB0cmFuc2Zlci4gV2UgcmVhbGx5IG5lZWQgYSBjb21waWxlciB3YXJu
aW5nIGZvciB3aGVuClJFQURfT05DRSgpIGlzIG5vdCBhIHNpbmd1bGFyIGF0b21pYyBvcGVyYXRp
b24uIGF0b21pYzY0X3QgaGFzIHRvbyBtdWNoCmNvbm5vdGF0aW9uIHdpdGggY3Jvc3MtY29yZSBh
dG9taWNpdHkgZm9yIG15IGxpa2luZyB3aGVuIGRlYWxpbmcgd2l0aApbY2FjaGVhYmxlXSBtbWlv
IHNlbWFudGljcy4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeAo=
