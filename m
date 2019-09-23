Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FDBBAE96
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 09:42:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E02566E177;
	Mon, 23 Sep 2019 07:41:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D8536E154;
 Mon, 23 Sep 2019 07:41:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18581855-1500050 
 for multiple; Mon, 23 Sep 2019 08:41:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Sep 2019 08:41:49 +0100
Message-Id: <20190923074149.19753-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_eio: Include non-context based
 tests for older kms testing
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgbm90IGV2ZXJ5IG1hY2hpbmUgY2FuIHVzZSBjb250ZXh0cywgaW5jbHVkZSBhIG5vbi1jb250
ZXh0IHJlc2V0IHN0cmVzcwp0ZXN0IHRvIHJ1biBpbiBwYXJhbGxlbCB0byBlbmFibGluZy9kaXNh
YmxpbmcgcGlwZXMuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KLS0tCiB0ZXN0cy9pOTE1L2dlbV9laW8uYyB8IDcgKysrKystLQogMSBmaWxl
IGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90
ZXN0cy9pOTE1L2dlbV9laW8uYyBiL3Rlc3RzL2k5MTUvZ2VtX2Vpby5jCmluZGV4IGU3ZjVkNGRk
Yi4uNTJlODNhNWNmIDEwMDY0NAotLS0gYS90ZXN0cy9pOTE1L2dlbV9laW8uYworKysgYi90ZXN0
cy9pOTE1L2dlbV9laW8uYwpAQCAtODcwLDggKzg3MCwxMSBAQCBzdGF0aWMgdm9pZCB0ZXN0X2tt
cyhpbnQgaTkxNSwgaWd0X2Rpc3BsYXlfdCAqZHB5KQogCWlndF9mb3JrKGNoaWxkLCAxKQogCQlk
aXNwbGF5X2hlbHBlcihkcHksIHNoYXJlZCk7CiAKLQl0ZXN0X3Jlc2V0X3N0cmVzcyhpOTE1LCAw
KTsKLQl0ZXN0X3Jlc2V0X3N0cmVzcyhpOTE1LCBURVNUX1dFREdFKTsKKwl0ZXN0X2luZmxpZ2h0
KGk5MTUsIDApOworCWlmIChnZW1faGFzX2NvbnRleHRzKGZkKSkgeworCQl0ZXN0X3Jlc2V0X3N0
cmVzcyhpOTE1LCAwKTsKKwkJdGVzdF9yZXNldF9zdHJlc3MoaTkxNSwgVEVTVF9XRURHRSk7CisJ
fQogCiAJKnNoYXJlZCA9IDE7CiAJaWd0X3dhaXRjaGlsZHJlbigpOwotLSAKMi4yMy4wCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
