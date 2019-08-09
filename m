Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A15D387E0E
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 17:33:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 637DF6EE2D;
	Fri,  9 Aug 2019 15:33:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 598206EE2D
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Aug 2019 15:33:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17945219-1500050 for multiple; Fri, 09 Aug 2019 16:33:25 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190809145653.2279-1-mika.kuoppala@linux.intel.com>
In-Reply-To: <20190809145653.2279-1-mika.kuoppala@linux.intel.com>
Message-ID: <156536480257.32306.13043209175178774509@skylake-alporthouse-com>
Date: Fri, 09 Aug 2019 16:33:22 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Extend non readable mcr range
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

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTA5IDE1OjU2OjUzKQo+IE91ciBjdXJyZW50
IGF2b2lkYW5jZSBvZiBub24gcmVhZGFibGUgbWNyIHJhbmdlIHdhcyBub3QKPiBpbmNsdXNpdmUg
ZW5vdWdoLiBFeHRlbmQgdGhlIHN0YXJ0IGFuZCBlbmQuCj4gCj4gUmVmZXJlbmNlczogSFNERVMj
MTQwNTU4Njg0MAo+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29t
Pgo+IFNpZ25lZC1vZmYtYnk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50
ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fy
b3VuZHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKPiBp
bmRleCA3MDRhY2UwMWU3ZjUuLmViMDNjZDUwN2IyOCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+IEBAIC0xNDM0LDcgKzE0MzQsNyBAQCBzdGF0
aWMgYm9vbCBtY3JfcmFuZ2Uoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIHUzMiBvZmZz
ZXQpCj4gICAgICAgICAgKiB3aGljaCBvbmx5IGNvbnRyb2xzIENQVSBpbml0aWF0ZWQgTU1JTy4g
Um91dGluZyBkb2VzIG5vdAo+ICAgICAgICAgICogd29yayBmb3IgQ1MgYWNjZXNzIHNvIHdlIGNh
bm5vdCB2ZXJpZnkgdGhlbSBvbiB0aGlzIHBhdGguCj4gICAgICAgICAgKi8KPiAtICAgICAgIGlm
IChJTlRFTF9HRU4oaTkxNSkgPj0gOCAmJiAob2Zmc2V0ID49IDB4YjEwMCAmJiBvZmZzZXQgPD0g
MHhiM2ZmKSkKPiArICAgICAgIGlmIChJTlRFTF9HRU4oaTkxNSkgPj0gOCAmJiAob2Zmc2V0ID49
IDB4YjAwMCAmJiBvZmZzZXQgPD0gMHhiNGZmKSkKPiAgICAgICAgICAgICAgICAgcmV0dXJuIHRy
dWU7CgpPaywgSSBoYXZlbid0IGZvdW5kIHdoZXJlIHRoaXMgcmFuZ2UgaXMgc3BlbGxlZCBvdXQs
IGJ1dCBJIGhhdmUgZm91bmQKZXhhbXBsZXMgb3V0c2lkZSB0aGUgcHJldmlvdXMgcmFuZ2U7IGFu
ZCBiMDAwIGdldHMgcmVmZXJyZWQgdG8gYXMgdGhlCmJhc2UuCgpBY2tlZC1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
