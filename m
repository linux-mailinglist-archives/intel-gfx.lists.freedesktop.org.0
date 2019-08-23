Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF40D9AAD6
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 10:54:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38CD86EC3C;
	Fri, 23 Aug 2019 08:54:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 256DF6EC2E
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 08:54:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Aug 2019 01:21:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,420,1559545200"; d="scan'208";a="203702048"
Received: from zzhan38-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.255.92.52])
 by fmsmga004.fm.intel.com with ESMTP; 23 Aug 2019 01:21:14 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Aug 2019 01:20:41 -0700
Message-Id: <20190823082055.5992-10-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190823082055.5992-1-lucas.demarchi@intel.com>
References: <20190823082055.5992-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 09/23] drm/i915/tgl: Add maximum resolution
 supported by PSR2 HW
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpUR0wg
UFNSMiBIVyBzdXBwb3J0cyBhIGJpZ2dlciByZXNvbHV0aW9uLCBzbyBsZXRzIGFkZCBpdAoKQ2M6
IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwuY29tPgpDYzog
Um9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PD
qSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTog
THVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDUgKysrKy0KIDEgZmlsZSBjaGFuZ2Vk
LCA0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYwppbmRleCBjMzNhYTE2ZWQwMzguLjVkMjRmMWM0N2EyYiAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCkBAIC01NzAsNyArNTcwLDEwIEBA
IHN0YXRpYyBib29sIGludGVsX3BzcjJfY29uZmlnX3ZhbGlkKHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHAsCiAJCXJldHVybiBmYWxzZTsKIAl9CiAKLQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+
PSAxMCB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkgeworCWlmIChJTlRFTF9HRU4oZGV2X3By
aXYpID49IDEyKSB7CisJCXBzcl9tYXhfaCA9IDUxMjA7CisJCXBzcl9tYXhfdiA9IDMyMDA7CisJ
fSBlbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwIHx8IElTX0dFTUlOSUxBS0UoZGV2
X3ByaXYpKSB7CiAJCXBzcl9tYXhfaCA9IDQwOTY7CiAJCXBzcl9tYXhfdiA9IDIzMDQ7CiAJfSBl
bHNlIGlmIChJU19HRU4oZGV2X3ByaXYsIDkpKSB7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
