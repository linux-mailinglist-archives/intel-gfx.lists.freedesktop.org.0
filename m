Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E30627C458
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 16:07:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D93A2897E8;
	Wed, 31 Jul 2019 14:07:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74032897E8
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 14:07:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 07:07:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,330,1559545200"; d="scan'208";a="174173815"
Received: from yingraow-mobl.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.249.33.190])
 by fmsmga007.fm.intel.com with ESMTP; 31 Jul 2019 07:07:37 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 31 Jul 2019 17:07:31 +0300
Message-Id: <20190731140733.23373-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/2] drm/i915: timeline semaphore support
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

SGkgYWxsLAoKVGhpcyBpcyB0aGUgdGltZWxpbmUgc2VtYXBob3JlIHN1cHBvcnQgZXh0cmFjdGVk
IGZyb20gdGhlIHZ1bGthbgpwZXJmb3JtYW5jZSBxdWVyeSBzdXBwb3J0IHNlcmllcy4KCldlJ3Jl
IGhvcGluZyB0byBnZXQgdGhpcyBpbiBzbyB3ZSBjYW4gc3VwcG9ydCB0aW1lbGluZSBzZW1hcGhv
cmUgYXMKc29vbiBhcyBwb3NzaWJsZS4KClRoZSBtZXNhIE1SIG1ha2UgdXNlIG9mIHRoaXMgc2Vy
aWVzIChhbHRob3VnaCBub3QgYWxsIHRoZSBmZWF0dXJlcykgaXMKYXQgOiBodHRwczovL2dpdGxh
Yi5mcmVlZGVza3RvcC5vcmcvbWVzYS9tZXNhL21lcmdlX3JlcXVlc3RzLzE1MjUKCklHVCB0ZXN0
cyBhcmUgYXZhaWxhYmxlIGluIHRoZSB2dWxrYW4gcGVyZiBxdWVyeSBzZXJpZXMgOgpodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzY0MjIwLwoKQ2hlZXJzLAoKTGlvbmVs
IExhbmR3ZXJsaW4gKDIpOgogIGRybS9pOTE1OiBpbnRyb2R1Y2UgYSBtZWNoYW5pc20gdG8gZXh0
ZW5kIGV4ZWNidWYyCiAgZHJtL2k5MTU6IGFkZCBzeW5jb2JqIHRpbWVsaW5lIHN1cHBvcnQKCiAu
Li4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgICAgfCAzMzUgKysrKysr
KysrKysrKysrLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jICAgICAgICAgICAg
ICAgfCAgIDQgKy0KIGluY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaCAgICAgICAgICAgICAgICAg
ICB8ICA2NCArKystCiAzIGZpbGVzIGNoYW5nZWQsIDM0MiBpbnNlcnRpb25zKCspLCA2MSBkZWxl
dGlvbnMoLSkKCi0tCjIuMjIuMApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
