Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6A69968F
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 16:29:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BF7D6EB56;
	Thu, 22 Aug 2019 14:29:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDBBC6EB56
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 14:29:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 07:29:49 -0700
X-IronPort-AV: E=Sophos;i="5.64,417,1559545200"; d="scan'208";a="178873789"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 07:29:47 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: David Woodhouse <dwmw2@infradead.org>,
	Joerg Roedel <joro@8bytes.org>
Date: Thu, 22 Aug 2019 16:29:22 +0200
Message-Id: <20190822142922.31526-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH] iommu/vt-d: Fix IOMMU field not populated
 on device hot re-plug
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
Cc: iommu@lists.linux-foundation.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2hlbiBhIHBlcmZlY3RseSB3b3JraW5nIGk5MTUgZGV2aWNlIGlzIGhvdCB1bnBsdWdnZWQgKHZp
YSBzeXNmcykgYW5kCmhvdCByZS1wbHVnZ2VkIGFnYWluLCBpdHMgZGV2LT5hcmNoZGF0YS5pb21t
dSBmaWVsZCBpcyBub3QgcG9wdWxhdGVkCmFnYWluIHdpdGggYW4gSU9NTVUgcG9pbnRlci4gIEFz
IGEgcmVzdWx0LCB0aGUgZGV2aWNlIHByb2JlIGZhaWxzIG9uCkRNQSBtYXBwaW5nIGVycm9yIGR1
cmluZyBzY3JhdGNoIHBhZ2Ugc2V0dXAuCgpJdCBsb29rcyBsaWtlIHRoYXQgaGFwcGVucyBiZWNh
dXNlIGRldmljZXMgYXJlIG5vdCBkZXRhY2hlZCBmcm9tIHRoZWlyCk1NVUlPIGJ1cyBiZWZvcmUg
dGhleSBhcmUgcmVtb3ZlZCBvbiBkZXZpY2UgdW5wbHVnLiAgVGhlbiwgd2hlbiBhbgphbHJlYWR5
IHJlZ2lzdGVyZWQgZGV2aWNlL0lPTU1VIGFzc29jaWF0aW9uIGlzIGlkZW50aWZpZWQgYnkgdGhl
CnJlaW5zdGFudGlhdGVkIGRldmljZSdzIGJ1cyBhbmQgZnVuY3Rpb24gSURzIG9uIElPTU1VIGJ1
cyByZS1hdHRhY2gKYXR0ZW1wdCwgdGhlIGRldmljZSdzIGFyY2hkYXRhIGlzIG5vdCBwb3B1bGF0
ZWQgd2l0aCBJT01NVSBpbmZvcm1hdGlvbgphbmQgdGhlIGJhZCBoYXBwZW5zLgoKSSdtIG5vdCBz
dXJlIGlmIHRoaXMgaXMgYSBwcm9wZXIgZml4IGJ1dCBpdCB3b3JrcyBmb3IgbWUgc28gYXQgbGVh
c3QgaXQKY29uZmlybXMgY29ycmVjdG5lc3Mgb2YgbXkgYW5hbHlzaXMgcmVzdWx0cywgSSBiZWxp
ZXZlLiAgU28gZmFyIEkKaGF2ZW4ndCBiZWVuIGFibGUgdG8gaWRlbnRpZnkgYSBnb29kIHBsYWNl
IHdoZXJlIHRoZSBwb3NzaWJseSBtaXNzaW5nCklPTU1VIGJ1cyBkZXRhY2ggb24gZGV2aWNlIHVu
cGx1ZyBvcGVyYXRpb24gY291bGQgYmUgYWRkZWQuCgpTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6
eXN6dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9pb21tdS9pbnRlbC1pb21tdS5jIHwgMyArKysKIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2lvbW11L2ludGVsLWlvbW11LmMgYi9kcml2ZXJz
L2lvbW11L2ludGVsLWlvbW11LmMKaW5kZXggMTJkMDk0ZDA4YzBhLi43Y2RjZDA1OTU0MDggMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvaW9tbXUvaW50ZWwtaW9tbXUuYworKysgYi9kcml2ZXJzL2lvbW11
L2ludGVsLWlvbW11LmMKQEAgLTI0NzcsNiArMjQ3Nyw5IEBAIHN0YXRpYyBzdHJ1Y3QgZG1hcl9k
b21haW4gKmRtYXJfaW5zZXJ0X29uZV9kZXZfaW5mbyhzdHJ1Y3QgaW50ZWxfaW9tbXUgKmlvbW11
LAogCQlpZiAoaW5mbzIpIHsKIAkJCWZvdW5kICAgICAgPSBpbmZvMi0+ZG9tYWluOwogCQkJaW5m
bzItPmRldiA9IGRldjsKKworCQkJaWYgKGRldiAmJiAhZGV2LT5hcmNoZGF0YS5pb21tdSkKKwkJ
CQlkZXYtPmFyY2hkYXRhLmlvbW11ID0gaW5mbzI7CiAJCX0KIAl9CiAKLS0gCjIuMjEuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
