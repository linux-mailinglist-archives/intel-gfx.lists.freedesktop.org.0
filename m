Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1815221F797
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 18:45:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EC9E6E519;
	Tue, 14 Jul 2020 16:45:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD2F36E519
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 16:45:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21817974-1500050 for multiple; Tue, 14 Jul 2020 17:45:46 +0100
MIME-Version: 1.0
In-Reply-To: <20200714152626.380-3-ville.syrjala@linux.intel.com>
References: <20200714152626.380-1-ville.syrjala@linux.intel.com>
 <20200714152626.380-3-ville.syrjala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jul 2020 17:45:45 +0100
Message-ID: <159474514516.3188.7254765951013259696@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Make i830 .get_cdclk()
 assignment less confusing
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDIwLTA3LTE0IDE2OjI2OjI1KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gRXhwbGljaXRs
eSBjaGVjayBmb3IgaTgzMCB3aGVuIGFzc2lnbmluZyB0aGUgLmdldF9jZGNsaygpIHZmdW5jLAo+
IGFuZCB0aGVuIGRlYWwgd2l0aCB0aGUgY2FzZSBvZiBub3QgaGF2aW5nIGFzc2lnbmVkIHRoZSB2
ZnVuYwo+IHNlcGFyYXRlbHkuIExlc3MgY29uZnVzaW5nLCBhbmQgZ2V0cyByaWQgb2YgdGhlIGNo
ZWNrcGF0Y2ggY29tcGxhaW50Cj4gYWJvdXQgdXNpbmcge30gb24gb25lIGJyYW5jaCBidXQgbm90
IHRoZSBvdGhlcnMuCj4gCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
