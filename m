Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8E634336F
	for <lists+intel-gfx@lfdr.de>; Sun, 21 Mar 2021 17:28:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 232FF89B98;
	Sun, 21 Mar 2021 16:28:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50BEC89B98
 for <intel-gfx@lists.freedesktop.org>; Sun, 21 Mar 2021 16:28:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 24184722-1500050 for multiple; Sun, 21 Mar 2021 16:28:07 +0000
MIME-Version: 1.0
In-Reply-To: <20210321161038.9329-1-ville.syrjala@linux.intel.com>
References: <20210321161038.9329-1-ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Sun, 21 Mar 2021 16:28:07 +0000
Message-ID: <161634408760.31629.1053248022479151885@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Avoid div-by-zero on gen2
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIxLTAzLTIxIDE2OjEwOjM4KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gR2VuMiB0aWxl
cyBhcmUgMktpQiBpbiBzaXplIHNvIGk5MTVfZ2VtX29iamVjdF9nZXRfdGlsZV9yb3dfc2l6ZSgp
Cj4gY2FuIGluIGZhY3QgcmV0dXJuIDw0S2lCLCB3aGljaCBsZWFkcyB0byBkaXYtYnktemVybyBo
ZXJlLgo+IEF2b2lkIHRoYXQuCgpTbyBsb25nIGFzIHdlIG92ZXJlc3RpbWF0ZSBpdCBpcyBmaW5l
LCBzaW5jZSB3ZSBvbmx5IGNhcmUgdG8gZmluZCBhCnN1aXRhYmx5IHNtYWxsIGNodW5rIHRoYXQg
aXMgbGFyZ2UgZW5vdWdoLiBJIHRob3VnaHQgaXQgd2FzCm92ZXJlc3RpbWF0aW5nLCBvaCB3ZWxs
LgogCj4gTm90IHN1cmUgaTkxNV9nZW1fb2JqZWN0X2dldF90aWxlX3Jvd19zaXplKCkgaXMgZW50
aXJlbHkKPiBzYW5lIGFueXdheSBzaW5jZSBpdCBkb2Vzbid0IGFjY291bnQgZm9yIHRoZSBkaWZm
ZXJlbnQgdGlsZQo+IGxheW91dHMgb24gaTh4eC9pOTE1Li4uCgpJdCBzaG91bGQgbm90IG1hdHRl
ciBzbyBsb25nIGFzIHdlIHBpY2sgYSBjb21tb24gZGl2aXNvciwgc3VpdGFibGUgZm9yCnRoZSBm
ZW5jZSByZWdpc3Rlci4KIAo+IEknbSBub3QgYWJsZSB0byBoaXQgdGhpcyBiZWZvcmUgY29tbWl0
IDY4NDY4OTVmZGUwNSAoImRybS9pOTE1Ogo+IFJlcGxhY2UgUElOX05PTkZBVUxUIHdpdGggY2Fs
bHMgdG8gUElOX05PRVZJQ1QiKSBhbmQgaXQgbG9va3MKPiBsaWtlIEkgYWxzbyBuZWVkIHRvIHJ1
biByZWNlbnQgdmVyc2lvbiBvZiBNZXNhLiBXaXRoIHRob3NlIGluCj4gcGxhY2UgeG9ub3RpYyB0
cmlwcyBvbiB0aGlzIHF1aXRlIGVhc2lseSBvbiBteSA4NXguCgpOT0VWSUNUIHdpbGwgbWFrZSBp
dCBtdWNoIGxlc3MgZWFnZXIgdG8gcmVtb3ZlIG9sZGVyIGJpbmRpbmdzLCB3aXRoIHRoZQpwcmVm
ZXJlbmNlIHRoZW4gdG8gdXNlIHNtYWxsZXIgdmlld3Mgb2Ygb2JqZWN0cy4gVGhlIHRoZW9yeSBi
ZWluZyB0aGF0CnRoZSB3b3JraW5nc2V0IGlzIGxlc3MgdGhhbiB0aGUgd2hvbGUgb2JqZWN0LCBz
byB3ZSBjYW4gZml0IG1vcmUgYWN0aXZlCnBhZ2VzIGluIGFuZCBjYXVzZSBsZXNzIHRocmFzaGlu
ZyB3aGVuIG1vdmluZyB0aGUgdW51c2VkIHBhZ2VzIGFyb3VuZAppbiB0aGUgR1RULgoKPiBDYzog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gU2lnbmVkLW9mZi1ieTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyB8IDIgKy0KPiAgMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9nZW0vaTkxNV9nZW1fbW1hbi5jCj4gaW5kZXggZWMyOGE2Y2RlNDliLi4wYjI0MzRl
MjlkMDAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21t
YW4uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKPiBA
QCAtMTg5LDcgKzE4OSw3IEBAIGNvbXB1dGVfcGFydGlhbF92aWV3KGNvbnN0IHN0cnVjdCBkcm1f
aTkxNV9nZW1fb2JqZWN0ICpvYmosCj4gICAgICAgICBzdHJ1Y3QgaTkxNV9nZ3R0X3ZpZXcgdmll
dzsKPiAgCj4gICAgICAgICBpZiAoaTkxNV9nZW1fb2JqZWN0X2lzX3RpbGVkKG9iaikpCj4gLSAg
ICAgICAgICAgICAgIGNodW5rID0gcm91bmR1cChjaHVuaywgdGlsZV9yb3dfcGFnZXMob2JqKSk7
Cj4gKyAgICAgICAgICAgICAgIGNodW5rID0gcm91bmR1cChjaHVuaywgdGlsZV9yb3dfcGFnZXMo
b2JqKSA/OiAxKTsKCkkgd2FzIHRoaW5raW5nIHRoZSBhbnN3ZXIgd291bGQgYmUgdG8gYWxpZ24g
dG8gdGhlIG5leHQgcGFnZSwgYW5kIGhleQpwcmVzdG8hCgpSZXZpZXdlZC1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
