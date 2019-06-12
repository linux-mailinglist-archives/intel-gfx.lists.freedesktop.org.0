Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6716941C1D
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 08:20:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B511891E2;
	Wed, 12 Jun 2019 06:20:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05F7F891E2
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2019 06:20:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jun 2019 23:20:10 -0700
X-ExtLoop1: 1
Received: from linuxpresi1-desktop.iind.intel.com ([10.223.74.143])
 by fmsmga007.fm.intel.com with ESMTP; 11 Jun 2019 23:20:08 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jun 2019 12:14:57 +0530
Message-Id: <1560321900-18318-2-git-send-email-uma.shankar@intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560321900-18318-1-git-send-email-uma.shankar@intel.com>
References: <1560321900-18318-1-git-send-email-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v4 1/4] drm/i915: Change gamma/degamma_lut_size data
 type to u32
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

RnJvbTogU2hhc2hhbmsgU2hhcm1hIDxzaGFzaGFuay5zaGFybWFAaW50ZWwuY29tPgoKQ3VycmVu
dGx5LCBkYXRhIHR5cGUgb2YgZ2FtbWFfbHV0X3NpemUgJiBkZWdhbW1hX2x1dF9zaXplIGVsZW1l
bnRzCmluIGludGVsX2RldmljZV9pbmZvIGlzIHUxNiwgd2hpY2ggbWVhbnMgaXQgY2FuIGFjY29t
bW9kYXRlIG1heGltdW0KNjRrIHZhbHVlcy4gSW4gY2FzZSBvZiBJQ0wgbXVsdGlzZWdtZW50ZWQg
Z2FtbWEsIHRoZSBzaXplIG9mIGdhbW1hCkxVVCBpcyAyNTZLLgoKVGhpcyBwYXRjaCBjaGFuZ2Vz
IHRoZSBkYXRhIHR5cGUgb2YgYm90aCBvZiB0aGVzZSBlbGVtZW50cyB0byB1MzIuCgpDYzogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IE1hYXJ0ZW4g
TGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBVbWEgU2hh
bmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgoKVjQ6IEFkZGVkIFVtYSdzIHItYi4KClJldmll
d2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5
OiBTaGFzaGFuayBTaGFybWEgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaCB8IDQgKystLQogMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGV2aWNlX2luZm8uaAppbmRleCAxZmI4YjUwLi44YTZiNzZhIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5oCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgKQEAgLTE3OCw4ICsxNzgsOCBAQCBzdHJ1Y3Qg
aW50ZWxfZGV2aWNlX2luZm8gewogCWludCBjdXJzb3Jfb2Zmc2V0c1tJOTE1X01BWF9QSVBFU107
CiAKIAlzdHJ1Y3QgY29sb3JfbHV0cyB7Ci0JCXUxNiBkZWdhbW1hX2x1dF9zaXplOwotCQl1MTYg
Z2FtbWFfbHV0X3NpemU7CisJCXUzMiBkZWdhbW1hX2x1dF9zaXplOworCQl1MzIgZ2FtbWFfbHV0
X3NpemU7CiAJCXUzMiBkZWdhbW1hX2x1dF90ZXN0czsKIAkJdTMyIGdhbW1hX2x1dF90ZXN0czsK
IAl9IGNvbG9yOwotLSAKMS45LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
