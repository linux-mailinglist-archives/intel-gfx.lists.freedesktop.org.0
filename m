Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F12B656C59
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 16:40:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 404EB6E427;
	Wed, 26 Jun 2019 14:40:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8811C6E427
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 14:40:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17032478-1500050 for multiple; Wed, 26 Jun 2019 15:39:34 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190626143618.21800-2-jani.nikula@intel.com>
References: <20190626143618.21800-1-jani.nikula@intel.com>
 <20190626143618.21800-2-jani.nikula@intel.com>
Message-ID: <156155997026.26855.10424137943323276210@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 26 Jun 2019 15:39:30 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: add header search path to
 subdir Makefiles
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wNi0yNiAxNTozNjoxOCkKPiBXaXRoIHRoZSBzdWJk
aXJlY3RvcmllcyB3ZSBsb3N0IHRoZSBhYmlsaXR5IHRvIGJ1aWxkIGluZGl2aWR1YWwgZmlsZXMg
b24KPiB0aGUgY29tbWFuZCBsaW5lLCBmb3IgZXhhbXBsZToKPiAKPiAkIG1ha2UgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5Lm8KPiAKPiBUaGlzIHdhcyBkdWUgdG8g
dGhlIHRvcCBsZXZlbCBkaXJlY3RvcnkgbWlzc2luZyBmcm9tIGhlYWRlciBzZWFyY2gKPiBwYXRo
LiBBZGQgdGhlIGhlYWRlciBzZWFyY2ggcGF0aHMgdG8gc3ViZGlyIE1ha2VmaWxlcy4KPiAKPiBO
b3RlIHRoYXQgbm9uZSBvZiB0aGUgb3RoZXIgb3B0aW9ucyBpbiB0aGUgdG9wIGxldmVsIGk5MTUg
TWFrZWZpbGUgYXJlCj4gdGFrZW4gaW50byBhY2NvdW50IHdoZW4gYnVpbGRpbmcgaW5kaXZpZHVh
bCBmaWxlcy4gVXN1YWxseSB0aGlzIGlzIG5vdCBhCj4gY29uY2Vybi4KPiAKPiBSZXBvcnRlZC1i
eTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgo+IFJlcG9ydGVkLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3Vs
YSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L01ha2VmaWxlIHwgMyArKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL01ha2Vm
aWxlICAgICB8IDYgKysrKystCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L01ha2VmaWxlICAg
ICAgfCAzICsrKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDEgZGVsZXRp
b24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9NYWtl
ZmlsZSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvTWFrZWZpbGUKPiBpbmRleCAxYzc1
YjVjOTc5MGMuLmVlYzY5NjEwMTVhMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L01ha2VmaWxlCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9N
YWtlZmlsZQo+IEBAIC0xLDIgKzEsNSBAQAo+ICsjIEZvciBidWlsZGluZyBpbmRpdmlkdWFsIHN1
YmRpciBmaWxlcyBvbiB0aGUgY29tbWFuZCBsaW5lCj4gK3N1YmRpci1jY2ZsYWdzLXkgKz0gLUkk
KHNyY3RyZWUpLyQoc3JjKS8uLgoKV2UgY291bGQgc3RpY2sgaXQgaW4gYSBjb21tb24gaGVhZGVy
LmluY2x1ZGUgYnV0IGhlcmUncyBob3BpbmcgdGhpcyBpcwphbGwgcmVwbGFjZWQgYnkgc29tZXRo
aW5nIGJldHRlciwKClJldmlld2VkLWJ5IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
