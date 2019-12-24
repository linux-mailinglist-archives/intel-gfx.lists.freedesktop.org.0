Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15346129BF3
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2019 01:05:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68F1C6E52A;
	Tue, 24 Dec 2019 00:05:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FAAD6E50C
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Dec 2019 00:05:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 16:05:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,349,1571727600"; d="scan'208";a="417409512"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga005.fm.intel.com with ESMTP; 23 Dec 2019 16:05:44 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Dec 2019 16:05:23 -0800
Message-Id: <20191224000528.10630-6-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191224000528.10630-1-lucas.demarchi@intel.com>
References: <20191224000528.10630-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 05/10] drm/i915: prefer 3-letter acronym for
 cannonlake
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

V2UgYXJlIGN1cnJlbnRseSB1c2luZyBhIG1peCBvZiBwbGF0Zm9ybSBuYW1lIGFuZCBhY3Jvbnlt
IHRvIG5hbWUgdGhlCmZ1bmN0aW9ucy4gTGV0J3MgcHJlZmVyIHRoZSBhY3JvbnltIGFzIGl0IHNo
b3VsZCBiZSBjbGVhciB3aGF0IHBsYXRmb3JtCml0J3MgYWJvdXQgYW5kIGl0J3Mgc2hvcnRlciwg
c28gaXQgZG9lc24ndCBnbyBvdmVyIDgwIGNvbHVtbnMgaW4gYSBmZXcKY2FzZXMuIFRoaXMgY29u
dmVydHMgY2Fubm9ubGFrZSB0byBjbmwgd2hlcmUgYXBwcm9wcmlhdGUuCgpTaWduZWQtb2ZmLWJ5
OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KQWNrZWQtYnk6IEph
bmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+CkFja2VkLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWF0
dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDcgKysrLS0tLQogMSBmaWxlIGNoYW5nZWQs
IDMgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IDdmM2JkYjI3MDg0MC4uNmFiOWEyZWYxNzBh
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAt
MTA0MjQsOSArMTA0MjQsOCBAQCBzdGF0aWMgaW50IGhzd19jcnRjX2NvbXB1dGVfY2xvY2soc3Ry
dWN0IGludGVsX2NydGMgKmNydGMsCiAJcmV0dXJuIDA7CiB9CiAKLXN0YXRpYyB2b2lkIGNhbm5v
bmxha2VfZ2V0X2RkaV9wbGwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAotCQkJ
CSAgIGVudW0gcG9ydCBwb3J0LAotCQkJCSAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBl
X2NvbmZpZykKK3N0YXRpYyB2b2lkIGNubF9nZXRfZGRpX3BsbChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsIGVudW0gcG9ydCBwb3J0LAorCQkJICAgIHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpwaXBlX2NvbmZpZykKIHsKIAllbnVtIGludGVsX2RwbGxfaWQgaWQ7CiAJdTMyIHRl
bXA7CkBAIC0xMDcyOCw3ICsxMDcyNyw3IEBAIHN0YXRpYyB2b2lkIGhzd19nZXRfZGRpX3BvcnRf
c3RhdGUoc3RydWN0IGludGVsX2NydGMgKmNydGMsCiAJaWYgKElOVEVMX0dFTihkZXZfcHJpdikg
Pj0gMTEpCiAJCWljZWxha2VfZ2V0X2RkaV9wbGwoZGV2X3ByaXYsIHBvcnQsIHBpcGVfY29uZmln
KTsKIAllbHNlIGlmIChJU19DQU5OT05MQUtFKGRldl9wcml2KSkKLQkJY2Fubm9ubGFrZV9nZXRf
ZGRpX3BsbChkZXZfcHJpdiwgcG9ydCwgcGlwZV9jb25maWcpOworCQljbmxfZ2V0X2RkaV9wbGwo
ZGV2X3ByaXYsIHBvcnQsIHBpcGVfY29uZmlnKTsKIAllbHNlIGlmIChJU19HRU45X0JDKGRldl9w
cml2KSkKIAkJc2tsX2dldF9kZGlfcGxsKGRldl9wcml2LCBwb3J0LCBwaXBlX2NvbmZpZyk7CiAJ
ZWxzZSBpZiAoSVNfR0VOOV9MUChkZXZfcHJpdikpCi0tIAoyLjI0LjAKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
