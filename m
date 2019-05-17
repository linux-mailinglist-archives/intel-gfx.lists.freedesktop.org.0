Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CA9221E48
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 21:31:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DBC189994;
	Fri, 17 May 2019 19:31:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 032C3899A3
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 19:31:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 12:31:51 -0700
X-ExtLoop1: 1
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 17 May 2019 12:31:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 May 2019 22:31:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 May 2019 22:31:25 +0300
Message-Id: <20190517193132.8140-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190517193132.8140-1-ville.syrjala@linux.intel.com>
References: <20190517193132.8140-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 07/14] drm/i915: Don't pass the crtc to
 intel_modeset_pipe_config()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IGFscmVhZHkgcGFzcyB0aGUgY3J0YydzIHN0YXRlIHRvIGludGVsX21vZGVzZXRfcGlwZV9jb25m
aWcoKQpzbyBwYXNzaW5nIHRoZSBjcnRjIGFzIHdlbGwgaXMgcmVkdW5kYW50LgoKU2lnbmVkLW9m
Zi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMgfCA2ICsrKy0tLQogMSBmaWxl
IGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggMGU1MDlmNWEyOGEzLi4xOTJmNTQ4YjI0ZWQgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kaXNwbGF5LmMKQEAgLTExNzAwLDkgKzExNzAwLDkgQEAgY2xl
YXJfaW50ZWxfY3J0Y19zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkK
IH0KIAogc3RhdGljIGludAotaW50ZWxfbW9kZXNldF9waXBlX2NvbmZpZyhzdHJ1Y3QgZHJtX2Ny
dGMgKmNydGMsCi0JCQkgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZykKK2lu
dGVsX21vZGVzZXRfcGlwZV9jb25maWcoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVfY29u
ZmlnKQogeworCXN0cnVjdCBkcm1fY3J0YyAqY3J0YyA9IHBpcGVfY29uZmlnLT5iYXNlLmNydGM7
CiAJc3RydWN0IGRybV9hdG9taWNfc3RhdGUgKnN0YXRlID0gcGlwZV9jb25maWctPmJhc2Uuc3Rh
dGU7CiAJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXI7CiAJc3RydWN0IGRybV9jb25uZWN0
b3IgKmNvbm5lY3RvcjsKQEAgLTEzMDY4LDcgKzEzMDY4LDcgQEAgc3RhdGljIGludCBpbnRlbF9h
dG9taWNfY2hlY2soc3RydWN0IGRybV9kZXZpY2UgKmRldiwKIAkJCWNvbnRpbnVlOwogCQl9CiAK
LQkJcmV0ID0gaW50ZWxfbW9kZXNldF9waXBlX2NvbmZpZyhjcnRjLCBwaXBlX2NvbmZpZyk7CisJ
CXJldCA9IGludGVsX21vZGVzZXRfcGlwZV9jb25maWcocGlwZV9jb25maWcpOwogCQlpZiAocmV0
ID09IC1FREVBRExLKQogCQkJcmV0dXJuIHJldDsKIAkJaWYgKHJldCkgewotLSAKMi4yMS4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
