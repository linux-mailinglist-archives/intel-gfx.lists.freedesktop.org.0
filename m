Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B6ABB245
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 12:30:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38ACE6E864;
	Mon, 23 Sep 2019 10:30:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2513789354
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 10:30:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 03:30:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,539,1559545200"; d="scan'208";a="182494682"
Received: from mrnaghsh-mobl1.amr.corp.intel.com (HELO
 dk-ThinkPad-X260.fios-router.home) ([10.254.177.243])
 by orsmga008.jf.intel.com with ESMTP; 23 Sep 2019 03:30:14 -0700
From: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Sep 2019 03:29:33 -0700
Message-Id: <20190923102935.5860-8-dhinakaran.pandiyan@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190923102935.5860-1-dhinakaran.pandiyan@intel.com>
References: <20190923102935.5860-1-dhinakaran.pandiyan@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC v3 7/9] drm/i915: Skip rotated offset adjustment
 for unsupported modifiers
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RHVyaW5nIGZyYW1lYnVmZmVyIGNyZWF0aW9uLCB3ZSBwcmUtY29tcHV0ZSBvZmZzZXRzIGZvciA5
MC8yNzAgcGxhbmUKcm90YXRpb24uIEhvd2V2ZXIsIG9ubHkgWSBhbmQgWWYgbW9kaWZpZXJzIHN1
cHBvcnQgOTAvMjcwIHJvdGF0aW9uLiBTbywKc2tpcCB0aGUgY2FsY3VsYXRpb25zIGZvciBvdGhl
ciBtb2RpZmllcnMuCgpDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4K
Q2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IERoaW5ha2FyYW4gUGFuZGl5YW4gPGRoaW5ha2FyYW4ucGFuZGl5YW5AaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwg
NCArKystCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA3NDQ3
MDAxYzFmODUuLjZmMGYzODE1NzY5NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKQEAgLTI3ODQsNyArMjc4NCw5IEBAIGludGVsX2ZpbGxfZmJfaW5m
byhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCQkJCQkgICAgICB0aWxlX3Np
emUpOwogCQlvZmZzZXQgLz0gdGlsZV9zaXplOwogCi0JCWlmICghaXNfc3VyZmFjZV9saW5lYXIo
ZmItPm1vZGlmaWVyLCBpKSkgeworCQkvKiBZIG9yIFlmIG1vZGlmaWVycyByZXF1aXJlZCBmb3Ig
OTAvMjcwIHJvdGF0aW9uICovCisJCWlmIChmYi0+bW9kaWZpZXIgPT0gSTkxNV9GT1JNQVRfTU9E
X1lfVElMRUQgfHwKKwkJICAgIGZiLT5tb2RpZmllciA9PSBJOTE1X0ZPUk1BVF9NT0RfWWZfVElM
RUQpIHsKIAkJCXVuc2lnbmVkIGludCB0aWxlX3dpZHRoLCB0aWxlX2hlaWdodDsKIAkJCXVuc2ln
bmVkIGludCBwaXRjaF90aWxlczsKIAkJCXN0cnVjdCBkcm1fcmVjdCByOwotLSAKMi4xNy4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
