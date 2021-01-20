Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0243D2FD3AC
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Jan 2021 16:15:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC96A89DDF;
	Wed, 20 Jan 2021 15:15:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C26189A83
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Jan 2021 15:15:17 +0000 (UTC)
IronPort-SDR: gpYbt90wMGzsl+I5+CCspKqS59kmyf+Sg6ZJuCKhQpGEaivF5s2tUnSBWlehWdgVCVf28Mndl+
 Ah9UvGg+JTLA==
X-IronPort-AV: E=McAfee;i="6000,8403,9870"; a="263931269"
X-IronPort-AV: E=Sophos;i="5.79,361,1602572400"; d="scan'208";a="263931269"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 07:15:17 -0800
IronPort-SDR: pDUYKFVJ4fKmTNZrzjyaLjfKERHO7Pp+1RcOaDrz/pWNVTIttQi43N6BtnBRV4bLahzOxwIrLS
 8+Le74DomKAA==
X-IronPort-AV: E=Sophos;i="5.79,361,1602572400"; d="scan'208";a="366274498"
Received: from kuhongje-mobl5.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.251.145.99])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2021 07:15:15 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Jan 2021 07:16:11 -0800
Message-Id: <20210120151611.132591-4-jose.souza@intel.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210120151611.132591-1-jose.souza@intel.com>
References: <20210120151611.132591-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Rename is_16gb_dimm to
 wm_lv_0_adjust_needed
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

