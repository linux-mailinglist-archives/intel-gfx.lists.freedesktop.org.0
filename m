Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34CF53DAE8A
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 23:51:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D80206EE84;
	Thu, 29 Jul 2021 21:51:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3F3F6E0FD
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jul 2021 21:51:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="192578354"
X-IronPort-AV: E=Sophos;i="5.84,279,1620716400"; d="scan'208";a="192578354"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 14:51:24 -0700
X-IronPort-AV: E=Sophos;i="5.84,279,1620716400"; d="scan'208";a="664570781"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.59])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 14:51:24 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 29 Jul 2021 14:55:44 -0700
Message-Id: <20210729215545.192606-9-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210729215545.192606-1-jose.souza@intel.com>
References: <20210729215545.192606-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH CI 09/10] drm/i915/bios: Only use opregion panel
 index for display ver 8 and older
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gbmV3ZXIgcGxhdGZvcm0gdGhpcyBvcHJlZ2lvbiBjYWxsIGFsd2F5cyBmYWlscywgYWxzbyBp
dCBkbyBub3QKc3VwcG9ydCBtdWx0aXBsZSBwYW5lbHMgc28gZHJvcHBpbmcgaXQuCgpSZXZpZXdl
ZC1ieTogTWF0dCBBdHdvb2QgPG1hdHRoZXcucy5hdHdvb2RAaW50ZWwuY29tPgpDYzogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IEphbmkgTmlrdWxh
IDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUg
U291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYmlvcy5jIHwgMTkgKysrKysrKy0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5n
ZWQsIDcgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Jpb3MuYwppbmRleCBkZWQwNGU1Yjc3NzJiLi44Nzc1OTgzYTc1YzZi
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwpAQCAtMTkyNCw3
ICsxOTI0LDcgQEAgc3RhdGljIHZvaWQgcGFyc2VfaW50ZWdyYXRlZF9wYW5lbChzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSwKIHsKIAljb25zdCBzdHJ1Y3QgdmJ0X2hlYWRlciAqdmJ0ID0g
aTkxNS0+b3ByZWdpb24udmJ0OwogCWNvbnN0IHN0cnVjdCBiZGJfaGVhZGVyICpiZGI7Ci0JaW50
IGxmcF9pbnN0ID0gMCwgcGFuZWxfaW5kZXgsIG9wcmVnaW9uX3BhbmVsX2luZGV4OworCWludCBs
ZnBfaW5zdCA9IDAsIHBhbmVsX2luZGV4OwogCiAJaWYgKGRldmRhdGEtPmNoaWxkLmhhbmRsZSA9
PSBIQU5ETEVfTEZQXzEpCiAJCWxmcF9pbnN0ID0gMTsKQEAgLTE5MzcsMTcgKzE5MzcsMTIgQEAg
c3RhdGljIHZvaWQgcGFyc2VfaW50ZWdyYXRlZF9wYW5lbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwKIAliZGIgPSBnZXRfYmRiX2hlYWRlcih2YnQpOwogCXBhbmVsX2luZGV4ID0gZ2V0
X2xmcF9wYW5lbF9pbmRleChpOTE1LCBiZGIsIGxmcF9pbnN0KTsKIAotCW9wcmVnaW9uX3BhbmVs
X2luZGV4ID0gaW50ZWxfb3ByZWdpb25fZ2V0X3BhbmVsX3R5cGUoaTkxNSk7Ci0JLyoKLQkgKiBU
T0RPOiB0aGUgY3VycmVudCBpbXBsZW1lbnRhdGlvbiBhbHdheXMgdXNlIHRoZSBwYW5lbCBpbmRl
eCBmcm9tCi0JICogb3ByZWdpb24gaWYgYXZhaWxhYmxlIGR1ZSB0byBpc3N1ZXMgd2l0aCBvbGQg
cGxhdGZvcm1zLgotCSAqIEJ1dCB0aGlzIGRvIG5vdCBzdXBwb3J0cyB0d28gcGFuZWxzIGFuZCBp
biBTS0wgb3IgbmV3ZXIgSSBuZXZlciBzYXcgYQotCSAqIHN5c3RlbSB3ZXJlIHRoaXMgY2FsbCBy
ZXR1cm5zIGEgdmFsaWQgdmFsdWUuCi0JICogU28gd2lsbCBjaGFuZ2UgdGhpcyB0byBvbmx5IHVz
ZSBvcHJlZ2lvbiB1cCB0byBCRFcgaW4gYSBzZXBhcmF0ZWQKLQkgKiBjb21taXQuCi0JICovCi0J
aWYgKG9wcmVnaW9uX3BhbmVsX2luZGV4ID49IDApCi0JCXBhbmVsX2luZGV4ID0gb3ByZWdpb25f
cGFuZWxfaW5kZXg7CisJaWYgKERJU1BMQVlfVkVSKGk5MTUpIDwgOSkgeworCQlpbnQgb3ByZWdp
b25fcGFuZWxfaW5kZXggPSBpbnRlbF9vcHJlZ2lvbl9nZXRfcGFuZWxfdHlwZShpOTE1KTsKKwor
CQlpZiAob3ByZWdpb25fcGFuZWxfaW5kZXggPj0gMCkKKwkJCW9wcmVnaW9uX3BhbmVsX2luZGV4
ID0gcGFuZWxfaW5kZXg7CisJfQogCiAJaWYgKHBhbmVsX2luZGV4ID09IC0xKQogCQlyZXR1cm47
Ci0tIAoyLjMyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eAo=
