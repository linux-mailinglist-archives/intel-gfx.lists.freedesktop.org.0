Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D42A7302607
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 15:08:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E00CB6E054;
	Mon, 25 Jan 2021 14:08:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D37806E054
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 14:08:50 +0000 (UTC)
IronPort-SDR: fZYSruwhRPd0fhns9/1bBAa7cWqct/mOls93FDKODii2PSS+AkleHDYaYzkDOaJDSqc6b0Nb37
 u6dU7QZjWSIw==
X-IronPort-AV: E=McAfee;i="6000,8403,9874"; a="179879106"
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="179879106"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 06:08:30 -0800
IronPort-SDR: QVSLfhXGXLzSYXQAmACh8EjwfClDmvXX3udSBQ0NKYVc+LpcGAB4Qo/6FI+tqQu/JywMqAQ9hK
 IheLJ7qYwjyg==
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="472319554"
Received: from iduggana-mobl.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.254.81.9])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 06:08:29 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 06:07:46 -0800
Message-Id: <20210125140753.347998-4-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210125140753.347998-1-aditya.swarup@intel.com>
References: <20210125140753.347998-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/10] drm/i915/adl_s: Add Interrupt Support
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgoKQURMUyBm
b2xsb3dzIElDUC9UR1AgbGlrZSBpbnRlcnJ1cHRzLgoKdjI6IFVzZSAiSU5URUxfUENIX1RZUEUo
ZGV2X3ByaXYpID49IFBDSF9JQ1AiIG9mIGhwZF9pY3AgKEx1Y2FzKQoKQ2M6IEx1Y2FzIERlIE1h
cmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlr
dWxhQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+CkNjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+CkNjOiBNYXR0IFJv
cGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6
YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFudXNoYSBTcml2YXRzYSA8
YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hp
IDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFkaXR5YSBTd2FydXAg
PGFkaXR5YS5zd2FydXBAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWF0dCBSb3BlciA8bWF0dGhl
dy5kLnJvcGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5j
IHwgMyArLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMiBkZWxldGlvbnMoLSkK
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9pcnEuYwppbmRleCAzMzAxOWNmMGU2MzAuLjY1NjhlN2U5ZmUyYSAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCkBAIC0yMDksOCArMjA5LDcgQEAgc3RhdGljIHZvaWQg
aW50ZWxfaHBkX2luaXRfcGlucyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAK
IAlpZiAoSEFTX1BDSF9ERzEoZGV2X3ByaXYpKQogCQlocGQtPnBjaF9ocGQgPSBocGRfc2RlX2Rn
MTsKLQllbHNlIGlmIChIQVNfUENIX1RHUChkZXZfcHJpdikgfHwgSEFTX1BDSF9KU1AoZGV2X3By
aXYpIHx8Ci0JCSBIQVNfUENIX0lDUChkZXZfcHJpdikgfHwgSEFTX1BDSF9NQ0MoZGV2X3ByaXYp
KQorCWVsc2UgaWYgKElOVEVMX1BDSF9UWVBFKGRldl9wcml2KSA+PSBQQ0hfSUNQKQogCQlocGQt
PnBjaF9ocGQgPSBocGRfaWNwOwogCWVsc2UgaWYgKEhBU19QQ0hfQ05QKGRldl9wcml2KSB8fCBI
QVNfUENIX1NQVChkZXZfcHJpdikpCiAJCWhwZC0+cGNoX2hwZCA9IGhwZF9zcHQ7Ci0tIAoyLjI3
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