QXMgaXQgbm93IGl0IGlzIGFsd2F5cyByZXF1aXJlZCBmb3IgR0VOMTIrIHRoZSBpc18xNmdiX2Rp
bW0gbmFtZQpkbyBub3QgbWFrZSBzZW5zZSBmb3IgR0VOMTIrLgoKU2lnbmVkLW9mZi1ieTogSm9z
w6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuaCAgIHwgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX2RyYW0uYyB8IDEwICsrKysrLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bt
LmMgICB8ICAyICstCiAzIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAppbmRleCBhMmFlMjEwODJiMzQuLmFkYzAwOGM2
NWIxNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oCkBAIC0xMTM0LDcgKzExMzQsNyBAQCBzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSB7CiAJfSB3bTsKIAogCXN0cnVjdCBkcmFtX2luZm8gewotCQli
b29sIGlzXzE2Z2JfZGltbTsKKwkJYm9vbCB3bV9sdl8wX2FkanVzdF9uZWVkZWQ7CiAJCXU4IG51
bV9jaGFubmVsczsKIAkJYm9vbCBzeW1tZXRyaWNfbWVtb3J5OwogCQllbnVtIGludGVsX2RyYW1f
dHlwZSB7CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcmFtLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcmFtLmMKaW5kZXggNDg3MWQ0ODU4OWY5Li5hNTg1
MGYwZjI1YWEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RyYW0uYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcmFtLmMKQEAgLTIwNyw3ICsyMDcsNyBA
QCBza2xfZHJhbV9nZXRfY2hhbm5lbHNfaW5mbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSkKIAkJcmV0dXJuIC1FSU5WQUw7CiAJfQogCi0JZHJhbV9pbmZvLT5pc18xNmdiX2RpbW0gPSBj
aDAuaXNfMTZnYl9kaW1tIHx8IGNoMS5pc18xNmdiX2RpbW07CisJZHJhbV9pbmZvLT53bV9sdl8w
X2FkanVzdF9uZWVkZWQgPSBjaDAuaXNfMTZnYl9kaW1tIHx8IGNoMS5pc18xNmdiX2RpbW07CiAK
IAlkcmFtX2luZm8tPnN5bW1ldHJpY19tZW1vcnkgPSBpbnRlbF9pc19kcmFtX3N5bW1ldHJpYygm
Y2gwLCAmY2gxKTsKIApAQCAtNDc1LDcgKzQ3NSw3IEBAIHN0YXRpYyBpbnQgZ2VuMTFfZ2V0X2Ry
YW1faW5mbyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAkJCXJldHVybiByZXQ7CiAJ
fSBlbHNlIHsKIAkJLyogQWx3YXlzIG5lZWRlZCBmb3IgR0VOMTIrICovCi0JCWk5MTUtPmRyYW1f
aW5mby5pc18xNmdiX2RpbW0gPSB0cnVlOworCQlpOTE1LT5kcmFtX2luZm8ud21fbHZfMF9hZGp1
c3RfbmVlZGVkID0gdHJ1ZTsKIAl9CiAKIAlyZXR1cm4gaWNsX3Bjb2RlX3JlYWRfbWVtX2dsb2Jh
bF9pbmZvKGk5MTUpOwpAQCAtNDkxLDcgKzQ5MSw3IEBAIGludCBpbnRlbF9kcmFtX2RldGVjdChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAkgKiBUaGlzIGlzIG9ubHkgdXNlZCBmb3Ig
dGhlIGxldmVsIDAgd2F0ZXJtYXJrIGxhdGVuY3kKIAkgKiB3L2Egd2hpY2ggZG9lcyBub3QgYXBw
bHkgdG8gYnh0L2dsay4KIAkgKi8KLQlkcmFtX2luZm8tPmlzXzE2Z2JfZGltbSA9ICFJU19HRU45
X0xQKGk5MTUpOworCWRyYW1faW5mby0+d21fbHZfMF9hZGp1c3RfbmVlZGVkID0gIUlTX0dFTjlf
TFAoaTkxNSk7CiAKIAlpZiAoSU5URUxfR0VOKGk5MTUpIDwgOSB8fCAhSEFTX0RJU1BMQVkoaTkx
NSkpCiAJCXJldHVybiAwOwpAQCAtNTEwLDggKzUxMCw4IEBAIGludCBpbnRlbF9kcmFtX2RldGVj
dChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAogCWRybV9kYmdfa21zKCZpOTE1LT5k
cm0sICJEUkFNIGNoYW5uZWxzOiAldVxuIiwgZHJhbV9pbmZvLT5udW1fY2hhbm5lbHMpOwogCi0J
ZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgIkRSQU0gMTZHYiBESU1NczogJXNcbiIsCi0JCSAgICB5
ZXNubyhkcmFtX2luZm8tPmlzXzE2Z2JfZGltbSkpOworCWRybV9kYmdfa21zKCZpOTE1LT5kcm0s
ICJXYXRlcm1hcmsgbGV2ZWwgMCBhZGp1c3RtZW50IG5lZWRlZDogJXNcbiIsCisJCSAgICB5ZXNu
byhkcmFtX2luZm8tPndtX2x2XzBfYWRqdXN0X25lZWRlZCkpOwogCiAJcmV0dXJuIDA7CiB9CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfcG0uYwppbmRleCA5OTJmY2U4YjhkMTMuLmY3NzhhYWUxOWY4MiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9wbS5jCkBAIC0yOTMwLDcgKzI5MzAsNyBAQCBzdGF0aWMgdm9pZCBp
bnRlbF9yZWFkX3dtX2xhdGVuY3koc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAog
CQkgKiBhbnkgdW5kZXJydW4uIElmIG5vdCBhYmxlIHRvIGdldCBEaW1tIGluZm8gYXNzdW1lIDE2
R0IgZGltbQogCQkgKiB0byBhdm9pZCBhbnkgdW5kZXJydW4uCiAJCSAqLwotCQlpZiAoZGV2X3By
aXYtPmRyYW1faW5mby5pc18xNmdiX2RpbW0pCisJCWlmIChkZXZfcHJpdi0+ZHJhbV9pbmZvLndt
X2x2XzBfYWRqdXN0X25lZWRlZCkKIAkJCXdtWzBdICs9IDE7CiAKIAl9IGVsc2UgaWYgKElTX0hB
U1dFTEwoZGV2X3ByaXYpIHx8IElTX0JST0FEV0VMTChkZXZfcHJpdikpIHsKLS0gCjIuMzAuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
