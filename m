Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF12A1949
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2019 13:49:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75FF66E0BA;
	Thu, 29 Aug 2019 11:49:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5E4A6E0A2;
 Thu, 29 Aug 2019 11:48:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Aug 2019 04:48:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,442,1559545200"; d="scan'208";a="380743926"
Received: from ovasilev-desk1.fi.intel.com ([10.237.72.76])
 by fmsmga005.fm.intel.com with ESMTP; 29 Aug 2019 04:48:57 -0700
From: Oleg Vasilev <oleg.vasilev@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Thu, 29 Aug 2019 14:48:49 +0300
Message-Id: <20190829114854.1539-2-oleg.vasilev@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190829114854.1539-1-oleg.vasilev@intel.com>
References: <20190826132216.2823-1-oleg.vasilev@intel.com>
 <20190829114854.1539-1-oleg.vasilev@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 2/7] drm: always determine branch device with
 drm_dp_is_branch()
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
Cc: intel-gfx@lists.freedesktop.org, Emil Velikov <emil.velikov@collabora.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGhlbHBlciBzaG91bGQgYWx3YXlzIGJlIHVzZWQuCgpSZXZpZXdlZC1ieTogRW1pbCBWZWxp
a292IDxlbWlsLnZlbGlrb3ZAY29sbGFib3JhLmNvbT4KU2lnbmVkLW9mZi1ieTogT2xlZyBWYXNp
bGV2IDxvbGVnLnZhc2lsZXZAaW50ZWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2hlbHBlci5jICAgICAgICAgfCAzICstLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMiArLQogMiBmaWxlcyBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfaGVs
cGVyLmMKaW5kZXggZmZjNjhkMzA1YWZlLi4xNDMyMDkzMDA5MWIgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9kcm1fZHBfaGVscGVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9o
ZWxwZXIuYwpAQCAtNTczLDggKzU3Myw3IEBAIHZvaWQgZHJtX2RwX2Rvd25zdHJlYW1fZGVidWco
c3RydWN0IHNlcV9maWxlICptLAogCWludCBsZW47CiAJdWludDhfdCByZXZbMl07CiAJaW50IHR5
cGUgPSBwb3J0X2NhcFswXSAmIERQX0RTX1BPUlRfVFlQRV9NQVNLOwotCWJvb2wgYnJhbmNoX2Rl
dmljZSA9IGRwY2RbRFBfRE9XTlNUUkVBTVBPUlRfUFJFU0VOVF0gJgotCQkJICAgICBEUF9EV05f
U1RSTV9QT1JUX1BSRVNFTlQ7CisJYm9vbCBicmFuY2hfZGV2aWNlID0gZHJtX2RwX2lzX2JyYW5j
aChkcGNkKTsKIAogCXNlcV9wcmludGYobSwgIlx0RFAgYnJhbmNoIGRldmljZSBwcmVzZW50OiAl
c1xuIiwKIAkJICAgYnJhbmNoX2RldmljZSA/ICJ5ZXMiIDogIm5vIik7CmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKaW5kZXggMjM5MDhkYTFjZDVkLi42ZGE2YTQ4NTlmMDYg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKQEAgLTI5MjIsNyArMjky
Miw3IEBAIHN0YXRpYyBib29sIGRvd25zdHJlYW1faHBkX25lZWRzX2QwKHN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHApCiAJICogRklYTUUgc2hvdWxkIHJlYWxseSBjaGVjayBhbGwgZG93bnN0cmVh
bSBwb3J0cy4uLgogCSAqLwogCXJldHVybiBpbnRlbF9kcC0+ZHBjZFtEUF9EUENEX1JFVl0gPT0g
MHgxMSAmJgotCQlpbnRlbF9kcC0+ZHBjZFtEUF9ET1dOU1RSRUFNUE9SVF9QUkVTRU5UXSAmIERQ
X0RXTl9TVFJNX1BPUlRfUFJFU0VOVCAmJgorCQlkcm1fZHBfaXNfYnJhbmNoKGludGVsX2RwLT5k
cGNkKSAmJgogCQlpbnRlbF9kcC0+ZG93bnN0cmVhbV9wb3J0c1swXSAmIERQX0RTX1BPUlRfSFBE
OwogfQogCi0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
