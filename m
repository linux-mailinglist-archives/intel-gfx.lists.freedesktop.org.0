Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9239F18F3C
	for <lists+intel-gfx@lfdr.de>; Thu,  9 May 2019 19:35:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 170F689F35;
	Thu,  9 May 2019 17:35:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 126DD89F27
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 May 2019 17:35:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 10:35:14 -0700
X-ExtLoop1: 1
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 09 May 2019 10:35:13 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 May 2019 20:34:41 +0300
Message-Id: <20190509173446.31095-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190509173446.31095-1-imre.deak@intel.com>
References: <20190509173446.31095-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 06/11] drm/i915: WARN for eDP encoders in
 intel_dp_detect_dpcd()
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

V2UgYXJlIG5vdCBjYWxsaW5nIHRoaXMgZnVuY3Rpb24gZm9yIGVEUCwgc28gYWRkIGFuIGVhcmx5
IGFzc2VydCBhYm91dAp0aGlzIGZvciBjbGFyaXR5LgoKQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1y
ZS5kZWFrQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAu
YyB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jCmluZGV4IDcwMGNlYWNiODJlNi4uMWUwMTE5OThl
OWQ1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RwLmMKQEAgLTQ4NDQsMTUgKzQ4NDQsMTUgQEAgaW50
ZWxfZHBfZGV0ZWN0X2RwY2Qoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkKIAl1OCAqZHBjZCA9
IGludGVsX2RwLT5kcGNkOwogCXU4IHR5cGU7CiAKKwlpZiAoV0FSTl9PTihpbnRlbF9kcF9pc19l
ZHAoaW50ZWxfZHApKSkKKwkJcmV0dXJuIGNvbm5lY3Rvcl9zdGF0dXNfY29ubmVjdGVkOworCiAJ
aWYgKGxzcGNvbi0+YWN0aXZlKQogCQlsc3Bjb25fcmVzdW1lKGxzcGNvbik7CiAKIAlpZiAoIWlu
dGVsX2RwX2dldF9kcGNkKGludGVsX2RwKSkKIAkJcmV0dXJuIGNvbm5lY3Rvcl9zdGF0dXNfZGlz
Y29ubmVjdGVkOwogCi0JaWYgKGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpCi0JCXJldHVybiBj
b25uZWN0b3Jfc3RhdHVzX2Nvbm5lY3RlZDsKLQogCS8qIGlmIHRoZXJlJ3Mgbm8gZG93bnN0cmVh
bSBwb3J0LCB3ZSdyZSBkb25lICovCiAJaWYgKCFkcm1fZHBfaXNfYnJhbmNoKGRwY2QpKQogCQly
ZXR1cm4gY29ubmVjdG9yX3N0YXR1c19jb25uZWN0ZWQ7Ci0tIAoyLjE3LjEKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
