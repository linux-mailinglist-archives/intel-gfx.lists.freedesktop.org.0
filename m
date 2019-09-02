Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0044A5C40
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2019 20:28:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC7C689994;
	Mon,  2 Sep 2019 18:28:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70EC789994
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2019 18:28:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Sep 2019 11:28:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,460,1559545200"; d="scan'208";a="198619377"
Received: from hildebru-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.52.224])
 by fmsmga001.fm.intel.com with ESMTP; 02 Sep 2019 11:28:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Sep 2019 21:29:16 +0300
Message-Id: <20190902182916.17487-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH] drm/i915: add plural() helper for logging
 plurals
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIGEgaGVscGVyIGluc3RlYWQgb2Ygb3BlbiBjb2RpbmcgdGhlIHBsdXJhbHMgaW4gZGVidWcg
bG9ncy4gQWxzbwpmaXhlcyB0aGUgY2FzZSBmb3IgIjAgZGlzcGxheSBwaXBlcyBhdmFpbGFibGUu
IgoKU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KCi0t
LQoKSSBzdHVtYmxlZCB1cG9uIHRoZSBwaXBlcyBvbmUgd2hpbGUgd29ya2luZyBvbiAtPm51bV9w
aXBlcy4gSSBob25lc3RseQp0aG91Z2h0IHdlJ2QgaGF2ZSBtb3JlIHVzZXJzIHRoYW4gdGhpcywg
YnV0IHRvIG15IHN1cnByaXNlIGNvdWxkbid0IGZpbmQKYW55LiBQZXJoYXBzIHRoaXMgaXMgbm90
IHdvcnRoIGl0IGFmdGVyIGFsbC4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyB8IDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuaCAg
ICAgICAgICAgIHwgNSArKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDEg
ZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jCmluZGV4IGU2NjFlMjA5OTExOC4uYzRiZmQ4MGExY2ZhIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTYyMTUsNyArMTYyMTUsNyBAQCBp
bnQgaW50ZWxfbW9kZXNldF9pbml0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiAKIAlEUk1fREVC
VUdfS01TKCIlZCBkaXNwbGF5IHBpcGUlcyBhdmFpbGFibGUuXG4iLAogCQkgICAgICBJTlRFTF9J
TkZPKGRldl9wcml2KS0+bnVtX3BpcGVzLAotCQkgICAgICBJTlRFTF9JTkZPKGRldl9wcml2KS0+
bnVtX3BpcGVzID4gMSA/ICJzIiA6ICIiKTsKKwkJICAgICAgcGx1cmFsKElOVEVMX0lORk8oZGV2
X3ByaXYpLT5udW1fcGlwZXMpKTsKIAogCWZvcl9lYWNoX3BpcGUoZGV2X3ByaXYsIHBpcGUpIHsK
IAkJcmV0ID0gaW50ZWxfY3J0Y19pbml0KGRldl9wcml2LCBwaXBlKTsKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfdXRpbHMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfdXRpbHMuaAppbmRleCA1NjJmNzU2ZGE0MjEuLmRjMzRkZmUxOGExZSAxMDA2NDQKLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV91dGlscy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfdXRpbHMuaApAQCAtNDEwLDYgKzQxMCwxMSBAQCBzdGF0aWMgaW5saW5lIGNvbnN0
IGNoYXIgKmVuYWJsZWRkaXNhYmxlZChib29sIHYpCiAJcmV0dXJuIHYgPyAiZW5hYmxlZCIgOiAi
ZGlzYWJsZWQiOwogfQogCitzdGF0aWMgaW5saW5lIGNvbnN0IGNoYXIgKnBsdXJhbChsb25nIHYp
Cit7CisJcmV0dXJuIHYgPT0gMSA/ICIiIDogInMiOworfQorCiBzdGF0aWMgaW5saW5lIHZvaWQg
YWRkX3RhaW50X2Zvcl9DSSh1bnNpZ25lZCBpbnQgdGFpbnQpCiB7CiAJLyoKLS0gCjIuMjAuMQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
