Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF54854CD
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2019 22:55:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5B766E64F;
	Wed,  7 Aug 2019 20:55:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ECBA6E3F5
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2019 20:55:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Aug 2019 13:55:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,358,1559545200"; d="scan'208";a="168755410"
Received: from jssummer-xeon.ra.intel.com ([10.23.184.90])
 by orsmga008.jf.intel.com with ESMTP; 07 Aug 2019 13:55:04 -0700
From: Stuart Summers <stuart.summers@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Aug 2019 13:55:56 -0700
Message-Id: <20190807205556.40435-2-stuart.summers@intel.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190807205556.40435-1-stuart.summers@intel.com>
References: <20190807205556.40435-1-stuart.summers@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Return true by default in mocs
 settings
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

UmVkdWNlIGNvZGUgYnkgZGVmYXVsdGluZyB0byB0cnVlIGluIHRoZSBNT0NTIHNldHRpbmdzCmlu
aXRpYWxpemF0aW9uIGZ1bmN0aW9uLiBTZXQgdG8gZmFsc2UgZm9yIHVuZXhwZWN0ZWQKcGxhdGZv
cm1zLgoKU2lnbmVkLW9mZi1ieTogU3R1YXJ0IFN1bW1lcnMgPHN0dWFydC5zdW1tZXJzQGludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMgfCA3ICsrLS0t
LS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jCmluZGV4IGZlYThlZjJmZDJhYS4uZmZkMTA1YzUz
ZmY0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9tb2NzLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbW9jcy5jCkBAIC0yOTEsMzEgKzI5MSwy
OCBAQCBzdGF0aWMgYm9vbCBnZXRfbW9jc19zZXR0aW5ncyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0LAog
CQkJICAgICAgc3RydWN0IGRybV9pOTE1X21vY3NfdGFibGUgKnRhYmxlKQogewogCXN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1ID0gZ3QtPmk5MTU7Ci0JYm9vbCByZXN1bHQgPSBmYWxzZTsK
Kwlib29sIHJlc3VsdCA9IHRydWU7CiAKIAlpZiAoSU5URUxfR0VOKGk5MTUpID49IDEyKSB7CiAJ
CXRhYmxlLT5zaXplICA9IEFSUkFZX1NJWkUodGlnZXJsYWtlX21vY3NfdGFibGUpOwogCQl0YWJs
ZS0+dGFibGUgPSB0aWdlcmxha2VfbW9jc190YWJsZTsKIAkJdGFibGUtPm5fZW50cmllcyA9IEdF
TjExX05VTV9NT0NTX0VOVFJJRVM7Ci0JCXJlc3VsdCA9IHRydWU7CiAJfSBlbHNlIGlmIChJU19H
RU4oaTkxNSwgMTEpKSB7CiAJCXRhYmxlLT5zaXplICA9IEFSUkFZX1NJWkUoaWNlbGFrZV9tb2Nz
X3RhYmxlKTsKIAkJdGFibGUtPnRhYmxlID0gaWNlbGFrZV9tb2NzX3RhYmxlOwogCQl0YWJsZS0+
bl9lbnRyaWVzID0gR0VOMTFfTlVNX01PQ1NfRU5UUklFUzsKLQkJcmVzdWx0ID0gdHJ1ZTsKIAl9
IGVsc2UgaWYgKElTX0dFTjlfQkMoaTkxNSkgfHwgSVNfQ0FOTk9OTEFLRShpOTE1KSkgewogCQl0
YWJsZS0+c2l6ZSAgPSBBUlJBWV9TSVpFKHNreWxha2VfbW9jc190YWJsZSk7CiAJCXRhYmxlLT5u
X2VudHJpZXMgPSBHRU45X05VTV9NT0NTX0VOVFJJRVM7CiAJCXRhYmxlLT50YWJsZSA9IHNreWxh
a2VfbW9jc190YWJsZTsKLQkJcmVzdWx0ID0gdHJ1ZTsKIAl9IGVsc2UgaWYgKElTX0dFTjlfTFAo
aTkxNSkpIHsKIAkJdGFibGUtPnNpemUgID0gQVJSQVlfU0laRShicm94dG9uX21vY3NfdGFibGUp
OwogCQl0YWJsZS0+bl9lbnRyaWVzID0gR0VOOV9OVU1fTU9DU19FTlRSSUVTOwogCQl0YWJsZS0+
dGFibGUgPSBicm94dG9uX21vY3NfdGFibGU7Ci0JCXJlc3VsdCA9IHRydWU7CiAJfSBlbHNlIHsK
IAkJV0FSTl9PTkNFKElOVEVMX0dFTihpOTE1KSA+PSA5LAogCQkJICAiUGxhdGZvcm0gdGhhdCBz
aG91bGQgaGF2ZSBhIE1PQ1MgdGFibGUgZG9lcyBub3QuXG4iKTsKKwkJcmVzdWx0ID0gZmFsc2U7
CiAJfQogCiAJLyogV2FEaXNhYmxlU2tpcENhY2hpbmc6c2tsLGJ4dCxrYmwsZ2xrICovCi0tIAoy
LjIyLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
