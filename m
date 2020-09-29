Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D0127DCBD
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 01:35:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18AC46E428;
	Tue, 29 Sep 2020 23:35:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB5636E428
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Sep 2020 23:35:08 +0000 (UTC)
IronPort-SDR: fIzk5Gbl/cE6kd27ZERGDz1kRpVH/fJSTSv1raSsjjwIbxyme6ZqJwi1yK8ZX0VpZc1/aUdYnP
 u4y/bBjR645A==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="159651548"
X-IronPort-AV: E=Sophos;i="5.77,320,1596524400"; d="scan'208";a="159651548"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 16:35:08 -0700
IronPort-SDR: snuWk5Ec4opWfKUM5t3iNRuS5vBxIS9n9ZphyrV0d+atOpCMPrgTNXQ2J8G2iE+yryrSSvMMc3
 zC5iow7rV1Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,320,1596524400"; d="scan'208";a="384948790"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 29 Sep 2020 16:35:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 30 Sep 2020 02:35:05 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Sep 2020 02:34:44 +0300
Message-Id: <20200929233449.32323-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200929233449.32323-1-ville.syrjala@linux.intel.com>
References: <20200929233449.32323-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 06/11] drm/i915: Split ICL MG PHY buf trans
 per output type
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1h
a2UgdGhlIG1lc3MgaW5zaWRlIHRoZSBidWYgdHJhbnMgZnVuY3MgYSBiaXQgbW9yZSBtYW5hZ2Vh
YmxlIGJ5CnNwbGl0dGluZyBhbG9uZyB0aGUgbGluZXMgb2Ygb3V0cHV0IHR5cGUuCgpTaWduZWQt
b2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgfCAzMSArKysrKysr
KysrKysrKysrKystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspLCA4IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCmluZGV4
IDRjMzQxNmQ4OWYzMC4uZTNjNmQ0OTQyYjY4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMKQEAgLTEwNzksMTkgKzEwNzksMzQgQEAgaWNsX2dldF9jb21ib19idWZf
dHJhbnMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsIGludCB0eXBlLCBpbnQgcmF0ZSwK
IH0KIAogc3RhdGljIGNvbnN0IHN0cnVjdCBpY2xfbWdfcGh5X2RkaV9idWZfdHJhbnMgKgotaWNs
X2dldF9tZ19idWZfdHJhbnMoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsIGludCB0eXBl
LCBpbnQgcmF0ZSwKLQkJICAgICBpbnQgKm5fZW50cmllcykKK2ljbF9nZXRfbWdfYnVmX3RyYW5z
X2hkbWkoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsIGludCB0eXBlLCBpbnQgcmF0ZSwK
KwkJCSAgaW50ICpuX2VudHJpZXMpCiB7Ci0JaWYgKHR5cGUgPT0gSU5URUxfT1VUUFVUX0hETUkp
IHsKLQkJKm5fZW50cmllcyA9IEFSUkFZX1NJWkUoaWNsX21nX3BoeV9kZGlfdHJhbnNsYXRpb25z
X2hkbWkpOwotCQlyZXR1cm4gaWNsX21nX3BoeV9kZGlfdHJhbnNsYXRpb25zX2hkbWk7Ci0JfSBl
bHNlIGlmIChyYXRlID4gMjcwMDAwKSB7CisJKm5fZW50cmllcyA9IEFSUkFZX1NJWkUoaWNsX21n
X3BoeV9kZGlfdHJhbnNsYXRpb25zX2hkbWkpOworCXJldHVybiBpY2xfbWdfcGh5X2RkaV90cmFu
c2xhdGlvbnNfaGRtaTsKK30KKworc3RhdGljIGNvbnN0IHN0cnVjdCBpY2xfbWdfcGh5X2RkaV9i
dWZfdHJhbnMgKgoraWNsX2dldF9tZ19idWZfdHJhbnNfZHAoc3RydWN0IGludGVsX2VuY29kZXIg
KmVuY29kZXIsIGludCB0eXBlLCBpbnQgcmF0ZSwKKwkJCWludCAqbl9lbnRyaWVzKQoreworCWlm
IChyYXRlID4gMjcwMDAwKSB7CiAJCSpuX2VudHJpZXMgPSBBUlJBWV9TSVpFKGljbF9tZ19waHlf
ZGRpX3RyYW5zbGF0aW9uc19oYnIyX2hicjMpOwogCQlyZXR1cm4gaWNsX21nX3BoeV9kZGlfdHJh
bnNsYXRpb25zX2hicjJfaGJyMzsKKwl9IGVsc2UgeworCQkqbl9lbnRyaWVzID0gQVJSQVlfU0la
RShpY2xfbWdfcGh5X2RkaV90cmFuc2xhdGlvbnNfcmJyX2hicik7CisJCXJldHVybiBpY2xfbWdf
cGh5X2RkaV90cmFuc2xhdGlvbnNfcmJyX2hicjsKIAl9Cit9CiAKLQkqbl9lbnRyaWVzID0gQVJS
QVlfU0laRShpY2xfbWdfcGh5X2RkaV90cmFuc2xhdGlvbnNfcmJyX2hicik7Ci0JcmV0dXJuIGlj
bF9tZ19waHlfZGRpX3RyYW5zbGF0aW9uc19yYnJfaGJyOworc3RhdGljIGNvbnN0IHN0cnVjdCBp
Y2xfbWdfcGh5X2RkaV9idWZfdHJhbnMgKgoraWNsX2dldF9tZ19idWZfdHJhbnMoc3RydWN0IGlu
dGVsX2VuY29kZXIgKmVuY29kZXIsIGludCB0eXBlLCBpbnQgcmF0ZSwKKwkJICAgICBpbnQgKm5f
ZW50cmllcykKK3sKKwlpZiAodHlwZSA9PSBJTlRFTF9PVVRQVVRfSERNSSkKKwkJcmV0dXJuIGlj
bF9nZXRfbWdfYnVmX3RyYW5zX2hkbWkoZW5jb2RlciwgdHlwZSwgcmF0ZSwgbl9lbnRyaWVzKTsK
KwllbHNlCisJCXJldHVybiBpY2xfZ2V0X21nX2J1Zl90cmFuc19kcChlbmNvZGVyLCB0eXBlLCBy
YXRlLCBuX2VudHJpZXMpOwogfQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IGNubF9kZGlfYnVmX3Ry
YW5zICoKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
