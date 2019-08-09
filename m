Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C997885DB
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Aug 2019 00:27:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 855B86EEFB;
	Fri,  9 Aug 2019 22:27:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7226E6EEF1;
 Fri,  9 Aug 2019 22:26:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Aug 2019 15:26:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,366,1559545200"; d="scan'208";a="176927005"
Received: from jmath3-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.5.86])
 by fmsmga007.fm.intel.com with ESMTP; 09 Aug 2019 15:26:56 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Aug 2019 23:26:14 +0100
Message-Id: <20190809222643.23142-9-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190809222643.23142-1-matthew.auld@intel.com>
References: <20190809222643.23142-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 08/37] drm/i915: setup io-mapping for LMEM
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
Cc: dri-devel@lists.freedesktop.org
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
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9yZWdpb25fbG1lbS5jCmluZGV4IGNhOTA2
ZDFmZjYzMS4uN2YxNTQzZTI3NTljIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9yZWdpb25fbG1lbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lv
bl9sbWVtLmMKQEAgLTQxLDggKzQxLDMyIEBAIGxtZW1fY3JlYXRlX29iamVjdChzdHJ1Y3QgaW50
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
