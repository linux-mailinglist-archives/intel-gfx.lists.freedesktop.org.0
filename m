Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB59BAD77A
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 13:00:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E4B689AAE;
	Mon,  9 Sep 2019 11:00:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E69F89A57
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 11:00:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18424993-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 09 Sep 2019 12:00:13 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Sep 2019 12:00:05 +0100
Message-Id: <20190909110011.8958-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] Enable iommu on gfx by default
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

T3RoZXIgdGhhbiBCcm9hZHdlbGwgYmVpbmcgZnViYXIgKGFuZCBJcm9ubGFrZSArIGc0eCBiZWlu
ZyBzcGVjaWFsIGluCnRoZWlyIG93biB3YXkpLCB0aGVyZSBhcHBlYXJzIHRvIGJlIGxpdHRsZSBm
YWxsb3V0IGZyb20gZW5hYmxpbmcgaW9tbXUuCihUaGUgYmlnZ2VzdCBvcGVuIHF1ZXN0aW9uIGlz
IG92ZXIgcGVyZm9ybWFuY2UsIFRMQiBtaXNzZXMgYXJlIG11Y2ggbW9yZQpleHBlbnNpdmUgYW5k
IHRoYXQgaW1wYWN0cyBtZWRhL0NML0dMIHRocm91Z2hwdXQuKSBFbmFibGluZyBpb21tdS9kbWFy
Cm1ha2VzIG91ciBDSSBtdWNoIG1vcmUgcG93ZXJmdWwsIGluc3RlYWQgb2YgYSByYW5kb20gR1BV
IHdyaXRlIGNhdXNpbmcKbWVtY29ycnVwdGlvbiB3aGljaCBtYXkgb3IgbWF5IG5vdCBpbXBhY3Qg
dGhlIHN5c3RlbSwgd2UgZ2V0IGEgRE1BUgpmYXVsdC4gU28gb25jZSBhbmQgZm9yIGFsbCB3ZSB3
aWxsIGJlIGFibGUgdG8gYXNjZXJ0YWluIHdoZXRoZXIgdGhvc2UKc3BvcmFkaWMgbWVtY29ycnVw
dGlvbiBhcmUgdHJ1bHkgb3VyIGZhdWx0LgotQ2hyaXMKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
