Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A410F3A3BFE
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jun 2021 08:23:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C39489FEA;
	Fri, 11 Jun 2021 06:23:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA10B89F03;
 Fri, 11 Jun 2021 06:23:39 +0000 (UTC)
IronPort-SDR: II9iiEnhO6BZ8FIhfmYNhDoPz7z1k8aH2TGAelXi+OuAY5N5Mr781okIj+tdQsake4Wf/NuAUz
 FCU0efvg+lNA==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="202444413"
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="202444413"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 23:23:39 -0700
IronPort-SDR: 08xCrLyENEccxVDpsrqwzUxdZ0oOa3oTeNpodySEQzKwgi5pp6ZFM8FNb1cYkQGJZEarwt7g9Z
 24Hky1Wt8DuQ==
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="449005103"
Received: from kdobkakr-mobl.ger.corp.intel.com (HELO
 zkempczy-mobl2.ger.corp.intel.com) ([10.213.15.179])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 23:23:37 -0700
From: =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri, 11 Jun 2021 08:23:28 +0200
Message-Id: <20210611062328.16228-1-zbigniew.kempczynski@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Add relocation exceptions for two
 other platforms
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2UgaGF2ZSBlc3RhYmxpc2hlZCBwcmV2aW91c2x5IHdlIHN0b3AgdXNpbmcgcmVsb2NhdGlvbnMg
c3RhcnRpbmcKZnJvbSBnZW4xMiBwbGF0Zm9ybXMgd2l0aCBUaWdlcmxha2UgYXMgYW4gZXhjZXB0
aW9uLiBXZSBrZWVwIHRoaXMKc3RhdGVtZW50IGJ1dCB3ZSB3YW50IHRvIGVuYWJsZSByZWxvY2F0
aW9ucyBjb25kaXRpb25hbGx5IGZvcgpBbGRlcmxha2UgUytQIHVuZGVyIHJlcXVpcmVfZm9yY2Vf
cHJvYmUgZmxhZyBzZXQuCgpLZWVwaW5nIHJlbG9jYXRpb25zIHVuZGVyIHJlcXVpcmVfZm9yY2Vf
cHJvYmUgZmxhZyBpcyBpbnRlcmltIHNvbHV0aW9uCnVudGlsIElHVHMgd2lsbCBiZSByZXdyaXR0
ZW4gdG8gdXNlIHNvZnRwaW4uCgp2MjogLSByZW1vdmUgaW5saW5lIGZyb20gZnVuY3Rpb24gZGVm
aW5pdGlvbiAoSmFuaSkKICAgIC0gZml4IGluZGVudGF0aW9uCgp2MzogY2hhbmdlIHRvIEdSQVBI
SUNTX1ZFUigpIChaYmlnbmlldykKCnY0OiByZW1vdmUgUktMIGZyb20gZmxhZyBhcyBpdCBpcyBh
bHJlYWR5IHNoaXBwZWQgKFJvZHJpZ28pCgpTaWduZWQtb2ZmLWJ5OiBaYmlnbmlldyBLZW1wY3p5
xYRza2kgPHpiaWduaWV3LmtlbXBjenluc2tpQGludGVsLmNvbT4KQ2M6IERhdmUgQWlybGllIDxh
aXJsaWVkQHJlZGhhdC5jb20+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVs
LmNvbT4KQ2M6IEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5kLm5ldD4KQ2M6IFJvZHJp
Z28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4KQWNrZWQtYnk6IERhdmUgQWlybGllIDxh
aXJsaWVkQHJlZGhhdC5jb20+Ci0tLQogLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhl
Y2J1ZmZlci5jICAgIHwgMjMgKysrKysrKysrKysrKysrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE4
IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKaW5kZXggYThhYmM5YWY1ZmY0Li44MTA2NDkxNDY0
MGYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVm
ZmVyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIu
YwpAQCAtNDkxLDE2ICs0OTEsMjkgQEAgZWJfdW5yZXNlcnZlX3ZtYShzdHJ1Y3QgZWJfdm1hICpl
dikKIAlldi0+ZmxhZ3MgJj0gfl9fRVhFQ19PQkpFQ1RfUkVTRVJWRUQ7CiB9CiAKK3N0YXRpYyBi
b29sIHBsYXRmb3JtX2hhc19yZWxvY3NfZW5hYmxlZChjb25zdCBzdHJ1Y3QgaTkxNV9leGVjYnVm
ZmVyICplYikKK3sKKwkvKgorCSAqIFJlbG9jYXRpb25zIGFyZSBkaXNhbGxvd2VkIHN0YXJ0aW5n
IGZyb20gZ2VuMTIgd2l0aCBUaWdlcmxha2UKKwkgKiBhcyBhbiBleGNlcHRpb24uIFdlIGFsbG93
IHRlbXBvcmFyaWx5IHVzZSByZWxvY2F0aW9ucyBmb3IgQWxkZXJsYWtlCisJICogd2hlbiByZXF1
aXJlX2ZvcmNlX3Byb2JlIGZsYWcgaXMgc2V0LgorCSAqLworCWlmIChHUkFQSElDU19WRVIoZWIt
Pmk5MTUpIDwgMTIgfHwgSVNfVElHRVJMQUtFKGViLT5pOTE1KSkKKwkJcmV0dXJuIHRydWU7CisK
KwlpZiAoSU5URUxfSU5GTyhlYi0+aTkxNSktPnJlcXVpcmVfZm9yY2VfcHJvYmUgJiYKKwkgICAg
KElTX0FMREVSTEFLRV9TKGViLT5pOTE1KSB8fCBJU19BTERFUkxBS0VfUChlYi0+aTkxNSkpKQor
CQlyZXR1cm4gdHJ1ZTsKKworCXJldHVybiBmYWxzZTsKK30KKwogc3RhdGljIGludAogZWJfdmFs
aWRhdGVfdm1hKHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViLAogCQlzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX2V4ZWNfb2JqZWN0MiAqZW50cnksCiAJCXN0cnVjdCBpOTE1X3ZtYSAqdm1hKQogewotCS8q
IFJlbG9jYXRpb25zIGFyZSBkaXNhbGxvd2VkIGZvciBhbGwgcGxhdGZvcm1zIGFmdGVyIFRHTC1M
UC4gIFRoaXMKLQkgKiBhbHNvIGNvdmVycyBhbGwgcGxhdGZvcm1zIHdpdGggbG9jYWwgbWVtb3J5
LgotCSAqLwotCWlmIChlbnRyeS0+cmVsb2NhdGlvbl9jb3VudCAmJgotCSAgICBHUkFQSElDU19W
RVIoZWItPmk5MTUpID49IDEyICYmICFJU19USUdFUkxBS0UoZWItPmk5MTUpKQorCWlmIChlbnRy
eS0+cmVsb2NhdGlvbl9jb3VudCAmJiAhcGxhdGZvcm1faGFzX3JlbG9jc19lbmFibGVkKGViKSkK
IAkJcmV0dXJuIC1FSU5WQUw7CiAKIAlpZiAodW5saWtlbHkoZW50cnktPmZsYWdzICYgZWItPmlu
dmFsaWRfZmxhZ3MpKQotLSAKMi4yNi4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
