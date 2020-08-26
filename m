Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 588CB2537CF
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Aug 2020 21:05:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 089F96E369;
	Wed, 26 Aug 2020 19:05:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA1D46E996
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Aug 2020 19:05:31 +0000 (UTC)
IronPort-SDR: nl6MoeArv4QNYoTi2Qm7KQpGrb4RkYAzEDiZbxuhoMDjDipEUpHIxP4nnV8SDcMKYVWTfvd76e
 MGTYRAxj/wiw==
X-IronPort-AV: E=McAfee;i="6000,8403,9725"; a="153790974"
X-IronPort-AV: E=Sophos;i="5.76,356,1592895600"; d="scan'208";a="153790974"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2020 12:05:31 -0700
IronPort-SDR: LJvGiIV6jtJLzc0TFm5qhJa/ZQllHcDqWutI04bQpfE3xpPOBah/ALIsF/7d5CAlEdOPYtLdMz
 WS42F72SJvBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,356,1592895600"; d="scan'208";a="403157634"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by fmsmga001.fm.intel.com with ESMTP; 26 Aug 2020 12:05:31 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Aug 2020 12:06:55 -0700
Message-Id: <20200826190657.18283-2-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200826190657.18283-1-manasi.d.navare@intel.com>
References: <20200826190657.18283-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/4] drm/i915/display/dp: Add VRR crtc state
 variables
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SW50cm9kdWNlIFZSUiBzdHJ1Y3QgaW4gaW50ZWxfY3J0Y19zdGF0ZSBhbmQgYWRkClZSUiBjcnRj
IHN0YXRlIHZhcmlhYmxlcyBFbmFibGUsIFZ0b3RhbG1pbiBhbmQgVnRvdGFsbWF4CnRvIGJlIGRl
cml2ZWQgZnJvbSBtb2RlIHRpbWluZ3MgYW5kIFZSUiBjcnRjIHByb3BlcnR5LgoKQ2M6IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6
IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggfCA3ICsrKysrKysKIDEg
ZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCmluZGV4IDkzNDliMTVhZmZmNi4uYWI1
N2YyMjU3MDZiIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfdHlwZXMuaApAQCAtMTA3Niw2ICsxMDc2LDEzIEBAIHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlIHsKIAlzdHJ1Y3QgaW50ZWxfZHNiICpkc2I7CiAKIAl1MzIgcHNyMl9tYW5fdHJhY2tf
Y3RsOworCisJLyogVmFyaWFibGUgUmVmcmVzaCBSYXRlIHN0YXRlICovCisJc3RydWN0IHsKKwkJ
Ym9vbCBlbmFibGU7CisJCXUxNiB2dG90YWxtaW47CisJCXUxNiB2dG90YWxtYXg7CisJfSB2cnI7
CiB9OwogCiBlbnVtIGludGVsX3BpcGVfY3JjX3NvdXJjZSB7Ci0tIAoyLjE5LjEKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
