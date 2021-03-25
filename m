Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FD834991B
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 19:08:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64CA26EE23;
	Thu, 25 Mar 2021 18:08:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CADDE6EE12
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 18:07:32 +0000 (UTC)
IronPort-SDR: Y4SAtgdbvVGF9hMe0LSDFmtzRknCXYm7P00oFeiLgmRr1w7AiNFi/LoqddMYlENS+7i+ni88w+
 fq21FL6QM+fA==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="178112548"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="178112548"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:32 -0700
IronPort-SDR: xbttGT3W8aC0w5o+aRKKJetATDCh9GS4Q6H0o63rG1mkiG+AuDL1kh6DUUGw5Dlx8FgJrITU5d
 sV6gw4jgP2EQ==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="453176649"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:32 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 11:06:57 -0700
Message-Id: <20210325180720.401410-28-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210325180720.401410-1-matthew.d.roper@intel.com>
References: <20210325180720.401410-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 27/50] drm/i915/adl_p: Handle TC cold
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
Cc: me@freedesktop.org
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
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93ZXIuYwppbmRleCAyMGNmYjg2YzAxNzQuLjNlNDA3
ZDBiZjM2MyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3Bvd2VyLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3Bvd2VyLmMKQEAgLTU1MCw3ICs1NTAsOCBAQCBzdGF0aWMgdm9pZCBpY2xfdGNfcG9y
dF9hc3NlcnRfcmVmX2hlbGQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAogCWlm
IChkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgIWRpZ19wb3J0KSkKIAkJcmV0dXJuOwogCi0J
aWYgKElTX0RJU1BMQVlfVkVSKGRldl9wcml2LCAxMSkgJiYgZGlnX3BvcnQtPnRjX2xlZ2FjeV9w
b3J0KQorCWlmIChJU19BTERFUkxBS0VfUChkZXZfcHJpdikgfHwKKwkgICAoSVNfRElTUExBWV9W
RVIoZGV2X3ByaXYsIDExKSAmJiBkaWdfcG9ydC0+dGNfbGVnYWN5X3BvcnQpKQogCQlyZXR1cm47
CiAKIAlkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgIWludGVsX3RjX3BvcnRfcmVmX2hlbGQo
ZGlnX3BvcnQpKTsKLS0gCjIuMjUuNAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
