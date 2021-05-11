Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAABA37A229
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 10:32:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76F166E9FB;
	Tue, 11 May 2021 08:32:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B09CA6E9FB;
 Tue, 11 May 2021 08:32:22 +0000 (UTC)
IronPort-SDR: zlzrQYh7lHgdYF7gpbHcWcEEs0P9PJfgQLDn/q4Cj/QmW5mAv+bnuDgSqe7Q+f6sB6L3BfSnYh
 xNnuLk3Tx1Yg==
X-IronPort-AV: E=McAfee;i="6200,9189,9980"; a="179651136"
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="179651136"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 01:32:21 -0700
IronPort-SDR: w+iIbNQnjIB14dxuwNOmIJ33exvw/vVkF1kPPMYxqsy7e9n8/4APwne3krV9+DUzQ8qhKd7Tzo
 U2/8n4bc8wfw==
X-IronPort-AV: E=Sophos;i="5.82,290,1613462400"; d="scan'208";a="471058871"
Received: from dartyukh-mobl2.ger.corp.intel.com (HELO
 zkempczy-mobl2.ger.corp.intel.com) ([10.213.3.239])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 01:32:00 -0700
From: =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue, 11 May 2021 10:31:39 +0200
Message-Id: <20210511083139.54002-1-zbigniew.kempczynski@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Add relocation exceptions for two
 other platforms
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
Cc: Dave Airlie <airlied@redhat.com>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgaGF2ZSBlc3RhYmxpc2hlZCBwcmV2aW91c2x5IHdlIHN0b3AgdXNpbmcgcmVsb2NhdGlvbnMg
c3RhcnRpbmcKZnJvbSBnZW4xMiBwbGF0Zm9ybXMgd2l0aCBUaWdlcmxha2UgYXMgYW4gZXhjZXB0
aW9uLiBVbmZvcnR1bmF0ZWx5CndlIG5lZWQgZXh0ZW5kIHRyYW5zaXRpb24gcGVyaW9kIGFuZCBz
dXBwb3J0IHJlbG9jYXRpb25zIGZvciB0d28Kb3RoZXIgaWdmeCBwbGF0Zm9ybXMgLSBSb2NrZXRs
YWtlIGFuZCBBbGRlcmxha2UuCgpTaWduZWQtb2ZmLWJ5OiBaYmlnbmlldyBLZW1wY3p5xYRza2kg
PHpiaWduaWV3LmtlbXBjenluc2tpQGludGVsLmNvbT4KQ2M6IERhdmUgQWlybGllIDxhaXJsaWVk
QHJlZGhhdC5jb20+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4K
Q2M6IEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5kLm5ldD4KLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jIHwgMTAgKysrKysrKy0tLQogMSBm
aWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwppbmRleCAyOTcxNDM1MTFm
OTkuLmY4MGRhMWQ2ZDliMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX2V4ZWNidWZmZXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9n
ZW1fZXhlY2J1ZmZlci5jCkBAIC00OTYsMTEgKzQ5NiwxNSBAQCBlYl92YWxpZGF0ZV92bWEoc3Ry
dWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsCiAJCXN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY19vYmpl
Y3QyICplbnRyeSwKIAkJc3RydWN0IGk5MTVfdm1hICp2bWEpCiB7Ci0JLyogUmVsb2NhdGlvbnMg
YXJlIGRpc2FsbG93ZWQgZm9yIGFsbCBwbGF0Zm9ybXMgYWZ0ZXIgVEdMLUxQLiAgVGhpcwotCSAq
IGFsc28gY292ZXJzIGFsbCBwbGF0Zm9ybXMgd2l0aCBsb2NhbCBtZW1vcnkuCisJLyoKKwkgKiBS
ZWxvY2F0aW9ucyBhcmUgZGlzYWxsb3dlZCBzdGFydGluZyBmcm9tIGdlbjEyIHdpdGggc29tZSBl
eGNlcHRpb25zCisJICogLSBUR0wvUktML0FETC4KIAkgKi8KIAlpZiAoZW50cnktPnJlbG9jYXRp
b25fY291bnQgJiYKLQkgICAgSU5URUxfR0VOKGViLT5pOTE1KSA+PSAxMiAmJiAhSVNfVElHRVJM
QUtFKGViLT5pOTE1KSkKKwkgICAgSU5URUxfR0VOKGViLT5pOTE1KSA+PSAxMiAmJiAhKElTX1RJ
R0VSTEFLRShlYi0+aTkxNSkgfHwKKwkJCQkJICAgSVNfUk9DS0VUTEFLRShlYi0+aTkxNSkgfHwK
KwkJCQkJICAgSVNfQUxERVJMQUtFX1MoZWItPmk5MTUpIHx8CisJCQkJCSAgIElTX0FMREVSTEFL
RV9QKGViLT5pOTE1KSkpCiAJCXJldHVybiAtRUlOVkFMOwogCiAJaWYgKHVubGlrZWx5KGVudHJ5
LT5mbGFncyAmIGViLT5pbnZhbGlkX2ZsYWdzKSkKLS0gCjIuMjYuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
