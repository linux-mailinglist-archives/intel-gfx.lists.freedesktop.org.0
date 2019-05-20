Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2BE8231F0
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2019 13:04:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E24D8921C;
	Mon, 20 May 2019 11:04:51 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89BDA89203
 for <Intel-gfx@lists.freedesktop.org>; Mon, 20 May 2019 11:04:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 May 2019 04:04:47 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.122])
 by orsmga001.jf.intel.com with ESMTP; 20 May 2019 04:04:46 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon, 20 May 2019 12:04:42 +0100
Message-Id: <20190520110442.403-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520110442.403-1-tvrtko.ursulin@linux.intel.com>
References: <20190520110442.403-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915/icl: Add WaDisableBankHangMode
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

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCkRpc2FibGUg
R1BVIGhhbmcgYnkgZGVmYXVsdCBvbiB1bnJlY292ZXJhYmxlIEVDQyBjYWNoZSBlcnJvcnMuCgp2
MjoKICogUmViYXNlLgoKdjM6CiAqIFVzZSBpbnRlbF91bmNvcmVfcmVhZC4gKENocmlzKQoKRml4
ZXM6IGNjMzhjYWU3YzRlOSAoImRybS9pOTE1L2ljbDogSW50cm9kdWNlIGluaXRpYWwgSWNlbGFr
ZSBXb3JrYXJvdW5kcyIpClNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJz
dWxpbkBpbnRlbC5jb20+CkFja2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5j
IHwgNiArKysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmggICAgICAgICAgICAg
fCAzICsrKwogMiBmaWxlcyBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwppbmRleCBhNmE2NDc3Y2Y3MjIuLjc2NzU2
OTlmODQwNiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fy
b3VuZHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5j
CkBAIC01MjksNiArNTI5LDEyIEBAIHN0YXRpYyB2b2lkIGljbF9jdHhfd29ya2Fyb3VuZHNfaW5p
dChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCiB7CiAJc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmk5MTUgPSBlbmdpbmUtPmk5MTU7CiAKKwkvKiBXYURpc2FibGVCYW5rSGFuZ01vZGU6
aWNsICovCisJd2Ffd3JpdGUod2FsLAorCQkgR0VOOF9MM0NOVExSRUcsCisJCSBpbnRlbF91bmNv
cmVfcmVhZChlbmdpbmUtPnVuY29yZSwgR0VOOF9MM0NOVExSRUcpIHwKKwkJIEdFTjhfRVJSREVU
QkNUUkwpOworCiAJLyogV2FfMTYwNDM3MDU4NTppY2wgKHByZS1wcm9kKQogCSAqIEZvcm1lcmx5
IGtub3duIGFzIFdhUHVzaENvbnN0YW50RGVyZWZlcmVuY2VIb2xkRGlzYWJsZQogCSAqLwpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggZTk3YzQ3ZmNhNjQ1Li44N2U4NzgwNzExZDcgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtNzYyMSw2ICs3NjIxLDkgQEAgZW51bSB7CiAgICNkZWZp
bmUgR0VOOF9TQkVfRElTQUJMRV9SRVBMQVlfQlVGX09QVElNSVpBVElPTgkJKDEgPDwgOCkKICAg
I2RlZmluZSBHRU44X0NTQzJfU0JFX1ZVRV9DQUNIRV9DT05TRVJWQVRJVkUJCQkoMSA8PCAwKQog
CisjZGVmaW5lIEdFTjhfTDNDTlRMUkVHCV9NTUlPKDB4NzAzNCkKKyAgI2RlZmluZSBHRU44X0VS
UkRFVEJDVFJMICgxIDw8IDkpCisKICNkZWZpbmUgR0VOMTFfQ09NTU9OX1NMSUNFX0NISUNLRU4z
CQlfTU1JTygweDczMDQpCiAgICNkZWZpbmUgR0VOMTFfQkxFTkRfRU1CX0ZJWF9ESVNBQkxFX0lO
X1JDQwkoMSA8PCAxMSkKIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
