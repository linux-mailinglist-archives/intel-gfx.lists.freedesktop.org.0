Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE09B115EDA
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2019 22:57:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A08606E250;
	Sat,  7 Dec 2019 21:57:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A6C46E24D;
 Sat,  7 Dec 2019 21:57:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19498449-1500050 
 for multiple; Sat, 07 Dec 2019 21:57:24 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 Dec 2019 21:57:24 +0000
Message-Id: <20191207215724.2774620-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_engines: Use an offset hint
 to avoid overlap
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

QXMgQnJhc3dlbGwgaXMgdXNpbmcgYWxpYXNpbmctcHBndHQsIHNvZnRwaW5uaW5nIGlzIHRyaWNr
IGFzIHdlIGhhdmUgdG8KYXZvaWQgb3ZlcmxhcHBpbmcgd2l0aCBIVyBvYmplY3RzIGluIHRoZSBH
R1RUIChsaWtlIGNvbnRleHQgaW1hZ2VzKS4KVHlwaWNhbGx5IGFsbG9jYXRpb25zIGFyZSBmcm9t
IGVpdGhlciBlbmQsIHNvIGlmIHdlIHByb3ZpZGUgYSBoaW50IHRvCnVzZSB0aGUgbWlkZGxlLCB3
ZSBzaG91bGQgYmUgc2FmZSBmcm9tIG92ZXJsYXAuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiB0ZXN0cy9pOTE1L2dlbV9jdHhfZW5n
aW5lcy5jIHwgNSArKysrLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2N0eF9lbmdpbmVzLmMgYi90ZXN0
cy9pOTE1L2dlbV9jdHhfZW5naW5lcy5jCmluZGV4IDFlODJlNTFlZS4uNTU3OTRhNDM4IDEwMDY0
NAotLS0gYS90ZXN0cy9pOTE1L2dlbV9jdHhfZW5naW5lcy5jCisrKyBiL3Rlc3RzL2k5MTUvZ2Vt
X2N0eF9lbmdpbmVzLmMKQEAgLTQyNSw3ICs0MjUsMTAgQEAgc3RhdGljIHZvaWQgaW5kZXBlbmRl
bnQoaW50IGk5MTUpCiAJCS52YWx1ZSA9IHRvX3VzZXJfcG9pbnRlcigmZW5naW5lcyksCiAJCS5z
aXplID0gc2l6ZW9mKGVuZ2luZXMpLAogCX07Ci0Jc3RydWN0IGRybV9pOTE1X2dlbV9leGVjX29i
amVjdDIgcmVzdWx0cyA9IHsgLmhhbmRsZSA9IGdlbV9jcmVhdGUoaTkxNSwgNDA5NikgfTsKKwlz
dHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNfb2JqZWN0MiByZXN1bHRzID0geworCQkuaGFuZGxlID0g
Z2VtX2NyZWF0ZShpOTE1LCA0MDk2KSwKKwkJLm9mZnNldCA9IGdlbV9hcGVydHVyZV9zaXplKGk5
MTUpIC8gMiwKKwl9OwogCWNvbnN0IHVpbnQzMl90IGJiZSA9IE1JX0JBVENIX0JVRkZFUl9FTkQ7
CiAJaW50IHRpbWVsaW5lID0gc3dfc3luY190aW1lbGluZV9jcmVhdGUoKTsKIAl1aW50MzJfdCBs
YXN0LCAqbWFwOwotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
