Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B068116DD4
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 14:21:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F09136E447;
	Mon,  9 Dec 2019 13:21:19 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E7126E447
 for <Intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 13:21:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19512992-1500050 for multiple; Mon, 09 Dec 2019 13:20:42 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20191209122314.16289-1-tvrtko.ursulin@linux.intel.com>
 <157589438166.6399.11686226380785589291@skylake-alporthouse-com>
 <72f65ec2-2a4d-5735-281c-50f67c8614bc@linux.intel.com>
In-Reply-To: <72f65ec2-2a4d-5735-281c-50f67c8614bc@linux.intel.com>
Message-ID: <157589764188.6399.10906176423829658203@skylake-alporthouse-com>
Date: Mon, 09 Dec 2019 13:20:41 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Improve execbuf debug
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMi0wOSAxMzoxNzozOCkKPiAKPiBPbiAwOS8x
Mi8yMDE5IDEyOjI2LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIFR2cnRrbyBVcnN1
bGluICgyMDE5LTEyLTA5IDEyOjIzOjE0KQo+ID4+IEZyb206IFR2cnRrbyBVcnN1bGluIDx0dnJ0
a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gPj4KPiA+PiBDb252ZXJ0IGk5MTVfZ2VtX2NoZWNrX2V4
ZWNidWZmZXIgdG8gcmV0dXJuIHRoZSBlcnJvciBjb2RlIGluc3RlYWQgb2YKPiA+PiBhIGJvb2xl
YW4gc28gb3VyIG5lYXQgRUlOVkFMIGRlYnVnZ2luZyB0cmljayB3b3JrcyB3aXRoaW4gdGhpcyBm
dW5jdGlvbi4KPiA+IAo+ID4gV2hvIHdvdWxkIG5lZWQgaXQ/IDopCj4gCj4gSGV5IEkgZm91bmQg
aXQgaGVscGZ1bCEgOikKPiAKPiA+PiBTaWduZWQtb2ZmLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZy
dGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+ID4gUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IAo+IFRoYW5rcywgYnV0IGlmIHlvdSBkb24ndCBsaWtl
IGl0IGp1c3Qgc2F5LgoKSSB3YXMgamVzdGluZywgbW9yZSBwcmVjaXNlIGNvc3QtZnJlZSBkZWJ1
ZyBpcyBncmVhdCEgOikKLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
