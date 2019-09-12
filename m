Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2430B101D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 15:38:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BB9D6ED6F;
	Thu, 12 Sep 2019 13:38:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 539506ED6F
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 13:38:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 06:38:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,497,1559545200"; d="scan'208";a="215045890"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by fmsmga002.fm.intel.com with ESMTP; 12 Sep 2019 06:38:26 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id C5BA5843D1B; Thu, 12 Sep 2019 16:38:20 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Sep 2019 16:38:15 +0300
Message-Id: <20190912133816.1382-3-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190912133816.1382-1-mika.kuoppala@linux.intel.com>
References: <20190912133816.1382-1-mika.kuoppala@linux.intel.com>
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/tgl: Re-enable rc6
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

V2UgdGhpbmsgdGhhdCB3ZSBnb3QgcmM2IHByb2JsZW1zIHNvcnRlZCBvdXQuIEZsaXAgdGhlIHN3
aXRjaAphbmQgbGV0IENJIGV4cG9zZSBvdXIgdGVuZGVuY3kgdG8gbmFpdmUgb3B0aW1pc20uCgpT
aWduZWQtb2ZmLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jIHwgMSAtCiAxIGZpbGUgY2hh
bmdlZCwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGNpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCmluZGV4IGIzY2M4NTYw
Njk2Yi4uZmJlOThhMmRiODhlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BjaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMKQEAgLTc5Nyw3ICs3
OTcsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RldmljZV9pbmZvIGludGVsX3RpZ2Vy
bGFrZV8xMl9pbmZvID0gewogCS5kaXNwbGF5Lmhhc19tb2R1bGFyX2ZpYSA9IDEsCiAJLmVuZ2lu
ZV9tYXNrID0KIAkJQklUKFJDUzApIHwgQklUKEJDUzApIHwgQklUKFZFQ1MwKSB8IEJJVChWQ1Mw
KSB8IEJJVChWQ1MyKSwKLQkuaGFzX3JjNiA9IGZhbHNlLCAvKiBYWFggZGlzYWJsZWQgZm9yIGRl
YnVnZ2luZyAqLwogfTsKIAogI3VuZGVmIEdFTgotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
