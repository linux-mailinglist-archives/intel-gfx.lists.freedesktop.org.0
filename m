Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38109100605
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2019 13:59:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C45BD6E0CB;
	Mon, 18 Nov 2019 12:59:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7D2E89F6D;
 Mon, 18 Nov 2019 12:59:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19242048-1500050 for multiple; Mon, 18 Nov 2019 12:58:46 +0000
MIME-Version: 1.0
To: DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191118103536.17675-4-daniel.vetter@ffwll.ch>
References: <20191118103536.17675-1-daniel.vetter@ffwll.ch>
 <20191118103536.17675-4-daniel.vetter@ffwll.ch>
Message-ID: <157408192541.24372.8802844689772278346@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 18 Nov 2019 12:58:45 +0000
Subject: Re: [Intel-gfx] [PATCH 03/15] drm/i915: Remove dma_buf_kmap selftest
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBEYW5pZWwgVmV0dGVyICgyMDE5LTExLTE4IDEwOjM1OjI0KQo+IEl0J3MgdGhlIG9u
bHkgdXNlciBsZWZ0IGluIHRoZSBlbnRpcmUga2VybmVsIGZvciBkbWFfYnVmX2ttYXAvX2t1bm1h
cC4KPiBEZWxldGUgaXQsIGJlZm9yZSB3ZSBzdGFydCBnYXJiYWdlLWNvbGxlY3RpbmcgdGhlIHZh
cmlvdXMKPiBpbXBsZW1lbnRhdGlvbnMuCgpPayB0aGVuLCBJJ20gc3RpbGwgbW91cm5pbmcgdGhl
IGxvc3Mgb2Yga21hcC4gSSBkZWZpbml0ZWx5IGRvIG5vdCB0aGluawp3ZSBzaG91bGQgX29ubHlf
IGhhdmUgYSB3aG9sZS1vYmplY3QtYXQtYS10aW1lIGludGVyZmFjZSBhcyB3ZSBtYXkgaGF2ZQp0
byBkZWFsIHdpdGggb2JqZWN0cyBsYXJnZXIgdGhhbiB0aGUgYXBlcnR1cmUsIG9yIGV2ZW4gbGFy
Z2VyIHRoYW4Kc3lzdGVtIG1lbW9yeS4gSSBmZWVsIHdlIGhhdmUgYSBicmlkZ2UgdG8gY3Jvc3Mg
aW4gZnV0dXJlLi4uCgpSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
