Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD5A11FFFB
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 09:38:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4164F6E462;
	Mon, 16 Dec 2019 08:38:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2559C6E462
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 08:38:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 00:38:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,321,1571727600"; d="scan'208";a="416365928"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by fmsmga006.fm.intel.com with ESMTP; 16 Dec 2019 00:38:26 -0800
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 16 Dec 2019 13:36:19 +0530
Message-Id: <20191216080619.10945-1-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Fix WARN_ON condition for cursor
 plane ddb allocation
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW4gc29tZSBjYXNlcyBsaWtlIGxhdGVuY3lbbGV2ZWxdPT0wLCB3bVtsZXZlbF0ucmVzX2xpbmVz
PjMxLAptaW5fZGRiX2FsbG9jIGNhbiBiZSBVMTZfTUFYLCBleGNsdWRlIGl0IGZyb20gdGhlIFdB
Uk5fT04uCgp2MjogU3BlY2lmeSB0aGUgY2FzZXMgaW4gd2hpY2ggd2UgaGl0IFUxNl9NQVgsIGlu
ZGVudGF0aW9uIChWaWxsZSkKCkZpeGVzOiAxMGE3ZTA3YjY4YjkgKCJkcm0vaTkxNTogTWFrZSBz
dXJlIGN1cnNvciBoYXMgZW5vdWdoIGRkYiBmb3IgdGhlIHNlbGVjdGVkIHdtIGxldmVsIikKU3Vn
Z2VzdGVkLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
PgpTaWduZWQtb2ZmLWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVs
LmNvbT4KUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDQgKystLQog
MSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcG0uYwppbmRleCBjY2JiZGY0YTZhYWIuLjdjZGNhMDZiZTNiZCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wbS5jCkBAIC00MzEyLDggKzQzMTIsOCBAQCBza2xfYWxsb2NhdGVfcGlwZV9k
ZGIoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJCQkJJmNydGNfc3RhdGUt
PndtLnNrbC5vcHRpbWFsLnBsYW5lc1twbGFuZV9pZF07CiAKIAkJCWlmIChwbGFuZV9pZCA9PSBQ
TEFORV9DVVJTT1IpIHsKLQkJCQlpZiAoV0FSTl9PTih3bS0+d21bbGV2ZWxdLm1pbl9kZGJfYWxs
b2MgPgotCQkJCQkgICAgdG90YWxbUExBTkVfQ1VSU09SXSkpIHsKKwkJCQlpZiAod20tPndtW2xl
dmVsXS5taW5fZGRiX2FsbG9jID4gdG90YWxbUExBTkVfQ1VSU09SXSkgeworCQkJCQlXQVJOX09O
KHdtLT53bVtsZXZlbF0ubWluX2RkYl9hbGxvYyAhPSBVMTZfTUFYKTsKIAkJCQkJYmxvY2tzID0g
VTMyX01BWDsKIAkJCQkJYnJlYWs7CiAJCQkJfQotLSAKMi4yMS4wLjUuZ2FlYjU4MmEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
