Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F95C2D559
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 08:08:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00A606E083;
	Wed, 29 May 2019 06:08:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E364E6E083
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2019 06:08:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 May 2019 23:08:15 -0700
X-ExtLoop1: 1
Received: from kskumar.iind.intel.com ([10.66.247.75])
 by fmsmga004.fm.intel.com with ESMTP; 28 May 2019 23:08:14 -0700
From: kiran.s.kumar@intel.com
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 May 2019 11:28:07 +0530
Message-Id: <1559109487-29542-1-git-send-email-kiran.s.kumar@intel.com>
X-Mailer: git-send-email 2.7.4
Subject: [Intel-gfx] [PATCH] drm/i915: FBC needs vblank before enable /
 disable
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogS2lyYW4gS3VtYXIgUyA8a2lyYW4ucy5rdW1hckBpbnRlbC5jb3JwLXBhcnRuZXIuZ29v
Z2xlLmNvbT4KCkFzIHBlciB0aGUgZGlzcGxheSB3b3JrYXJvdW5kICMxMjAwLCBGQkMgbmVlZHMg
d2FpdCBmb3IgdmJsYW5rCmJlZm9yZSBlbmFibGluZyBhbmQgYmVmb3JlIGRpc2FibGluZyBGQkMu
CgpJbiBzb21lIGNhc2VzLCBkZXBlbmRpbmcgb24gd2hldGhlciBGQkMgd2FzIGNvbXByZXNzaW5n
IGluIHRoYXQgZnJhbWUsCnNldmVyYWwgY29udHJvbCBzaWduYWxzIGluIHRoZSBjb21wcmVzc2lv
biBlbmdpbmUgYWxzbyB3aWxsIGZhaWwgdG8KcHJvcGVybHkgcmVjb2duaXplIHRoZSBmaW5hbCBz
ZWdtZW50IG9mIHRoZSBmcmFtZSBhcyBhIHJlc3VsdCBvZiB0aGUKbWlzc2luZyBsYXN0IHBpeGVs
IGluZGljYXRpb24uIEFzIGEgcmVzdWx0IG9mIHRoaXMsIHdlJ3JlIHNlZWluZyBjb3JydXB0ZWQK
Y2FjaGUgbGluZS9jb21wcmVzc2lvbiBpbmRpY2F0b3JzIGFmdGVyIEZCQyByZS1lbmFibGVzIHdo
aWNoIGNhdXNlcwp1bmRlcnJ1bnMgb3IgY29ycnVwdGlvbiB3aGVuIHRoZXkncmUgdXNlZCB0byBk
ZWNvbXByZXNzLgoKV0Egc2VxdWVuY2UgYXMgYmVsb3c6CjEpIERpc3BsYXkgZW5hYmxlcyBwbGFu
ZSAxQQoyKSBXYWl0IGZvciAxIHZibGFuawozKSBGQkMgZ2V0cyBlbmFibGVkCjQpIFdhaXQgZm9y
IDEgVkJMQU5LCjUpIFR1cm4gb2ZmIEZCQwoKSW4gR0xLIENocm9tZSBPUywgaWYgRkJDIGlzIGVu
YWJsZWQgYnkgZGVmYXVsdCwgZmV3IHRvcCBsaW5lcyBvbiB0aGUgc2NyZWVuCmdvdCBjb3JydXB0
ZWQuIFdpdGggdGhlIGFib3ZlIFdBLCBpc3N1ZSB3YXMgcmVzb2x2ZWQuCgp2MjogQWRkZWQgd2Fp
dCBmb3IgdmJsYW5rIGNvZGUgaW4gRkJDIGFzIGl0IHdpbGwgYmUgY2FsbGVkIGlmIGFuZCBvbmx5
IGlmCmZiYyBpcyBlbmFibGVkLgoKQW5kIGFsc28sIGFzIHBlciB0aGUgaW5mb3JtYXRpb24gZnJv
bSBoYXJkd2FyZSB0ZWFtIHRoYXQgdGhlIGFib3ZlCldBIGlzIGZvciBHTEsuCgpTaWduZWQtb2Zm
LWJ5OiBLaXJhbiBLdW1hciBTIDxraXJhbi5zLmt1bWFyQGludGVsLmNvcnAtcGFydG5lci5nb29n
bGUuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2ZiYy5jIHwgNyArKysrKyst
CiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZmJjLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9mYmMuYwppbmRleCA1Njc5ZjJmZmZiN2MuLmQ0YjhjZmI4NDE5ZSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZmJjLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZmJjLmMKQEAgLTEwOTQsNiArMTA5NCw4IEBAIHZvaWQgaW50ZWxfZmJj
X2VuYWJsZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAkJaWYgKGZiYy0+Y3J0YyA9PSBjcnRj
KSB7CiAJCQlXQVJOX09OKCFjcnRjX3N0YXRlLT5lbmFibGVfZmJjKTsKIAkJCVdBUk5fT04oZmJj
LT5hY3RpdmUpOworCQkJaWYgKElTX0dFTUlOSUxBS0UoZGV2X3ByaXYpKQorCQkJCWludGVsX3dh
aXRfZm9yX3ZibGFuayhkZXZfcHJpdiwgY3J0Yy0+cGlwZSk7CiAJCX0KIAkJZ290byBvdXQ7CiAJ
fQpAQCAtMTEzNCw4ICsxMTM2LDExIEBAIHZvaWQgaW50ZWxfZmJjX2Rpc2FibGUoc3RydWN0IGlu
dGVsX2NydGMgKmNydGMpCiAJCXJldHVybjsKIAogCW11dGV4X2xvY2soJmZiYy0+bG9jayk7Ci0J
aWYgKGZiYy0+Y3J0YyA9PSBjcnRjKQorCWlmIChmYmMtPmNydGMgPT0gY3J0YykgewogCQlfX2lu
dGVsX2ZiY19kaXNhYmxlKGRldl9wcml2KTsKKwkJaWYgKElTX0dFTUlOSUxBS0UoZGV2X3ByaXYp
KQorCQkJaW50ZWxfd2FpdF9mb3JfdmJsYW5rKGRldl9wcml2LCBjcnRjLT5waXBlKTsKKwl9CiAJ
bXV0ZXhfdW5sb2NrKCZmYmMtPmxvY2spOwogfQogCi0tIAoyLjcuNAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
