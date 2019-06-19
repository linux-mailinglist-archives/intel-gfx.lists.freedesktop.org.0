Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA7D4C420
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 01:31:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5714C6E480;
	Wed, 19 Jun 2019 23:31:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 823896E480
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 23:31:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 16:31:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,394,1557212400"; d="scan'208";a="165157895"
Received: from josouza-mobl.jf.intel.com ([10.24.8.250])
 by orsmga006.jf.intel.com with ESMTP; 19 Jun 2019 16:31:37 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jun 2019 16:31:33 -0700
Message-Id: <20190619233134.20009-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/ehl/dsi: Set lane latency
 optimization for DW1
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

RnJvbTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+CgpFSEwg
aGFzIDIgYWRkaXRpb25hbCBzdGVwcyBpbiB0aGUgRFNJIHNlcXVlbmNlLCB0aGlzIGlzIG9uZSBv
ZiB0aGVuCnRoZSBsYW5lIGxhdGVuY3kgb3B0aW1pemF0aW9uIGZvciBEVzEuCgpCU3BlYzogMjA1
OTcKQ2M6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+CkNjOiBSb2RyaWdvIFZp
dmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFA
aW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVs
LmNvbT4KU2lnbmVkLW9mZi1ieTogVmFuZGl0YSBLdWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBp
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pY2xfZHNpLmMgfCAx
MyArKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICB8
ICAyICsrCiAyIGZpbGVzIGNoYW5nZWQsIDE1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaWNsX2RzaS5jCmluZGV4IDc0NDQ4ZTZiZjc0OS4uOGI0ZDU4OWJlNGI0IDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ljbF9kc2kuYwpAQCAtNDAzLDYgKzQwMywxOSBA
QCBzdGF0aWMgdm9pZCBnZW4xMV9kc2lfY29uZmlnX3BoeV9sYW5lc19zZXF1ZW5jZShzdHJ1Y3Qg
aW50ZWxfZW5jb2RlciAqZW5jb2RlcikKIAkJdG1wICY9IH5GUkNfTEFURU5DWV9PUFRJTV9NQVNL
OwogCQl0bXAgfD0gRlJDX0xBVEVOQ1lfT1BUSU1fVkFMKDB4NSk7CiAJCUk5MTVfV1JJVEUoSUNM
X1BPUlRfVFhfRFcyX0dSUChwb3J0KSwgdG1wKTsKKworCQkvKiBGb3IgRUhMIHNldCBsYXRlbmN5
IG9wdGltaXphdGlvbiBmb3IgUENTX0RXMSBsYW5lcyAqLworCQlpZiAoSVNfRUxLSEFSVExBS0Uo
ZGV2X3ByaXYpKSB7CisJCQl0bXAgPSBJOTE1X1JFQUQoSUNMX1BPUlRfUENTX0RXMV9BVVgocG9y
dCkpOworCQkJdG1wICY9IH5MQVRFTkNZX09QVElNX01BU0s7CisJCQl0bXAgfD0gTEFURU5DWV9P
UFRJTV9WQUwoMCk7CisJCQlJOTE1X1dSSVRFKElDTF9QT1JUX1BDU19EVzFfQVVYKHBvcnQpLCB0
bXApOworCisJCQl0bXAgPSBJOTE1X1JFQUQoSUNMX1BPUlRfUENTX0RXMV9MTjAocG9ydCkpOwor
CQkJdG1wICY9IH5MQVRFTkNZX09QVElNX01BU0s7CisJCQl0bXAgfD0gTEFURU5DWV9PUFRJTV9W
QUwoMHgxKTsKKwkJCUk5MTVfV1JJVEUoSUNMX1BPUlRfUENTX0RXMV9HUlAocG9ydCksIHRtcCk7
CisJCX0KIAl9CiAKIH0KZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IGQ5ODE0Mjk0MGMzOC4u
OTViNDE2NzZhZTlkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTE4OTYsNiArMTg5Niw4
IEBAIGVudW0gaTkxNV9wb3dlcl93ZWxsX2lkIHsKICNkZWZpbmUgSUNMX1BPUlRfUENTX0RXMV9H
UlAocG9ydCkJX01NSU8oX0lDTF9QT1JUX1BDU19EV19HUlAoMSwgcG9ydCkpCiAjZGVmaW5lIElD
TF9QT1JUX1BDU19EVzFfTE4wKHBvcnQpCV9NTUlPKF9JQ0xfUE9SVF9QQ1NfRFdfTE4oMSwgMCwg
cG9ydCkpCiAjZGVmaW5lICAgQ09NTU9OX0tFRVBFUl9FTgkJKDEgPDwgMjYpCisjZGVmaW5lICAg
TEFURU5DWV9PUFRJTV9NQVNLCQkoMHgzIDw8IDIpCisjZGVmaW5lICAgTEFURU5DWV9PUFRJTV9W
QUwoeCkJCSgoeCkgPDwgMikKIAogLyogQ05ML0lDTCBQb3J0IFRYIHJlZ2lzdGVycyAqLwogI2Rl
ZmluZSBfQ05MX1BPUlRfVFhfQUVfR1JQX09GRlNFVAkJMHgxNjIzNDAKLS0gCjIuMjIuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
