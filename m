Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F2C11BFC
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2019 17:00:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67A7B8941E;
	Thu,  2 May 2019 15:00:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10B04893CD
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 15:00:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 08:00:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,422,1549958400"; d="scan'208";a="169963593"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 02 May 2019 08:00:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 May 2019 18:02:35 +0300
Message-Id: <95203dbf844061da95f33614d0cb61533a11fdd4.1556809195.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1556809195.git.jani.nikula@intel.com>
References: <cover.1556809195.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 01/13] drm/i915/dvo: move DVO chip types to
 intel_dvo.c
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

UmVkdWNlIGNsdXR0ZXIgZnJvbSBpbnRlbF9kcnYuaCB3aXRoIHRoZSBtaW5pbWFsIGNoYW5nZS4K
ClNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJ2LmggfCA1IC0tLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kdm8uYyB8IDUgKysrKysKIDIgZmlsZXMgY2hhbmdlZCwgNSBpbnNlcnRp
b25zKCspLCA1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJ2LmgKaW5kZXggNTdh
ZTM5Ni4uYWIxMWMzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYu
aAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaApAQCAtMTg0LDExICsxODQs
NiBAQCBlbnVtIGludGVsX291dHB1dF90eXBlIHsKIAlJTlRFTF9PVVRQVVRfRFBfTVNUID0gMTEs
CiB9OwogCi0jZGVmaW5lIElOVEVMX0RWT19DSElQX05PTkUgMAotI2RlZmluZSBJTlRFTF9EVk9f
Q0hJUF9MVkRTIDEKLSNkZWZpbmUgSU5URUxfRFZPX0NISVBfVE1EUyAyCi0jZGVmaW5lIElOVEVM
X0RWT19DSElQX1RWT1VUIDQKLQogI2RlZmluZSBJTlRFTF9EU0lfVklERU9fTU9ERQkwCiAjZGVm
aW5lIElOVEVMX0RTSV9DT01NQU5EX01PREUJMQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kdm8uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2R2by5jCmlu
ZGV4IDkzMDAxMy4uNzlhNDNmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kdm8uYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kdm8uYwpAQCAtMzksNiAr
MzksMTEgQEAKICNpbmNsdWRlICJpbnRlbF9kdm9fZGV2LmgiCiAjaW5jbHVkZSAiaW50ZWxfcGFu
ZWwuaCIKIAorI2RlZmluZSBJTlRFTF9EVk9fQ0hJUF9OT05FCTAKKyNkZWZpbmUgSU5URUxfRFZP
X0NISVBfTFZEUwkxCisjZGVmaW5lIElOVEVMX0RWT19DSElQX1RNRFMJMgorI2RlZmluZSBJTlRF
TF9EVk9fQ0hJUF9UVk9VVAk0CisKICNkZWZpbmUgU0lMMTY0X0FERFIJMHgzOAogI2RlZmluZSBD
SDd4eHhfQUREUgkweDc2CiAjZGVmaW5lIFRGUDQxMF9BRERSCTB4MzgKLS0gCjIuMjAuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
