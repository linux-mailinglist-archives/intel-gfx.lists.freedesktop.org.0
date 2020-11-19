Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 944112B9AF5
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 19:54:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED8946E5D3;
	Thu, 19 Nov 2020 18:54:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BEBD6E5D3
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 18:54:19 +0000 (UTC)
IronPort-SDR: k8gUEAoluMy7iNp/JtBjfuuLphkAqbQtnu83P1OcRrCxe/pwB+GDBqJnBBJx/Ukvw7XkvMX3pa
 ZqzlUy5pi5gA==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="171441737"
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="171441737"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 10:54:18 -0800
IronPort-SDR: aRgKjz7OYhRumTn1jJd9H7Hrn7sEqyyksHlesdwPdEvfmOw7bRsuQnFDmv6XDR0hGOZvFKuAQr
 IKcayJlf7LNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="368958576"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 19 Nov 2020 10:54:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Nov 2020 20:54:15 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 Nov 2020 20:53:53 +0200
Message-Id: <20201119185401.31883-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201119185401.31883-1-ville.syrjala@linux.intel.com>
References: <20201119185401.31883-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/13] drm/i915: Extract skl_allocate_plane_ddb()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClJl
cGxhY2Ugc29tZSBjb3B5LXBhc3RhIHdpdGggYSBmdW5jdGlvbi4KClNpZ25lZC1vZmYtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDM1ICsrKysrKysrKysrKysrKysrKysrLS0tLS0t
LS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKyksIDE0IGRlbGV0aW9ucygt
KQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCmluZGV4IGQ5NTFkYWI4NDBmOS4uYzI4NTFiYjE5NzVk
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKQEAgLTQ4MDgsNiArNDgwOCwyMSBAQCBzdHJ1Y3Qg
c2tsX3BsYW5lX2RkYl9pdGVyIHsKIAl1MTYgc3RhcnQsIHNpemU7CiB9OwogCitzdGF0aWMgdTE2
Citza2xfYWxsb2NhdGVfcGxhbmVfZGRiKHN0cnVjdCBza2xfcGxhbmVfZGRiX2l0ZXIgKml0ZXIs
CisJCSAgICAgICBjb25zdCBzdHJ1Y3Qgc2tsX3dtX2xldmVsICp3bSwKKwkJICAgICAgIHU2NCBk
YXRhX3JhdGUpCit7CisJdTE2IGV4dHJhOworCisJZXh0cmEgPSBtaW5fdCh1MTYsIGl0ZXItPnNp
emUsCisJCSAgICAgIERJVjY0X1U2NF9ST1VORF9VUChpdGVyLT5zaXplICogZGF0YV9yYXRlLCBp
dGVyLT5kYXRhX3JhdGUpKTsKKwlpdGVyLT5zaXplIC09IGV4dHJhOworCWl0ZXItPmRhdGFfcmF0
ZSAtPSBkYXRhX3JhdGU7CisKKwlyZXR1cm4gd20tPm1pbl9kZGJfYWxsb2MgKyBleHRyYTsKK30K
Kwogc3RhdGljIGludAogc2tsX2FsbG9jYXRlX3BpcGVfZGRiKHN0cnVjdCBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlLAogCQkgICAgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKQEAgLTQ5MjYs
OCArNDk0MSw2IEBAIHNrbF9hbGxvY2F0ZV9waXBlX2RkYihzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0
YXRlICpzdGF0ZSwKIAlmb3JfZWFjaF9wbGFuZV9pZF9vbl9jcnRjKGNydGMsIHBsYW5lX2lkKSB7
CiAJCWNvbnN0IHN0cnVjdCBza2xfcGxhbmVfd20gKndtID0KIAkJCSZjcnRjX3N0YXRlLT53bS5z
a2wub3B0aW1hbC5wbGFuZXNbcGxhbmVfaWRdOwotCQl1NjQgZGF0YV9yYXRlOwotCQl1MTYgZXh0
cmE7CiAKIAkJaWYgKHBsYW5lX2lkID09IFBMQU5FX0NVUlNPUikKIAkJCWNvbnRpbnVlOwpAQCAt
NDkzOSwyMiArNDk1MiwxNiBAQCBza2xfYWxsb2NhdGVfcGlwZV9kZGIoc3RydWN0IGludGVsX2F0
b21pY19zdGF0ZSAqc3RhdGUsCiAJCWlmIChpdGVyLmRhdGFfcmF0ZSA9PSAwKQogCQkJYnJlYWs7
CiAKLQkJZGF0YV9yYXRlID0gY3J0Y19zdGF0ZS0+cGxhbmVfZGF0YV9yYXRlW3BsYW5lX2lkXTsK
LQkJZXh0cmEgPSBtaW5fdCh1MTYsIGl0ZXIuc2l6ZSwKLQkJCSAgICAgIERJVjY0X1U2NF9ST1VO
RF9VUChpdGVyLnNpemUgKiBkYXRhX3JhdGUsIGl0ZXIuZGF0YV9yYXRlKSk7Ci0JCWl0ZXIudG90
YWxbcGxhbmVfaWRdID0gd20tPndtW2xldmVsXS5taW5fZGRiX2FsbG9jICsgZXh0cmE7Ci0JCWl0
ZXIuc2l6ZSAtPSBleHRyYTsKLQkJaXRlci5kYXRhX3JhdGUgLT0gZGF0YV9yYXRlOworCQlpdGVy
LnRvdGFsW3BsYW5lX2lkXSA9CisJCQlza2xfYWxsb2NhdGVfcGxhbmVfZGRiKCZpdGVyLCAmd20t
PndtW2xldmVsXSwKKwkJCQkJICAgICAgIGNydGNfc3RhdGUtPnBsYW5lX2RhdGFfcmF0ZVtwbGFu
ZV9pZF0pOwogCiAJCWlmIChpdGVyLmRhdGFfcmF0ZSA9PSAwKQogCQkJYnJlYWs7CiAKLQkJZGF0
YV9yYXRlID0gY3J0Y19zdGF0ZS0+dXZfcGxhbmVfZGF0YV9yYXRlW3BsYW5lX2lkXTsKLQkJZXh0
cmEgPSBtaW5fdCh1MTYsIGl0ZXIuc2l6ZSwKLQkJCSAgICAgIERJVjY0X1U2NF9ST1VORF9VUChp
dGVyLnNpemUgKiBkYXRhX3JhdGUsIGl0ZXIuZGF0YV9yYXRlKSk7Ci0JCWl0ZXIudXZfdG90YWxb
cGxhbmVfaWRdID0gd20tPnV2X3dtW2xldmVsXS5taW5fZGRiX2FsbG9jICsgZXh0cmE7Ci0JCWl0
ZXIuc2l6ZSAtPSBleHRyYTsKLQkJaXRlci5kYXRhX3JhdGUgLT0gZGF0YV9yYXRlOworCQlpdGVy
LnV2X3RvdGFsW3BsYW5lX2lkXSA9CisJCQlza2xfYWxsb2NhdGVfcGxhbmVfZGRiKCZpdGVyLCAm
d20tPnV2X3dtW2xldmVsXSwKKwkJCQkJICAgICAgIGNydGNfc3RhdGUtPnV2X3BsYW5lX2RhdGFf
cmF0ZVtwbGFuZV9pZF0pOwogCX0KIAlkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgaXRlci5z
aXplICE9IDAgfHwgaXRlci5kYXRhX3JhdGUgIT0gMCk7CiAKLS0gCjIuMjYuMgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
