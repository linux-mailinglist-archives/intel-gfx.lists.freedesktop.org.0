Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F25914ED1B
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 14:18:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1FFF6FB3D;
	Fri, 31 Jan 2020 13:18:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEB9B6FB3D
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 13:18:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20072779-1500050 for multiple; Fri, 31 Jan 2020 13:18:30 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200131075716.2212299-1-chris@chris-wilson.co.uk>
 <87y2tn973j.fsf@gaia.fi.intel.com>
 <158047170013.2430.15418748422936870751@skylake-alporthouse-com>
 <87tv4b939d.fsf@gaia.fi.intel.com>
In-Reply-To: <87tv4b939d.fsf@gaia.fi.intel.com>
Message-ID: <158047670817.2430.7910037192442851695@skylake-alporthouse-com>
Date: Fri, 31 Jan 2020 13:18:28 +0000
Subject: Re: [Intel-gfx] [CI 1/3] drm/i915/gt: Skip rmw for masked registers
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDIwLTAxLTMxIDEzOjE0OjM4KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBRdW90aW5nIE1pa2Eg
S3VvcHBhbGEgKDIwMjAtMDEtMzEgMTE6NTE6NDQpCj4gPj4gQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKPiA+PiAKPiA+PiA+IEEgbWFza2VkIHJlZ2lzdGVy
IGRvZXMgbm90IG5lZWQgcm13IHRvIHVwZGF0ZSwgYW5kIGl0IGlzIGJlc3Qgbm90IHRvIHVzZQo+
ID4+ID4gc3VjaCBhIHNlcXVlbmNlLgo+ID4+ID4KPiA+PiA+IFJlcG9ydGVkLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+ID4+ID4gU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPj4gPiBDYzog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiA+PiA+IENj
OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+ID4+ID4gLS0tCj4g
Pj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyB8IDMyICsr
KysrKysrKysrKysrLS0tLS0tLQo+ID4+ID4gIDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25z
KCspLCAxMSBkZWxldGlvbnMoLSkKPiA+PiA+Cj4gPj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiA+PiA+IGluZGV4IDVhN2RiMjc5ZjcwMi4uZTRjMmI2
ZDQyZjQ2IDEwMDY0NAo+ID4+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
d29ya2Fyb3VuZHMuYwo+ID4+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
d29ya2Fyb3VuZHMuYwo+ID4+ID4gQEAgLTExNiw3ICsxMTYsOCBAQCBzdGF0aWMgdm9pZCBfd2Ff
YWRkKHN0cnVjdCBpOTE1X3dhX2xpc3QgKndhbCwgY29uc3Qgc3RydWN0IGk5MTVfd2EgKndhKQo+
ID4+ID4gICAgICAgICAgICAgICB9IGVsc2Ugewo+ID4+ID4gICAgICAgICAgICAgICAgICAgICAg
IHdhXyA9ICZ3YWwtPmxpc3RbbWlkXTsKPiA+PiA+ICAKPiA+PiA+IC0gICAgICAgICAgICAgICAg
ICAgICBpZiAoKHdhLT5tYXNrICYgfndhXy0+bWFzaykgPT0gMCkgewo+ID4+ID4gKyAgICAgICAg
ICAgICAgICAgICAgIGlmICgod2EtPm1hc2sgfCB3YV8tPm1hc2spICYmCj4gPj4gCj4gPj4gRG9u
J3Qgd2Ugd2FudCB0byBkaXNjYXJkIGlmIHNvbWVvbmUgdHJpZXMgdG8gZGVtb3RlIGEgbWFza2Vk
Cj4gPj4gb25lIGludG8gYSBwbGFpbj8KPiA+Cj4gPiBUaGF0IHNob3VsZCB0aHJvdyB0aGUgZXJy
b3IsIHJpZ2h0Pwo+ID4KPiA+IElmIGVpdGhlciB1c2VkIGEgbWFzayBhbmQgbm93IHdlIGRvbid0
LCB0aGVuIDAgJiB4ID09IDAgPT4gRFJNX0VSUk9SLgo+IAo+IFllcywgaXQgd2lsbCB0aHJvdyB0
aGUgZXJyb3IuIE15IG1pc3Rha2UuCj4gCj4gQnV0IGlmIHdlIGhhdmUgYSBtYXNrLCB3ZSBzaG91
bGQgbm90IGFsbG93IG5vbm1hc2tlZCBhZGRpdGlvbnMKPiBhc3dlbGw/IFNvIG1hc2sgPT0gMCB3
b3VsZCBhbHdheXMgYmUgbWFza2VkIHJlZ2lzdGVyIGFuZCB5b3UKPiBjYW4ndCBtaXguCgpJbmRl
ZWQuIFdlIGRvIG5vdCB3YW50IHJtdyBvbiBtYXNrZWQgcmVnaXN0ZXJzLiBTb21lIG1pZ2h0IHNh
eSB3YS0+bWFzawppcyBhIG1pc25vbWVyIDspCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
