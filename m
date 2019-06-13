Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0B1643439
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 10:41:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20B6589740;
	Thu, 13 Jun 2019 08:41:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BD1089740
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 08:41:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 01:41:22 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 13 Jun 2019 01:41:21 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jun 2019 11:44:14 +0300
Message-Id: <20190613084416.6794-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 1/3] drm/i915: make intel_sdvo_regs.h
 self-contained
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RW5zdXJlIGludGVsX3Nkdm9fcmVncy5oIGlzIHNlbGYtY29udGFpbmVkIGFuZCByZW1haW5zIHRo
YXQgd2F5LgoKU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFkZXItdGVzdCB8IDEgKwog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfc2R2b19yZWdzLmggICAgfCA3ICsrKysrKysKIDIg
ZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtl
ZmlsZS5oZWFkZXItdGVzdAppbmRleCA2ZWYzYjY0N2FjNjUuLmMwNDI5N2NlNTdiNCAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRlc3QKQEAgLTU2LDYgKzU2LDcgQEAg
aGVhZGVyX3Rlc3QgOj0gXAogCWludGVsX3F1aXJrcy5oIFwKIAlpbnRlbF9ydW50aW1lX3BtLmgg
XAogCWludGVsX3Nkdm8uaCBcCisJaW50ZWxfc2R2b19yZWdzLmggXAogCWludGVsX3NpZGViYW5k
LmggXAogCWludGVsX3Nwcml0ZS5oIFwKIAlpbnRlbF90di5oIFwKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3Nkdm9fcmVncy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfc2R2b19yZWdzLmgKaW5kZXggZTliYTNiMDQ3ZjkzLi5hZjAyYzBkMjFkNmIgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Nkdm9fcmVncy5oCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3Nkdm9fcmVncy5oCkBAIC0yNCw2ICsyNCwxMSBAQAogICoJ
RXJpYyBBbmhvbHQgPGVyaWNAYW5ob2x0Lm5ldD4KICAqLwogCisjaWZuZGVmIF9fSU5URUxfU0RW
T19SRUdTX0hfXworI2RlZmluZSBfX0lOVEVMX1NEVk9fUkVHU19IX18KKworI2luY2x1ZGUgPGxp
bnV4L3R5cGVzLmg+CisKIC8qCiAgKiBTRFZPIGNvbW1hbmQgZGVmaW5pdGlvbnMgYW5kIHN0cnVj
dHVyZXMuCiAgKi8KQEAgLTczMSwzICs3MzYsNSBAQCBzdHJ1Y3QgaW50ZWxfc2R2b19lbmNvZGUg
ewogCXU4IGR2aV9yZXY7CiAJdTggaGRtaV9yZXY7CiB9IF9fcGFja2VkOworCisjZW5kaWYgLyog
X19JTlRFTF9TRFZPX1JFR1NfSF9fICovCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
