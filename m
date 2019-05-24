Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E1729D55
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 19:40:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6166E6E137;
	Fri, 24 May 2019 17:40:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92E256E137;
 Fri, 24 May 2019 17:40:34 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 073F08553D;
 Fri, 24 May 2019 17:40:34 +0000 (UTC)
Received: from localhost.localdomain.com (ovpn-112-47.ams2.redhat.com
 [10.36.112.47])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A0D7368730;
 Fri, 24 May 2019 17:40:31 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Daniel Vetter <daniel.vetter@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Fri, 24 May 2019 19:40:27 +0200
Message-Id: <20190524174028.21659-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Fri, 24 May 2019 17:40:34 +0000 (UTC)
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Make intel_fuzzy_clock_check
 available outside of intel_display.c
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIG5leHQgcGF0Y2ggaW4gdGhpcyBzZXJpZXMgdXNlcyBpbnRlbF9mdXp6eV9jbG9ja19jaGVj
ayBmcm9tIHRoZQp2bHZfZHNpLmMgY29kZS4KClNpZ25lZC1vZmYtYnk6IEhhbnMgZGUgR29lZGUg
PGhkZWdvZWRlQHJlZGhhdC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlz
cGxheS5jIHwgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJ2LmggICAgIHwgMSAr
CiAyIGZpbGVzIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYwppbmRleCA1MDk4MjI4ZjEzMDIuLmNlYjc4ZjQ0ZjA4
NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGlzcGxheS5jCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTE5NDIsNyArMTE5NDIs
NyBAQCBpbnRlbF9tb2Rlc2V0X3BpcGVfY29uZmlnKHN0cnVjdCBkcm1fY3J0YyAqY3J0YywKIAly
ZXR1cm4gMDsKIH0KIAotc3RhdGljIGJvb2wgaW50ZWxfZnV6enlfY2xvY2tfY2hlY2soaW50IGNs
b2NrMSwgaW50IGNsb2NrMikKK2Jvb2wgaW50ZWxfZnV6enlfY2xvY2tfY2hlY2soaW50IGNsb2Nr
MSwgaW50IGNsb2NrMikKIHsKIAlpbnQgZGlmZjsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZHJ2LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcnYuaApp
bmRleCBhMzhiOWNmZjVjZDAuLmU4NWNkMzc3YTY1MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHJ2
LmgKQEAgLTE3NDIsNiArMTc0Miw3IEBAIGludCB2bHZfZm9yY2VfcGxsX29uKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwaXBlIHBpcGUsCiAJCSAgICAgY29uc3Qgc3Ry
dWN0IGRwbGwgKmRwbGwpOwogdm9pZCB2bHZfZm9yY2VfcGxsX29mZihzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcGlwZSBwaXBlKTsKIGludCBscHRfZ2V0X2ljbGtpcChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpOworYm9vbCBpbnRlbF9mdXp6eV9jbG9j
a19jaGVjayhpbnQgY2xvY2sxLCBpbnQgY2xvY2syKTsKIAogLyogbW9kZXNldHRpbmcgYXNzZXJ0
cyAqLwogdm9pZCBhc3NlcnRfcGFuZWxfdW5sb2NrZWQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2LAotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
