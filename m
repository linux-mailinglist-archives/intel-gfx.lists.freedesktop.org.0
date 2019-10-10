Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94EEDD2CE0
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 16:51:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D66F76EB62;
	Thu, 10 Oct 2019 14:51:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B19A06EB62
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 14:51:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 07:51:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,280,1566889200"; d="scan'208";a="200493767"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 10 Oct 2019 07:51:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Oct 2019 17:51:38 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Oct 2019 17:51:27 +0300
Message-Id: <20191010145127.7487-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191010145127.7487-1-ville.syrjala@linux.intel.com>
References: <20191010145127.7487-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/5] drm/i915: Make hdcp2_msg_timeout.timeout u16
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFs
bCB0aGUgdGltZW91dCB2YWx1ZXMgZml0IGluIHUxNiwgc28gbGV0J3Mgc2hyaW5rIHRoZSBzdHJ1
Y3R1cmUKYSBiaXQuCgpUaGlzIGVuZHMgdXAgYWN0dWFsbHkgaW5jcmVhc2luZyB0aGUgLnRleHQg
c2l6ZSBhIGJpdCBkdWUgdG8Kc29tZSBjaGFuZ2VzIGluIGluc3RydWN0aW9ucyAoY29uc3RhbnQg
aW11bCtzbWFsbCBqbXBzIHJlcGxhY2VkCndpdGggbW92K2JpZ2dlciBqbXBxcykuIFNlZW1zIHBy
ZXR0eSBhcmJpdHJhcnkgdG8gbWUgc28gSSdsbApqdXN0IHByZXRlbmQgSSBkaWRuJ3Qgc2VlIGl0
LgoKICAgIHRleHQJICAgZGF0YQkgICAgYnNzCSAgICBkZWMJICAgIGhleAlmaWxlbmFtZQotICAz
NDUyMQkgICAgMzYwCSAgICAgIDAJICAzNDg4MQkgICA4ODQxCWludGVsX2hkbWkubworICAzNDUz
NwkgICAgMzYwCSAgICAgIDAJICAzNDg5NwkgICA4ODUxCWludGVsX2hkbWkubwoKU2lnbmVkLW9m
Zi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyB8IDIgKy0KIDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKaW5kZXggMmRkNzk4ZDhiOTYxLi41ZTk3ZGYzOGQy
ODEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jCkBAIC0xNTI5
LDcgKzE1MjksNyBAQCBib29sIGludGVsX2hkbWlfaGRjcF9jaGVja19saW5rKHN0cnVjdCBpbnRl
bF9kaWdpdGFsX3BvcnQgKmludGVsX2RpZ19wb3J0KQogCiBzdHJ1Y3QgaGRjcDJfaGRtaV9tc2df
dGltZW91dCB7CiAJdTggbXNnX2lkOwotCXUzMiB0aW1lb3V0OworCXUxNiB0aW1lb3V0OwogfTsK
IAogc3RhdGljIGNvbnN0IHN0cnVjdCBoZGNwMl9oZG1pX21zZ190aW1lb3V0IGhkY3AyX21zZ190
aW1lb3V0W10gPSB7Ci0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
