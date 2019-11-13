Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D946FB89A
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 20:16:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EEE36EE1E;
	Wed, 13 Nov 2019 19:16:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F10A86EE1E
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 19:16:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 11:16:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,301,1569308400"; d="scan'208";a="406069019"
Received: from invictus.jf.intel.com ([10.54.75.159])
 by fmsmga006.fm.intel.com with ESMTP; 13 Nov 2019 11:16:39 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Nov 2019 11:18:40 -0800
Message-Id: <20191113191840.23620-2-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191113191840.23620-1-radhakrishna.sripada@intel.com>
References: <20191113191840.23620-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: Add Wa_1408615072
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RGlzYWJsZSBWUyBVbml0IENsb2NrZ2F0aW5nLgoKQlNwZWM6IDUyODU3CkNjOiBNaWthIEt1b3Bw
YWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogUmFkaGFr
cmlzaG5hIFNyaXBhZGEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIHwgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9wbS5jIHwgNCArKysrCiAyIGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQoKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oCmluZGV4IDJmZmNjMjE2NzBiNy4uMzcxNGViNjQxMTI0IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgKQEAgLTQxNzIsNiArNDE3Miw3IEBAIGVudW0gewogCiAjZGVm
aW5lIFVOU0xJQ0VfVU5JVF9MRVZFTF9DTEtHQVRFCV9NTUlPKDB4OTQzNCkKICNkZWZpbmUgIFZG
VU5JVF9DTEtHQVRFX0RJUwkJKDEgPDwgMjApCisjZGVmaW5lICBWU1VOSVRfQ0xLR0FURV9ESVMJ
CSgxIDw8IDMpCiAKICNkZWZpbmUgSU5GX1VOSVRfTEVWRUxfQ0xLR0FURQkJX01NSU8oMHg5NTYw
KQogI2RlZmluZSAgIENHUFNGX0NMS0dBVEVfRElTCQkoMSA8PCAzKQpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3BtLmMKaW5kZXggMmQzODllNDM3ZTg3Li5mZTMyYzA0MzM5NzEgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50
ZWxfcG0uYwpAQCAtNjU3Miw2ICs2NTcyLDEwIEBAIHN0YXRpYyB2b2lkIHRnbF9pbml0X2Nsb2Nr
X2dhdGluZyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAKIAlJOTE1X1dSSVRF
KFBPV0VSR0FURV9FTkFCTEUsCiAJCSAgIEk5MTVfUkVBRChQT1dFUkdBVEVfRU5BQkxFKSB8IHZk
X3BnX2VuYWJsZSk7CisKKwkvKiBXYV8xNDA4NjE1MDcyOnRnbCAqLworCUk5MTVfV1JJVEUoVU5T
TElDRV9VTklUX0xFVkVMX0NMS0dBVEUsCisJCSAgIEk5MTVfUkVBRChVTlNMSUNFX1VOSVRfTEVW
RUxfQ0xLR0FURSkgfCBWRlVOSVRfQ0xLR0FURV9ESVMpOwogfQogCiBzdGF0aWMgdm9pZCBjbnBf
aW5pdF9jbG9ja19nYXRpbmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQotLSAK
Mi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
