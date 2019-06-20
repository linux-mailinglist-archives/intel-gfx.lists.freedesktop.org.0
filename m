Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 97BB84CAD1
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jun 2019 11:27:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 085E589C94;
	Thu, 20 Jun 2019 09:27:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D7C889C2A
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jun 2019 09:27:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jun 2019 02:27:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,396,1557212400"; d="scan'208";a="168462796"
Received: from frciesli-mobl1.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.249.139.190])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Jun 2019 02:27:33 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 20 Jun 2019 12:27:29 +0300
Message-Id: <20190620092730.4700-3-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
In-Reply-To: <20190620092730.4700-1-lionel.g.landwerlin@intel.com>
References: <20190620092730.4700-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915/icl: whitelist
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
d29ya2Fyb3VuZHMuYwppbmRleCAzNjdmNWNjNTk2NWYuLjMzMWEwMDUwMTU0ZCAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYworKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCkBAIC0xMTMxLDYgKzExMzEs
MTIgQEAgc3RhdGljIHZvaWQgaWNsX3doaXRlbGlzdF9idWlsZChzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmUpCiAKIAkJLyogV2FFbmFibGVTdGF0ZUNhY2hlUmVkaXJlY3RUb0NTOmljbCAq
LwogCQl3aGl0ZWxpc3RfcmVnKHcsIEdFTjlfU0xJQ0VfQ09NTU9OX0VDT19DSElDS0VOMSk7CisK
KwkJLyogV2FBbGxvd1BNRGVwdGhBbmRJbnZvY2F0aW9uQ291bnRBY2Nlc3NGcm9tVU1EOmljbCAq
LworCQl3aGl0ZWxpc3RfcmVnKHcsIFBTX0RFUFRIX0NPVU5UKTsKKwkJd2hpdGVsaXN0X3JlZyh3
LCBQU19ERVBUSF9DT1VOVF9VRFcpOworCQl3aGl0ZWxpc3RfcmVnKHcsIFBTX0lOVk9DQVRJT05f
Q09VTlQpOworCQl3aGl0ZWxpc3RfcmVnKHcsIFBTX0lOVk9DQVRJT05fQ09VTlRfVURXKTsKIAkJ
YnJlYWs7CiAKIAljYXNlIFZJREVPX0RFQ09ERV9DTEFTUzoKLS0gCjIuMjEuMC4zOTIuZ2Y4ZjY3
ODcxNTllCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
