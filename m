Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B57B0E66
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 13:59:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA3416ECF0;
	Thu, 12 Sep 2019 11:59:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A0A66ECF0
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 11:59:29 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18463566-1500050 for multiple; Thu, 12 Sep 2019 12:59:26 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190912092933.4729-1-chris@chris-wilson.co.uk>
 <20190912092933.4729-2-chris@chris-wilson.co.uk>
 <87impxspcy.fsf@gaia.fi.intel.com>
In-Reply-To: <87impxspcy.fsf@gaia.fi.intel.com>
Message-ID: <156828956357.4926.13464304000086863151@skylake-alporthouse-com>
Date: Thu, 12 Sep 2019 12:59:23 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/execlists: Ensure the context
 is reloaded after a GPU reset
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA5LTEyIDEyOjUzOjAxKQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBBZnRlciB3ZSBtYW5p
cHVsYXRlIHRoZSBjb250ZXh0IHRvIGFsbG93IHJlcGxheSBhZnRlciBhIEdQVSByZXNldCwgZm9y
Y2UKPiA+IHRoYXQgY29udGV4dCB0byBiZSByZWxvYWRlZC4gVGhpcyBzaG91bGQgYmUgYSBsYXll
ciBvZiBwYXJhbm9pYSwgZm9yIGlmCj4gPiB0aGUgR1BVIHdhcyByZXNldCwgdGhlIGNvbnRleHQg
d2lsbCBubyBsb25nZXIgYmUgcmVzaWRlbnQhCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiBDYzogTWlrYSBLdW9wcGFsYSA8
bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDEgKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gPiBpbmRleCBk
YmM5MGRhMjM0MWEuLjQ3ZDc2NmNjZWE3MSAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9scmMuYwo+ID4gQEAgLTI0NDUsNiArMjQ0NSw3IEBAIHN0YXRpYyB2b2lkIF9fZXhlY2xp
c3RzX3Jlc2V0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwgYm9vbCBzdGFsbGVkKQo+
ID4gICAgICAgaW50ZWxfcmluZ191cGRhdGVfc3BhY2UoY2UtPnJpbmcpOwo+ID4gICAgICAgX19l
eGVjbGlzdHNfcmVzZXRfcmVnX3N0YXRlKGNlLCBlbmdpbmUpOwo+ID4gICAgICAgX19leGVjbGlz
dHNfdXBkYXRlX3JlZ19zdGF0ZShjZSwgZW5naW5lKTsKPiA+ICsgICAgIGNlLT5scmNfZGVzYyB8
PSBDVFhfREVTQ19GT1JDRV9SRVNUT1JFOyAvKiBwYXJhbm9pZDogR1BVIHdhcwo+ID4gcmVzZXQh
ICovCj4gCj4gVGhlIENDSUQgc2hvdWxkIGJlIHJlc2V0IGFsc28sIGJ1dCBJIHNlZSBubyBoYXJt
IHRvIGJlIGV4cGxpY2l0LgoKWWVhaCwgSSB0aGluayBpdCdzIGRldmVsb3BpbmcgaW50byBhIGhl
YWx0aHkgZW5vdWdoIHBhdHRlcm4uIElmIHdlIGV2ZXIKbWFuaXB1bGF0ZSBhbnl0aGluZyBpbnNp
ZGUgdGhlIGltYWdlIGl0c2VsZiwgd2Ugc2hvdWxkIHByb2JhYmx5IGZvcmNlCnRoZSByZXN0b3Jl
LiBBIGJpdCBtb3JlIG11bGxpbmcgb3ZlciB0aGF0LCBJIGxpa2UgdGhlIGN1cnJlbnQgY29tbWVu
dCA6KQotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
