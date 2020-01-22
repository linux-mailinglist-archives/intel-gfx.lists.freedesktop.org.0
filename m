Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95E05145765
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 15:03:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBE5B6F531;
	Wed, 22 Jan 2020 14:03:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3669F6F531;
 Wed, 22 Jan 2020 14:03:12 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 06:03:11 -0800
X-IronPort-AV: E=Sophos;i="5.70,350,1574150400"; d="scan'208";a="215915900"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 06:03:09 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 22 Jan 2020 16:02:59 +0200
Message-Id: <20200122140259.12086-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200122140259.12086-1-jani.nikula@intel.com>
References: <20200122140259.12086-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2 2/2] drm/debugfs: also take per device driver
 features into account
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VXNlIGRybV9jb3JlX2NoZWNrX2ZlYXR1cmUoKSB0byBlbnN1cmUgYm90aCB0aGUgZHJpdmVyIGZl
YXR1cmVzIGFuZCB0aGUKcGVyLWRldmljZSBkcml2ZXIgZmVhdHVyZXMgYXJlIHRha2VuIGludG8g
YWNjb3VudCB3aGVuIHJlZ2lzdGVyaW5nCmRlYnVnZnMgZmlsZXMuCgpSZXZpZXdlZC1ieTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1i
eTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9k
cm0vZHJtX2RlYnVnZnMuYyB8IDUgKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RlYnVn
ZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9kcm1fZGVidWdmcy5jCmluZGV4IGVhYjBmMjY4N2NkNi4u
YWYzNTMxYmY1N2QzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2RlYnVnZnMuYwor
KysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2RlYnVnZnMuYwpAQCAtMTgwLDEwICsxODAsNyBAQCBp
bnQgZHJtX2RlYnVnZnNfY3JlYXRlX2ZpbGVzKGNvbnN0IHN0cnVjdCBkcm1faW5mb19saXN0ICpm
aWxlcywgaW50IGNvdW50LAogCWludCBpOwogCiAJZm9yIChpID0gMDsgaSA8IGNvdW50OyBpKysp
IHsKLQkJdTMyIGZlYXR1cmVzID0gZmlsZXNbaV0uZHJpdmVyX2ZlYXR1cmVzOwotCi0JCWlmIChm
ZWF0dXJlcyAhPSAwICYmCi0JCSAgICAoZGV2LT5kcml2ZXItPmRyaXZlcl9mZWF0dXJlcyAmIGZl
YXR1cmVzKSAhPSBmZWF0dXJlcykKKwkJaWYgKCFkcm1fY29yZV9jaGVja19mZWF0dXJlKGRldiwg
ZmlsZXNbaV0uZHJpdmVyX2ZlYXR1cmVzKSkKIAkJCWNvbnRpbnVlOwogCiAJCXRtcCA9IGttYWxs
b2Moc2l6ZW9mKHN0cnVjdCBkcm1faW5mb19ub2RlKSwgR0ZQX0tFUk5FTCk7Ci0tIAoyLjIwLjEK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
