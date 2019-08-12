Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72954899DF
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 11:33:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AEB76E49D;
	Mon, 12 Aug 2019 09:33:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5F646E49D
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2019 09:33:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17966470-1500050 for multiple; Mon, 12 Aug 2019 10:33:15 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190812091045.29587-1-chris@chris-wilson.co.uk>
 <871rxq91jf.fsf@gaia.fi.intel.com>
In-Reply-To: <871rxq91jf.fsf@gaia.fi.intel.com>
Message-ID: <156560239394.2301.9628837087953957097@skylake-alporthouse-com>
Date: Mon, 12 Aug 2019 10:33:13 +0100
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/i915/execlists: Avoid sync calls
 during park
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTEyIDEwOjI3OjE2KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBTaW5jZSB3ZSBhbGxv
dyBvdXJzZWx2ZXMgdG8gdXNlIG5vbi1wcm9jZXNzIGNvbnRleHQgZHVyaW5nIHBhcmtpbmcsIHdl
Cj4gPiBjYW5ub3QgYWxsb3cgb3Vyc2VsdmVzIHRvIHNsZWVwIGFuZCBpbiBwYXJ0aWN1bGFyIGNh
bm5vdCBjYWxsCj4gPiBkZWxfdGltZXJfc3luYygpIC0tIGJ1dCB3ZSBjYW4gdXNlIGEgcGxhaW4g
ZGVsX3RpbWVyKCkuCj4gPgo+ID4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTExMTM3NQo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYyB8IDIgKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMu
Ywo+ID4gaW5kZXggYmI3NDk1NDg4OWRkLi5iOTcwNDdkNThkM2QgMTAwNjQ0Cj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiA+IEBAIC0yNzI4LDcgKzI3MjgsNyBAQCBzdGF0aWMg
dTMyICpnZW44X2VtaXRfZmluaV9icmVhZGNydW1iX3JjcyhzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpy
ZXF1ZXN0LCB1MzIgKmNzKQo+ID4gIAo+ID4gIHN0YXRpYyB2b2lkIGV4ZWNsaXN0c19wYXJrKHN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKPiA+ICB7Cj4gPiAtICAgICBkZWxfdGltZXJf
c3luYygmZW5naW5lLT5leGVjbGlzdHMudGltZXIpOwo+ID4gKyAgICAgZGVsX3RpbWVyKCZlbmdp
bmUtPmV4ZWNsaXN0cy50aW1lcik7Cj4gCj4gVGhlcmUgd2lsbCBiZSBhbm90aGVyIHN5bmMgcG9p
bnQgdGhlbiBzb21ld2hlcmUgZWxzZSBvciBub3QgbmVlZGVkPwoKTm90IHJlcXVpcmVkLCBhcyBp
dCBtZWFucyB0aGUgdGltZXIgaWYgY3VycmVudGx5IHJ1bm5pbmcgYW5kIHdpbGwganVzdApraWNr
IHRoZSB0YXNrbGV0IChhcyBpdCBkb2VzIHRvZGF5KS4gVGhlIHRhc2tsZXQgcnVubmluZyBhZnRl
ciB3ZSBwYXJrCmlzIG5vdCBhIGh1Z2UgaXNzdWUgYXMgaXQgZG9lc24ndCB0b3VjaCBIVyAtLSBp
dCBjaGVja3MgYSBDUFUgbWFwcGluZwphbmQgaW4gdGhlIHByb2Nlc3MgZHJhaW5zIHRoZSBHVCB3
YWtlcmVmLgogCj4gQWxzbyBhcmUgaXJxIHNhZmUgdGltZXJzIHdoZXJlIHdlIGNvdWxkIGRvIGEg
c3luYyBkZWxldGlvbi4gCj4gCj4gU28gbXkgcXVlc3Rpb24gaXMgd2h5IHRoZSBuZWVkIGZvciBh
IHN5bmMgcG9pbnQgZGlzYXBwZWFyZWQ/CgpXZSBkaWRuJ3QgdXNlIGl0IGNvcnJlY3RseSB0byBi
ZWdpbiB3aXRoIDopIFRvIGNvbXBsZXRlIHRoZSBzeW5jLCB3ZQpzaG91bGQgaGF2ZSBwdXQgYSB0
YXNrbGV0X2tpbGwoJmV4ZWNsaXN0cy0+dGFza2xldCk7IGFmdGVyd2FyZHMuCi1DaHJpcwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
