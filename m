Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C0410B661
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Nov 2019 20:06:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A8296E5AB;
	Wed, 27 Nov 2019 19:06:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87B706E5B0
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2019 19:06:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Nov 2019 11:06:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,250,1571727600"; d="scan'208";a="211846602"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 27 Nov 2019 11:06:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Nov 2019 21:06:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Nov 2019 21:05:56 +0200
Message-Id: <20191127190556.1574-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191127190556.1574-1-ville.syrjala@linux.intel.com>
References: <20191127190556.1574-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 7/7] drm/i915: Make
 intel_crtc_arm_fifo_underrun() functional on gen2
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFz
c3VtaW5nIGludGVsX2NydGNfYXJtX2ZpZm9fdW5kZXJydW4oKSBvbmx5IGdldHMgY2FsbGVkIHdo
ZW4KdGhlcmUncyBubyBwZW5kaW5nIHBsYW5lIHVwZGF0ZXMgd2UgY2FuIHV0aWxpemUgaXQgb24g
Z2VuMiBieQpjaGVja2luZyB0aGUgYWN0aXZlX3BsYW5lcyBiaXRtYXNrIHNvIHRoYXQgd2Ugb25s
eSByZS1lbmFibGUKdW5kZXJydW4gcmVwb3J0aW5nIGlmIHNvbWUgcGxhbmVzIGFyZSBhY3RpdmUu
Cmk5MTVfZmlmb191bmRlcnJ1bl9yZXNldF93cml0ZSgpIHNlZW1zIHRvIGhhdmUgdGhlIG5lY2Vz
c2FyeQpod19kb25lL2ZsaXBfZG9uZSB3YWl0cyBpbiBwbGFjZS4KClNpZ25lZC1vZmYtYnk6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCAyICstCiAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDQzNzdlZTJlZWU1Ni4uZWMzNjM5NzJl
MGFjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpA
QCAtMTQyMjEsNyArMTQyMjEsNyBAQCB2b2lkIGludGVsX2NydGNfYXJtX2ZpZm9fdW5kZXJydW4o
c3RydWN0IGludGVsX2NydGMgKmNydGMsCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7CiAKLQlpZiAoIUlTX0dFTihkZXZfcHJp
diwgMikpCisJaWYgKCFJU19HRU4oZGV2X3ByaXYsIDIpIHx8IGNydGNfc3RhdGUtPmFjdGl2ZV9w
bGFuZXMpCiAJCWludGVsX3NldF9jcHVfZmlmb191bmRlcnJ1bl9yZXBvcnRpbmcoZGV2X3ByaXYs
IGNydGMtPnBpcGUsIHRydWUpOwogCiAJaWYgKGNydGNfc3RhdGUtPmhhc19wY2hfZW5jb2Rlcikg
ewotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
