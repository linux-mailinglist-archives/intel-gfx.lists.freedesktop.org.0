Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2265D9950
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 20:38:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B65C6E41A;
	Wed, 16 Oct 2019 18:38:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D73C6E41A
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 18:38:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 11:38:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,304,1566889200"; d="scan'208";a="208465518"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by fmsmga001.fm.intel.com with ESMTP; 16 Oct 2019 11:38:16 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 16 Oct 2019 11:38:16 -0700
Received: from vkasired-desk2.fm.intel.com (10.22.254.139) by
 ORSMSX154.amr.corp.intel.com (10.22.226.12) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 16 Oct 2019 11:38:15 -0700
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Date: Wed, 16 Oct 2019 11:35:14 -0700
Message-ID: <20191016183514.11128-1-vivek.kasireddy@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-Originating-IP: [10.22.254.139]
Subject: [Intel-gfx] [PATCH] drm/i915: Correct the PCH type in irq
 postinstall
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

SmFzcGVyTGFrZSBQQ0ggKEpTUCkgaGFzIERESSBIUEQgcGluIG1hcHBpbmdzIHNpbWlsYXIgdG8g
VEdQIGFuZCBub3QKTUNDLiBBbHNvIGFkZCB0aGUgY29ycmVjdCBIUEQgcGluIG1hcHBpbmdzIGZv
ciB0aGUgTUNDIFBDSC4KCkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29t
PgpTaWduZWQtb2ZmLWJ5OiBWaXZlayBLYXNpcmVkZHkgPHZpdmVrLmthc2lyZWRkeUBpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyB8IDUgKysrKy0KIDEgZmls
ZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9pcnEuYwppbmRleCBlZjA5ZmJiMzZmMzcuLmU2MThmNDYyMTMwOCAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2lycS5jCkBAIC0zODAzLDggKzM4MDMsMTEgQEAgc3RhdGljIHZvaWQgaWNwX2lycV9wb3N0
aW5zdGFsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJaWYgKEhBU19QQ0hf
VEdQKGRldl9wcml2KSkKIAkJaWNwX2hwZF9kZXRlY3Rpb25fc2V0dXAoZGV2X3ByaXYsIFRHUF9E
RElfSFBEX0VOQUJMRV9NQVNLLAogCQkJCQlUR1BfVENfSFBEX0VOQUJMRV9NQVNLKTsKLQllbHNl
IGlmIChIQVNfUENIX01DQyhkZXZfcHJpdikpCisJZWxzZSBpZiAoSEFTX1BDSF9KU1AoZGV2X3By
aXYpKQogCQlpY3BfaHBkX2RldGVjdGlvbl9zZXR1cChkZXZfcHJpdiwgVEdQX0RESV9IUERfRU5B
QkxFX01BU0ssIDApOworCWVsc2UgaWYgKEhBU19QQ0hfTUNDKGRldl9wcml2KSkKKwkJaWNwX2hw
ZF9kZXRlY3Rpb25fc2V0dXAoZGV2X3ByaXYsIElDUF9ERElfSFBEX0VOQUJMRV9NQVNLLAorCQkJ
CQlJQ1BfVENfSFBEX0VOQUJMRShQT1JUX1RDMSkpOwogCWVsc2UKIAkJaWNwX2hwZF9kZXRlY3Rp
b25fc2V0dXAoZGV2X3ByaXYsIElDUF9ERElfSFBEX0VOQUJMRV9NQVNLLAogCQkJCQlJQ1BfVENf
SFBEX0VOQUJMRV9NQVNLKTsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
