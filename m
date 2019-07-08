Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 762DF62C89
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2019 01:17:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 948936E055;
	Mon,  8 Jul 2019 23:17:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DD5989FCA
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 23:16:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 16:16:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,468,1557212400"; d="scan'208";a="316859612"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga004.jf.intel.com with ESMTP; 08 Jul 2019 16:16:56 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  8 Jul 2019 16:16:12 -0700
Message-Id: <20190708231629.9296-9-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190708231629.9296-1-lucas.demarchi@intel.com>
References: <20190708231629.9296-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 08/25] drm/i915/tgl: use TRANSCODER_EDP_VDSC
 on transcoder A
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpPbiBU
R0wgdGhlIHNwZWNpYWwgRURQIHRyYW5zY29kZXIgaXMgZ29uZSBhbmQgaXQgc2hvdWxkIGJlIGhh
bmRsZWQgYnkKdHJhbnNjb2RlciBBLgoKdjIgKEx1Y2FzKToKICAtIFJldXNlIFBPV0VSX0RPTUFJ
Tl9UUkFOU0NPREVSX0VEUF9WRFNDIChzdWdnZXN0ZWQgYnkgVmlsbGUpCiAgLSBVc2UgY3J0Yy0+
ZGV2IHNpbmNlIG5ld19jcnRjX3N0YXRlLT5zdGF0ZSBtYXkgYmUgTlVMTCBvbiBhdG9taWMKICAg
IGNvbW1pdCAoc3VnZ2VzdGVkIGJ5IE1hYXJ0ZW4pCgpDYzogSW1yZSBEZWFrIDxpbXJlLmRlYWtA
aW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNv
dXphQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1h
cmNoaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92
ZHNjLmMgfCA5ICsrKysrKy0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMyBk
ZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Zkc2MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmRzYy5jCmlu
ZGV4IGZmZWM4MDdiODk2MC4uYzI3OTEyZjU1MmYwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zkc2MuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Zkc2MuYwpAQCAtNDU5LDE2ICs0NTksMTkgQEAgaW50IGludGVsX2RwX2Nv
bXB1dGVfZHNjX3BhcmFtcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogZW51bSBpbnRlbF9k
aXNwbGF5X3Bvd2VyX2RvbWFpbgogaW50ZWxfZHNjX3Bvd2VyX2RvbWFpbihjb25zdCBzdHJ1Y3Qg
aW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKIHsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSA9IHRvX2k5MTUoY3J0Y19zdGF0ZS0+YmFzZS5jcnRjLT5kZXYpOwogCWVudW0gdHJh
bnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyOwogCiAJ
LyoKLQkgKiBPbiBJQ0wgVkRTQy9qb2luaW5nIGZvciBlRFAgdHJhbnNjb2RlciB1c2VzIGEgc2Vw
YXJhdGUgcG93ZXIgd2VsbCBQVzIKLQkgKiBUaGlzIHJlcXVpcmVzIFBPV0VSX0RPTUFJTl9UUkFO
U0NPREVSX0VEUF9WRFNDIHBvd2VyIGRvbWFpbi4KKwkgKiBPbiBJQ0wrIFZEU0Mvam9pbmluZyBm
b3IgZURQL0EgdHJhbnNjb2RlciB1c2VzIGEgc2VwYXJhdGUgcG93ZXIgd2VsbAorCSAqIFBXMi4g
VGhpcyByZXF1aXJlcyBQT1dFUl9ET01BSU5fVFJBTlNDT0RFUl9FRFBfVkRTQyBwb3dlciBkb21h
aW4uCiAJICogRm9yIGFueSBvdGhlciB0cmFuc2NvZGVyLCBWRFNDL2pvaW5pbmcgdXNlcyB0aGUg
cG93ZXIgd2VsbCBhc3NvY2lhdGVkCiAJICogd2l0aCB0aGUgcGlwZS90cmFuc2NvZGVyIGluIHVz
ZS4gSGVuY2UgYW5vdGhlciByZWZlcmVuY2Ugb24gdGhlCiAJICogdHJhbnNjb2RlciBwb3dlciBk
b21haW4gd2lsbCBzdWZmaWNlLgogCSAqLwotCWlmIChjcHVfdHJhbnNjb2RlciA9PSBUUkFOU0NP
REVSX0VEUCkKKwlpZiAoSU5URUxfR0VOKGk5MTUpID49IDEyICYmIGNwdV90cmFuc2NvZGVyID09
IFRSQU5TQ09ERVJfQSkKKwkJcmV0dXJuIFBPV0VSX0RPTUFJTl9UUkFOU0NPREVSX0VEUF9WRFND
OworCWVsc2UgaWYgKGNwdV90cmFuc2NvZGVyID09IFRSQU5TQ09ERVJfRURQKQogCQlyZXR1cm4g
UE9XRVJfRE9NQUlOX1RSQU5TQ09ERVJfRURQX1ZEU0M7CiAJZWxzZQogCQlyZXR1cm4gUE9XRVJf
RE9NQUlOX1RSQU5TQ09ERVIoY3B1X3RyYW5zY29kZXIpOwotLSAKMi4yMS4wCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
