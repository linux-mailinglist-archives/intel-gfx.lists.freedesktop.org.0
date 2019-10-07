Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69EAECE4B3
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 16:08:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E15B6E0D0;
	Mon,  7 Oct 2019 14:08:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37D2A6E0CC
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 14:08:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18752639-1500050 
 for <intel-gfx@lists.freedesktop.org>; Mon, 07 Oct 2019 15:08:13 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Oct 2019 15:08:12 +0100
Message-Id: <20191007140812.10963-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191007140812.10963-1-chris@chris-wilson.co.uk>
References: <20191007140812.10963-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915/perf: Set the exclusive stream under
 perf->lock
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

VGhlIEJLTCBzdHJ1Y3RfbXV0ZXggaXMgbm8gbW9yZSwgdGhlIG9ubHkgc2VyaWFsaXNhdGlvbiB3
ZSByZXF1aXJlZCBmb3IKc2V0dGluZyB0aGUgZXhjbHVzaXZlIHN0cmVhbSBpcyBhbHJlYWR5IG1h
bmFnZWQgYnkgY2UtPnBpbl9tdXRleCBpbgpnZW44X2NvbmZpZ3VyZV9hbGxfY29udGV4dHMoKS4g
QXMgc3VjaCwgd2UgY2FuIG1hbmlwdWxhdGUKaTkxNV9wZXJmLmV4Y2x1c2l2ZV9zdHJlYW0gdW5k
ZXJuZWF0aCBvdXIgb3duIHBlcmYtPmxvY2suCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IFVtZXNoIE5lcmxpZ2UgUmFtYXBwYSA8dW1l
c2gubmVybGlnZS5yYW1hcHBhQGludGVsLmNvbT4KQ2M6IExpb25lbCBMYW5kd2VybGluIDxsaW9u
ZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IExpb25lbCBMYW5kd2VybGlu
IDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3BlcmYuYyB8IDEyICsrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0
aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3BlcmYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCmluZGV4IDVh
MjViYmViNmM3YS4uNDUxNjdjNTk1MzIyIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3BlcmYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwpAQCAt
MTM0MywxMCArMTM0MywxMCBAQCBzdGF0aWMgdm9pZCBpOTE1X29hX3N0cmVhbV9kZXN0cm95KHN0
cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCiAJICogVW5zZXQgZXhjbHVzaXZlX3N0cmVh
bSBmaXJzdCwgaXQgd2lsbCBiZSBjaGVja2VkIHdoaWxlIGRpc2FibGluZwogCSAqIHRoZSBtZXRy
aWMgc2V0IG9uIGdlbjgrLgogCSAqLwotCW11dGV4X2xvY2soJnBlcmYtPmk5MTUtPmRybS5zdHJ1
Y3RfbXV0ZXgpOworCW11dGV4X2xvY2soJnBlcmYtPmxvY2spOwogCXBlcmYtPmV4Y2x1c2l2ZV9z
dHJlYW0gPSBOVUxMOwogCXBlcmYtPm9wcy5kaXNhYmxlX21ldHJpY19zZXQoc3RyZWFtKTsKLQlt
dXRleF91bmxvY2soJnBlcmYtPmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOworCW11dGV4X3VubG9j
aygmcGVyZi0+bG9jayk7CiAKIAlmcmVlX29hX2J1ZmZlcihzdHJlYW0pOwogCkBAIC0xODUzLDcg
KzE4NTMsNyBAQCBzdGF0aWMgaW50IGdlbjhfY29uZmlndXJlX2FsbF9jb250ZXh0cyhzdHJ1Y3Qg
aTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtLAogCWZvciAoaSA9IDI7IGkgPCBBUlJBWV9TSVpFKHJl
Z3MpOyBpKyspCiAJCXJlZ3NbaV0udmFsdWUgPSBvYV9jb25maWdfZmxleF9yZWcob2FfY29uZmln
LCByZWdzW2ldLnJlZyk7CiAKLQlsb2NrZGVwX2Fzc2VydF9oZWxkKCZpOTE1LT5kcm0uc3RydWN0
X211dGV4KTsKKwlsb2NrZGVwX2Fzc2VydF9oZWxkKCZzdHJlYW0tPnBlcmYtPmxvY2spOwogCiAJ
LyoKIAkgKiBUaGUgT0EgcmVnaXN0ZXIgY29uZmlnIGlzIHNldHVwIHRocm91Z2ggdGhlIGNvbnRl
eHQgaW1hZ2UuIFRoaXMgaW1hZ2UKQEAgLTIyMjAsNyArMjIyMCw3IEBAIHN0YXRpYyBpbnQgaTkx
NV9vYV9zdHJlYW1faW5pdChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtLAogCWlmIChy
ZXQpCiAJCWdvdG8gZXJyX29hX2J1Zl9hbGxvYzsKIAotCXJldCA9IGk5MTVfbXV0ZXhfbG9ja19p
bnRlcnJ1cHRpYmxlKCZzdHJlYW0tPnBlcmYtPmk5MTUtPmRybSk7CisJcmV0ID0gbXV0ZXhfbG9j
a19pbnRlcnJ1cHRpYmxlKCZwZXJmLT5sb2NrKTsKIAlpZiAocmV0KQogCQlnb3RvIGVycl9sb2Nr
OwogCkBAIC0yMjMzLDcgKzIyMzMsNyBAQCBzdGF0aWMgaW50IGk5MTVfb2Ffc3RyZWFtX2luaXQo
c3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSwKIAkJZ290byBlcnJfZW5hYmxlOwogCX0K
IAotCW11dGV4X3VubG9jaygmc3RyZWFtLT5wZXJmLT5pOTE1LT5kcm0uc3RydWN0X211dGV4KTsK
KwltdXRleF91bmxvY2soJnBlcmYtPmxvY2spOwogCiAJaHJ0aW1lcl9pbml0KCZzdHJlYW0tPnBv
bGxfY2hlY2tfdGltZXIsCiAJCSAgICAgQ0xPQ0tfTU9OT1RPTklDLCBIUlRJTUVSX01PREVfUkVM
KTsKQEAgLTIyNDYsNyArMjI0Niw3IEBAIHN0YXRpYyBpbnQgaTkxNV9vYV9zdHJlYW1faW5pdChz
dHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtLAogZXJyX2VuYWJsZToKIAlwZXJmLT5leGNs
dXNpdmVfc3RyZWFtID0gTlVMTDsKIAlwZXJmLT5vcHMuZGlzYWJsZV9tZXRyaWNfc2V0KHN0cmVh
bSk7Ci0JbXV0ZXhfdW5sb2NrKCZzdHJlYW0tPnBlcmYtPmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgp
OworCW11dGV4X3VubG9jaygmcGVyZi0+bG9jayk7CiAKIGVycl9sb2NrOgogCWZyZWVfb2FfYnVm
ZmVyKHN0cmVhbSk7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
