Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 63ECB21FE9C
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 22:33:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A43D56E903;
	Tue, 14 Jul 2020 20:33:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4837A6E903
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 20:32:58 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21820246-1500050 for multiple; Tue, 14 Jul 2020 21:32:55 +0100
MIME-Version: 1.0
In-Reply-To: <20200714201945.18959-1-ville.syrjala@linux.intel.com>
References: <20200714185128.18616-1-ville.syrjala@linux.intel.com>
 <20200714201945.18959-1-ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jul 2020 21:32:54 +0100
Message-ID: <159475877439.3188.13441765978982805094@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/fbc: Limit cfb to the first
 256MiB of stolen on g4x+
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTA3LTE0IDIxOjE5OjQ1KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gU2luY2UgZzR4
IHRoZSBDRkIgYmFzZSBvbmx5IHRha2VzIGEgMjhiaXQgb2Zmc2V0IGludG8gc3RvbGVuLgo+IE5v
dCBzdXJlIGlmIHRoZSBDRkIgaXMgYWxsb3dlZCB0byBzdGFydCBiZWxvdyB0aGF0IGxpbWl0IGJ1
dAo+IHRoZW4gZXh0ZW5kIGJleW9uZCBpdC4gTGV0J3MgYXNzdW1lIG5vdCBhbmQganVzdCByZXN0
cmljdCB0aGUKPiBhbGxvY2F0aW9uIHRvIHRoZSBmaXJzdCAyNTZNaUIgKGluIHRoZSB1bmxpa2Vs
eSBjYXNlCj4gd2UgaGF2ZSBtb3JlIHN0b2xlbiB0aGFuIHRoYXQpLgo+IAo+IHYyOiBzL0JJVC9C
SVRfVUxMLyAoQ2hyaXMpCj4gCj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZmJjLmMgfCAxMCArKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25z
KCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZmJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCj4gaW5kZXgg
ODU3MjNmYmE2MDAyLi4zYTRmOTgwNzg4YTYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZmJjLmMKPiBAQCAtNDI0LDYgKzQyNCwxNCBAQCBzdGF0aWMgdm9pZCBpbnRl
bF9mYmNfZGVhY3RpdmF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCj4gICAg
ICAgICBmYmMtPm5vX2ZiY19yZWFzb24gPSByZWFzb247Cj4gIH0KPiAgCj4gK3N0YXRpYyB1NjQg
aW50ZWxfZmJjX2NmYl9iYXNlX21heChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiAr
ewo+ICsgICAgICAgaWYgKElOVEVMX0dFTihpOTE1KSA+PSA1IHx8IElTX0c0WChpOTE1KSkKPiAr
ICAgICAgICAgICAgICAgcmV0dXJuIEJJVF9VTEwoMjgpOwo+ICsgICAgICAgZWxzZQo+ICsgICAg
ICAgICAgICAgICByZXR1cm4gQklUX1VMTCgzMik7Cj4gK30KCkNvbmZpcm1lZCB0aGF0IGlsayB1
c2VzIDIzOjEyLiBJIHRydXN0IGc0eCBpcyB0aGUgc2FtZS4KUmV2aWV3ZWQtYnk6IENocmlzIFdp
bHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKSSBkaWRuJ3QgZmluZCB0aGUgb3RoZXJz
IHF1aWNrbHksIGJ1dCBpdCdzIG5vdCBnb2luZyB0byBoYXJtLgotQ2hyaXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
