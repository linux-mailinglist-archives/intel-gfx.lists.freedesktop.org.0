Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF55310509
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Feb 2021 07:43:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 683E86E1A7;
	Fri,  5 Feb 2021 06:43:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DD5A6E1A7
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Feb 2021 06:43:46 +0000 (UTC)
IronPort-SDR: q4QNE6R2W+XcS+8R580T/dytG257r2l10UE76hPxt2hyi2zfV90EpXDSIV4x3BKn9QPF+PRy0B
 gQNemlX9DG6g==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="168503475"
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; d="scan'208";a="168503475"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 22:43:45 -0800
IronPort-SDR: Ru1J38xmlFJJNnHdL2LL8oGWV1Yhfj6e9fa5RkjSdHTdmZr8jsnLSnafp3xKvkl2sOo+vddZ1B
 WLkyAOUQ66rQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,154,1610438400"; d="scan'208";a="508439326"
Received: from kialmah1-desk.jf.intel.com ([10.23.15.164])
 by orsmga004.jf.intel.com with ESMTP; 04 Feb 2021 22:43:44 -0800
From: Khaled Almahallawy <khaled.almahallawy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 Feb 2021 22:45:31 -0800
Message-Id: <20210205064531.3158292-1-khaled.almahallawy@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Add link rate and lane count to
 i915_display_info
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

TGluayByYXRlIGFuZCBsYW5lIGNvdW50IGluZm9ybWF0aW9uIGFyZSBtb3JlIGVhc2llciBhbmQg
ZmFzdGVyIHRvIGNoZWNrIGluIGk5MTVfZGlzcGxheV9pbmZvCnRoYW4gY2hlY2tpbmcga2VybmVs
IGxvZ3MgZm9yIHBlb3BsZSBub3QgZmFtaWxpYXIgd2l0aCBpOTE1IGluIHRoZSBmb2xsb3dpbmcg
c2NlbmFyaW9zOgoqIERlYnVnZ2luZyBEUCB0dW5uZWwgYmFuZHdpZHRoIHVzYWdlIGluIFRodW5k
ZXJib2x0IGRyaXZlci4KKiBJbiBVU0I0IGNlcnRpZmljYXRpb24sIGl0IGlzIGEgcmVxdWlyZW1l
bnQgdG8ga25vdyB3aGljaCBsaW5rIHJhdGUgdXNlZCBieQogIG1vbml0b3IgdG8gcHJvdmUgdGhh
dCBEUCB0dW5uZWwgaGFuZGxlIHVwIHRvIEhCUjMKKiBJbiBQSFkgQ29tcGxpYW5jZSwgd2hlbiB0
aGUgY29ubmVjdG9yIHByb3BlcyBhcmUgbm90IG1vdW50ZWQgY29ycmVjdGx5LAogIHNvbWUgZGlz
cGxheSBsYW5lcyB3aWxsIG5vdCBzaG93IHVwIGluIHRoZSBEUCBPc2NpbGxvc2NvcGUgYW5kIHdp
bGwgZmFpbCBDVFMuCiAgSnVzdCBnaXZlIHRoZSB0ZXN0ZXIgYW4gZWFzeSB3YXkgdG8gaWRlbnRp
Znkgd2hlcmUgdGhlIHByb2JsZW0gaXMuCgpDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwu
Y29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4K
Q0M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpTaWduZWQt
b2ZmLWJ5OiBLaGFsZWQgQWxtYWhhbGxhd3kgPGtoYWxlZC5hbG1haGFsbGF3eUBpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMu
YyB8IDUgKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9kZWJ1Z2ZzLmMKaW5kZXggZDYyYjE4ZDVlY2Q4Li5jNjE2MWMxZTg3ZTkgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnMuYwpA
QCAtOTkwLDkgKzk5MCwxMCBAQCBzdGF0aWMgdm9pZCBpbnRlbF9jcnRjX2luZm8oc3RydWN0IHNl
cV9maWxlICptLCBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIAkJCSAgIHllc25vKGNydGNfc3Rh
dGUtPmh3LmFjdGl2ZSksCiAJCQkgICBEUk1fTU9ERV9BUkcoJmNydGNfc3RhdGUtPmh3LmFkanVz
dGVkX21vZGUpKTsKIAotCQlzZXFfcHJpbnRmKG0sICJcdHBpcGUgc3JjIHNpemU9JWR4JWQsIGRp
dGhlcj0lcywgYnBwPSVkXG4iLAorCQlzZXFfcHJpbnRmKG0sICJcdHBpcGUgc3JjIHNpemU9JWR4
JWQsIGRpdGhlcj0lcywgYnBwPSVkLCBsaW5rIHJhdGUgPSAlZCwgbGFuZSBjb3VudCA9ICVkXG4i
LAogCQkJICAgY3J0Y19zdGF0ZS0+cGlwZV9zcmNfdywgY3J0Y19zdGF0ZS0+cGlwZV9zcmNfaCwK
LQkJCSAgIHllc25vKGNydGNfc3RhdGUtPmRpdGhlciksIGNydGNfc3RhdGUtPnBpcGVfYnBwKTsK
KwkJCSAgIHllc25vKGNydGNfc3RhdGUtPmRpdGhlciksIGNydGNfc3RhdGUtPnBpcGVfYnBwLAor
CQkJICAgY3J0Y19zdGF0ZS0+cG9ydF9jbG9jaywgY3J0Y19zdGF0ZS0+bGFuZV9jb3VudCk7CiAK
IAkJaW50ZWxfc2NhbGVyX2luZm8obSwgY3J0Yyk7CiAJfQotLSAKMi4yNS4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
