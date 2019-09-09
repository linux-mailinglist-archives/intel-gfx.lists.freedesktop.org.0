Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E486ADF7F
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 21:35:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 952B989913;
	Mon,  9 Sep 2019 19:34:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE57D89913
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 19:34:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18430790-1500050 for multiple; Mon, 09 Sep 2019 20:34:53 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190909171646.22090-1-matthew.auld@intel.com>
In-Reply-To: <20190909171646.22090-1-matthew.auld@intel.com>
Message-ID: <156805769086.28420.11381684690613646385@skylake-alporthouse-com>
Date: Mon, 09 Sep 2019 20:34:50 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: include GTT page-size info in
 error state
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDktMDkgMTg6MTY6NDYpCj4gSXQgbWlnaHQgcHJv
dmUgdXNlZnVsIGluIHRoZSBmdXR1cmUgdG8ga25vdyBpZiB0aGUgdm1hIGlzIHV0aWxpc2luZwo+
IGh1Z2UtR1RULXBhZ2VzLiBSZWxhdGVkIHRvIHRoaXMgaXMgdGhlIEdUVCBjYWNoZSwgd2hlcmUg
dGhlcmUgaXMgc29tZSBIVwo+ICJxdWlya2luZXNzIiB3aGVyZSBpdCBtdXN0IGJlIGRpc2FibGVk
IGlmIHVzaW5nIDJNIHBhZ2VzLCBzbyBpbmNsdWRlCj4gdGhhdCBmb3IgZ29vZCBtZWFzdXJlLgo+
IAo+IFN1Z2dlc3RlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Cj4gU2lnbmVkLW9mZi1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgo+
IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtLS0KPiBAQCAt
MTI3LDYgKzEyOCw3IEBAIHN0cnVjdCBpOTE1X2dwdV9zdGF0ZSB7Cj4gICAgICAgICAgICAgICAg
IHN0cnVjdCBkcm1faTkxNV9lcnJvcl9vYmplY3Qgewo+ICAgICAgICAgICAgICAgICAgICAgICAg
IHU2NCBndHRfb2Zmc2V0Owo+ICAgICAgICAgICAgICAgICAgICAgICAgIHU2NCBndHRfc2l6ZTsK
PiArICAgICAgICAgICAgICAgICAgICAgICB1MzIgZ3R0X3BhZ2Vfc2l6ZXM7CgpJIGtlZXAgd29u
ZGVyaW5nIGhvdyBsb25nIHVudGlsIHdlIG5lZWQgdW5zaWduZWQgbG9uZywgYnV0IHRoaXMgZml0
cwp3aXRoIHVuc2lnbmVkIGludCBwYWdlc19zaXplcy5ndHQKClJldmlld2VkLWJ5OiBDaHJpcyBX
aWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
