Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD784AA2AF
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 14:07:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19E2B6E09A;
	Thu,  5 Sep 2019 12:07:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15FF46E095;
 Thu,  5 Sep 2019 12:07:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 05:07:21 -0700
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="358428116"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 05:07:18 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 Martin Peres <martin.peres@linux.intel.com>
Date: Thu,  5 Sep 2019 14:07:10 +0200
Message-Id: <20190905120710.24770-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] lib: Don't use full reset on simulated
 hardware
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SWYgRFJPUF9SRVNFVF9BQ1RJVkUgaXMgcmVxdWVzdGVkIHdoaWxlIHRoZXJlIGlzIGEgbGFyZ2Ug
cXVldWUgb2YgcGVuZGluZwpHRU0gcmVxdWVzdHMsIHdhaXRpbmcgZm9yIGlkbGUgZW5naW5lcyBw
ZXJmb3JtZWQgYXMgYSBmaXJzdCBzdGVwIG9mCmk5MTVfZ2VtX2Ryb3BfY2FjaGVzIGRlYnVnZnMg
cmVxdWVzdCBoYW5kbGVyIHRpbWVzIG91dCBhbmQgYW4gb3RoZXJ3aXNlCmhlYWx0aHkgZGV2aWNl
IGlzIG1hcmtlZCB3ZWRnZWQuICBJZiB0aGF0IGhhcHBlbnMgd2hpbGUgcmVzZXQgY2FwYWJpbGl0
aWVzCmFyZSBkaXNhYmxlZCBvciBub3Qgc3VwcG9ydGVkLCB0aGVyZSBpcyBubyBwb3NzaWJpbGl0
eSB0byBzdWNjZXNzZnVsbHkKcmVzZXQgdGhlIGRldmljZSBhZnRlciByZXF1ZXN0cyBhcmUgcmV0
aXJlZC4KCkF2b2lkIGZha2UgR1BVIHRlcm1pbmFsbHkgd2VkZ2VkIGNvbmRpdGlvbnMgYnkgbm90
IHJlcXVlc3RpbmcKRFJPUF9SRVNFVF9BQ1RJVkUgZnJvbSBleGl0IGhhbmRsZXIgd2hlbiBydW5u
aW5nIG9uIHNpbXVsYXRlZCBoYXJkd2FyZS4KQXMgYSBzaWRlIGVmZmVjdCwgdGVybWluYXRpbmcg
YSB2ZXJ5IGJ1c3kgdGVzdCBhbmQgcnVubmluZyBhIHN1YnNlcXVlbnQKb25lIG1heSB0YWtlIHF1
aXRlIGEgd2hpbGUuCgpTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6dG9maWsgPGphbnVzei5r
cnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+Ci0tLQogbGliL2RybXRlc3QuYyB8IDMgKystCiAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0
IGEvbGliL2RybXRlc3QuYyBiL2xpYi9kcm10ZXN0LmMKaW5kZXggYzM3OWE3YjcuLmI3M2JjMTMy
IDEwMDY0NAotLS0gYS9saWIvZHJtdGVzdC5jCisrKyBiL2xpYi9kcm10ZXN0LmMKQEAgLTMxOCw3
ICszMTgsOCBAQCBzdGF0aWMgdm9pZCBfX2NhbmNlbF93b3JrX2F0X2V4aXQoaW50IGZkKQogCWln
dF9zeXNmc19zZXRfcGFyYW1ldGVyKGZkLCAicmVzZXQiLCAiJXgiLCAtMXUgLyogYW55IG1ldGhv
ZCAqLyk7CiAJaWd0X2Ryb3BfY2FjaGVzX3NldChmZCwKIAkJCSAgICAvKiBjYW5jZWwgZXZlcnl0
aGluZyAqLwotCQkJICAgIERST1BfUkVTRVRfQUNUSVZFIHwgRFJPUF9SRVNFVF9TRVFOTyB8CisJ
CQkgICAgaWd0X3J1bl9pbl9zaW11bGF0aW9uKCkgPyAwIDogRFJPUF9SRVNFVF9BQ1RJVkUgfAor
CQkJICAgIERST1BfUkVTRVRfU0VRTk8gfAogCQkJICAgIC8qIGNsZWFudXAgKi8KIAkJCSAgICBE
Uk9QX0FDVElWRSB8IERST1BfUkVUSVJFIHwgRFJPUF9JRExFIHwgRFJPUF9GUkVFRCk7CiB9Ci0t
IAoyLjIxLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
