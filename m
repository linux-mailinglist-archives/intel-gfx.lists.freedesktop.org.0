Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6321CAF22
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Oct 2019 21:25:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A8036E1BB;
	Thu,  3 Oct 2019 19:25:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F97D6EA59
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Oct 2019 19:25:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Oct 2019 12:25:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,253,1566889200"; d="scan'208";a="191358304"
Received: from bkokkula-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.7.77])
 by fmsmga008.fm.intel.com with ESMTP; 03 Oct 2019 12:25:00 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  3 Oct 2019 20:24:29 +0100
Message-Id: <20191003192444.10113-8-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191003192444.10113-1-matthew.auld@intel.com>
References: <20191003192444.10113-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 07/22] drm/i915: setup io-mapping for LMEM
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
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdpb25fbG1lbS5jCmluZGV4IDdhM2Y5
NmUxZjc2Ni4uMDUxMDY5NjY0MDc0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9yZWdpb25fbG1lbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lv
bl9sbWVtLmMKQEAgLTM2LDggKzM2LDMyIEBAIGxtZW1fY3JlYXRlX29iamVjdChzdHJ1Y3QgaW50
ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtLAogCXJldHVybiBvYmo7CiB9CiAKK3N0YXRpYyB2b2lkCity
ZWdpb25fbG1lbV9yZWxlYXNlKHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptZW0pCit7CisJ
aW9fbWFwcGluZ19maW5pKCZtZW0tPmlvbWFwKTsKKwlpbnRlbF9tZW1vcnlfcmVnaW9uX3JlbGVh
c2VfYnVkZHkobWVtKTsKK30KKworc3RhdGljIGludAorcmVnaW9uX2xtZW1faW5pdChzdHJ1Y3Qg
aW50ZWxfbWVtb3J5X3JlZ2lvbiAqbWVtKQoreworCWludCByZXQ7CisKKwlpZiAoIWlvX21hcHBp
bmdfaW5pdF93YygmbWVtLT5pb21hcCwKKwkJCQltZW0tPmlvX3N0YXJ0LAorCQkJCXJlc291cmNl
X3NpemUoJm1lbS0+cmVnaW9uKSkpCisJCXJldHVybiAtRUlPOworCisJcmV0ID0gaW50ZWxfbWVt
b3J5X3JlZ2lvbl9pbml0X2J1ZGR5KG1lbSk7CisJaWYgKHJldCkKKwkJaW9fbWFwcGluZ19maW5p
KCZtZW0tPmlvbWFwKTsKKworCXJldHVybiByZXQ7Cit9CisKIGNvbnN0IHN0cnVjdCBpbnRlbF9t
ZW1vcnlfcmVnaW9uX29wcyBpbnRlbF9yZWdpb25fbG1lbV9vcHMgPSB7Ci0JLmluaXQgPSBpbnRl
bF9tZW1vcnlfcmVnaW9uX2luaXRfYnVkZHksCi0JLnJlbGVhc2UgPSBpbnRlbF9tZW1vcnlfcmVn
aW9uX3JlbGVhc2VfYnVkZHksCisJLmluaXQgPSByZWdpb25fbG1lbV9pbml0LAorCS5yZWxlYXNl
ID0gcmVnaW9uX2xtZW1fcmVsZWFzZSwKIAkuY3JlYXRlX29iamVjdCA9IGxtZW1fY3JlYXRlX29i
amVjdCwKIH07Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
