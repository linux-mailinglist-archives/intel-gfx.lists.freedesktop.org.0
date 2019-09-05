Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DFE0AA10C
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 13:16:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 582676E064;
	Thu,  5 Sep 2019 11:16:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6751E6E071
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2019 11:16:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 04:16:49 -0700
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="187945520"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 04:16:47 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Date: Thu,  5 Sep 2019 13:16:31 +0200
Message-Id: <20190905111631.23441-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/guc: Fix detection of GuC submission
 in use
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGRyaXZlciBhbHdheXMgYXNzdW1lcyBhY3RpdmUgR3VDIHN1Ym1pc3Npb24gbW9kZSBpZiBp
dCBpcwpzdXBwb3J0ZWQuICBUaGF0J3Mgbm90IHRydWUgaWYgR3VDIGluaXRpYWxpemF0aW9uIGZh
aWxzIGZvciBzb21lCnJlYXNvbi4gIFRoYXQgbWF5IGxlYWQgdG8ga2VybmVsIHBhbmljcywgY2F1
c2VkIGUuZy4gYnkgZXhlY2xpc3RzCmZhbGxiYWNrIHN1Ym1pc3Npb24gbW9kZSBpbmNvcnJlY3Rs
eSBkZXRlY3RpbmcgR3VDIHN1Ym1pc3Npb24gaW4gdXNlLgoKRml4IGl0IGJ5IGFsc28gY2hlY2tp
bmcgZm9yIEd1QyBlbmFibGVkIHN0YXR1cy4KCkZpeGVzOiAzNTZjNDg0ODIyZTYgKCJkcm0vaTkx
NS91YzogQWRkIGV4cGxpY2l0IERJU0FCTEVEIHN0YXRlIGZvciBmaXJtd2FyZSIpClNpZ25lZC1v
ZmYtYnk6IEphbnVzeiBLcnp5c3p0b2ZpayA8amFudXN6LmtyenlzenRvZmlrQGxpbnV4LmludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5oIHwgMyArKy0K
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuaAppbmRleCA1Mjc5OTVjMjExOTYuLmIyOGJhYjY0YTI4
MCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWMuaAorKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5oCkBAIC01MSw3ICs1MSw4IEBA
IHN0YXRpYyBpbmxpbmUgYm9vbCBpbnRlbF91Y19zdXBwb3J0c19ndWNfc3VibWlzc2lvbihzdHJ1
Y3QgaW50ZWxfdWMgKnVjKQogCiBzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfdWNfdXNlc19ndWNf
c3VibWlzc2lvbihzdHJ1Y3QgaW50ZWxfdWMgKnVjKQogewotCXJldHVybiBpbnRlbF9ndWNfaXNf
c3VibWlzc2lvbl9zdXBwb3J0ZWQoJnVjLT5ndWMpOworCXJldHVybiBpbnRlbF9ndWNfaXNfZW5h
YmxlZCgmdWMtPmd1YykgJiYKKwkgICAgICAgaW50ZWxfZ3VjX2lzX3N1Ym1pc3Npb25fc3VwcG9y
dGVkKCZ1Yy0+Z3VjKTsKIH0KIAogc3RhdGljIGlubGluZSBib29sIGludGVsX3VjX3N1cHBvcnRz
X2h1YyhzdHJ1Y3QgaW50ZWxfdWMgKnVjKQotLSAKMi4yMS4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
