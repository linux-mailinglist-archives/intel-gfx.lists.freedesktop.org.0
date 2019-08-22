Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5832B991E9
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 13:17:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 865406E4CE;
	Thu, 22 Aug 2019 11:17:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FB296E4CE
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 11:17:32 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18225999-1500050 for multiple; Thu, 22 Aug 2019 12:17:28 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190822065917.18988-1-chris@chris-wilson.co.uk>
 <156647232345.11829.12799168742587793498@jlahtine-desk.ger.corp.intel.com>
In-Reply-To: <156647232345.11829.12799168742587793498@jlahtine-desk.ger.corp.intel.com>
Message-ID: <156647264559.20466.5531617090699173011@skylake-alporthouse-com>
Date: Thu, 22 Aug 2019 12:17:25 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Kill the undead
 i915_gem_batch_pool.c
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

UXVvdGluZyBKb29uYXMgTGFodGluZW4gKDIwMTktMDgtMjIgMTI6MTI6MDMpCj4gUXVvdGluZyBD
aHJpcyBXaWxzb24gKDIwMTktMDgtMjIgMDk6NTk6MTcpCj4gPiBZb3UgaGF2ZSB0byBjdXQgaXQg
b2ZmIGF0IHRoZSBuZWNrLCBvdGhlcndpc2UgaXQganVzdCByZWFwcGVhcnMgaW4gdGhlCj4gPiBu
ZXh0IG1lcmdlLCBsaWtlIGNvbW1pdCAzZjg2NjAyNmYwY2UgKCJNZXJnZSBkcm0vZHJtLW5leHQK
PiA+IGludG8gZHJtLWludGVsLW5leHQtcXVldWVkIikKPiA+IAo+ID4gUmVmZXJlbmNlczogM2Y4
NjYwMjZmMGNlICgiTWVyZ2UgZHJtL2RybS1uZXh0IGludG8gZHJtLWludGVsLW5leHQtcXVldWVk
IikKPiA+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNv
LnVrPgo+ID4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KPiAKPiBB
Y2tlZC1ieTogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXguaW50ZWwuY29t
PgoKQW5kIG9uY2UgbW9yZSB0aGUgbmFpbHMgaGF2ZSBiZWVuIHB1dCBiYWNrIGluIHRoZSBjb2Zm
aW4uCi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
