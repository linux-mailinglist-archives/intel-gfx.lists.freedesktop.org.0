Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C87741A352C
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Apr 2020 15:52:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B750C6EBC3;
	Thu,  9 Apr 2020 13:52:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45ABC6E207;
 Thu,  9 Apr 2020 13:52:54 +0000 (UTC)
IronPort-SDR: rDQHmqosfXaSxPv7GlfaQ7at/Ky39gxoFjqg8wRhjZoMkCWR/0uu8zW/moBj7tIwXkFjdr5zjc
 OeDWjUptlLPg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2020 06:52:54 -0700
IronPort-SDR: 1jrD6QlTK2H7Q5vi4E3FbvmdvZbWB0wfZ1aHieQ5bGrxNxpoVaHsbM5cNSfA8T1ZgXcCDB78gI
 hsW7vtFPe5kg==
X-IronPort-AV: E=Sophos;i="5.72,362,1580803200"; d="scan'208";a="398573527"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2020 06:52:51 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu,  9 Apr 2020 15:52:24 +0200
Message-Id: <20200409135224.24509-3-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200409135224.24509-1-janusz.krzysztofik@linux.intel.com>
References: <20200409135224.24509-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v3 2/2] tests/gem_userptr_blits: Refresh
 other still MMAP_GTT dependent subtests
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RXh0ZW5kIGluaXRpYWwgY2hlY2sgZm9yIHN1cHBvcnQgb2YgTU1BUF9HVFQgbWFwcGluZyB0byB1
c2VycHRyIHdpdGgKZXF1aXZhbGVudCBjaGVja3MgZm9yIGVhY2ggTU1BUF9PRkZTRVQgbWFwcGlu
ZyB0eXBlIHN1cHBvcnRlZCBieSBpOTE1CmRyaXZlci4gIEJhc2VkIG9uIHRoYXQsIGV4dGVuZCBj
b3ZlcmFnZSBvZiBwcm9jZXNzLWV4aXQtZ3R0KiBzdWJ0ZXN0cwpvdmVyIG5vbi1HVFQgbWFwcGlu
ZyB0eXBlcy4gIEluIGNhc2Ugb2YgZG1hYnVmLSogc3VidGVzdHMsIHVzZSBmaXJzdApzdXBwb3J0
ZWQgbWFwcGluZyB0eXBlIGlmIHRoZXJlIGFyZSBhbnkuCgp2MjogQ2xlYXIgJ21hcCcgYmVmb3Jl
IHJldXNlIChaYmlnbmlldykuCnYzOiBLaWxsIG91dC1vZi1jb250ZXh0IGVycm5vIGNoZWNrIChD
aHJpcykuCgpTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5rcnp5c3p0
b2Zpa0BsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBaYmlnbmlldyBLZW1wY3p5xYRza2kg
PHpiaWduaWV3LmtlbXBjenluc2tpQGludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNA
Y2hyaXMtd2lsc29uLmNvLnVrPgotLS0KIHRlc3RzL2k5MTUvZ2VtX3VzZXJwdHJfYmxpdHMuYyB8
IDExMSArKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA4
MSBpbnNlcnRpb25zKCspLCAzMCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90ZXN0cy9pOTE1
L2dlbV91c2VycHRyX2JsaXRzLmMgYi90ZXN0cy9pOTE1L2dlbV91c2VycHRyX2JsaXRzLmMKaW5k
ZXggOTc1Y2Q5ZGFiLi4xN2Y0ZDEwZjAgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2k5MTUvZ2VtX3VzZXJw
dHJfYmxpdHMuYworKysgYi90ZXN0cy9pOTE1L2dlbV91c2VycHRyX2JsaXRzLmMKQEAgLTczLDE4
ICs3MywzMSBAQAogCiBzdGF0aWMgdWludDMyX3QgdXNlcnB0cl9mbGFncyA9IExPQ0FMX0k5MTVf
VVNFUlBUUl9VTlNZTkNIUk9OSVpFRDsKIAotc3RhdGljIGJvb2wgY2FuX2d0dF9tbWFwOworc3Rh
dGljIGJvb2wgKmNhbl9tbWFwOwogCiAjZGVmaW5lIFdJRFRIIDUxMgogI2RlZmluZSBIRUlHSFQg
NTEyCiAKIHN0YXRpYyB1aW50MzJfdCBsaW5lYXJbV0lEVEgqSEVJR0hUXTsKIAotc3RhdGljIGJv
b2wgaGFzX2d0dF9tbWFwKGludCBpOTE1KQorc3RhdGljIGJvb2wgaGFzX21tYXAoaW50IGk5MTUs
IGNvbnN0IHN0cnVjdCBtbWFwX29mZnNldCAqdCkKIHsKLQl2b2lkICpwdHIsICptYXAgPSBOVUxM
OworCXZvaWQgKnB0ciwgKm1hcDsKIAl1aW50MzJfdCBoYW5kbGU7CiAKKwloYW5kbGUgPSBnZW1f
Y3JlYXRlKGk5MTUsIFBBR0VfU0laRSk7CisJbWFwID0gX19nZW1fbW1hcF9vZmZzZXQoaTkxNSwg
aGFuZGxlLCAwLCBQQUdFX1NJWkUsIFBST1RfV1JJVEUsCisJCQkJdC0+dHlwZSk7CisJZ2VtX2Ns
b3NlKGk5MTUsIGhhbmRsZSk7CisJaWYgKG1hcCkgeworCQltdW5tYXAobWFwLCBQQUdFX1NJWkUp
OworCX0gZWxzZSB7CisJCWlndF9kZWJ1Zygibm8gSFcgLyBrZXJuZWwgc3VwcG9ydCBmb3IgbW1h
cC1vZmZzZXQoJXMpXG4iLAorCQkJICB0LT5uYW1lKTsKKwkJcmV0dXJuIGZhbHNlOworCX0KKwlt
YXAgPSBOVUxMOworCiAJaWd0X2Fzc2VydChwb3NpeF9tZW1hbGlnbigmcHRyLCBQQUdFX1NJWkUs
IFBBR0VfU0laRSkgPT0gMCk7CiAKIAlpZiAoX19nZW1fdXNlcnB0cihpOTE1LCBwdHIsIDQwOTYs
IDAsCkBAIC05Miw5ICsxMDUsMTIgQEAgc3RhdGljIGJvb2wgaGFzX2d0dF9tbWFwKGludCBpOTE1
KQogCQlnb3RvIG91dF9wdHI7CiAJaWd0X2Fzc2VydChoYW5kbGUgIT0gMCk7CiAKLQltYXAgPSBf
X2dlbV9tbWFwX19ndHQoaTkxNSwgaGFuZGxlLCA0MDk2LCBQUk9UX1dSSVRFKTsKKwltYXAgPSBf
X2dlbV9tbWFwX29mZnNldChpOTE1LCBoYW5kbGUsIDAsIDQwOTYsIFBST1RfV1JJVEUsIHQtPnR5
cGUpOwogCWlmIChtYXApCiAJCW11bm1hcChtYXAsIDQwOTYpOworCWVsc2UKKwkJaWd0X2RlYnVn
KCJtbWFwLW9mZnNldCglcykgYmFubmVkLCBsb2NrZGVwIGxvb3AgcHJldmVudGlvblxuIiwKKwkJ
CSAgdC0+bmFtZSk7CiAKIAlnZW1fY2xvc2UoaTkxNSwgaGFuZGxlKTsKIG91dF9wdHI6CkBAIC02
NDIsMjAgKzY1OCwyNSBAQCBzdGF0aWMgaW50IHRlc3RfaW52YWxpZF9tYXBwaW5nKGludCBmZCwg
Y29uc3Qgc3RydWN0IG1tYXBfb2Zmc2V0ICp0KQogCXJldHVybiAwOwogfQogCi0jZGVmaW5lIFBF
X0dUVF9NQVAgMHgxCi0jZGVmaW5lIFBFX0JVU1kgMHgyCi1zdGF0aWMgdm9pZCB0ZXN0X3Byb2Nl
c3NfZXhpdChpbnQgZmQsIGludCBmbGFncykKKyNkZWZpbmUgUEVfQlVTWSAweDEKK3N0YXRpYyB2
b2lkIHRlc3RfcHJvY2Vzc19leGl0KGludCBmZCwgY29uc3Qgc3RydWN0IG1tYXBfb2Zmc2V0ICpt
bW8sIGludCBmbGFncykKIHsKLQlpZiAoZmxhZ3MgJiBQRV9HVFRfTUFQKQotCQlpZ3RfcmVxdWly
ZShjYW5fZ3R0X21tYXApOworCWlmIChtbW8pCisJCWlndF9yZXF1aXJlX2YoY2FuX21tYXBbbW1v
LT50eXBlXSwKKwkJCSAgICAgICJIVyAmIGtlcm5lbCBzdXBwb3J0IGZvciBMTEMgYW5kIG1tYXAt
b2Zmc2V0KCVzKSBvdmVyIHVzZXJwdHJcbiIsCisJCQkgICAgICBtbW8tPm5hbWUpOwogCiAJaWd0
X2ZvcmsoY2hpbGQsIDEpIHsKIAkJdWludDMyX3QgaGFuZGxlOwogCiAJCWhhbmRsZSA9IGNyZWF0
ZV91c2VycHRyX2JvKGZkLCBzaXplb2YobGluZWFyKSk7CiAKLQkJaWYgKGZsYWdzICYgUEVfR1RU
X01BUCkgewotCQkJdWludDMyX3QgKnB0ciA9IF9fZ2VtX21tYXBfX2d0dChmZCwgaGFuZGxlLCBz
aXplb2YobGluZWFyKSwgUFJPVF9SRUFEIHwgUFJPVF9XUklURSk7CisJCWlmIChtbW8pIHsKKwkJ
CXVpbnQzMl90ICpwdHI7CisKKwkJCXB0ciA9IF9fZ2VtX21tYXBfb2Zmc2V0KGZkLCBoYW5kbGUs
IDAsIHNpemVvZihsaW5lYXIpLAorCQkJCQkJUFJPVF9SRUFEIHwgUFJPVF9XUklURSwKKwkJCQkJ
CW1tby0+dHlwZSk7CiAJCQlpZiAocHRyKQogCQkJCSpwdHIgPSAwOwogCQl9CkBAIC05MzMsMTMg
Kzk1NCwxNCBAQCBzdGF0aWMgdm9pZCAoKiB2b2xhdGlsZSBvcmlnX3NpZ2J1cykoaW50IHNpZywg
c2lnaW5mb190ICppbmZvLCB2b2lkICpwYXJhbSk7CiBzdGF0aWMgdm9sYXRpbGUgdW5zaWduZWQg
bG9uZyBzaWdidXNfc3RhcnQ7CiBzdGF0aWMgdm9sYXRpbGUgbG9uZyBzaWdidXNfY250ID0gLTE7
CiAKLXN0YXRpYyB2b2lkICp1bWFwKGludCBmZCwgdWludDMyX3QgaGFuZGxlKQorc3RhdGljIHZv
aWQgKnVtYXAoaW50IGZkLCB1aW50MzJfdCBoYW5kbGUsIGNvbnN0IHN0cnVjdCBtbWFwX29mZnNl
dCAqbW1vKQogewogCXZvaWQgKnB0cjsKIAotCWlmIChjYW5fZ3R0X21tYXApIHsKLQkJcHRyID0g
Z2VtX21tYXBfX2d0dChmZCwgaGFuZGxlLCBzaXplb2YobGluZWFyKSwKLQkJCQkgICAgUFJPVF9S
RUFEIHwgUFJPVF9XUklURSk7CisJaWYgKG1tbykgeworCQlwdHIgPSBfX2dlbV9tbWFwX29mZnNl
dChmZCwgaGFuZGxlLCAwLCBzaXplb2YobGluZWFyKSwKKwkJCQkJUFJPVF9SRUFEIHwgUFJPVF9X
UklURSwgbW1vLT50eXBlKTsKKwkJaWd0X2Fzc2VydChwdHIpOwogCX0gZWxzZSB7CiAJCXVpbnQz
Ml90IHRtcCA9IGdlbV9jcmVhdGUoZmQsIHNpemVvZihsaW5lYXIpKTsKIAkJaWd0X2Fzc2VydF9l
cShjb3B5KGZkLCB0bXAsIGhhbmRsZSksIDApOwpAQCAtOTUxLDE2ICs5NzMsMTcgQEAgc3RhdGlj
IHZvaWQgKnVtYXAoaW50IGZkLCB1aW50MzJfdCBoYW5kbGUpCiB9CiAKIHN0YXRpYyB2b2lkCi1j
aGVja19ibyhpbnQgZmQxLCB1aW50MzJfdCBoYW5kbGUxLCBpbnQgaXNfdXNlcnB0ciwgaW50IGZk
MiwgdWludDMyX3QgaGFuZGxlMikKK2NoZWNrX2JvKGludCBmZDEsIHVpbnQzMl90IGhhbmRsZTEs
IGludCBpc191c2VycHRyLCBpbnQgZmQyLCB1aW50MzJfdCBoYW5kbGUyLAorCSBjb25zdCBzdHJ1
Y3QgbW1hcF9vZmZzZXQgKm1tbykKIHsKIAl1bnNpZ25lZCBjaGFyICpwdHIxLCAqcHRyMjsKIAl1
bnNpZ25lZCBsb25nIHNpemUgPSBzaXplb2YobGluZWFyKTsKIAotCXB0cjIgPSB1bWFwKGZkMiwg
aGFuZGxlMik7CisJcHRyMiA9IHVtYXAoZmQyLCBoYW5kbGUyLCBtbW8pOwogCWlmIChpc191c2Vy
cHRyKQogCQlwdHIxID0gaXNfdXNlcnB0ciA+IDAgPyBnZXRfaGFuZGxlX3B0cihoYW5kbGUxKSA6
IHB0cjI7CiAJZWxzZQotCQlwdHIxID0gdW1hcChmZDEsIGhhbmRsZTEpOworCQlwdHIxID0gdW1h
cChmZDEsIGhhbmRsZTEsIG1tbyk7CiAKIAlpZ3RfYXNzZXJ0KHB0cjEpOwogCWlndF9hc3NlcnQo
cHRyMik7CkBAIC05NjgsNyArOTkxLDcgQEAgY2hlY2tfYm8oaW50IGZkMSwgdWludDMyX3QgaGFu
ZGxlMSwgaW50IGlzX3VzZXJwdHIsIGludCBmZDIsIHVpbnQzMl90IGhhbmRsZTIpCiAJc2lnYnVz
X3N0YXJ0ID0gKHVuc2lnbmVkIGxvbmcpcHRyMjsKIAlpZ3RfYXNzZXJ0KG1lbWNtcChwdHIxLCBw
dHIyLCBzaXplb2YobGluZWFyKSkgPT0gMCk7CiAKLQlpZiAoY2FuX2d0dF9tbWFwKSB7CisJaWYg
KG1tbykgewogCQljb3VudGVyKys7CiAJCW1lbXNldChwdHIxLCBjb3VudGVyLCBzaXplKTsKIAkJ
bWVtc2V0KHB0cjIsIGNvdW50ZXIsIHNpemUpOwpAQCAtMTAyNiw5ICsxMDQ5LDE3IEBAIHN0YXRp
YyBpbnQgdGVzdF9kbWFidWYodm9pZCkKIAl1aW50MzJfdCBoYW5kbGUsIGhhbmRsZV9pbXBvcnQ7
CiAJaW50IGRtYV9idWZfZmQgPSAtMTsKIAlpbnQgcmV0OworCWNvbnN0IHN0cnVjdCBtbWFwX29m
ZnNldCAqbW1vID0gTlVMTDsKIAogCWZkMSA9IGRybV9vcGVuX2RyaXZlcihEUklWRVJfSU5URUwp
OwogCisJZm9yX2VhY2hfbW1hcF9vZmZzZXRfdHlwZShmZDEsIHQpCisJCWlmIChjYW5fbW1hcFt0
LT50eXBlXSkgeworCQkJaWd0X2RlYnVnKCJ1c2luZyBtbWFwLW9mZnNldCglcylcbiIsIHQtPm5h
bWUpOworCQkJbW1vID0gdDsKKwkJCWJyZWFrOworCX0KKwogCWhhbmRsZSA9IGNyZWF0ZV91c2Vy
cHRyX2JvKGZkMSwgc2l6ZW9mKGxpbmVhcikpOwogCW1lbXNldChnZXRfaGFuZGxlX3B0cihoYW5k
bGUpLCBjb3VudGVyLCBzaXplb2YobGluZWFyKSk7CiAKQEAgLTEwNDUsMTcgKzEwNzYsMTcgQEAg
c3RhdGljIGludCB0ZXN0X2RtYWJ1Zih2b2lkKQogCiAJZmQyID0gZHJtX29wZW5fZHJpdmVyKERS
SVZFUl9JTlRFTCk7CiAJaGFuZGxlX2ltcG9ydCA9IHByaW1lX2ZkX3RvX2hhbmRsZShmZDIsIGRt
YV9idWZfZmQpOwotCWNoZWNrX2JvKGZkMSwgaGFuZGxlLCAxLCBmZDIsIGhhbmRsZV9pbXBvcnQp
OworCWNoZWNrX2JvKGZkMSwgaGFuZGxlLCAxLCBmZDIsIGhhbmRsZV9pbXBvcnQsIG1tbyk7CiAK
IAkvKiBjbG9zZSBkbWFfYnVmLCBjaGVjayB3aGV0aGVyIG5vdGhpbmcgZGlzYXBwZWFycy4gKi8K
IAljbG9zZShkbWFfYnVmX2ZkKTsKLQljaGVja19ibyhmZDEsIGhhbmRsZSwgMSwgZmQyLCBoYW5k
bGVfaW1wb3J0KTsKKwljaGVja19ibyhmZDEsIGhhbmRsZSwgMSwgZmQyLCBoYW5kbGVfaW1wb3J0
LCBtbW8pOwogCiAJLyogZGVzdHJveSB1c2VycHRyIG9iamVjdCBhbmQgZXhwZWN0IFNJR0JVUyAq
LwogCWZyZWVfdXNlcnB0cl9ibyhmZDEsIGhhbmRsZSk7CiAJY2xvc2UoZmQxKTsKIAotCWlmIChj
YW5fZ3R0X21tYXApIHsKKwlpZiAobW1vKSB7CiAJCXN0cnVjdCBzaWdhY3Rpb24gc2lnYWN0LCBv
cmlnX3NpZ2FjdDsKIAogCQltZW1zZXQoJnNpZ2FjdCwgMCwgc2l6ZW9mKHNpZ2FjdCkpOwpAQCAt
MTA2Nyw3ICsxMDk4LDcgQEAgc3RhdGljIGludCB0ZXN0X2RtYWJ1Zih2b2lkKQogCQlvcmlnX3Np
Z2J1cyA9IG9yaWdfc2lnYWN0LnNhX3NpZ2FjdGlvbjsKIAogCQlzaWdidXNfY250ID0gMDsKLQkJ
Y2hlY2tfYm8oZmQyLCBoYW5kbGVfaW1wb3J0LCAtMSwgZmQyLCBoYW5kbGVfaW1wb3J0KTsKKwkJ
Y2hlY2tfYm8oZmQyLCBoYW5kbGVfaW1wb3J0LCAtMSwgZmQyLCBoYW5kbGVfaW1wb3J0LCBtbW8p
OwogCQlpZ3RfYXNzZXJ0KHNpZ2J1c19jbnQgPiAwKTsKIAogCQlyZXQgPSBzaWdhY3Rpb24oU0lH
QlVTLCAmb3JpZ19zaWdhY3QsIE5VTEwpOwpAQCAtMjAzMCwxMiArMjA2MSwyMyBAQCBpZ3RfbWFp
bl9hcmdzKCJjOiIsIE5VTEwsIGhlbHBfc3RyLCBvcHRfaGFuZGxlciwgTlVMTCkKIAlpbnQgc2l6
ZSA9IHNpemVvZihsaW5lYXIpOwogCiAJaWd0X2ZpeHR1cmUgeworCQl1bnNpZ25lZCBpbnQgbW1v
X21heCA9IDA7CisKIAkJZmQgPSBkcm1fb3Blbl9kcml2ZXIoRFJJVkVSX0lOVEVMKTsKIAkJaWd0
X2Fzc2VydChmZCA+PSAwKTsKIAkJaWd0X3JlcXVpcmVfZ2VtKGZkKTsKIAkJZ2VtX3JlcXVpcmVf
YmxpdHRlcihmZCk7CiAKLQkJY2FuX2d0dF9tbWFwID0gaGFzX2d0dF9tbWFwKGZkKSAmJiBnZW1f
aGFzX2xsYyhmZCk7CisJCWZvcl9lYWNoX21tYXBfb2Zmc2V0X3R5cGUoZmQsIHQpCisJCQlpZiAo
dC0+dHlwZSA+PSBtbW9fbWF4KQorCQkJCW1tb19tYXggPSB0LT50eXBlICsgMTsKKwkJaWd0X2Fz
c2VydChtbW9fbWF4KTsKKworCQljYW5fbW1hcCA9IGNhbGxvYyhtbW9fbWF4LCBzaXplb2YoKmNh
bl9tbWFwKSk7CisJCWlndF9hc3NlcnQoY2FuX21tYXApOworCisJCWZvcl9lYWNoX21tYXBfb2Zm
c2V0X3R5cGUoZmQsIHQpCisJCQljYW5fbW1hcFt0LT50eXBlXSA9IGhhc19tbWFwKGZkLCB0KSAm
JiBnZW1faGFzX2xsYyhmZCk7CiAKIAkJc2l6ZSA9IHNpemVvZihsaW5lYXIpOwogCkBAIC0yMTkz
LDE2ICsyMjM1LDIyIEBAIGlndF9tYWluX2FyZ3MoImM6IiwgTlVMTCwgaGVscF9zdHIsIG9wdF9o
YW5kbGVyLCBOVUxMKQogCQl9CiAKIAkJaWd0X3N1YnRlc3QoInByb2Nlc3MtZXhpdCIpCi0JCQl0
ZXN0X3Byb2Nlc3NfZXhpdChmZCwgMCk7CisJCQl0ZXN0X3Byb2Nlc3NfZXhpdChmZCwgTlVMTCwg
MCk7CiAKLQkJaWd0X3N1YnRlc3QoInByb2Nlc3MtZXhpdC1ndHQiKQotCQkJdGVzdF9wcm9jZXNz
X2V4aXQoZmQsIFBFX0dUVF9NQVApOworCQlpZ3RfZGVzY3JpYmUoIlRlc3QgcHJvY2VzcyBleGl0
IHdpdGggdXNlcnB0ciBvYmplY3QgbW1hcHBlZCB2aWEgbW1hcC1vZmZzZXQiKTsKKwkJaWd0X3N1
YnRlc3Rfd2l0aF9keW5hbWljKCJwcm9jZXNzLWV4aXQtbW1hcCIpCisJCQlmb3JfZWFjaF9tbWFw
X29mZnNldF90eXBlKGZkLCB0KQorCQkJCWlndF9keW5hbWljKHQtPm5hbWUpCisJCQkJCXRlc3Rf
cHJvY2Vzc19leGl0KGZkLCB0LCAwKTsKIAogCQlpZ3Rfc3VidGVzdCgicHJvY2Vzcy1leGl0LWJ1
c3kiKQotCQkJdGVzdF9wcm9jZXNzX2V4aXQoZmQsIFBFX0JVU1kpOworCQkJdGVzdF9wcm9jZXNz
X2V4aXQoZmQsIE5VTEwsIFBFX0JVU1kpOwogCi0JCWlndF9zdWJ0ZXN0KCJwcm9jZXNzLWV4aXQt
Z3R0LWJ1c3kiKQotCQkJdGVzdF9wcm9jZXNzX2V4aXQoZmQsIFBFX0dUVF9NQVAgfCBQRV9CVVNZ
KTsKKwkJaWd0X2Rlc2NyaWJlKCJUZXN0IHByb2Nlc3MgZXhpdCB3aXRoIGJ1c3kgdXNlcnB0ciBv
YmplY3QgbW1hcHBlZCB2aWEgbW1hcC1vZmZzZXQiKTsKKwkJaWd0X3N1YnRlc3Rfd2l0aF9keW5h
bWljKCJwcm9jZXNzLWV4aXQtbW1hcC1idXN5IikKKwkJCWZvcl9lYWNoX21tYXBfb2Zmc2V0X3R5
cGUoZmQsIHQpCisJCQkJaWd0X2R5bmFtaWModC0+bmFtZSkKKwkJCQkJdGVzdF9wcm9jZXNzX2V4
aXQoZmQsIHQsIFBFX0JVU1kpOwogCiAJCWlndF9zdWJ0ZXN0KCJjcmVhdGUtZGVzdHJveS1zeW5j
IikKIAkJCXRlc3RfY3JlYXRlX2Rlc3Ryb3koZmQsIDUpOwpAQCAtMjMyNSw0ICsyMzczLDcgQEAg
aWd0X21haW5fYXJncygiYzoiLCBOVUxMLCBoZWxwX3N0ciwgb3B0X2hhbmRsZXIsIE5VTEwpCiAK
IAlpZ3Rfc3VidGVzdCgiYWNjZXNzLWNvbnRyb2wiKQogCQl0ZXN0X2FjY2Vzc19jb250cm9sKGZk
KTsKKworCWlndF9maXh0dXJlCisJCWZyZWUoY2FuX21tYXApOwogfQotLSAKMi4yMS4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
