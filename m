Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0026E7B189
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2019 20:18:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6B4E891A0;
	Tue, 30 Jul 2019 18:18:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 893CF891A0
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2019 18:18:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 11:18:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="165972104"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.10.102])
 by orsmga008.jf.intel.com with ESMTP; 30 Jul 2019 11:18:06 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Jul 2019 11:17:59 -0700
Message-Id: <20190730181759.26162-1-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: make i915_selftest.h self-contained
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

Rml4IGJ1aWxkIGJyZWFrYWdlOgoKSW4gZmlsZSBpbmNsdWRlZCBmcm9tIDxjb21tYW5kLWxpbmU+
OgouL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2VsZnRlc3QuaDoxMjU6MTogZXJyb3I6IHVu
a25vd24gdHlwZSBuYW1lIOKAmGJvb2zigJkKICAxMjUgfCBib29sIF9faWd0X3RpbWVvdXQodW5z
aWduZWQgbG9uZyB0aW1lb3V0LCBjb25zdCBjaGFyICpmbXQsIC4uLik7CiAgICAgIHwgXn5+fgoK
U2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9zZWxmdGVzdC5oIHwgMiArKwogMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfc2VsZnRlc3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfc2VsZnRlc3Qu
aAppbmRleCBhY2RmNmViOWUyNjIuLjRkODgyMDVkZTUxYiAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9zZWxmdGVzdC5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfc2VsZnRlc3QuaApAQCAtMjQsNiArMjQsOCBAQAogI2lmbmRlZiBfX0k5MTVfU0VMRlRFU1Rf
SF9fCiAjZGVmaW5lIF9fSTkxNV9TRUxGVEVTVF9IX18KIAorI2luY2x1ZGUgPGxpbnV4L3R5cGVz
Lmg+CisKIHN0cnVjdCBwY2lfZGV2Owogc3RydWN0IGRybV9pOTE1X3ByaXZhdGU7CiAKLS0gCjIu
MjEuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
