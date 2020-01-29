Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D08D14D062
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 19:21:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 518586F630;
	Wed, 29 Jan 2020 18:21:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A6C06F630
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 18:21:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 10:21:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,378,1574150400"; d="scan'208";a="232548207"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 29 Jan 2020 10:20:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Jan 2020 20:20:57 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Jan 2020 20:20:34 +0200
Message-Id: <20200129182034.26138-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200129182034.26138-1-ville.syrjala@linux.intel.com>
References: <20200129182034.26138-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 9/9] drm/i915/dsb: Nuke the 'dev' variables
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk5v
IHBvaW50IGluIGhhdmluZyB0aGVzZSBkcm1fZGV2aWNlIHZhcmlhYmxlcyBhcm91bmQuIEdldCBy
aWQgb2YgdGhlbS4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kc2IuYyB8IDYgKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA0IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHNiLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCmluZGV4
IDU2NzkwZmFlNjM4Ni4uYzk3YjY0NDAxYzIzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHNiLmMKQEAgLTU3LDggKzU3LDcgQEAgc3RhdGljIGlubGluZSBib29sIGlzX2Rz
Yl9idXN5KHN0cnVjdCBpbnRlbF9kc2IgKmRzYikKIHN0cnVjdCBpbnRlbF9kc2IgKgogaW50ZWxf
ZHNiX2dldChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKIHsKLQlzdHJ1Y3QgZHJtX2RldmljZSAq
ZGV2ID0gY3J0Yy0+YmFzZS5kZXY7Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0
b19pOTE1KGRldik7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGNy
dGMtPmJhc2UuZGV2KTsKIAlzdHJ1Y3QgaW50ZWxfZHNiICpkc2IgPSAmY3J0Yy0+ZHNiOwogCXN0
cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpvYmo7CiAJc3RydWN0IGk5MTVfdm1hICp2bWE7CkBA
IC0yNzYsOCArMjc1LDcgQEAgc3RhdGljIHUzMiBpbnRlbF9kc2JfYWxpZ25fdGFpbChzdHJ1Y3Qg
aW50ZWxfZHNiICpkc2IpCiB2b2lkIGludGVsX2RzYl9jb21taXQoc3RydWN0IGludGVsX2RzYiAq
ZHNiKQogewogCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gY29udGFpbmVyX29mKGRzYiwgdHlw
ZW9mKCpjcnRjKSwgZHNiKTsKLQlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gY3J0Yy0+YmFzZS5k
ZXY7Ci0Jc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShkZXYpOwor
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5k
ZXYpOwogCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsKIAl1MzIgdGFpbDsKIAotLSAKMi4y
NC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
