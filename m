Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D4C10403E
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 17:02:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4DBC6E78A;
	Wed, 20 Nov 2019 16:02:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92C236E78A
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 16:02:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19273976-1500050 for multiple; Wed, 20 Nov 2019 16:02:39 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191120134113.3777499-1-chris@chris-wilson.co.uk>
 <0635e1d3-79c5-621a-faa5-b850386297eb@linux.intel.com>
In-Reply-To: <0635e1d3-79c5-621a-faa5-b850386297eb@linux.intel.com>
Message-ID: <157426575648.13839.14923384484472849836@skylake-alporthouse-com>
Date: Wed, 20 Nov 2019 16:02:36 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Reduce flush_ggtt() from a
 wait-for-idle to a mere barrier flush
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

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMS0yMCAxNTo1ODo0OSkKPiAKPiBPbiAyMC8x
MS8yMDE5IDEzOjQxLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBTaW5jZSB3ZSB1c2UgYmFycmll
cnMsIHdlIG5lZWQgb25seSBleHBsaWNpdGx5IGZsdXNoIHRob3NlIGJhcnJpZXJzIHRvCj4gPiBl
bnN1cmUgdGhhIHdlIGNhbiByZWNsYWltIHRoZSBhdmFpbGFibGUgZ2d0dCBmb3Igb3Vyc2VsdmVz
LiBUaGUgYmFycmllcgo+ID4gZmx1c2ggd2FzIGltcGxpY2l0IGluc2lkZSB0aGUgaW50ZWxfZ3Rf
d2FpdF9mb3JfaWRsZSgpIC0tIGV4Y2VwdCBiZWNhdXNlCj4gPiB3ZSB1c2UgaTkxNV9nZW1fZXZp
Y3QgZnJvbSBpbnNpZGUgYW4gYWN0aXZlIHRpbWVsaW5lIGR1cmluZyBleGVjYnVmLCB3ZQo+ID4g
Y291bGQgZWFzaWx5IGVuZCB1cCB3YWl0aW5nIHVwb24gb3Vyc2VsdmVzLgo+ID4gCj4gPiBGaXhl
czogNzkzNmEyMmRkNDY2ICgiZHJtL2k5MTUvZ3Q6IFdhaXQgZm9yIG5ldyByZXF1ZXN0cyBpbiBp
bnRlbF9ndF9yZXRpcmVfcmVxdWVzdHMoKSIpCj4gPiBGaXhlczogYTQ2YmZkYzgzZmVlICgiZHJt
L2k5MTUvZ3Q6IFdhaXQgZm9yIG5ldyByZXF1ZXN0cyBpbiBpbnRlbF9ndF9yZXRpcmVfcmVxdWVz
dHMoKSIpCj4gPiBUZXN0Y2FzZTogaWd0L2dlbV9leGVjX3JlbG9jL2Jhc2ljLXJhbmdlCj4gCj4g
QnVnemlsbGE6ID8KCkl0J3MgYmVlbiBpbiBDSSBzaW5jZSBiZWZvcmUgdGhlIHcvZSAodGhlIHRl
c3QgaXRzZWxmIGlzIG11Y2gsIG11Y2gKb2xkZXIpLCBJIGd1ZXNzIGl0IGhhc24ndCBiZWVuIHZl
dHRlZCB5ZXQgYXMgbm8gYnVnIGhhcyBiZWVuIGZpbGVkLgogCj4gVGhpcyB0ZXN0IGdldHMgcGVy
bWFuZW50bHkgc3R1Y2sgb24gc29tZSBwbGF0Zm9ybXM/CgpBbGwgIWZ1bGwtcHBndHQgcGxhdGZv
cm1zLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
