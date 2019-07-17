Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A1C6BE2C
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jul 2019 16:24:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73DF26E095;
	Wed, 17 Jul 2019 14:24:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC1E26E095
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jul 2019 14:24:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jul 2019 07:24:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,274,1559545200"; d="scan'208";a="191275599"
Received: from genxfsim-desktop.iind.intel.com ([10.223.74.120])
 by fmsmga004.fm.intel.com with ESMTP; 17 Jul 2019 07:24:27 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jul 2019 19:50:18 +0530
Message-Id: <20190717142018.29857-1-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Add HDCP capability info to
 i915_display_info.
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
Cc: daniel.vetter@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VG8gaWRlbnRpZnkgdGhlIEhEQ1AgY2FwYWJpbGl0eSBvZiB0aGUgZGlzcGxheSBjb25uZWN0ZWQg
dG8gQ0kKc3lzdGVtcywgd2UgbmVlZCB0byBhZGQgdGhlIGhkY3AgY2FwYWJpbGl0eSBwcm9iaW5n
IGluIGk5MTVfZGlzcGxheV9pbmZvLgoKVGhpcyB3aWxsIGFsc28gaGVscCB0byBwb3B1bGF0ZSB0
aGUgSERDUCBjYXBhYmlsaXR5IG9mIHRoZSBDSSBzeXN0ZW1zCnRvIENJIEgvVyBsb2dzIG1haW50
YWluZWQgYXQgaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL2hhcmR3YXJlLy4KSXQgd2lsbCBm
YWNpbGl0YXRlIHRvIGRldGVybWluZSB0aGUga21zX2NvbnRlbnRfcHJvdGVjdGlvbiBiZWhhdmlv
ciBvbgphIHBhcnRpY3VsYXIgQ0kgc3lzdGVtLgoKQ2M6IGRhbmllbC52ZXR0ZXJAaW50ZWwuY29t
CkNjOiByYW1hbGluZ2FtLmNAaW50ZWwuY29tClNpZ25lZC1vZmYtYnk6IEFuc2h1bWFuIEd1cHRh
IDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9kZWJ1Z2ZzLmMgfCAyNiArKysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5n
ZWQsIDI2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCmluZGV4
IDZiODRkMDRhNmEyOC4uM2NlNzlmNTM2YThlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2RlYnVnZnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVn
ZnMuYwpAQCAtMjU2OSw2ICsyNTY5LDMwIEBAIHN0YXRpYyB2b2lkIGludGVsX3BhbmVsX2luZm8o
c3RydWN0IHNlcV9maWxlICptLCBzdHJ1Y3QgaW50ZWxfcGFuZWwgKnBhbmVsKQogCWludGVsX3Nl
cV9wcmludF9tb2RlKG0sIDIsIG1vZGUpOwogfQogCitzdGF0aWMgdm9pZCBpbnRlbF9oZGNwX2lu
Zm8oc3RydWN0IHNlcV9maWxlICptLAorCQkJICAgIHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmlu
dGVsX2Nvbm5lY3RvcikKK3sKKwlib29sIGhkY3BfY2FwLCBoZGNwMl9jYXA7CisKKwkvKiBIRENQ
IGlzIHN1cHBvcnRlZCBieSBjb25uZWN0b3IgKi8KKwlpZiAoIWludGVsX2Nvbm5lY3Rvci0+aGRj
cC5zaGltKQorCQlyZXR1cm47CisKKwlzZXFfcHJpbnRmKG0sICJcdEhEQ1AgdmVyc2lvbjogIik7
CisJaGRjcF9jYXAgPSBpbnRlbF9oZGNwX2NhcGFibGUoaW50ZWxfY29ubmVjdG9yKTsKKwloZGNw
Ml9jYXAgPSBpbnRlbF9oZGNwMl9jYXBhYmxlKGludGVsX2Nvbm5lY3Rvcik7CisKKwlpZiAoaGRj
cF9jYXApCisJCXNlcV9wdXRzKG0sICJIRENQMS40ICIpOworCWlmIChoZGNwMl9jYXApCisJCXNl
cV9wdXRzKG0sICJIRENQMi4yICIpOworCisJaWYgKCFoZGNwX2NhcCAmJiAhaGRjcDJfY2FwKQor
CQlzZXFfcHV0cyhtLCAiTm9uZSIpOworCisJc2VxX3B1dHMobSwgIlxuIik7Cit9CisKIHN0YXRp
YyB2b2lkIGludGVsX2RwX2luZm8oc3RydWN0IHNlcV9maWxlICptLAogCQkJICBzdHJ1Y3QgaW50
ZWxfY29ubmVjdG9yICppbnRlbF9jb25uZWN0b3IpCiB7CkBAIC0yNTc3LDYgKzI2MDEsNyBAQCBz
dGF0aWMgdm9pZCBpbnRlbF9kcF9pbmZvKHN0cnVjdCBzZXFfZmlsZSAqbSwKIAogCXNlcV9wcmlu
dGYobSwgIlx0RFBDRCByZXY6ICV4XG4iLCBpbnRlbF9kcC0+ZHBjZFtEUF9EUENEX1JFVl0pOwog
CXNlcV9wcmludGYobSwgIlx0YXVkaW8gc3VwcG9ydDogJXNcbiIsIHllc25vKGludGVsX2RwLT5o
YXNfYXVkaW8pKTsKKwlpbnRlbF9oZGNwX2luZm8obSwgaW50ZWxfY29ubmVjdG9yKTsKIAlpZiAo
aW50ZWxfY29ubmVjdG9yLT5iYXNlLmNvbm5lY3Rvcl90eXBlID09IERSTV9NT0RFX0NPTk5FQ1RP
Ul9lRFApCiAJCWludGVsX3BhbmVsX2luZm8obSwgJmludGVsX2Nvbm5lY3Rvci0+cGFuZWwpOwog
CkBAIC0yNjA1LDYgKzI2MzAsNyBAQCBzdGF0aWMgdm9pZCBpbnRlbF9oZG1pX2luZm8oc3RydWN0
IHNlcV9maWxlICptLAogCXN0cnVjdCBpbnRlbF9oZG1pICppbnRlbF9oZG1pID0gZW5jX3RvX2lu
dGVsX2hkbWkoJmludGVsX2VuY29kZXItPmJhc2UpOwogCiAJc2VxX3ByaW50ZihtLCAiXHRhdWRp
byBzdXBwb3J0OiAlc1xuIiwgeWVzbm8oaW50ZWxfaGRtaS0+aGFzX2F1ZGlvKSk7CisJaW50ZWxf
aGRjcF9pbmZvKG0sIGludGVsX2Nvbm5lY3Rvcik7CiB9CiAKIHN0YXRpYyB2b2lkIGludGVsX2x2
ZHNfaW5mbyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sCi0tIAoyLjIxLjAKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
