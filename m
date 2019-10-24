Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BC8BE34F3
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 16:03:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88B636E1EE;
	Thu, 24 Oct 2019 14:03:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC4216E1EE
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 14:03:03 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18950576-1500050 for multiple; Thu, 24 Oct 2019 15:03:01 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Anna Karas <anna.karas@intel.com>,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191022101338.17048-1-anna.karas@intel.com>
 <0e6df803-dc64-02c2-be32-6b3403fb0600@intel.com>
In-Reply-To: <0e6df803-dc64-02c2-be32-6b3403fb0600@intel.com>
Message-ID: <157192577886.2725.7339412881549705324@skylake-alporthouse-com>
Date: Thu, 24 Oct 2019 15:02:58 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: Describe structure members
 in documentation
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

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0xMC0yMiAxMToyMTo0MykKPiBPbiAyMi8x
MC8yMDE5IDEzOjEzLCBBbm5hIEthcmFzIHdyb3RlOgo+ID4gQWRkIG1pc3NpbmcgZGVzY3JpcHRp
b25zIG9mIGk5MTVfcGVyZl9zdHJlYW0gc3RydWN0dXJlIG1lbWJlcnMKPiA+IHRvIGRvY3VtZW50
YXRpb24uCj4gPgo+ID4gQ2M6IFVtZXNoIE5lcmxpZ2UgUmFtYXBwYSA8dW1lc2gubmVybGlnZS5y
YW1hcHBhQGludGVsLmNvbT4KPiA+IENjOiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFu
ZHdlcmxpbkBpbnRlbC5jb20+Cj4gPiBDYzogUm9iZXJ0IEJyYWdnIDxyb2JlcnRAc2l4YnluaW5l
Lm9yZz4KPiA+IFNpZ25lZC1vZmYtYnk6IEFubmEgS2FyYXMgPGFubmEua2FyYXNAaW50ZWwuY29t
Pgo+IAo+IAo+IExvb2tzIGdvb2Q6IFJldmlld2VkLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlv
bmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+CgpQYXRjaHdvcmsgd2FzIHRocm93biBieSB0aGUg
J2dvb2Q6JyBhbmQgZGlkIG5vdCByZWNvZ25pc2UgdGhlIHItYi4KUHVzaGVkLCB0aGFua3MgYWxs
LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
