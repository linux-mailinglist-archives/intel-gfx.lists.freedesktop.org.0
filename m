Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C33EC380A03
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 14:58:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 382856EE73;
	Fri, 14 May 2021 12:58:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FA666EE73
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 12:58:36 +0000 (UTC)
IronPort-SDR: QJ/nH19/+f+T+WGa49RIyBORuGAF0qt4+zZO/LP4hsspdN9JqdlG5D1sN0R6y2FliEdb7uSIfq
 ggTivtQ3dD2A==
X-IronPort-AV: E=McAfee;i="6200,9189,9983"; a="187584484"
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="187584484"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 05:58:35 -0700
IronPort-SDR: pbAI3SoHe1poiKMr+lU9I6QAmdQouE2mF9wkDYmj71dg4S82VTEXM+ZMUySp/3fcShUtXO/kaS
 8psSguWa2oiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,299,1613462400"; d="scan'208";a="463841101"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 14 May 2021 05:58:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 14 May 2021 15:58:31 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 15:57:51 +0300
Message-Id: <20210514125751.17075-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210514125751.17075-1-ville.syrjala@linux.intel.com>
References: <20210514125751.17075-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/14] drm/i915: Enable atomic by default on
 ctg/elk
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
ZSB3YXRlcm1hcmsgY29kZSBmb3IgY3RnL2VsayBoYXMgYmVlbiBhdG9taWMgcmVhZHkgZm9yIGEg
bG9uZyB0aW1lCnNvIGxldCdzIGp1c3QgZmxpcCB0aGUgc3dpdGNoIG5vdyB0aGF0IHNvbWUgb2Yg
dGhlIGxhc3QgQ3hTUiBpc3N1ZXMKaGF2ZSBiZWVuIHNvcnRlZCBvdXQgKHdoaWNoIGdyYW50ZWQg
d2FzIGEgcHJvYmxlbSBmb3Igdmx2L2NodiBhcyB3ZWxsCmRlc3BpdGUgdGhlbSBhbHJlYWR5IGhh
dmluZyBhdG9taWMgZW5hYmxlZCBieSBkZWZhdWx0KS4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5
cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuYyB8IDcgKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwppbmRleCA1MTE4
ZGM4Mzg2YjIuLjA4MmM2NzNjMmZiOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCkBAIC03OTMs
OCArNzkzLDExIEBAIGludCBpOTE1X2RyaXZlcl9wcm9iZShzdHJ1Y3QgcGNpX2RldiAqcGRldiwg
Y29uc3Qgc3RydWN0IHBjaV9kZXZpY2VfaWQgKmVudCkKIAlpZiAoSVNfRVJSKGk5MTUpKQogCQly
ZXR1cm4gUFRSX0VSUihpOTE1KTsKIAotCS8qIERpc2FibGUgbnVjbGVhciBwYWdlZmxpcCBieSBk
ZWZhdWx0IG9uIHByZS1JTEsgKi8KLQlpZiAoIWk5MTUtPnBhcmFtcy5udWNsZWFyX3BhZ2VmbGlw
ICYmIG1hdGNoX2luZm8tPmdyYXBoaWNzX3ZlciA8IDUpCisJLyogRGlzYWJsZSBudWNsZWFyIHBh
Z2VmbGlwIGJ5IGRlZmF1bHQgb24gcHJlLUNURy9FTEsgKi8KKwlpZiAoIWk5MTUtPnBhcmFtcy5u
dWNsZWFyX3BhZ2VmbGlwICYmCisJICAgIG1hdGNoX2luZm8tPmdyYXBoaWNzX3ZlciA8IDUgJiYK
KwkgICAgbWF0Y2hfaW5mby0+cGxhdGZvcm0gIT0gSU5URUxfRzQ1ICYmCisJICAgIG1hdGNoX2lu
Zm8tPnBsYXRmb3JtICE9IElOVEVMX0dNNDUpCiAJCWk5MTUtPmRybS5kcml2ZXJfZmVhdHVyZXMg
Jj0gfkRSSVZFUl9BVE9NSUM7CiAKIAkvKgotLSAKMi4yNi4zCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
