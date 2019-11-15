Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52F78FD23E
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 02:11:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A41656F3A0;
	Fri, 15 Nov 2019 01:11:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9D5E6F3A0
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 01:11:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 17:11:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,306,1569308400"; d="scan'208";a="216950528"
Received: from dhiatt-desk.jf.intel.com ([10.54.81.11])
 by orsmga002.jf.intel.com with ESMTP; 14 Nov 2019 17:11:12 -0800
From: don.hiatt@intel.com
To: intel-gfx@lists.freedesktop.org
Date: Thu, 14 Nov 2019 17:11:11 -0800
Message-Id: <20191115011112.25249-1-don.hiatt@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/guc: Add GuC method to determine
 if submission is active.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRG9uIEhpYXR0IDxkb24uaGlhdHRAaW50ZWwuY29tPgoKQWRkIGludGVsX2d1Y19zdWJt
aXNzaW9uX2lzX2VuYWJsZWQoKSBmdW5jdGlvbiB0byBkZXRlcm1pbmUgaWYKR3VDIHN1Ym1pc3Np
b24gaXMgYWN0aXZlLgoKdjI6IE5vIG5lZWQgdG8gbG9vayBhdCBlbmdpbmUgdG8gZGV0ZXJtaW5l
IGlmIHN1Ym1pc3Npb24gaXMgZW5hYmxlZC4KClNpZ25lZC1vZmYtYnk6IERvbiBIaWF0dCA8ZG9u
LmhpYXR0QGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIHwg
NiArKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kcnYuaAppbmRleCAxNzc5ZjYwMGZjZmIuLjdkMDMyZjU3ZmM2ZSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2Rydi5oCkBAIC0yMDQ0LDQgKzIwNDQsMTAgQEAgaTkxNV9jb2hlcmVudF9tYXBfdHlwZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAlyZXR1cm4gSEFTX0xMQyhpOTE1KSA/IEk5
MTVfTUFQX1dCIDogSTkxNV9NQVBfV0M7CiB9CiAKK3N0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF9n
dWNfc3VibWlzc2lvbl9pc19lbmFibGVkKHN0cnVjdCBpbnRlbF9ndWMgKmd1YykKK3sKKwlyZXR1
cm4gaW50ZWxfZ3VjX2lzX3N1Ym1pc3Npb25fc3VwcG9ydGVkKGd1YykgJiYKKwkJaW50ZWxfZ3Vj
X2lzX3J1bm5pbmcoZ3VjKTsKK30KKwogI2VuZGlmCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
