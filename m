Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3523D1D84
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 07:39:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB5366EDEB;
	Thu, 22 Jul 2021 05:39:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 210E76E85E
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jul 2021 05:39:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="208456078"
X-IronPort-AV: E=Sophos;i="5.84,260,1620716400"; d="scan'208";a="208456078"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 22:39:26 -0700
X-IronPort-AV: E=Sophos;i="5.84,260,1620716400"; d="scan'208";a="470415094"
Received: from jkandi-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.209.170.189])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 22:39:25 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Jul 2021 22:43:37 -0700
Message-Id: <20210722054338.12891-9-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210722054338.12891-1-jose.souza@intel.com>
References: <20210722054338.12891-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 09/10] drm/i915/bios: Only use opregion panel
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
dCBkbyBub3QKc3VwcG9ydCBtdWx0aXBsZSBwYW5lbHMgc28gZHJvcHBpbmcgaXQuCgpDYzogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IEphbmkgTmlr
dWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8g
ZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYmlvcy5jIHwgMTkgKysrKysrKy0tLS0tLS0tLS0tLQogMSBmaWxlIGNo
YW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwppbmRleCBkMWFkNmQ2MjVlNTIxLi42Yzg0ODM4NGEy
YWRhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3Mu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwpAQCAtMTky
NCw3ICsxOTI0LDcgQEAgc3RhdGljIHZvaWQgcGFyc2VfaW50ZWdyYXRlZF9wYW5lbChzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKIHsKIAljb25zdCBzdHJ1Y3QgdmJ0X2hlYWRlciAqdmJ0
ID0gaTkxNS0+b3ByZWdpb24udmJ0OwogCWNvbnN0IHN0cnVjdCBiZGJfaGVhZGVyICpiZGI7Ci0J
aW50IGxmcF9pbnN0ID0gMCwgcGFuZWxfaW5kZXgsIG9wcmVnaW9uX3BhbmVsX2luZGV4OworCWlu
dCBsZnBfaW5zdCA9IDAsIHBhbmVsX2luZGV4OwogCiAJaWYgKGRldmRhdGEtPmNoaWxkLmhhbmRs
ZSA9PSBIQU5ETEVfTEZQXzEpCiAJCWxmcF9pbnN0ID0gMTsKQEAgLTE5MzcsMTcgKzE5MzcsMTIg
QEAgc3RhdGljIHZvaWQgcGFyc2VfaW50ZWdyYXRlZF9wYW5lbChzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSwKIAliZGIgPSBnZXRfYmRiX2hlYWRlcih2YnQpOwogCXBhbmVsX2luZGV4ID0g
Z2V0X2xmcF9wYW5lbF9pbmRleChpOTE1LCBiZGIsIGxmcF9pbnN0KTsKIAotCW9wcmVnaW9uX3Bh
bmVsX2luZGV4ID0gaW50ZWxfb3ByZWdpb25fZ2V0X3BhbmVsX3R5cGUoaTkxNSk7Ci0JLyoKLQkg
KiBUT0RPOiB0aGUgY3VycmVudCBpbXBsZW1lbnRhdGlvbiBhbHdheXMgdXNlIHRoZSBwYW5lbCBp
bmRleCBmcm9tCi0JICogb3ByZWdpb24gaWYgYXZhaWxhYmxlIGR1ZSB0byBpc3N1ZXMgd2l0aCBv
bGQgcGxhdGZvcm1zLgotCSAqIEJ1dCB0aGlzIGRvIG5vdCBzdXBwb3J0cyB0d28gcGFuZWxzIGFu
ZCBpbiBTS0wgb3IgbmV3ZXIgSSBuZXZlciBzYXcgYQotCSAqIHN5c3RlbSB3ZXJlIHRoaXMgY2Fs
bCByZXR1cm5zIGEgdmFsaWQgdmFsdWUuCi0JICogU28gd2lsbCBjaGFuZ2UgdGhpcyB0byBvbmx5
IHVzZSBvcHJlZ2lvbiB1cCB0byBCRFcgaW4gYSBzZXBhcmF0ZWQKLQkgKiBjb21taXQuCi0JICov
Ci0JaWYgKG9wcmVnaW9uX3BhbmVsX2luZGV4ID49IDApCi0JCXBhbmVsX2luZGV4ID0gb3ByZWdp
b25fcGFuZWxfaW5kZXg7CisJaWYgKERJU1BMQVlfVkVSKGk5MTUpIDwgOSkgeworCQlpbnQgb3By
ZWdpb25fcGFuZWxfaW5kZXggPSBpbnRlbF9vcHJlZ2lvbl9nZXRfcGFuZWxfdHlwZShpOTE1KTsK
KworCQlpZiAob3ByZWdpb25fcGFuZWxfaW5kZXggPj0gMCkKKwkJCW9wcmVnaW9uX3BhbmVsX2lu
ZGV4ID0gcGFuZWxfaW5kZXg7CisJfQogCiAJaWYgKHBhbmVsX2luZGV4ID09IC0xKQogCQlyZXR1
cm47Ci0tIAoyLjMyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
