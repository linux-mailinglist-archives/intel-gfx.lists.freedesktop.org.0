Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2AEE2F3A
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 12:39:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2EAA6E218;
	Thu, 24 Oct 2019 10:39:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79D3A6E218
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 10:39:06 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 03:39:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,224,1569308400"; d="scan'208";a="373174509"
Received: from rosetta.fi.intel.com ([10.237.72.194])
 by orsmga005.jf.intel.com with ESMTP; 24 Oct 2019 03:39:04 -0700
Received: by rosetta.fi.intel.com (Postfix, from userid 1000)
 id 5F620843CC8; Thu, 24 Oct 2019 13:38:59 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 24 Oct 2019 13:38:58 +0300
Message-Id: <20191024103858.28113-2-mika.kuoppala@linux.intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191024103858.28113-1-mika.kuoppala@linux.intel.com>
References: <20191024103858.28113-1-mika.kuoppala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: whitelist
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

RnJvbTogVGFwYW5pIFDDpGxsaSA8dGFwYW5pLnBhbGxpQGludGVsLmNvbT4KCkFzIHdpdGggY29t
bWl0IDNmZTAxMDdlNDVhYiwgdGhpcyBjaGFuZ2UgZml4ZXMgbXVsdGlwbGUgdGVzdHMgdGhhdCBh
cmUKdXNpbmcgdGhlIGludm9jYXRpb24gY291bnRzLiBEb2N1bWVudGF0aW9uIGRvZXNuJ3QgbGlz
dCB0aGUgd29ya2Fyb3VuZApmb3IgVEdMIGJ1dCBhcHBseWluZyBpdCBmaXhlcyB0aGUgdGVzdHMu
CgpTaWduZWQtb2ZmLWJ5OiBUYXBhbmkgUMOkbGxpIDx0YXBhbmkucGFsbGlAaW50ZWwuY29tPgpB
Y2tlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClJldmlld2Vk
LWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+ClJl
dmlld2VkLWJ5OiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4K
LS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwgMjAgKysr
KysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAyMCBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKaW5kZXggYWY4YTgxODMx
NTRhLi44NmRlZDIwM2IyZGQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3dvcmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29y
a2Fyb3VuZHMuYwpAQCAtMTIxNSw2ICsxMjE1LDI2IEBAIHN0YXRpYyB2b2lkIGljbF93aGl0ZWxp
c3RfYnVpbGQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCiBzdGF0aWMgdm9pZCB0
Z2xfd2hpdGVsaXN0X2J1aWxkKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIHsKKwlz
dHJ1Y3QgaTkxNV93YV9saXN0ICp3ID0gJmVuZ2luZS0+d2hpdGVsaXN0OworCisJc3dpdGNoIChl
bmdpbmUtPmNsYXNzKSB7CisJY2FzZSBSRU5ERVJfQ0xBU1M6CisJCS8qCisJCSAqIFdhQWxsb3dQ
TURlcHRoQW5kSW52b2NhdGlvbkNvdW50QWNjZXNzRnJvbVVNRDp0Z2wKKwkJICoKKwkJICogVGhp
cyBjb3ZlcnMgNCByZWdpc3RlcnMgd2hpY2ggYXJlIG5leHQgdG8gb25lIGFub3RoZXIgOgorCQkg
KiAgIC0gUFNfSU5WT0NBVElPTl9DT1VOVAorCQkgKiAgIC0gUFNfSU5WT0NBVElPTl9DT1VOVF9V
RFcKKwkJICogICAtIFBTX0RFUFRIX0NPVU5UCisJCSAqICAgLSBQU19ERVBUSF9DT1VOVF9VRFcK
KwkJICovCisJCXdoaXRlbGlzdF9yZWdfZXh0KHcsIFBTX0lOVk9DQVRJT05fQ09VTlQsCisJCQkJ
ICBSSU5HX0ZPUkNFX1RPX05PTlBSSVZfQUNDRVNTX1JEIHwKKwkJCQkgIFJJTkdfRk9SQ0VfVE9f
Tk9OUFJJVl9SQU5HRV80KTsKKwkJYnJlYWs7CisJZGVmYXVsdDoKKwkJYnJlYWs7CisJfQogfQog
CiB2b2lkIGludGVsX2VuZ2luZV9pbml0X3doaXRlbGlzdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUpCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
