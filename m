Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51F0A647D3
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 16:13:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1F726E0E1;
	Wed, 10 Jul 2019 14:13:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A09F6E0E1
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 14:13:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 07:13:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,474,1557212400"; d="scan'208";a="156514170"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com
 ([10.237.66.154])
 by orsmga007.jf.intel.com with ESMTP; 10 Jul 2019 07:13:34 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 10 Jul 2019 17:12:57 +0300
Message-Id: <20190710141257.1062-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915: Fix wrong escape clock divisor init
 for GLK
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
Cc: jani.nikula@intel.com, martin.peres@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWNjb3JkaW5nIHRvIEJzcGVjIGNsb2NrIGRpdmlzb3IgcmVnaXN0ZXJzIGluIEdlbWluaUxha2UK
c2hvdWxkIGJlIGluaXRpYWxpemVkIGJ5IHNoaWZ0aW5nIDEoPDwpIHRvIGFtb3VudCBvZiBjb3Jy
ZXNwb25kZW50CmRpdmlzb3IuIFdoaWxlIGk5MTUgd2FzIHdyaXRpbmcgYWxsIHRoaXMgdGltZSB0
aGF0IHZhbHVlIGFzIGlzLgoKU3VycHJpc2luZ2x5IHRoYXQgaXQgYnkgYWNjaWRlbnQgd29ya2Vk
LCB1bnRpbCB3ZSBtZXQgc29tZSBpc3N1ZXMKd2l0aCBNaWNyb3RlY2ggRXRhYi4KClNpZ25lZC1v
ZmYtYnk6IFN0YW5pc2xhdi5MaXNvdnNraXlAaW50ZWwuY29tCkJ1Z3ppbGxhOiBodHRwczovL2J1
Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMDg4MjYKLS0tCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L3Zsdl9kc2lfcGxsLmMgfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2Vk
LCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS92bHZfZHNpX3BsbC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS92bHZfZHNpX3BsbC5jCmluZGV4IDk5Y2MzZTJlOWMyYy4uZjAxNmE3NzZhMzllIDEw
MDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Zsdl9kc2lfcGxsLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS92bHZfZHNpX3BsbC5jCkBAIC0zOTYsOCAr
Mzk2LDggQEAgc3RhdGljIHZvaWQgZ2xrX2RzaV9wcm9ncmFtX2VzY19jbG9jayhzdHJ1Y3QgZHJt
X2RldmljZSAqZGV2LAogCWVsc2UKIAkJdHhlc2MyX2RpdiA9IDEwOwogCi0JSTkxNV9XUklURShN
SVBJT19UWEVTQ19DTEtfRElWMSwgdHhlc2MxX2RpdiAmIEdMS19UWF9FU0NfQ0xLX0RJVjFfTUFT
Syk7Ci0JSTkxNV9XUklURShNSVBJT19UWEVTQ19DTEtfRElWMiwgdHhlc2MyX2RpdiAmIEdMS19U
WF9FU0NfQ0xLX0RJVjJfTUFTSyk7CisJSTkxNV9XUklURShNSVBJT19UWEVTQ19DTEtfRElWMSwg
KDEgPDwgKHR4ZXNjMV9kaXYgLSAxKSkgJiBHTEtfVFhfRVNDX0NMS19ESVYxX01BU0spOworCUk5
MTVfV1JJVEUoTUlQSU9fVFhFU0NfQ0xLX0RJVjIsICgxIDw8ICh0eGVzYzJfZGl2IC0gMSkpICYg
R0xLX1RYX0VTQ19DTEtfRElWMl9NQVNLKTsKIH0KIAogLyogUHJvZ3JhbSBCWFQgTWlwaSBjbG9j
a3MgYW5kIGRpdmlkZXJzICovCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
