Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A81A331A97
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Jun 2019 10:45:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AF5E89235;
	Sat,  1 Jun 2019 08:45:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E6A889235
 for <intel-gfx@lists.freedesktop.org>; Sat,  1 Jun 2019 08:45:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16757237-1500050 for multiple; Sat, 01 Jun 2019 09:45:47 +0100
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190531222409.9177-2-daniele.ceraolospurio@intel.com>
References: <20190531222409.9177-1-daniele.ceraolospurio@intel.com>
 <20190531222409.9177-2-daniele.ceraolospurio@intel.com>
Message-ID: <155937874429.22493.5986487428021912405@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 01 Jun 2019 09:45:44 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: extract
 intel_display_power.h/c from intel_runtime_pm.h/c
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWxlIENlcmFvbG8gU3B1cmlvICgyMDE5LTA1LTMxIDIzOjI0OjA4KQo+IEtl
ZXAgYWxsIHRoZSBkZXZpY2UtbGV2ZWwgUE0gbWFuYWdlbWVudCBpbiBpbnRlbF9ydW50aW1lX3Bt
LmgvYyBhbmQgbW92ZQo+IGFsbCB0aGUgZGlzcGxheSBzcGVjaWZpYyBiaXRzIGludG8gdGhlaXIg
b3duIGZpbGUuIEFsc28gYWRkIHRoZSBuZXcKPiBoZWFkZXIgdG8gTWFrZWZpbGUuaGVhZGVyLXRl
c3QuCj4gCj4gQXBhcnQgZnJvbSB0aGUgZ2lhbnQgY29kZSBtb3ZlLCB0aGUgb25seSBkaWZmZXJl
bmNlIGlzIHdpdGggdGhlCj4gaW50ZWxfcnVudGltZV88Z2V0L3B1dD5fcmF3KCkgZnVuY3Rpb25z
LCB3aGljaCBhcmUgbm93IGV4cG9zZWQgaW4gdGhlCj4gaGVhZGVyLiBUaGUgX3B1dCgpIHZlcnNp
b24gaXMgYWxzbyBub3QgY29uZGl0aW9uYWxseSBjb21waWxlZCBhbnltb3JlCj4gc2luY2UgaXQg
aXMgb2sgdG8gYWx3YXlzIHBhc3MgdGhlIHdha2VyZWYgdGFrZW4gZnJvbSB0aGUgX2dldCgpIHRv
Cj4gX19pbnRlbF9ydW50aW1lX3BtX3B1dCAoaXQgaXMgLTEgaWYgdHJhY2tpbmcgaXMgZGlzYWJs
ZWQpLgo+IAo+IFN1Z2dlc3RlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5j
ZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+Cj4gQ2M6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KPiBDYzog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzogSmFu
aSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
