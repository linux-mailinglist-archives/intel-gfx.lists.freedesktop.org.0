Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5B2388C2
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 13:16:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CC2B89C09;
	Fri,  7 Jun 2019 11:16:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A19389C09
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 11:16:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16824613-1500050 for multiple; Fri, 07 Jun 2019 12:15:57 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAM0jSHOX3Z2Qxo2NOi996z046c=xBRuf0rfAzq6ZZ4XSb3qjTQ@mail.gmail.com>
References: <20190603174935.23982-1-chris@chris-wilson.co.uk>
 <20190603174935.23982-6-chris@chris-wilson.co.uk>
 <CAM0jSHOX3Z2Qxo2NOi996z046c=xBRuf0rfAzq6ZZ4XSb3qjTQ@mail.gmail.com>
Message-ID: <155990615538.19464.18305444787747194784@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 07 Jun 2019 12:15:55 +0100
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915: Rename i915_hw_ppgtt to
 i915_ppgtt
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDYtMDcgMTI6MDI6NDUpCj4gT24gTW9uLCAzIEp1
biAyMDE5IGF0IDE4OjQ5LCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4g
d3JvdGU6Cj4gPgo+ID4gS2VlcGluZyB0aGUgX2h3XyBpbiB0aGVyZSBkb2VzIG5vdCBoZWxwIHRv
IGRpc3Rpbmd1aXNoIGl0IGZyb20gaXRzCj4gPiBicmV0aHJlbiBpOTE1X2dndHQsIHNvIGRyb3Ag
aXQuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1f
Y29udGV4dC5jICAgfCAgOCArLQo+ID4gIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9o
dWdlX3BhZ2VzLmMgICB8IDEyICstLQo+ID4gIC4uLi9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0
cy9tb2NrX2NvbnRleHQuYyB8ICAyICstCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMgICAgICAgICAgIHwgIDQgKy0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9yaW5nYnVmZmVyLmMgICAgfCAgNSArLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d2
dC9zY2hlZHVsZXIuYyAgICAgICAgICB8ICA2ICstCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaCAgICAgICAgICAgICAgIHwgIDIgKy0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9ndHQuYyAgICAgICAgICAgfCA3OCArKysrKysrKystLS0tLS0tLS0tCj4gPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmggICAgICAgICAgIHwgMjggKysrLS0t
LQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbV9ndHQuYyB8ICA2
ICstCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfZ3R0LmMgICAgIHwg
IDcgKy0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19ndHQuaCAgICAg
fCAgNCArLQo+ID4gIDEyIGZpbGVzIGNoYW5nZWQsIDc4IGluc2VydGlvbnMoKyksIDg0IGRlbGV0
aW9ucygtKQo+ID4KPiAKPiBbc25pcF0KPiAKPiA+Cj4gPiAtc3RydWN0IGk5MTVfaHdfcHBndHQg
Kgo+ID4gLW1vY2tfcHBndHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4gPiAtICAg
ICAgICAgIGNvbnN0IGNoYXIgKm5hbWUpCj4gPiArc3RydWN0IGk5MTVfcHBndHQgKm1vY2tfcHBn
dHQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGNvbnN0IGNoYXIgKm5hbWUpCj4gPiAg
ewo+ID4gLSAgICAgICBzdHJ1Y3QgaTkxNV9od19wcGd0dCAqcHBndHQ7Cj4gPiArICAgICAgIHN0
cnVjdCBpOTE1X3BwZ3R0ICpwcGd0dDsKPiA+Cj4gPiAgICAgICAgIHBwZ3R0ID0ga3phbGxvYyhz
aXplb2YoKnBwZ3R0KSwgR0ZQX0tFUk5FTCk7Cj4gPiAgICAgICAgIGlmICghcHBndHQpCj4gPiAg
ICAgICAgICAgICAgICAgcmV0dXJuIE5VTEw7Cj4gPgo+ID4gLSAgICAgICBwcGd0dC0+dm0uaTkx
NSA9IGk5MTU7Cj4gCj4gSG1tPwoKQWggaGFoISBUaGFua3MsCi1DaHJpcwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
