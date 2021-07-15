Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7703C9BFF
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jul 2021 11:35:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 084716E7F5;
	Thu, 15 Jul 2021 09:35:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B3DC6E7F5
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 09:35:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10045"; a="210560323"
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="210560323"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2021 02:35:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="430767738"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 15 Jul 2021 02:35:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 15 Jul 2021 12:35:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Jul 2021 12:35:24 +0300
Message-Id: <20210715093530.31711-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210715093530.31711-1-ville.syrjala@linux.intel.com>
References: <20210715093530.31711-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/13] drm/i915: Remove the 'reg' local variable
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkdl
dCByaWQgb2YgdGhlIGxvY2FsICdyZWcnIHZhcmlhYmxlIGZvciB0aGUgRFBMTCBjb250cm9sIHJl
Z2lzdGVyCmluIGk5eHhfZW5hYmxlX3BsbCgpLiBXZSBoYXZlIG90aGVyIHJlZ2lzdGVycyBpbiB0
aGVyZSB0b28gc28gdGhpcwppcyBqdXN0IG1ha2luZyB0aGluZ3MgbW9yZSBjb25mdXNpbmcuCgpT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbC5jIHwgMTgg
KysrKysrKysrLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCA5IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBsbC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsLmMKaW5k
ZXggMTBkNTUxOTYyNmE0Li4yZjY5MDNlYzBhOWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBsbC5jCkBAIC0xMzkyLDMwICsxMzkyLDMwIEBAIHZvaWQgaTl4eF9lbmFi
bGVfcGxsKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQogewogCXN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBpLmNy
dGMpOwogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+
YmFzZS5kZXYpOwotCWk5MTVfcmVnX3QgcmVnID0gRFBMTChjcnRjLT5waXBlKTsKIAl1MzIgZHBs
bCA9IGNydGNfc3RhdGUtPmRwbGxfaHdfc3RhdGUuZHBsbDsKKwllbnVtIHBpcGUgcGlwZSA9IGNy
dGMtPnBpcGU7CiAJaW50IGk7CiAKIAlhc3NlcnRfcGlwZV9kaXNhYmxlZChkZXZfcHJpdiwgY3J0
Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIpOwogCiAJLyogUExMIGlzIHByb3RlY3RlZCBieSBwYW5l
bCwgbWFrZSBzdXJlIHdlIGNhbiB3cml0ZSBpdCAqLwogCWlmIChpOXh4X2hhc19wcHMoZGV2X3By
aXYpKQotCQlhc3NlcnRfcGFuZWxfdW5sb2NrZWQoZGV2X3ByaXYsIGNydGMtPnBpcGUpOworCQlh
c3NlcnRfcGFuZWxfdW5sb2NrZWQoZGV2X3ByaXYsIHBpcGUpOwogCiAJLyoKIAkgKiBBcHBhcmVu
dGx5IHdlIG5lZWQgdG8gaGF2ZSBWR0EgbW9kZSBlbmFibGVkIHByaW9yIHRvIGNoYW5naW5nCiAJ
ICogdGhlIFAxL1AyIGRpdmlkZXJzLiBPdGhlcndpc2UgdGhlIERQTEwgd2lsbCBrZWVwIHVzaW5n
IHRoZSBvbGQKIAkgKiBkaXZpZGVycywgZXZlbiB0aG91Z2ggdGhlIHJlZ2lzdGVyIHZhbHVlIGRv
ZXMgY2hhbmdlLgogCSAqLwotCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCByZWcsIGRwbGwgJiB+
RFBMTF9WR0FfTU9ERV9ESVMpOwotCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCByZWcsIGRwbGwp
OworCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBEUExMKHBpcGUpLCBkcGxsICYgfkRQTExfVkdB
X01PREVfRElTKTsKKwlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgRFBMTChwaXBlKSwgZHBsbCk7
CiAKIAkvKiBXYWl0IGZvciB0aGUgY2xvY2tzIHRvIHN0YWJpbGl6ZS4gKi8KLQlpbnRlbF9kZV9w
b3N0aW5nX3JlYWQoZGV2X3ByaXYsIHJlZyk7CisJaW50ZWxfZGVfcG9zdGluZ19yZWFkKGRldl9w
cml2LCBEUExMKHBpcGUpKTsKIAl1ZGVsYXkoMTUwKTsKIAogCWlmIChESVNQTEFZX1ZFUihkZXZf
cHJpdikgPj0gNCkgewotCQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgRFBMTF9NRChjcnRjLT5w
aXBlKSwKKwkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIERQTExfTUQocGlwZSksCiAJCQkgICAg
ICAgY3J0Y19zdGF0ZS0+ZHBsbF9od19zdGF0ZS5kcGxsX21kKTsKIAl9IGVsc2UgewogCQkvKiBU
aGUgcGl4ZWwgbXVsdGlwbGllciBjYW4gb25seSBiZSB1cGRhdGVkIG9uY2UgdGhlCkBAIC0xNDIz
LDEzICsxNDIzLDEzIEBAIHZvaWQgaTl4eF9lbmFibGVfcGxsKGNvbnN0IHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlICpjcnRjX3N0YXRlKQogCQkgKgogCQkgKiBTbyB3cml0ZSBpdCBhZ2Fpbi4KIAkJ
ICovCi0JCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCByZWcsIGRwbGwpOworCQlpbnRlbF9kZV93
cml0ZShkZXZfcHJpdiwgRFBMTChwaXBlKSwgZHBsbCk7CiAJfQogCiAJLyogV2UgZG8gdGhpcyB0
aHJlZSB0aW1lcyBmb3IgbHVjayAqLwogCWZvciAoaSA9IDA7IGkgPCAzOyBpKyspIHsKLQkJaW50
ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIHJlZywgZHBsbCk7Ci0JCWludGVsX2RlX3Bvc3RpbmdfcmVh
ZChkZXZfcHJpdiwgcmVnKTsKKwkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIERQTEwocGlwZSks
IGRwbGwpOworCQlpbnRlbF9kZV9wb3N0aW5nX3JlYWQoZGV2X3ByaXYsIERQTEwocGlwZSkpOwog
CQl1ZGVsYXkoMTUwKTsgLyogd2FpdCBmb3Igd2FybXVwICovCiAJfQogfQotLSAKMi4zMS4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
