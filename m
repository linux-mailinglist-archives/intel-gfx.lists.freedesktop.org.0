Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD22E1C43
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2019 15:21:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFEAF892FF;
	Wed, 23 Oct 2019 13:21:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 309F6890AB
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2019 13:21:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Oct 2019 06:21:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,221,1569308400"; d="scan'208";a="188250445"
Received: from cmclare-mobl.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.252.7.98])
 by orsmga007.jf.intel.com with ESMTP; 23 Oct 2019 06:21:03 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Oct 2019 14:20:55 +0100
Message-Id: <20191023132100.9578-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191023132100.9578-1-matthew.auld@intel.com>
References: <20191023132100.9578-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/7] drm/i915: setup io-mapping for LMEM
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
ZWwuY29tPgpDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpSZXZpZXdl
ZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcmVnaW9uX2xtZW0uYyB8IDI4ICsrKysrKysrKysrKysrKysr
KysrKystLQogMSBmaWxlIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcmVnaW9uX2xtZW0uYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3JlZ2lvbl9sbWVtLmMKaW5kZXggMTk5NTMyMDU2
ZTFiLi45YTM1MWFmNDVjZTYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X3JlZ2lvbl9sbWVtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcmVnaW9uX2xt
ZW0uYwpAQCAtOSw4ICs5LDMyIEBACiAjaW5jbHVkZSAiZ2VtL2k5MTVfZ2VtX3JlZ2lvbi5oIgog
I2luY2x1ZGUgImludGVsX3JlZ2lvbl9sbWVtLmgiCiAKK3N0YXRpYyB2b2lkCityZWdpb25fbG1l
bV9yZWxlYXNlKHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVnaW9uICptZW0pCit7CisJaW9fbWFwcGlu
Z19maW5pKCZtZW0tPmlvbWFwKTsKKwlpbnRlbF9tZW1vcnlfcmVnaW9uX3JlbGVhc2VfYnVkZHko
bWVtKTsKK30KKworc3RhdGljIGludAorcmVnaW9uX2xtZW1faW5pdChzdHJ1Y3QgaW50ZWxfbWVt
b3J5X3JlZ2lvbiAqbWVtKQoreworCWludCByZXQ7CisKKwlpZiAoIWlvX21hcHBpbmdfaW5pdF93
YygmbWVtLT5pb21hcCwKKwkJCQltZW0tPmlvX3N0YXJ0LAorCQkJCXJlc291cmNlX3NpemUoJm1l
bS0+cmVnaW9uKSkpCisJCXJldHVybiAtRUlPOworCisJcmV0ID0gaW50ZWxfbWVtb3J5X3JlZ2lv
bl9pbml0X2J1ZGR5KG1lbSk7CisJaWYgKHJldCkKKwkJaW9fbWFwcGluZ19maW5pKCZtZW0tPmlv
bWFwKTsKKworCXJldHVybiByZXQ7Cit9CisKIGNvbnN0IHN0cnVjdCBpbnRlbF9tZW1vcnlfcmVn
aW9uX29wcyBpbnRlbF9yZWdpb25fbG1lbV9vcHMgPSB7Ci0JLmluaXQgPSBpbnRlbF9tZW1vcnlf
cmVnaW9uX2luaXRfYnVkZHksCi0JLnJlbGVhc2UgPSBpbnRlbF9tZW1vcnlfcmVnaW9uX3JlbGVh
c2VfYnVkZHksCisJLmluaXQgPSByZWdpb25fbG1lbV9pbml0LAorCS5yZWxlYXNlID0gcmVnaW9u
X2xtZW1fcmVsZWFzZSwKIAkuY3JlYXRlX29iamVjdCA9IF9faTkxNV9nZW1fbG1lbV9vYmplY3Rf
Y3JlYXRlLAogfTsKLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
