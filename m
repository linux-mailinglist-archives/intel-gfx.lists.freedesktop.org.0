Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25C0B222990
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 19:21:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0C646EC93;
	Thu, 16 Jul 2020 17:21:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7C7E6EC93
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 17:21:15 +0000 (UTC)
IronPort-SDR: Q68hrK8qxn43b9sbL+RG+0OFn2jYmigfeoPom9e/m6Fz4z6Q28/t1xQlr2KwW5BKQIiBvnGTfx
 ELyrA5Y0vRQA==
X-IronPort-AV: E=McAfee;i="6000,8403,9684"; a="129015329"
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="129015329"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2020 10:21:14 -0700
IronPort-SDR: +uNil5C6o63+ZO9uOYlJSso9h8JktaXOVQesoJYdq0Utj9yDixeWRFqIFolEjsUs+soaXvOEXw
 RgnRhs8mxpYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,360,1589266800"; d="scan'208";a="300307131"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 16 Jul 2020 10:21:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jul 2020 20:21:12 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 20:20:54 +0300
Message-Id: <20200716172106.2656-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
References: <20200716172106.2656-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/14] drm/i915: Reclassify SKL 0x192a as GT3
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
aWZ5IDB4MTkyQSBhY2NvcmRpbmcgdG8gc3BlY2lmaWNhdGlvbnMuIE9mIG5vdGUsIHRoZQpzZWNv
bmQgdG8gbGFzdCBkaWdpdCBzZWVtcyB0byBjb3JyZXNwb25kIHRvIEdUIy4KClNpZ25lZC1vZmYt
Ynk6IEFsZXhlaSBQb2R0ZWxlemhuaWtvdiA8YXBvZHRlbGVAZ21haWwuY29tPgpbdnN5cmphbGE6
IFNwbGl0IHNlcGFyYXRlIGNoYW5nZXMgaW50byBzZXBhcmF0ZSBwYXRjaGVzXQpTaWduZWQtb2Zm
LWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0K
IGluY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmggfCAyICstCiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9pOTE1X3Bj
aWlkcy5oIGIvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaAppbmRleCA1MTgzMWM2ZjYwM2MuLmQ0
YzA1NGUzYjk1ZiAxMDA2NDQKLS0tIGEvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaAorKysgYi9p
bmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oCkBAIC0zNjMsNiArMzYzLDcgQEAKIAlJTlRFTF9TS0xf
VUxUX0dUM19JRFMoaW5mbyksIFwKIAlJTlRFTF9WR0FfREVWSUNFKDB4MTkyMywgaW5mbyksIC8q
IFVMVCBHVDMgKi8gXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHgxOTI3LCBpbmZvKSwgLyogVUxUIEdU
MyAqLyBcCisJSU5URUxfVkdBX0RFVklDRSgweDE5MkEsIGluZm8pLCAvKiBTUlYgR1QzICovIFwK
IAlJTlRFTF9WR0FfREVWSUNFKDB4MTkyQiwgaW5mbyksIC8qIEhhbG8gR1QzICovIFwKIAlJTlRF
TF9WR0FfREVWSUNFKDB4MTkyRCwgaW5mbykgIC8qIFNSViBHVDMgKi8KIApAQCAtMzcwLDcgKzM3
MSw2IEBACiAJSU5URUxfVkdBX0RFVklDRSgweDE5MzIsIGluZm8pLCAvKiBEVCBHVDQgKi8gXAog
CUlOVEVMX1ZHQV9ERVZJQ0UoMHgxOTNCLCBpbmZvKSwgLyogSGFsbyBHVDQgKi8gXAogCUlOVEVM
X1ZHQV9ERVZJQ0UoMHgxOTNELCBpbmZvKSwgLyogV0tTIEdUNCAqLyBcCi0JSU5URUxfVkdBX0RF
VklDRSgweDE5MkEsIGluZm8pLCAvKiBTUlYgR1Q0ICovIFwKIAlJTlRFTF9WR0FfREVWSUNFKDB4
MTkzQSwgaW5mbykgIC8qIFNSViBHVDRlICovCiAKICNkZWZpbmUgSU5URUxfU0tMX0lEUyhpbmZv
KQkgXAotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
