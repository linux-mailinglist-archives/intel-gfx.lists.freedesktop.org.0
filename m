Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FBD11858B
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2019 11:51:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D07F76E8AD;
	Tue, 10 Dec 2019 10:51:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41FEB6E8AD
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2019 10:51:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 02:51:35 -0800
X-IronPort-AV: E=Sophos;i="5.69,299,1571727600"; d="scan'208";a="215533456"
Received: from rmoran-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.35.46])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Dec 2019 02:51:33 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 10 Dec 2019 12:50:49 +0200
Message-Id: <3dd689688a51daff26088eaf6feac27f8b9f5ebc.1575974743.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1575974743.git.jani.nikula@intel.com>
References: <cover.1575974743.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [v4.1 05/16] drm/i915/dsc: move slice height
 calculation to encoder
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

VHVybnMgb3V0IHRoaXMgaXNuJ3QgY29tcGF0aWJsZSB3aXRoIERTSSwgd2hlcmUgd2UgdXNlIHRo
ZSB2YWx1ZSBmcm9tClZCVC4gTm8gZnVuY3Rpb25hbCBjaGFuZ2VzLgoKQ2M6IE1hbmFzaSBOYXZh
cmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+CkNjOiBWYW5kaXRhIEt1bGthcm5pIDx2YW5k
aXRhLmt1bGthcm5pQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRh
Lmt1bGthcm5pQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlr
dWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmMgICB8IDEyICsrKysrKysrKysrKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF92ZHNjLmMgfCAxMSAtLS0tLS0tLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCAxMiBpbnNlcnRpb25z
KCspLCAxMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmMKaW5kZXggNmY3ZDE1YjVjZGZhLi5mN2U2MThlYzZmYTMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMKQEAgLTIwNjAsNiArMjA2MCwxOCBAQCBzdGF0aWMgaW50IGlu
dGVsX2RwX2RzY19jb21wdXRlX3BhcmFtcyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwK
IAlpZiAocmV0KQogCQlyZXR1cm4gcmV0OwogCisJLyoKKwkgKiBTbGljZSBIZWlnaHQgb2YgOCB3
b3JrcyBmb3IgYWxsIGN1cnJlbnRseSBhdmFpbGFibGUgcGFuZWxzLiBTbyBzdGFydAorCSAqIHdp
dGggdGhhdCBpZiBwaWNfaGVpZ2h0IGlzIGFuIGludGVncmFsIG11bHRpcGxlIG9mIDguIEV2ZW50
dWFsbHkgYWRkCisJICogbG9naWMgdG8gdHJ5IG11bHRpcGxlIHNsaWNlIGhlaWdodHMuCisJICov
CisJaWYgKHZkc2NfY2ZnLT5waWNfaGVpZ2h0ICUgOCA9PSAwKQorCQl2ZHNjX2NmZy0+c2xpY2Vf
aGVpZ2h0ID0gODsKKwllbHNlIGlmICh2ZHNjX2NmZy0+cGljX2hlaWdodCAlIDQgPT0gMCkKKwkJ
dmRzY19jZmctPnNsaWNlX2hlaWdodCA9IDQ7CisJZWxzZQorCQl2ZHNjX2NmZy0+c2xpY2VfaGVp
Z2h0ID0gMjsKKwogCXZkc2NfY2ZnLT5kc2NfdmVyc2lvbl9tYWpvciA9CiAJCShpbnRlbF9kcC0+
ZHNjX2RwY2RbRFBfRFNDX1JFViAtIERQX0RTQ19TVVBQT1JUXSAmCiAJCSBEUF9EU0NfTUFKT1Jf
TUFTSykgPj4gRFBfRFNDX01BSk9SX1NISUZUOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Zkc2MuYwppbmRleCA4MzRkNjY1YTQ3ZDIuLmM1MzAyNGRmYjFlYyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92ZHNjLmMKQEAgLTM0NSwxNyArMzQ1LDYgQEAg
aW50IGludGVsX2RzY19jb21wdXRlX3BhcmFtcyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rl
ciwKIAl2ZHNjX2NmZy0+cGljX2hlaWdodCA9IHBpcGVfY29uZmlnLT5ody5hZGp1c3RlZF9tb2Rl
LmNydGNfdmRpc3BsYXk7CiAJdmRzY19jZmctPnNsaWNlX3dpZHRoID0gRElWX1JPVU5EX1VQKHZk
c2NfY2ZnLT5waWNfd2lkdGgsCiAJCQkJCSAgICAgcGlwZV9jb25maWctPmRzYy5zbGljZV9jb3Vu
dCk7Ci0JLyoKLQkgKiBTbGljZSBIZWlnaHQgb2YgOCB3b3JrcyBmb3IgYWxsIGN1cnJlbnRseSBh
dmFpbGFibGUgcGFuZWxzLiBTbyBzdGFydAotCSAqIHdpdGggdGhhdCBpZiBwaWNfaGVpZ2h0IGlz
IGFuIGludGVncmFsIG11bHRpcGxlIG9mIDguCi0JICogRXZlbnR1YWxseSBhZGQgbG9naWMgdG8g
dHJ5IG11bHRpcGxlIHNsaWNlIGhlaWdodHMuCi0JICovCi0JaWYgKHZkc2NfY2ZnLT5waWNfaGVp
Z2h0ICUgOCA9PSAwKQotCQl2ZHNjX2NmZy0+c2xpY2VfaGVpZ2h0ID0gODsKLQllbHNlIGlmICh2
ZHNjX2NmZy0+cGljX2hlaWdodCAlIDQgPT0gMCkKLQkJdmRzY19jZmctPnNsaWNlX2hlaWdodCA9
IDQ7Ci0JZWxzZQotCQl2ZHNjX2NmZy0+c2xpY2VfaGVpZ2h0ID0gMjsKIAogCS8qIEdlbiAxMSBk
b2VzIG5vdCBzdXBwb3J0IFlDYkNyICovCiAJdmRzY19jZmctPnNpbXBsZV80MjIgPSBmYWxzZTsK
LS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
