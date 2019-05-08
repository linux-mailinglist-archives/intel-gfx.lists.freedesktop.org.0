Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD3717325
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 10:07:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BED38893A7;
	Wed,  8 May 2019 08:07:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E0D6893A2
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 08:07:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16485906-1500050 
 for multiple; Wed, 08 May 2019 09:07:07 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 May 2019 09:06:30 +0100
Message-Id: <20190508080704.24223-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190508080704.24223-1-chris@chris-wilson.co.uk>
References: <20190508080704.24223-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/40] drm/i915: Convert inconsistent static
 engine tables into an init error
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

UmVtb3ZlIHRoZSBtb2RpZmljYXRpb24gb2YgdGhlICJjb25zdGFudCIgZGV2aWNlIGluZm8gYnkg
cHJvbW90aW5nIHRoZQppbmNvbnNpc3RlbnQgaW50ZWxfZW5naW5lIHN0YXRpYyB0YWJsZSBpbnRv
IGFuIGluaXRpYWxpc2F0aW9uIGVycm9yLgpOb3csIGlmIHdlIGFkZCBhIG5ldyBlbmdpbmUgaW50
byB0aGUgZGV2aWNlX2luZm8sIHdlIG11c3QgZmlyc3QgYWRkIHRoYXQKZW5naW5lIGluZm9ybWF0
aW9uIGludG8gdGhlIGludGVsX2VuZ2luZXMuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9lbmdpbmVfY3MuYyB8IDI4ICsrKysrKysrLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hh
bmdlZCwgOSBpbnNlcnRpb25zKCspLCAxOSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jCmluZGV4IDRjMzc1M2MxYjU3My4uNjQzNDE3MGVhNGI2
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwpAQCAtMzcyLDE1
ICszNzIsMTQgQEAgdm9pZCBpbnRlbF9lbmdpbmVzX2NsZWFudXAoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUpCiAgKi8KIGludCBpbnRlbF9lbmdpbmVzX2luaXRfbW1pbyhzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsKLQlzdHJ1Y3QgaW50ZWxfZGV2aWNlX2luZm8gKmRldmlj
ZV9pbmZvID0gbWt3cml0ZV9kZXZpY2VfaW5mbyhpOTE1KTsKLQljb25zdCB1bnNpZ25lZCBpbnQg
ZW5naW5lX21hc2sgPSBJTlRFTF9JTkZPKGk5MTUpLT5lbmdpbmVfbWFzazsKLQl1bnNpZ25lZCBp
bnQgbWFzayA9IDA7CiAJdW5zaWduZWQgaW50IGk7CiAJaW50IGVycjsKIAotCVdBUk5fT04oZW5n
aW5lX21hc2sgPT0gMCk7Ci0JV0FSTl9PTihlbmdpbmVfbWFzayAmCi0JCUdFTk1BU0soQklUU19Q
RVJfVFlQRShtYXNrKSAtIDEsIEk5MTVfTlVNX0VOR0lORVMpKTsKKwkvKiBXZSBhbHdheXMgcHJl
c3VtZSB3ZSBoYXZlIGF0IGxlYXN0IFJDUyBhdmFpbGFibGUgZm9yIGxhdGVyIHByb2JpbmcgKi8K
KwlpZiAoR0VNX1dBUk5fT04oIUhBU19FTkdJTkUoaTkxNSwgUkNTMCkpKSB7CisJCWVyciA9IC1F
Tk9ERVY7CisJCWdvdG8gY2xlYW51cDsKKwl9CiAKIAlpZiAoaTkxNV9pbmplY3RfbG9hZF9mYWls
dXJlKCkpCiAJCXJldHVybiAtRU5PREVWOwpAQCAtMzkyLDI1ICszOTEsMTYgQEAgaW50IGludGVs
X2VuZ2luZXNfaW5pdF9tbWlvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCQllcnIg
PSBpbnRlbF9lbmdpbmVfc2V0dXAoaTkxNSwgaSk7CiAJCWlmIChlcnIpCiAJCQlnb3RvIGNsZWFu
dXA7Ci0KLQkJbWFzayB8PSBCSVQoaSk7CiAJfQogCi0JLyoKLQkgKiBDYXRjaCBmYWlsdXJlcyB0
byB1cGRhdGUgaW50ZWxfZW5naW5lcyB0YWJsZSB3aGVuIHRoZSBuZXcgZW5naW5lcwotCSAqIGFy
ZSBhZGRlZCB0byB0aGUgZHJpdmVyIGJ5IGEgd2FybmluZyBhbmQgZGlzYWJsaW5nIHRoZSBmb3Jn
b3R0ZW4KLQkgKiBlbmdpbmVzLgotCSAqLwotCWlmIChXQVJOX09OKG1hc2sgIT0gZW5naW5lX21h
c2spKQotCQlkZXZpY2VfaW5mby0+ZW5naW5lX21hc2sgPSBtYXNrOwotCi0JLyogV2UgYWx3YXlz
IHByZXN1bWUgd2UgaGF2ZSBhdCBsZWFzdCBSQ1MgYXZhaWxhYmxlIGZvciBsYXRlciBwcm9iaW5n
ICovCi0JaWYgKFdBUk5fT04oIUhBU19FTkdJTkUoaTkxNSwgUkNTMCkpKSB7CisJLyogQ2F0Y2gg
ZmFpbHVyZXMgdG8gdXBkYXRlIGludGVsX2VuZ2luZXMgdGFibGUgZm9yIG5ldyBlbmdpbmVzLiAq
LworCWlmIChHRU1fV0FSTl9PTihJTlRFTF9JTkZPKGk5MTUpLT5lbmdpbmVfbWFzayA+PiBpKSkg
ewogCQllcnIgPSAtRU5PREVWOwogCQlnb3RvIGNsZWFudXA7CiAJfQogCi0JUlVOVElNRV9JTkZP
KGk5MTUpLT5udW1fZW5naW5lcyA9IGh3ZWlnaHQzMihtYXNrKTsKKwlSVU5USU1FX0lORk8oaTkx
NSktPm51bV9lbmdpbmVzID0KKwkJaHdlaWdodDMyKElOVEVMX0lORk8oaTkxNSktPmVuZ2luZV9t
YXNrKTsKIAogCWk5MTVfY2hlY2tfYW5kX2NsZWFyX2ZhdWx0cyhpOTE1KTsKIAotLSAKMi4yMC4x
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
