Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F33A6285E
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2019 20:32:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 615BB6E034;
	Mon,  8 Jul 2019 18:32:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DCA66E034
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2019 18:32:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Jul 2019 11:32:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,466,1557212400"; d="scan'208";a="185731059"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.154])
 by fmsmga001.fm.intel.com with ESMTP; 08 Jul 2019 11:32:08 -0700
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Daniel Vetter <daniel@ffwll.ch>
Date: Mon,  8 Jul 2019 17:03:19 +0530
Message-Id: <20190708113319.2517-1-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/hdcp: debug logs for sink related
 failures
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

QWRkaW5nIGZldyBtb3JlIGRlYnVnIGxvZ3MgdG8gaWRlbnRpZnkgdGhlIHNpbmsgc3BlY2lmaWMg
SERDUCBmYWlsdXJlcwphbG9uZyB3aXRoIGEgb3V0IG9mIG1lbSBmYWlsdXJlLgoKdjI6CiAgQ2Fw
dHVyaW5nIHRoZSBCdWcgYW5kIGEtYgoKQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3Rv
cC5vcmcvc2hvd19idWcuY2dpP2lkPTExMDk5MQpTaWduZWQtb2ZmLWJ5OiBSYW1hbGluZ2FtIEMg
PHJhbWFsaW5nYW0uY0BpbnRlbC5jb20+CmNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwu
Y2g+CkFja2VkLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWxAZmZ3bGwuY2g+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMgfCAxMiArKysrKysrKystLS0KIDEg
ZmlsZSBjaGFuZ2VkLCA5IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuYwppbmRleCBiYzNhOTRkNDkxYzQuLmE3ODEz
OWY5ZTg0NyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9o
ZGNwLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMKQEAg
LTUyMywxMiArNTIzLDE2IEBAIGludCBpbnRlbF9oZGNwX2F1dGhfZG93bnN0cmVhbShzdHJ1Y3Qg
aW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpCiAJICogYXV0aGVudGljYXRpb24uCiAJICovCiAJ
bnVtX2Rvd25zdHJlYW0gPSBEUk1fSERDUF9OVU1fRE9XTlNUUkVBTShic3RhdHVzWzBdKTsKLQlp
ZiAobnVtX2Rvd25zdHJlYW0gPT0gMCkKKwlpZiAobnVtX2Rvd25zdHJlYW0gPT0gMCkgeworCQlE
Uk1fREVCVUdfS01TKCJSZXBlYXRlciB3aXRoIHplcm8gZG93bnN0cmVhbSBkZXZpY2VzXG4iKTsK
IAkJcmV0dXJuIC1FSU5WQUw7CisJfQogCiAJa3N2X2ZpZm8gPSBrY2FsbG9jKERSTV9IRENQX0tT
Vl9MRU4sIG51bV9kb3duc3RyZWFtLCBHRlBfS0VSTkVMKTsKLQlpZiAoIWtzdl9maWZvKQorCWlm
ICgha3N2X2ZpZm8pIHsKKwkJRFJNX0RFQlVHX0tNUygiT3V0IG9mIG1lbToga3N2X2ZpZm9cbiIp
OwogCQlyZXR1cm4gLUVOT01FTTsKKwl9CiAKIAlyZXQgPSBzaGltLT5yZWFkX2tzdl9maWZvKGlu
dGVsX2RpZ19wb3J0LCBudW1fZG93bnN0cmVhbSwga3N2X2ZpZm8pOwogCWlmIChyZXQpCkBAIC0x
MjA2LDggKzEyMTAsMTAgQEAgc3RhdGljIGludCBoZGNwMl9hdXRoZW50aWNhdGlvbl9rZXlfZXhj
aGFuZ2Uoc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQogCWlmIChyZXQgPCAwKQog
CQlyZXR1cm4gcmV0OwogCi0JaWYgKG1zZ3Muc2VuZF9jZXJ0LnJ4X2NhcHNbMF0gIT0gSERDUF8y
XzJfUlhfQ0FQU19WRVJTSU9OX1ZBTCkKKwlpZiAobXNncy5zZW5kX2NlcnQucnhfY2Fwc1swXSAh
PSBIRENQXzJfMl9SWF9DQVBTX1ZFUlNJT05fVkFMKSB7CisJCURSTV9ERUJVR19LTVMoImNlcnQu
cnhfY2FwcyBkb250IGNsYWltIEhEQ1AyLjJcbiIpOwogCQlyZXR1cm4gLUVJTlZBTDsKKwl9CiAK
IAloZGNwLT5pc19yZXBlYXRlciA9IEhEQ1BfMl8yX1JYX1JFUEVBVEVSKG1zZ3Muc2VuZF9jZXJ0
LnJ4X2NhcHNbMl0pOwogCi0tIAoyLjE5LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
