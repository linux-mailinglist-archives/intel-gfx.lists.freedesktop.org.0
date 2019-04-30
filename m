Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EB406FCB3
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 17:23:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E948891F9;
	Tue, 30 Apr 2019 15:23:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24B58891F9
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 15:23:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 08:23:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,414,1549958400"; d="scan'208";a="140129982"
Received: from shashanks-u1804-dt.iind.intel.com ([10.223.74.135])
 by orsmga006.jf.intel.com with ESMTP; 30 Apr 2019 08:23:50 -0700
From: Shashank Sharma <shashank.sharma@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Apr 2019 20:51:05 +0530
Message-Id: <20190430152108.31814-2-shashank.sharma@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190430152108.31814-1-shashank.sharma@intel.com>
References: <20190430152108.31814-1-shashank.sharma@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/4] drm/i915: Change gamma/degamma_lut_size
 data type to u32
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

Q3VycmVudGx5LCBkYXRhIHR5cGUgb2YgZ2FtbWFfbHV0X3NpemUgJiBkZWdhbW1hX2x1dF9zaXpl
IGVsZW1lbnRzCmluIGludGVsX2RldmljZV9pbmZvIGlzIHUxNiwgd2hpY2ggbWVhbnMgaXQgY2Fu
IGFjY29tbW9kYXRlIG1heGltdW0KNjRrIHZhbHVlcy4gSW4gY2FzZSBvZiBJQ0wgbXVsdGlzZWdt
ZW50ZWQgZ2FtbWEsIHRoZSBzaXplIG9mIGdhbW1hCkxVVCBpcyAyNTZLLgoKVGhpcyBwYXRjaCBj
aGFuZ2VzIHRoZSBkYXRhIHR5cGUgb2YgYm90aCBvZiB0aGVzZSBlbGVtZW50cyB0byB1MzIuCgpD
YzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IE1h
YXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBV
bWEgU2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgoKU2lnbmVkLW9mZi1ieTogU2hhc2hh
bmsgU2hhcm1hIDxzaGFzaGFuay5zaGFybWFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmggfCA0ICsrLS0KIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Rl
dmljZV9pbmZvLmgKaW5kZXggNWEyZTE3ZDYxNDZiLi42NzY3N2MzNTY3MTYgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaApAQCAtMTc5LDggKzE3OSw4IEBAIHN0cnVj
dCBpbnRlbF9kZXZpY2VfaW5mbyB7CiAJaW50IGN1cnNvcl9vZmZzZXRzW0k5MTVfTUFYX1BJUEVT
XTsKIAogCXN0cnVjdCBjb2xvcl9sdXRzIHsKLQkJdTE2IGRlZ2FtbWFfbHV0X3NpemU7Ci0JCXUx
NiBnYW1tYV9sdXRfc2l6ZTsKKwkJdTMyIGRlZ2FtbWFfbHV0X3NpemU7CisJCXUzMiBnYW1tYV9s
dXRfc2l6ZTsKIAkJdTMyIGRlZ2FtbWFfbHV0X3Rlc3RzOwogCQl1MzIgZ2FtbWFfbHV0X3Rlc3Rz
OwogCX0gY29sb3I7Ci0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
