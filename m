Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA90426520
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 15:51:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CED489B06;
	Wed, 22 May 2019 13:51:30 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E23BE89AEB;
 Wed, 22 May 2019 13:51:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 06:51:19 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.122])
 by fmsmga008.fm.intel.com with ESMTP; 22 May 2019 06:51:19 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 22 May 2019 14:51:04 +0100
Message-Id: <20190522135104.26930-15-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190522135104.26930-1-tvrtko.ursulin@linux.intel.com>
References: <20190522135104.26930-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI i-g-t 14/14] test/i915: i915_hangman: use the
 gem_engine_topology library
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

RnJvbTogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+CgpSZXBsYWNlIHRoZSBsZWdh
Y3kgZm9yX2VhY2hfZW5naW5lKiBkZWZpbmVzIHdpdGggdGhlIG9uZXMKaW1wbGVtZW50ZWQgaW4g
dGhlIGdlbV9lbmdpbmVfdG9wb2xvZ3kgbGlicmFyeS4KClNpZ25lZC1vZmYtYnk6IEFuZGkgU2h5
dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29tPgpDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFs
YUBsaW51eC5pbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5j
b20+Ci0tLQogdGVzdHMvaTkxNS9pOTE1X2hhbmdtYW4uYyB8IDE1ICsrKystLS0tLS0tLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvdGVzdHMvaTkxNS9pOTE1X2hhbmdtYW4uYyBiL3Rlc3RzL2k5MTUvaTkxNV9oYW5nbWFu
LmMKaW5kZXggOWExZDU4ODk3Y2ExLi5iYjU1MjFlMDNkZDMgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2k5
MTUvaTkxNV9oYW5nbWFuLmMKKysrIGIvdGVzdHMvaTkxNS9pOTE1X2hhbmdtYW4uYwpAQCAtMjU2
LDcgKzI1Niw3IEBAIHN0YXRpYyB2b2lkIGhhbmdjaGVja191bnRlcm1pbmF0ZWQodm9pZCkKIAog
aWd0X21haW4KIHsKLQljb25zdCBzdHJ1Y3QgaW50ZWxfZXhlY3V0aW9uX2VuZ2luZSAqZTsKKwlj
b25zdCBzdHJ1Y3QgaW50ZWxfZXhlY3V0aW9uX2VuZ2luZTIgKmU7CiAJaWd0X2hhbmdfdCBoYW5n
ID0ge307CiAKIAlpZ3Rfc2tpcF9vbl9zaW11bGF0aW9uKCk7CkBAIC0yNzYsMTYgKzI3Niw5IEBA
IGlndF9tYWluCiAJaWd0X3N1YnRlc3QoImVycm9yLXN0YXRlLWJhc2ljIikKIAkJdGVzdF9lcnJv
cl9zdGF0ZV9iYXNpYygpOwogCi0JZm9yIChlID0gaW50ZWxfZXhlY3V0aW9uX2VuZ2luZXM7IGUt
Pm5hbWU7IGUrKykgewotCQlpZiAoZS0+ZXhlY19pZCA9PSAwKQotCQkJY29udGludWU7Ci0KLQkJ
aWd0X3N1YnRlc3RfZigiZXJyb3Itc3RhdGUtY2FwdHVyZS0lcyIsIGUtPm5hbWUpIHsKLQkJCWln
dF9yZXF1aXJlKGdlbV9yaW5nX2hhc19waHlzaWNhbF9lbmdpbmUoZGV2aWNlLCBlLT5leGVjX2lk
IHwgZS0+ZmxhZ3MpKTsKLQkJCXRlc3RfZXJyb3Jfc3RhdGVfY2FwdHVyZShlLT5leGVjX2lkIHwg
ZS0+ZmxhZ3MsCi0JCQkJCQkgZS0+ZnVsbF9uYW1lKTsKLQkJfQotCX0KKwlfX2Zvcl9lYWNoX3Bo
eXNpY2FsX2VuZ2luZShkZXZpY2UsIGUpCisJCWlndF9zdWJ0ZXN0X2YoImVycm9yLXN0YXRlLWNh
cHR1cmUtJXMiLCBlLT5uYW1lKQorCQkJdGVzdF9lcnJvcl9zdGF0ZV9jYXB0dXJlKGUtPmZsYWdz
LCBlLT5uYW1lKTsKIAogCWlndF9zdWJ0ZXN0KCJoYW5nY2hlY2stdW50ZXJtaW5hdGVkIikKIAkJ
aGFuZ2NoZWNrX3VudGVybWluYXRlZCgpOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
