Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CDD37AB74
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 18:06:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F6D36EA7C;
	Tue, 11 May 2021 16:06:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0EBA6EA81
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 May 2021 16:06:36 +0000 (UTC)
IronPort-SDR: ZI2uj0Mr2V8zd8fPW+xkmP45SmnYrA3frGe+4bMLRaHwHpsxxchGRtyJtwqjCnmPVtbypEMfkF
 kX2MFRE/0IAg==
X-IronPort-AV: E=McAfee;i="6200,9189,9981"; a="179742875"
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="179742875"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2021 09:06:35 -0700
IronPort-SDR: ZHPBaJ/HiuLuMRr3roQePLBx0PROI6zlyrlDCtx++JFBJlSZc9M97JaPzdM2wGD0CsKoBMKesn
 i0uPT3B7IKFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,291,1613462400"; d="scan'208";a="408854676"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 11 May 2021 09:06:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 May 2021 19:06:32 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 May 2021 19:05:32 +0300
Message-Id: <20210511160532.21446-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210511160532.21446-1-ville.syrjala@linux.intel.com>
References: <20210511160532.21446-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/6] drm/i915: Drop redundant has_hdmi_sink check
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
Cc: Werner Sembach <wse@tuxedocomputers.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmlu
dGVsX2hkbWlfYnBjX3Bvc3NpYmxlKCkgd2lsbCBjaGVjayBoYXNfaGRtaV9zaW5rIGZvciB1cywg
c28gbm8KbmVlZCB0byBjaGVjayBpdCBpbiBpbnRlbF9oZG1pX21vZGVfY2xvY2tfdmFsaWQoKSBh
bnltb3JlLgoKQ2M6IFdlcm5lciBTZW1iYWNoIDx3c2VAdHV4ZWRvY29tcHV0ZXJzLmNvbT4KU2ln
bmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyB8IDIyICsr
KysrKysrKystLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCAx
MiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5j
CmluZGV4IDgwZTJhZTY1MmY2ZS4uN2U0ODg5N2JiYWMwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2hkbWkuYwpAQCAtMTkxNCwxOSArMTkxNCwxNyBAQCBpbnRlbF9oZG1p
X21vZGVfY2xvY2tfdmFsaWQoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwgaW50IGNs
b2NrLAogCXN0YXR1cyA9IGhkbWlfcG9ydF9jbG9ja192YWxpZChoZG1pLCBpbnRlbF9oZG1pX3Bv
cnRfY2xvY2soY2xvY2ssIDgpLAogCQkJCSAgICAgICB0cnVlLCBoYXNfaGRtaV9zaW5rKTsKIAot
CWlmIChoYXNfaGRtaV9zaW5rKSB7Ci0JCS8qIGlmIHdlIGNhbid0IGRvIDhicGMgd2UgbWF5IHN0
aWxsIGJlIGFibGUgdG8gZG8gMTJicGMgKi8KLQkJaWYgKHN0YXR1cyAhPSBNT0RFX09LICYmCi0J
CSAgICBpbnRlbF9oZG1pX2JwY19wb3NzaWJsZShjb25uZWN0b3IsIDEyLCBoYXNfaGRtaV9zaW5r
LCB5Y2JjcjQyMF9vdXRwdXQpKQotCQkJc3RhdHVzID0gaGRtaV9wb3J0X2Nsb2NrX3ZhbGlkKGhk
bWksIGludGVsX2hkbWlfcG9ydF9jbG9jayhjbG9jaywgMTIpLAotCQkJCQkJICAgICAgIHRydWUs
IGhhc19oZG1pX3NpbmspOworCS8qIGlmIHdlIGNhbid0IGRvIDhicGMgd2UgbWF5IHN0aWxsIGJl
IGFibGUgdG8gZG8gMTJicGMgKi8KKwlpZiAoc3RhdHVzICE9IE1PREVfT0sgJiYKKwkgICAgaW50
ZWxfaGRtaV9icGNfcG9zc2libGUoY29ubmVjdG9yLCAxMiwgaGFzX2hkbWlfc2luaywgeWNiY3I0
MjBfb3V0cHV0KSkKKwkJc3RhdHVzID0gaGRtaV9wb3J0X2Nsb2NrX3ZhbGlkKGhkbWksIGludGVs
X2hkbWlfcG9ydF9jbG9jayhjbG9jaywgMTIpLAorCQkJCQkgICAgICAgdHJ1ZSwgaGFzX2hkbWlf
c2luayk7CiAKLQkJLyogaWYgd2UgY2FuJ3QgZG8gOCwxMmJwYyB3ZSBtYXkgc3RpbGwgYmUgYWJs
ZSB0byBkbyAxMGJwYyAqLwotCQlpZiAoc3RhdHVzICE9IE1PREVfT0sgJiYKLQkJICAgIGludGVs
X2hkbWlfYnBjX3Bvc3NpYmxlKGNvbm5lY3RvciwgMTAsIGhhc19oZG1pX3NpbmssIHljYmNyNDIw
X291dHB1dCkpCi0JCQlzdGF0dXMgPSBoZG1pX3BvcnRfY2xvY2tfdmFsaWQoaGRtaSwgaW50ZWxf
aGRtaV9wb3J0X2Nsb2NrKGNsb2NrLCAxMCksCi0JCQkJCQkgICAgICAgdHJ1ZSwgaGFzX2hkbWlf
c2luayk7Ci0JfQorCS8qIGlmIHdlIGNhbid0IGRvIDgsMTJicGMgd2UgbWF5IHN0aWxsIGJlIGFi
bGUgdG8gZG8gMTBicGMgKi8KKwlpZiAoc3RhdHVzICE9IE1PREVfT0sgJiYKKwkgICAgaW50ZWxf
aGRtaV9icGNfcG9zc2libGUoY29ubmVjdG9yLCAxMCwgaGFzX2hkbWlfc2luaywgeWNiY3I0MjBf
b3V0cHV0KSkKKwkJc3RhdHVzID0gaGRtaV9wb3J0X2Nsb2NrX3ZhbGlkKGhkbWksIGludGVsX2hk
bWlfcG9ydF9jbG9jayhjbG9jaywgMTApLAorCQkJCQkgICAgICAgdHJ1ZSwgaGFzX2hkbWlfc2lu
ayk7CiAKIAlyZXR1cm4gc3RhdHVzOwogfQotLSAKMi4yNi4zCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
