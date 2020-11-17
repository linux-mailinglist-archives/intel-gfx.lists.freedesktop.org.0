Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0472B6DC1
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Nov 2020 19:50:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 406F789FA0;
	Tue, 17 Nov 2020 18:50:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FDE989F55
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Nov 2020 18:50:50 +0000 (UTC)
IronPort-SDR: YkT6lfqibN4JWnz7sIedOJATtrldotCXJUHrintEeCEAixEWEbCOMQ4/W0Ve+GOhRfekupDZQy
 WDQDC8QS3+UQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9808"; a="150259218"
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="150259218"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 10:50:47 -0800
IronPort-SDR: 9EeNMumMaWJLcBhiSZG5sGXuBHTb0wn/a5e6L+qQ516bBsnm63I0aZSnhx9kqHZ4s+8b2KpABI
 +42+49y7iQNQ==
X-IronPort-AV: E=Sophos;i="5.77,486,1596524400"; d="scan'208";a="340996846"
Received: from ankithac-mobl1.amr.corp.intel.com (HELO
 aswarup-mobl.amr.corp.intel.com) ([10.254.101.215])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2020 10:50:46 -0800
From: Aditya Swarup <aditya.swarup@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 17 Nov 2020 10:50:14 -0800
Message-Id: <20201117185029.22078-7-aditya.swarup@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201117185029.22078-1-aditya.swarup@intel.com>
References: <20201117185029.22078-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/21] drm/i915/adl_s: Add Interrupt Support
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
PGFkaXR5YS5zd2FydXBAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
aXJxLmMgfCAzICstLQogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAyIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCmluZGV4IGRjNmZlYmM2M2YxYy4uNzU4ZWQ0ZjZj
OWYzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKQEAgLTE5MSw4ICsxOTEsNyBAQCBzdGF0aWMg
dm9pZCBpbnRlbF9ocGRfaW5pdF9waW5zKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKIAogCWlmIChIQVNfUENIX0RHMShkZXZfcHJpdikpCiAJCWhwZC0+cGNoX2hwZCA9IGhwZF9z
ZGVfZGcxOwotCWVsc2UgaWYgKEhBU19QQ0hfVEdQKGRldl9wcml2KSB8fCBIQVNfUENIX0pTUChk
ZXZfcHJpdikgfHwKLQkJIEhBU19QQ0hfSUNQKGRldl9wcml2KSB8fCBIQVNfUENIX01DQyhkZXZf
cHJpdikpCisJZWxzZSBpZiAoSU5URUxfUENIX1RZUEUoZGV2X3ByaXYpID49IFBDSF9JQ1ApCiAJ
CWhwZC0+cGNoX2hwZCA9IGhwZF9pY3A7CiAJZWxzZSBpZiAoSEFTX1BDSF9DTlAoZGV2X3ByaXYp
IHx8IEhBU19QQ0hfU1BUKGRldl9wcml2KSkKIAkJaHBkLT5wY2hfaHBkID0gaHBkX3NwdDsKLS0g
CjIuMjcuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
