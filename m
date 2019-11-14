Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92618FC429
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 11:29:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89EC46E5EC;
	Thu, 14 Nov 2019 10:29:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 252B66E5E8;
 Thu, 14 Nov 2019 10:29:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19198451-1500050 
 for multiple; Thu, 14 Nov 2019 10:29:22 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Nov 2019 10:29:21 +0000
Message-Id: <20191114102921.22790-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] lib: Set the COND_BB_END mask for bdw
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

T24gU2t5bGFrZSssIHRoZSB1c2Ugb2YgdGhlIG1hc2sgZm9yIHRoZSBjb21wYXJlIGFkZHJlc3Mg
aXMgcHJlZGljYXRlZApieSBhbiBpbnN0cnVjdGlvbiBmbGFnLiBPbiBCcm9hZHdlbGwsIGl0IHNl
ZW1zIHRoYXQgc29tZSBlbmdpbmVzIHVzZSB0aGUKbWFzayBhbmQgc29tZSBkbyBub3QuCgpCdWd6
aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEyMjcw
ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpD
YzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogbGli
L2lndF9kdW1teWxvYWQuYyB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvbGliL2lndF9kdW1teWxvYWQuYyBiL2xpYi9p
Z3RfZHVtbXlsb2FkLmMKaW5kZXggODBiOTBlMWYyLi4zMmQ0ZDhkM2YgMTAwNjQ0Ci0tLSBhL2xp
Yi9pZ3RfZHVtbXlsb2FkLmMKKysrIGIvbGliL2lndF9kdW1teWxvYWQuYwpAQCAtMjI4LDcgKzIy
OCw4IEBAIGVtaXRfcmVjdXJzaXZlX2JhdGNoKGlndF9zcGluX3QgKnNwaW4sCiAJCSAqIEZvciBz
aW1wbGljaXR5LCB3ZSB0cnkgdG8gc3RpY2sgdG8gYSBvbmUtc2l6ZSBmaXRzIGFsbC4KIAkJICov
CiAJCXNwaW4tPmNvbmRpdGlvbiA9IGJhdGNoICsgQkFUQ0hfU0laRSAvIHNpemVvZigqYmF0Y2gp
IC0gMjsKLQkJKnNwaW4tPmNvbmRpdGlvbiA9IDB4ZmZmZmZmZmY7CisJCXNwaW4tPmNvbmRpdGlv
blswXSA9IDB4ZmZmZmZmZmY7CisJCXNwaW4tPmNvbmRpdGlvblsxXSA9IDB4ZmZmZmZmZmY7CiAK
IAkJci0+cHJlc3VtZWRfb2Zmc2V0ID0gMDsKIAkJci0+dGFyZ2V0X2hhbmRsZSA9IG9ialtCQVRD
SF0uaGFuZGxlOwotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
