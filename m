Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC7155675
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 19:55:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6385A6E204;
	Tue, 25 Jun 2019 17:55:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22E026E1D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 17:55:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 10:55:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="360469324"
Received: from mvaitla-mobl.amr.corp.intel.com (HELO ldmartin-desk1.intel.com)
 ([10.251.139.12])
 by fmsmga006.fm.intel.com with ESMTP; 25 Jun 2019 10:55:05 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 10:54:29 -0700
Message-Id: <20190625175437.14840-21-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190625175437.14840-1-lucas.demarchi@intel.com>
References: <20190625175437.14840-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 20/28] drm/i915/tgl: Add third combophy offset
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
Cc: Mahesh Kumar <mahesh1.kumar@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWFoZXNoIEt1bWFyIDxtYWhlc2gxLmt1bWFyQGludGVsLmNvbT4KClRHTCBoYXMgMyBj
b21iby1waHkgcG9ydHMuIFRoaXMgcGF0Y2ggYWRkcyBvZmZzZXQgb2YgdGhpcmQgcG9ydCB0bwpj
b21iby1waHkgcG9ydCByZWdpc3RlciBtYWNyb3MuCgpTaWduZWQtb2ZmLWJ5OiBNYWhlc2ggS3Vt
YXIgPG1haGVzaDEua3VtYXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJj
aGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oIHwgNiArKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggY2Q1MmIzNGRhZDQ1Li42
NGZmODg3Mjc1YTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtMTc4OSwxMiArMTc4OSwx
NCBAQCBlbnVtIGk5MTVfcG93ZXJfd2VsbF9pZCB7CiAjZGVmaW5lIEJYVF9QT1JUX0NMMUNNX0RX
MzAocGh5KQlfQlhUX1BIWSgocGh5KSwgX1BPUlRfQ0wxQ01fRFczMF9CQykKIAogLyoKLSAqIENO
TC9JQ0wgUG9ydC9DT01CTy1QSFkgUmVnaXN0ZXJzCisgKiBDTkwvSUNML1RHTCBQb3J0L0NPTUJP
LVBIWSBSZWdpc3RlcnMKICAqLwogI2RlZmluZSBfSUNMX0NPTUJPUEhZX0EJCQkweDE2MjAwMAog
I2RlZmluZSBfSUNMX0NPTUJPUEhZX0IJCQkweDZDMDAwCisjZGVmaW5lIF9UR0xfQ09NQk9QSFlf
QwkJCTB4MTYwMDAwCiAjZGVmaW5lIF9JQ0xfQ09NQk9QSFkocG9ydCkJCV9QSUNLKHBvcnQsIF9J
Q0xfQ09NQk9QSFlfQSwgXAotCQkJCQkgICAgICBfSUNMX0NPTUJPUEhZX0IpCisJCQkJCSAgICAg
IF9JQ0xfQ09NQk9QSFlfQiwgXAorCQkJCQkgICAgICBfVEdMX0NPTUJPUEhZX0MpCiAKIC8qIENO
TC9JQ0wgUG9ydCBDTF9EVyByZWdpc3RlcnMgKi8KICNkZWZpbmUgX0lDTF9QT1JUX0NMX0RXKGR3
LCBwb3J0KQkoX0lDTF9DT01CT1BIWShwb3J0KSArIFwKLS0gCjIuMjEuMAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
