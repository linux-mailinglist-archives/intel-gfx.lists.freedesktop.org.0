Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E671A8EDD
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 01:03:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFE506E5C5;
	Tue, 14 Apr 2020 23:03:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F5716E030
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 23:03:03 +0000 (UTC)
IronPort-SDR: 6D2UNPs9o3TnmyTC2L89TexoUU5wst7Ra9zc8deAAWJhqe/7owSzwE8KBYigVyT4y2Qm+1UHjx
 8XPS9fUGfCTg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 16:03:03 -0700
IronPort-SDR: KHMMYherysYFjjPeC/OYLFHpCPoOOMTYDIVqCC2L03yOr3qEpQlUJohTHaZ6OPO6Wjdui1Z3+M
 CsUxlqrRh79A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,384,1580803200"; d="scan'208";a="288370895"
Received: from unknown (HELO josouza-MOBL2.amr.corp.intel.com) ([10.209.55.81])
 by fmsmga002.fm.intel.com with ESMTP; 14 Apr 2020 16:03:03 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Apr 2020 16:04:42 -0700
Message-Id: <20200414230442.262092-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200414230442.262092-1-jose.souza@intel.com>
References: <20200414230442.262092-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/hdmi: Add missing sequence
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

SXQgd2FzIG1pc3NpbmcgdGhlIHN0ZXAgNy5iIC0gIklmIG5vdCB0eXBlLUMgc3RhdGljIGNvbm5l
Y3Rpb24sCmNvbmZpZ3VyZSBQT1JUX0NMX0RXMTAgU3RhdGljIFBvd2VyIERvd24gdG8gcG93ZXIg
dXAgYWxsIGxhbmVzIG9mIHRoZQpEREkiLgoKQlNwZWM6IDUzMzM5CkJTcGVjOiA0OTE5MQpTaWdu
ZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIHwgMTAgKysrKysr
KysrKwogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYwppbmRleCBkZTVjYjI1MDUzZTMuLjk0ZmEzN2QyMmUyYyAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC0zMzMwLDYgKzMz
MzAsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfcHJlX2VuYWJsZV9oZG1pKHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLAogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOwogCXN0cnVjdCBpbnRlbF9kaWdpdGFs
X3BvcnQgKmRpZ19wb3J0ID0gZW5jX3RvX2RpZ19wb3J0KGVuY29kZXIpOworCWVudW0gcGh5IHBo
eSA9IGludGVsX3BvcnRfdG9fcGh5KGRldl9wcml2LCBlbmNvZGVyLT5wb3J0KTsKIAlpbnQgbGV2
ZWwgPSBpbnRlbF9kZGlfaGRtaV9sZXZlbChlbmNvZGVyKTsKIAogCWludGVsX2RwX2R1YWxfbW9k
ZV9zZXRfdG1kc19vdXRwdXQoJmRpZ19wb3J0LT5oZG1pLCB0cnVlKTsKQEAgLTMzNTcsNiArMzM1
OCwxNSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfcHJlX2VuYWJsZV9oZG1pKHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCiAJaW50ZWxfZGRpX2VuYWJsZV9waXBlX2Nsb2NrKGNy
dGNfc3RhdGUpOwogCisJaWYgKGludGVsX3BoeV9pc19jb21ibyhkZXZfcHJpdiwgcGh5KSkgewor
CQlib29sIGxhbmVfcmV2ZXJzYWwgPQorCQkJZGlnX3BvcnQtPnNhdmVkX3BvcnRfYml0cyAmIERE
SV9CVUZfUE9SVF9SRVZFUlNBTDsKKworCQlpbnRlbF9jb21ib19waHlfcG93ZXJfdXBfbGFuZXMo
ZGV2X3ByaXYsIHBoeSwgZmFsc2UsCisJCQkJCSAgICAgICBjcnRjX3N0YXRlLT5sYW5lX2NvdW50
LAorCQkJCQkgICAgICAgbGFuZV9yZXZlcnNhbCk7CisJfQorCiAJZGlnX3BvcnQtPnNldF9pbmZv
ZnJhbWVzKGVuY29kZXIsIGNydGNfc3RhdGUtPmhhc19pbmZvZnJhbWUsIGNydGNfc3RhdGUsCiAJ
CQkJIGNvbm5fc3RhdGUpOwogfQotLSAKMi4yNi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
