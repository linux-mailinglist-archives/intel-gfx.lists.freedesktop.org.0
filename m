Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 263CA350A7
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 22:09:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 742E389C1E;
	Tue,  4 Jun 2019 20:09:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3A1E89C1E
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 20:09:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 13:09:43 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 04 Jun 2019 13:09:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Jun 2019 23:09:41 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jun 2019 23:09:31 +0300
Message-Id: <20190604200933.29417-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190604200933.29417-1-ville.syrjala@linux.intel.com>
References: <20190604200933.29417-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/5] drm/i915: Nuke LC_FREQ
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkdl
dCByaWQgb2YgdGhlIHBvaW50bGVzcyBMQ19GUkVRIGRlZmluZS4KClNpZ25lZC1vZmYtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZGRpLmMgfCA2ICsrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kZGkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RkaS5jCmlu
ZGV4IDE4M2Y5MWFiZGExOS4uZmM5YmNiZDc1YzNhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZGku
YwpAQCAtMTIyMSwxMiArMTIyMSwxMCBAQCBpbnRlbF9kZGlfZ2V0X2NydGNfZW5jb2RlcihzdHJ1
Y3QgaW50ZWxfY3J0YyAqY3J0YykKIAlyZXR1cm4gcmV0OwogfQogCi0jZGVmaW5lIExDX0ZSRVEg
MjcwMAotCiBzdGF0aWMgaW50IGhzd19kZGlfY2FsY193cnBsbF9saW5rKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwKIAkJCQkgICBpOTE1X3JlZ190IHJlZykKIHsKLQlpbnQgcmVm
Y2xrID0gTENfRlJFUTsKKwlpbnQgcmVmY2xrOwogCWludCBuLCBwLCByOwogCXUzMiB3cnBsbDsK
IApAQCAtMTI0Miw3ICsxMjQwLDcgQEAgc3RhdGljIGludCBoc3dfZGRpX2NhbGNfd3JwbGxfbGlu
ayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCXJlZmNsayA9IDEzNTsKIAkJ
YnJlYWs7CiAJY2FzZSBXUlBMTF9SRUZfTENQTEw6Ci0JCXJlZmNsayA9IExDX0ZSRVE7CisJCXJl
ZmNsayA9IDI3MDA7CiAJCWJyZWFrOwogCWRlZmF1bHQ6CiAJCVdBUk4oMSwgImJhZCB3cnBsbCBy
ZWZjbGtcbiIpOwotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
