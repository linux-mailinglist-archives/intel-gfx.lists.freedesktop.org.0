Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04A6E36E8EA
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 12:35:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF2A06EE02;
	Thu, 29 Apr 2021 10:35:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 499A26EE06;
 Thu, 29 Apr 2021 10:35:21 +0000 (UTC)
IronPort-SDR: zo5rYmrcjqCtJeaiqdFI2MSZ5rBHgDhjItZ+aJXgA0fyPitaU6nFz1PHp5l5LFWK2jNLBo4W0m
 Cu9bnqW9KogQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9968"; a="184449732"
X-IronPort-AV: E=Sophos;i="5.82,259,1613462400"; d="scan'208";a="184449732"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 03:35:21 -0700
IronPort-SDR: v8ZLVjXIzAMRDmxusAL1m+Bzjc2HbtdXdJM8elDSkomuRLNMA9BvzjSv6zMYRpf9M+G2hBIqB0
 6wXXpryob9Ng==
X-IronPort-AV: E=Sophos;i="5.82,259,1613462400"; d="scan'208";a="458694255"
Received: from sbfennel-mobl.ger.corp.intel.com (HELO
 mwauld-desk1.ger.corp.intel.com) ([10.252.12.78])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 03:35:17 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Apr 2021 11:30:56 +0100
Message-Id: <20210429103056.407067-9-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210429103056.407067-1-matthew.auld@intel.com>
References: <20210429103056.407067-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 9/9] drm/i915/gem: hide new uAPI behind
 CONFIG_BROKEN
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
Cc: Lionel Landwerlin <lionel.g.landwerlin@linux.intel.com>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 dri-devel@lists.freedesktop.org, Kenneth Graunke <kenneth@whitecape.org>,
 mesa-dev@lists.freedesktop.org, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VHJlYXQgaXQgdGhlIHNhbWUgYXMgdGhlIGZha2UgbG9jYWwtbWVtb3J5IHN0dWZmLCB3aGVyZSBp
dCBpcyBkaXNhYmxlZApmb3Igbm9ybWFsIGtlcm5lbHMsIGluIGNhc2Ugc29tZSByYW5kb20gVU1E
IGlzIHRlbXB0ZWQgdG8gdXNlIHRoaXMuIE9uY2UKd2UgaGF2ZSBhbGwgdGhlIG90aGVyIGJpdHMg
YW5kIHBpZWNlcyBpbiBwbGFjZSwgbGlrZSB0aGUgVFRNIGNvbnZlcnNpb24sCndlIGNhbiB0dXJu
IHRoaXMgb24gZm9yIHJlYWwuCgpTaWduZWQtb2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcu
YXVsZEBpbnRlbC5jb20+CkNjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51
eC5pbnRlbC5jb20+CkNjOiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51
eC5pbnRlbC5jb20+CkNjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9z
cHVyaW9AaW50ZWwuY29tPgpDYzogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJs
aW5AbGludXguaW50ZWwuY29tPgpDYzogSm9uIEJsb29tZmllbGQgPGpvbi5ibG9vbWZpZWxkQGlu
dGVsLmNvbT4KQ2M6IEpvcmRhbiBKdXN0ZW4gPGpvcmRhbi5sLmp1c3RlbkBpbnRlbC5jb20+CkNj
OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IEtlbm5ldGggR3Jh
dW5rZSA8a2VubmV0aEB3aGl0ZWNhcGUub3JnPgpDYzogSmFzb24gRWtzdHJhbmQgPGphc29uQGps
ZWtzdHJhbmQubmV0PgpDYzogRGF2ZSBBaXJsaWUgPGFpcmxpZWRAZ21haWwuY29tPgpDYzogZHJp
LWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzogbWVzYS1kZXZAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnClJldmlld2VkLWJ5OiBLZW5uZXRoIEdyYXVua2UgPGtlbm5ldGhAd2hpdGVjYXBlLm9y
Zz4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY3JlYXRlLmMgfCAzICsr
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9xdWVyeS5jICAgICAgICAgIHwgMyArKysKIDIg
ZmlsZXMgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NyZWF0ZS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX2NyZWF0ZS5jCmluZGV4IGY2NzI5ZmVhZTU4Mi4uNTQ4ZGRmMzlkODUzIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY3JlYXRlLmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NyZWF0ZS5jCkBAIC0zMzUsNiArMzM1
LDkgQEAgc3RhdGljIGludCBleHRfc2V0X3BsYWNlbWVudHMoc3RydWN0IGk5MTVfdXNlcl9leHRl
bnNpb24gX191c2VyICpiYXNlLAogewogCXN0cnVjdCBkcm1faTkxNV9nZW1fY3JlYXRlX2V4dF9t
ZW1vcnlfcmVnaW9ucyBleHQ7CiAKKwlpZiAoIUlTX0VOQUJMRUQoQ09ORklHX0RSTV9JOTE1X1VO
U1RBQkxFX0ZBS0VfTE1FTSkpCisJCXJldHVybiAtRU5PREVWOworCiAJaWYgKGNvcHlfZnJvbV91
c2VyKCZleHQsIGJhc2UsIHNpemVvZihleHQpKSkKIAkJcmV0dXJuIC1FRkFVTFQ7CiAKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcXVlcnkuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcXVlcnkuYwppbmRleCA1ZTJiOTA5ODI3ZjQuLmU0OWRhMzZjNjJmYiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9xdWVyeS5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcXVlcnkuYwpAQCAtNDMyLDYgKzQzMiw5IEBAIHN0YXRpYyBpbnQg
cXVlcnlfbWVtcmVnaW9uX2luZm8oc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJdTMy
IHRvdGFsX2xlbmd0aDsKIAlpbnQgcmV0LCBpZCwgaTsKIAorCWlmICghSVNfRU5BQkxFRChDT05G
SUdfRFJNX0k5MTVfVU5TVEFCTEVfRkFLRV9MTUVNKSkKKwkJcmV0dXJuIC1FTk9ERVY7CisKIAlp
ZiAocXVlcnlfaXRlbS0+ZmxhZ3MgIT0gMCkKIAkJcmV0dXJuIC1FSU5WQUw7CiAKLS0gCjIuMjYu
MwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
