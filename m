Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9088513038
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 16:29:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0CA46E7B8;
	Fri,  3 May 2019 14:29:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A55156E7B8
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 14:29:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16442684-1500050 for multiple; Fri, 03 May 2019 15:29:35 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190503135229.32039-1-chris@chris-wilson.co.uk>
References: <20190503135229.32039-1-chris@chris-wilson.co.uk>
Message-ID: <155689377409.3139.6040048135247673178@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 03 May 2019 15:29:34 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Check the target has not already
 completed before waiting on it
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMDUtMDMgMTQ6NTI6MjkpCj4gV2hlbiB3ZSB3YW50
IHRvIHdhaXQgZm9yIGEgcmVxdWVzdCB0byBiZSBleGVjdXRlZCwgd2UgZmlyc3QgYXNrIGlmIGl0
IGlzCj4gbm90IG9uIHRoZSBHUFUgIGFzIGlmIGl0J3Mgb24gdGhlIGdwdSwgdGhlcmUncyBubyBu
ZWVkIHRvIHdhaXQuIEhvd2V2ZXIsCj4gd2UgaGF2ZSB0byB0YWtlIGludG8gYWNjb3VudCB0aGF0
IGEgcmVxdWVzdCBtYXkgbm90IGJlIG9uIHRoZSBHUFUKPiBiZWNhdXNlIGl0IGhhcyBhbHJlYWR5
IGNvbXBsZXRlZCEKPiAKPiBUaGUgd2luZG93IGlzIHNtYWxsIGR1ZSB0byB0aGUgbnVtZXJvdXMg
cHJlY2VkaW5nIGNoZWNrcyB0aGF0IG91ciB0YXJnZXQKPiBoYXMgbm90IHlldCBjb21wbGV0ZWQs
IHlldCB0aGVyZSBpcyBzdGlsbCBhIHZlcnkgc21hbGwgd2luZG93IGFjcm9zcyB0aGUKPiBrbWFs
bG9jLgoKT2ssIHRoZXJlJ3MgYSBzZWNvbmQgcGFydCB0byB0aGlzIHByb2JsZW0gYXMgdGhpcyBv
bmx5IGhhcHBlbnMgdW5kZXIKcHJlZW1wdC10by1idXN5IGFzIGl0IHJlcXVpcmVzIHRoZSByZXF1
ZXN0IHJ1bm5pbmcgaW4gdGhlIGJhY2tncm91bmQgYW5kCmNvbXBsZXRpbmcgYWZ0ZXIgdW5zdWJt
aXNzaW9uLgoKPiBGaXhlczogZTg4NjE5NjQ2OTcxICgiZHJtL2k5MTU6IFVzZSBIVyBzZW1hcGhv
cmVzIGZvciBpbnRlci1lbmdpbmUgc3luY2hyb25pc2F0aW9uIG9uIGdlbjgrIikKU28gbm90IHJl
cXVpcmVkLgotQ2hyaXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
