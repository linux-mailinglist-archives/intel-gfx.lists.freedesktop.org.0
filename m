Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24BA66375C
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 15:59:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B9696E05A;
	Tue,  9 Jul 2019 13:59:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60DA56E05A
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jul 2019 13:59:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17185892-1500050 for multiple; Tue, 09 Jul 2019 14:58:56 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190709130303.27990-1-chris@chris-wilson.co.uk>
References: <20190709130303.27990-1-chris@chris-wilson.co.uk>
Message-ID: <156268073366.9375.14888841102785771909@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 09 Jul 2019 14:58:53 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Lock the engine while dumping the
 active request
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
Cc: Alex Shumsky <alexthreed@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDctMDkgMTQ6MDM6MDMpCj4gV2UgY2Fubm90IGxl
dCB0aGUgcmVxdWVzdCBiZSByZXRpcmVkIGFuZCBmcmVlZCB3aGlsZSB3ZSBhcmUgdHJ5aW5nIHRv
Cj4gZHVtcCBpdCBkdXJpbmcgZXJyb3IgY2FwdHVyZS4gSXQgaXMgbm90IHN1ZmZpY2llbnQganVz
dCB0byBncmFiIGEKPiByZWZlcmVuY2UgdG8gdGhlIHJlcXVlc3QsIGFzIGR1cmluZyByZXRpcmVt
ZW50IHdlIG1heSBmcmVlIHRoZSByaW5nCj4gd2hpY2ggd2UgYXJlIGFsc28gZHVtcGluZy4gU28g
dGFrZSB0aGUgZW5naW5lIGxvY2sgdG8gcHJldmVudCByZXRpcmluZwo+IGFuZCBmcmVlaW5nIG9m
IHRoZSByZXF1ZXN0Lgo+IAo+IFJlcG9ydGVkLWJ5OiBBbGV4IFNodW1za3kgPGFsZXh0aHJlZWRA
Z21haWwuY29tPgo+IEZpeGVzOiA4M2MzMTc4MzJlYjEgKCJkcm0vaTkxNTogRHVtcCB0aGUgcmlu
Z2J1ZmZlciBvZiB0aGUgYWN0aXZlIHJlcXVlc3QgZm9yIGRlYnVnZ2luZyIpCj4gU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gQ2M6IEpvb25hcyBMYWh0aW5l
biA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KPiBDYzogQWxleCBTaHVtc2t5IDxh
bGV4dGhyZWVkQGdtYWlsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX2NzLmMgfCA1MSArKysrKysrKysrKystLS0tLS0tLS0tLQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5jICAgICB8ICA2ICsrLQo+ICAyIGZpbGVzIGNoYW5n
ZWQsIDMwIGluc2VydGlvbnMoKyksIDI3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCj4gaW5kZXggYmRmMjc5ZmEzYjJlLi44ZWUyZGQ0
MjM2NzQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5l
X2NzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwo+
IEBAIC0xNDQ0LDkgKzE0NDQsMTEgQEAgc3RhdGljIHZvaWQgaW50ZWxfZW5naW5lX3ByaW50X3Jl
Z2lzdGVycyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCj4gICAgICAgICB9Cj4gIH0K
PiAgCj4gLXN0YXRpYyB2b2lkIHByaW50X3JlcXVlc3RfcmluZyhzdHJ1Y3QgZHJtX3ByaW50ZXIg
Km0sIHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQo+ICtzdGF0aWMgdm9pZCBwcmludF9yZXF1ZXN0
X3Jpbmcoc3RydWN0IGRybV9wcmludGVyICptLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICBjb25zdCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwKPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgY29uc3Qgc3RydWN0IGludGVsX3JpbmcgKnJpbmcpCgpUaGlzIGNodW5rIGlz
IHN1cGVyZmx1b3VzLiBJIHRob3VnaHQgaXQgbWlnaHQgYmUgd2lzZXIgdG8gcGluIHRoZSByaW5n
LApidXQgdGhhdCB3b3VsZCBiZSB1bnVzdWFsLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
