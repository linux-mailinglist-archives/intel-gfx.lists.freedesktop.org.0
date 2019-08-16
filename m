Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6DD8FCFD
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Aug 2019 10:05:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9281D6EB15;
	Fri, 16 Aug 2019 08:05:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E76A6EAF7
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Aug 2019 08:05:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Aug 2019 01:05:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,391,1559545200"; d="scan'208";a="184851426"
Received: from miyoungj-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.254.105.68])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Aug 2019 01:05:36 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Aug 2019 01:04:34 -0700
Message-Id: <20190816080503.28594-11-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190816080503.28594-1-lucas.demarchi@intel.com>
References: <20190816080503.28594-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/39] drm/i915/tgl: PSR link standby is not
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
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKaW5kZXggN2UwYjM3MDE4M2Fk
Li40Y2RlMWI3NWY5MDEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
YwpAQCAtMTI0OCw4ICsxMjQ4LDggQEAgdm9pZCBpbnRlbF9wc3JfaW5pdChzdHJ1Y3QgZHJtX2k5
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
