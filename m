Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB691118584
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 11:51:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 363DC6E8A7;
	Tue, 10 Dec 2019 10:51:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FCBE6E8A7
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 10:51:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 02:51:12 -0800
X-IronPort-AV: E=Sophos;i="5.69,299,1571727600"; d="scan'208";a="207242156"
Received: from rmoran-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.35.46])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 02:51:10 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Dec 2019 12:50:45 +0200
Message-Id: <3318b09aaccbbe141e233ca510d581b421259a2a.1575974743.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1575974743.git.jani.nikula@intel.com>
References: <cover.1575974743.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [v4.1 01/16] drm/i915/bios: pass devdata to
 parse_ddi_port
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
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
