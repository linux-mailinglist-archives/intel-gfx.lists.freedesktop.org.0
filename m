Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5402258C2B
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 22:56:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40A756E825;
	Thu, 27 Jun 2019 20:56:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26D5F6E825
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 20:56:46 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 13:56:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,425,1557212400"; d="scan'208";a="164455611"
Received: from unknown (HELO mwahaha-bdw.ger.corp.intel.com) ([10.252.4.227])
 by fmsmga007.fm.intel.com with ESMTP; 27 Jun 2019 13:56:45 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jun 2019 21:56:04 +0100
Message-Id: <20190627205633.1143-9-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190627205633.1143-1-matthew.auld@intel.com>
References: <20190627205633.1143-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 08/37] drm/i915: setup io-mapping for LMEM
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

RnJvbTogQWJkaWVsIEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50ZWwuY29tPgoK
U2lnbmVkLW9mZi1ieTogQWJkaWVsIEphbnVsZ3VlIDxhYmRpZWwuamFudWxndWVAbGludXguaW50
ZWwuY29tPgpDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl9sbWVtLmMgfCAyOCArKysrKysrKysrKysr
KysrKysrKysrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyNiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl9sbWVt
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdpb25fbG1lbS5jCmluZGV4IGM0YjVh
ODg2MjdhMy4uMTU2NTVjYzUwMTNmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9yZWdpb25fbG1lbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lv
bl9sbWVtLmMKQEAgLTQzLDkgKzQzLDMzIEBAIGxtZW1fY3JlYXRlX29iamVjdChzdHJ1Y3QgaW50
ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtLAogCXJldHVybiBvYmo7CiB9CiAKK3N0YXRpYyB2b2lkCity
ZWdpb25fbG1lbV9yZWxlYXNlKHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptZW0pCit7CisJ
aW9fbWFwcGluZ19maW5pKCZtZW0tPmlvbWFwKTsKKwlpOTE1X21lbW9yeV9yZWdpb25fcmVsZWFz
ZV9idWRkeShtZW0pOworfQorCitzdGF0aWMgaW50CityZWdpb25fbG1lbV9pbml0KHN0cnVjdCBp
bnRlbF9tZW1vcnlfcmVnaW9uICptZW0pCit7CisJaW50IHJldDsKKworCWlmICghaW9fbWFwcGlu
Z19pbml0X3djKCZtZW0tPmlvbWFwLAorCQkJCW1lbS0+aW9fc3RhcnQsCisJCQkJcmVzb3VyY2Vf
c2l6ZSgmbWVtLT5yZWdpb24pKSkKKwkJcmV0dXJuIC1FSU87CisKKwlyZXQgPSBpOTE1X21lbW9y
eV9yZWdpb25faW5pdF9idWRkeShtZW0pOworCWlmIChyZXQpCisJCWlvX21hcHBpbmdfZmluaSgm
bWVtLT5pb21hcCk7CisKKwlyZXR1cm4gcmV0OworfQorCiBzdGF0aWMgY29uc3Qgc3RydWN0IGlu
dGVsX21lbW9yeV9yZWdpb25fb3BzIHJlZ2lvbl9sbWVtX29wcyA9IHsKLQkuaW5pdCA9IGk5MTVf
bWVtb3J5X3JlZ2lvbl9pbml0X2J1ZGR5LAotCS5yZWxlYXNlID0gaTkxNV9tZW1vcnlfcmVnaW9u
X3JlbGVhc2VfYnVkZHksCisJLmluaXQgPSByZWdpb25fbG1lbV9pbml0LAorCS5yZWxlYXNlID0g
cmVnaW9uX2xtZW1fcmVsZWFzZSwKIAkuY3JlYXRlX29iamVjdCA9IGxtZW1fY3JlYXRlX29iamVj
dCwKIH07CiAKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
