Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D20345136
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 21:56:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 609C589F71;
	Mon, 22 Mar 2021 20:56:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B883989F71
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 20:56:05 +0000 (UTC)
IronPort-SDR: RhO5J/lYI+ingDKOvjnjGvViL8JGoPtgzqMymp9r7z5qO4y9bga03EmYh6GWV42MAx0dpqk7sY
 2apDSsYw6Q1w==
X-IronPort-AV: E=McAfee;i="6000,8403,9931"; a="251700666"
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="251700666"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 13:56:04 -0700
IronPort-SDR: V/WcXXZxkC0y99WrXrH/nGKzdmgYGfx86Cq1umDNS3Fv+3ZR2HBkvgl8cemLlipLFbauk3Eint
 cutejH213X3w==
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="414643340"
Received: from doothoux-mobl3.amr.corp.intel.com (HELO
 josouza-mobl2.intel.com) ([10.254.31.75])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 13:56:02 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Mar 2021 13:58:04 -0700
Message-Id: <20210322205805.62205-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210322205805.62205-1-jose.souza@intel.com>
References: <20210322205805.62205-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/3] drm/i915: Do not set any power wells
 when there is no display
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
