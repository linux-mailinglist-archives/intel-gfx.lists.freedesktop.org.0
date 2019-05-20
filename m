Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 483A723AE6
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 16:48:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D7D089312;
	Mon, 20 May 2019 14:48:18 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34CE8892DE;
 Mon, 20 May 2019 14:48:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 May 2019 07:48:16 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.122])
 by fmsmga007.fm.intel.com with ESMTP; 20 May 2019 07:48:15 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 20 May 2019 15:47:38 +0100
Message-Id: <20190520144739.13111-27-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520144739.13111-1-tvrtko.ursulin@linux.intel.com>
References: <20190520144739.13111-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 26/27] gem_wsim: Fix prng usage
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkJhY2sgd2hl
biBnZW1fd3NpbSB1c2VkIGZvcmtpbmcgaXQgd2FzIHNhZmUgdG8gdXNlIHRoZSBjb21tb24gc3Rv
cmFnZQpwcm5nLCBidXQgYWZ0ZXIgY29udmVydGluZyB0byB0aHJlYWRzIGl0IG5vIGxvbmdlciBp
cy4KCkZpeCBieSBzdG9yaW5nIGFuZCB1c2luZyBhIG5ldyBwZXIgd29ya2xvYWQgc2VlZCBmb3Ig
YmF0Y2ggYnVmZmVyCmR1cmF0aW9uIHJhbmRvbW5lc3MuCgpTaWduZWQtb2ZmLWJ5OiBUdnJ0a28g
VXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIGJlbmNobWFya3MvZ2VtX3dz
aW0uYyB8IDE3ICsrKysrKysrKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9u
cygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9iZW5jaG1hcmtzL2dlbV93c2ltLmMg
Yi9iZW5jaG1hcmtzL2dlbV93c2ltLmMKaW5kZXggMGNjYjI3MTU3NWY3Li5jNDNiYmJjOGM5NGQg
MTAwNjQ0Ci0tLSBhL2JlbmNobWFya3MvZ2VtX3dzaW0uYworKysgYi9iZW5jaG1hcmtzL2dlbV93
c2ltLmMKQEAgLTE5Myw2ICsxOTMsNyBAQCBzdHJ1Y3Qgd29ya2xvYWQKIAl1bnNpZ25lZCBpbnQg
ZmxhZ3M7CiAJYm9vbCBwcmludF9zdGF0czsKIAorCXVpbnQzMl90IGJiX3Bybmc7CiAJdWludDMy
X3QgcHJuZzsKIAogCXN0cnVjdCB0aW1lc3BlYyByZXBlYXRfc3RhcnQ7CkBAIC0yNDAsNiArMjQx
LDggQEAgc3RydWN0IHdvcmtsb2FkCiBzdGF0aWMgY29uc3QgdW5zaWduZWQgaW50IG5vcF9jYWxp
YnJhdGlvbl91cyA9IDEwMDA7CiBzdGF0aWMgdW5zaWduZWQgbG9uZyBub3BfY2FsaWJyYXRpb247
CiAKK3N0YXRpYyB1bnNpZ25lZCBpbnQgbWFzdGVyX3Bybmc7CisKIHN0YXRpYyB1bnNpZ25lZCBp
bnQgY29udGV4dF92Y3NfcnI7CiAKIHN0YXRpYyBpbnQgdmVyYm9zZSA9IDE7CkBAIC0xMDY3LDE0
ICsxMDcwLDE0IEBAIGNsb25lX3dvcmtsb2FkKHN0cnVjdCB3b3JrbG9hZCAqX3dyaykKICNkZWZp
bmUgUEFHRV9TSVpFICg0MDk2KQogI2VuZGlmCiAKLXN0YXRpYyB1bnNpZ25lZCBpbnQgZ2V0X2R1
cmF0aW9uKHN0cnVjdCB3X3N0ZXAgKncpCitzdGF0aWMgdW5zaWduZWQgaW50IGdldF9kdXJhdGlv
bihzdHJ1Y3Qgd29ya2xvYWQgKndyaywgc3RydWN0IHdfc3RlcCAqdykKIHsKIAlzdHJ1Y3QgZHVy
YXRpb24gKmR1ciA9ICZ3LT5kdXJhdGlvbjsKIAogCWlmIChkdXItPm1pbiA9PSBkdXItPm1heCkK
IAkJcmV0dXJuIGR1ci0+bWluOwogCWVsc2UKLQkJcmV0dXJuIGR1ci0+bWluICsgaGFyc19wZXRy
dXNrYV9mNTRfMV9yYW5kb21fdW5zYWZlKCkgJQorCQlyZXR1cm4gZHVyLT5taW4gKyBoYXJzX3Bl
dHJ1c2thX2Y1NF8xX3JhbmRvbSgmd3JrLT5iYl9wcm5nKSAlCiAJCSAgICAgICAoZHVyLT5tYXgg
KyAxIC0gZHVyLT5taW4pOwogfQogCkBAIC0xNDQ4LDYgKzE0NTEsNyBAQCBwcmVwYXJlX3dvcmts
b2FkKHVuc2lnbmVkIGludCBpZCwgc3RydWN0IHdvcmtsb2FkICp3cmssIHVuc2lnbmVkIGludCBm
bGFncykKIAogCXdyay0+aWQgPSBpZDsKIAl3cmstPnBybmcgPSByYW5kKCk7CisJd3JrLT5iYl9w
cm5nID0gKHdyay0+ZmxhZ3MgJiBTWU5DRURDTElFTlRTKSA/IG1hc3Rlcl9wcm5nIDogcmFuZCgp
OwogCXdyay0+cnVuID0gdHJ1ZTsKIAogCWN0eF92Y3MgPSAgMDsKQEAgLTI2MDcsNyArMjYxMSw3
IEBAIGRvX2ViKHN0cnVjdCB3b3JrbG9hZCAqd3JrLCBzdHJ1Y3Qgd19zdGVwICp3LCBlbnVtIGlu
dGVsX2VuZ2luZV9pZCBlbmdpbmUsCiAJdy0+ZWIuYmF0Y2hfc3RhcnRfb2Zmc2V0ID0KIAkJdy0+
dW5ib3VuZF9kdXJhdGlvbiA/CiAJCTAgOgotCQlBTElHTih3LT5iYl9zeiAtIGdldF9iYl9zeihn
ZXRfZHVyYXRpb24odykpLAorCQlBTElHTih3LT5iYl9zeiAtIGdldF9iYl9zeihnZXRfZHVyYXRp
b24od3JrLCB3KSksCiAJCSAgICAgIDIgKiBzaXplb2YodWludDMyX3QpKTsKIAogCWZvciAoaSA9
IDA7IGkgPCB3LT5mZW5jZV9kZXBzLm5yOyBpKyspIHsKQEAgLTI2NzYsOSArMjY4MCw2IEBAIHN0
YXRpYyB2b2lkICpydW5fd29ya2xvYWQodm9pZCAqZGF0YSkKIAogCWNsb2NrX2dldHRpbWUoQ0xP
Q0tfTU9OT1RPTklDLCAmdF9zdGFydCk7CiAKLQloYXJzX3BldHJ1c2thX2Y1NF8xX3JhbmRvbV9z
ZWVkKCh3cmstPmZsYWdzICYgU1lOQ0VEQ0xJRU5UUykgPwotCQkJCQkwIDogd3JrLT5pZCk7Ci0K
IAlpbml0X3N0YXR1c19wYWdlKHdyaywgSU5JVF9BTEwpOwogCWZvciAoY291bnQgPSAwOyB3cmst
PnJ1biAmJiAod3JrLT5iYWNrZ3JvdW5kIHx8IGNvdW50IDwgd3JrLT5yZXBlYXQpOwogCSAgICAg
Y291bnQrKykgewpAQCAtMzExNyw2ICszMTE4LDEwIEBAIGludCBtYWluKGludCBhcmdjLCBjaGFy
ICoqYXJndikKIAogCWluaXRfY2xvY2tzKCk7CiAKKwltYXN0ZXJfcHJuZyA9IHRpbWUoTlVMTCk7
CisJc3JhbmQobWFzdGVyX3BybmcpOworCW1hc3Rlcl9wcm5nID0gcmFuZCgpOworCiAJd2hpbGUg
KChjID0gZ2V0b3B0KGFyZ2MsIGFyZ3YsCiAJCQkgICAiaHF2MlJzU0h4R2RjOm46cjp3Olc6YTp0
OmI6cDoiKSkgIT0gLTEpIHsKIAkJc3dpdGNoIChjKSB7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
