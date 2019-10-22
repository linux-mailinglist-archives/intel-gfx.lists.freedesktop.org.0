Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F27FE0104
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 11:47:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BAEE6E43D;
	Tue, 22 Oct 2019 09:47:33 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E65D86E43D
 for <Intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 09:47:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Oct 2019 02:47:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,326,1566889200"; d="scan'208";a="281235343"
Received: from mdlugoke-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.81.75])
 by orsmga001.jf.intel.com with ESMTP; 22 Oct 2019 02:47:30 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 10:47:14 +0100
Message-Id: <20191022094726.3001-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 00/12] Fewer for_each_engine(.., i915, ..)
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClNpbmNlIHdl
IHdhbnQgdG8gZWxpbWluYXRlIHRoZSBlbmdpbmUgbGlzdCBjb3B5IGluIGk5MTUgdGhpcyBzZXJp
ZXMgY29udmVydHMKc29tZSBvZiB0aGUgcmVtYWluaW5nIGNhbGwgc2l0ZXMgdG8gdGFrZSBndCBh
cyBpcyB0aGUgZnV0dXJlIGRpcmVjdGlvbi4KCldoZXJlIGFwcHJvcHJpYXRlIGl0IGFsc28gY29u
dmVydHMgdGhlIGNvbnRhaW5pbmcgZnVuY3Rpb25zIHRvIHRha2UgZ3QgYXMgd2VsbC4KTW9zdCBu
b3RhYmx5IHRoaXMgYXBwbGllcyB0byBlbmdpbmUgc2V0dXAgYW5kIGluaXRpYWxpemF0aW9uLgoK
VHZydGtvIFVyc3VsaW4gKDEyKToKICBkcm0vaTkxNTogUGFzcyBpbnRlbF9ndCB0byBpbnRlbF9l
bmdpbmVzX2luaXRfbW1pbwogIGRybS9pOTE1OiBQYXNzIGludGVsX2d0IHRvIGludGVsX3NldHVw
X2VuZ2luZV9jYXBhYmlsaXRpZXMKICBkcm0vaTkxNTogUGFzcyBpbnRlbF9ndCB0byBpbnRlbF9l
bmdpbmVzX2NsZWFudXAKICBkcm0vaTkxNTogUGFzcyBpbnRlbF9ndCB0byBpbnRlbF9lbmdpbmVz
X3NldHVwCiAgZHJtL2k5MTU6IFBhc3MgaW50ZWxfZ3QgdG8gaW50ZWxfZW5naW5lc19pbml0CiAg
ZHJtL2k5MTU6IFBhc3MgaW50ZWxfZ3QgdG8gaW50ZWxfZW5naW5lc192ZXJpZnlfd29ya2Fyb3Vu
ZHMKICBkcm0vaTkxNTogU3BsaXQgZHJvcCBjYWNoZXMgaW50byBHVCBhbmQgaTkxNSBwYXJ0cwog
IGRybS9pOTE1L3NlbGZ0ZXN0czogQ29udmVydCBldmljdGlvbiBzZWxmdGVzdHMgdG8gZ3QvZ2d0
dAogIGRybS9pOTE1L3NlbGZ0ZXN0czogVXNlIEdUIGVuZ2luZXMgaW4gbW9ja19nZW1fZGV2aWNl
CiAgZHJtL2k5MTUvc2VsZnRlc3RzOiBVc2UgR1QgZW5naW5lcyBpbiBpZ3RfbGl2ZV90ZXN0CiAg
ZHJtL2k5MTUvc2VsZnRlc3RzOiBVc2UgR1QgZW5naW5lcyBpbiBpOTE1X2dlbV9tbWFuIHNlbGZ0
ZXN0CiAgZHJtL2k5MTUvc2VsZnRlc3RzOiBVc2UgZm9yX2VhY2hfdWFiaV9lbmdpbmUgaW4gY29u
dGV4IHNlbGZ0ZXN0cwoKIC4uLi9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRl
eHQuYyB8ICAxMiArLS0KIC4uLi9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX21tYW4u
YyAgICB8ICAgNSArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lLmggICAg
ICAgIHwgIDEwICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyAg
ICAgfCAgNDYgKysrKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jICAg
ICAgICAgICB8ICAyNCArKystLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAg
ICAgICAgICAgIHwgICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jICAgICAg
ICAgICAgICAgfCAgMTQgKy0tCiAuLi4vZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbV9l
dmljdC5jICAgfCAxMDAgKysrKysrKysrLS0tLS0tLS0tCiAuLi4vZ3B1L2RybS9pOTE1L3NlbGZ0
ZXN0cy9pZ3RfbGl2ZV90ZXN0LmMgICAgfCAgIDcgKy0KIC4uLi9ncHUvZHJtL2k5MTUvc2VsZnRl
c3RzL21vY2tfZ2VtX2RldmljZS5jICB8ICAgOCArLQogMTAgZmlsZXMgY2hhbmdlZCwgMTIyIGlu
c2VydGlvbnMoKyksIDEwOCBkZWxldGlvbnMoLSkKCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
