Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A5DB670CA
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 15:59:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3290E6E0DB;
	Fri, 12 Jul 2019 13:59:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9410B88F5A;
 Fri, 12 Jul 2019 13:59:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 06:59:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,482,1557212400"; d="scan'208";a="168323428"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga007.fm.intel.com with ESMTP; 12 Jul 2019 06:59:17 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Pekka Paalanen <ppaalanen@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 12 Jul 2019 12:30:23 +0530
Message-Id: <20190712070026.13088-4-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190712070026.13088-1-ramalingam.c@intel.com>
References: <20190712070026.13088-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v10 3/6] drm: uevent for connector status change
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

RFJNIEFQSSBmb3IgZ2VuZXJhdGluZyB1ZXZlbnQgZm9yIGEgc3RhdHVzIGNoYW5nZXMgb2YgY29u
bmVjdG9yJ3MKcHJvcGVydHkuCgpUaGlzIHVldmVudCB3aWxsIGhhdmUgZm9sbG93aW5nIGRldGFp
bHMgcmVsYXRlZCB0byB0aGUgc3RhdHVzIGNoYW5nZToKCiAgSE9UUExVRz0xLCBDT05ORUNUT1I9
PGNvbm5lY3Rvcl9pZD4gYW5kIFBST1BFUlRZPTxwcm9wZXJ0eV9pZD4KCk5lZWQgQUNLIGZyb20g
dGhpcyB1ZXZlbnQgZnJvbSB1c2Vyc3BhY2UgY29uc3VtZXIuCgp2MjoKICBNaW5vciBmaXhlcyBh
dCBLRG9jIGNvbW1lbnRzIFtEYW5pZWxdCnYzOgogIENoZWNrIHRoZSBwcm9wZXJ0eSBpcyByZWFs
bHkgYXR0YWNoZWQgd2l0aCBjb25uZWN0b3IgW0RhbmllbF0KdjQ6CiAgVHlwb3MgYW5kIHN0cmlu
ZyBsZW5ndGggc3VnZ2VzdGlvbnMgYXJlIGFkZHJlc3NlZCBbU2Vhbl0KClNpZ25lZC1vZmYtYnk6
IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IERhbmll
bCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+ClJldmlld2VkLWJ5OiBTZWFuIFBhdWwg
PHNlYW5AcG9vcmx5LnJ1bj4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX3N5c2ZzLmMgfCAzNSAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKwogaW5jbHVkZS9kcm0vZHJtX3N5c2Zz
LmggICAgIHwgIDUgKysrKy0KIDIgZmlsZXMgY2hhbmdlZCwgMzkgaW5zZXJ0aW9ucygrKSwgMSBk
ZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fc3lzZnMuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9kcm1fc3lzZnMuYwppbmRleCBhZDEwODEwYmM5NzIuLjZlZGM5YzkxMjU2
MSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9zeXNmcy5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9kcm1fc3lzZnMuYwpAQCAtMjYsNiArMjYsNyBAQAogI2luY2x1ZGUgPGRybS9kcm1f
c3lzZnMuaD4KIAogI2luY2x1ZGUgImRybV9pbnRlcm5hbC5oIgorI2luY2x1ZGUgImRybV9jcnRj
X2ludGVybmFsLmgiCiAKICNkZWZpbmUgdG9fZHJtX21pbm9yKGQpIGRldl9nZXRfZHJ2ZGF0YShk
KQogI2RlZmluZSB0b19kcm1fY29ubmVjdG9yKGQpIGRldl9nZXRfZHJ2ZGF0YShkKQpAQCAtMzI1
LDYgKzMyNiw5IEBAIHZvaWQgZHJtX3N5c2ZzX2xlYXNlX2V2ZW50KHN0cnVjdCBkcm1fZGV2aWNl
ICpkZXYpCiAgKiBTZW5kIGEgdWV2ZW50IGZvciB0aGUgRFJNIGRldmljZSBzcGVjaWZpZWQgYnkg
QGRldi4gIEN1cnJlbnRseSB3ZSBvbmx5CiAgKiBzZXQgSE9UUExVRz0xIGluIHRoZSB1ZXZlbnQg
ZW52aXJvbm1lbnQsIGJ1dCB0aGlzIGNvdWxkIGJlIGV4cGFuZGVkIHRvCiAgKiBkZWFsIHdpdGgg
b3RoZXIgdHlwZXMgb2YgZXZlbnRzLgorICoKKyAqIEFueSBuZXcgdWFwaSBzaG91bGQgYmUgdXNp
bmcgdGhlIGRybV9zeXNmc19jb25uZWN0b3Jfc3RhdHVzX2V2ZW50KCkKKyAqIGZvciB1ZXZlbnRz
IG9uIGNvbm5lY3RvciBzdGF0dXMgY2hhbmdlLgogICovCiB2b2lkIGRybV9zeXNmc19ob3RwbHVn
X2V2ZW50KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCiB7CkBAIC0zMzcsNiArMzQxLDM3IEBAIHZv
aWQgZHJtX3N5c2ZzX2hvdHBsdWdfZXZlbnQoc3RydWN0IGRybV9kZXZpY2UgKmRldikKIH0KIEVY
UE9SVF9TWU1CT0woZHJtX3N5c2ZzX2hvdHBsdWdfZXZlbnQpOwogCisvKioKKyAqIGRybV9zeXNm
c19jb25uZWN0b3Jfc3RhdHVzX2V2ZW50IC0gZ2VuZXJhdGUgYSBEUk0gdWV2ZW50IGZvciBjb25u
ZWN0b3IKKyAqIHByb3BlcnR5IHN0YXR1cyBjaGFuZ2UKKyAqIEBjb25uZWN0b3I6IGNvbm5lY3Rv
ciBvbiB3aGljaCBwcm9wZXJ0eSBzdGF0dXMgY2hhbmdlZAorICogQHByb3BlcnR5OiBjb25uZWN0
b3IgcHJvcGVydHkgd2hvc2Ugc3RhdHVzIGNoYW5nZWQuCisgKgorICogU2VuZCBhIHVldmVudCBm
b3IgdGhlIERSTSBkZXZpY2Ugc3BlY2lmaWVkIGJ5IEBkZXYuICBDdXJyZW50bHkgd2UKKyAqIHNl
dCBIT1RQTFVHPTEgYW5kIGNvbm5lY3RvciBpZCBhbG9uZyB3aXRoIHRoZSBhdHRhY2hlZCBwcm9w
ZXJ0eSBpZAorICogcmVsYXRlZCB0byB0aGUgc3RhdHVzIGNoYW5nZS4KKyAqLwordm9pZCBkcm1f
c3lzZnNfY29ubmVjdG9yX3N0YXR1c19ldmVudChzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVj
dG9yLAorCQkJCSAgICAgIHN0cnVjdCBkcm1fcHJvcGVydHkgKnByb3BlcnR5KQoreworCXN0cnVj
dCBkcm1fZGV2aWNlICpkZXYgPSBjb25uZWN0b3ItPmRldjsKKwljaGFyIGhvdHBsdWdfc3RyW10g
PSAiSE9UUExVRz0xIiwgY29ubl9pZFsyMV0sIHByb3BfaWRbMjFdOworCWNoYXIgKmVudnBbNF0g
PSB7IGhvdHBsdWdfc3RyLCBjb25uX2lkLCBwcm9wX2lkLCBOVUxMIH07CisKKwlXQVJOX09OKCFk
cm1fbW9kZV9vYmpfZmluZF9wcm9wX2lkKCZjb25uZWN0b3ItPmJhc2UsCisJCQkJCSAgIHByb3Bl
cnR5LT5iYXNlLmlkKSk7CisKKwlzbnByaW50Zihjb25uX2lkLCBBUlJBWV9TSVpFKGNvbm5faWQp
LAorCQkgIkNPTk5FQ1RPUj0ldSIsIGNvbm5lY3Rvci0+YmFzZS5pZCk7CisJc25wcmludGYocHJv
cF9pZCwgQVJSQVlfU0laRShwcm9wX2lkKSwKKwkJICJQUk9QRVJUWT0ldSIsIHByb3BlcnR5LT5i
YXNlLmlkKTsKKworCURSTV9ERUJVRygiZ2VuZXJhdGluZyBjb25uZWN0b3Igc3RhdHVzIGV2ZW50
XG4iKTsKKworCWtvYmplY3RfdWV2ZW50X2VudigmZGV2LT5wcmltYXJ5LT5rZGV2LT5rb2JqLCBL
T0JKX0NIQU5HRSwgZW52cCk7Cit9CitFWFBPUlRfU1lNQk9MKGRybV9zeXNmc19jb25uZWN0b3Jf
c3RhdHVzX2V2ZW50KTsKKwogc3RhdGljIHZvaWQgZHJtX3N5c2ZzX3JlbGVhc2Uoc3RydWN0IGRl
dmljZSAqZGV2KQogewogCWtmcmVlKGRldik7CmRpZmYgLS1naXQgYS9pbmNsdWRlL2RybS9kcm1f
c3lzZnMuaCBiL2luY2x1ZGUvZHJtL2RybV9zeXNmcy5oCmluZGV4IDRmMzExZTgzNmNkYy4uZDQ1
NGVmNjE3YjJjIDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS9kcm1fc3lzZnMuaAorKysgYi9pbmNs
dWRlL2RybS9kcm1fc3lzZnMuaApAQCAtNCwxMCArNCwxMyBAQAogCiBzdHJ1Y3QgZHJtX2Rldmlj
ZTsKIHN0cnVjdCBkZXZpY2U7CitzdHJ1Y3QgZHJtX2Nvbm5lY3RvcjsKK3N0cnVjdCBkcm1fcHJv
cGVydHk7CiAKIGludCBkcm1fY2xhc3NfZGV2aWNlX3JlZ2lzdGVyKHN0cnVjdCBkZXZpY2UgKmRl
dik7CiB2b2lkIGRybV9jbGFzc19kZXZpY2VfdW5yZWdpc3RlcihzdHJ1Y3QgZGV2aWNlICpkZXYp
OwogCiB2b2lkIGRybV9zeXNmc19ob3RwbHVnX2V2ZW50KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYp
OwotCit2b2lkIGRybV9zeXNmc19jb25uZWN0b3Jfc3RhdHVzX2V2ZW50KHN0cnVjdCBkcm1fY29u
bmVjdG9yICpjb25uZWN0b3IsCisJCQkJICAgICAgc3RydWN0IGRybV9wcm9wZXJ0eSAqcHJvcGVy
dHkpOwogI2VuZGlmCi0tIAoyLjE5LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
