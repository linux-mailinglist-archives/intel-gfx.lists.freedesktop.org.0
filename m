Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4659755DD6
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 03:41:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D33E189498;
	Wed, 26 Jun 2019 01:41:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05E5B89498
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 01:41:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 18:41:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,418,1557212400"; d="scan'208";a="166873062"
Received: from josouza-mobl.jf.intel.com ([10.24.8.250])
 by orsmga006.jf.intel.com with ESMTP; 25 Jun 2019 18:41:00 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 18:40:52 -0700
Message-Id: <20190626014053.30541-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190626014053.30541-1-jose.souza@intel.com>
References: <20190626014053.30541-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/3] drm/i915/ehl: Remove unsupported cd
 clocks
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RUhMIGRvIG5vdCBzdXBwb3J0IDY0OCBhbmQgNjUyLjggTUh6LgoKdjI6Ci0gTGltaXRpbmcgbWF4
aW11bSBDRCBjbG9jayBieSBtYXhfY2RjbGtfZnJlcSBpbnN0ZWFkIG9mIHJlbW92ZSBpdApmcm9t
IGljbF9jYWxjX2NkY2xrKCkoVmlsbGUgYW5kIEphbmkpCgpCU3BlYzogMjA1OTgKQ2M6IENsaW50
IFRheWxvciA8Q2xpbnRvbi5BLlRheWxvckBpbnRlbC5jb20+CkNjOiBNYXR0IFJvcGVyIDxtYXR0
aGV3LmQucm9wZXJAaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+
ClJldmlld2VkLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpTaWdu
ZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgfCA3ICsrKysr
Ky0KIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMKaW5kZXggYzhlYmQzMWY3YzI0
Li4wZGRhNjQ0ODI0NDMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfY2RjbGsuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nk
Y2xrLmMKQEAgLTI2MDYsNyArMjYwNiwxMiBAQCBzdGF0aWMgaW50IGludGVsX2NvbXB1dGVfbWF4
X2RvdGNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAgKi8KIHZvaWQgaW50
ZWxfdXBkYXRlX21heF9jZGNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7
Ci0JaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpIHsKKwlpZiAoSVNfRUxLSEFSVExBS0Uo
ZGV2X3ByaXYpKSB7CisJCWlmIChkZXZfcHJpdi0+Y2RjbGsuaHcucmVmID09IDI0MDAwKQorCQkJ
ZGV2X3ByaXYtPm1heF9jZGNsa19mcmVxID0gNTUyMDAwOworCQllbHNlCisJCQlkZXZfcHJpdi0+
bWF4X2NkY2xrX2ZyZXEgPSA1NTY4MDA7CisJfSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYp
ID49IDExKSB7CiAJCWlmIChkZXZfcHJpdi0+Y2RjbGsuaHcucmVmID09IDI0MDAwKQogCQkJZGV2
X3ByaXYtPm1heF9jZGNsa19mcmVxID0gNjQ4MDAwOwogCQllbHNlCi0tIAoyLjIyLjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
