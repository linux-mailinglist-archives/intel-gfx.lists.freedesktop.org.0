Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39C9D992E6
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 14:10:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 740B06E4A6;
	Thu, 22 Aug 2019 12:10:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D20676E4A6
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 12:10:08 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18226673-1500050 for multiple; Thu, 22 Aug 2019 13:10:00 +0100
MIME-Version: 1.0
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <0f628a50-265b-5e4d-d7a9-fcdaa23e59eb@intel.com>
References: <20190821063236.19705-1-animesh.manna@intel.com>
 <20190821063236.19705-3-animesh.manna@intel.com>
 <156641109473.20466.6513229953597684165@skylake-alporthouse-com>
 <0f628a50-265b-5e4d-d7a9-fcdaa23e59eb@intel.com>
Message-ID: <156647579816.20466.12274548195324928413@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 22 Aug 2019 13:09:58 +0100
Subject: Re: [Intel-gfx] [PATCH v2 02/15] drm/i915/dsb: DSB context creation.
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBBbmltZXNoIE1hbm5hICgyMDE5LTA4LTIyIDEzOjA1OjA2KQo+IEhpLAo+IAo+IAo+
IE9uIDgvMjEvMjAxOSAxMTo0MSBQTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gUXVvdGluZyBB
bmltZXNoIE1hbm5hICgyMDE5LTA4LTIxIDA3OjMyOjIyKQo+ID4+ICsgICAgICAgdm1hID0gaTkx
NV9nZW1fb2JqZWN0X2dndHRfcGluKG9iaiwgTlVMTCwgMCwgMCwgUElOX01BUFBBQkxFKTsKPiA+
IE9ubHkgdGhpcyAoY3VycmVudGx5KSBzdGlsbCByZXF1aXJlcyBzdHJ1Y3RfbXV0ZXgKPiAKPiBT
dXJlIHdpbGwgYWRkLgo+ID4KPiA+IERvZXMgaXQgaGF2ZSB0byBtYXBwYWJsZT8gSXMgdGhhdCB0
aGUgSFcgY29uc3RyYWludD8KPiAKPiBZZXMsIGFzIHBlciBIVyBkZXNpZ24gbmVlZCBhIGNwdSBt
YXBwZWQgYnVmZmVyIHRvIHdyaXRlIG9wY29kZStkYXRhIGZyb20gCj4gZHJpdmVyLgoKUElOX01B
UFBBQkxFIHJlZmVycyB0byB0aGUgaW9tZW0gYXBlcnR1cmUgcG9ydGlvbiBvZiB0aGUgR2xvYmFs
IEdUVCAoaS5lLgp0aGUgbG93IDY0LTUxMk1pQikuIFlvdSBuZXZlciB1c2UgYSBHR1RUIG1tYXAg
Zm9yIHlvdXIgQ1BVIGFjY2Vzcywgc28gdGhlCnBsYWNlbWVudCBzaG91bGQgYmUgZW50aXJlbHkg
ZGljdGF0ZWQgYnkgdGhlIERTQiByZXF1aXJlbWVudHMuIElmIHlvdQpkb24ndCBuZWVkIHRvIGJl
IGluIHRoZSBsb3cgcmVnaW9uLCBkb24ndCBmb3JjZSBpdCB0byBiZSwgc28gd2UgaGF2ZQpsZXNz
IGNvbmdlc3Rpb24gZm9yIHRoZSBvYmplY3RzIHRoYXQgaGF2ZSB0byBiZSBwbGFjZWQgaW4gdGhh
dCByZWdpb24uCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
