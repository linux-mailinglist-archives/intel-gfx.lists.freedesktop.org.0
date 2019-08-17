Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D31590FBF
	for <lists+intel-gfx@lfdr.de>; Sat, 17 Aug 2019 11:39:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFC096E492;
	Sat, 17 Aug 2019 09:39:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02AE36E2F7
 for <intel-gfx@lists.freedesktop.org>; Sat, 17 Aug 2019 09:39:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Aug 2019 02:39:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,396,1559545200"; d="scan'208";a="376950620"
Received: from vidyashr-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.251.152.227])
 by fmsmga005.fm.intel.com with ESMTP; 17 Aug 2019 02:39:32 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 17 Aug 2019 02:38:34 -0700
Message-Id: <20190817093902.2171-13-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190817093902.2171-1-lucas.demarchi@intel.com>
References: <20190817093902.2171-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 12/40] drm/i915/tgl: PSR link standby is not
 supported anymore
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpBY2Nv
cmRpbmcgdG8gQlNwYyBpZiBsaW5rIHN0YW5kYnkgaXMgc2V0IG9uIFRHTCssIFBTUiB3aWxsIG5v
dCBiZQplbmFibGVkLiBWZW5kb3JzIHNob3VsZCBub3QgdXNlIHBhbmVscyB0aGF0IHJlcXVpcmVz
IGxpbmsgc3RhbmRieSBhbmQKZXZlbiBpZiB0aGV5IGRvLCBwYW5lbCBzaG91bGQgYXNzZXJ0IGEg
UFNSIGVycm9yIHRoYXQgd2lsbCBjYXVzZSBQU1IgdG8KYmUgZGlzYWJsZWQuCgpCU3BlYzogNTA0
MzQKU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRl
bC5jb20+ClNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA0
ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKaW5kZXggNjZkYjljZTk1ZGE5
Li5lMzBmODRlOGMzNGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
YwpAQCAtMTI0NCw4ICsxMjQ0LDggQEAgdm9pZCBpbnRlbF9wc3JfaW5pdChzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAJaWYgKElTX0hBU1dFTEwoZGV2X3ByaXYpIHx8IElTX0JS
T0FEV0VMTChkZXZfcHJpdikpCiAJCS8qIEhTVyBhbmQgQkRXIHJlcXVpcmUgd29ya2Fyb3VuZHMg
dGhhdCB3ZSBkb24ndCBpbXBsZW1lbnQuICovCiAJCWRldl9wcml2LT5wc3IubGlua19zdGFuZGJ5
ID0gZmFsc2U7Ci0JZWxzZQotCQkvKiBGb3IgbmV3IHBsYXRmb3JtcyBsZXQncyByZXNwZWN0IFZC
VCBiYWNrIGFnYWluICovCisJZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA8IDEyKQorCQkv
KiBGb3IgbmV3IHBsYXRmb3JtcyB1cCB0byBUR0wgbGV0J3MgcmVzcGVjdCBWQlQgYmFjayBhZ2Fp
biAqLwogCQlkZXZfcHJpdi0+cHNyLmxpbmtfc3RhbmRieSA9IGRldl9wcml2LT52YnQucHNyLmZ1
bGxfbGluazsKIAogCUlOSVRfV09SSygmZGV2X3ByaXYtPnBzci53b3JrLCBpbnRlbF9wc3Jfd29y
ayk7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
