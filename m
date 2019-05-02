Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C994912513
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 01:27:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 178E0893EF;
	Thu,  2 May 2019 23:27:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 656CD893EA
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2019 23:27:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 May 2019 16:27:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,423,1549958400"; d="scan'208";a="147715169"
Received: from ideak-desk.fi.intel.com ([10.237.72.204])
 by orsmga003.jf.intel.com with ESMTP; 02 May 2019 16:27:08 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  3 May 2019 02:26:43 +0300
Message-Id: <20190502232648.4450-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190502232648.4450-1-imre.deak@intel.com>
References: <20190502232648.4450-1-imre.deak@intel.com>
Subject: [Intel-gfx] [PATCH 05/10] drm/i915: WARN for eDP encoders in
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgYXJlIG5vdCBjYWxsaW5nIHRoaXMgZnVuY3Rpb24gZm9yIGVEUCwgc28gYWRkIGFuIGVhcmx5
IGFzc2VydCBhYm91dAp0aGlzIGZvciBjbGFyaXR5LgoKU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFr
IDxpbXJlLmRlYWtAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rw
LmMgfCA2ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYwppbmRleCAwNDc1NjAxYzJmMzMuLjE4NjUyODZl
YWNhZSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZHAuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jCkBAIC00ODQyLDE1ICs0ODQyLDE1IEBAIGlu
dGVsX2RwX2RldGVjdF9kcGNkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiAJdTggKmRwY2Qg
PSBpbnRlbF9kcC0+ZHBjZDsKIAl1OCB0eXBlOwogCisJaWYgKFdBUk5fT04oaW50ZWxfZHBfaXNf
ZWRwKGludGVsX2RwKSkpCisJCXJldHVybiBjb25uZWN0b3Jfc3RhdHVzX2Nvbm5lY3RlZDsKKwog
CWlmIChsc3Bjb24tPmFjdGl2ZSkKIAkJbHNwY29uX3Jlc3VtZShsc3Bjb24pOwogCiAJaWYgKCFp
bnRlbF9kcF9nZXRfZHBjZChpbnRlbF9kcCkpCiAJCXJldHVybiBjb25uZWN0b3Jfc3RhdHVzX2Rp
c2Nvbm5lY3RlZDsKIAotCWlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQotCQlyZXR1cm4g
Y29ubmVjdG9yX3N0YXR1c19jb25uZWN0ZWQ7Ci0KIAkvKiBpZiB0aGVyZSdzIG5vIGRvd25zdHJl
YW0gcG9ydCwgd2UncmUgZG9uZSAqLwogCWlmICghZHJtX2RwX2lzX2JyYW5jaChkcGNkKSkKIAkJ
cmV0dXJuIGNvbm5lY3Rvcl9zdGF0dXNfY29ubmVjdGVkOwotLSAKMi4xNy4xCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
