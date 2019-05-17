Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0953021B85
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 18:22:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 472A08994D;
	Fri, 17 May 2019 16:22:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62BAA898FA
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 16:22:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 09:22:32 -0700
X-ExtLoop1: 1
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga004.fm.intel.com with ESMTP; 17 May 2019 09:22:31 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x4HGMT7C016212; Fri, 17 May 2019 17:22:30 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 May 2019 16:22:22 +0000
Message-Id: <20190517162227.6436-3-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.10.1.windows.1
In-Reply-To: <20190517162227.6436-1-michal.wajdeczko@intel.com>
References: <20190517162227.6436-1-michal.wajdeczko@intel.com>
Subject: [Intel-gfx] [PATCH 2/7] drm/i915/uc: Explicitly sanitize GuC/HuC on
 failure and finish
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RXhwbGljaXRseSBzYW5pdGl6ZSBHdUMvSHVDIG9uIGxvYWQgZmFpbHVyZSBhbmQgd2hlbiB3ZSBm
aW5pc2gKdXNpbmcgdGhlbSB0byBtYWtlIHN1cmUgb3VyIGZ3IHN0YXRlIHRyYWNraW5nIGlzIGFs
d2F5cyBjb3JyZWN0LgoKV2hpbGUgYXJvdW5kLCB1c2UgbmV3IGhlbHBlciBpbiB1Y19yZXNldF9w
cmVwYXJlLgoKU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3pr
b0BpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
Q2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYyB8IDE4ICsrKysrKysrKysr
KystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3VjLmMKaW5kZXggZjY3ZjYyMjRiMWRmLi4wMTY4M2QxMDczNDgg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VjLmMKKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfdWMuYwpAQCAtMzM3LDE0ICszMzcsMTEgQEAgdm9pZCBpbnRl
bF91Y19maW5pKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCWludGVsX2d1Y19maW5p
KGd1Yyk7CiB9CiAKLXZvaWQgaW50ZWxfdWNfc2FuaXRpemUoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpCitzdGF0aWMgdm9pZCBfX3VjX3Nhbml0aXplKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1KQogewogCXN0cnVjdCBpbnRlbF9ndWMgKmd1YyA9ICZpOTE1LT5ndWM7CiAJc3Ry
dWN0IGludGVsX2h1YyAqaHVjID0gJmk5MTUtPmh1YzsKIAotCWlmICghVVNFU19HVUMoaTkxNSkp
Ci0JCXJldHVybjsKLQogCUdFTV9CVUdfT04oIUhBU19HVUMoaTkxNSkpOwogCiAJaW50ZWxfaHVj
X3Nhbml0aXplKGh1Yyk7CkBAIC0zNTMsNiArMzUwLDE0IEBAIHZvaWQgaW50ZWxfdWNfc2FuaXRp
emUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJX19pbnRlbF91Y19yZXNldF9odyhp
OTE1KTsKIH0KIAordm9pZCBpbnRlbF91Y19zYW5pdGl6ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSkKK3sKKwlpZiAoIVVTRVNfR1VDKGk5MTUpKQorCQlyZXR1cm47CisKKwlfX3VjX3Nh
bml0aXplKGk5MTUpOworfQorCiBpbnQgaW50ZWxfdWNfaW5pdF9odyhzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSkKIHsKIAlzdHJ1Y3QgaW50ZWxfZ3VjICpndWMgPSAmaTkxNS0+Z3VjOwpA
QCAtNDM4LDYgKzQ0Myw4IEBAIGludCBpbnRlbF91Y19pbml0X2h3KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1KQogZXJyX2xvZ19jYXB0dXJlOgogCWd1Y19jYXB0dXJlX2xvYWRfZXJyX2xv
ZyhndWMpOwogZXJyX291dDoKKwlfX3VjX3Nhbml0aXplKGk5MTUpOworCiAJLyoKIAkgKiBOb3Rl
IHRoYXQgdGhlcmUgaXMgbm8gZmFsbGJhY2sgYXMgZWl0aGVyIHVzZXIgZXhwbGljaXRseSBhc2tl
ZCBmb3IKIAkgKiB0aGUgR3VDIG9yIGRyaXZlciBkZWZhdWx0IG9wdGlvbiB3YXMgdG8gcnVuIHdp
dGggdGhlIEd1QyBlbmFibGVkLgpAQCAtNDYyLDYgKzQ2OSw3IEBAIHZvaWQgaW50ZWxfdWNfZmlu
aV9odyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAkJaW50ZWxfZ3VjX3N1Ym1pc3Np
b25fZGlzYWJsZShndWMpOwogCiAJZ3VjX2Rpc2FibGVfY29tbXVuaWNhdGlvbihndWMpOworCV9f
dWNfc2FuaXRpemUoaTkxNSk7CiB9CiAKIC8qKgpAQCAtNDc4LDcgKzQ4Niw3IEBAIHZvaWQgaW50
ZWxfdWNfcmVzZXRfcHJlcGFyZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAkJcmV0
dXJuOwogCiAJZ3VjX2Rpc2FibGVfY29tbXVuaWNhdGlvbihndWMpOwotCWludGVsX3VjX3Nhbml0
aXplKGk5MTUpOworCV9fdWNfc2FuaXRpemUoaTkxNSk7CiB9CiAKIHZvaWQgaW50ZWxfdWNfcnVu
dGltZV9zdXNwZW5kKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQotLSAKMi4xOS4yCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
