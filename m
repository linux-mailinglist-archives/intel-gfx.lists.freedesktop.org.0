Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4B75CE36
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 13:14:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64C0C89056;
	Tue,  2 Jul 2019 11:14:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A63B89AEA
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 11:14:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17097748-1500050 for multiple; Tue, 02 Jul 2019 12:14:09 +0100
MIME-Version: 1.0
To: Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190628120720.21682-4-lionel.g.landwerlin@intel.com>
References: <20190628120720.21682-1-lionel.g.landwerlin@intel.com>
 <20190628120720.21682-4-lionel.g.landwerlin@intel.com>
Message-ID: <156206604662.2466.5892487834399036431@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 02 Jul 2019 12:14:06 +0100
Subject: Re: [Intel-gfx] [PATCH v7 3/3] drm/i915/icl: whitelist
 PS_(DEPTH|INVOCATION)_COUNT
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
Cc: stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBMaW9uZWwgTGFuZHdlcmxpbiAoMjAxOS0wNi0yOCAxMzowNzoyMCkKPiBUaGUgc2Ft
ZSB0ZXN0cyBmYWlsaW5nIG9uIENGTCsgcGxhdGZvcm1zIGFyZSBhbHNvIGZhaWxpbmcgb24gSUNM
Lgo+IERvY3VtZW50YXRpb24gZG9lc24ndCBsaXN0IHRoZQo+IFdhQWxsb3dQTURlcHRoQW5kSW52
b2NhdGlvbkNvdW50QWNjZXNzRnJvbVVNRCB3b3JrYXJvdW5kIGZvciBJQ0wgYnV0Cj4gYXBwbHlp
bmcgaXQgZml4ZXMgdGhlIHNhbWUgdGVzdHMgYXMgQ0ZMLgo+IAo+IHYyOiBVc2Ugb25seSBvbmUg
d2hpdGVsaXN0IGVudHJ5IChMaW9uZWwpCj4gCj4gU2lnbmVkLW9mZi1ieTogTGlvbmVsIExhbmR3
ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+IFRlc3RlZC1ieTogIEFudWog
UGhvZ2F0IDxhbnVqLnBob2dhdEBnbWFpbC5jb20+Cj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5v
cmcKQWNrZWQtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotQ2hy
aXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
