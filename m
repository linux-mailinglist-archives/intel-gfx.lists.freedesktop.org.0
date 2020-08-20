Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A550024C107
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Aug 2020 16:53:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAEA06E34C;
	Thu, 20 Aug 2020 14:53:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 429FD6E95B;
 Thu, 20 Aug 2020 14:53:20 +0000 (UTC)
IronPort-SDR: 7hS7qxUpjWSodLFBBqaUpFahHWBcTX9N0QCXVKdFqKaVhOKmW6k5rl9z5LREaWY8JtFtgc5ii5
 csUbXr21lTAg==
X-IronPort-AV: E=McAfee;i="6000,8403,9718"; a="240136308"
X-IronPort-AV: E=Sophos;i="5.76,333,1592895600"; d="scan'208";a="240136308"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2020 07:53:20 -0700
IronPort-SDR: 25n8vCSaB3OMqhAO3atzwVGOvSwziHrKlH7hTFCy1KVEY2qNR7W6uVKGHwQLsxjRFRcQggEABu
 IqXbqqduRnRg==
X-IronPort-AV: E=Sophos;i="5.76,333,1592895600"; d="scan'208";a="472679817"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2020 07:53:18 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 20 Aug 2020 16:52:12 +0200
Message-Id: <20200820145215.13238-17-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200820145215.13238-1-janusz.krzysztofik@linux.intel.com>
References: <20200820145215.13238-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v3 16/19] tests/core_hotunplug: Explicitly
 ignore unused return values
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
Cc: =?UTF-8?q?Micha=C5=82=20Winiarski?= <michal.winiarski@intel.com>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U29tZSByZXR1cm4gdmFsdWVzIGFyZSBub3QgdXNlZnVsIGFuZCBjYW4gYmUgaWdub3JlZC4gIFdy
YXAgdGhvc2UgY2FzZXMKaW5zaWRlIGlndF9pZ25vcmVfd2FybigpLCBub3Qgb25seSB0byBtYWtl
IHN1cmUgY29tcGlsZXJzIGFyZSBoYXBweSBidXQKYWxzbyB0byBjbGVhcmx5IGRvY3VtZW50IG91
ciBkZWNpc2lvbnMuCgpTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5r
cnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBNaWNoYcWCIFdpbmlhcnNr
aSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+Ci0tLQogdGVzdHMvY29yZV9ob3R1bnBsdWcu
YyB8IDYgKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMgYi90ZXN0cy9jb3JlX2hv
dHVucGx1Zy5jCmluZGV4IGQzMGFkODUyNS4uMjRiZWVkODFhIDEwMDY0NAotLS0gYS90ZXN0cy9j
b3JlX2hvdHVucGx1Zy5jCisrKyBiL3Rlc3RzL2NvcmVfaG90dW5wbHVnLmMKQEAgLTI1Niw3ICsy
NTYsNyBAQCBzdGF0aWMgdm9pZCBzZXRfZmlsdGVyX2Zyb21fZGV2aWNlKGludCBmZCkKIAljaGFy
IHBhdGhbUEFUSF9NQVggKyAxXTsKIAogCWlndF9hc3NlcnQoaWd0X3N5c2ZzX3BhdGgoZmQsIHBh
dGgsIFBBVEhfTUFYKSk7Ci0Jc3RybmNhdChwYXRoLCAiL2RldmljZSIsIFBBVEhfTUFYIC0gc3Ry
bGVuKHBhdGgpKTsKKwlpZ3RfaWdub3JlX3dhcm4oc3RybmNhdChwYXRoLCAiL2RldmljZSIsIFBB
VEhfTUFYIC0gc3RybGVuKHBhdGgpKSk7CiAJaWd0X2Fzc2VydChyZWFscGF0aChwYXRoLCBkc3Qp
KTsKIAogCWlndF9kZXZpY2VfZmlsdGVyX2ZyZWVfYWxsKCk7CkBAIC0zODUsNyArMzg1LDcgQEAg
aWd0X21haW4KIAlpZ3RfZml4dHVyZSB7CiAJCXBvc3RfaGVhbHRoY2hlY2soJnByaXYpOwogCi0J
CWNsb3NlKHByaXYuZmQuc3lzZnNfYnVzKTsKLQkJY2xvc2UocHJpdi5mZC5zeXNmc19kcnYpOwor
CQlpZ3RfaWdub3JlX3dhcm4oY2xvc2UocHJpdi5mZC5zeXNmc19idXMpKTsKKwkJaWd0X2lnbm9y
ZV93YXJuKGNsb3NlKHByaXYuZmQuc3lzZnNfZHJ2KSk7CiAJfQogfQotLSAKMi4yMS4xCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
