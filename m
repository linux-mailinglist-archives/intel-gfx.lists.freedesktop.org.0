Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFAE965F24
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2019 19:56:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09E156E299;
	Thu, 11 Jul 2019 17:55:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2392C6E26D
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2019 17:55:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jul 2019 10:55:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,479,1557212400"; d="scan'208";a="156894691"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.24.8.246])
 by orsmga007.jf.intel.com with ESMTP; 11 Jul 2019 10:55:52 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Jul 2019 10:31:07 -0700
Message-Id: <20190711173115.28296-14-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190711173115.28296-1-lucas.demarchi@intel.com>
References: <20190711173115.28296-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 13/21] drm/i915/tgl: Add additional PHYs for
 Tiger Lake
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

VGlnZXIgTGFrZSBoYXMgdXAgdG8gMyBjb21ibyBwaHlzIGFuZCA2IFRDIHBoeXMuIEV4dGVuZCB0
aGUgaGVscGVyCmNvbnZlcnNpb24gZnVuY3Rpb25zIGZyb20gcG9ydCB0byBwaHkuCgpTaWduZWQt
b2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDUgKysrKy0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oIHwgMyArKysKIDIgZmls
ZXMgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCAxZDZkYzczZGZjODEuLmJh
NDhmZWRkNjg1YiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMKQEAgLTY2NzYsNyArNjY3Niw3IEBAIGJvb2wgaW50ZWxfcGh5X2lzX2NvbWJvKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwaHkgcGh5KQogCWlmIChwaHkgPT0g
UEhZX05PTkUpCiAJCXJldHVybiBmYWxzZTsKIAotCWlmIChJU19FTEtIQVJUTEFLRShkZXZfcHJp
dikpCisJaWYgKElTX0VMS0hBUlRMQUtFKGRldl9wcml2KSB8fCBJTlRFTF9HRU4oZGV2X3ByaXYp
ID49IDEyKQogCQlyZXR1cm4gcGh5IDw9IFBIWV9DOwogCiAJaWYgKElOVEVMX0dFTihkZXZfcHJp
dikgPj0gMTEpCkBAIC02Njg3LDYgKzY2ODcsOSBAQCBib29sIGludGVsX3BoeV9pc19jb21ibyhz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGVudW0gcGh5IHBoeSkKIAogYm9vbCBp
bnRlbF9waHlfaXNfdGMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBlbnVtIHBo
eSBwaHkpCiB7CisJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTIpCisJCXJldHVybiBwaHkg
Pj0gUEhZX0QgJiYgcGh5IDw9IFBIWV9JOworCiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0g
MTEgJiYgIUlTX0VMS0hBUlRMQUtFKGRldl9wcml2KSkKIAkJcmV0dXJuIHBoeSA+PSBQSFlfQyAm
JiBwaHkgPD0gUEhZX0Y7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmgKaW5kZXggNzJjZTI3MDc5YTU2Li45MjkzMWRjMjY0NzAgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCkBAIC0yNDksNiArMjQ5LDkgQEAg
ZW51bSBwaHkgewogCVBIWV9ELAogCVBIWV9FLAogCVBIWV9GLAorCVBIWV9HLAorCVBIWV9ILAor
CVBIWV9JLAogCiAJSTkxNV9NQVhfUEhZUwogfTsKLS0gCjIuMjEuMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
