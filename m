Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 554F7A1346
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 10:11:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BF5689F75;
	Thu, 29 Aug 2019 08:11:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA3A78924B
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 08:11:54 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18299857-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2019 09:11:52 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Aug 2019 09:11:14 +0100
Message-Id: <20190829081150.10271-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] Gratiutuous struct_mutex elimination
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

SSB0aHJldyBpbiBzb21lIHBhdGNoZXMgdG8gcmVtb3ZlIGFsbCBidXQgYSBmZXcgc3RydWN0X211
dGV4ZXMsIG5vdGFibGUKcmVtbmFudHMgYXJlIGV4ZWNidWYgKHNpbmNlIHdlIGhhdmUgdGhlIGdy
ZWF0IHJlc2VydmF0aW9uIGRlYmF0ZSksIHBlcmYKKGl0IG5lZWRzIHRvIGZpZ3VyZSBvdXQgaXRz
IGxvY2tpbmcpIGFuZCBndnQgKEknbSBub3Qgc3VyZSB3aGF0IGl0IGlzCnVzaW5nIHN0cnVjdF9t
dXRleCBmb3IsIHNvIGxlZnQgaXQpLgoKVGhlIHJlYWwgbWVhdCBvZiB0aGUgcGF0Y2hlcyBpcyBi
cmVha2luZyB0aGUgc3RyYW5nbGVob2xkIG9mCnN0cnVjdF9tdXRleCBmcm9tIGFyb3VuZCByZXF1
ZXN0cywgd2hpY2ggSSBob3BlIENJIHNob3VsZCBiZSBoYXBweSB3aXRoLApleGNlcHQgQ0kgaGFz
IGJlZW4gb24gdmFjYXRpb24uLi4KLUNocmlzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
