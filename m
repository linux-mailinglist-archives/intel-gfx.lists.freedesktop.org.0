Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4BA10D9C4
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2019 19:55:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFDB56EA3D;
	Fri, 29 Nov 2019 18:55:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C6356EA3D
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Nov 2019 18:54:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Nov 2019 10:54:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,258,1571727600"; d="scan'208";a="241128760"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 29 Nov 2019 10:54:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 29 Nov 2019 20:54:51 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 29 Nov 2019 20:54:31 +0200
Message-Id: <20191129185434.25549-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191129185434.25549-1-ville.syrjala@linux.intel.com>
References: <20191129185434.25549-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 6/9] drm/i915: Use drm_modeset_lock_all() in
 debugfs display info
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk1h
a2Ugb3V0IGxpZmUgZWFzaWVyIGJ5IGp1c3QgZ3JhYmJpbmcgYWxsIG1vZGVzZXQgbG9ja3MgYXJv
dW5kCnRoZSBkaXNwbGF5X2luZm8gZHVtcC4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kZWJ1Z2ZzLmMgfCAxMSArKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5z
ZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5j
CmluZGV4IDExZjNmOTFiZWZiOS4uM2JmN2Q0ZTJmOTQwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2RlYnVnZnMuYwpAQCAtMjY2NywyMyArMjY2NywyMiBAQCBzdGF0aWMgaW50IGk5MTVfZGlzcGxh
eV9pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9pZCAqdW51c2VkKQogCiAJd2FrZXJlZiA9IGlu
dGVsX3J1bnRpbWVfcG1fZ2V0KCZkZXZfcHJpdi0+cnVudGltZV9wbSk7CiAKKwlkcm1fbW9kZXNl
dF9sb2NrX2FsbChkZXYpOworCiAJc2VxX3ByaW50ZihtLCAiQ1JUQyBpbmZvXG4iKTsKIAlzZXFf
cHJpbnRmKG0sICItLS0tLS0tLS1cbiIpOwotCWZvcl9lYWNoX2ludGVsX2NydGMoZGV2LCBjcnRj
KSB7Ci0JCWRybV9tb2Rlc2V0X2xvY2soJmNydGMtPmJhc2UubXV0ZXgsIE5VTEwpOworCWZvcl9l
YWNoX2ludGVsX2NydGMoZGV2LCBjcnRjKQogCQlpbnRlbF9jcnRjX2luZm8obSwgY3J0Yyk7Ci0J
CWRybV9tb2Rlc2V0X3VubG9jaygmY3J0Yy0+YmFzZS5tdXRleCk7Ci0JfQogCiAJc2VxX3ByaW50
ZihtLCAiXG4iKTsKIAlzZXFfcHJpbnRmKG0sICJDb25uZWN0b3IgaW5mb1xuIik7CiAJc2VxX3By
aW50ZihtLCAiLS0tLS0tLS0tLS0tLS1cbiIpOwotCW11dGV4X2xvY2soJmRldi0+bW9kZV9jb25m
aWcubXV0ZXgpOwogCWRybV9jb25uZWN0b3JfbGlzdF9pdGVyX2JlZ2luKGRldiwgJmNvbm5faXRl
cik7CiAJZHJtX2Zvcl9lYWNoX2Nvbm5lY3Rvcl9pdGVyKGNvbm5lY3RvciwgJmNvbm5faXRlcikK
IAkJaW50ZWxfY29ubmVjdG9yX2luZm8obSwgY29ubmVjdG9yKTsKIAlkcm1fY29ubmVjdG9yX2xp
c3RfaXRlcl9lbmQoJmNvbm5faXRlcik7Ci0JbXV0ZXhfdW5sb2NrKCZkZXYtPm1vZGVfY29uZmln
Lm11dGV4KTsKKworCWRybV9tb2Rlc2V0X3VubG9ja19hbGwoZGV2KTsKIAogCWludGVsX3J1bnRp
bWVfcG1fcHV0KCZkZXZfcHJpdi0+cnVudGltZV9wbSwgd2FrZXJlZik7CiAKLS0gCjIuMjMuMAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
