Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9169CC5B1
	for <lists+intel-gfx@lfdr.de>; Sat,  5 Oct 2019 00:14:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F8756EC2D;
	Fri,  4 Oct 2019 22:14:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FA336EC2D
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 22:14:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 15:14:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,257,1566889200"; d="scan'208";a="182846716"
Received: from jausmus-gentoo-dev6.jf.intel.com (HELO jausmus-gentoo-dev6)
 ([10.54.75.43])
 by orsmga007.jf.intel.com with SMTP; 04 Oct 2019 15:14:02 -0700
Received: by jausmus-gentoo-dev6 (sSMTP sendmail emulation);
 Fri, 04 Oct 2019 15:14:50 -0700
From: James Ausmus <james.ausmus@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Oct 2019 15:14:48 -0700
Message-Id: <20191004221449.1317-1-james.ausmus@intel.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20190927222427.5491-1-james.ausmus@intel.com>
References: <20190927222427.5491-1-james.ausmus@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 1/2] drm/i915: Move SAGV block time to
 dev_priv
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gcHJlcCBmb3IgbmV3ZXIgcGxhdGZvcm1zIGhhdmluZyBtb3JlIGNvbXBsaWNhdGVkIHdheXMg
dG8gZGV0ZXJtaW5lCnRoZSBTQUdWIGJsb2NrIHRpbWUsIG1vdmUgdGhlIHZhcmlhYmxlIHRvIGRl
dl9wcml2LCBhbmQgZXh0cmFjdCB0aGUKc2V0dGluZyB0byBhbiBpbml0aWFsIHNldHVwIGZ1bmN0
aW9uLiBXaGlsZSB3ZSdyZSBhdCBpdCwgdXBkYXRlIHRoZSBpZgpsYWRkZXIgdG8gZm9sbG93IHRo
ZSBuZXcgZ2VuIC0+IG9sZCBnZW4gb3JkZXIgcHJlZmVyZW5jZSwgYW5kIHdhcm4gb24KYW55IG5v
bi1zcGVjaWZpZWQgZ2VuLgoKdjI6IFNob3J0ZW4gdGhlIGZ1bmN0aW9uIG5hbWUgKFZpbGxlKSwg
cmV0dXJuIGRpcmVjdGx5IChWaWxsZSksIG1vdmUKc2Fndl9ibG9ja190aW1lX3VzIHZhbHVlIHRv
IGRldl9wcml2IChWaWxsZSkKCnYzOiBDaGFuZ2Ugc2Fndl9ibG9ja190aW1lX3VzIHRvIHUzMiAo
THVjYXMpLCBDaGFuZ2UgZmFsbGJhY2sgdmFsdWUgdG8KLTEgKEx1Y2FzKSwgdXNlIGludGVsX2hh
c19zYWd2IGZvciBzZXR1cCBjaGVjayByYXRoZXIgdGhhbiBoYW5kLXJvbGxpbmcKKEx1Y2FzKQoK
Q2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBT
dGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4KQ2M6IEx1
Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBK
YW1lcyBBdXNtdXMgPGphbWVzLmF1c211c0BpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaCB8ICAyICsrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5j
IHwgMzMgKysrKysrKysrKysrKysrKysrKysrKysrLS0tLS0tLS0tCiAyIGZpbGVzIGNoYW5nZWQs
IDI2IGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgK
aW5kZXggY2RlNGM3ZmI1NTcwLi4xZDlhOWU4MjcyNjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYu
aApAQCAtMTU2MCw2ICsxNTYwLDggQEAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgewogCQlJOTE1
X1NBR1ZfTk9UX0NPTlRST0xMRUQKIAl9IHNhZ3Zfc3RhdHVzOwogCisJdTMyIHNhZ3ZfYmxvY2tf
dGltZV91czsKKwogCXN0cnVjdCB7CiAJCS8qCiAJCSAqIFJhdyB3YXRlcm1hcmsgbGF0ZW5jeSB2
YWx1ZXM6CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwppbmRleCBiZmNmMDNhYjUyNDUuLjBmZmNhZmU5
NzIxNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCkBAIC0zNjQyLDYgKzM2NDIsMjYgQEAgaW50
ZWxfaGFzX3NhZ3Yoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQlkZXZfcHJp
di0+c2Fndl9zdGF0dXMgIT0gSTkxNV9TQUdWX05PVF9DT05UUk9MTEVEOwogfQogCitzdGF0aWMg
dm9pZAorc2tsX3NldHVwX3NhZ3ZfYmxvY2tfdGltZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAq
ZGV2X3ByaXYpCit7CisJaWYgKElTX0dFTihkZXZfcHJpdiwgMTEpKSB7CisJCWRldl9wcml2LT5z
YWd2X2Jsb2NrX3RpbWVfdXMgPSAxMDsKKwkJcmV0dXJuOworCX0gZWxzZSBpZiAoSVNfR0VOKGRl
dl9wcml2LCAxMCkpIHsKKwkJZGV2X3ByaXYtPnNhZ3ZfYmxvY2tfdGltZV91cyA9IDIwOworCQly
ZXR1cm47CisJfSBlbHNlIGlmIChJU19HRU4oZGV2X3ByaXYsIDkpKSB7CisJCWRldl9wcml2LT5z
YWd2X2Jsb2NrX3RpbWVfdXMgPSAzMDsKKwkJcmV0dXJuOworCX0gZWxzZSB7CisJCU1JU1NJTkdf
Q0FTRShJTlRFTF9HRU4oZGV2X3ByaXYpKTsKKwl9CisKKwkvKiBEZWZhdWx0IHRvIGFuIHVudXNh
YmxlIGJsb2NrIHRpbWUgKi8KKwlkZXZfcHJpdi0+c2Fndl9ibG9ja190aW1lX3VzID0gLTE7Cit9
CisKIC8qCiAgKiBTQUdWIGR5bmFtaWNhbGx5IGFkanVzdHMgdGhlIHN5c3RlbSBhZ2VudCB2b2x0
YWdlIGFuZCBjbG9jayBmcmVxdWVuY2llcwogICogZGVwZW5kaW5nIG9uIHBvd2VyIGFuZCBwZXJm
b3JtYW5jZSByZXF1aXJlbWVudHMuIFRoZSBkaXNwbGF5IGVuZ2luZSBhY2Nlc3MKQEAgLTM3MzAs
MTggKzM3NTAsMTAgQEAgYm9vbCBpbnRlbF9jYW5fZW5hYmxlX3NhZ3Yoc3RydWN0IGludGVsX2F0
b21pY19zdGF0ZSAqc3RhdGUpCiAJc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGU7
CiAJZW51bSBwaXBlIHBpcGU7CiAJaW50IGxldmVsLCBsYXRlbmN5OwotCWludCBzYWd2X2Jsb2Nr
X3RpbWVfdXM7CiAKIAlpZiAoIWludGVsX2hhc19zYWd2KGRldl9wcml2KSkKIAkJcmV0dXJuIGZh
bHNlOwogCi0JaWYgKElTX0dFTihkZXZfcHJpdiwgOSkpCi0JCXNhZ3ZfYmxvY2tfdGltZV91cyA9
IDMwOwotCWVsc2UgaWYgKElTX0dFTihkZXZfcHJpdiwgMTApKQotCQlzYWd2X2Jsb2NrX3RpbWVf
dXMgPSAyMDsKLQllbHNlCi0JCXNhZ3ZfYmxvY2tfdGltZV91cyA9IDEwOwotCiAJLyoKIAkgKiBJ
ZiB0aGVyZSBhcmUgbm8gYWN0aXZlIENSVENzLCBubyBhZGRpdGlvbmFsIGNoZWNrcyBuZWVkIGJl
IHBlcmZvcm1lZAogCSAqLwpAQCAtMzc4OCw3ICszODAwLDcgQEAgYm9vbCBpbnRlbF9jYW5fZW5h
YmxlX3NhZ3Yoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpCiAJCSAqIGluY3VyIG1l
bW9yeSBsYXRlbmNpZXMgaGlnaGVyIHRoYW4gc2Fndl9ibG9ja190aW1lX3VzIHdlCiAJCSAqIGNh
bid0IGVuYWJsZSBTQUdWLgogCQkgKi8KLQkJaWYgKGxhdGVuY3kgPCBzYWd2X2Jsb2NrX3RpbWVf
dXMpCisJCWlmIChsYXRlbmN5IDwgZGV2X3ByaXYtPnNhZ3ZfYmxvY2tfdGltZV91cykKIAkJCXJl
dHVybiBmYWxzZTsKIAl9CiAKQEAgLTkwMTMsNiArOTAyNSw5IEBAIHZvaWQgaW50ZWxfaW5pdF9w
bShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJZWxzZSBpZiAoSVNfR0VOKGRl
dl9wcml2LCA1KSkKIAkJaTkxNV9pcm9ubGFrZV9nZXRfbWVtX2ZyZXEoZGV2X3ByaXYpOwogCisJ
aWYgKGludGVsX2hhc19zYWd2KGRldl9wcml2KSkKKwkJc2tsX3NldHVwX3NhZ3ZfYmxvY2tfdGlt
ZShkZXZfcHJpdik7CisKIAkvKiBGb3IgRklGTyB3YXRlcm1hcmsgdXBkYXRlcyAqLwogCWlmIChJ
TlRFTF9HRU4oZGV2X3ByaXYpID49IDkpIHsKIAkJc2tsX3NldHVwX3dtX2xhdGVuY3koZGV2X3By
aXYpOwotLSAKMi4yMi4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
