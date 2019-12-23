Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E70AF12996E
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 18:33:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAD336E316;
	Mon, 23 Dec 2019 17:33:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 259B96E311
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 17:33:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 09:33:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,348,1571727600"; d="scan'208";a="417324844"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by fmsmga005.fm.intel.com with ESMTP; 23 Dec 2019 09:33:04 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Dec 2019 09:32:39 -0800
Message-Id: <20191223173244.30742-6-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191223173244.30742-1-lucas.demarchi@intel.com>
References: <20191223173244.30742-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 05/10] drm/i915: prefer 3-letter acronym for
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
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgNyArKystLS0tCiAxIGZpbGUgY2hh
bmdlZCwgMyBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKaW5kZXggMThhYzE1ZGY5MWM3Li45OGQ2YmNi
NGM3NjEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
CkBAIC0xMDQ0MCw5ICsxMDQ0MCw4IEBAIHN0YXRpYyBpbnQgaHN3X2NydGNfY29tcHV0ZV9jbG9j
ayhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAlyZXR1cm4gMDsKIH0KIAotc3RhdGljIHZvaWQg
Y2Fubm9ubGFrZV9nZXRfZGRpX3BsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYs
Ci0JCQkJICAgZW51bSBwb3J0IHBvcnQsCi0JCQkJICAgc3RydWN0IGludGVsX2NydGNfc3RhdGUg
KnBpcGVfY29uZmlnKQorc3RhdGljIHZvaWQgY25sX2dldF9kZGlfcGxsKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwgZW51bSBwb3J0IHBvcnQsCisJCQkgICAgc3RydWN0IGludGVs
X2NydGNfc3RhdGUgKnBpcGVfY29uZmlnKQogewogCWVudW0gaW50ZWxfZHBsbF9pZCBpZDsKIAl1
MzIgdGVtcDsKQEAgLTEwNzQ0LDcgKzEwNzQzLDcgQEAgc3RhdGljIHZvaWQgaHN3X2dldF9kZGlf
cG9ydF9zdGF0ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywKIAlpZiAoSU5URUxfR0VOKGRldl9w
cml2KSA+PSAxMSkKIAkJaWNlbGFrZV9nZXRfZGRpX3BsbChkZXZfcHJpdiwgcG9ydCwgcGlwZV9j
b25maWcpOwogCWVsc2UgaWYgKElTX0NBTk5PTkxBS0UoZGV2X3ByaXYpKQotCQljYW5ub25sYWtl
X2dldF9kZGlfcGxsKGRldl9wcml2LCBwb3J0LCBwaXBlX2NvbmZpZyk7CisJCWNubF9nZXRfZGRp
X3BsbChkZXZfcHJpdiwgcG9ydCwgcGlwZV9jb25maWcpOwogCWVsc2UgaWYgKElTX0dFTjlfQkMo
ZGV2X3ByaXYpKQogCQlza2xfZ2V0X2RkaV9wbGwoZGV2X3ByaXYsIHBvcnQsIHBpcGVfY29uZmln
KTsKIAllbHNlIGlmIChJU19HRU45X0xQKGRldl9wcml2KSkKLS0gCjIuMjQuMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
