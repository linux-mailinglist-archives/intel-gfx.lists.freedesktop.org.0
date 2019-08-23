Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBF19B351
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 17:31:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C7086E045;
	Fri, 23 Aug 2019 15:31:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0103B6E045
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 15:31:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18242195-1500050 for multiple; Fri, 23 Aug 2019 16:31:22 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190823150302.5719-1-chris@chris-wilson.co.uk>
 <cb9a9a4e-d4b1-daf8-258d-2335a6dd4b16@intel.com>
In-Reply-To: <cb9a9a4e-d4b1-daf8-258d-2335a6dd4b16@intel.com>
Message-ID: <156657427951.4019.2352830332162256103@skylake-alporthouse-com>
Date: Fri, 23 Aug 2019 16:31:19 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Flush the existing fence before
 GGTT read/write
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

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMTktMDgtMjMgMTY6MjY6MTYpCj4gT24gMjMvMDgvMjAx
OSAxNjowMywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4gT3VyIGZlbmNlIG1hbmFnZW1lbnQgaXMg
bGF6eSwgdmVyeSBsYXp5LiBJZiB0aGUgdXNlciBtYXJrcyBhbiBvYmplY3QgYXMKPiA+IHVudGls
ZWQsIHdlIGRvIG5vdCBpbW1lZGlhdGVseSBmbHVzaCB0aGUgZmVuY2UgYnV0IG1lcmVseSBtYXJr
IGl0IGFzCj4gPiBkaXJ0eS4gT24gdGhlIHVzZSB3ZSBoYXZlIHRvIHJlbWVtYmVyIHRvIGNoZWNr
IGFuZCByZW1vdmUgdGhlIGZlbmNlLCBieQo+ID4gd2hpY2ggdGltZSB3ZSBob3BlIGl0IGlzIGlk
bGUgYW5kIHdlIGRvIG5vdCBoYXZlIHRvIHdhaXQuCj4gPiAKPiA+IEJ1Z3ppbGxhOiBodHRwczov
L2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTE0NjgKPiA+IEZpeGVzOiAx
ZjdmZDQ4NGZmZjEgKCJkcm0vaTkxNTogUmVwbGFjZSBpOTE1X3ZtYV9wdXRfZmVuY2UoKSIpCj4g
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
PiA+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gCj4gV2VsbCB0
aGF0IHN1Y2tzLCBzaG91bGQgd2UgYWxzbyB0cnkgdG8gYmUgbW9yZSBzb2xpZCBvbiB0aGUgcmVs
b2MgcGF0aD8KCkkgd2FzIHRoaW5raW5nIGFib3V0IHB1bGxpbmcgaXQgaW50byB0aGUgb2JqZWN0
X2dndHRfcGluLiBUaGF0IGFwcGVhcnMKdG8gY292ZXIgZXZlcnlvbmUuCi1DaHJpcwpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
