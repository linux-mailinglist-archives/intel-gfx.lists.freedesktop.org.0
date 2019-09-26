Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE80BF75C
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 19:12:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54DBD6EDA4;
	Thu, 26 Sep 2019 17:12:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4363B6EDA1;
 Thu, 26 Sep 2019 17:12:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18630400-1500050 for multiple; Thu, 26 Sep 2019 18:11:32 +0100
MIME-Version: 1.0
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190926105644.16703-3-bigeasy@linutronix.de>
References: <20190926105644.16703-1-bigeasy@linutronix.de>
 <20190926105644.16703-3-bigeasy@linutronix.de>
Message-ID: <156951788903.26462.6342527110721516615@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 26 Sep 2019 18:11:29 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Drop the IRQ-off asserts
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
Cc: David Airlie <airlied@linux.ie>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Clark Williams <williams@redhat.com>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBTZWJhc3RpYW4gQW5kcnplaiBTaWV3aW9yICgyMDE5LTA5LTI2IDExOjU2OjQ0KQo+
IFRoZSBsb2NrZGVwX2Fzc2VydF9pcnFzX2Rpc2FibGVkKCkgY2hlY2sgaXMgbmVlZGxlc3MuIFRo
ZSBwcmV2aW91cwo+IGxvY2tkZXBfYXNzZXJ0X2hlbGQoKSBjaGVjayBlbnN1cmVzIHRoYXQgdGhl
IGxvY2sgaXMgYWNxdWlyZWQgYW5kIHdoaWxlCj4gdGhlIGxvY2sgaXMgYWNxdWlyZWQgbG9ja2Rl
cCBhbHNvIHByaW50cyBhIHdhcm5pbmcgaWYgdGhlIGludGVycnVwdHMgYXJlCj4gbm90IGRpc2Fi
bGVkIGlmIHRoZXkgaGF2ZSB0byBiZS4KPiBUaGVzZSBJUlEtb2ZmIGFzc2VydHMgdHJpZ2dlciBv
biBQUkVFTVBUX1JUIGJlY2F1c2UgdGhlIGxvY2tzIGJlY29tZQo+IHNsZWVwaW5nIGxvY2tzIGFu
ZCBkbyBub3QgcmVhbGx5IGRpc2FibGUgaW50ZXJydXB0cy4KClRoZSBpbnRlbnQgd2FzIHRvIGRv
Y3VtZW50IHRoZSBlbnRyeSBwb2ludHMgaW4gd2VyZSB0byBiZSBjb21tb24KZG1hLWZlbmNlIGZ1
bmN0aW9ucyB3aGVyZSBpcnFzIHdlcmUgZXhwZWN0ZWQgdG8gYmUgb2ZmLiBTaW1pbGFybHkgZm9y
CmJyZWFkY3J1bWJzIHRvIGluZGljYXRlIHRoYXQgdGhleSB3ZXJlIGlubmVyIGZ1bmN0aW9ucyBk
ZWFsaW5nIHdpdGgKaXJxLXNlbnNpdGl2ZSBsb2NrcyB0aGF0IHRoZSBjYWxsZXIgaGFkIHRvIGRp
c2FibGUgaXJxcyBmb3IuIGxvY2tkZXAgaXMKbm90IHRoZSBjbGVhcmVzdCB3aGVuIGl0IGNvbWVz
IHRvIGV4cGxhaW5pbmcgaXJxLWludmVyc2lvbnMuCgo+IFJlbW92ZSBsb2NrZGVwX2Fzc2VydF9p
cnFzX2Rpc2FibGVkKCkuCj4gCj4gUmVwb3J0ZWQtYnk6IENsYXJrIFdpbGxpYW1zIDx3aWxsaWFt
c0ByZWRoYXQuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBBbmRyemVqIFNpZXdpb3Ig
PGJpZ2Vhc3lAbGludXRyb25peC5kZT4KCkdpdmVuIHRoZSBjb250ZXh0IHRob3VnaCwgdGhleSBh
cmUgbW9vdC4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
