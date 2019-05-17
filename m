Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B03021AF9
	for <lists+intel-gfx@lfdr.de>; Fri, 17 May 2019 17:52:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D99489149;
	Fri, 17 May 2019 15:52:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2452989149
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 May 2019 15:51:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 May 2019 08:51:57 -0700
X-ExtLoop1: 1
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.121])
 by orsmga007.jf.intel.com with ESMTP; 17 May 2019 08:51:55 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 May 2019 21:49:09 +0530
Message-Id: <1558109949-3309-1-git-send-email-uma.shankar@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <20190517140638.GT24299@intel.com>
References: <20190517140638.GT24299@intel.com>
Subject: [Intel-gfx] [v12 05/12] drm/i915: Attach HDR metadata property to
 connector
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXR0YWNoIEhEUiBtZXRhZGF0YSBwcm9wZXJ0eSB0byBjb25uZWN0b3Igb2JqZWN0LgoKdjI6IFJl
YmFzZQoKdjM6IFVwZGF0ZWQgdGhlIHByb3BlcnR5IG5hbWUgYXMgcGVyIHVwZGF0ZWQgbmFtZQp3
aGlsZSBjcmVhdGluZyBoZHIgbWV0YWRhdGEgcHJvcGVydHkKCnY0OiBBZGRlZCBwbGF0Zm9ybSBj
aGVjayBhcyBzdWdnZXN0ZWQgYnkgVmlsbGUuCgpTaWduZWQtb2ZmLWJ5OiBVbWEgU2hhbmthciA8
dW1hLnNoYW5rYXJAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogU2hhc2hhbmsgU2hhcm1hIDxzaGFz
aGFuay5zaGFybWFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2hk
bWkuYyB8IDQgKysrKwogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2hkbWkuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2hkbWkuYwppbmRleCAyYTQwODZjLi44MWQ3MmY2IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9oZG1pLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfaGRtaS5jCkBAIC0yNzI1LDYgKzI3MjUsMTAgQEAgc3RhdGljIHZvaWQgaW50ZWxfaGRt
aV9kZXN0cm95KHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IpCiAJZHJtX2Nvbm5lY3Rv
cl9hdHRhY2hfY29udGVudF90eXBlX3Byb3BlcnR5KGNvbm5lY3Rvcik7CiAJY29ubmVjdG9yLT5z
dGF0ZS0+cGljdHVyZV9hc3BlY3RfcmF0aW8gPSBIRE1JX1BJQ1RVUkVfQVNQRUNUX05PTkU7CiAK
KwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMCB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2
KSkKKwkJZHJtX29iamVjdF9hdHRhY2hfcHJvcGVydHkoJmNvbm5lY3Rvci0+YmFzZSwKKwkJCWNv
bm5lY3Rvci0+ZGV2LT5tb2RlX2NvbmZpZy5oZHJfb3V0cHV0X21ldGFkYXRhX3Byb3BlcnR5LCAw
KTsKKwogCWlmICghSEFTX0dNQ0goZGV2X3ByaXYpKQogCQlkcm1fY29ubmVjdG9yX2F0dGFjaF9t
YXhfYnBjX3Byb3BlcnR5KGNvbm5lY3RvciwgOCwgMTIpOwogfQotLSAKMS45LjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
