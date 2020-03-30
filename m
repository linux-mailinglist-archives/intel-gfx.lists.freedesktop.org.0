Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C88E5198852
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2020 01:31:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E4656E4D7;
	Mon, 30 Mar 2020 23:31:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46E886E4E3
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 23:31:47 +0000 (UTC)
IronPort-SDR: +AiHlTm4ochIpla7LV+turUZQYk1LpxbvGFWNMil7lC6lRFmuI2xB869WqGz+UunZtzIUckusk
 uMPV1dZm1ffA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2020 16:31:42 -0700
IronPort-SDR: qqiLIPBbrNovt1JYcTE6uDUAdhoU194k6EBDFEY1jJBpB7noomQEb8JStIPMbQxxzkJZiCNL7L
 y6vFMTSKoR8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,326,1580803200"; d="scan'208";a="242190311"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.15.8])
 by orsmga008.jf.intel.com with ESMTP; 30 Mar 2020 16:31:42 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Mar 2020 16:33:03 -0700
Message-Id: <20200330233304.406215-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200330233304.406215-1-jose.souza@intel.com>
References: <20200330233304.406215-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/psr: Implement WA 1130
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

UmVuZGVyIG1vZGlmaWNhdGlvbnMgY291bGQgbm90IHRyaWdnZXIgUFNSIGV4aXQgdGhpcyBXQSBm
aXhlcyBpdC4KCkJTcGVjOiAyMTY2NApTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNv
dXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3JlZy5oIHwgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIHwgOCArKysrKysr
KwogMiBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aAppbmRleCBhYmIzNzQzN2ZmNWQuLjI2MDhjN2U0N2FjYSAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3Jl
Zy5oCkBAIC00MTM3LDYgKzQxMzcsNyBAQCBlbnVtIHsKICNkZWZpbmUgICBUR0xfVlJIX0dBVElO
R19ESVMJCVJFR19CSVQoMzEpCiAKICNkZWZpbmUgR0VOOV9DTEtHQVRFX0RJU180CQlfTU1JTygw
eDQ2NTNDKQorI2RlZmluZSAgIEJYVF9EUEZDX0dBVElOR19ESVMJCSgxIDw8IDMxKQogI2RlZmlu
ZSAgIEJYVF9HTUJVU19HQVRJTkdfRElTCQkoMSA8PCAxNCkKIAogI2RlZmluZSBfQ0xLR0FURV9E
SVNfUFNMX0EJCTB4NDY1MjAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCmluZGV4IDgzNzUwNTRiYTI3
ZC4uMDIxODQ4ODhkMTkzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9w
bS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKQEAgLTEzOSw2ICsxMzks
MTAgQEAgc3RhdGljIHZvaWQgYnh0X2luaXRfY2xvY2tfZ2F0aW5nKHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdikKIAkgKiBhcHBsaWNhdGlvbiwgdXNpbmcgYmF0Y2ggYnVmZmVycyBv
ciBhbnkgb3RoZXIgbWVhbnMuCiAJICovCiAJSTkxNV9XUklURShSTV9USU1FT1VULCBNTUlPX1RJ
TUVPVVRfVVMoOTUwKSk7CisKKwkvKiBXQSAxMTMwICovCisJSTkxNV9XUklURShHRU45X0NMS0dB
VEVfRElTXzQsCisJCSAgIEk5MTVfUkVBRChHRU45X0NMS0dBVEVfRElTXzQpIHwgQlhUX0RQRkNf
R0FUSU5HX0RJUyk7CiB9CiAKIHN0YXRpYyB2b2lkIGdsa19pbml0X2Nsb2NrX2dhdGluZyhzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCkBAIC0xNTIsNiArMTU2LDEwIEBAIHN0YXRp
YyB2b2lkIGdsa19pbml0X2Nsb2NrX2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2
X3ByaXYpCiAJICovCiAJSTkxNV9XUklURShHRU45X0NMS0dBVEVfRElTXzAsIEk5MTVfUkVBRChH
RU45X0NMS0dBVEVfRElTXzApIHwKIAkJICAgUFdNMV9HQVRJTkdfRElTIHwgUFdNMl9HQVRJTkdf
RElTKTsKKworCS8qIFdBIDExMzAgKi8KKwlJOTE1X1dSSVRFKEdFTjlfQ0xLR0FURV9ESVNfNCwK
KwkJICAgSTkxNV9SRUFEKEdFTjlfQ0xLR0FURV9ESVNfNCkgfCBCWFRfRFBGQ19HQVRJTkdfRElT
KTsKIH0KIAogc3RhdGljIHZvaWQgcG52X2dldF9tZW1fZnJlcShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYpCi0tIAoyLjI2LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
