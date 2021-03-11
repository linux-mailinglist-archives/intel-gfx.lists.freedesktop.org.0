Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3D6338076
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 23:37:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41B356EE9A;
	Thu, 11 Mar 2021 22:36:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B62656EEA4
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 22:36:49 +0000 (UTC)
IronPort-SDR: aMwL418UxPkULB+Zd9hy9JvaY+DdVdXK8v8jHSOE7fXhMAQyGJ61IIGnsPzxiBKvfOUFwD/nX0
 Lqi4QajLg6nw==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="250116446"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="250116446"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:36:46 -0800
IronPort-SDR: q/XICXnYRK15lFwxgahv8LnxL5isxOJRDCKBau7ruTh2od7uay4d6Ce89OoQQBWL7V/13fP9Rd
 /MdBZumiYT1A==
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="438852747"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:36:45 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Mar 2021 14:36:09 -0800
Message-Id: <20210311223632.3191939-34-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210311223632.3191939-1-matthew.d.roper@intel.com>
References: <20210311223632.3191939-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 33/56] drm/i915/adl_p: Handle TC cold
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

RnJvbTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+CgpPbiBB
REwtUCBUQyBjb2xkIGlzIGV4aXRlZCBhbmQgYmxvY2tlZCB3aGVuIGxlZ2FjeSBhdXggaXMgcG93
ZXJlZCwKdGhhdCBpcyBleGFjbHkgdGhlIHNhbWUgb2Ygd2hhdCBJQ0wgbmVlZCBmb3Igc3RhdGlj
IFRDIHBvcnRzLgoKVE9ETzogV2hlbiBhIFRCVCBodWIgb3IgbW9uaXRvciBpcyBjb25uZWN0ZWQg
aXQgd2lsbCBjYXVzZSBUQlQgYW5kCmxlZ2FjeSBhdXggdG8gYmUgcG93ZXJlZCBhdCB0aGUgc2Ft
ZSB0aW1lLCBob3BlZnVsbHkgdGhpcyB3aWxsIG5vdApjYXVzZSBhbnkgaXNzdWVzIGJ1dCBpZiBp
dCBkbywgc29tZSByZXdvcmsgd2lsbCBiZSBuZWVkZWQuCgpCU3BlYzogNTU0ODAKQ2M6IEltcmUg
RGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IENsaW50b24gVGF5
bG9yIDxDbGludG9uLkEuVGF5bG9yQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dCBSb3Bl
ciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYyB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBp
bnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3Bvd2VyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwppbmRleCAzYjMwNjA0ZTg1MGEuLjE5ZDIw
YThjMjc4YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3Bvd2VyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3Bvd2VyLmMKQEAgLTU1MCw3ICs1NTAsOCBAQCBzdGF0aWMgdm9pZCBpY2xfdGNfcG9y
dF9hc3NlcnRfcmVmX2hlbGQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCWlm
IChkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgIWRpZ19wb3J0KSkKIAkJcmV0dXJuOwogCi0J
aWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA9PSAxMSAmJiBkaWdfcG9ydC0+dGNfbGVnYWN5X3Bv
cnQpCisJaWYgKElTX0FMREVSTEFLRV9QKGRldl9wcml2KSB8fAorCSAgIChESVNQTEFZX1ZFUihk
ZXZfcHJpdikgPT0gMTEgJiYgZGlnX3BvcnQtPnRjX2xlZ2FjeV9wb3J0KSkKIAkJcmV0dXJuOwog
CiAJZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sICFpbnRlbF90Y19wb3J0X3JlZl9oZWxkKGRp
Z19wb3J0KSk7Ci0tIAoyLjI1LjQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
