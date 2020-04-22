Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 019CE1B4D76
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2020 21:38:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19D7389DEC;
	Wed, 22 Apr 2020 19:38:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 826C489DA5
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Apr 2020 19:38:10 +0000 (UTC)
IronPort-SDR: e3t2E5EjCWZ9RnB2XWIti6+sbkDUvKGIKdRuZIfUMe5zoYYzmWke5Zw5JznpkFt+ICO6yjRQgO
 y81MD+6vQfKw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2020 12:38:09 -0700
IronPort-SDR: g7ni4ysep2TB2sGU3yFKJPAlXvVmll++mH6psoV8Eh+kGpfxlekdZHysvDFeFoFBsyGZ+IbfBb
 d7mtE/oyRHqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,304,1583222400"; d="scan'208";a="456634276"
Received: from skarunan-mobl1.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.251.142.224])
 by fmsmga005.fm.intel.com with ESMTP; 22 Apr 2020 12:38:09 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Apr 2020 12:40:02 -0700
Message-Id: <20200422194002.206744-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200422194002.206744-1-jose.souza@intel.com>
References: <20200422194002.206744-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/hdmi: Add missing sequence
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
MTUvZGlzcGxheS9pbnRlbF9kZGkuYwppbmRleCAyNTVkYzc5NmVkZTUuLmQxYzhhMTdmYzhlYSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC0zMzEyLDYgKzMz
MTIsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfcHJlX2VuYWJsZV9oZG1pKHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLAogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOwogCXN0cnVjdCBpbnRlbF9kaWdpdGFs
X3BvcnQgKmRpZ19wb3J0ID0gZW5jX3RvX2RpZ19wb3J0KGVuY29kZXIpOworCWVudW0gcGh5IHBo
eSA9IGludGVsX3BvcnRfdG9fcGh5KGRldl9wcml2LCBlbmNvZGVyLT5wb3J0KTsKIAlpbnQgbGV2
ZWwgPSBpbnRlbF9kZGlfaGRtaV9sZXZlbChlbmNvZGVyKTsKIAogCWludGVsX2RwX2R1YWxfbW9k
ZV9zZXRfdG1kc19vdXRwdXQoJmRpZ19wb3J0LT5oZG1pLCB0cnVlKTsKQEAgLTMzMzksNiArMzM0
MCwxNSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfcHJlX2VuYWJsZV9oZG1pKHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCiAJaW50ZWxfZGRpX2VuYWJsZV9waXBlX2Nsb2NrKGVu
Y29kZXIsIGNydGNfc3RhdGUpOwogCisJaWYgKGludGVsX3BoeV9pc19jb21ibyhkZXZfcHJpdiwg
cGh5KSkgeworCQlib29sIGxhbmVfcmV2ZXJzYWwgPQorCQkJZGlnX3BvcnQtPnNhdmVkX3BvcnRf
Yml0cyAmIERESV9CVUZfUE9SVF9SRVZFUlNBTDsKKworCQlpbnRlbF9jb21ib19waHlfcG93ZXJf
dXBfbGFuZXMoZGV2X3ByaXYsIHBoeSwgZmFsc2UsCisJCQkJCSAgICAgICBjcnRjX3N0YXRlLT5s
YW5lX2NvdW50LAorCQkJCQkgICAgICAgbGFuZV9yZXZlcnNhbCk7CisJfQorCiAJZGlnX3BvcnQt
PnNldF9pbmZvZnJhbWVzKGVuY29kZXIsIGNydGNfc3RhdGUtPmhhc19pbmZvZnJhbWUsIGNydGNf
c3RhdGUsCiAJCQkJIGNvbm5fc3RhdGUpOwogfQotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
