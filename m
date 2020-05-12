Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC1241CFC6A
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2020 19:42:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 026D76E94C;
	Tue, 12 May 2020 17:42:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EC916E94C
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 May 2020 17:42:06 +0000 (UTC)
IronPort-SDR: QctSa6FGf26NWe4k3qpSYb0vNW27otPfpbS8Lwm1WZGsnXjDRy+OxycsFC00q86rDQ+olFVusT
 iE6yy0R3t+QQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2020 10:42:05 -0700
IronPort-SDR: UEpYvZ3mxaa5fJ+WJryptsSAJgj4kyjdrkgUE2Hb+82JshebOZSNlBUgK6kBW11hF222gjFCM8
 f5VseZXVf+Kg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,384,1583222400"; d="scan'208";a="250969613"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 12 May 2020 10:42:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 12 May 2020 20:42:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 12 May 2020 20:41:44 +0300
Message-Id: <20200512174145.3186-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200512174145.3186-1-ville.syrjala@linux.intel.com>
References: <20200512174145.3186-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/7] drm/i915: Fix DP_TRAIN_MAX_{PRE_EMPHASIS,
 SWING}_REACHED handling
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBEUCBzcGVjIHNheXM6CiJUaGUgdHJhbnNtaXR0ZXIgc2hhbGwgc3VwcG9ydCBhdCBsZWFzdCB0
aHJlZSBsZXZlbHMgb2Ygdm9sdGFnZQogc3dpbmcgKExldmVscyAwLCAxLCBhbmQgMikuCgogSWYg
b25seSB0aHJlZSBsZXZlbHMgb2Ygdm9sdGFnZSBzd2luZyBhcmUgc3VwcG9ydGVkIChWT0xUQUdF
CiBTV0lORyBTRVQgZmllbGQgKGJpdHMgMTowKSBhcmUgcHJvZ3JhbW1lZCB0byAxMCAoTGV2ZWwg
MikpLAogdGhpcyBiaXQgc2hhbGwgYmUgc2V0IHRvIDEsIGFuZCBjbGVhcmVkIGluIGFsbCBvdGhl
ciBjYXNlcy4KCiBJZiBhbGwgZm91ciBsZXZlbHMgb2Ygdm9sdGFnZSBzd2luZyBhcmUgc3VwcG9y
dGVkIChWT0xUQUdFCiBTV0lORyBTRVQgZmllbGQgKGJpdHMgMTowKSBhcmUgcHJvZ3JhbW1lZCB0
byAxMSAoTGV2ZWwgMykpLAogdGhpcyBiaXQgc2hhbGwgYmUgc2V0IHRvIDEsYW5kIGNsZWFyZWQg
aW4gYWxsIG90aGVyIGNhc2VzLiIKCkxldCdzIGZvbGxvdyB0aGF0IGV4YWN0bHkgaW5zdGVhZCBv
ZiB0aGUgY3VycmVudCBhcHBvcmFjaAp3aGVyZSB3ZSBjYW4gc2V0IHRob3NlIGFsc28gZm9yIHZz
d2luZy9wcmVlbXBoIGxldmVscyAwIG9yIDEKKG9yIDIgd2hlbiB0aGUgcGxhdGZvcm0gbWF4IGlz
IDMpLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xp
bmtfdHJhaW5pbmcuYyB8IDUgKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYwppbmRleCA1NzNmOTM3Nzk0NDkuLmFhN2FmNTMxYmNi
OCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5r
X3RyYWluaW5nLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9s
aW5rX3RyYWluaW5nLmMKQEAgLTcyLDggKzcyLDkgQEAgdm9pZCBpbnRlbF9kcF9nZXRfYWRqdXN0
X3RyYWluKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiAJaWYgKHAgPj0gcHJlZW1waF9tYXgp
CiAJCXAgPSBwcmVlbXBoX21heCB8IERQX1RSQUlOX01BWF9QUkVfRU1QSEFTSVNfUkVBQ0hFRDsK
IAotCXZvbHRhZ2VfbWF4ID0gbWluKGludGVsX2RwLT52b2x0YWdlX21heChpbnRlbF9kcCksCi0J
CQkgIGRwX3ZvbHRhZ2VfbWF4KHApKTsKKwl2ID0gbWluKHYsIGRwX3ZvbHRhZ2VfbWF4KHApKTsK
KworCXZvbHRhZ2VfbWF4ID0gaW50ZWxfZHAtPnZvbHRhZ2VfbWF4KGludGVsX2RwKTsKIAlpZiAo
diA+PSB2b2x0YWdlX21heCkKIAkJdiA9IHZvbHRhZ2VfbWF4IHwgRFBfVFJBSU5fTUFYX1NXSU5H
X1JFQUNIRUQ7CiAKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
