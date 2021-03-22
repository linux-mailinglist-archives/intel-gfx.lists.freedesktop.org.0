Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6497344E1C
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 19:09:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0EEE6E102;
	Mon, 22 Mar 2021 18:09:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 590CC6E102
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 18:09:01 +0000 (UTC)
IronPort-SDR: Ofg1/mF1Xl9t9/nIRcY6yBSIKdUxbsX+kc2977EAXnOreA4dXNbebF4IsIs1A0xtrEK+f66RSj
 LNA9cbtQVEeg==
X-IronPort-AV: E=McAfee;i="6000,8403,9931"; a="169654091"
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="169654091"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 11:09:00 -0700
IronPort-SDR: 4eE1wtkrWko6DI2PeA7wfm2YpYwk6uUKXzC3OlECDZ3y1mkS941jH/xZILO1qByeZ6n3UEMPmY
 jPm66rzvGKXQ==
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="524538854"
Received: from ryanmart-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.254.180.219])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 11:08:58 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Mar 2021 11:10:54 -0700
Message-Id: <20210322181055.207619-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210322181055.207619-1-jose.souza@intel.com>
References: <20210322181055.207619-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Do not set any power wells when
 there is no display
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UG93ZXIgd2VsbHMgYXJlIG9ubHkgcGFydCBvZiBkaXNwbGF5IGJsb2NrIGFuZCBub3QgbmVjZXNz
YXJ5IHdoZW4KcnVubmluZyBhIGhlYWRsZXNzIGRyaXZlci4KCkNjOiBMdWNhcyBEZSBNYXJjaGkg
PGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxh
IDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgfCA1ICsrKystCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwppbmRleCA3ZTBlYWE4NzIzNTAuLmU2YTNiM2U2
YjFmNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3Bvd2VyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3Bvd2VyLmMKQEAgLTQ2NzMsNyArNDY3MywxMCBAQCBpbnQgaW50ZWxfcG93ZXJfZG9tYWlu
c19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIAkgKiBUaGUgZW5hYmxp
bmcgb3JkZXIgd2lsbCBiZSBmcm9tIGxvd2VyIHRvIGhpZ2hlciBpbmRleGVkIHdlbGxzLAogCSAq
IHRoZSBkaXNhYmxpbmcgb3JkZXIgaXMgcmV2ZXJzZWQuCiAJICovCi0JaWYgKElTX0FMREVSTEFL
RV9TKGRldl9wcml2KSB8fCBJU19ERzEoZGV2X3ByaXYpKSB7CisJaWYgKCFIQVNfRElTUExBWShk
ZXZfcHJpdikpIHsKKwkJcG93ZXJfZG9tYWlucy0+cG93ZXJfd2VsbF9jb3VudCA9IDA7CisJCWVy
ciA9IDA7CisJfSBlbHNlIGlmIChJU19BTERFUkxBS0VfUyhkZXZfcHJpdikgfHwgSVNfREcxKGRl
dl9wcml2KSkgewogCQllcnIgPSBzZXRfcG93ZXJfd2VsbHNfbWFzayhwb3dlcl9kb21haW5zLCB0
Z2xfcG93ZXJfd2VsbHMsCiAJCQkJCSAgIEJJVF9VTEwoVEdMX0RJU1BfUFdfVENfQ09MRF9PRkYp
KTsKIAl9IGVsc2UgaWYgKElTX1JPQ0tFVExBS0UoZGV2X3ByaXYpKSB7Ci0tIAoyLjMxLjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
