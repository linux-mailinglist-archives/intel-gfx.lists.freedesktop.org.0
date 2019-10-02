Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C510DC8D7E
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Oct 2019 17:59:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E3D16E296;
	Wed,  2 Oct 2019 15:59:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F34706E296
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Oct 2019 15:59:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18695979-1500050 for multiple; Wed, 02 Oct 2019 16:59:06 +0100
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Petri Latvala <petri.latvala@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <7a564b60-8e4b-4fbe-81f0-eca7c0156cef@linux.intel.com>
References: <20191002124820.1862-1-janusz.krzysztofik@linux.intel.com>
 <7a564b60-8e4b-4fbe-81f0-eca7c0156cef@linux.intel.com>
Message-ID: <157003194278.1880.2353742909155500327@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Wed, 02 Oct 2019 16:59:02 +0100
Subject: Re: [Intel-gfx] [RFC PATCH] drm/i915/debugfs: Only wedge if we have
 reset available
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0wMiAxNjo0NToxOCkKPiAKPiBPbiAwMi8x
MC8yMDE5IDEzOjQ4LCBKYW51c3ogS3J6eXN6dG9maWsgd3JvdGU6Cj4gPiBJZiB3ZSBwcm9jZXNz
IERST1BfUkVTRVRfQUNUSVZFIGFuZCBjYW5jZWwgYWxsIG91dHN0YW5kaW5nIHJlcXVlc3RzIGJ5
Cj4gPiBmb3JjaW5nIGEgR1BVIHJlc2V0IG9uIGEgaGFyZHdhcmUgd2l0aCByZXNldCBjYXBhYmls
aXRpZXMgZGlzYWJsZWQgb3IKPiA+IG5vdCBzdXBwb3J0ZWQsIHdlIGNlcnRhaW5seSBlbmQgdXAg
d2l0aCBhIHRlcm1pbmFsbHkgd2VkZ2VkIEdQVSwKPiA+IGltcG9zc2libGUgdG8gcmVjb3Zlci4g
IFRoYXQncyBwcm9iYWJseSBub3Qgd2hhdCB3ZSB3YW50Lgo+IAo+IEkgZm9yZ290IHRoZSB3aG9s
ZSBiYWNrZ3JvdW5kIHN0b3J5IGhlcmUgSSdtIGFmcmFpZC4gSXMgdGhlIGNvbmNlcm4gaGVyZSAK
PiB0aGUgSUdUIGV4aXQgaGFuZGxlciBjYWxsaW5nIERST1BfUkVTRVRfQUNUSVZFPyBJZiBzbyB3
aXRoIHRoaXMgcGF0Y2ggaXQgCj4gd2lsbCBmYWlsIHdpdGggLUVCVVNZLCB3aGljaCBjb3VsZCBi
ZSBmaW5lLCBidXQgd2hhdCBoYXBwZW5zIGZyb20gdGhlIAo+IHBlcnNwZWN0aXZlIG9mIG5leHQg
dGVzdCB3aGljaCBnZXRzIHRvIHJ1bj8gSXQgd29uJ3QgZmluZCBhIHdlZGdlZCBHUFUsIAo+IGJ1
dCB3aWxsIGVuY291bnRlciBhIHBvc3NpYmx5IG5vbmRldGVybWluaXN0aWMgYW1vdW50IG9mIEdQ
VSB3b3JrIAo+IHNjaGVkdWxlZCBiZWZvcmUgaXQsIG5vPwoKWWVzLCB0aGF0IGlzIHRoZSBjb251
bmRydW0uIElmIHRoZSB0ZXN0IGxlZnQgd29yayBvdXRzdGFuZGluZywgYW5kIGluIGEKZmV3IGNh
c2VzLCB3ZSBleHBsaWNpdGx5IHJlbHkgb24gdGhlIHJlc2V0IGhlcmUgdG8gY2FuY2VsIHBlcnNp
c3RlbnQKKHVuYm91bmQgbm9ucHJlZW1wdGlibGUgc3Bpbm5lcnMpIHdvcmssIHRoZW4gaXQgd2ls
bCBjYXVzZSB0aGUgbmV4dAp0ZXN0LCB3aGVyZSBkcm1fZHJpdmVyX29wZW4oRFJNX0lOVEVMKSBj
YWxscyBnZW1fcXVpZXNjZW50X2dwdSgpLAp0byB3YWl0IHVudGlsIGV2ZW50dWFsbHkgaXQgaXMg
d2VkZ2VkLiBUaGVyZSdzIGEgZ29vZCBjaGFuY2UgdGhhdCBuZXh0CnRlc3Qgd2lsbCB0aGVuIGZh
aWwgYmVjYXVzZSBpdCBkb2Vzbid0IGhhbmRsZSB0aGUgd2VkZ2VkIGdwdS4KClRoZSBhbHRlcm5h
dGl2ZSB3b3VsZCBiZSB0byB3ZWRnZSBoZXJlLCB0YWludCBhbmQgcmVib290LiBUaGVuCmhvcGVm
dWxseSByZXN1bWUgdGVzdGluZyBhdCB0aGUgbmV4dCB0ZXN0IHdpdGggdmFuaWxsYSBzdGF0ZS4K
LUNocmlzCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
