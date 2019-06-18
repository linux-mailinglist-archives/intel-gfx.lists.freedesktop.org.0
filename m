Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 996C64AE22
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 00:50:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BF986E26C;
	Tue, 18 Jun 2019 22:50:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13AC06E26C
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 22:50:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 15:50:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,390,1557212400"; d="scan'208";a="186267179"
Received: from josouza-mobl.jf.intel.com ([10.24.8.250])
 by fmsmga002.fm.intel.com with ESMTP; 18 Jun 2019 15:50:37 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Jun 2019 15:50:33 -0700
Message-Id: <20190618225035.31816-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/icl: Add new supported CD clocks
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
Q2M6IENsaW50IFRheWxvciA8Q2xpbnRvbi5BLlRheWxvckBpbnRlbC5jb20+ClNpZ25lZC1vZmYt
Ynk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyB8IDI5ICsrKysrKysrKysr
KysrKy0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2Rj
bGsuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwppbmRleCA4
OTkzYWIyODM1NjIuLmQ1NjBlMjVkM2ZiNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY2RjbGsuYwpAQCAtMTc1Niw5ICsxNzU2LDEwIEBAIHN0YXRpYyB2b2lkIGNubF9z
YW5pdGl6ZV9jZGNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAKIHN0YXRp
YyBpbnQgaWNsX2NhbGNfY2RjbGsoaW50IG1pbl9jZGNsaywgdW5zaWduZWQgaW50IHJlZikKIHsK
LQlpbnQgcmFuZ2VzXzI0W10gPSB7IDMxMjAwMCwgNTUyMDAwLCA2NDgwMDAgfTsKLQlpbnQgcmFu
Z2VzXzE5XzM4W10gPSB7IDMwNzIwMCwgNTU2ODAwLCA2NTI4MDAgfTsKLQlpbnQgKnJhbmdlczsK
Kwljb25zdCBpbnQgcmFuZ2VzXzI0W10gPSB7IDE4MDAwMCwgMTkyMDAwLCAzMTIwMDAsIDU1MjAw
MCwgNjQ4MDAwIH07CisJY29uc3QgaW50IHJhbmdlc18xOV8zOFtdID0geyAxNzI4MDAsIDE5MjAw
MCwgMzA3MjAwLCA1NTY4MDAsIDY1MjgwMCB9OworCWNvbnN0IGludCAqcmFuZ2VzOworCXVuc2ln
bmVkIGludCBsZW4sIGk7CiAKIAlzd2l0Y2ggKHJlZikgewogCWRlZmF1bHQ6CkBAIC0xNzY2LDE5
ICsxNzY3LDIyIEBAIHN0YXRpYyBpbnQgaWNsX2NhbGNfY2RjbGsoaW50IG1pbl9jZGNsaywgdW5z
aWduZWQgaW50IHJlZikKIAkJLyogZmFsbCB0aHJvdWdoICovCiAJY2FzZSAyNDAwMDoKIAkJcmFu
Z2VzID0gcmFuZ2VzXzI0OworCQlsZW4gPSBBUlJBWV9TSVpFKHJhbmdlc18yNCk7CiAJCWJyZWFr
OwogCWNhc2UgMTkyMDA6CiAJY2FzZSAzODQwMDoKIAkJcmFuZ2VzID0gcmFuZ2VzXzE5XzM4Owor
CQlsZW4gPSBBUlJBWV9TSVpFKHJhbmdlc18xOV8zOCk7CiAJCWJyZWFrOwogCX0KIAotCWlmICht
aW5fY2RjbGsgPiByYW5nZXNbMV0pCi0JCXJldHVybiByYW5nZXNbMl07Ci0JZWxzZSBpZiAobWlu
X2NkY2xrID4gcmFuZ2VzWzBdKQotCQlyZXR1cm4gcmFuZ2VzWzFdOwotCWVsc2UKLQkJcmV0dXJu
IHJhbmdlc1swXTsKKwlmb3IgKGkgPSAwOyBpIDwgbGVuOyBpKyspIHsKKwkJaWYgKG1pbl9jZGNs
ayA8PSByYW5nZXNbaV0pCisJCQlyZXR1cm4gcmFuZ2VzW2ldOworCX0KKworCVdBUk5fT04obWlu
X2NkY2xrID4gcmFuZ2VzW2xlbiAtIDFdKTsKKwlyZXR1cm4gcmFuZ2VzW2xlbiAtIDFdOwogfQog
CiBzdGF0aWMgaW50IGljbF9jYWxjX2NkY2xrX3BsbF92Y28oc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LCBpbnQgY2RjbGspCkBAIC0xNzkyLDE2ICsxNzk2LDIzIEBAIHN0YXRpYyBp
bnQgaWNsX2NhbGNfY2RjbGtfcGxsX3ZjbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsIGludCBjZGNsaykKIAlkZWZhdWx0OgogCQlNSVNTSU5HX0NBU0UoY2RjbGspOwogCQkvKiBm
YWxsIHRocm91Z2ggKi8KKwljYXNlIDE3MjgwMDoKIAljYXNlIDMwNzIwMDoKIAljYXNlIDU1Njgw
MDoKIAljYXNlIDY1MjgwMDoKIAkJV0FSTl9PTihkZXZfcHJpdi0+Y2RjbGsuaHcucmVmICE9IDE5
MjAwICYmCiAJCQlkZXZfcHJpdi0+Y2RjbGsuaHcucmVmICE9IDM4NDAwKTsKIAkJYnJlYWs7CisJ
Y2FzZSAxODAwMDA6CiAJY2FzZSAzMTIwMDA6CiAJY2FzZSA1NTIwMDA6CiAJY2FzZSA2NDgwMDA6
CiAJCVdBUk5fT04oZGV2X3ByaXYtPmNkY2xrLmh3LnJlZiAhPSAyNDAwMCk7CisJCWJyZWFrOwor
CWNhc2UgMTkyMDAwOgorCQlXQVJOX09OKGRldl9wcml2LT5jZGNsay5ody5yZWYgIT0gMTkyMDAg
JiYKKwkJCWRldl9wcml2LT5jZGNsay5ody5yZWYgIT0gMzg0MDAgJiYKKwkJCWRldl9wcml2LT5j
ZGNsay5ody5yZWYgIT0gMjQwMDApOwogCX0KIAogCXJhdGlvID0gY2RjbGsgLyAoZGV2X3ByaXYt
PmNkY2xrLmh3LnJlZiAvIDIpOwotLSAKMi4yMi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
