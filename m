Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 559844DE29
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2019 02:46:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 907356E7F1;
	Fri, 21 Jun 2019 00:46:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFAE26E7EC
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jun 2019 00:46:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 17:46:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,398,1557212400"; d="scan'208";a="181980475"
Received: from josouza-mobl.jf.intel.com ([10.24.8.250])
 by fmsmga001.fm.intel.com with ESMTP; 20 Jun 2019 17:45:59 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jun 2019 17:45:54 -0700
Message-Id: <20190621004556.9614-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/3] drm/i915/icl: Add new supported CD clocks
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

Tm93IDE4MCwgMTcyLjggYW5kIDE5MiBNSHogYXJlIHN1cHBvcnRlZC4KCjE4MCBhbmQgMTcyLjgg
TUh6IENEIGNsb2NrcyB3aWxsIG9ubHkgYmUgdXNlZCB3aGVuIGF1ZGlvIGlzIG5vdAplbmFibGVk
IGFzIHN0YXRlIGJ5IEJTcGVjIGFuZCBpbXBsZW1lbnRlZCBpbgppbnRlbF9jcnRjX2NvbXB1dGVf
bWluX2NkY2xrKCksIENEIGNsb2NrIG11c3QgYmUgYXQgbGVhc3QgdHdpY2Ugb2YKQXphbGlhIEJD
TEsgYW5kIEJDTEsgYnkgZGVmYXVsdCBpcyA5NiBNSHosIGl0IGNvdWxkIGJlIHNldCB0byA0OCBN
SHoKYnV0IHdlIGFyZSBub3QgcmVhZGluZyBpdC4KCkJTcGVjOiAyMDU5OApCU3BlYzogMTU3MjkK
Q2M6IENsaW50IFRheWxvciA8Q2xpbnRvbi5BLlRheWxvckBpbnRlbC5jb20+CkNjOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBK
b3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgfCAzMCArKysrKysrKysrKysrKyst
LS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKaW5kZXggODk5M2Fi
MjgzNTYyLi44ZWVmMTc3YjJiYmQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY2RjbGsuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NkY2xrLmMKQEAgLTE3NTYsOSArMTc1NiwxMCBAQCBzdGF0aWMgdm9pZCBjbmxfc2FuaXRp
emVfY2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCiBzdGF0aWMgaW50
IGljbF9jYWxjX2NkY2xrKGludCBtaW5fY2RjbGssIHVuc2lnbmVkIGludCByZWYpCiB7Ci0JaW50
IHJhbmdlc18yNFtdID0geyAzMTIwMDAsIDU1MjAwMCwgNjQ4MDAwIH07Ci0JaW50IHJhbmdlc18x
OV8zOFtdID0geyAzMDcyMDAsIDU1NjgwMCwgNjUyODAwIH07Ci0JaW50ICpyYW5nZXM7CisJY29u
c3QgaW50IHJhbmdlc18yNFtdID0geyAxODAwMDAsIDE5MjAwMCwgMzEyMDAwLCA1NTIwMDAsIDY0
ODAwMCB9OworCWNvbnN0IGludCByYW5nZXNfMTlfMzhbXSA9IHsgMTcyODAwLCAxOTIwMDAsIDMw
NzIwMCwgNTU2ODAwLCA2NTI4MDAgfTsKKwljb25zdCBpbnQgKnJhbmdlczsKKwlpbnQgbGVuLCBp
OwogCiAJc3dpdGNoIChyZWYpIHsKIAlkZWZhdWx0OgpAQCAtMTc2NiwxOSArMTc2NywyMiBAQCBz
dGF0aWMgaW50IGljbF9jYWxjX2NkY2xrKGludCBtaW5fY2RjbGssIHVuc2lnbmVkIGludCByZWYp
CiAJCS8qIGZhbGwgdGhyb3VnaCAqLwogCWNhc2UgMjQwMDA6CiAJCXJhbmdlcyA9IHJhbmdlc18y
NDsKKwkJbGVuID0gQVJSQVlfU0laRShyYW5nZXNfMjQpOwogCQlicmVhazsKIAljYXNlIDE5MjAw
OgogCWNhc2UgMzg0MDA6CiAJCXJhbmdlcyA9IHJhbmdlc18xOV8zODsKKwkJbGVuID0gQVJSQVlf
U0laRShyYW5nZXNfMTlfMzgpOwogCQlicmVhazsKIAl9CiAKLQlpZiAobWluX2NkY2xrID4gcmFu
Z2VzWzFdKQotCQlyZXR1cm4gcmFuZ2VzWzJdOwotCWVsc2UgaWYgKG1pbl9jZGNsayA+IHJhbmdl
c1swXSkKLQkJcmV0dXJuIHJhbmdlc1sxXTsKLQllbHNlCi0JCXJldHVybiByYW5nZXNbMF07CisJ
Zm9yIChpID0gMDsgaSA8IGxlbjsgaSsrKSB7CisJCWlmIChtaW5fY2RjbGsgPD0gcmFuZ2VzW2ld
KQorCQkJcmV0dXJuIHJhbmdlc1tpXTsKKwl9CisKKwlXQVJOX09OKG1pbl9jZGNsayA+IHJhbmdl
c1tsZW4gLSAxXSk7CisJcmV0dXJuIHJhbmdlc1tsZW4gLSAxXTsKIH0KIAogc3RhdGljIGludCBp
Y2xfY2FsY19jZGNsa19wbGxfdmNvKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwg
aW50IGNkY2xrKQpAQCAtMTc5MiwxNiArMTc5NiwyNCBAQCBzdGF0aWMgaW50IGljbF9jYWxjX2Nk
Y2xrX3BsbF92Y28oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBpbnQgY2RjbGsp
CiAJZGVmYXVsdDoKIAkJTUlTU0lOR19DQVNFKGNkY2xrKTsKIAkJLyogZmFsbCB0aHJvdWdoICov
CisJY2FzZSAxNzI4MDA6CiAJY2FzZSAzMDcyMDA6CiAJY2FzZSA1NTY4MDA6CiAJY2FzZSA2NTI4
MDA6CiAJCVdBUk5fT04oZGV2X3ByaXYtPmNkY2xrLmh3LnJlZiAhPSAxOTIwMCAmJgogCQkJZGV2
X3ByaXYtPmNkY2xrLmh3LnJlZiAhPSAzODQwMCk7CiAJCWJyZWFrOworCWNhc2UgMTgwMDAwOgog
CWNhc2UgMzEyMDAwOgogCWNhc2UgNTUyMDAwOgogCWNhc2UgNjQ4MDAwOgogCQlXQVJOX09OKGRl
dl9wcml2LT5jZGNsay5ody5yZWYgIT0gMjQwMDApOworCQlicmVhazsKKwljYXNlIDE5MjAwMDoK
KwkJV0FSTl9PTihkZXZfcHJpdi0+Y2RjbGsuaHcucmVmICE9IDE5MjAwICYmCisJCQlkZXZfcHJp
di0+Y2RjbGsuaHcucmVmICE9IDM4NDAwICYmCisJCQlkZXZfcHJpdi0+Y2RjbGsuaHcucmVmICE9
IDI0MDAwKTsKKwkJYnJlYWs7CiAJfQogCiAJcmF0aW8gPSBjZGNsayAvIChkZXZfcHJpdi0+Y2Rj
bGsuaHcucmVmIC8gMik7Ci0tIAoyLjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
