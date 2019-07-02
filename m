Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D0865D709
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 21:42:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09E986E03B;
	Tue,  2 Jul 2019 19:42:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl
 [IPv6:2a02:2308::216:3eff:fe92:dfa3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C9636E03D
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 19:42:12 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 Jul 2019 21:42:05 +0200
Message-Id: <20190702194205.13366-8-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190702194205.13366-1-maarten.lankhorst@linux.intel.com>
References: <20190702194205.13366-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 7/7] drm/i915: Allow vdsc functions to be called
 without encoder.
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

VGhpcyBjYW4gYmUgdXNlZnVsIHdoZW4gY2FsbGluZyB0aGUgdmRzYyBlbmFibGUgZnVuY3Rpb25z
CmRpcmVjdGx5IHdpdGhvdXQgZW5jb2Rlci4KClNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hv
cnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMgfCA4ICsrKysrLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgNSBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF92ZHNjLmMKaW5kZXggNDE5YTc3NzIzODk0Li5mMDA5NTI0YWI3MzUgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jCkBAIC04OTcsNyArODk3
LDcgQEAgdm9pZCBpbnRlbF9kc2NfZW5hYmxlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LAogCQkgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsK
IAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFw
aS5jcnRjKTsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVu
Y29kZXItPmJhc2UuZGV2KTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0
b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKIAllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7CiAJ
aTkxNV9yZWdfdCBkc3NfY3RsMV9yZWcsIGRzc19jdGwyX3JlZzsKIAl1MzIgZHNzX2N0bDFfdmFs
ID0gMDsKQEAgLTkxMCw5ICs5MTAsMTEgQEAgdm9pZCBpbnRlbF9kc2NfZW5hYmxlKHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLAogCWludGVsX2Rpc3BsYXlfcG93ZXJfZ2V0KGRldl9wcml2
LAogCQkJCWludGVsX2RzY19wb3dlcl9kb21haW4oY3J0Y19zdGF0ZSkpOwogCi0JaW50ZWxfY29u
ZmlndXJlX3Bwc19mb3JfZHNjX2VuY29kZXIoZW5jb2RlciwgY3J0Y19zdGF0ZSk7CisJaWYgKGVu
Y29kZXIpIHsKKwkJaW50ZWxfY29uZmlndXJlX3Bwc19mb3JfZHNjX2VuY29kZXIoZW5jb2Rlciwg
Y3J0Y19zdGF0ZSk7CiAKLQlpbnRlbF9kcF93cml0ZV9kc2NfcHBzX3NkcChlbmNvZGVyLCBjcnRj
X3N0YXRlKTsKKwkJaW50ZWxfZHBfd3JpdGVfZHNjX3Bwc19zZHAoZW5jb2RlciwgY3J0Y19zdGF0
ZSk7CisJfQogCiAJaWYgKGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyID09IFRSQU5TQ09ERVJf
RURQKSB7CiAJCWRzc19jdGwxX3JlZyA9IERTU19DVEwxOwotLSAKMi4yMC4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
