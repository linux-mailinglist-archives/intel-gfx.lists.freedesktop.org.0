Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C7420DD19
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2020 23:19:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DE4389FC3;
	Mon, 29 Jun 2020 21:19:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DE7689FA0
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jun 2020 21:19:33 +0000 (UTC)
IronPort-SDR: GDPb1Hh5SMI3uzmhnQVTstVB+xvZvVPtzyPA/0ZKYj2Of0ehDRaJepajAyD4/2uO3dkN7ZDYm7
 46noEWHKKB1w==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="126210806"
X-IronPort-AV: E=Sophos;i="5.75,295,1589266800"; d="scan'208";a="126210806"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2020 14:19:32 -0700
IronPort-SDR: ZaYUjeqP/QxQTCIumOvKw5olASD7BfEf0lwRDxu5MhQ6qx9shDi7oYa+OqykzN6sG8X3Ja1vTD
 qFedtRVolrXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,295,1589266800"; d="scan'208";a="312172496"
Received: from anuragpi-mobl.amr.corp.intel.com (HELO
 josouza-MOBL2.amr.corp.intel.com) ([10.254.46.142])
 by orsmga008.jf.intel.com with ESMTP; 29 Jun 2020 14:19:31 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Jun 2020 14:20:59 -0700
Message-Id: <20200629212059.108460-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200629212059.108460-1-jose.souza@intel.com>
References: <20200629212059.108460-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Implement WA 22010931296
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
bS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggNzk3ZTAzNmZhNjk1Li45YjM2NWZjN2E2NDQgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtNDE2NSw2ICs0MTY1LDcgQEAgZW51bSB7CiAKICNkZWZp
bmUgVU5TTElDRV9VTklUX0xFVkVMX0NMS0dBVEUyCV9NTUlPKDB4OTRlNCkKICNkZWZpbmUgICBW
U1VOSVRfQ0xLR0FURV9ESVNfVEdMCVJFR19CSVQoMTkpCisjZGVmaW5lICAgVERTVU5JVF9DTEtH
QVRFX0RJUwkJUkVHX0JJVCgxMSkKICNkZWZpbmUgICBQU0RVTklUX0NMS0dBVEVfRElTCQlSRUdf
QklUKDUpCiAKICNkZWZpbmUgSU5GX1VOSVRfTEVWRUxfQ0xLR0FURQkJX01NSU8oMHg5NTYwKQot
LSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
