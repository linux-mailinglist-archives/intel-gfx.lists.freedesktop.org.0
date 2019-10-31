Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E69F6EB3F2
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2019 16:29:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5A8F6EED1;
	Thu, 31 Oct 2019 15:29:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 239CA6EECB;
 Thu, 31 Oct 2019 15:29:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 08:29:32 -0700
X-IronPort-AV: E=Sophos;i="5.68,252,1569308400"; d="scan'208";a="190661187"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Oct 2019 08:29:29 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Thu, 31 Oct 2019 16:28:57 +0100
Message-Id: <20191031152857.17143-5-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191031152857.17143-1-janusz.krzysztofik@linux.intel.com>
References: <20191031152857.17143-1-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t v4 4/4] tests/gem_ctx_shared: Align
 objects using minimum GTT alignment
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ZXhlYy1zaGFyZWQtZ3R0LSogc3VidGVzdHMgdXNlIGhhcmRjb2RlZCB2YWx1ZXMgZm9yIG9iamVj
dCBzaXplIGFuZApzb2Z0cGluIG9mZnNldCwgYmFzZWQgb24gNGtCIEdUVCBhbGlnbm1lbnQgYXNz
dW1wdGlvbi4gIFRoYXQgbWF5IHJlc3VsdAppbiB0aG9zZSBzdWJ0ZXN0cyBmYWlsaW5nIHdoZW4g
cnVuIG9uIGZ1dHVyZSBiYWNraW5nIHN0b3JlcyB3aXRoCnBvc3NpYmx5IGxhcmdlciBtaW5pbXVt
IHBhZ2Ugc2l6ZXMuCgpSZXBsYWNlIGhhcmRjb2RlZCBjb25zdGFudHMgd2l0aCB2YWx1ZXMgY2Fs
Y3VsYXRlZCBmcm9tIG1pbmltdW0gR1RUCmFsaWdubWVudCBvZiBhY3R1YWwgYmFja2luZyBzdG9y
ZSB0aGUgdGVzdCBpcyBydW5uaW5nIG9uLgoKdjI6IFVwZGF0ZSBoZWxwZXIgbmFtZSwgdXNlICdt
aW5pbXVtIEdUVCBhbGlnbm1lbnQnIHRlcm0gYWNyb3NzIHRoZQogICAgY2hhbmdlLCBhZGp1c3Qg
dmFyaWFibGUgbmFtZS4KClNpZ25lZC1vZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6
LmtyenlzenRvZmlrQGxpbnV4LmludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgotLS0KIHRlc3RzL2k5MTUvZ2VtX2N0eF9zaGFyZWQuYyB8IDYgKysr
Ky0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlm
ZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2N0eF9zaGFyZWQuYyBiL3Rlc3RzL2k5MTUvZ2VtX2N0
eF9zaGFyZWQuYwppbmRleCA2ZDhjYmNjZS4uMWU5YzdmNzggMTAwNjQ0Ci0tLSBhL3Rlc3RzL2k5
MTUvZ2VtX2N0eF9zaGFyZWQuYworKysgYi90ZXN0cy9pOTE1L2dlbV9jdHhfc2hhcmVkLmMKQEAg
LTE5NSw2ICsxOTUsNyBAQCBzdGF0aWMgdm9pZCBleGVjX3NoYXJlZF9ndHQoaW50IGk5MTUsIHVu
c2lnbmVkIGludCByaW5nKQogCXVpbnQzMl90IHNjcmF0Y2gsICpzOwogCXVpbnQzMl90IGJhdGNo
LCBjc1sxNl07CiAJdWludDY0X3Qgb2Zmc2V0OworCXVpbnQ2NF90IGFsaWdubWVudDsKIAlpbnQg
aTsKIAogCWdlbV9yZXF1aXJlX3JpbmcoaTkxNSwgcmluZyk7CkBAIC0yMDMsNyArMjA0LDggQEAg
c3RhdGljIHZvaWQgZXhlY19zaGFyZWRfZ3R0KGludCBpOTE1LCB1bnNpZ25lZCBpbnQgcmluZykK
IAljbG9uZSA9IGdlbV9jb250ZXh0X2Nsb25lKGk5MTUsIDAsIEk5MTVfQ09OVEVYVF9DTE9ORV9W
TSwgMCk7CiAKIAkvKiBGaW5kIGEgaG9sZSBiaWcgZW5vdWdoIGZvciBib3RoIG9iamVjdHMgbGF0
ZXIgKi8KLQlzY3JhdGNoID0gZ2VtX2NyZWF0ZShpOTE1LCAxNjM4NCk7CisJYWxpZ25tZW50ID0g
MiAqIGdlbV9ndHRfbWluX2FsaWdubWVudChpOTE1KTsKKwlzY3JhdGNoID0gZ2VtX2NyZWF0ZShp
OTE1LCAyICogYWxpZ25tZW50KTsKIAlnZW1fd3JpdGUoaTkxNSwgc2NyYXRjaCwgMCwgJmJiZSwg
c2l6ZW9mKGJiZSkpOwogCW9iai5oYW5kbGUgPSBzY3JhdGNoOwogCWdlbV9leGVjYnVmKGk5MTUs
ICZleGVjYnVmKTsKQEAgLTI0Niw3ICsyNDgsNyBAQCBzdGF0aWMgdm9pZCBleGVjX3NoYXJlZF9n
dHQoaW50IGk5MTUsIHVuc2lnbmVkIGludCByaW5nKQogCWdlbV93cml0ZShpOTE1LCBiYXRjaCwg
MCwgY3MsIHNpemVvZihjcykpOwogCiAJb2JqLmhhbmRsZSA9IGJhdGNoOwotCW9iai5vZmZzZXQg
Kz0gODE5MjsgLyogbWFrZSBzdXJlIHdlIGRvbid0IGNhdXNlIGFuIGV2aWN0aW9uISAqLworCW9i
ai5vZmZzZXQgKz0gYWxpZ25tZW50OyAvKiBtYWtlIHN1cmUgd2UgZG9uJ3QgY2F1c2UgYW4gZXZp
Y3Rpb24hICovCiAJZXhlY2J1Zi5yc3ZkMSA9IGNsb25lOwogCWlmIChnZW4gPiAzICYmIGdlbiA8
IDYpCiAJCWV4ZWNidWYuZmxhZ3MgfD0gSTkxNV9FWEVDX1NFQ1VSRTsKLS0gCjIuMjEuMAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
