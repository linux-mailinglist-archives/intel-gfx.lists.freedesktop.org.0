Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBE9222992
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 19:21:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38A386EC94;
	Thu, 16 Jul 2020 17:21:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E5F16EC94
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 17:21:18 +0000 (UTC)
IronPort-SDR: EFa/Zw8Df46++EN3KQ5VGASrLHma9CsdwLeGeURIdWMwiN338qZ8we3DCeh1DpqCkDeeusyKQS
 1tTG1AxCqS9w==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="210986743"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="210986743"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 10:21:17 -0700
IronPort-SDR: qM5cLi2jd9HN+VIb5xGKCI8KG1bx0d5sACbFCrjy/JTYlkg3PUjlv4rJnKii25uDFiO+tVutPP
 XN6ZOpLDxJhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="269308540"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 16 Jul 2020 10:21:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jul 2020 20:21:14 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 20:20:55 +0300
Message-Id: <20200716172106.2656-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
References: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 03/14] drm/i915: Reclassify SKL 0x1923 and
 0x1927 as ULT
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

RnJvbTogQWxleGVpIFBvZHRlbGV6aG5pa292IDxhcG9kdGVsZUBnbWFpbC5jb20+CgpSZWNsYXNz
aWZ5IDB4MTkyMywgMHgxOTI3IGFjY29yZGluZyB0byBzcGVjaWZpY2F0aW9ucy4gT2Ygbm90ZSwK
dGhlIHNlY29uZCB0byBsYXN0IGRpZ2l0IHNlZW1zIHRvIGNvcnJlc3BvbmQgdG8gR1QjLgoKU2ln
bmVkLW9mZi1ieTogQWxleGVpIFBvZHRlbGV6aG5pa292IDxhcG9kdGVsZUBnbWFpbC5jb20+Clt2
c3lyamFsYTogU3BsaXQgc2VwYXJhdGUgY2hhbmdlcyBpbnRvIHNlcGFyYXRlIHBhdGNoZXMsCiAg
ICAgICAgICAgU29ydCB0aGUgSURzXQpTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGluY2x1ZGUvZHJtL2k5MTVfcGNpaWRz
LmggfCA2ICsrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlv
bnMoLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oIGIvaW5jbHVkZS9k
cm0vaTkxNV9wY2lpZHMuaAppbmRleCBkNGMwNTRlM2I5NWYuLjlkZjM2OTdmMDc0ZCAxMDA2NDQK
LS0tIGEvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaAorKysgYi9pbmNsdWRlL2RybS9pOTE1X3Bj
aWlkcy5oCkBAIC0zNTcsMTIgKzM1NywxMiBAQAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHgxOTFELCBp
bmZvKSAgLyogV0tTIEdUMiAqLwogCiAjZGVmaW5lIElOVEVMX1NLTF9VTFRfR1QzX0lEUyhpbmZv
KSBcCi0JSU5URUxfVkdBX0RFVklDRSgweDE5MjYsIGluZm8pIC8qIFVMVCBHVDMgKi8KKwlJTlRF
TF9WR0FfREVWSUNFKDB4MTkyMywgaW5mbyksIC8qIFVMVCBHVDMgKi8gXAorCUlOVEVMX1ZHQV9E
RVZJQ0UoMHgxOTI2LCBpbmZvKSwgLyogVUxUIEdUMyAqLyBcCisJSU5URUxfVkdBX0RFVklDRSgw
eDE5MjcsIGluZm8pICAvKiBVTFQgR1QzICovCiAKICNkZWZpbmUgSU5URUxfU0tMX0dUM19JRFMo
aW5mbykgXAogCUlOVEVMX1NLTF9VTFRfR1QzX0lEUyhpbmZvKSwgXAotCUlOVEVMX1ZHQV9ERVZJ
Q0UoMHgxOTIzLCBpbmZvKSwgLyogVUxUIEdUMyAqLyBcCi0JSU5URUxfVkdBX0RFVklDRSgweDE5
MjcsIGluZm8pLCAvKiBVTFQgR1QzICovIFwKIAlJTlRFTF9WR0FfREVWSUNFKDB4MTkyQSwgaW5m
byksIC8qIFNSViBHVDMgKi8gXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHgxOTJCLCBpbmZvKSwgLyog
SGFsbyBHVDMgKi8gXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHgxOTJELCBpbmZvKSAgLyogU1JWIEdU
MyAqLwotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
