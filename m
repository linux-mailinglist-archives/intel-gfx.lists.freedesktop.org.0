Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F228D66E1
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 18:10:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E694C6E513;
	Mon, 14 Oct 2019 16:10:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from Galois.linutronix.de (Galois.linutronix.de
 [IPv6:2a0a:51c0:0:12e:550::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E37FA6E513;
 Mon, 14 Oct 2019 16:10:02 +0000 (UTC)
Received: from bigeasy by Galois.linutronix.de with local (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1iK2v2-0003Dd-1l; Mon, 14 Oct 2019 18:10:00 +0200
Date: Mon, 14 Oct 2019 18:10:00 +0200
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191014160959.j55o7owd42qedknt@linutronix.de>
References: <20191010160640.6472-1-bigeasy@linutronix.de>
 <157073108748.31572.8357146735184542067@skylake-alporthouse-com>
 <20191010182610.g7r5ieysx7r6kpco@linutronix.de>
 <157073943519.31572.16175211768966306500@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157073943519.31572.16175211768966306500@skylake-alporthouse-com>
User-Agent: NeoMutt/20180716
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't disable interrupts
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 tglx@linutronix.de, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0xMC0xMCAyMTozMDozNSBbKzAxMDBdLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiB8
ICAgICAgICAgc3Bpbl9sb2NrX2lycSgmcnEtPmVuZ2luZS0+YWN0aXZlLmxvY2spOwo+ID4gfCAg
ICAgICAgIGxpc3RfZGVsKCZycS0+c2NoZWQubGluayk7Cj4gPiB8ICAgICAgICAgc3Bpbl91bmxv
Y2tfaXJxKCZycS0+ZW5naW5lLT5hY3RpdmUubG9jayk7Cj4gPiB8IAo+ID4gfCAgICAgICAgIHNw
aW5fbG9ja19pcnEoJnJxLT5sb2NrKTsKPiA+IHwgICAgICAgICBpOTE1X3JlcXVlc3RfbWFya19j
b21wbGV0ZShycSk7Cj4gPiDigKYKPiA+IHwgICAgICAgICBzcGluX3VubG9ja19pcnEoJnJxLT5s
b2NrKTsKPiA+IAo+ID4gaGFzIGJlZW4gYXZvaWRlZCBiZWNhdXNlIGFuIGludGVycnVwdCBoZXJl
IGNvdWxkIGNoYW5nZSBzb21ldGhpbmcgb3IgaWYKPiA+IHRoaXMgaXMganVzdCBhbiBvcHRpbWlz
YXRpb24uCj4gCj4gSnVzdCBhdm9pZGluZyB0aGUgYmFjay10by1iYWNrIGVuYWJsZS9kaXNhYmxl
LgoKYXMgSSBhc3N1bWVkLiBJcyB0aGUgcGF0Y2ggb2theT8KCj4gLUNocmlzCgpTZWJhc3RpYW4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
