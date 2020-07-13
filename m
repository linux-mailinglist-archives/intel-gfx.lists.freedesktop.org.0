Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C003421DF84
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jul 2020 20:23:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 310EB6E0A1;
	Mon, 13 Jul 2020 18:23:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20ECF892C2
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jul 2020 18:23:41 +0000 (UTC)
IronPort-SDR: 8AZ/ePWQuPOszWJU75jroZCb/o8LNz2B7x7nIkpSW9iXMaMO1V4U/fdEGBQSLltc9ZUdHL5DHf
 XFbR3xaApbtw==
X-IronPort-AV: E=McAfee;i="6000,8403,9681"; a="128267371"
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="128267371"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2020 11:23:40 -0700
IronPort-SDR: Um42KDOXKRvPJQd39XCJLjyMaYgmFjMm2LnvSjoQC+KGoUe7YMahmzlbxA1tCrLK70CR9jx3cu
 jph2NRgcr+Qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,348,1589266800"; d="scan'208";a="269792935"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga008.fm.intel.com with ESMTP; 13 Jul 2020 11:23:40 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Jul 2020 11:23:18 -0700
Message-Id: <20200713182321.12390-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200713182321.12390-1-lucas.demarchi@intel.com>
References: <20200713182321.12390-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 3/6] drm/i915/dg1: Add DG1 PCI IDs
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

RnJvbTogQWJkaWVsIEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgoK
QWRkIHRoZSBQQ0kgSUQgZm9yIERHMSwgYnV0IGtlZXAgaXQgb3V0IG9mIHRoZSB0YWJsZSB3ZSB1
c2UgdG8gcmVnaXN0ZXIKdGhlIGRyaXZlci4gQXQgdGhpcyBwb2ludCB3ZSBjYW4ndCBjb25zaWRl
ciB0aGUgZHJpdmVyIHJlYWR5IHRvIGJpbmQgdG8KdGhlIGRldmljZSBzaW5jZSB3ZSBiYXNpY2Fs
bHkgbWlzcyBzdXBwb3J0IGZvciBldmVyeXRoaW5nLiBXaGVuIG1vcmUKc3VwcG9ydCBpcyBtZXJn
ZWQgd2UgY2FuIGVuYWJsZSBpdCB0byB3b3JrIHBhcnRpYWxseSBmb3IgZXhhbXBsZSBhcyBhCmRp
c3BsYXktb25seSBkcml2ZXIuCgp2MjogcmVtb3ZlIERHMSBmcm9tIHRoZSBwY2kgdGFibGUgYW5k
IHJld29yZCBjb21taXQgbWVzc2FnZSAoTHVjYXMpCgpCc3BlYzogNDQ0NjMKCkNjOiBNYXR0aGV3
IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+CkNjOiBKYW1lcyBBdXNtdXMgPGphbWVzLmF1
c211c0BpbnRlbC5jb20+CkNjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51
eC5pbnRlbC5jb20+CkNjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgpT
aWduZWQtb2ZmLWJ5OiBBYmRpZWwgSmFudWxndWUgPGFiZGllbC5qYW51bGd1ZUBsaW51eC5pbnRl
bC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50
ZWwuY29tPgpSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+ICMgdjEKQWNrZWQtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3
bGwuY2g+Ci0tLQogaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCB8IDQgKysrKwogMSBmaWxlIGNo
YW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2k5MTVfcGNp
aWRzLmggYi9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oCmluZGV4IGQ2Y2IyODk5MmJhMC4uOTZl
NDA4YjRiZGM5IDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oCisrKyBiL2lu
Y2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgKQEAgLTYxOCw0ICs2MTgsOCBAQAogCUlOVEVMX1ZHQV9E
RVZJQ0UoMHg0QzkwLCBpbmZvKSwgXAogCUlOVEVMX1ZHQV9ERVZJQ0UoMHg0QzlBLCBpbmZvKQog
CisvKiBERzEgKi8KKyNkZWZpbmUgSU5URUxfREcxX0lEUyhpbmZvKSBcCisJSU5URUxfVkdBX0RF
VklDRSgweDQ5MDUsIGluZm8pCisKICNlbmRpZiAvKiBfSTkxNV9QQ0lJRFNfSCAqLwotLSAKMi4y
Ni4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
