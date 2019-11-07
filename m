Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9AFF3540
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 18:01:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B14C6F74F;
	Thu,  7 Nov 2019 17:01:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD6006F74F
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 17:01:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19118636-1500050 for multiple; Thu, 07 Nov 2019 17:01:16 +0000
MIME-Version: 1.0
To: Niranjan Vishwanathapura <niranjana.vishwanathapura@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191107160930.GH19940@nvishwa1-DESK.sc.intel.com>
References: <20191106091312.12921-1-chris@chris-wilson.co.uk>
 <20191107160930.GH19940@nvishwa1-DESK.sc.intel.com>
Message-ID: <157314607464.2228.12518419712996055704@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 07 Nov 2019 17:01:14 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Safely acquire the ctx->vm
 when copying
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBOaXJhbmphbiBWaXNod2FuYXRoYXB1cmEgKDIwMTktMTEtMDcgMTY6MDk6MzEpCj4g
T24gV2VkLCBOb3YgMDYsIDIwMTkgYXQgMDk6MTM6MTJBTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+ID5BcyB3ZSByZWFkIHRoZSBjdHgtPnZtIHVubG9ja2VkIGJlZm9yZSBjbG9uaW5nL2V4
cG9ydGluZywgd2Ugc2hvdWxkCj4gPnZhbGlkYXRlIG91ciByZWZlcmVuY2UgaXMgY29ycmVjdCBi
ZWZvcmUgcmV0dXJuaW5nIGl0LiBXZSBhbHJlYWR5IGRvIGZvcgo+ID5jbG9uZV92bSgpIGJ1dCB3
ZXJlIG5vdCBzbyBzdHJpY3QgYXJvdW5kIGdldF9wcGd0dCgpLgo+ID4KPiA+U2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPi0tLQo+ID4gZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyB8IDgwICsrKysrKysrKysr
LS0tLS0tLS0tLQo+ID4gMSBmaWxlIGNoYW5nZWQsIDQzIGluc2VydGlvbnMoKyksIDM3IGRlbGV0
aW9ucygtKQo+ID4KPiA+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9jb250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4
dC5jCj4gPmluZGV4IGRlNmU1NWFmODJjZi4uYTA2Y2M4ZTYzMjgxIDEwMDY0NAo+ID4tLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCj4gPisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKPiA+QEAgLTk5NSw2ICs5OTUs
MzggQEAgc3RhdGljIGludCBjb250ZXh0X2JhcnJpZXJfdGFzayhzdHJ1Y3QgaTkxNV9nZW1fY29u
dGV4dCAqY3R4LAo+ID4gICAgICAgcmV0dXJuIGVycjsKPiA+IH0KPiA+Cj4gPitzdGF0aWMgc3Ry
dWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqCj4gPitjb250ZXh0X2dldF92bV9yY3Uoc3RydWN0IGk5
MTVfZ2VtX2NvbnRleHQgKmN0eCkKPiA+K3sKPiA+KyAgICAgIGRvIHsKPiA+KyAgICAgICAgICAg
ICAgc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm07Cj4gPisKPiA+KyAgICAgICAgICAgICAg
dm0gPSByY3VfZGVyZWZlcmVuY2UoY3R4LT52bSk7Cj4gPisgICAgICAgICAgICAgIGlmICgha3Jl
Zl9nZXRfdW5sZXNzX3plcm8oJnZtLT5yZWYpKQo+ID4rICAgICAgICAgICAgICAgICAgICAgIGNv
bnRpbnVlOwo+IAo+IEJ1dCBzaG91bGQgd2UgY2hlY2sgZm9yIE5VTEwgdm0/Cj4gSSBrbm93IHRo
ZSBjYWxsZXJzIGFyZSBlbnN1cmluZyBjdHgtPnZtIHdpbGwgbm90IGJlIE5VTEwsIGJ1dCBqdXN0
IHdvbmRlcmluZy4KCldlIGRvbid0IG5lZWQgdG8gYXMgdGhlIHJ1bGUgaXMgdGhhdCBjdHgtPnZt
IG9uY2Ugc2V0IGNhbiBuZXZlciBiZQp1bnNldDsgYW5kIGl0IGNhbiBvbmx5IGJlIHNldCBkdXJp
bmcgY29uc3RydWN0aW9uIGJhc2VkIG9uIHRoZSBIVwpwcm9wZXJ0aWVzLiBUaGUgaWRlYSBpcyB0
aGF0ICEhY3R4LT52bSBpcyBhbiBpbnZhcmlhbnQgaW5kaWNhdGluZwp3aGV0aGVyIG9yIG5vdCB3
ZSBoYXZlIGZ1bGwtcHBndHQgZW5hYmxlZC4gRnJvbSBhIHNlY3VyaXR5IHBlcnNwZWN0aXZlLAph
bGxvd2luZyBhIGRvd25ncmFkZSBmcm9tIGZ1bGwtcHBndHQgdG8gYSBzaGFyZWQgZ2xvYmFsIGd0
dCBpcyBhIGJpZyBubywKc28gSSBkb24ndCBhbnRpY2lwYXRpbmcgdXMgYWxsb3dpbmcgc2V0dGlu
ZyBjdHgtPnZtIHRvIE5VTEwgYW55dGltZSBpbgp0aGUgbmVhciBmdXR1cmUgOikKCj4gPisKPiA+
KyAgICAgICAgICAgICAgLyoKPiA+KyAgICAgICAgICAgICAgICogVGhpcyBwcGd0dCBtYXkgaGF2
ZSBiZSByZWFsbG9jYXRlZCBiZXR3ZWVuCj4gPisgICAgICAgICAgICAgICAqIHRoZSByZWFkIGFu
ZCB0aGUga3JlZiwgYW5kIHJlYXNzaWduZWQgdG8gYSB0aGlyZAo+ID4rICAgICAgICAgICAgICAg
KiBjb250ZXh0LiBJbiBvcmRlciB0byBhdm9pZCBpbmFkdmVydGVudCBzaGFyaW5nCj4gPisgICAg
ICAgICAgICAgICAqIG9mIHRoaXMgcHBndHQgd2l0aCB0aGF0IHRoaXJkIGNvbnRleHQgKGFuZCBu
b3QKPiA+KyAgICAgICAgICAgICAgICogc3JjKSwgd2UgaGF2ZSB0byBjb25maXJtIHRoYXQgd2Ug
aGF2ZSB0aGUgc2FtZQo+ID4rICAgICAgICAgICAgICAgKiBwcGd0dCBhZnRlciBwYXNzaW5nIHRo
cm91Z2ggdGhlIHN0cm9uZyBtZW1vcnkKPiA+KyAgICAgICAgICAgICAgICogYmFycmllciBpbXBs
aWVkIGJ5IGEgc3VjY2Vzc2Z1bAo+ID4rICAgICAgICAgICAgICAgKiBrcmVmX2dldF91bmxlc3Nf
emVybygpLgo+ID4rICAgICAgICAgICAgICAgKgo+ID4rICAgICAgICAgICAgICAgKiBPbmNlIHdl
IGhhdmUgYWNxdWlyZWQgdGhlIGN1cnJlbnQgcHBndHQgb2Ygc3JjLAo+ID4rICAgICAgICAgICAg
ICAgKiB3ZSBubyBsb25nZXIgY2FyZSBpZiBpdCBpcyByZWxlYXNlZCBmcm9tIHNyYywgYXMKPiA+
KyAgICAgICAgICAgICAgICogaXQgY2Fubm90IGJlIHJlYWxsb2NhdGVkIGVsc2V3aGVyZS4KPiA+
KyAgICAgICAgICAgICAgICovCj4gCj4gQ29tbWVudCBzaG91bGQgYmUgbWFkZSBnZW5lcmljPyBJ
dCBpcyB0b28gc3BlY2lmaWMgdG8gY2xvbmluZyBjYXNlLgoKcy9zcmMvY3R4LwotQ2hyaXMKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
