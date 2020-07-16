Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CEB612229A2
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 19:21:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4803F6EC97;
	Thu, 16 Jul 2020 17:21:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6164A6EC97
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 17:21:33 +0000 (UTC)
IronPort-SDR: hjMBAV0dm0jhHIdod7SpcH+2cfEcQV9rFkQ9Ke/CH3+GtjXc++f2QXYpGIiGRflt0Sf9tBMCDF
 noGqCX5fWAoA==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="148605063"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="148605063"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 10:21:32 -0700
IronPort-SDR: 513q0u1Ci60MPlo/+zrMsLzGBlRb2sOFs2FoJsWpwXc4jcFQv4vhPmNhcy6ZBDBndHYT+oJeMN
 XPXNOZ+TF4zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="270611036"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 16 Jul 2020 10:21:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jul 2020 20:21:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 20:21:00 +0300
Message-Id: <20200716172106.2656-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
References: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/14] drm/i915: Sort SKL PCI IDs
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KClNv
cnQgdGhlIFNLTCBQQ0kgSURzIG51bWVyaWNhbGx5LiBTb21lIG9yZGVyIHNlZW1zIGJldHRlciB0
aGFuCnJhbmRvbW5lc3MuCgpDYzogQWxleGVpIFBvZHRlbGV6aG5pa292IDxhcG9kdGVsZUBnbWFp
bC5jb20+ClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+Ci0tLQogaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCB8IDggKysrKy0tLS0K
IDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCBiL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRz
LmgKaW5kZXggNDg3MGMzYzlmOWIyLi41MTg1YWM3ODkwMzggMTAwNjQ0Ci0tLSBhL2luY2x1ZGUv
ZHJtL2k5MTVfcGNpaWRzLmgKKysrIGIvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaApAQCAtMzQw
LDggKzM0MCw4IEBACiAJSU5URUxfU0tMX1VMVF9HVDFfSURTKGluZm8pLCBcCiAJSU5URUxfU0tM
X1VMWF9HVDFfSURTKGluZm8pLCBcCiAJSU5URUxfVkdBX0RFVklDRSgweDE5MDIsIGluZm8pLCAv
KiBEVCAgR1QxICovIFwKLQlJTlRFTF9WR0FfREVWSUNFKDB4MTkwQiwgaW5mbyksIC8qIEhhbG8g
R1QxICovIFwKIAlJTlRFTF9WR0FfREVWSUNFKDB4MTkwQSwgaW5mbyksIC8qIFNSViBHVDEgKi8g
XAorCUlOVEVMX1ZHQV9ERVZJQ0UoMHgxOTBCLCBpbmZvKSwgLyogSGFsbyBHVDEgKi8gXAogCUlO
VEVMX1ZHQV9ERVZJQ0UoMHgxOTE3LCBpbmZvKSAgLyogRFQgIEdUMS41ICovCiAKICNkZWZpbmUg
SU5URUxfU0tMX1VMVF9HVDJfSURTKGluZm8pIFwKQEAgLTM1NSw4ICszNTUsOCBAQAogCUlOVEVM
X1NLTF9VTFRfR1QyX0lEUyhpbmZvKSwgXAogCUlOVEVMX1NLTF9VTFhfR1QyX0lEUyhpbmZvKSwg
XAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHgxOTEyLCBpbmZvKSwgLyogRFQgIEdUMiAqLyBcCi0JSU5U
RUxfVkdBX0RFVklDRSgweDE5MUIsIGluZm8pLCAvKiBIYWxvIEdUMiAqLyBcCiAJSU5URUxfVkdB
X0RFVklDRSgweDE5MUEsIGluZm8pLCAvKiBTUlYgR1QyICovIFwKKwlJTlRFTF9WR0FfREVWSUNF
KDB4MTkxQiwgaW5mbyksIC8qIEhhbG8gR1QyICovIFwKIAlJTlRFTF9WR0FfREVWSUNFKDB4MTkx
RCwgaW5mbykgIC8qIFdLUyBHVDIgKi8KIAogI2RlZmluZSBJTlRFTF9TS0xfVUxUX0dUM19JRFMo
aW5mbykgXApAQCAtMzcyLDkgKzM3Miw5IEBACiAKICNkZWZpbmUgSU5URUxfU0tMX0dUNF9JRFMo
aW5mbykgXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHgxOTMyLCBpbmZvKSwgLyogRFQgR1Q0ICovIFwK
KwlJTlRFTF9WR0FfREVWSUNFKDB4MTkzQSwgaW5mbyksIC8qIFNSViBHVDRlICovIFwKIAlJTlRF
TF9WR0FfREVWSUNFKDB4MTkzQiwgaW5mbyksIC8qIEhhbG8gR1Q0ZSAqLyBcCi0JSU5URUxfVkdB
X0RFVklDRSgweDE5M0QsIGluZm8pLCAvKiBXS1MgR1Q0ZSAqLyBcCi0JSU5URUxfVkdBX0RFVklD
RSgweDE5M0EsIGluZm8pICAvKiBTUlYgR1Q0ZSAqLworCUlOVEVMX1ZHQV9ERVZJQ0UoMHgxOTNE
LCBpbmZvKSAvKiBXS1MgR1Q0ZSAqLwogCiAjZGVmaW5lIElOVEVMX1NLTF9JRFMoaW5mbykJIFwK
IAlJTlRFTF9TS0xfR1QxX0lEUyhpbmZvKSwgXAotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
