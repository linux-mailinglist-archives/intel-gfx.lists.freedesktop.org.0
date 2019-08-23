Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A51829B0DA
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 15:27:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E55446EC8F;
	Fri, 23 Aug 2019 13:27:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D70E06EC8D
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 13:27:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18240594-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 14:27:02 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Aug 2019 14:26:45 +0100
Message-Id: <20190823132700.25286-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] vm->mutex
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

SW4gdGhlIGdyYW5kIHNjaGVtZSBvZiB0aGluZ3MgdGhlIGFzeW5jIHZtYSB3b3JrZXJzIGRvIHRo
ZWlyIGFsbG9jYXRpb25zCmFuZCBzaG91bGQgYmUgc2hyaW5rZXIgcHJvb2YgcGFzc2luZyBvbiB0
aGVpciBub3RpZmljYXRpb25zIHZpYSB0aGUKZXhjbHVzaXZlIGZlbmNlLiBBbGwgdGhhdCByZW1h
aW5zIGFyZSBzb21lIG9kZC1iYWxsIGluY29oZXJlbmN5IGluCkJyYXN3ZWxsIGFuZCBCcm9hZHdh
dGVyIChhbmQgc28gcHJvYmFibHkgZWxzZXdoZXJlIGJ1dCB3ZSBhcmUgZm9ydHVuYXRlCm9uIHRo
ZSB0aW1pbmcpLCBhbmQgcG9zc2libHkgZ2VuNyBhbHRob3VnaCB0aGF0IG1heSBiZSBtb3JlIHRv
IGRvIHdpdGgKdGhlIHBkX3ZtYSB3aGljaCBzaG91bGRuJ3Qgbm90IGhhdmUgYmVlbiBzbyBpbXBh
Y3RlZC4KCkFuZCB3aGF0ZXZlciBpZ3QgaXNuJ3QgZXhwZWN0aW5nIHRoZSBiYXRjaCB0byBzdGFy
dCB3aXRoIGFuCmV4Y2x1c2l2ZSBmZW5jZSB3aGlsZSBpdCBpcyBiZWluZyBtb3ZlZC4KLUNocmlz
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
