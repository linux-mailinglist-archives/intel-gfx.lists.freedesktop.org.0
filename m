Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B1BC2CB02F
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 23:39:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 813576E934;
	Tue,  1 Dec 2020 22:39:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AE926E934
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 22:39:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23183131-1500050 for multiple; Tue, 01 Dec 2020 22:38:58 +0000
MIME-Version: 1.0
In-Reply-To: <20201201160517.GX6112@intel.com>
References: <20201127220548.3713-1-chris@chris-wilson.co.uk>
 <20201201160517.GX6112@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjälä <ville.syrjala@linux.intel.com>
Date: Tue, 01 Dec 2020 22:38:57 +0000
Message-ID: <160686233758.408.13656920081137084390@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Disable outputs during unregister
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBWaWxsZSBTeXJqw6Rsw6QgKDIwMjAtMTItMDEgMTY6MDU6MTcpCj4gT24gRnJpLCBO
b3YgMjcsIDIwMjAgYXQgMTA6MDU6NDhQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
U3dpdGNoIG9mZiB0aGUgc2Nhbm91dCBkdXJpbmcgZHJpdmVyIHVucmVnaXN0ZXIsIHNvIHdlIGNh
biBzaHV0ZG93biB0aGUKPiA+IEhXIGltbWVkaWF0ZWx5IGZvciB1bmJpbmQuCj4gPiAKPiA+IFNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+ID4g
LS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyB8IDEgKwo+ID4gIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMK
PiA+IGluZGV4IDMyMDg1NmI2NjVhMS4uNjJkMTg4ZTVjYjhkIDEwMDY0NAo+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuYwo+ID4gQEAgLTczOCw2ICs3MzgsNyBAQCBzdGF0aWMgdm9pZCBpOTE1X2Ry
aXZlcl91bnJlZ2lzdGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKPiA+ICAg
ICAgICAqIGV2ZW50cy4KPiA+ICAgICAgICAqLwo+ID4gICAgICAgZHJtX2ttc19oZWxwZXJfcG9s
bF9maW5pKCZkZXZfcHJpdi0+ZHJtKTsKPiA+ICsgICAgIGRybV9hdG9taWNfaGVscGVyX3NodXRk
b3duKCZkZXZfcHJpdi0+ZHJtKTsKPiAKPiBMb29rcyBsaWtlIHdlIGFscmVhZHkgaGF2ZSB0aGlz
IGluIHJlbW92ZSgpLiBJcyB0aGF0IHRvbyBsYXRlPwoKRm9yIHRoZSBvcGVyYXRpb25zIHdlIGRv
IGR1cmluZyB1bmJpbmQsIHllcy4KCkZvciB0aGUgY29yZV9ob3RwbHVnL3JlYmluZCBkYW5jZSwg
d2UgaGF2ZSB0byByZXNldCB0aGUgR1BVIHdoaWxlIHdlCnN0aWxsIGhhdmUgcnVudGltZS1wbSBv
cGVyYXRpb25hbCBhbmQgaGF2ZSBwdXNoZWQgdGhlIHJlc2V0IHRvCnVucmVnaXN0ZXIgKGZyb20g
ZXhwZXJpbWVudGF0aW9uIHRoYXQncyBhcyBsYXRlIGFzIHdlIGNhbiBwdXQgaXQgd2hlcmUKdGhl
IEdQVSB3b3JrcyBhZnRlciByZWJpbmRpbmcgYW5kIHdlIGRvbid0IGNvcnJ1cHQgdGhlIHN5c3Rl
bSBvbiB1bmJpbmQsCndpdGggdGhlIGN1cnJlbnQgaG9va3MpLiBZb3UgY2FuIGd1ZXNzIGhvdyB3
ZWxsIGdlbjMgbGlrZXMgdGhhdC4KCkJ1dCBJIGRvbid0IHRoaW5rIHRoZSByaWdodCBhbnN3ZXIg
aXMgdG8gc2tpcCB0aGUgcmVzZXQgZm9yIGdlbjMuClN1cHBvc2Ugd2UgZW5hYmxlIGNvbnRleHQg
c3VwcG9ydCBmb3IgZ2VuMywgdGhlbiB0aGUgcmVzZXQgd291bGQgYmUKcmVxdWlyZWQgYXMgd2Vs
bCwgYW5kIHNvIHdlIHdvdWxkIHN0aWxsIG5lZWQgdGhlIHdob2xlIGRpc3BsYXkKc2hlbmFuaWdh
bnMgdG8gdHVybiBpdCBvZmYuIE1vdmluZyB0aGUgbW9kZXNldCB0byB0dXJuIHRoZSBkaXNwbGF5
IG9mZgp0byB0aGUgZW5kIG9mIHVzZXJzcGFjZSBzZWVtcyByZWFzb25hYmxlLgotQ2hyaXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
