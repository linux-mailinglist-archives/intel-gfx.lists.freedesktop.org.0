Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A480BDDB3A
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Oct 2019 23:47:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9395089C6C;
	Sat, 19 Oct 2019 21:46:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1112989C6C
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Oct 2019 21:46:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Oct 2019 14:46:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,317,1566889200"; d="scan'208";a="371812070"
Received: from mariadab-mobl.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.249.42.2])
 by orsmga005.jf.intel.com with ESMTP; 19 Oct 2019 14:46:55 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun, 20 Oct 2019 00:46:47 +0300
Message-Id: <20191019214647.27866-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/perf: fix oa config reconfiguration
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

VGhlIGN1cnJlbnQgbG9naWMganVzdCByZWFwcGxpZXMgdGhlIHNhbWUgY29uZmlndXJhdGlvbiBh
bHJlYWR5IHN0b3JlZAppbnRvIHN0cmVhbS0+b2FfY29uZmlnIGluc3RlYWQgb2YgdGhlIG5ld2x5
IHNlbGVjdGVkIG9uZS4KClNpZ25lZC1vZmYtYnk6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwu
Zy5sYW5kd2VybGluQGludGVsLmNvbT4KRml4ZXM6IDc4MzFlOWE5NjVlYSAoImRybS9pOTE1L3Bl
cmY6IEFsbG93IGR5bmFtaWMgcmVjb25maWd1cmF0aW9uIG9mIHRoZSBPQSBzdHJlYW0iKQpDYzog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wZXJmLmMgfCAxMSArKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYg
aW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BlcmYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCmlu
ZGV4IDU0ZWMxYzQxOTBhYy4uZDJhYzUxZmU0ZjA0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BlcmYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYu
YwpAQCAtMTg2MywxMyArMTg2MywxNCBAQCBnZXRfb2Ffdm1hKHN0cnVjdCBpOTE1X3BlcmZfc3Ry
ZWFtICpzdHJlYW0sIHN0cnVjdCBpOTE1X29hX2NvbmZpZyAqb2FfY29uZmlnKQogfQogCiBzdGF0
aWMgaW50IGVtaXRfb2FfY29uZmlnKHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0sCisJ
CQkgIHN0cnVjdCBpOTE1X29hX2NvbmZpZyAqb2FfY29uZmlnLAogCQkJICBzdHJ1Y3QgaW50ZWxf
Y29udGV4dCAqY2UpCiB7CiAJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7CiAJc3RydWN0IGk5MTVf
dm1hICp2bWE7CiAJaW50IGVycjsKIAotCXZtYSA9IGdldF9vYV92bWEoc3RyZWFtLCBzdHJlYW0t
Pm9hX2NvbmZpZyk7CisJdm1hID0gZ2V0X29hX3ZtYShzdHJlYW0sIG9hX2NvbmZpZyk7CiAJaWYg
KElTX0VSUih2bWEpKQogCQlyZXR1cm4gUFRSX0VSUih2bWEpOwogCkBAIC0xOTI3LDcgKzE5Mjgs
NyBAQCBzdGF0aWMgaW50IGhzd19lbmFibGVfbWV0cmljX3NldChzdHJ1Y3QgaTkxNV9wZXJmX3N0
cmVhbSAqc3RyZWFtKQogCWludGVsX3VuY29yZV9ybXcodW5jb3JlLCBHRU42X1VDR0NUTDEsCiAJ
CQkgMCwgR0VONl9DU1VOSVRfQ0xPQ0tfR0FURV9ESVNBQkxFKTsKIAotCXJldHVybiBlbWl0X29h
X2NvbmZpZyhzdHJlYW0sIG9hX2NvbnRleHQoc3RyZWFtKSk7CisJcmV0dXJuIGVtaXRfb2FfY29u
ZmlnKHN0cmVhbSwgc3RyZWFtLT5vYV9jb25maWcsIG9hX2NvbnRleHQoc3RyZWFtKSk7CiB9CiAK
IHN0YXRpYyB2b2lkIGhzd19kaXNhYmxlX21ldHJpY19zZXQoc3RydWN0IGk5MTVfcGVyZl9zdHJl
YW0gKnN0cmVhbSkKQEAgLTIyNTAsNyArMjI1MSw3IEBAIHN0YXRpYyBpbnQgZ2VuOF9jb25maWd1
cmVfYWxsX2NvbnRleHRzKHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0sCiBzdGF0aWMg
aW50IGdlbjhfZW5hYmxlX21ldHJpY19zZXQoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVh
bSkKIHsKIAlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSBzdHJlYW0tPnVuY29yZTsKLQlj
b25zdCBzdHJ1Y3QgaTkxNV9vYV9jb25maWcgKm9hX2NvbmZpZyA9IHN0cmVhbS0+b2FfY29uZmln
OworCXN0cnVjdCBpOTE1X29hX2NvbmZpZyAqb2FfY29uZmlnID0gc3RyZWFtLT5vYV9jb25maWc7
CiAJaW50IHJldDsKIAogCS8qCkBAIC0yMjkxLDcgKzIyOTIsNyBAQCBzdGF0aWMgaW50IGdlbjhf
ZW5hYmxlX21ldHJpY19zZXQoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSkKIAlpZiAo
cmV0KQogCQlyZXR1cm4gcmV0OwogCi0JcmV0dXJuIGVtaXRfb2FfY29uZmlnKHN0cmVhbSwgb2Ff
Y29udGV4dChzdHJlYW0pKTsKKwlyZXR1cm4gZW1pdF9vYV9jb25maWcoc3RyZWFtLCBvYV9jb25m
aWcsIG9hX2NvbnRleHQoc3RyZWFtKSk7CiB9CiAKIHN0YXRpYyB2b2lkIGdlbjhfZGlzYWJsZV9t
ZXRyaWNfc2V0KHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCkBAIC0yODk1LDcgKzI4
OTYsNyBAQCBzdGF0aWMgbG9uZyBpOTE1X3BlcmZfY29uZmlnX2xvY2tlZChzdHJ1Y3QgaTkxNV9w
ZXJmX3N0cmVhbSAqc3RyZWFtLAogCQkgKiBXaGVuIHNldCBnbG9iYWxseSwgd2UgdXNlIGEgbG93
IHByaW9yaXR5IGtlcm5lbCBjb250ZXh0LAogCQkgKiBzbyBpdCB3aWxsIGVmZmVjdGl2ZWx5IHRh
a2UgZWZmZWN0IHdoZW4gaWRsZS4KIAkJICovCi0JCWVyciA9IGVtaXRfb2FfY29uZmlnKHN0cmVh
bSwgb2FfY29udGV4dChzdHJlYW0pKTsKKwkJZXJyID0gZW1pdF9vYV9jb25maWcoc3RyZWFtLCBj
b25maWcsIG9hX2NvbnRleHQoc3RyZWFtKSk7CiAJCWlmIChlcnIgPT0gMCkKIAkJCWNvbmZpZyA9
IHhjaGcoJnN0cmVhbS0+b2FfY29uZmlnLCBjb25maWcpOwogCQllbHNlCi0tIAoyLjI0LjAucmMw
LjMwMy5nOTU0YTg2MjY2NQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
