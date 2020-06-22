Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48E432036C7
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 14:30:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41E5E6E566;
	Mon, 22 Jun 2020 12:30:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF4366E523
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2020 12:30:30 +0000 (UTC)
IronPort-SDR: BNnt2q3WDdRZ1Icpzn89CGZieijdqF3gw7ZjC9bwHDRNe7oukwGI2i+zifwVOn+y/c6lEV9Ele
 QAIfP7gARITQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9659"; a="228402421"
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="228402421"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 05:30:30 -0700
IronPort-SDR: miWoFougFAUTDEnhg5zzuyKODrwQnKuOzrewCvgil7Ht0otIruNThLqUZeTMkbDjd4b3UaadxA
 7AjvXn6iiuBQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,266,1589266800"; d="scan'208";a="292832620"
Received: from unknown (HELO linuxpresi1-desktop.iind.intel.com)
 ([10.223.74.152])
 by orsmga002.jf.intel.com with ESMTP; 22 Jun 2020 05:30:27 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Jun 2020 18:30:27 +0530
Message-Id: <20200622130029.28667-9-uma.shankar@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200622130029.28667-1-uma.shankar@intel.com>
References: <20200622130029.28667-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v4 08/10] drm/i915/lspcon: Do not send infoframes to
 non-HDMI sinks
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCk5v
bi1IRE1JIHNpbmtzIHNob3VsZG4ndCBiZSBzZW50IGluZm9mcmFtZXMuIENoZWNrIGZvciB0aGF0
IHdoZW4KdXNpbmcgTFNQQ09OLgoKRklYTUU6IEhvdyBkbyB3ZSB0dXJuIG9mZiBpbmZvZnJhbWVz
IG9uY2UgZW5hYmxlZD8gRG8gd2UgZXZlbgogICAgICAgaGF2ZSB0bz8KClNpZ25lZC1vZmYtYnk6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgICAgICAgfCAxMCArKysr
LS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMu
aCB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgICAgICAg
ICAgIHwgIDcgKysrKysrLQogMyBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCA3IGRl
bGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCmluZGV4
IGNhN2JiMjI5NGQyYi4uY2E3OTExYTQ3ZDBhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMKQEAgLTM0NTEsMTkgKzM0NTEsMTcgQEAgc3RhdGljIHZvaWQgaW50ZWxf
ZGRpX3ByZV9lbmFibGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJCWludGVs
X2RkaV9wcmVfZW5hYmxlX2hkbWkoc3RhdGUsIGVuY29kZXIsIGNydGNfc3RhdGUsCiAJCQkJCSAg
Y29ubl9zdGF0ZSk7CiAJfSBlbHNlIHsKLQkJc3RydWN0IGludGVsX2xzcGNvbiAqbHNwY29uID0K
LQkJCQllbmNfdG9faW50ZWxfbHNwY29uKGVuY29kZXIpOworCQlzdHJ1Y3QgaW50ZWxfZGlnaXRh
bF9wb3J0ICpkaWdfcG9ydCA9IGVuY190b19kaWdfcG9ydChlbmNvZGVyKTsKIAogCQlpbnRlbF9k
ZGlfcHJlX2VuYWJsZV9kcChzdGF0ZSwgZW5jb2RlciwgY3J0Y19zdGF0ZSwKIAkJCQkJY29ubl9z
dGF0ZSk7Ci0JCWlmIChsc3Bjb24tPmFjdGl2ZSkgewotCQkJc3RydWN0IGludGVsX2RpZ2l0YWxf
cG9ydCAqZGlnX3BvcnQgPQotCQkJCQllbmNfdG9fZGlnX3BvcnQoZW5jb2Rlcik7CiAKKwkJLyog
RklYTUUgcHJlY29tcHV0ZSBldmVyeXRoaW5nIHByb3Blcmx5ICovCisJCS8qIEZJWE1FIGhvdyBk
byB3ZSB0dXJuIGluZm9mcmFtZXMgb2ZmIGFnYWluPyAqLworCQlpZiAoZGlnX3BvcnQtPmxzcGNv
bi5hY3RpdmUgJiYgZGlnX3BvcnQtPmRwLmhhc19oZG1pX3NpbmspCiAJCQlkaWdfcG9ydC0+c2V0
X2luZm9mcmFtZXMoZW5jb2RlciwKIAkJCQkJCSBjcnRjX3N0YXRlLT5oYXNfaW5mb2ZyYW1lLAog
CQkJCQkJIGNydGNfc3RhdGUsIGNvbm5fc3RhdGUpOwotCQl9CiAJfQogfQogCmRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCmluZGV4IGNh
OTlhMDVmNTJkYS4uNTdmODlmZGNiNTBmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaApAQCAtMTI3Miw2ICsxMjcyLDcgQEAgc3Ry
dWN0IGludGVsX2RwIHsKIAl1OCBzaW5rX2NvdW50OwogCWJvb2wgbGlua19tc3Q7CiAJYm9vbCBs
aW5rX3RyYWluZWQ7CisJYm9vbCBoYXNfaGRtaV9zaW5rOwogCWJvb2wgaGFzX2F1ZGlvOwogCWJv
b2wgcmVzZXRfbGlua19wYXJhbXM7CiAJdTggZHBjZFtEUF9SRUNFSVZFUl9DQVBfU0laRV07CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKaW5kZXggNDI1ODljYWU3NjZkLi5j
NmIyYjMwN2NmNGUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKQEAg
LTYxMDQsNyArNjEwNCwxMSBAQCBpbnRlbF9kcF9zZXRfZWRpZChzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwKQogCWVkaWQgPSBpbnRlbF9kcF9nZXRfZWRpZChpbnRlbF9kcCk7CiAJaW50ZWxfY29u
bmVjdG9yLT5kZXRlY3RfZWRpZCA9IGVkaWQ7CiAKLQlpbnRlbF9kcC0+aGFzX2F1ZGlvID0gZHJt
X2RldGVjdF9tb25pdG9yX2F1ZGlvKGVkaWQpOworCWlmIChlZGlkICYmIGVkaWQtPmlucHV0ICYg
RFJNX0VESURfSU5QVVRfRElHSVRBTCkgeworCQlpbnRlbF9kcC0+aGFzX2hkbWlfc2luayA9IGRy
bV9kZXRlY3RfaGRtaV9tb25pdG9yKGVkaWQpOworCQlpbnRlbF9kcC0+aGFzX2F1ZGlvID0gZHJt
X2RldGVjdF9tb25pdG9yX2F1ZGlvKGVkaWQpOworCX0KKwogCWRybV9kcF9jZWNfc2V0X2VkaWQo
JmludGVsX2RwLT5hdXgsIGVkaWQpOwogCWludGVsX2RwLT5lZGlkX3F1aXJrcyA9IGRybV9kcF9n
ZXRfZWRpZF9xdWlya3MoZWRpZCk7CiB9CkBAIC02MTE4LDYgKzYxMjIsNyBAQCBpbnRlbF9kcF91
bnNldF9lZGlkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApCiAJa2ZyZWUoaW50ZWxfY29ubmVj
dG9yLT5kZXRlY3RfZWRpZCk7CiAJaW50ZWxfY29ubmVjdG9yLT5kZXRlY3RfZWRpZCA9IE5VTEw7
CiAKKwlpbnRlbF9kcC0+aGFzX2hkbWlfc2luayA9IGZhbHNlOwogCWludGVsX2RwLT5oYXNfYXVk
aW8gPSBmYWxzZTsKIAlpbnRlbF9kcC0+ZWRpZF9xdWlya3MgPSAwOwogfQotLSAKMi4yMi4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
