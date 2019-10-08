Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 041B9CFFD4
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2019 19:27:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D38FF6E87A;
	Tue,  8 Oct 2019 17:27:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D678B6E878
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Oct 2019 17:27:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Oct 2019 10:27:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,272,1566889200"; d="scan'208";a="187356783"
Received: from jausmus-gentoo-dev6.jf.intel.com (HELO jausmus-gentoo-dev6)
 ([10.54.75.43])
 by orsmga008.jf.intel.com with SMTP; 08 Oct 2019 10:27:41 -0700
Received: by jausmus-gentoo-dev6 (sSMTP sendmail emulation);
 Tue, 08 Oct 2019 10:28:33 -0700
From: James Ausmus <james.ausmus@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Oct 2019 10:28:32 -0700
Message-Id: <20191008172832.8500-2-james.ausmus@intel.com>
X-Mailer: git-send-email 2.22.1
In-Reply-To: <20191008172832.8500-1-james.ausmus@intel.com>
References: <20191008172832.8500-1-james.ausmus@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI v3 2/2] drm/i915/tgl: Read SAGV block time from
 PCODE
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

U3RhcnRpbmcgZnJvbSBUR0wsIHdlIG5vdyBuZWVkIHRvIHJlYWQgdGhlIFNBR1YgYmxvY2sgdGlt
ZSB2aWEgYSBQQ09ERQptYWlsYm94LCByYXRoZXIgdGhhbiBoYXZpbmcgYSBzdGF0aWMgdmFsdWUu
CgpCU3BlYzogNDkzMjYKCnYyOiBGaXggdXAgcGNvZGUgdmFsIGRhdGEgdHlwZSAoVmlsbGUpLCB0
aWdodGVuIHZhcmlhYmxlIHNjb3BlIChWaWxsZSkKCkNjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPgpDYzogU3RhbmlzbGF2IExpc292c2tpeSA8c3Rhbmlz
bGF2Lmxpc292c2tpeUBpbnRlbC5jb20+CkNjOiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFy
Y2hpQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFtZXMgQXVzbXVzIDxqYW1lcy5hdXNtdXNA
aW50ZWwuY29tPgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIHwgIDEg
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDE1ICsrKysrKysrKysrKysrLQog
MiBmaWxlcyBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcmVnLmgKaW5kZXggMWRjMDY3ZmM1N2FiLi4wZmI5MDMwYjg5ZjEgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaApAQCAtODg3OCw2ICs4ODc4LDcgQEAgZW51bSB7CiAjZGVmaW5lICAg
ICBHRU45X1NBR1ZfRElTQUJMRQkJCTB4MAogI2RlZmluZSAgICAgR0VOOV9TQUdWX0lTX0RJU0FC
TEVECQkweDEKICNkZWZpbmUgICAgIEdFTjlfU0FHVl9FTkFCTEUJCQkweDMKKyNkZWZpbmUgR0VO
MTJfUENPREVfUkVBRF9TQUdWX0JMT0NLX1RJTUVfVVMJMHgyMwogI2RlZmluZSBHRU42X1BDT0RF
X0RBVEEJCQkJX01NSU8oMHgxMzgxMjgpCiAjZGVmaW5lICAgR0VONl9QQ09ERV9GUkVRX0lBX1JB
VElPX1NISUZUCTgKICNkZWZpbmUgICBHRU42X1BDT0RFX0ZSRVFfUklOR19SQVRJT19TSElGVAkx
NgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3BtLmMKaW5kZXggMGZmY2FmZTk3MjE2Li5lMmFjYTNlODFkMjgg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYwpAQCAtMzY0NSw3ICszNjQ1LDIwIEBAIGludGVsX2hh
c19zYWd2KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHN0YXRpYyB2b2lkCiBz
a2xfc2V0dXBfc2Fndl9ibG9ja190aW1lKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKIHsKLQlpZiAoSVNfR0VOKGRldl9wcml2LCAxMSkpIHsKKwlpZiAoSU5URUxfR0VOKGRldl9w
cml2KSA+PSAxMikgeworCQl1MzIgdmFsID0gMDsKKwkJaW50IHJldDsKKworCQlyZXQgPSBzYW5k
eWJyaWRnZV9wY29kZV9yZWFkKGRldl9wcml2LAorCQkJCQkgICAgIEdFTjEyX1BDT0RFX1JFQURf
U0FHVl9CTE9DS19USU1FX1VTLAorCQkJCQkgICAgICZ2YWwsIE5VTEwpOworCQlpZiAoIXJldCkg
eworCQkJZGV2X3ByaXYtPnNhZ3ZfYmxvY2tfdGltZV91cyA9IHZhbDsKKwkJCXJldHVybjsKKwkJ
fQorCisJCURSTV9ERUJVR19EUklWRVIoIkNvdWxkbid0IHJlYWQgU0FHViBibG9jayB0aW1lIVxu
Iik7CisJfSBlbHNlIGlmIChJU19HRU4oZGV2X3ByaXYsIDExKSkgewogCQlkZXZfcHJpdi0+c2Fn
dl9ibG9ja190aW1lX3VzID0gMTA7CiAJCXJldHVybjsKIAl9IGVsc2UgaWYgKElTX0dFTihkZXZf
cHJpdiwgMTApKSB7Ci0tIAoyLjIyLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
