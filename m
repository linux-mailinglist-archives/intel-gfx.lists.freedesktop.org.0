Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5018E14BD48
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2020 16:52:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CD416EE91;
	Tue, 28 Jan 2020 15:52:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 940A26EE91
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2020 15:52:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Jan 2020 07:52:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,374,1574150400"; d="scan'208";a="217645751"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 28 Jan 2020 07:52:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Jan 2020 17:52:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Jan 2020 17:51:52 +0200
Message-Id: <20200128155152.21977-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200128155152.21977-1-ville.syrjala@linux.intel.com>
References: <20200128155152.21977-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915: Add glk to
 intel_detect_preproduction_hw()
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkRl
dGVjdCBHTEsgcHJlLXByb2R1Y3Rpb24gc3RlcHBpbmdzLiBOb3QgMTAwJSBvZiBBMiBiZWluZyBw
cmUtcHJvZApzaW5jZSB0aGUgc3BlYyBpcyBhIGJpdCBvZiBhIG1lc3MgYnV0IGZlZWxzIG1vcmUg
b3IgbGVzcyBjb3JyZWN0LgoKU3VnZ2VzdGVkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5j
IHwgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIHwgMiArKwogMiBmaWxlcyBj
aGFuZ2VkLCAzIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwppbmRleCA1YTU4
NDZkODkyZjQuLmQ4OWQ1NGY1NTkzYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCkBAIC00Mzgs
NiArNDM4LDcgQEAgc3RhdGljIHZvaWQgaW50ZWxfZGV0ZWN0X3ByZXByb2R1Y3Rpb25faHcoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCXByZSB8PSBJU19TS0xfUkVWSUQoZGV2
X3ByaXYsIDAsIFNLTF9SRVZJRF9GMCk7CiAJcHJlIHw9IElTX0JYVF9SRVZJRChkZXZfcHJpdiwg
MCwgQlhUX1JFVklEX0JfTEFTVCk7CiAJcHJlIHw9IElTX0tCTF9SRVZJRChkZXZfcHJpdiwgMCwg
S0JMX1JFVklEX0EwKTsKKwlwcmUgfD0gSVNfR0xLX1JFVklEKGRldl9wcml2LCAwLCBHTEtfUkVW
SURfQTIpOwogCiAJaWYgKHByZSkgewogCQlEUk1fRVJST1IoIlRoaXMgaXMgYSBwcmUtcHJvZHVj
dGlvbiBzdGVwcGluZy4gIgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggYThhMDhjNjMyNzhl
Li5kNjJiNTdiYTBjZWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtMTU3OCw2ICsxNTc4
LDggQEAgSVNfU1VCUExBVEZPUk0oY29uc3Qgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUs
CiAKICNkZWZpbmUgR0xLX1JFVklEX0EwCQkweDAKICNkZWZpbmUgR0xLX1JFVklEX0ExCQkweDEK
KyNkZWZpbmUgR0xLX1JFVklEX0EyCQkweDIKKyNkZWZpbmUgR0xLX1JFVklEX0IwCQkweDMKIAog
I2RlZmluZSBJU19HTEtfUkVWSUQoZGV2X3ByaXYsIHNpbmNlLCB1bnRpbCkgXAogCShJU19HRU1J
TklMQUtFKGRldl9wcml2KSAmJiBJU19SRVZJRChkZXZfcHJpdiwgc2luY2UsIHVudGlsKSkKLS0g
CjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
