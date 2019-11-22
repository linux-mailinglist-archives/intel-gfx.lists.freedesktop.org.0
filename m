Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97DDC106FBA
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2019 12:17:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB2AB6F524;
	Fri, 22 Nov 2019 11:17:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B7736F526
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2019 11:17:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Nov 2019 03:17:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,229,1571727600"; d="scan'208";a="201480868"
Received: from slisovsk-lenovo-ideapad-720s-13ikb.fi.intel.com ([10.237.72.89])
 by orsmga008.jf.intel.com with ESMTP; 22 Nov 2019 03:17:39 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 22 Nov 2019 13:15:14 +0200
Message-Id: <20191122111514.22181-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH v1] drm/i915: Support more QGV points
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
Cc: tomi.p.sarvela@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWNjb3JkaW5nIHRvIEJTcGVjIDUzOTk4LCB0aGVyZSBpcyBhIG1hc2sgb2YKbWF4IDggU0FHVi9R
R1YgcG9pbnRzIHdlIG5lZWQgdG8gc3VwcG9ydC4KCkJ1bXBpbmcgdGhpcyB1cCB0byBrZWVwIHRo
ZSBDSSBoYXBweShjdXJyZW50bHkKcHJldmVudGluZyB0ZXN0cyB0byBydW4pLCB1bnRpbCBhbGwg
U0FHVgpjaGFuZ2VzIGxhbmQuCgpGaXhlczogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9MTEyMTg5ClNpZ25lZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkg
PHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYncuYyB8IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmggICAgICAgICB8IDQgKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2J3LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMKaW5kZXgg
ODZlNzVlODU4MDA4Li5lYzRjMTI3YTQwYjYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYncuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2J3LmMKQEAgLTE1LDcgKzE1LDcgQEAgc3RydWN0IGludGVsX3Fndl9wb2ludCB7CiB9
OwogCiBzdHJ1Y3QgaW50ZWxfcWd2X2luZm8gewotCXN0cnVjdCBpbnRlbF9xZ3ZfcG9pbnQgcG9p
bnRzWzNdOworCXN0cnVjdCBpbnRlbF9xZ3ZfcG9pbnQgcG9pbnRzW0k5MTVfTlVNX1NBR1ZfUE9J
TlRTXTsKIAl1OCBudW1fcG9pbnRzOwogCXU4IG51bV9jaGFubmVsczsKIAl1OCB0X2JsOwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggZmRhZTVhOTE5YmM4Li5iZDhjZTM0MWJlMjIgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtNjIxLDYgKzYyMSwxMCBAQCBzdHJ1Y3QgaTkxNV9nZW1f
bW0gewogCiAjZGVmaW5lIEk5MTVfRU5HSU5FX1dFREdFRF9USU1FT1VUICAoNjAgKiBIWikgIC8q
IFJlc2V0IGJ1dCBubyByZWNvdmVyeT8gKi8KIAorLyogQlNwZWMgcHJlY2lzZWx5IGRlZmluZXMg
dGhpcyAqLworI2RlZmluZSBJOTE1X05VTV9TQUdWX1BPSU5UUyA4CisKKwogc3RydWN0IGRkaV92
YnRfcG9ydF9pbmZvIHsKIAkvKiBOb24tTlVMTCBpZiBwb3J0IHByZXNlbnQuICovCiAJY29uc3Qg
c3RydWN0IGNoaWxkX2RldmljZV9jb25maWcgKmNoaWxkOwotLSAKMi4xNy4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
