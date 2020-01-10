Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C2413760D
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 19:32:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28E346EA84;
	Fri, 10 Jan 2020 18:32:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2BD16EA83
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 18:32:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 10:32:38 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,418,1571727600"; d="scan'208";a="231718885"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 10 Jan 2020 10:32:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 Jan 2020 20:32:35 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jan 2020 20:32:25 +0200
Message-Id: <20200110183228.8199-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200110183228.8199-1-ville.syrjala@linux.intel.com>
References: <20200110183228.8199-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/6] drm/i915: Stop looking at plane->state in
 intel_prepare_plane_fb()
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClN3
aXRjaCBvdmVyIHRvIHVzaW5nIGV4cGxpY2l0IG9sZC9uZXcgcGxhbmVzIHN0YXRlcyBpbnN0ZWFk
IG9mCmRpZ2dpbmcgdGhlIG9sZCBzdGF0ZSBvdXQgdmlhIHBsYW5lLT5zdGF0ZS4gVGhlIG1haW4g
aXNzdWUgaXMgdGhhdApwbGFuZS0+c3RhdGUgd2lsbCBwb2ludCB0byB0aGUgdWFwaSBzdGF0ZSB3
aGljaCB3ZSBnZW5lcmFsbHkgZG9uJ3QKZXZlbiB3YW50IHRvIGxvb2sgYXQuCgpBbHNvIGl0IHNl
dHMgYSBiYWQgZXhhbXBsZSBhcyB1c2luZyBwbGFuZS0+c3RhdGUgZHVyaW5nIGNvbW1pdF90YWls
KCkKd291bGQgYmUgYSBidWcuIEhlcmUgd2UncmUgc3RpbGwgaG9sZGluZyB0aGUgbW9kZXNldCBs
b2NrcyBzbyBpdCdzCmFjdHVhbGx5IHNhZmUsIGJ1dCBiZXN0IG5vdCBnaXZlIHBlb3BsZSBiYWQg
aWRlYXMuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jIHwgMTYgKysrKysrKysrLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9u
cygrKSwgNyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jCmluZGV4IDBhMWYyNTY0ZGVhMC4uMGRmMDcxOWIwYWMzIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAtMTU3NDksMjMgKzE1
NzQ5LDI1IEBAIHN0YXRpYyB2b2lkIGZiX29ial9idW1wX3JlbmRlcl9wcmlvcml0eShzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQogICogUmV0dXJucyAwIG9uIHN1Y2Nlc3MsIG5lZ2F0
aXZlIGVycm9yIGNvZGUgb24gZmFpbHVyZS4KICAqLwogaW50Ci1pbnRlbF9wcmVwYXJlX3BsYW5l
X2ZiKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lLAoraW50ZWxfcHJlcGFyZV9wbGFuZV9mYihzdHJ1
Y3QgZHJtX3BsYW5lICpfcGxhbmUsCiAJCSAgICAgICBzdHJ1Y3QgZHJtX3BsYW5lX3N0YXRlICpf
bmV3X3BsYW5lX3N0YXRlKQogeworCXN0cnVjdCBpbnRlbF9wbGFuZSAqcGxhbmUgPSB0b19pbnRl
bF9wbGFuZShfcGxhbmUpOwogCXN0cnVjdCBpbnRlbF9wbGFuZV9zdGF0ZSAqbmV3X3BsYW5lX3N0
YXRlID0KIAkJdG9faW50ZWxfcGxhbmVfc3RhdGUoX25ld19wbGFuZV9zdGF0ZSk7CiAJc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZSAqaW50ZWxfc3RhdGUgPQogCQl0b19pbnRlbF9hdG9taWNfc3Rh
dGUobmV3X3BsYW5lX3N0YXRlLT51YXBpLnN0YXRlKTsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHBsYW5lLT5kZXYpOwotCXN0cnVjdCBkcm1fZnJhbWVidWZm
ZXIgKmZiID0gbmV3X3BsYW5lX3N0YXRlLT5ody5mYjsKLQlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29i
amVjdCAqb2JqID0gaW50ZWxfZmJfb2JqKGZiKTsKLQlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVj
dCAqb2xkX29iaiA9IGludGVsX2ZiX29iaihwbGFuZS0+c3RhdGUtPmZiKTsKKwlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHBsYW5lLT5iYXNlLmRldik7CisJY29u
c3Qgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpvbGRfcGxhbmVfc3RhdGUgPQorCQlpbnRlbF9h
dG9taWNfZ2V0X29sZF9wbGFuZV9zdGF0ZShpbnRlbF9zdGF0ZSwgcGxhbmUpOworCXN0cnVjdCBk
cm1faTkxNV9nZW1fb2JqZWN0ICpvYmogPSBpbnRlbF9mYl9vYmoobmV3X3BsYW5lX3N0YXRlLT5o
dy5mYik7CisJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9sZF9vYmogPSBpbnRlbF9mYl9v
Ymoob2xkX3BsYW5lX3N0YXRlLT5ody5mYik7CiAJaW50IHJldDsKIAogCWlmIChvbGRfb2JqKSB7
Ci0JCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlID0KKwkJY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQogCQkJaW50ZWxfYXRvbWljX2dldF9uZXdf
Y3J0Y19zdGF0ZShpbnRlbF9zdGF0ZSwKLQkJCQkJCQl0b19pbnRlbF9jcnRjKHBsYW5lLT5zdGF0
ZS0+Y3J0YykpOworCQkJCQkJCXRvX2ludGVsX2NydGMob2xkX3BsYW5lX3N0YXRlLT5ody5jcnRj
KSk7CiAKIAkJLyogQmlnIEhhbW1lciwgd2UgYWxzbyBuZWVkIHRvIGVuc3VyZSB0aGF0IGFueSBw
ZW5kaW5nCiAJCSAqIE1JX1dBSVRfRk9SX0VWRU5UIGluc2lkZSBhIHVzZXIgYmF0Y2ggYnVmZmVy
IG9uIHRoZQotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
