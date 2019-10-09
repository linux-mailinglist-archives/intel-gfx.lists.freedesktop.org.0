Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F60D105E
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 15:40:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6C9C89AF3;
	Wed,  9 Oct 2019 13:40:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 749B389AF3
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 13:40:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18778222-1500050 for multiple; Wed, 09 Oct 2019 14:40:23 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191009064224.25348-1-chris@chris-wilson.co.uk>
 <f81948d2-c2f1-3ed7-6949-cf6376c31ad9@intel.com>
 <157062513722.18808.4229271875352720814@skylake-alporthouse-com>
 <b1e31605-cdbc-ac57-9112-5aaf2995accd@intel.com>
In-Reply-To: <b1e31605-cdbc-ac57-9112-5aaf2995accd@intel.com>
Message-ID: <157062842201.18808.5895278051708134552@skylake-alporthouse-com>
Date: Wed, 09 Oct 2019 14:40:22 +0100
Subject: Re: [Intel-gfx] [PATCH v2 1/9] drm/i915/perf: store the associated
 engine of a stream
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0xMC0wOSAxNDozNDo0OSkKPiBPbiAwOS8x
MC8yMDE5IDE1OjQ1LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBRdW90aW5nIExpb25lbCBMYW5k
d2VybGluICgyMDE5LTEwLTA5IDEzOjQzOjMyKQo+ID4+IERvIHlvdSBoYXZlIGJyYW5jaCBzb21l
d2hlcmUgd2l0aCB0aGlzIHNlcmllcz8KPiA+IGh0dHBzOi8vY2dpdC5mcmVlZGVza3RvcC5vcmcv
fmlja2xlL2xpbnV4LTIuNi9sb2cvP2g9d2lwLXBlcmYKPiA+IC1DaHJpcwo+ID4KPiBDaGVlcnMs
Cj4gCj4gCj4gSSd2ZSBtb2RpZmllZCB0aGUgdG9wIHBhdGNoIHRvIHNldCB0aGUgbm9wcmVlbXB0
IGZsYWcgZm9yIGFzIGxvbmcgYXMgdGhlIAo+IGNvbnRleHQgaGFzIGJlZW4gZmxhZ2dlZCAoYXMg
bG9uZyBhdCB0aGUgcGVyZiBzdHJlYW0gaXMgb3BlbmVkKSA6IAo+IGh0dHBzOi8vZ2l0aHViLmNv
bS9kamRlYXRoL2xpbnV4L2NvbW1pdC9kMzMyN2IzMGM2MTQxZmFjOThhM2Q0NmYzMzk4Yzg3ZmU3
MDk3NmFhCgpUaGF0IG1lYW5zIHlvdSBhcmUgbm90IHBhc3NpbmcgaW4gdGhlIGV4dF9wZXJmX2Nv
bmZpZyB0byBldmVyeSBiYXRjaCB0aGF0CmlzIHVzaW5nIGl0LCByaWdodD8gVGhlIG9hX2NvbmZp
ZyB0cmFja2luZyBhbHNvIGhpbmdlcyBvbiB0aGF0IHlvdSBkby4KLUNocmlzCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
