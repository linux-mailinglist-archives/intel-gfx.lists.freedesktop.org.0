Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FAC1ADEAD
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 15:47:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB9F76EC03;
	Fri, 17 Apr 2020 13:47:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F8B46EC06
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 13:47:29 +0000 (UTC)
IronPort-SDR: a+uuIzgUbILE3p3MtTw+pDnjR+otItNH2UAVlhckeqbvqP/ZYW3KpDih/hFq0IDByWpdXRMZ5X
 eRBM8YwTHVdg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 06:47:28 -0700
IronPort-SDR: wdSel/1ySTU3QcBr2twUKG1+phG5JQnJ6Sghts8ydqjYLeNbgE1vg4Z0UzwdRIBw9Pj5ONDeKd
 jMAVHhwYAtnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="333196712"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 17 Apr 2020 06:47:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Apr 2020 16:47:25 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Apr 2020 16:47:19 +0300
Message-Id: <20200417134720.16654-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200417134720.16654-1-ville.syrjala@linux.intel.com>
References: <20200417134720.16654-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/4] drm/i915: Push TRANS_DDI_FUNC_CTL into the
 encoder->enable() hook
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClB1
c2ggdGhlIFRSQU5TX0RESV9GVU5DX0NUTCBpbnRvIHRoZSBlbmNvZGVyIGVuYWJsZSBob29rLiBU
aGUgZGlzYWJsZQppcyBhbHJlYWR5IHRoZXJlLCBhbmQgYXMgYSBmb2xsb3d1cCB3aWxsIGVuYWJs
ZSB1cyB0byBwYXNzIHRoZSBlbmNvZGVyCmFsbCB0aGUgd2F5IGRvd24uCgpTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0LmMgICAgIHwgMiArKwogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgfCAyICsrCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDMgLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jICB8IDIgKysKIDQgZmlsZXMgY2hhbmdlZCwg
NiBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NydC5jCmluZGV4IGNiZjg0MDg1MzdjZi4uMGE3NTgyMWE2ODBiIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydC5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0LmMKQEAgLTMwOCw2ICszMDgsOCBAQCBz
dGF0aWMgdm9pZCBoc3dfZW5hYmxlX2NydChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0
ZSwKIAogCWRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCAhY3J0Y19zdGF0ZS0+aGFzX3BjaF9l
bmNvZGVyKTsKIAorCWludGVsX2RkaV9lbmFibGVfdHJhbnNjb2Rlcl9mdW5jKGNydGNfc3RhdGUp
OworCiAJaW50ZWxfZW5hYmxlX3BpcGUoY3J0Y19zdGF0ZSk7CiAKIAlscHRfcGNoX2VuYWJsZShj
cnRjX3N0YXRlKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCmluZGV4
IDJiZDQxNGJiZTgyYS4uNjQwY2YzNGY2ZTI0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMKQEAgLTM3NjgsNiArMzc2OCw4IEBAIHN0YXRpYyB2b2lkIGludGVsX2Vu
YWJsZV9kZGkoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiB7CiAJV0FSTl9PTihj
cnRjX3N0YXRlLT5oYXNfcGNoX2VuY29kZXIpOwogCisJaW50ZWxfZGRpX2VuYWJsZV90cmFuc2Nv
ZGVyX2Z1bmMoY3J0Y19zdGF0ZSk7CisKIAlpbnRlbF9lbmFibGVfcGlwZShjcnRjX3N0YXRlKTsK
IAogCWludGVsX2NydGNfdmJsYW5rX29uKGNydGNfc3RhdGUpOwpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA3YTFlN2I1YWU4NGUuLjY5MWQxMDU0
M2QxZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMK
QEAgLTcwNzcsOSArNzA3Nyw2IEBAIHN0YXRpYyB2b2lkIGhzd19jcnRjX2VuYWJsZShzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAx
MSkKIAkJaWNsX3BpcGVfbWJ1c19lbmFibGUoY3J0Yyk7CiAKLQlpZiAoIXRyYW5zY29kZXJfaXNf
ZHNpKGNwdV90cmFuc2NvZGVyKSkKLQkJaW50ZWxfZGRpX2VuYWJsZV90cmFuc2NvZGVyX2Z1bmMo
bmV3X2NydGNfc3RhdGUpOwotCiAJaW50ZWxfZW5jb2RlcnNfZW5hYmxlKHN0YXRlLCBjcnRjKTsK
IAogCWlmIChwc2xfY2xrZ2F0ZV93YSkgewpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHBfbXN0LmMKaW5kZXggY2M2ZDRkYWYwM2EwLi41NmI4NGY5NTQxNzMgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3QuYwpAQCAtNTA4LDYgKzUwOCw4
IEBAIHN0YXRpYyB2b2lkIGludGVsX21zdF9lbmFibGVfZHAoc3RydWN0IGludGVsX2F0b21pY19z
dGF0ZSAqc3RhdGUsCiAKIAlkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgcGlwZV9jb25maWct
Pmhhc19wY2hfZW5jb2Rlcik7CiAKKwlpbnRlbF9kZGlfZW5hYmxlX3RyYW5zY29kZXJfZnVuYyhw
aXBlX2NvbmZpZyk7CisKIAlpbnRlbF9lbmFibGVfcGlwZShwaXBlX2NvbmZpZyk7CiAKIAlpbnRl
bF9jcnRjX3ZibGFua19vbihwaXBlX2NvbmZpZyk7Ci0tIAoyLjI0LjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
