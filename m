Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EEDAF6D69
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 04:52:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 763BB88D3D;
	Mon, 11 Nov 2019 03:52:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F62288D3D
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 03:52:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Nov 2019 19:52:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,291,1569308400"; d="scan'208";a="197545351"
Received: from kkadiyal.iind.intel.com ([10.223.74.161])
 by orsmga008.jf.intel.com with ESMTP; 10 Nov 2019 19:52:44 -0800
From: Kishore Kadiyala <kishore.kadiyala@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 11 Nov 2019 09:22:41 +0530
Message-Id: <20191111035241.19014-1-kishore.kadiyala@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/gen9: Add missing 10bpc formats
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
Cc: Kishore Kadiyala <kishore.kadiyala@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIDEwYnBjIGZvcm1hdHMgZm9yIGdlbjkuClRoaXMgcGF0Y2ggaGFzIGRlcGVuZGVuY3kgb24g
YmVsb3cgcGF0Y2g6Cmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRjaC8zMzUw
MjkvP3Nlcmllcz02Nzc0MSZyZXY9MgoKU2lnbmVkLW9mZi1ieTogS2lzaG9yZSBLYWRpeWFsYSA8
a2lzaG9yZS5rYWRpeWFsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9zcHJpdGUuYyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMo
KykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0
ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYwppbmRleCBk
N2Y3MWZhOTA2NTkuLmZhZDczZWEwMDk5MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Nwcml0ZS5jCkBAIC0yNDQ0LDYgKzI0NDQsOCBAQCBzdGF0aWMgY29uc3QgdTMy
IHNrbF9wbGFuYXJfZm9ybWF0c1tdID0gewogCURSTV9GT1JNQVRfQUJHUjg4ODgsCiAJRFJNX0ZP
Uk1BVF9YUkdCMjEwMTAxMCwKIAlEUk1fRk9STUFUX1hCR1IyMTAxMDEwLAorCURSTV9GT1JNQVRf
QVJHQjIxMDEwMTAsCisJRFJNX0ZPUk1BVF9BQkdSMjEwMTAxMCwKIAlEUk1fRk9STUFUX1hSR0Ix
NjE2MTYxNkYsCiAJRFJNX0ZPUk1BVF9YQkdSMTYxNjE2MTZGLAogCURSTV9GT1JNQVRfWVVZViwK
LS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
