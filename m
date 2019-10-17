Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE1BDA7A5
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 10:43:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B10A66EA08;
	Thu, 17 Oct 2019 08:43:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5750C89BA9;
 Thu, 17 Oct 2019 08:43:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18866004-1500050 for multiple; Thu, 17 Oct 2019 09:42:53 +0100
MIME-Version: 1.0
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191017084001.w24h3lifh7ixdxe6@linutronix.de>
References: <20191017084001.w24h3lifh7ixdxe6@linutronix.de>
Message-ID: <157130177143.4427.332333033423727237@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 17 Oct 2019 09:42:51 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Don't disable interrupts
 independently of the lock
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
Cc: David Airlie <airlied@linux.ie>, Thomas Gleixner <tglx@linutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBTZWJhc3RpYW4gQW5kcnplaiBTaWV3aW9yICgyMDE5LTEwLTE3IDA5OjQwOjAxKQo+
IFRoZSBsb2NrcyAoYWN0aXZlLmxvY2sgYW5kIHJxLT5sb2NrKSBuZWVkIHRvIGJlIHRha2VuIHdp
dGggZGlzYWJsZWQKPiBpbnRlcnJ1cHRzLiBUaGlzIGlzIGRvbmUgaW4gaTkxNV9yZXF1ZXN0X3Jl
dGlyZSgpIGJ5IGRpc2FibGluZyB0aGUKPiBpbnRlcnJ1cHRzIGluZGVwZW5kZW50bHkgb2YgdGhl
IGxvY2tzIGl0c2VsZi4KPiBXaGlsZSBsb2NhbF9pcnFfZGlzYWJsZSgpK3NwaW5fbG9jaygpIGVx
dWFscyBzcGluX2xvY2tfaXJxKCkgb24gdmFuaWxsYQo+IGl0IGRvZXMgbm90IG9uIFBSRUVNUFRf
UlQuCj4gQ2hyaXMgV2lsc29uIGNvbmZpcm1lZCB0aGF0IGxvY2FsX2lycV9kaXNhYmxlKCkgd2Fz
IGp1c3QgaW50cm9kdWNlZCBhcwo+IGFuIG9wdGltaXNhdGlvbiB0byBhdm9pZCBlbmFibGluZy9k
aXNhYmxpbmcgaW50ZXJydXB0cyBkdXJpbmcKPiBsb2NrL3VubG9jayBjb21iby4KPiAKPiBFbmFi
bGUvZGlzYWJsZSBpbnRlcnJ1cHRzIGFzIHBhcnQgb2YgdGhlIGxvY2tpbmcgaW5zdHJ1Y3Rpb24u
Cj4gCj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IFNpZ25l
ZC1vZmYtYnk6IFNlYmFzdGlhbiBBbmRyemVqIFNpZXdpb3IgPGJpZ2Vhc3lAbGludXRyb25peC5k
ZT4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgot
Q2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
