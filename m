Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2EF550E5
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 15:55:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35A296E10A;
	Tue, 25 Jun 2019 13:55:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DB8A6E100
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 13:55:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 06:55:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="163630035"
Received: from mbarlik-mobl.ger.corp.intel.com (HELO delly.ger.corp.intel.com)
 ([10.249.140.16])
 by fmsmga007.fm.intel.com with ESMTP; 25 Jun 2019 06:55:11 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Jun 2019 16:55:03 +0300
Message-Id: <20190625135503.4262-4-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
In-Reply-To: <20190625135503.4262-1-lionel.g.landwerlin@intel.com>
References: <20190625135503.4262-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 3/3] drm/i915/icl: whitelist
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
d29ya2Fyb3VuZHMuYwppbmRleCBkYTdkNDhhYzRlZTcuLjlhMTk5ODBjY2ViNSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCkBAIC0xMTMxLDYgKzExMzEs
MTIgQEAgc3RhdGljIHZvaWQgaWNsX3doaXRlbGlzdF9idWlsZChzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmUpCiAKIAkJLyogV2FFbmFibGVTdGF0ZUNhY2hlUmVkaXJlY3RUb0NTOmljbCAq
LwogCQl3aGl0ZWxpc3RfcmVnKHcsIEdFTjlfU0xJQ0VfQ09NTU9OX0VDT19DSElDS0VOMSk7CisK
KwkJLyogV2FBbGxvd1BNRGVwdGhBbmRJbnZvY2F0aW9uQ291bnRBY2Nlc3NGcm9tVU1EOmljbCAq
LworCQl3aGl0ZWxpc3RfcmVnX2V4dCh3LCBQU19ERVBUSF9DT1VOVCwgUklOR19GT1JDRV9UT19O
T05QUklWX1JEKTsKKwkJd2hpdGVsaXN0X3JlZ19leHQodywgUFNfREVQVEhfQ09VTlRfVURXLCBS
SU5HX0ZPUkNFX1RPX05PTlBSSVZfUkQpOworCQl3aGl0ZWxpc3RfcmVnX2V4dCh3LCBQU19JTlZP
Q0FUSU9OX0NPVU5ULCBSSU5HX0ZPUkNFX1RPX05PTlBSSVZfUkQpOworCQl3aGl0ZWxpc3RfcmVn
X2V4dCh3LCBQU19JTlZPQ0FUSU9OX0NPVU5UX1VEVywgUklOR19GT1JDRV9UT19OT05QUklWX1JE
KTsKIAkJYnJlYWs7CiAKIAljYXNlIFZJREVPX0RFQ09ERV9DTEFTUzoKLS0gCjIuMjEuMC4zOTIu
Z2Y4ZjY3ODcxNTllCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
