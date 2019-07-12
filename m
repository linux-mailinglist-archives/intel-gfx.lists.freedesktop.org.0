Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3607666AF
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 07:57:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 622F96E2CA;
	Fri, 12 Jul 2019 05:57:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D0D726E2C8
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 05:57:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 22:57:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,481,1557212400"; d="scan'208";a="189740603"
Received: from kdedow-mobl1.amr.corp.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.255.80.125])
 by fmsmga004.fm.intel.com with ESMTP; 11 Jul 2019 22:57:13 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2019 22:57:06 -0700
Message-Id: <20190712055706.12143-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190712055706.12143-1-lucas.demarchi@intel.com>
References: <20190712055706.12143-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 2/2] drm/i915/tgl: add modular FIA to device
 info
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGlnZXIgTGFrZSBoYXMgbW9kdWxhciBGSUEgYml0IGluZGljYXRpbmcgaWYgd2UgYXJlIHVzaW5n
IGl0LCBzbyBhZGQgdG8KdGhlIGRldmljZSBpbmZvLgoKU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUg
TWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wY2kuYyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcGNpLmMKaW5kZXggZTgzYzk0Y2YyNzQ0Li43ZWM4MTcwZjE3OTQgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wY2kuYwpAQCAtNzkwLDYgKzc5MCw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgaW50ZWxfZGV2aWNlX2luZm8gaW50ZWxfdGlnZXJsYWtlXzEyX2luZm8gPSB7CiAJUExBVEZP
Uk0oSU5URUxfVElHRVJMQUtFKSwKIAkubnVtX3BpcGVzID0gNCwKIAkucmVxdWlyZV9mb3JjZV9w
cm9iZSA9IDEsCisJLmRpc3BsYXkuaGFzX21vZHVsYXJfZmlhID0gMSwKIAkuZW5naW5lX21hc2sg
PQogCQlCSVQoUkNTMCkgfCBCSVQoQkNTMCkgfCBCSVQoVkVDUzApIHwgQklUKFZDUzApIHwgQklU
KFZDUzIpLAogfTsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
