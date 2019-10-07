Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E3ECED11
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 21:58:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EA5E6E51B;
	Mon,  7 Oct 2019 19:58:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 161F16E750
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 19:58:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18756576-1500050 for multiple; Mon, 07 Oct 2019 20:58:14 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20191007175435.GE17892@intel.com>
In-Reply-To: <20191007175435.GE17892@intel.com>
Message-ID: <157047829270.5063.13745200253514227199@skylake-alporthouse-com>
Date: Mon, 07 Oct 2019 20:58:12 +0100
Subject: Re: [Intel-gfx] Fixes which failed clean cherry-pick to
 drm-intel-fixes
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

UXVvdGluZyBSb2RyaWdvIFZpdmkgKDIwMTktMTAtMDcgMTg6NTQ6MzUpCj4gSGkgQ2hyaXMsCj4g
Cj4gNCBvZiB5b3VyIGZpeGVzIGZhaWxlZCB0aGUgY2xlYW4gY2hlcnJ5LXBpY2sgb2YgZHJtLWlu
dGVsLWZpeGVzLgo+IAo+IGI2NDdjN2RmMDFiNyAoImRybS9pOTE1OiBGaXh1cCBwcmVlbXB0LXRv
LWJ1c3kgdnMgcmVzdWJtaXNzaW9uIG9mIGEgdmlydHVhbCByZXF1ZXN0IikKPiBjYjIzNzdhOTE5
YmIgKCJkcm0vaTkxNTogRml4dXAgcHJlZW1wdC10by1idXN5IHZzIHJlc2V0IG9mIGEgdmlydHVh
bCByZXF1ZXN0IikKPiBhNDMxMTc0NWJiYTkgKCJkcm0vaTkxNS91c2VycHRyOiBOZXZlciBhbGxv
dyB1c2VycHRyIGludG8gdGhlIG1hcHBhYmxlIEdHVFQiKQo+IDI5MzVlZDUzMzljNCAoImRybS9p
OTE1OiBSZW1vdmUgbG9naWNhbCBIVyBJRCIpCj4gCj4gSXMgYW55b25lIG9mIHRob3NlIGNyaXRp
Y2FsPwo+IElmIHNvLCBjb3VsZCB5b3UgcGxlYXNlIHByb3ZpZGUgYSB2ZXJzaW9uIGZvciBkcm0t
aW50ZWwtZml4ZXM/CgpTZWUgaHR0cHM6Ly9jZ2l0LmZyZWVkZXNrdG9wLm9yZy9+aWNrbGUvbGlu
dXgtMi42L2xvZy8/aD1kaWYKCkkndmUgbm90IGJvdGhlcmVkIHdpdGggMjkzNWVkNTMzOWM0LCB0
aGF0IHNlZW1zIG1vcmUgaGFzc2xlIHRoYW4gSSBjYXJlCmZvciBhdG0uIFRoZSByaXNrIGlzIG9u
bHkgaWYgcGVvcGxlIGFkb3B0IEk5MTVfQ09OVEVYVF9QQVJBTV9TRVRfRU5HSU5FCmFuZCB1c2Ug
aXQgaW4gbm92ZWwgd2F5cyBhbmQgc3RpbGwgdGhlIEhXIG1heSBub3Qgbm90aWNlLiBTbyB3ZSBh
cmUKcHJvYmFibHkgZ29pbmcgdG8gZ2V0IHRoZSBuZXh0IGtlcm5lbCBvdXQgYmVmb3JlIHBlb3Bs
ZSBub3RpY2UgYW55CmJyZWFrYWdlLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
