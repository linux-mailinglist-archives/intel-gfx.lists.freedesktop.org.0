Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 070481A0429
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 03:10:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1144D6E500;
	Tue,  7 Apr 2020 01:10:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E7C489BF4
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 01:10:23 +0000 (UTC)
IronPort-SDR: fvZF7Bwb63/4ynJvme4/QNWVqgnlKlAN26yucYg5acbAucrZUw7zrAPuetkfmcPb9olxYsBAgj
 nHZlcgxDS+Jw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 18:10:21 -0700
IronPort-SDR: 88ME0+omYnbuc0+SQcfNyUkIZzOuPuEQ2L2UkNwbOoV5puGotDQnYByI3yIpfHQgyAiytg3WBG
 OXqQ61dHt8ew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,353,1580803200"; d="scan'208";a="254295632"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.15.8])
 by orsmga006.jf.intel.com with ESMTP; 06 Apr 2020 18:10:21 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Apr 2020 18:11:56 -0700
Message-Id: <20200407011157.362092-7-jose.souza@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200407011157.362092-1-jose.souza@intel.com>
References: <20200407011157.362092-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 7/8] drm/i915/tc: Catch TC users accessing
 FIA registers without enable aux
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgZGVzY3JpYmVkIGluICJkcm0vaTkxNS90Yy9pY2w6IEltcGxlbWVudCBUQyBjb2xkIHNlcXVl
bmNlcyIgdXNlcnMKb2YgVEMgZnVuY3Rpb25zIHNob3VsZCBoZWxkIGF1eCBwb3dlciB3ZWxsIGR1
cmluZyBhY2Nlc3MgdG8gYXZvaWQKcmVhZCBnYXJiYWdlIGR1ZSBIVyBpbiBUQyBjb2xkIHN0YXRl
LgoKU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRl
bC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jIHwgMjIg
KysrKysrKysrKysrKysrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF90Yy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jCmlu
ZGV4IDgzODYxNjUzNzY4ZC4uZTQ3M2JiNGE5YjBiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF90Yy5jCkBAIC05NSw2ICs5NSwyMCBAQCB0Y19jb2xkX3VuYmxvY2soc3RydWN0
IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsIGludGVsX3dha2VyZWZfdCB3YWtlcmVmKQog
CWludGVsX2Rpc3BsYXlfcG93ZXJfcHV0X2FzeW5jKGk5MTUsIGRvbWFpbiwgd2FrZXJlZik7CiB9
CiAKK3N0YXRpYyB2b2lkCitpc190Y19jb2xkX2Jsb2NrZWQoc3RydWN0IGludGVsX2RpZ2l0YWxf
cG9ydCAqZGlnX3BvcnQpCit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19p
OTE1KGRpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsKKwlib29sIGVuYWJsZWQ7CisKKwlpZiAoSU5U
RUxfR0VOKGk5MTUpID09IDExICYmICFkaWdfcG9ydC0+dGNfbGVnYWN5X3BvcnQpCisJCXJldHVy
bjsKKworCWVuYWJsZWQgPSBpbnRlbF9kaXNwbGF5X3Bvd2VyX2lzX2VuYWJsZWQoaTkxNSwKKwkJ
CQkJCSB0Y19jb2xkX2dldF9wb3dlcl9kb21haW4oZGlnX3BvcnQpKTsKKwlkcm1fV0FSTl9PTigm
aTkxNS0+ZHJtLCAhZW5hYmxlZCk7Cit9CisKIHUzMiBpbnRlbF90Y19wb3J0X2dldF9sYW5lX21h
c2soc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpCiB7CiAJc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsKQEAg
LTEwNCw3ICsxMTgsNyBAQCB1MzIgaW50ZWxfdGNfcG9ydF9nZXRfbGFuZV9tYXNrKHN0cnVjdCBp
bnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQogCWxhbmVfbWFzayA9IGludGVsX3VuY29yZV9y
ZWFkKHVuY29yZSwKIAkJCQkgICAgICBQT1JUX1RYX0RGTEVYRFBTUChkaWdfcG9ydC0+dGNfcGh5
X2ZpYSkpOwogCi0JZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgbGFuZV9tYXNrID09IDB4ZmZmZmZm
ZmYpOworCWlzX3RjX2NvbGRfYmxvY2tlZChkaWdfcG9ydCk7CiAKIAlsYW5lX21hc2sgJj0gRFBf
TEFORV9BU1NJR05NRU5UX01BU0soZGlnX3BvcnQtPnRjX3BoeV9maWFfaWR4KTsKIAlyZXR1cm4g
bGFuZV9tYXNrID4+IERQX0xBTkVfQVNTSUdOTUVOVF9TSElGVChkaWdfcG9ydC0+dGNfcGh5X2Zp
YV9pZHgpOwpAQCAtMTE5LDcgKzEzMyw3IEBAIHUzMiBpbnRlbF90Y19wb3J0X2dldF9waW5fYXNz
aWdubWVudF9tYXNrKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQogCXBpbl9t
YXNrID0gaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLAogCQkJCSAgICAgUE9SVF9UWF9ERkxFWFBB
MShkaWdfcG9ydC0+dGNfcGh5X2ZpYSkpOwogCi0JZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgcGlu
X21hc2sgPT0gMHhmZmZmZmZmZik7CisJaXNfdGNfY29sZF9ibG9ja2VkKGRpZ19wb3J0KTsKIAog
CXJldHVybiAocGluX21hc2sgJiBEUF9QSU5fQVNTSUdOTUVOVF9NQVNLKGRpZ19wb3J0LT50Y19w
aHlfZmlhX2lkeCkpID4+CiAJICAgICAgIERQX1BJTl9BU1NJR05NRU5UX1NISUZUKGRpZ19wb3J0
LT50Y19waHlfZmlhX2lkeCk7CkBAIC0xMzQsNiArMTQ4LDggQEAgaW50IGludGVsX3RjX3BvcnRf
ZmlhX21heF9sYW5lX2NvdW50KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQog
CWlmIChkaWdfcG9ydC0+dGNfbW9kZSAhPSBUQ19QT1JUX0RQX0FMVCkKIAkJcmV0dXJuIDQ7CiAK
Kwlpc190Y19jb2xkX2Jsb2NrZWQoZGlnX3BvcnQpOworCiAJbGFuZV9tYXNrID0gMDsKIAl3aXRo
X2ludGVsX2Rpc3BsYXlfcG93ZXIoaTkxNSwgUE9XRVJfRE9NQUlOX0RJU1BMQVlfQ09SRSwgd2Fr
ZXJlZikKIAkJbGFuZV9tYXNrID0gaW50ZWxfdGNfcG9ydF9nZXRfbGFuZV9tYXNrKGRpZ19wb3J0
KTsKQEAgLTE2Niw2ICsxODIsOCBAQCB2b2lkIGludGVsX3RjX3BvcnRfc2V0X2ZpYV9sYW5lX2Nv
dW50KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0LAogCWRybV9XQVJOX09OKCZp
OTE1LT5kcm0sCiAJCSAgICBsYW5lX3JldmVyc2FsICYmIGRpZ19wb3J0LT50Y19tb2RlICE9IFRD
X1BPUlRfTEVHQUNZKTsKIAorCWlzX3RjX2NvbGRfYmxvY2tlZChkaWdfcG9ydCk7CisKIAl2YWwg
PSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsCiAJCQkJUE9SVF9UWF9ERkxFWERQTUxFMShkaWdf
cG9ydC0+dGNfcGh5X2ZpYSkpOwogCXZhbCAmPSB+REZMRVhEUE1MRTFfRFBNTEVUQ19NQVNLKGRp
Z19wb3J0LT50Y19waHlfZmlhX2lkeCk7Ci0tIAoyLjI2LjAKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
