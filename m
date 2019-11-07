Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A7FF3AB1
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Nov 2019 22:46:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E0BE6F7D4;
	Thu,  7 Nov 2019 21:46:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DA516F7D3
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Nov 2019 21:46:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Nov 2019 13:46:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,279,1569308400"; d="scan'208";a="353919874"
Received: from josouza-mobl.jf.intel.com (HELO josouza-MOBL.intel.com)
 ([10.24.9.135])
 by orsmga004.jf.intel.com with ESMTP; 07 Nov 2019 13:46:04 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  7 Nov 2019 13:45:59 -0800
Message-Id: <20191107214559.77087-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191107214559.77087-1-jose.souza@intel.com>
References: <20191107214559.77087-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/display/mst: Enable virtual
 channel payload allocation earlier
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

VGhpcyByZWdpc3RlciB3YXMgYmVpbmcgZW5hYmxlZCBhZnRlciBlbmFibGUgVFJBTlNfRERJX0ZV
TkNfQ1RMIGFuZApQSVBFQ09ORi9UUkFOU19DT05GIHdoaWxlIEJTcGVjIHN0YXRlcyB0aGF0IGl0
IHNob3VsZCBiZSBzZXQgd2hlbgplbmFibGluZyBUUkFOU19ERElfRlVOQ19DVEwuCgpCU3BlYzog
NDkxOTAKQlNwZWM6IDIyMjQzCkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGlu
dGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6
YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
YyAgICAgfCAxOCArKy0tLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jIHwgIDYgLS0tLS0tCiAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0
aW9ucygrKSwgMjIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMKaW5kZXggMzk4YzZmMDU0YTZlLi4zZDVmY2U4Nzg2MDAgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwpAQCAtMTgwMywyMiArMTgwMyw2IEBAIHZvaWQg
aW50ZWxfZGRpX3NldF9kcF9tc2EoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUsCiAJSTkxNV9XUklURShUUkFOU19NU0FfTUlTQyhjcHVfdHJhbnNjb2RlciksIHRlbXAp
OwogfQogCi12b2lkIGludGVsX2RkaV9zZXRfdmNfcGF5bG9hZF9hbGxvYyhjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKLQkJCQkgICAgYm9vbCBzdGF0ZSkKLXsKLQlz
dHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5j
cnRjKTsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMt
PmJhc2UuZGV2KTsKLQllbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBjcnRjX3N0YXRl
LT5jcHVfdHJhbnNjb2RlcjsKLQl1MzIgdGVtcDsKLQotCXRlbXAgPSBJOTE1X1JFQUQoVFJBTlNf
RERJX0ZVTkNfQ1RMKGNwdV90cmFuc2NvZGVyKSk7Ci0JaWYgKHN0YXRlID09IHRydWUpCi0JCXRl
bXAgfD0gVFJBTlNfRERJX0RQX1ZDX1BBWUxPQURfQUxMT0M7Ci0JZWxzZQotCQl0ZW1wICY9IH5U
UkFOU19ERElfRFBfVkNfUEFZTE9BRF9BTExPQzsKLQlJOTE1X1dSSVRFKFRSQU5TX0RESV9GVU5D
X0NUTChjcHVfdHJhbnNjb2RlciksIHRlbXApOwotfQotCiAvKgogICogUmV0dXJucyB0aGUgVFJB
TlNfRERJX0ZVTkNfQ1RMIHZhbHVlIGJhc2VkIG9uIENSVEMgc3RhdGUuCiAgKgpAQCAtMTkyNCw2
ICsxOTA4LDggQEAgdm9pZCBpbnRlbF9kZGlfZW5hYmxlX3RyYW5zY29kZXJfZnVuYyhjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIAl1MzIgdGVtcDsKIAogCXRlbXAg
PSBpbnRlbF9kZGlfdHJhbnNjb2Rlcl9mdW5jX3JlZ192YWxfZ2V0KGNydGNfc3RhdGUpOworCWlm
IChpbnRlbF9jcnRjX2hhc190eXBlKGNydGNfc3RhdGUsIElOVEVMX09VVFBVVF9EUF9NU1QpKQor
CQl0ZW1wIHw9IFRSQU5TX0RESV9EUF9WQ19QQVlMT0FEX0FMTE9DOwogCUk5MTVfV1JJVEUoVFJB
TlNfRERJX0ZVTkNfQ1RMKGNwdV90cmFuc2NvZGVyKSwgdGVtcCk7CiB9CiAKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggNTUxZGUyYmFhNTY5Li4z
YjRhZWEyNTNmOGMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCkBAIC02NjcwLDkgKzY2NzAsNiBAQCBzdGF0aWMgdm9pZCBoYXN3ZWxsX2NydGNfZW5h
YmxlKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZywKIAlpZiAocGlwZV9jb25m
aWctPmhhc19wY2hfZW5jb2RlcikKIAkJbHB0X3BjaF9lbmFibGUoc3RhdGUsIHBpcGVfY29uZmln
KTsKIAotCWlmIChpbnRlbF9jcnRjX2hhc190eXBlKHBpcGVfY29uZmlnLCBJTlRFTF9PVVRQVVRf
RFBfTVNUKSkKLQkJaW50ZWxfZGRpX3NldF92Y19wYXlsb2FkX2FsbG9jKHBpcGVfY29uZmlnLCB0
cnVlKTsKLQogCWFzc2VydF92YmxhbmtfZGlzYWJsZWQoY3J0Yyk7CiAJaW50ZWxfY3J0Y192Ymxh
bmtfb24ocGlwZV9jb25maWcpOwogCkBAIC02NzgzLDkgKzY3ODAsNiBAQCBzdGF0aWMgdm9pZCBo
YXN3ZWxsX2NydGNfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3Rh
dGUsCiAJaWYgKCF0cmFuc2NvZGVyX2lzX2RzaShjcHVfdHJhbnNjb2RlcikpCiAJCWludGVsX2Rp
c2FibGVfcGlwZShvbGRfY3J0Y19zdGF0ZSk7CiAKLQlpZiAoaW50ZWxfY3J0Y19oYXNfdHlwZShv
bGRfY3J0Y19zdGF0ZSwgSU5URUxfT1VUUFVUX0RQX01TVCkpCi0JCWludGVsX2RkaV9zZXRfdmNf
cGF5bG9hZF9hbGxvYyhvbGRfY3J0Y19zdGF0ZSwgZmFsc2UpOwotCiAJaWYgKElOVEVMX0dFTihk
ZXZfcHJpdikgPj0gMTEpCiAJCWljbF9kaXNhYmxlX3RyYW5zY29kZXJfcG9ydF9zeW5jKG9sZF9j
cnRjX3N0YXRlKTsKIAotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
