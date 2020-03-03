Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09D36177D89
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 18:33:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F99D6E92A;
	Tue,  3 Mar 2020 17:33:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97C016E92A
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 17:33:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 09:33:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="274299003"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 03 Mar 2020 09:33:29 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 Mar 2020 19:33:28 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Mar 2020 19:33:09 +0200
Message-Id: <20200303173313.28117-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200303173313.28117-1-ville.syrjala@linux.intel.com>
References: <20200303173313.28117-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 5/9] drm/i915:
 s/chv_read_cgm_lut/chv_read_cgm_gamma/
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmNo
dl9yZWFkX2NnbV9sdXQoKSBzcGVjaWZpY2FsbHkgcmVhZHMgdGhlIENHTSBfZ2FtbWFfIExVVCBz
bwpsZXQncyByZW5hbWUgaXQgdG8gcmVmbGVjdCB0aGF0IGZhY3QuIFRoaXMgYWxzbyBtaXJyb3Jz
CnRoZSBvdGhlciBkaXJlY3Rpb24ncyBjaHZfbG9hZF9jZ21fZ2FtbWEoKS4KClNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jIHwgNCArKy0tCiAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwppbmRleCBmOTBmMTEzMzU1YmMuLmFiMjNi
MjRlN2JlMyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9j
b2xvci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29sb3IuYwpA
QCAtMTc4MCw3ICsxNzgwLDcgQEAgc3RhdGljIHZvaWQgaTk2NV9yZWFkX2x1dHMoc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCiB9CiAKIHN0YXRpYyBzdHJ1Y3QgZHJtX3Byb3Bl
cnR5X2Jsb2IgKgotY2h2X3JlYWRfY2dtX2x1dChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSkKK2Nodl9yZWFkX2NnbV9nYW1tYShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsKIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2lu
dGVsX2NydGMoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsKIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKQEAgLTE4MTYsNyArMTgxNiw3
IEBAIGNodl9yZWFkX2NnbV9sdXQoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUpCiBzdGF0aWMgdm9pZCBjaHZfcmVhZF9sdXRzKHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRl
ICpjcnRjX3N0YXRlKQogewogCWlmIChjcnRjX3N0YXRlLT5jZ21fbW9kZSAmIENHTV9QSVBFX01P
REVfR0FNTUEpCi0JCWNydGNfc3RhdGUtPmh3LmdhbW1hX2x1dCA9IGNodl9yZWFkX2NnbV9sdXQo
Y3J0Y19zdGF0ZSk7CisJCWNydGNfc3RhdGUtPmh3LmdhbW1hX2x1dCA9IGNodl9yZWFkX2NnbV9n
YW1tYShjcnRjX3N0YXRlKTsKIAllbHNlCiAJCWk5NjVfcmVhZF9sdXRzKGNydGNfc3RhdGUpOwog
fQotLSAKMi4yNC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
