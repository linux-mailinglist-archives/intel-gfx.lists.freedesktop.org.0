Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 82B1D2C6741
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Nov 2020 14:54:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 091DB6ECF0;
	Fri, 27 Nov 2020 13:54:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BC0C6ECF0
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Nov 2020 13:54:46 +0000 (UTC)
IronPort-SDR: hvir4V7BBLrKbc0/iZlz705tfBhxHyC7X7KhMYXguQbqzmBGd8X3OzbhR4IZEC4lwLscbJjy7a
 omz5oioS1oZQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9817"; a="160168149"
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="160168149"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 05:54:45 -0800
IronPort-SDR: sPmZypavIJubmBLMbGa7Cc1q0K2zPWk7fiFWvy76FntAca8f6+KvPpnYrJvL1DZkAeGMyEjN2C
 of4oPwLBqNQA==
X-IronPort-AV: E=Sophos;i="5.78,374,1599548400"; d="scan'208";a="548054474"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2020 05:54:44 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Nov 2020 19:58:20 +0530
Message-Id: <20201127142820.8507-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201126210314.7882-9-uma.shankar@intel.com>
References: <20201126210314.7882-9-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v13 08/15] drm/i915/display: Enable colorspace
 programming for LSPCON devices
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RW5hYmxlIEhETUkgQ29sb3JzcGFjZSBmb3IgTFNQQ09OIGJhc2VkIGRldmljZXMuIFNlbmRpbmcg
Q29sb3JpbWV0cnkKZGF0YSBmb3IgSERSIHVzaW5nIEFWSSBpbmZvZnJhbWUuIExTUENPTiBmaXJt
d2FyZSBleHBlY3RzIHRoaXMgYW5kIHRob3VnaApTT0MgZHJpdmVzIERQLCBmb3IgSERNSSBwYW5l
bCBBVkkgaW5mb2ZyYW1lIGlzIHNlbnQgdG8gdGhlIExTUENPTiBkZXZpY2UKd2hpY2ggdHJhbnNm
ZXJzIHRoZSBzYW1lIHRvIEhETUkgc2luay4KCnYyOiBEcm9wcGVkIHN0YXRlIG1hbmFnZWQgaW4g
ZHJtIGNvcmUgYXMgcGVyIEphbmkgTmlrdWxhJ3Mgc3VnZ2VzdGlvbi4KCnYzOiBBbGlnbmVkIGNv
bG9yaW1ldHJ5IGhhbmRsaW5nIGZvciBsc3Bjb24gYXMgcGVyIGNvbXB1dGVfYXZpX2luZm9mcmFt
ZXMsCmFzIHN1Z2dlc3RlZCBieSBWaWxsZS4KCnY0OiBGaW5hbGx5IGZpeGVkIHRoaXMgd2l0aCBW
aWxsZSdzIGhlbHAsIHJlLXBocmFzZWQgdGhlIGNvbW1pdCBoZWFkZXIKYW5kIGRlc2NyaXB0aW9u
LgoKdjU6IFJlZ2lzdGVyIEhETUkgY29sb3JzcGFjZSBmb3IgbHNwY29uIGFuZCBtb3ZlIHRoaXMg
dG8KaW50ZWxfZHBfYWRkX3Byb3BlcnRpZXMgYXMgd2UgY2FuJ3QgY3JlYXRlIHByb3BlcnR5IGF0
IGxhdGVfcmVnaXN0ZXIuCgpDcmVkaXRzLXRvOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5r
YXJAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAu
YyAgICAgfCA5ICsrKysrKy0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9s
c3Bjb24uYyB8IDMgKysrCiAyIGZpbGVzIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMyBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKaW5kZXggZjA2
NjAzMWFmMTYyLi4yMWEwY2E2YWUyYTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMKQEAgLTcxOTMsMTAgKzcxOTMsMTMgQEAgaW50ZWxfZHBfYWRkX3Byb3BlcnRpZXMo
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3QK
IAllbHNlIGlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDUpCiAJCWRybV9jb25uZWN0b3JfYXR0
YWNoX21heF9icGNfcHJvcGVydHkoY29ubmVjdG9yLCA2LCAxMik7CiAKLQlpbnRlbF9hdHRhY2hf
ZHBfY29sb3JzcGFjZV9wcm9wZXJ0eShjb25uZWN0b3IpOwotCi0JaWYgKGludGVsX2Jpb3NfaXNf
bHNwY29uX3ByZXNlbnQoZGV2X3ByaXYsIHBvcnQpKQorCS8qIFJlZ2lzdGVyIEhETUkgY29sb3Jz
cGFjZSBmb3IgY2FzZSBvZiBsc3Bjb24gKi8KKwlpZiAoaW50ZWxfYmlvc19pc19sc3Bjb25fcHJl
c2VudChkZXZfcHJpdiwgcG9ydCkpIHsKIAkJZHJtX2Nvbm5lY3Rvcl9hdHRhY2hfY29udGVudF90
eXBlX3Byb3BlcnR5KGNvbm5lY3Rvcik7CisJCWludGVsX2F0dGFjaF9oZG1pX2NvbG9yc3BhY2Vf
cHJvcGVydHkoY29ubmVjdG9yKTsKKwl9IGVsc2UgeworCQlpbnRlbF9hdHRhY2hfZHBfY29sb3Jz
cGFjZV9wcm9wZXJ0eShjb25uZWN0b3IpOworCX0KIAogCWlmIChJU19HRU1JTklMQUtFKGRldl9w
cml2KSB8fCBJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQogCQlkcm1fb2JqZWN0X2F0dGFjaF9w
cm9wZXJ0eSgmY29ubmVjdG9yLT5iYXNlLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfbHNwY29uLmMKaW5kZXggMGE0YzA1ZDY3MTA4Li5jYjc2OGExYWU0YzkgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHNwY29uLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sc3Bjb24uYwpAQCAtNTIzLDYgKzUyMyw5
IEBAIHZvaWQgbHNwY29uX3NldF9pbmZvZnJhbWVzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNv
ZGVyLAogCWVsc2UKIAkJZnJhbWUuYXZpLmNvbG9yc3BhY2UgPSBIRE1JX0NPTE9SU1BBQ0VfUkdC
OwogCisJLyogU2V0IHRoZSBDb2xvcnNwYWNlIGFzIHBlciB0aGUgSERNSSBzcGVjICovCisJZHJt
X2hkbWlfYXZpX2luZm9mcmFtZV9jb2xvcnNwYWNlKCZmcmFtZS5hdmksIGNvbm5fc3RhdGUpOwor
CiAJLyogbm9uc2Vuc2UgY29tYmluYXRpb24gKi8KIAlkcm1fV0FSTl9PTihlbmNvZGVyLT5iYXNl
LmRldiwgY3J0Y19zdGF0ZS0+bGltaXRlZF9jb2xvcl9yYW5nZSAmJgogCQkgICAgY3J0Y19zdGF0
ZS0+b3V0cHV0X2Zvcm1hdCAhPSBJTlRFTF9PVVRQVVRfRk9STUFUX1JHQik7Ci0tIAoyLjI2LjIK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
