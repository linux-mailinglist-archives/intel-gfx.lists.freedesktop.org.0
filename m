Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04D863C9BFD
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jul 2021 11:35:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 571FD6E7F1;
	Thu, 15 Jul 2021 09:35:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46CEB6E7EF
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jul 2021 09:35:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10045"; a="207490955"
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="207490955"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2021 02:35:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,240,1620716400"; d="scan'208";a="495367756"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 15 Jul 2021 02:35:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 15 Jul 2021 12:35:35 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 15 Jul 2021 12:35:19 +0300
Message-Id: <20210715093530.31711-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210715093530.31711-1-ville.syrjala@linux.intel.com>
References: <20210715093530.31711-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/13] drm/i915: Clean up gen2 DPLL readout
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClRo
ZSBjdXJyZW50IGdlbjIgRFBMTCByZWFkb3V0IGNvZGU6CiogYXNzdW1lcyBpODQ1L2k4NjUgaGF2
ZSBMVkRTIHdoaWNoIGlzIG5vdCB0cnVlCiogYXNzdW1lcyBvbmx5IHBpcGUgQiBjYW4gZHJpdmUg
TFZEUyAodHJ1ZSwgYnV0IG1ha2VzCiAgdGhlIGNvZGUgYXBwZWFyIGEgYml0IG1hZ2ljYWwpCiog
aGFyZCB0byBwYXJzZSBpbiBnZW5lcmFsCgpDbGVhbiBpdCB1cCBieSBjaGVja2luZyBmb3IgaTg1
eCAodGhlIG9ubHkgZ2VuMiBwbGF0Zm9ybQp3aXRoIExWRFMpIGFuZCByZXVzaW5nIGludGVsX2x2
ZHNfcG9ydF9lbmFibGVkKCkuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jIHwgMTEgKysrKysrLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA2IGlu
c2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA2NWRkYjZjYTE2ZTYuLjhhNGMzYTVlNTQ2MiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKQEAgLTY2ODUs
NyArNjY4NSw2IEBAIHN0YXRpYyB2b2lkIGk5eHhfY3J0Y19jbG9ja19nZXQoc3RydWN0IGludGVs
X2NydGMgKmNydGMsCiB7CiAJc3RydWN0IGRybV9kZXZpY2UgKmRldiA9IGNydGMtPmJhc2UuZGV2
OwogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZGV2KTsKLQll
bnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7CiAJdTMyIGRwbGwgPSBwaXBlX2NvbmZpZy0+ZHBs
bF9od19zdGF0ZS5kcGxsOwogCXUzMiBmcDsKIAlzdHJ1Y3QgZHBsbCBjbG9jazsKQEAgLTY3MzUs
MTEgKzY3MzQsMTMgQEAgc3RhdGljIHZvaWQgaTl4eF9jcnRjX2Nsb2NrX2dldChzdHJ1Y3QgaW50
ZWxfY3J0YyAqY3J0YywKIAkJZWxzZQogCQkJcG9ydF9jbG9jayA9IGk5eHhfY2FsY19kcGxsX3Bh
cmFtcyhyZWZjbGssICZjbG9jayk7CiAJfSBlbHNlIHsKLQkJdTMyIGx2ZHMgPSBJU19JODMwKGRl
dl9wcml2KSA/IDAgOiBpbnRlbF9kZV9yZWFkKGRldl9wcml2LAotCQkJCQkJCQkgTFZEUyk7Ci0J
CWJvb2wgaXNfbHZkcyA9IChwaXBlID09IDEpICYmIChsdmRzICYgTFZEU19QT1JUX0VOKTsKKwkJ
ZW51bSBwaXBlIGx2ZHNfcGlwZTsKKworCQlpZiAoSVNfSTg1WChkZXZfcHJpdikgJiYKKwkJICAg
IGludGVsX2x2ZHNfcG9ydF9lbmFibGVkKGRldl9wcml2LCBMVkRTLCAmbHZkc19waXBlKSAmJgor
CQkgICAgbHZkc19waXBlID09IGNydGMtPnBpcGUpIHsKKwkJCXUzMiBsdmRzID0gaW50ZWxfZGVf
cmVhZChkZXZfcHJpdiwgTFZEUyk7CiAKLQkJaWYgKGlzX2x2ZHMpIHsKIAkJCWNsb2NrLnAxID0g
ZmZzKChkcGxsICYgRFBMTF9GUEEwMV9QMV9QT1NUX0RJVl9NQVNLX0k4MzBfTFZEUykgPj4KIAkJ
CQkgICAgICAgRFBMTF9GUEEwMV9QMV9QT1NUX0RJVl9TSElGVCk7CiAKLS0gCjIuMzEuMQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
