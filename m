Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F4B184CD5
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2020 17:48:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 778406EC25;
	Fri, 13 Mar 2020 16:48:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF4676EC27
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Mar 2020 16:48:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Mar 2020 09:48:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,549,1574150400"; d="scan'208";a="232474545"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 13 Mar 2020 09:48:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Mar 2020 18:48:41 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Mar 2020 18:48:21 +0200
Message-Id: <20200313164831.5980-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200313164831.5980-1-ville.syrjala@linux.intel.com>
References: <20200313164831.5980-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/13] drm/i915: Drop usless master_transcoder
 assignments
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
ZSBlbnRpcmUgY3J0YyBzdGF0ZSBoYXMgYmVlbiByZXNldCBiZWZvcmUgcmVhZG91dCBzbwptYXN0
ZXJfdHJhbnNjb2RlciBpcyBhbHJlYWR5IHNldCB0byBJTlZBTElELgoKU2lnbmVkLW9mZi1ieTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDIgLS0KIDEgZmlsZSBj
aGFuZ2VkLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKaW5kZXggYzQ5YjRlNmViM2Q0Li4xMjgyM2Q4ZjZhZmUgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCkBAIC05MzY0LDcgKzkz
NjQsNiBAQCBzdGF0aWMgYm9vbCBpOXh4X2dldF9waXBlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YywKIAlwaXBlX2NvbmZpZy0+b3V0cHV0X2Zvcm1hdCA9IElOVEVMX09VVFBVVF9GT1JN
QVRfUkdCOwogCXBpcGVfY29uZmlnLT5jcHVfdHJhbnNjb2RlciA9IChlbnVtIHRyYW5zY29kZXIp
IGNydGMtPnBpcGU7CiAJcGlwZV9jb25maWctPnNoYXJlZF9kcGxsID0gTlVMTDsKLQlwaXBlX2Nv
bmZpZy0+bWFzdGVyX3RyYW5zY29kZXIgPSBJTlZBTElEX1RSQU5TQ09ERVI7CiAKIAlyZXQgPSBm
YWxzZTsKIApAQCAtMTA1ODgsNyArMTA1ODcsNiBAQCBzdGF0aWMgYm9vbCBpbGtfZ2V0X3BpcGVf
Y29uZmlnKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCiAJcGlwZV9jb25maWctPmNwdV90cmFu
c2NvZGVyID0gKGVudW0gdHJhbnNjb2RlcikgY3J0Yy0+cGlwZTsKIAlwaXBlX2NvbmZpZy0+c2hh
cmVkX2RwbGwgPSBOVUxMOwotCXBpcGVfY29uZmlnLT5tYXN0ZXJfdHJhbnNjb2RlciA9IElOVkFM
SURfVFJBTlNDT0RFUjsKIAogCXJldCA9IGZhbHNlOwogCXRtcCA9IGludGVsX2RlX3JlYWQoZGV2
X3ByaXYsIFBJUEVDT05GKGNydGMtPnBpcGUpKTsKLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
