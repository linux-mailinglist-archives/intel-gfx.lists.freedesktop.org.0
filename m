Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F468654F5
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 13:08:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0B106E17E;
	Thu, 11 Jul 2019 11:08:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C3FB6E180
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 11:08:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17220401-1500050 for multiple; Thu, 11 Jul 2019 12:08:14 +0100
MIME-Version: 1.0
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190711110201.GD9599@intel.com>
References: <20190711092254.1719-1-chris@chris-wilson.co.uk>
 <20190711110201.GD9599@intel.com>
Message-ID: <156284329225.12757.17426687065171875375@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 11 Jul 2019 12:08:12 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Revert "drm/i915: Enable PSR2 by
 default"
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
Cc: intel-gfx@lists.freedesktop.org,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBSb2RyaWdvIFZpdmkgKDIwMTktMDctMTEgMTI6MDI6MDEpCj4gT24gVGh1LCBKdWwg
MTEsIDIwMTkgYXQgMTA6MjI6NTRBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gTXVs
dGlwbGUgdXNlcnMgYXJlIHJlcG9ydGluZyBibGFjayBzY3JlZW5zIHVwb24gYm9vdCwgYWZ0ZXIg
cmVzdW1lLCBvcgo+ID4gZnJvemVuIGFmdGVyIGEgc2hvcnQgcGVyaW9kIG9mIGlkbGVuZXNzLiBB
IGJsYWNrIHNjcmVlbiBvbiBib290IGlzIGEKPiA+IGNyaXRpY2FsIGlzc3VlIHNvIGRpc2FibGUg
cHNyMiBhZ2FpbiB1bnRpbCByZXNvbHZlZC4KPiA+IAo+ID4gVGhpcyByZXZlcnRzIGNvbW1pdCA4
ZjZlODdkNmQ1NjFmMTBjZmE0OGE2ODczNDU1MTI0MTk4MzliNmQ4Lgo+ID4gCj4gPiBCdWd6aWxs
YTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTExMDg4Cj4g
Cj4gSSBhZ3JlZSBpdCBpcyBjcml0aWNhbCwgYnV0IHVuZm9ydHVuYXRlbHkgdGhpcyByZXZlcnQg
d29uJ3Qgc29sdmUgdGhlIGlzc3VlLgo+IAo+IFsgICAgMS45NTQ4ODZdIFtkcm06aW50ZWxfcHNy
X2luaXRfZHBjZCBbaTkxNV1dIGVEUCBwYW5lbCBzdXBwb3J0cyBQU1IgdmVyc2lvbiAxCj4gWyAg
ICAyLjAwMzY4Nl0gW2RybTppbnRlbF9wc3JfZW5hYmxlX2xvY2tlZCBbaTkxNV1dIEVuYWJsaW5n
IFBTUjEKPiAKPiBVc2VycyBhcmUgY2xhaW1pbmcgdGhlIHJlZ3Jlc3Npb24gaXMgb25seSBvbiA1
LjIgd2l0aCA1LjEgd29ya2luZyB3ZWxsCj4gYW5kIFBTUjEgaXMgZW5hYmxlZCBieSBkZWZhdWx0
IHNpbmNlIDUuMC4KCkhtbSwgd2hpY2ggcGFuZWxzIGFyZSBwc3IyIGFuZCBpcyBpdCBiZWluZyBh
Y2N1cmF0ZWx5IHJlcG9ydGVkPwoKSWYgeW91IHN1c3BlY3QgcHNyMSwganVzdCByZXZlcnQgYm90
aCBmb3Igbm93LgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
