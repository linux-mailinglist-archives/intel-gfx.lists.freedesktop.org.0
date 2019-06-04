Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD2D34B33
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Jun 2019 16:59:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAF128999E;
	Tue,  4 Jun 2019 14:59:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5243B8999E
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Jun 2019 14:59:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jun 2019 07:59:39 -0700
X-ExtLoop1: 1
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 04 Jun 2019 07:59:37 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Jun 2019 17:58:18 +0300
Message-Id: <20190604145826.16424-16-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190604145826.16424-1-imre.deak@intel.com>
References: <20190604145826.16424-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/23] drm/i915: Sanitize the TypeC FIA lane
 configuration decoding
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

VXNlIGhleCBudW1iZXJzLCBzaW5jZSB0aGF0IG1ha2VzIG1vcmUgc2Vuc2Ugd2hlbiBkZWNvZGlu
ZyBhIGJpdCBwYXR0ZXJuLgoKTm8gZnVuY3Rpb25hbCBjaGFuZ2UuCgpTdWdnZXN0ZWQtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBBbmltZXNo
IE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1y
ZS5kZWFrQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF90Yy5jIHwg
MTUgKysrKysrKystLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCA3IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3RjLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF90Yy5jCmluZGV4IGZjMDM0MWRjNTBjNS4uNGIy
ZjUyNWJjMmE2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF90Yy5jCisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3RjLmMKQEAgLTcyLDE1ICs3MiwxNiBAQCBp
bnQgaW50ZWxfdGNfcG9ydF9maWFfbWF4X2xhbmVfY291bnQoc3RydWN0IGludGVsX2RpZ2l0YWxf
cG9ydCAqZGlnX3BvcnQpCiAJc3dpdGNoIChsYW5lX2luZm8pIHsKIAlkZWZhdWx0OgogCQlNSVNT
SU5HX0NBU0UobGFuZV9pbmZvKTsKLQljYXNlIDE6Ci0JY2FzZSAyOgotCWNhc2UgNDoKLQljYXNl
IDg6CisJCS8qIGZhbGwtdGhyb3VnaCAqLworCWNhc2UgMHgxOgorCWNhc2UgMHgyOgorCWNhc2Ug
MHg0OgorCWNhc2UgMHg4OgogCQlyZXR1cm4gMTsKLQljYXNlIDM6Ci0JY2FzZSAxMjoKKwljYXNl
IDB4MzoKKwljYXNlIDB4YzoKIAkJcmV0dXJuIDI7Ci0JY2FzZSAxNToKKwljYXNlIDB4ZjoKIAkJ
cmV0dXJuIDQ7CiAJfQogfQotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
