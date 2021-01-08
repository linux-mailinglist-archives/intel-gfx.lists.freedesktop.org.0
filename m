Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 312492EF78B
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 19:41:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F4FA6E88E;
	Fri,  8 Jan 2021 18:41:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F10946E88C
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 18:41:07 +0000 (UTC)
IronPort-SDR: vtsaUMEddsgfFvy10TTQlwDtrSzSHb6u53R+sDGVmpv7c3sLLVFeZZdQikSbbUwn0n2xfDbce7
 hdDzNZOhzX8g==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="177738118"
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="177738118"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 10:41:07 -0800
IronPort-SDR: 5yuNhsCyfMJ1TqbJJCCo+2gg5IeWXEr0ckEA/ET2VekZxV+IloSg1BnLB18Z92ADnNjnVHcp4C
 KNm/gRWNBFSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="344298132"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 08 Jan 2021 10:41:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 08 Jan 2021 20:41:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jan 2021 20:40:53 +0200
Message-Id: <20210108184101.30972-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210108184101.30972-1-ville.syrjala@linux.intel.com>
References: <20210108184101.30972-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/9] drm/i915: Drop redundant parens
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkRy
b3AgdGhlIHBvaW50bGVzcyBleHRyYSBwYXJlbnMuCgpDYzogS2FydGhpayBCIFMgPGthcnRoaWsu
Yi5zQGludGVsLmNvbT4KQ2M6IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50
ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGlu
dXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgfCAyICst
CiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9pcnEuYwppbmRleCBkZDE5NzEwNDBiYmMuLjQ0ODQ2MDlkODcwZCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2lycS5jCkBAIC0yMDc5LDcgKzIwNzksNyBAQCBzdGF0aWMgdm9pZCBpdmJfZGlz
cGxheV9pcnFfaGFuZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCWlu
dGVsX29wcmVnaW9uX2FzbGVfaW50cihkZXZfcHJpdik7CiAKIAlmb3JfZWFjaF9waXBlKGRldl9w
cml2LCBwaXBlKSB7Ci0JCWlmIChkZV9paXIgJiAoREVfUElQRV9WQkxBTktfSVZCKHBpcGUpKSkK
KwkJaWYgKGRlX2lpciAmIERFX1BJUEVfVkJMQU5LX0lWQihwaXBlKSkKIAkJCWludGVsX2hhbmRs
ZV92YmxhbmsoZGV2X3ByaXYsIHBpcGUpOwogCX0KIAotLSAKMi4yNi4yCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
