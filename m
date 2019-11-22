Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C62106B9A
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 11:45:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C7C96F50F;
	Fri, 22 Nov 2019 10:45:57 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DE466F51C
 for <Intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 10:45:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19298394-1500050 for multiple; Fri, 22 Nov 2019 10:45:48 +0000
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191122104115.29610-1-tvrtko.ursulin@linux.intel.com>
References: <20191122104115.29610-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <157441954522.2524.15175834994487873198@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 22 Nov 2019 10:45:45 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/query: Align flavour of engine
 data lookup
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0yMiAxMDo0MToxNSkKPiBGcm9tOiBUdnJ0
a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IAo+IENvbW1pdCA3NTBlNzZi
NGY5ZjYgKCJkcm0vaTkxNS9ndDogTW92ZSB0aGUgW2NsYXNzXVtpbnN0XSBsb29rdXAgZm9yCj4g
ZW5naW5lcyBvbnRvIHRoZSBHVCIpIGNoYW5nZWQgdGhlIGVuZ2luZSBxdWVyeSB0byBpdGVyYXRl
IG92ZXIgdWFiaQo+IGVuZ2luZXMgYnV0IGxlZnQgdGhlIGJ1ZmZlciBzaXplIGNhbGN1bGF0aW9u
IGxvb2sgYXQgdGhlIHBoeXNpY2FsIGVuZ2luZQo+IGNvdW50LiBEaWZmZXJlbmNlIGhhcyBubyBw
cmFjdGljYWwgY29uc2VxdWVuY2UgYnV0IGl0IGlzIG5pY2VyIHRvIGFsaWduCj4gYm90aCBxdWVy
aWVzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBp
bnRlbC5jb20+Cj4gRml4ZXM6IDc1MGU3NmI0ZjlmNiAoImRybS9pOTE1L2d0OiBNb3ZlIHRoZSBb
Y2xhc3NdW2luc3RdIGxvb2t1cCBmb3IgZW5naW5lcyBvbnRvIHRoZSBHVCIpCj4gQ2M6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBEYW5pZWxlIENlcmFvbG8g
U3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgoKV2VsbCBzcG90dGVkLiBJ
IGd1ZXNzIEkndmUgbWlzc2VkIHNvbWUgb3RoZXIgUlVOVElNRV9JTkZPKCkuClJldmlld2VkLWJ5
OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLUNocmlzCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
