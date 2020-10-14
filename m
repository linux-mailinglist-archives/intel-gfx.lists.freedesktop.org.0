Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D673128D968
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Oct 2020 07:03:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 389FA6E9C2;
	Wed, 14 Oct 2020 05:03:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F5976E9C4
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Oct 2020 05:03:31 +0000 (UTC)
IronPort-SDR: Pg7X8oTA0J0DQCz5kCfzvw2TrMGgKuTi+SD4JusEJo1lQKiehl4NLz/zVhppyb90ggu99AAhlo
 BhbZTC/YDckw==
X-IronPort-AV: E=McAfee;i="6000,8403,9773"; a="166099956"
X-IronPort-AV: E=Sophos;i="5.77,373,1596524400"; d="scan'208";a="166099956"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 22:03:31 -0700
IronPort-SDR: gCcBY/EYRWlDD4jLRqTm1U/22Urvt+jWbX9NXslZxaIvMms/pe4Eqta7hrYIOgoCBOuqLaIwqP
 BuaZjflFeWhA==
X-IronPort-AV: E=Sophos;i="5.77,373,1596524400"; d="scan'208";a="351376316"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.178])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2020 22:03:28 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 14 Oct 2020 10:22:41 +0530
Message-Id: <20201014045252.13608-3-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201014045252.13608-1-anshuman.gupta@intel.com>
References: <20201014045252.13608-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/13] drm/i915/hotplug: Handle CP_IRQ for DP-MST
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
Cc: seanpaul@chromium.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGFuZGxlIENQX0lSUSBpbiBERVZJQ0VfU0VSVklDRV9JUlFfVkVDVE9SX0VTSTAKSXQgcmVxdWly
ZXMgdG8gY2FsbCBpbnRlbF9oZGNwX2hhbmRsZV9jcF9pcnEoKSBpbiBjYXNlCm9mIENQX0lSUSBp
cyB0cmlnZ2VyZWQgYnkgYSBzaW5rIGluIERQLU1TVCB0b3BvbG9neS4KCkNjOiAiVmlsbGUgU3ly
asOkbMOkIiA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+CkNjOiBSYW1hbGluZ2FtIEMg
PHJhbWFsaW5nYW0uY0BpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1cHRhIDxh
bnNodW1hbi5ndXB0YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jIHwgMTQgKysrKysrKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jCmluZGV4IDRmODI2NmMzZWQ0My4uZWFhN2RlMDQ0NTM0IDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCkBAIC01Njc0LDYgKzU2NzQsMTcgQEAgc3RhdGljIHZv
aWQgaW50ZWxfZHBfaGFuZGxlX3Rlc3RfcmVxdWVzdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
KQogCQkJICAgICJDb3VsZCBub3Qgd3JpdGUgdGVzdCByZXNwb25zZSB0byBzaW5rXG4iKTsKIH0K
IAorc3RhdGljIHZvaWQKK2ludGVsX2RwX21zdF9ocGRfaXJxKHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHAsIHU4ICplc2ksIGJvb2wgKmhhbmRsZWQpCit7CisJCWRybV9kcF9tc3RfaHBkX2lycSgm
aW50ZWxfZHAtPm1zdF9tZ3IsIGVzaSwgaGFuZGxlZCk7CisKKwkJaWYgKGVzaVsxXSAmIERQX0NQ
X0lSUSkgeworCQkJaW50ZWxfaGRjcF9oYW5kbGVfY3BfaXJxKGludGVsX2RwLT5hdHRhY2hlZF9j
b25uZWN0b3IpOworCQkJKmhhbmRsZWQgPSB0cnVlOworCQl9Cit9CisKIC8qKgogICogaW50ZWxf
ZHBfY2hlY2tfbXN0X3N0YXR1cyAtIHNlcnZpY2UgYW55IHBlbmRpbmcgTVNUIGludGVycnVwdHMs
IGNoZWNrIGxpbmsgc3RhdHVzCiAgKiBAaW50ZWxfZHA6IEludGVsIERQIHN0cnVjdApAQCAtNTcx
OCw3ICs1NzI5LDggQEAgaW50ZWxfZHBfY2hlY2tfbXN0X3N0YXR1cyhzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwKQogCiAJCWRybV9kYmdfa21zKCZpOTE1LT5kcm0sICJnb3QgZXNpICUzcGhcbiIs
IGVzaSk7CiAKLQkJZHJtX2RwX21zdF9ocGRfaXJxKCZpbnRlbF9kcC0+bXN0X21nciwgZXNpLCAm
aGFuZGxlZCk7CisJCWludGVsX2RwX21zdF9ocGRfaXJxKGludGVsX2RwLCBlc2ksICZoYW5kbGVk
KTsKKwogCQlpZiAoIWhhbmRsZWQpCiAJCQlicmVhazsKIAotLSAKMi4yNi4yCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
