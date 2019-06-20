Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBC84C814
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 09:16:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DF116E3E9;
	Thu, 20 Jun 2019 07:16:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB2046E3E9
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 07:16:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 00:16:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,396,1557212400"; d="scan'208";a="182980486"
Received: from mtegowsk-mobl.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.249.139.175])
 by fmsmga004.fm.intel.com with ESMTP; 20 Jun 2019 00:16:11 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jun 2019 10:15:46 +0300
Message-Id: <20190620071546.19852-3-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
In-Reply-To: <20190620071546.19852-1-lionel.g.landwerlin@intel.com>
References: <20190620071546.19852-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/icl: whitelist
 PS_(DEPTH|INVOCATION)_COUNT
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

VGhlIHNhbWUgdGVzdHMgZmFpbGluZyBvbiBDRkwrIHBsYXRmb3JtcyBhcmUgYWxzbyBmYWlsaW5n
IG9uIElDTC4KRG9jdW1lbnRhdGlvbiBkb2Vzbid0IGxpc3QgdGhlCldhQWxsb3dQTURlcHRoQW5k
SW52b2NhdGlvbkNvdW50QWNjZXNzRnJvbVVNRCB3b3JrYXJvdW5kIGZvciBJQ0wgYnV0CmFwcGx5
aW5nIGl0IGZpeGVzIHRoZSBzYW1lIHRlc3RzIGFzIENGTC4KClNpZ25lZC1vZmYtYnk6IExpb25l
bCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgNiArKysrKysKIDEgZmlsZSBj
aGFuZ2VkLCA2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
d29ya2Fyb3VuZHMuYwppbmRleCA5MGRmNThlZDE0ODYuLjg0YTY3OTYwNjk3MSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCkBAIC0xMDkyLDYgKzEwOTIs
MTIgQEAgc3RhdGljIHZvaWQgaWNsX3doaXRlbGlzdF9idWlsZChzdHJ1Y3QgaTkxNV93YV9saXN0
ICp3KQogCiAJLyogV2FFbmFibGVTdGF0ZUNhY2hlUmVkaXJlY3RUb0NTOmljbCAqLwogCXdoaXRl
bGlzdF9yZWcodywgR0VOOV9TTElDRV9DT01NT05fRUNPX0NISUNLRU4xKTsKKworCS8qIFdhQWxs
b3dQTURlcHRoQW5kSW52b2NhdGlvbkNvdW50QWNjZXNzRnJvbVVNRDppY2wgKi8KKwl3aGl0ZWxp
c3RfcmVnKHcsIFBTX0RFUFRIX0NPVU5UKTsKKwl3aGl0ZWxpc3RfcmVnKHcsIFBTX0RFUFRIX0NP
VU5UX1VEVyk7CisJd2hpdGVsaXN0X3JlZyh3LCBQU19JTlZPQ0FUSU9OX0NPVU5UKTsKKwl3aGl0
ZWxpc3RfcmVnKHcsIFBTX0lOVk9DQVRJT05fQ09VTlRfVURXKTsKIH0KIAogdm9pZCBpbnRlbF9l
bmdpbmVfaW5pdF93aGl0ZWxpc3Qoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQotLSAK
Mi4yMS4wLjM5Mi5nZjhmNjc4NzE1OWUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
