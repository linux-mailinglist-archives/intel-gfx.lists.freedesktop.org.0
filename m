Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E33F89F8E
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2019 15:23:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C63426E50C;
	Mon, 12 Aug 2019 13:23:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 153DB6E508;
 Mon, 12 Aug 2019 13:22:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17969579-1500050 for multiple; Mon, 12 Aug 2019 14:22:57 +0100
MIME-Version: 1.0
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87pnla7g87.fsf@gaia.fi.intel.com>
References: <20190812103224.30163-1-chris@chris-wilson.co.uk>
 <87pnla7g87.fsf@gaia.fi.intel.com>
Message-ID: <156561617536.2301.12360130942873835783@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 12 Aug 2019 14:22:55 +0100
Subject: Re: [Intel-gfx] [PATCH i-g-t] lib/i915: Trim ring measurement by one
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWthIEt1b3BwYWxhICgyMDE5LTA4LTEyIDEyOjUyOjU2KQo+IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPiB3cml0ZXM6Cj4gCj4gPiBCZSBhIGxpdHRsZSBt
b3JlIGNvbnNlcnZhdGl2ZSBpbiBvdXIgcmluZyBtZWFzdXJlbWVudCBhbmQgZXhjbHVkZSBvbmUK
PiA+IGJhdGNoIHRvIGxlYXZlIHJvb20gaW4gY2FzZSBvdXIgdXNlciBuZWVkcyB0byB3cmFwICh3
aGVyZSBhIHJlcXVlc3Qgd2lsbAo+ID4gYmUgZXhwYW5kZWQgdG8gY292ZXIgdGhlIHVudXNlZCBz
cGFjZSBhdCB0aGUgZW5kIG9mIHRoZSByaW5nKS4KPiA+Cj4gCj4gZGlkIHJlYWQgdGhlIHdyYXBw
aW5nIHBhcnQgYW5kIHRoYXQgc2VlbXMgdG8gYmUgdGhlIGNhc2UgdGhhdAo+IHdlIGVubGFyZ2Ug
dGhlIHdyYXBwaW5nIHJlcXVlc3QuCj4gCj4gSG93ZXZlciBkbyB3ZSBsb3NlIHNvbWUgY292ZXJh
Z2Ugb24gdGhlIGFjdHVhbCB3cmFwIHRlc3RzPwoKVGhlIHRlc3RzIHdoZXJlIHdlIGNhbGwgbWVh
c3VyZV9yaW5nX3NpemUsIGFyZSB0aG9zZSB0aGF0IHdlIGRvIG5vdCB3YW50CnRvIGJsb2NrIGR1
ZSB0byBydW5uaW5nIG91dCBvZiBzcGFjZSAoYW5kIHdyYXBwaW5nKSA6KQotQ2hyaXMKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
