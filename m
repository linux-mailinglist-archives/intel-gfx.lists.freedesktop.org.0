Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 850B658526
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 17:04:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55C9F6E055;
	Thu, 27 Jun 2019 15:04:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DE776E055
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 15:04:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 08:04:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,424,1557212400"; d="scan'208";a="245845643"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga001.jf.intel.com with ESMTP; 27 Jun 2019 08:04:02 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 3E29C84028C; Thu, 27 Jun 2019 18:04:01 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jun 2019 18:04:00 +0300
Message-Id: <20190627150400.916-1-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <156164720964.18552.13645135786549877106@skylake-alporthouse-com>
References: <156164720964.18552.13645135786549877106@skylake-alporthouse-com>
Subject: [Intel-gfx] [PATCH] drm/i915: Fix memleak in runtime wakeref
 tracking
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

SWYgd2UgdW50cmFjayB3YWtlcmVmcywgdGhlIGFjdHVhbCBjb3VudCBtYXkgcmVhY2ggemVyby4K
SG93ZXZlciB0aGUga3JlYWxsb2NlZCBvd25lcnMgYXJyYXkgaXMgc3RpbGwgdGhlcmUgYW5kCm5l
ZWRzIHRvIGJlIHRha2VuIGNhcmUgb2YuIEZyZWUgdGhlIG93bmVycyB1bmNvbmRpdGlvbmFsbHkK
dG8gZml4IHRoZSBsZWFrLgoKRml4ZXM6IGJkNzgwZjM3YTM2MSAoImRybS9pOTE1OiBUcmFjayBh
bGwgaGVsZCBycG0gd2FrZXJlZnMiKQpSZXBvcnRlZC1ieTogSnVoYS1QZWtrYSBIZWlra2lsYSA8
anVoYXBla2thLmhlaWtraWxhQGdtYWlsLmNvbT4KQ2M6IEp1aGEtUGVra2EgSGVpa2tpbGEgPGp1
aGFwZWtrYS5oZWlra2lsYUBnbWFpbC5jb20+CkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KU2lnbmVkLW9mZi1ieTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFs
YUBsaW51eC5pbnRlbC5jb20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ydW50aW1lX3Bt
LmMgfCAxMCArKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA2IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRp
bWVfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1bnRpbWVfcG0uYwppbmRleCA1
MDJjNTQ0Mjg1NzAuLjhkMWFlYmMzZTg1NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcnVudGltZV9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3J1
bnRpbWVfcG0uYwpAQCAtMjIxLDEzICsyMjEsMTEgQEAgX191bnRyYWNrX2FsbF93YWtlcmVmcyhz
dHJ1Y3QgaW50ZWxfcnVudGltZV9wbV9kZWJ1ZyAqZGVidWcsCiBzdGF0aWMgdm9pZAogZHVtcF9h
bmRfZnJlZV93YWtlcmVmX3RyYWNraW5nKHN0cnVjdCBpbnRlbF9ydW50aW1lX3BtX2RlYnVnICpk
ZWJ1ZykKIHsKLQlzdHJ1Y3QgZHJtX3ByaW50ZXIgcDsKKwlpZiAoZGVidWctPmNvdW50KSB7CisJ
CXN0cnVjdCBkcm1fcHJpbnRlciBwID0gZHJtX2RlYnVnX3ByaW50ZXIoImk5MTUiKTsKIAotCWlm
ICghZGVidWctPmNvdW50KQotCQlyZXR1cm47Ci0KLQlwID0gZHJtX2RlYnVnX3ByaW50ZXIoImk5
MTUiKTsKLQlfX3ByaW50X2ludGVsX3J1bnRpbWVfcG1fd2FrZXJlZigmcCwgZGVidWcpOworCQlf
X3ByaW50X2ludGVsX3J1bnRpbWVfcG1fd2FrZXJlZigmcCwgZGVidWcpOworCX0KIAogCWtmcmVl
KGRlYnVnLT5vd25lcnMpOwogfQotLSAKMi4xNy4xCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZng=
