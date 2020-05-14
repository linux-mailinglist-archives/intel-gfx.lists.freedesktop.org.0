Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1194C1D355A
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 17:40:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF13F6E364;
	Thu, 14 May 2020 15:40:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C74C6E364
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 15:40:14 +0000 (UTC)
IronPort-SDR: Ec86hNqZa3Wc2n2taAFtZjgirhghcAKA34fs5rJ6CXjr+NjtOUCzvvJbYaglzwjEd+A4h0TBRa
 fk5bMeBoVitg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 08:40:13 -0700
IronPort-SDR: JOjVwxuvgd101C+xDIPLt8SqWxx1GWCnT18NBMlxq/uuoytNU54YaeDeqNf3ffqxSNicxkyoj5
 WzfWnwUBuIaA==
X-IronPort-AV: E=Sophos;i="5.73,391,1583222400"; d="scan'208";a="437949305"
Received: from oalgaze-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.39.44])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2020 08:40:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 May 2020 18:40:03 +0300
Message-Id: <20200514154006.4761-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/params: don't expose
 inject_probe_failure in debugfs
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
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Juha-Pekka=20Heikkil=C3=A4?= <juha-pekka.heikkila@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIHBhcmFtZXRlciBvbmx5IG1ha2VzIHNlbnNlIGFzIGEgbW9kdWxlIHBhcmFtZXRlciBvbmx5
LgoKRml4ZXM6IGM0M2M1YTg4MThkNCAoImRybS9pOTE1L3BhcmFtczogYWRkIGk5MTUgcGFyYW1l
dGVycyB0byBkZWJ1Z2ZzIikKQ2M6IEp1aGEtUGVra2EgSGVpa2tpbMOkIDxqdWhhLXBla2thLmhl
aWtraWxhQGludGVsLmNvbT4KQ2M6IFZlbmthdGEgU2FuZGVlcCBEaGFuYWxha290YSA8dmVua2F0
YS5zLmRoYW5hbGFrb3RhQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BhcmFt
cy5oIHwgMiArLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmgKaW5kZXggNDUzMjM3MzJmMDk5Li40ZjIxYmZm
ZmJmMGUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmgKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wYXJhbXMuaApAQCAtNjQsNyArNjQsNyBAQCBz
dHJ1Y3QgZHJtX3ByaW50ZXI7CiAJcGFyYW0oaW50LCBtbWlvX2RlYnVnLCAtSVNfRU5BQkxFRChD
T05GSUdfRFJNX0k5MTVfREVCVUdfTU1JTyksIDA2MDApIFwKIAlwYXJhbShpbnQsIGVkcF92c3dp
bmcsIDAsIDA0MDApIFwKIAlwYXJhbSh1bnNpZ25lZCBpbnQsIHJlc2V0LCAzLCAwNjAwKSBcCi0J
cGFyYW0odW5zaWduZWQgaW50LCBpbmplY3RfcHJvYmVfZmFpbHVyZSwgMCwgMDYwMCkgXAorCXBh
cmFtKHVuc2lnbmVkIGludCwgaW5qZWN0X3Byb2JlX2ZhaWx1cmUsIDAsIDApIFwKIAlwYXJhbShp
bnQsIGZhc3Rib290LCAtMSwgMDYwMCkgXAogCXBhcmFtKGludCwgZW5hYmxlX2RwY2RfYmFja2xp
Z2h0LCAtMSwgMDYwMCkgXAogCXBhcmFtKGNoYXIgKiwgZm9yY2VfcHJvYmUsIENPTkZJR19EUk1f
STkxNV9GT1JDRV9QUk9CRSwgMDQwMCkgXAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
