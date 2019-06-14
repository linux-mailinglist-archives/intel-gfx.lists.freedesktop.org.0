Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3137C45B4F
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 13:18:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 329C189214;
	Fri, 14 Jun 2019 11:18:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DD3F89214
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 11:18:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16901057-1500050 for multiple; Fri, 14 Jun 2019 12:18:25 +0100
MIME-Version: 1.0
To: Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAM0jSHPR2MjaaeXCbzPFgaE0bUyot1ZkqZCFgUObXgYSp4cOpg@mail.gmail.com>
References: <20190614071023.17929-1-chris@chris-wilson.co.uk>
 <20190614071023.17929-30-chris@chris-wilson.co.uk>
 <CAM0jSHPR2MjaaeXCbzPFgaE0bUyot1ZkqZCFgUObXgYSp4cOpg@mail.gmail.com>
Message-ID: <156051110287.12536.6120360106539495161@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 14 Jun 2019 12:18:22 +0100
Subject: Re: [Intel-gfx] [PATCH 29/39] drm/i915: Make i915_vma track its own
 kref
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDYtMTQgMTI6MTU6MjcpCj4gT24gRnJpLCAxNCBK
dW4gMjAxOSBhdCAwODoxMCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
IHdyb3RlOgo+ID4KPiA+IFRocm91Z2hvdXQgdGhlIGNvZGUgYmFzZSB3ZSBpbnRlcm5hbGx5IHRy
YWNrIHZtYSAob2JqZWN0cyBib3VuZCBpbnRvCj4gPiBhIHBhcnRpY3VsYXIgR1RUKSwgd2l0aCB0
aGUgb2JqZWN0cyB0aGVtc2VsdmVzIGJlaW5nIHRoZSBjb21tb24gYmFja2luZwo+ID4gc3RvcmFn
ZS4gQnkgbWFraW5nIHRoZSB2bWEgaXRzZWxmIHJlZmVyZW5jZSBjb3VudGVkIHdlIGNhbiBzdGFy
dAo+ID4gb3BlcmF0aW5nIG9uIHRoZSB2bWEgY29uY3VycmVudGx5LCBtb3Zpbmcgd29yayBpbnRv
IGFzeW5jIHRocmVhZHMuCj4gPgo+ID4gSnVzdCB0aGUgY29udmVyc2lvbiB0byBtYWtpbmcgc3Vy
ZSB3ZSBrZWVwIHRyYWNrIG9mIHRoZSB2bWEgcmVmZXJlbmNlCj4gPiBjb3VudHMgaXMgbm90IHBh
cnRpY3VsYXJseSBwbGVhc2FudC4KPiA+IC0tLQo+IAo+IFtzbmlwXQo+IAo+ID4gQEAgLTIwNjAs
NiArMjA1Nyw3IEBAIHN0YXRpYyBzdHJ1Y3QgaTkxNV92bWEgKnBkX3ZtYV9jcmVhdGUoc3RydWN0
IGdlbjZfcHBndHQgKnBwZ3R0LCBpbnQgc2l6ZSkKPiA+ICAgICAgICAgaWYgKCF2bWEpCj4gPiAg
ICAgICAgICAgICAgICAgcmV0dXJuIEVSUl9QVFIoLUVOT01FTSk7Cj4gPgo+ID4gKyAgICAgICBr
cmVmX2luaXQoJnZtYS0+cmVmKTsKPiA+ICAgICAgICAgaTkxNV9hY3RpdmVfaW5pdCgmdm1hLT5h
Y3RpdmUsIE5VTEwsIE5VTEwpOwo+ID4KPiA+ICAgICAgICAgdm1hLT52bSA9ICZnZ3R0LT52bTsK
PiAKPiBKdXN0IGEgZmlyc3QgcGFzcy4gIERvIHdlIG5lZWQgaTkxNV92bV9nZXQoJmdndHQtPnZt
KTsgc28gd2UgbWF0Y2ggdGhlCj4gaTkxNV92bV9wdXQoKSBpbiBfX2k5MTVfdm1hX3JlbGVhc2Uo
KT8KCll1cC4gVGhhdCB3b3VsZCBoYXZlIGFuIGludGVyZXN0aW5nIGV4cGxvc2lvbiBhdCBzb21l
IHBvaW50LiBUZW1wdGVkIHRvCmxlYXZlIGl0IHRvIG1ha2Ugc3VyZSBDSSBkb2VzIGV4cGxvZGUg
OikKCk5vdyB0aGF0IEkgbWVudGlvbiBpdC4uLiBJIHRoaW5rIEknbGwgd2lsbCBsZWF2ZSBhIGNv
bW1lbnQgd2l0aCB0aGUgZml4LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
