Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2A2115DA6
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Dec 2019 18:01:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9ADE6E1F4;
	Sat,  7 Dec 2019 17:01:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52DB16E1F1
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Dec 2019 17:01:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19496909-1500050 
 for multiple; Sat, 07 Dec 2019 17:01:11 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat,  7 Dec 2019 17:01:07 +0000
Message-Id: <20191207170110.2200142-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191207170110.2200142-1-chris@chris-wilson.co.uk>
References: <20191207170110.2200142-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/8] drm/i915: Align start for memcpy_from_wc
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

VGhlIG1vdm50cWRhIHJlcXVpcmVzIDE2LWJ5dGUgYWxpZ25tZW50IGZvciB0aGUgc291cmNlIHBv
aW50ZXIuIEF2b2lkCmZhbGxpbmcgYmFjayB0byBjbGZsdXNoIGlmIHRoZSBzb3VyY2UgcG9pbnRl
ciBpcyBtaXNhbGlnbmVkIGJ5IGRvaW5nIHRoZQpkb2luZyBhIHNtYWxsIHVuY2FjaGVkIG1lbWNw
eSB0byBmaXh1cCB0aGUgYWxpZ25tZW50cy4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Y21kX3BhcnNlci5jIHwgMzAgKysrKysrKysrKysrKysrKystLS0tLS0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCAyMCBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2NtZF9wYXJzZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfY21kX3BhcnNlci5jCmluZGV4IDZjZjRlMzM2NDYxYi4uMjk3NzMxNmQ2NGFlIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2NtZF9wYXJzZXIuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2NtZF9wYXJzZXIuYwpAQCAtMTEzMiw4ICsxMTMyLDggQEAg
c3RhdGljIHUzMiAqY29weV9iYXRjaChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqZHN0X29i
aiwKIHsKIAl1bnNpZ25lZCBpbnQgc3JjX25lZWRzX2NsZmx1c2g7CiAJdW5zaWduZWQgaW50IGRz
dF9uZWVkc19jbGZsdXNoOwotCXZvaWQgKmRzdCwgKnNyYzsKLQlpbnQgcmV0OworCXZvaWQgKmRz
dCwgKnNyYywgKnB0cjsKKwlpbnQgcmV0LCBsZW47CiAKIAlyZXQgPSBpOTE1X2dlbV9vYmplY3Rf
cHJlcGFyZV93cml0ZShkc3Rfb2JqLCAmZHN0X25lZWRzX2NsZmx1c2gpOwogCWlmIChyZXQpCkBA
IC0xMTUwLDE5ICsxMTUwLDMwIEBAIHN0YXRpYyB1MzIgKmNvcHlfYmF0Y2goc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKmRzdF9vYmosCiAJCXJldHVybiBFUlJfUFRSKHJldCk7CiAJfQogCisJ
cHRyID0gZHN0OwogCXNyYyA9IEVSUl9QVFIoLUVOT0RFVik7Ci0JaWYgKHNyY19uZWVkc19jbGZs
dXNoICYmCi0JICAgIGk5MTVfY2FuX21lbWNweV9mcm9tX3djKE5VTEwsIG9mZnNldCwgMCkpIHsK
KwlpZiAoc3JjX25lZWRzX2NsZmx1c2ggJiYgaTkxNV9oYXNfbWVtY3B5X2Zyb21fd2MoKSkgewog
CQlzcmMgPSBpOTE1X2dlbV9vYmplY3RfcGluX21hcChzcmNfb2JqLCBJOTE1X01BUF9XQyk7CiAJ
CWlmICghSVNfRVJSKHNyYykpIHsKLQkJCWk5MTVfbWVtY3B5X2Zyb21fd2MoZHN0LAotCQkJCQkg
ICAgc3JjICsgb2Zmc2V0LAotCQkJCQkgICAgQUxJR04obGVuZ3RoLCAxNikpOworCQkJc3JjICs9
IG9mZnNldDsKKworCQkJaWYgKCFJU19BTElHTkVEKG9mZnNldCwgMTYpKSB7CisJCQkJbGVuID0g
bWluKEFMSUdOKG9mZnNldCwgMTYpIC0gb2Zmc2V0LCBsZW5ndGgpOworCisJCQkJbWVtY3B5KHB0
ciwgc3JjLCBsZW4pOworCisJCQkJb2Zmc2V0ICs9IGxlbjsKKwkJCQlsZW5ndGggLT0gbGVuOwor
CQkJCXB0ciArPSBsZW47CisJCQkJc3JjICs9IGxlbjsKKwkJCX0KKwkJCUdFTV9CVUdfT04oIUlT
X0FMSUdORUQoKHVuc2lnbmVkIGxvbmcpc3JjLCAxNikpOworCisJCQlpOTE1X21lbWNweV9mcm9t
X3djKHB0ciwgc3JjLCBBTElHTihsZW5ndGgsIDE2KSk7CiAJCQlpOTE1X2dlbV9vYmplY3RfdW5w
aW5fbWFwKHNyY19vYmopOwogCQl9CiAJfQogCWlmIChJU19FUlIoc3JjKSkgewotCQl2b2lkICpw
dHI7CiAJCWludCB4LCBuOwogCiAJCS8qCkBAIC0xMTc3LDEwICsxMTg4LDkgQEAgc3RhdGljIHUz
MiAqY29weV9iYXRjaChzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqZHN0X29iaiwKIAkJCWxl
bmd0aCA9IHJvdW5kX3VwKGxlbmd0aCwKIAkJCQkJICBib290X2NwdV9kYXRhLng4Nl9jbGZsdXNo
X3NpemUpOwogCi0JCXB0ciA9IGRzdDsKIAkJeCA9IG9mZnNldF9pbl9wYWdlKG9mZnNldCk7CiAJ
CWZvciAobiA9IG9mZnNldCA+PiBQQUdFX1NISUZUOyBsZW5ndGg7IG4rKykgewotCQkJaW50IGxl
biA9IG1pbl90KGludCwgbGVuZ3RoLCBQQUdFX1NJWkUgLSB4KTsKKwkJCWxlbiA9IG1pbl90KGlu
dCwgbGVuZ3RoLCBQQUdFX1NJWkUgLSB4KTsKIAogCQkJc3JjID0ga21hcF9hdG9taWMoaTkxNV9n
ZW1fb2JqZWN0X2dldF9wYWdlKHNyY19vYmosIG4pKTsKIAkJCWlmIChzcmNfbmVlZHNfY2xmbHVz
aCkKLS0gCjIuMjQuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
