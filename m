Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 352D02AA091
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Nov 2020 23:56:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 437A16EB43;
	Fri,  6 Nov 2020 22:55:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 555826EB43
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Nov 2020 22:55:54 +0000 (UTC)
IronPort-SDR: NgnwxmsY5vhWWlJiLJuIwAfndr0FQtORGLjyTw6E8mGiBOhRKecxTRLryk7fFqkFmSu7rAhr2n
 CpW5A2MpS+ZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9797"; a="167022953"
X-IronPort-AV: E=Sophos;i="5.77,457,1596524400"; d="scan'208";a="167022953"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2020 14:55:53 -0800
IronPort-SDR: bx1hKyLEf/p8LE+N1EatYkpLSGteymGRsC9JURj2CiUR0z96I7K85+I1rlj2sno2WZtofrdJGU
 Gk/0IbYmBvHQ==
X-IronPort-AV: E=Sophos;i="5.77,457,1596524400"; d="scan'208";a="540022756"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2020 14:55:52 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Nov 2020 14:55:28 -0800
Message-Id: <20201106225531.920641-5-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20201106225531.920641-1-lucas.demarchi@intel.com>
References: <20201106225531.920641-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/8] drm/i915/display: Do not set any power
 wells when there is no display
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpQb3dl
ciB3ZWxscyBhcmUgb25seSBwYXJ0IG9mIGRpc3BsYXkgYmxvY2sgYW5kIG5vdCBuZWNlc3Nhcnkg
d2hlbgp3ZSBkb24ndCBoYXZlIGRpc3BsYXkuCgpDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxh
QGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5z
b3V6YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVt
YXJjaGlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9wb3dlci5jIHwgNSArKysrKwogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygr
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9wb3dlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bv
d2VyLmMKaW5kZXggNjg5OTIyNDgwNjYxLi4xOWEzYzkzYzU0ODkgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wb3dlci5jCkBAIC00NTY3LDYg
KzQ1NjcsMTEgQEAgX19zZXRfcG93ZXJfd2VsbHMoc3RydWN0IGk5MTVfcG93ZXJfZG9tYWlucyAq
cG93ZXJfZG9tYWlucywKIAlpbnQgcG93ZXJfd2VsbF9jb3VudCA9IDA7CiAJaW50IGksIHBsdF9p
ZHggPSAwOwogCisJaWYgKCFIQVNfRElTUExBWShpOTE1KSkgeworCQlwb3dlcl9kb21haW5zLT5w
b3dlcl93ZWxsX2NvdW50ID0gMDsKKwkJcmV0dXJuIDA7CisJfQorCiAJZm9yIChpID0gMDsgaSA8
IHBvd2VyX3dlbGxfZGVzY3Nfc3o7IGkrKykKIAkJaWYgKCEoQklUX1VMTChwb3dlcl93ZWxsX2Rl
c2NzW2ldLmlkKSAmIHNraXBfbWFzaykpCiAJCQlwb3dlcl93ZWxsX2NvdW50Kys7Ci0tIAoyLjI5
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
