Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4455B151B91
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 14:43:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 940726EEBF;
	Tue,  4 Feb 2020 13:43:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 402B06EEBF
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 13:43:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 05:43:03 -0800
X-IronPort-AV: E=Sophos;i="5.70,401,1574150400"; d="scan'208";a="231371242"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 05:43:01 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Feb 2020 15:42:25 +0200
Message-Id: <437b391c4852c3b444f4ada961f502ba88ca56c5.1580823606.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1580823606.git.jani.nikula@intel.com>
References: <cover.1580823606.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 6/9] drm/i915: split intel_modeset_init() to
 pre/post irq install
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U3BsaXQgaW50ZV9tb2Rlc2V0X2luaXQoKSB0byBwYXJ0cyBiZWZvcmUgYW5kIGFmdGVyIGlycSBp
bnN0YWxsLCB0bwpmYWNpbGl0YXRlIGZ1cnRoZXIgY2xlYW51cC4gVGhlIGVycm9yIHBhdGhzIGFy
ZSBhIG1lc3MsIG90aGVyd2lzZSBubwpmdW5jdGlvbmFsIGNoYW5nZXMuCgpDYzogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFu
aSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDE3ICsrKysrKysrKysrKystLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCB8ICAxICsKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgICAgICAgICAgIHwgIDYgKysrKysrCiAzIGZpbGVzIGNo
YW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwppbmRleCA2OWQ2ZmU2MjZhMTkuLjJjYWM2
ZDYxZGJhMiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMKQEAgLTE3ODU0LDExICsxNzg1NCw5IEBAIHN0YXRpYyB2b2lkIGludGVsX21vZGVfY29uZmln
X2NsZWFudXAoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJZHJtX21vZGVfY29uZmln
X2NsZWFudXAoJmk5MTUtPmRybSk7CiB9CiAKLWludCBpbnRlbF9tb2Rlc2V0X2luaXQoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCisvKiBwYXJ0ICMxOiBjYWxsIGJlZm9yZSBpcnEgaW5z
dGFsbCAqLworaW50IGludGVsX21vZGVzZXRfaW5pdF9ub2lycShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSkKIHsKLQlzdHJ1Y3QgZHJtX2RldmljZSAqZGV2ID0gJmk5MTUtPmRybTsKLQll
bnVtIHBpcGUgcGlwZTsKLQlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YzsKIAlpbnQgcmV0OwogCiAJ
aTkxNS0+bW9kZXNldF93cSA9IGFsbG9jX29yZGVyZWRfd29ya3F1ZXVlKCJpOTE1X21vZGVzZXQi
LCAwKTsKQEAgLTE3ODgzLDYgKzE3ODgxLDE3IEBAIGludCBpbnRlbF9tb2Rlc2V0X2luaXQoc3Ry
dWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAKIAlpbnRlbF9mYmNfaW5pdChpOTE1KTsKIAor
CXJldHVybiAwOworfQorCisvKiBwYXJ0ICMyOiBjYWxsIGFmdGVyIGlycSBpbnN0YWxsICovCitp
bnQgaW50ZWxfbW9kZXNldF9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQorewor
CXN0cnVjdCBkcm1fZGV2aWNlICpkZXYgPSAmaTkxNS0+ZHJtOworCWVudW0gcGlwZSBwaXBlOwor
CXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjOworCWludCByZXQ7CisKIAlpbnRlbF9pbml0X3BtKGk5
MTUpOwogCiAJaW50ZWxfcGFuZWxfc2FuaXRpemVfc3NjKGk5MTUpOwpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaAppbmRleCBmOTJlZmJiZWM4MzguLjhmOTk0
MjQ0Y2NjNyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmgKQEAgLTYxNCw2ICs2MTQsNyBAQCBpbnRlbF9mb3JtYXRfaW5mb19pc195dXZfc2VtaXBsYW5h
cihjb25zdCBzdHJ1Y3QgZHJtX2Zvcm1hdF9pbmZvICppbmZvLAogCiAvKiBtb2Rlc2V0dGluZyAq
Lwogdm9pZCBpbnRlbF9tb2Rlc2V0X2luaXRfaHcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUpOworaW50IGludGVsX21vZGVzZXRfaW5pdF9ub2lycShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSk7CiBpbnQgaW50ZWxfbW9kZXNldF9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1KTsKIHZvaWQgaW50ZWxfbW9kZXNldF9kcml2ZXJfcmVtb3ZlKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICppOTE1KTsKIHZvaWQgaW50ZWxfbW9kZXNldF9kcml2ZXJfcmVtb3ZlX25vaXJx
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCmlu
ZGV4IDEyNDM2Mzg1MDZiYy4uOTA1Mjc3NDkwMDI0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMK
QEAgLTI5Nyw4ICsyOTcsMTQgQEAgc3RhdGljIGludCBpOTE1X2RyaXZlcl9tb2Rlc2V0X3Byb2Jl
X25vaXJxKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCiAJaW50ZWxfY3NyX3Vjb2Rl
X2luaXQoaTkxNSk7CiAKKwlyZXQgPSBpbnRlbF9tb2Rlc2V0X2luaXRfbm9pcnEoaTkxNSk7CisJ
aWYgKHJldCkKKwkJZ290byBjbGVhbnVwX3ZnYV9jbGllbnQ7CisKIAlyZXR1cm4gMDsKIAorY2xl
YW51cF92Z2FfY2xpZW50OgorCWludGVsX3ZnYV91bnJlZ2lzdGVyKGk5MTUpOwogb3V0OgogCXJl
dHVybiByZXQ7CiB9Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
