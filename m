Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0958C38B2A8
	for <lists+intel-gfx@lfdr.de>; Thu, 20 May 2021 17:10:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA94D6E222;
	Thu, 20 May 2021 15:10:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3F7A6F476;
 Thu, 20 May 2021 15:10:38 +0000 (UTC)
IronPort-SDR: soodJrzJrGB2H3JHvLrO4VoE/mbQFtgYRJRpAjbeiI+VmQu6BU5RTlnwvKmO3vD43qE/TxHePD
 3xsePCamKJDw==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="222341204"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="222341204"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2021 08:10:04 -0700
IronPort-SDR: sWL1XLZ6gJ82jJQCMa9OAbhu+4UAbec+tsXQVHEYidVGiZ7eko4VIQbkixvId+o+XhOP7mnqS2
 Vvw0HCh3IkiQ==
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="395728192"
Received: from cbjoerns-mobl1.ger.corp.intel.com (HELO
 thellst-mobl1.intel.com) ([10.249.254.247])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2021 08:10:03 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 20 May 2021 17:09:45 +0200
Message-Id: <20210520150947.803891-4-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210520150947.803891-1-thomas.hellstrom@linux.intel.com>
References: <20210520150947.803891-1-thomas.hellstrom@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 3/5] drm/ttm: Use drm_memcpy_from_wc for TTM
 bo moves
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VXNlIGZhc3Qgd2MgbWVtY3B5IGZvciByZWFkaW5nIG91dCBvZiB3YyBtZW1vcnkgZm9yIFRUTSBi
byBtb3Zlcy4KCkNjOiBEYXZlIEFpcmxpZSA8YWlybGllZEBnbWFpbC5jb20+CkNjOiBDaHJpc3Rp
YW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+CkNjOiBEYW5pZWwgVmV0dGVyIDxk
YW5pZWwudmV0dGVyQGZmd2xsLmNoPgpTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8
dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL3R0
bS90dG1fYm9fdXRpbC5jIHwgMTggKysrKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwg
MTcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS90dG0vdHRtX2JvX3V0aWwuYyBiL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2JvX3V0aWwu
YwppbmRleCBiYWQ5YjE2ZTk2YmEuLjkxOWVlMDNmN2ViMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9n
cHUvZHJtL3R0bS90dG1fYm9fdXRpbC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS90dG0vdHRtX2Jv
X3V0aWwuYwpAQCAtMzEsNiArMzEsNyBAQAogCiAjaW5jbHVkZSA8ZHJtL3R0bS90dG1fYm9fZHJp
dmVyLmg+CiAjaW5jbHVkZSA8ZHJtL3R0bS90dG1fcGxhY2VtZW50Lmg+CisjaW5jbHVkZSA8ZHJt
L2RybV9tZW1jcHkuaD4KICNpbmNsdWRlIDxkcm0vZHJtX3ZtYV9tYW5hZ2VyLmg+CiAjaW5jbHVk
ZSA8bGludXgvZG1hLWJ1Zi1tYXAuaD4KICNpbmNsdWRlIDxsaW51eC9pby5oPgpAQCAtMTg1LDYg
KzE4Niw3IEBAIHZvaWQgdHRtX21vdmVfbWVtY3B5KHN0cnVjdCB0dG1fYnVmZmVyX29iamVjdCAq
Ym8sCiAJc3RydWN0IHR0bV9yZXNvdXJjZSAqb2xkX21lbSA9ICZiby0+bWVtOwogCXN0cnVjdCB0
dG1fcmVzb3VyY2VfbWFuYWdlciAqb2xkX21hbiA9IHR0bV9tYW5hZ2VyX3R5cGUoYmRldiwgb2xk
X21lbS0+bWVtX3R5cGUpOwogCXN0cnVjdCBkbWFfYnVmX21hcCBvbGRfbWFwLCBuZXdfbWFwOwor
CWJvb2wgd2NfbWVtY3B5OwogCXBnb2ZmX3QgaTsKIAogCS8qIFNpbmdsZSBUVE0gbW92ZS4gTk9Q
ICovCkBAIC0yMDgsMTEgKzIxMCwyNSBAQCB2b2lkIHR0bV9tb3ZlX21lbWNweShzdHJ1Y3QgdHRt
X2J1ZmZlcl9vYmplY3QgKmJvLAogCQlyZXR1cm47CiAJfQogCisJd2NfbWVtY3B5ID0gKCghb2xk
X21hbi0+dXNlX3R0IHx8IGJvLT50dG0tPmNhY2hpbmcgIT0gdHRtX2NhY2hlZCkgJiYKKwkJICAg
ICBkcm1faGFzX21lbWNweV9mcm9tX3djKCkpOworCisJLyoKKwkgKiBXZSB1c2Ugc29tZSBuYXN0
eSBhbGlhc2luZyBmb3IgZHJtX21lbWNweV9mcm9tX3djLCBidXQgYXNzdW1pbmcKKwkgKiB0aGF0
IHdlIGNhbiBtb3ZlIHRvIG1lbXJlbWFwcGluZyBpbiB0aGUgbm90IHRvbyBkaXN0YW50IGZ1dHVy
ZSwKKwkgKiByZWR1Y2UgdGhlIGZyYWdpbGl0eSBmb3Igbm93IHdpdGggYSBidWlsZCBhc3NlcnQu
CisJICovCisJQlVJTERfQlVHX09OKG9mZnNldG9mKHR5cGVvZihvbGRfbWFwKSwgdmFkZHIpICE9
CisJCSAgICAgb2Zmc2V0b2YodHlwZW9mKG9sZF9tYXApLCB2YWRkcl9pb21lbSkpOworCiAJZm9y
IChpID0gMDsgaSA8IG5ld19tZW0tPm51bV9wYWdlczsgKytpKSB7CiAJCW5ld19pdGVyLT5vcHMt
PmttYXBfbG9jYWwobmV3X2l0ZXIsICZuZXdfbWFwLCBpKTsKIAkJb2xkX2l0ZXItPm9wcy0+a21h
cF9sb2NhbChvbGRfaXRlciwgJm9sZF9tYXAsIGkpOwogCi0JCWlmICghb2xkX21hcC5pc19pb21l
bSAmJiAhbmV3X21hcC5pc19pb21lbSkgeworCQlpZiAod2NfbWVtY3B5KSB7CisJCQlkcm1fbWVt
Y3B5X2Zyb21fd2MobmV3X21hcC52YWRkciwgb2xkX21hcC52YWRkciwKKwkJCQkJICAgUEFHRV9T
SVpFKTsKKwkJfSBlbHNlIGlmICghb2xkX21hcC5pc19pb21lbSAmJiAhbmV3X21hcC5pc19pb21l
bSkgewogCQkJbWVtY3B5KG5ld19tYXAudmFkZHIsIG9sZF9tYXAudmFkZHIsIFBBR0VfU0laRSk7
CiAJCX0gZWxzZSBpZiAoIW9sZF9tYXAuaXNfaW9tZW0pIHsKIAkJCWRtYV9idWZfbWFwX21lbWNw
eV90bygmbmV3X21hcCwgb2xkX21hcC52YWRkciwKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
