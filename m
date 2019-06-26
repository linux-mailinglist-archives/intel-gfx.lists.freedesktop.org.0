Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6250956C49
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jun 2019 16:38:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7751F6E45B;
	Wed, 26 Jun 2019 14:38:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29BA46E451
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jun 2019 14:37:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 07:37:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="183183212"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 26 Jun 2019 07:37:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Jun 2019 17:40:09 +0300
Message-Id: <20190626144020.2155-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190626144020.2155-1-jani.nikula@intel.com>
References: <20190626144020.2155-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 02/13] drm/i915: add include path to subdir
 Makefiles
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2l0aCB0aGUgc3ViZGlyZWN0b3JpZXMgd2UgbG9zdCB0aGUgYWJpbGl0eSB0byBidWlsZCBpbmRp
dmlkdWFsIGZpbGVzIG9uCnRoZSBjb21tYW5kIGxpbmUsIGZvciBleGFtcGxlOgoKJCBtYWtlIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5vCgpUaGlzIHdhcyBkdWUg
dG8gbWlzc2luZyBpbmNsdWRlIHBhdGhzLiBBZGQgdGhlIGluY2x1ZGUgcGF0aHMgdG8gc3ViZGly
Ck1ha2VmaWxlcy4KCk5vdGUgdGhhdCBub25lIG9mIHRoZSBvdGhlciBvcHRpb25zIGluIHRoZSB0
b3AgbGV2ZWwgaTkxNSBNYWtlZmlsZSBhcmUKdGFrZW4gaW50byBhY2NvdW50IHdoZW4gYnVpbGRp
bmcgaW5kaXZpZHVhbCBmaWxlcy4KClNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9NYWtlZmls
ZSB8IDMgKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vTWFrZWZpbGUgICAgIHwgNiArKysr
Ky0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L01ha2VmaWxlICAgICAgfCAzICsrKwogMyBmaWxl
cyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9NYWtlZmlsZSBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvTWFrZWZpbGUKaW5kZXggMWM3NWI1Yzk3OTBjLi5lZWM2OTYxMDE1YTEgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvTWFrZWZpbGUKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9NYWtlZmlsZQpAQCAtMSwyICsxLDUgQEAKKyMgRm9y
IGJ1aWxkaW5nIGluZGl2aWR1YWwgc3ViZGlyIGZpbGVzIG9uIHRoZSBjb21tYW5kIGxpbmUKK3N1
YmRpci1jY2ZsYWdzLXkgKz0gLUkkKHNyY3RyZWUpLyQoc3JjKS8uLgorCiAjIEV4dHJhIGhlYWRl
ciB0ZXN0cwogaW5jbHVkZSAkKHNyYykvTWFrZWZpbGUuaGVhZGVyLXRlc3QKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9NYWtlZmlsZSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9NYWtlZmlsZQppbmRleCAwN2U3YjhiODQwZWEuLmVlYzY5NjEwMTVhMSAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL01ha2VmaWxlCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9NYWtlZmlsZQpAQCAtMSArMSw1IEBACi1pbmNsdWRlICQoc3JjKS9NYWtlZmls
ZS5oZWFkZXItdGVzdCAjIEV4dHJhIGhlYWRlciB0ZXN0cworIyBGb3IgYnVpbGRpbmcgaW5kaXZp
ZHVhbCBzdWJkaXIgZmlsZXMgb24gdGhlIGNvbW1hbmQgbGluZQorc3ViZGlyLWNjZmxhZ3MteSAr
PSAtSSQoc3JjdHJlZSkvJChzcmMpLy4uCisKKyMgRXh0cmEgaGVhZGVyIHRlc3RzCitpbmNsdWRl
ICQoc3JjKS9NYWtlZmlsZS5oZWFkZXItdGVzdApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvTWFrZWZpbGUgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9NYWtlZmlsZQppbmRl
eCAxYzc1YjVjOTc5MGMuLmVlYzY5NjEwMTVhMSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvTWFrZWZpbGUKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvTWFrZWZpbGUK
QEAgLTEsMiArMSw1IEBACisjIEZvciBidWlsZGluZyBpbmRpdmlkdWFsIHN1YmRpciBmaWxlcyBv
biB0aGUgY29tbWFuZCBsaW5lCitzdWJkaXItY2NmbGFncy15ICs9IC1JJChzcmN0cmVlKS8kKHNy
YykvLi4KKwogIyBFeHRyYSBoZWFkZXIgdGVzdHMKIGluY2x1ZGUgJChzcmMpL01ha2VmaWxlLmhl
YWRlci10ZXN0Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
