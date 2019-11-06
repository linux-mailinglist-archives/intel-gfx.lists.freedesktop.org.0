Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 119CDF1177
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 09:53:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E1C06E198;
	Wed,  6 Nov 2019 08:53:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEEAB6E198
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Nov 2019 08:53:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19098267-1500050 for multiple; Wed, 06 Nov 2019 08:53:00 +0000
MIME-Version: 1.0
To: Niranjan Vishwanathapura <niranjana.vishwanathapura@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191106021641.GF19940@nvishwa1-DESK.sc.intel.com>
References: <20191106000205.22480-1-niranjana.vishwanathapura@intel.com>
 <20191106000205.22480-4-niranjana.vishwanathapura@intel.com>
 <157300060718.21573.2346937645489800091@skylake-alporthouse-com>
 <20191106021641.GF19940@nvishwa1-DESK.sc.intel.com>
Message-ID: <157303037798.18566.12503418453281213801@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 06 Nov 2019 08:52:58 +0000
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Use rcu_dereference for rcu
 protected pointer
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

UXVvdGluZyBOaXJhbmphbiBWaXNod2FuYXRoYXB1cmEgKDIwMTktMTEtMDYgMDI6MTY6NDIpCj4g
T24gV2VkLCBOb3YgMDYsIDIwMTkgYXQgMTI6MzY6NDdBTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+ID5RdW90aW5nIE5pcmFuamFuYSBWaXNod2FuYXRoYXB1cmEgKDIwMTktMTEtMDYgMDA6
MDI6MDUpCj4gPj4gJ2N0eFwtPnZtJyBpcyByY3UgcHJvdGVjdGVkLCBzbyB1c2UgcmN1X2RlcmVm
ZXJlbmNlIGluc2lkZQo+ID4+IHJlYWQgc2lkZSBjcml0aWNhbCBzZWN0aW9uLiBJdCBmaXhlcyBh
IHNwYXJzZSB3YXJuaW5nLgo+ID4+Cj4gPj4gQ2M6IENocmlzIFAgV2lsc29uIDxjaHJpcy5wLndp
bHNvbkBpbnRlbC5jb20+Cj4gPj4gU2lnbmVkLW9mZi1ieTogTmlyYW5qYW5hIFZpc2h3YW5hdGhh
cHVyYSA8bmlyYW5qYW5hLnZpc2h3YW5hdGhhcHVyYUBpbnRlbC5jb20+Cj4gPj4gLS0tCj4gPj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgfCA5ICsrKysrLS0t
LQo+ID4+ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+
ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9j
b250ZXh0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCj4g
Pj4gaW5kZXggZGU2ZTU1YWY4MmNmLi5kM2E2MjJmNjBmZDkgMTAwNjQ0Cj4gPj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwo+ID4+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKPiA+PiBAQCAtMTAwMiwxMiAr
MTAwMiwxMyBAQCBzdGF0aWMgaW50IGdldF9wcGd0dChzdHJ1Y3QgZHJtX2k5MTVfZmlsZV9wcml2
YXRlICpmaWxlX3ByaXYsCj4gPj4gICAgICAgICBzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2
bTsKPiA+PiAgICAgICAgIGludCByZXQ7Cj4gPj4KPiA+PiAtICAgICAgIGlmICghcmN1X2FjY2Vz
c19wb2ludGVyKGN0eC0+dm0pKQo+ID4+IC0gICAgICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsK
PiA+Cj4gPlRoaXMgaXMgY29ycmVjdGx5IHNlcmlhbGlzZWQgYnkgdGhlIGNhbGxlci4KPiAKPiBP
aywgaXMgdGhpcyB3b3J0aCBmaXhpbmcgdGhlIHNwYXJzZSB3YXJuaW5nPwoKICBDSEVDSyAgIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYzoyMDg3OjE3OiBlcnJvcjogYmFkIGludGVnZXIg
Y29uc3RhbnQgZXhwcmVzc2lvbgpkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29u
dGV4dC5jOjIwODg6MTc6IGVycm9yOiBiYWQgaW50ZWdlciBjb25zdGFudCBleHByZXNzaW9uCmRy
aXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmM6MjA4OToxNzogZXJyb3I6
IGJhZCBpbnRlZ2VyIGNvbnN0YW50IGV4cHJlc3Npb24KZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2NvbnRleHQuYzoyMDkwOjE3OiBlcnJvcjogYmFkIGludGVnZXIgY29uc3RhbnQg
ZXhwcmVzc2lvbgpkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jOjIw
OTE6MTc6IGVycm9yOiBiYWQgaW50ZWdlciBjb25zdGFudCBleHByZXNzaW9uCmRyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmM6MjA5MjoxNzogZXJyb3I6IGJhZCBpbnRl
Z2VyIGNvbnN0YW50IGV4cHJlc3Npb24KCk9kZC4KClN1cmUsIGZvciBjb3JyZWN0bmVzcyBzZWUg
Y2xvbmVfdm0oKS4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
