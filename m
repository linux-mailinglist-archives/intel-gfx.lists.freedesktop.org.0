Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 044FE3809F6
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 14:58:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E7A66EE63;
	Fri, 14 May 2021 12:58:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D45F46EE63
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 12:58:09 +0000 (UTC)
IronPort-SDR: z0r76zqra9mTaRlRDOsq+moOvCRDEe9RD0L4+xuTyg+umDSzRBkucvWKM+SZaXTkVYVh2p4wJC
 CrtrXdfjV6lw==
X-IronPort-AV: E=McAfee;i="6200,9189,9983"; a="198216669"
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="198216669"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 05:58:09 -0700
IronPort-SDR: EZARn0Au31mM1MWGaveCnh/EuUV55KTwJ2T5Leqe2aF+XaQtvPM0hLIP5RPJDutivpmlLlQ3nv
 xVTzdEK5x7CQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="463840962"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 14 May 2021 05:58:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 14 May 2021 15:58:06 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 15:57:42 +0300
Message-Id: <20210514125751.17075-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210514125751.17075-1-ville.syrjala@linux.intel.com>
References: <20210514125751.17075-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 05/14] drm/i915: Fix HPLL watermark readout for
 g4x
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCklm
IEhQTEwgd2F0ZXJtYXJrcyBhcmUgYWxyZWFkeSBlbmFibGVkLCBsZXQncyBub3QgbWFyayB0aGVt
IGFzCmRpc2FibGVkIGJ5IGZvcmdldHRpbmcgdG8gYnVtcCAnbGV2ZWwnIGJlZm9yZSB3ZSBjYWxs
Cmc0eF9yYXdfcGxhbmVfd21fc2V0KCkuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6Qg
PHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3BtLmMgfCA3ICsrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxf
cG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKaW5kZXggNjYxYmM2ZmRmMzhj
Li45OTBlZTVhNTkwZDMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bt
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwpAQCAtNjQ2OCw3ICs2NDY4
LDggQEAgdm9pZCBnNHhfd21fZ2V0X2h3X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikKIAkJZm9yX2VhY2hfcGxhbmVfaWRfb25fY3J0YyhjcnRjLCBwbGFuZV9pZCkKIAkJ
CXJhdy0+cGxhbmVbcGxhbmVfaWRdID0gYWN0aXZlLT53bS5wbGFuZVtwbGFuZV9pZF07CiAKLQkJ
aWYgKCsrbGV2ZWwgPiBtYXhfbGV2ZWwpCisJCWxldmVsID0gRzRYX1dNX0xFVkVMX1NSOworCQlp
ZiAobGV2ZWwgPiBtYXhfbGV2ZWwpCiAJCQlnb3RvIG91dDsKIAogCQlyYXcgPSAmY3J0Y19zdGF0
ZS0+d20uZzR4LnJhd1tsZXZlbF07CkBAIC02NDc3LDcgKzY0NzgsOCBAQCB2b2lkIGc0eF93bV9n
ZXRfaHdfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCQlyYXctPnBs
YW5lW1BMQU5FX1NQUklURTBdID0gMDsKIAkJcmF3LT5mYmMgPSBhY3RpdmUtPnNyLmZiYzsKIAot
CQlpZiAoKytsZXZlbCA+IG1heF9sZXZlbCkKKwkJbGV2ZWwgPSBHNFhfV01fTEVWRUxfSFBMTDsK
KwkJaWYgKGxldmVsID4gbWF4X2xldmVsKQogCQkJZ290byBvdXQ7CiAKIAkJcmF3ID0gJmNydGNf
c3RhdGUtPndtLmc0eC5yYXdbbGV2ZWxdOwpAQCAtNjQ4Niw2ICs2NDg4LDcgQEAgdm9pZCBnNHhf
d21fZ2V0X2h3X3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkJcmF3
LT5wbGFuZVtQTEFORV9TUFJJVEUwXSA9IDA7CiAJCXJhdy0+ZmJjID0gYWN0aXZlLT5ocGxsLmZi
YzsKIAorCQlsZXZlbCsrOwogCW91dDoKIAkJZm9yX2VhY2hfcGxhbmVfaWRfb25fY3J0YyhjcnRj
LCBwbGFuZV9pZCkKIAkJCWc0eF9yYXdfcGxhbmVfd21fc2V0KGNydGNfc3RhdGUsIGxldmVsLAot
LSAKMi4yNi4zCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
