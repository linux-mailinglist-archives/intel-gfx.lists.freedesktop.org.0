Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8596C21013E
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 03:05:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7DE16E5B6;
	Wed,  1 Jul 2020 01:05:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77CEB6E5BB
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 01:05:25 +0000 (UTC)
IronPort-SDR: D4heU8Aq+Py/BV2TbCk8dGq4Vh1ORnyrGD5IHuvHJ2EXXWJBuq6Ituq/znE7bOziMlPJTcoO4Z
 0Pq6elpta0zw==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="147978662"
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="147978662"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 18:05:24 -0700
IronPort-SDR: fb0dvfrxDF/nK+eUePtcSuTrkue5osBiqiiOm4w75rkbd5Q76dDAJAqbIi3E05XTooFAXAqOz0
 /mUbYT9sA6DQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,298,1589266800"; d="scan'208";a="266619697"
Received: from gkipp-mobl1.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.255.76.92])
 by fmsmga008.fm.intel.com with ESMTP; 30 Jun 2020 18:05:24 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jun 2020 18:06:55 -0700
Message-Id: <20200701010655.226379-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200701010655.226379-1-jose.souza@intel.com>
References: <20200701010655.226379-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/tgl: Implement WA 22010931296
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

Rml4IGFub3RoZXIgc2V0IG9mIGNvcnJ1cHRpb24gaXNzdWVzLgoKQlNwZWM6IDUyNzU4CkJTcGVj
OiA1Mjg5MApTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXph
QGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5k
cy5jIHwgNCArKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgICAg
IHwgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCmluZGV4IDJkYTM2NjgyMWRkYS4uYzhiZjA5
ZWZkMGRjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJv
dW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMK
QEAgLTE2NzcsNiArMTY3NywxMCBAQCByY3NfZW5naW5lX3dhX2luaXQoc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lLCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCiAJCSAqIFdhXzE0MDEw
MjI5MjA2OnRnbAogCQkgKi8KIAkJd2FfbWFza2VkX2VuKHdhbCwgR0VOOV9ST1dfQ0hJQ0tFTjQs
IEdFTjEyX0RJU0FCTEVfVERMX1BVU0gpOworCisJCS8qIFdhXzIyMDEwOTMxMjk2OnRnbCAqLwor
CQl3YV93cml0ZV9vcih3YWwsIFVOU0xJQ0VfVU5JVF9MRVZFTF9DTEtHQVRFMiwKKwkJCSAgICBU
RFNVTklUX0NMS0dBVEVfRElTKTsKIAl9CiAKIAlpZiAoSVNfR0VOKGk5MTUsIDExKSkgewpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggNzZiYzcwZDIxNGI2Li5kZjk0MjZjMzlhN2EgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtNDE2OSw2ICs0MTY5LDcgQEAgZW51bSB7CiAKICNkZWZp
bmUgVU5TTElDRV9VTklUX0xFVkVMX0NMS0dBVEUyCV9NTUlPKDB4OTRlNCkKICNkZWZpbmUgICBW
U1VOSVRfQ0xLR0FURV9ESVNfVEdMCVJFR19CSVQoMTkpCisjZGVmaW5lICAgVERTVU5JVF9DTEtH
QVRFX0RJUwkJUkVHX0JJVCgxMSkKICNkZWZpbmUgICBQU0RVTklUX0NMS0dBVEVfRElTCQlSRUdf
QklUKDUpCiAKICNkZWZpbmUgSU5GX1VOSVRfTEVWRUxfQ0xLR0FURQkJX01NSU8oMHg5NTYwKQot
LSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
