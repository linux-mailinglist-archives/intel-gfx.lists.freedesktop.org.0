Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6516CAED3B
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2019 16:38:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E9566E0F0;
	Tue, 10 Sep 2019 14:38:36 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A9566E0ED
 for <Intel-gfx@lists.freedesktop.org>; Tue, 10 Sep 2019 14:38:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Sep 2019 07:38:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="175328619"
Received: from dudibroo-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.31.14])
 by orsmga007.jf.intel.com with ESMTP; 10 Sep 2019 07:38:32 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue, 10 Sep 2019 15:38:19 +0100
Message-Id: <20190910143823.10686-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/4] Few loose end intel_gt cleanups
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkEgZmV3IHBh
dGNoZXMgbGVmdCBoYW5naW5nIHNpbmNlIGxhdGUgSnVseS4gRmlyc3Qgb25lIG9sZCBpbiBzcGly
aXQgYnV0IGFkanVzdGVkCmFuZCByZW5hbWVkIGFuZCB0aGUgcmVzdCB1cGRhdGUgZm9yIGxhdGVz
dCBkcm0tdGlwLgoKSGFwcHkgdG8gcmVjZWl2ZSB0aG91Z2h0cyBvbiB3aGV0aGVyIHRoaXMgY2xl
YW51cCBtYWtlcyBzZW5zZS4KCkNjOiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGludGVsLmNvbT4K
Q2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKVHZydGtvIFVyc3Vs
aW4gKDQpOgogIGRybS9pOTE1OiBNb3ZlIEdUIGluaXQgdG8gaW50ZWxfZ3QuYwogIGRybS9pOTE1
OiBNYWtlIHdhaXRfZm9yX3RpbWVsaW5lcyB0YWtlIHN0cnVjdCBpbnRlbF9ndAogIGRybS9pOTE1
OiBBdm9pZCByb3VuZC10cmlwIHZpYSBpOTE1IGluIGludGVsX2d0X3BhcmsKICBkcm0vaTkxNTog
TWFrZSBwbV9ub3RpZnkgdGFrZSBpbnRlbF9ndAoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV9wbS5jICAgIHwgICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9n
dC5jICAgICAgICB8ICA5MiArKysrKysrKysrKysrKysrKystCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9ndC5oICAgICAgICB8ICAgMyArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZ3RfcG0uYyAgICAgfCAgMTQgKy0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9yZXNldC5jICAgICB8ICAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAg
ICAgICAgICAgfCAgIDIgKy0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAg
ICAgIHwgICAxIC0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAgICAgIHwg
MTAyICsrLS0tLS0tLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0
cy9tb2NrX2d0dC5jIHwgICAyICstCiA5IGZpbGVzIGNoYW5nZWQsIDExMSBpbnNlcnRpb25zKCsp
LCAxMDkgZGVsZXRpb25zKC0pCgotLSAKMi4yMC4xCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
