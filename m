Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 027CD117102
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 17:02:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9DFA6E0CC;
	Mon,  9 Dec 2019 16:02:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43C1E6E0CC
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 16:02:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 08:02:22 -0800
X-IronPort-AV: E=Sophos;i="5.69,296,1571727600"; d="scan'208";a="202871688"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 08:02:18 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 Dec 2019 18:01:54 +0200
Message-Id: <73aabb897030b6014215498902a200cb7585be0a.1575907078.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1575907078.git.jani.nikula@intel.com>
References: <cover.1575907078.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v4 01/15] drm/i915/bios: pass devdata to
 parse_ddi_port
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

QWxsb3cgYWNjZXNzaW5nIHRoZSBwYXJlbnQgc3RydWN0dXJlIGxhdGVyIG9uLiBEcm9wIGNvbnN0
IGZvciBhbGxvd2luZwpmdXR1cmUgbW9kaWZpY2F0aW9uIGFzIHdlbGwuCgpDYzogVmFuZGl0YSBL
dWxrYXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVmFuZGl0YSBLdWxr
YXJuaSA8dmFuZGl0YS5rdWxrYXJuaUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEphbmkgTmlr
dWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9iaW9zLmMgfCA3ICsrKystLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlv
bnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9iaW9zLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Jpb3MuYwppbmRleCAxYWVlY2RkMDIyOTMuLjMwN2UzNDdjNGExNyAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMKQEAgLTE1NTQsOSArMTU1NCwxMCBAQCBzdGF0
aWMgZW51bSBwb3J0IGR2b19wb3J0X3RvX3BvcnQodTggZHZvX3BvcnQpCiB9CiAKIHN0YXRpYyB2
b2lkIHBhcnNlX2RkaV9wb3J0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKLQkJ
CSAgIGNvbnN0IHN0cnVjdCBjaGlsZF9kZXZpY2VfY29uZmlnICpjaGlsZCwKKwkJCSAgIHN0cnVj
dCBkaXNwbGF5X2RldmljZV9kYXRhICpkZXZkYXRhLAogCQkJICAgdTggYmRiX3ZlcnNpb24pCiB7
CisJY29uc3Qgc3RydWN0IGNoaWxkX2RldmljZV9jb25maWcgKmNoaWxkID0gJmRldmRhdGEtPmNo
aWxkOwogCXN0cnVjdCBkZGlfdmJ0X3BvcnRfaW5mbyAqaW5mbzsKIAlib29sIGlzX2R2aSwgaXNf
aGRtaSwgaXNfZHAsIGlzX2VkcCwgaXNfY3J0OwogCWVudW0gcG9ydCBwb3J0OwpAQCAtMTcwOCw3
ICsxNzA5LDcgQEAgc3RhdGljIHZvaWQgcGFyc2VfZGRpX3BvcnQoc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2LAogCiBzdGF0aWMgdm9pZCBwYXJzZV9kZGlfcG9ydHMoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1OCBiZGJfdmVyc2lvbikKIHsKLQljb25zdCBzdHJ1
Y3QgZGlzcGxheV9kZXZpY2VfZGF0YSAqZGV2ZGF0YTsKKwlzdHJ1Y3QgZGlzcGxheV9kZXZpY2Vf
ZGF0YSAqZGV2ZGF0YTsKIAogCWlmICghSEFTX0RESShkZXZfcHJpdikgJiYgIUlTX0NIRVJSWVZJ
RVcoZGV2X3ByaXYpKQogCQlyZXR1cm47CkBAIC0xNzE3LDcgKzE3MTgsNyBAQCBzdGF0aWMgdm9p
ZCBwYXJzZV9kZGlfcG9ydHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1OCBi
ZGJfdmVyc2lvbikKIAkJcmV0dXJuOwogCiAJbGlzdF9mb3JfZWFjaF9lbnRyeShkZXZkYXRhLCAm
ZGV2X3ByaXYtPnZidC5kaXNwbGF5X2RldmljZXMsIG5vZGUpCi0JCXBhcnNlX2RkaV9wb3J0KGRl
dl9wcml2LCAmZGV2ZGF0YS0+Y2hpbGQsIGJkYl92ZXJzaW9uKTsKKwkJcGFyc2VfZGRpX3BvcnQo
ZGV2X3ByaXYsIGRldmRhdGEsIGJkYl92ZXJzaW9uKTsKIH0KIAogc3RhdGljIHZvaWQKLS0gCjIu
MjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
