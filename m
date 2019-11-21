Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 679341058C2
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 18:40:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 363936F4BF;
	Thu, 21 Nov 2019 17:40:34 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CA646F4C0
 for <Intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2019 17:40:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Nov 2019 09:40:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,226,1571727600"; d="scan'208";a="219168320"
Received: from cataylo2-ubuntu18-10.jf.intel.com ([10.7.199.54])
 by orsmga002.jf.intel.com with ESMTP; 21 Nov 2019 09:40:32 -0800
From: clinton.a.taylor@intel.com
To: Intel-gfx@lists.freedesktop.org
Date: Thu, 21 Nov 2019 09:40:30 -0800
Message-Id: <20191121174030.1037-1-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20191120234020.29887-1-clinton.a.taylor@intel.com>
References: <20191120234020.29887-1-clinton.a.taylor@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Disable display interrupts during
 display IRQ handler
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogQ2xpbnQgVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KCkR1cmluZyB0
aGUgRGlzcGxheSBJbnRlcnJ1cHQgU2VydmljZSByb3V0aW5lIHRoZSBEaXNwbGF5IEludGVycnVw
dApFbmFibGUgYml0IG11c3QgYmUgZGlzYWJsZWQsIFRoZSBpbnRlcnJ1cHRzIGhhbmRsZWQsIHRo
ZW4gdGhlCkRpc3BsYXkgSW50ZXJydXB0IEVuYWJsZSBiaXQgbXVzdCBiZSBzZXQgdG8gcHJldmVu
dCBwb3NzaWJsZSBtaXNzZWQKaW50ZXJydXB0cy4KCkJzcGVjOiA0OTIxMgpDYzogTHVjYXMgRGUg
TWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CkNjOiBBZGl0eWEgU3dhcnVwIDxhZGl0
eWEuc3dhcnVwQGludGVsLmNvbT4KClJldmlld2VkLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQu
cm9wZXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBDbGludCBUYXlsb3IgPGNsaW50b24uYS50
YXlsb3JAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgfCA0
ICsrKysKIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9p
cnEuYwppbmRleCBkYWUwMGY3ZGQ3ZGYuLjQzNDM0MjczYTA4YSAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2lycS5jCkBAIC0yNDg0LDcgKzI0ODQsMTEgQEAgX19nZW4xMV9pcnFfaGFuZGxlcihzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqIGNvbnN0IGk5MTUsCiAJCSAqIEdFTjExX0RJU1BMQVlfSU5UX0NU
TCBoYXMgc2FtZSBmb3JtYXQgYXMgR0VOOF9NQVNURVJfSVJRCiAJCSAqIGZvciB0aGUgZGlzcGxh
eSByZWxhdGVkIGJpdHMuCiAJCSAqLworCQlyYXdfcmVnX3dyaXRlKHJlZ3MsIEdFTjExX0RJU1BM
QVlfSU5UX0NUTCwgMHgwKTsKIAkJZ2VuOF9kZV9pcnFfaGFuZGxlcihpOTE1LCBkaXNwX2N0bCk7
CisJCXJhd19yZWdfd3JpdGUocmVncywgR0VOMTFfRElTUExBWV9JTlRfQ1RMLAorCQkJCQkgIEdF
TjExX0RJU1BMQVlfSVJRX0VOQUJMRSk7CisKIAkJZW5hYmxlX3JwbV93YWtlcmVmX2Fzc2VydHMo
Jmk5MTUtPnJ1bnRpbWVfcG0pOwogCX0KIAotLSAKMi4xOS4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
