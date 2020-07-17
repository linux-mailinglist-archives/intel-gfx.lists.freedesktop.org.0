Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2B82245A9
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 23:14:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 754C66E197;
	Fri, 17 Jul 2020 21:13:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B47FD6E197
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 21:13:57 +0000 (UTC)
IronPort-SDR: d82UQhuOwTgeBQJ3Q4Gh3ma2uuYp97hOstHWKje2STlTkjqkUifozUigoYpMJloog/mE1/ogsA
 hNTxwsbGpIPA==
X-IronPort-AV: E=McAfee;i="6000,8403,9685"; a="211225307"
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="211225307"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2020 14:13:57 -0700
IronPort-SDR: fvPOG6WhSnt1/9rubiUAEm2FIY1yh90cpQy1mtYZPDBqY1smphvuVuxxvqFPOMMjCUv8JlL5Yb
 n47qKfJPwWpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,364,1589266800"; d="scan'208";a="269624776"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 17 Jul 2020 14:13:55 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 18 Jul 2020 00:13:54 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 18 Jul 2020 00:13:28 +0300
Message-Id: <20200717211345.26851-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
References: <20200717211345.26851-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/20] drm/i915: Include the LUT sizes in the
 state dump
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkR1
bXAgdGhlIHNpemVzIG9mIHRoZSBzb2Z0d2FyZSBMVVRzIGluIHRoZSBzdGF0ZSBkdW1wLiBNYWtl
cwppdCBhIGJpdCBlYXNpZXIgdG8gc2VlIHdoaWNoIGlzIGlzIHByZXNlbnQgd2l0aG91dCBoYXZp
bmcgdG8KZGVjb2RlIGl0IGZyb20gdGhlIGdhbW1hX21vZGUgYW5kIG90aGVyIGJpdHMgb2Ygc3Rh
dGUuCgpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jIHwgNiArKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGMzNjM3OWNmMDdm
Yy4uOTI3OWRmNzc1N2ZjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYwpAQCAtMTMxMzEsNiArMTMxMzEsMTIgQEAgc3RhdGljIHZvaWQgaW50ZWxfZHVt
cF9waXBlX2NvbmZpZyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25maWcs
CiAJCQkgICAgcGlwZV9jb25maWctPmNzY19tb2RlLCBwaXBlX2NvbmZpZy0+Z2FtbWFfbW9kZSwK
IAkJCSAgICBwaXBlX2NvbmZpZy0+Z2FtbWFfZW5hYmxlLCBwaXBlX2NvbmZpZy0+Y3NjX2VuYWJs
ZSk7CiAKKwlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwgImRlZ2FtbWEgbHV0OiAlZCBlbnRy
aWVzLCBnYW1tYSBsdXQ6ICVkIGVudHJpZXNcbiIsCisJCSAgICBwaXBlX2NvbmZpZy0+aHcuZGVn
YW1tYV9sdXQgPworCQkgICAgZHJtX2NvbG9yX2x1dF9zaXplKHBpcGVfY29uZmlnLT5ody5kZWdh
bW1hX2x1dCkgOiAwLAorCQkgICAgcGlwZV9jb25maWctPmh3LmdhbW1hX2x1dCA/CisJCSAgICBk
cm1fY29sb3JfbHV0X3NpemUocGlwZV9jb25maWctPmh3LmdhbW1hX2x1dCkgOiAwKTsKKwogZHVt
cF9wbGFuZXM6CiAJaWYgKCFzdGF0ZSkKIAkJcmV0dXJuOwotLSAKMi4yNi4yCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
