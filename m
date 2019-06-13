Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A62243519
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Jun 2019 12:05:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E10E0898CA;
	Thu, 13 Jun 2019 10:05:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04C14898D9
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Jun 2019 10:05:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jun 2019 03:05:21 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 13 Jun 2019 03:05:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Jani Nikula <jani.nikula@intel.com>,
	intel-gfx@lists.freedesktop.org
Date: Thu, 13 Jun 2019 13:08:18 +0300
Message-Id: <20190613100818.24800-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190613084416.6794-1-jani.nikula@intel.com>
References: <20190613084416.6794-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH v2] drm/i915: make intel_sdvo_regs.h
 self-contained
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

RW5zdXJlIGludGVsX3Nkdm9fcmVncy5oIGlzIHNlbGYtY29udGFpbmVkIGFuZCByZW1haW5zIHRo
YXQgd2F5LgoKdjI6Ci0gaW5jbHVkZSA8bGludXgvY29tcGlsZXIuaD4gZm9yIF9fcGFja2VkIChD
aHJpcykKCkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KU2lnbmVk
LW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9NYWtlZmlsZS5oZWFkZXItdGVzdCB8IDEgKwogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfc2R2b19yZWdzLmggICAgfCA4ICsrKysrKysrCiAyIGZpbGVzIGNoYW5nZWQs
IDkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2Vm
aWxlLmhlYWRlci10ZXN0IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUuaGVhZGVyLXRl
c3QKaW5kZXggNmVmM2I2NDdhYzY1Li5jMDQyOTdjZTU3YjQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L01ha2VmaWxlLmhlYWRlci10ZXN0CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L01ha2VmaWxlLmhlYWRlci10ZXN0CkBAIC01Niw2ICs1Niw3IEBAIGhlYWRlcl90ZXN0IDo9
IFwKIAlpbnRlbF9xdWlya3MuaCBcCiAJaW50ZWxfcnVudGltZV9wbS5oIFwKIAlpbnRlbF9zZHZv
LmggXAorCWludGVsX3Nkdm9fcmVncy5oIFwKIAlpbnRlbF9zaWRlYmFuZC5oIFwKIAlpbnRlbF9z
cHJpdGUuaCBcCiAJaW50ZWxfdHYuaCBcCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9zZHZvX3JlZ3MuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Nkdm9fcmVn
cy5oCmluZGV4IGU5YmEzYjA0N2Y5My4uMTNiOWE4ZTI1N2JiIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9zZHZvX3JlZ3MuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9zZHZvX3JlZ3MuaApAQCAtMjQsNiArMjQsMTIgQEAKICAqCUVyaWMgQW5ob2x0IDxl
cmljQGFuaG9sdC5uZXQ+CiAgKi8KIAorI2lmbmRlZiBfX0lOVEVMX1NEVk9fUkVHU19IX18KKyNk
ZWZpbmUgX19JTlRFTF9TRFZPX1JFR1NfSF9fCisKKyNpbmNsdWRlIDxsaW51eC9jb21waWxlci5o
PgorI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+CisKIC8qCiAgKiBTRFZPIGNvbW1hbmQgZGVmaW5p
dGlvbnMgYW5kIHN0cnVjdHVyZXMuCiAgKi8KQEAgLTczMSwzICs3MzcsNSBAQCBzdHJ1Y3QgaW50
ZWxfc2R2b19lbmNvZGUgewogCXU4IGR2aV9yZXY7CiAJdTggaGRtaV9yZXY7CiB9IF9fcGFja2Vk
OworCisjZW5kaWYgLyogX19JTlRFTF9TRFZPX1JFR1NfSF9fICovCi0tIAoyLjIwLjEKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
