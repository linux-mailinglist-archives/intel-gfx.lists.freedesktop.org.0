Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 824FAE2D10
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 11:20:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB0886E1AA;
	Thu, 24 Oct 2019 09:20:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 374976E1A4
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 09:20:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18946541-1500050 
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 10:19:55 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2019 10:19:49 +0100
Message-Id: <20191024091954.18451-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
In-Reply-To: <20191024091954.18451-1-chris@chris-wilson.co.uk>
References: <20191024091954.18451-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/7] drm/i915: setup io-mapping for LMEM
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
Y3JlYXRlLAogfTsKLS0gCjIuMjQuMC5yYzAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
