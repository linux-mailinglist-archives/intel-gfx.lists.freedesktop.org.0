Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C6EE7CD01A
	for <lists+intel-gfx@lfdr.de>; Sun,  6 Oct 2019 11:46:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E74126E02D;
	Sun,  6 Oct 2019 09:46:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3948F6E02D
 for <intel-gfx@lists.freedesktop.org>; Sun,  6 Oct 2019 09:46:15 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Oct 2019 02:46:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,263,1566889200"; d="scan'208";a="206184382"
Received: from mwesterb-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.38.94])
 by fmsmga001.fm.intel.com with ESMTP; 06 Oct 2019 02:46:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  6 Oct 2019 12:46:43 +0300
Message-Id: <20191006094643.28824-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH RESEND] drm/i915: register vga switcheroo later,
 unregister earlier
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TW92ZSB2Z2Egc3dpdGNoZXJvbyBhbmQgZHNtIGhhbmRsZXIgcmVnaXN0ZXIgbGF0ZXIgaW4KaTkx
NV9kcml2ZXJfcmVnaXN0ZXIoKSwgYW5kIHVucmVnaXN0ZXIgaW4gaTkxNV9kcml2ZXJfdW5yZWdp
c3RlcigpLiBUaGUKZHNtIGhhbmRsZXIgdW5yZWdpc3RlciBpcyBhIG5vcCwgYW5kIGlzIG9ubHkg
YWRkZWQgZm9yIGNvbXBsZXRlbmVzcy4KCk15IHVuc3Vic3RhbnRpYXRlZCBzdXNwaWNpb24gaXMg
dGhhdCB0aGUgdmdhIHN3aXRjaGVyb28gc3RhdGUgY2hhbmdlCndvdWxkIG5vdCB3b3JrIGFzIGVh
cmx5IGFzIHdlIHJlZ2lzdGVyIHRoZSBob29rcyBjdXJyZW50bHkuIEluIGFueSBjYXNlCmV4cG9z
aW5nIHRoZSBpbnRlcmZhY2VzIHRvIHRoZSB3b3JsZCBvbmx5IGFmdGVyIHdlJ3ZlIGdvdCBldmVy
eXRoaW5nIHNldAp1cCBzZWVtcyBwcnVkZW50LgoKQWxzbyByZXBsYWNlIHRoZSBlcnJvciBoYW5k
bGluZyBpbiB2Z2Egc3dpdGNoZXJvbyByZWdpc3RlciB3aXRoIGEgc2ltcGxlCmVycm9yIG1lc3Nh
Z2UuIFRoaXMgaXMgZG9uZSBhdCB0aGUgc2FtZSB0aW1lIGR1ZSB0byBsYWNrIG9mIGVycm9yCnBy
b3BhZ2F0aW9uIGZyb20gaTkxNV9kcml2ZXJfcmVnaXN0ZXIoKS4KCkNjOiBMdWthcyBXdW5uZXIg
PGx1a2FzQHd1bm5lci5kZT4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxh
QGludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIHwgMTkgKysr
KysrKysrLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMTAgZGVs
ZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKaW5kZXggOTM1NDkyNDU3NmM0Li42M2Q0
N2Q2OTkzMDUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwpAQCAtMjg5LDEyICsyODksNiBAQCBz
dGF0aWMgaW50IGk5MTVfZHJpdmVyX21vZGVzZXRfcHJvYmUoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUpCiAJaWYgKHJldCkKIAkJZ290byBvdXQ7CiAKLQlpbnRlbF9yZWdpc3Rlcl9kc21f
aGFuZGxlcigpOwotCi0JcmV0ID0gaTkxNV9zd2l0Y2hlcm9vX3JlZ2lzdGVyKGk5MTUpOwotCWlm
IChyZXQpCi0JCWdvdG8gY2xlYW51cF92Z2FfY2xpZW50OwotCiAJLyogbXVzdCBoYXBwZW4gYmVm
b3JlIGludGVsX3Bvd2VyX2RvbWFpbnNfaW5pdF9odygpIG9uIFZMVi9DSFYgKi8KIAlpbnRlbF91
cGRhdGVfcmF3Y2xrKGk5MTUpOwogCkBAIC0zNDMsOCArMzM3LDYgQEAgc3RhdGljIGludCBpOTE1
X2RyaXZlcl9tb2Rlc2V0X3Byb2JlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogY2xl
YW51cF9jc3I6CiAJaW50ZWxfY3NyX3Vjb2RlX2ZpbmkoaTkxNSk7CiAJaW50ZWxfcG93ZXJfZG9t
YWluc19kcml2ZXJfcmVtb3ZlKGk5MTUpOwotCWk5MTVfc3dpdGNoZXJvb191bnJlZ2lzdGVyKGk5
MTUpOwotY2xlYW51cF92Z2FfY2xpZW50OgogCWludGVsX3ZnYV91bnJlZ2lzdGVyKGk5MTUpOwog
b3V0OgogCXJldHVybiByZXQ7CkBAIC0zNTYsOCArMzQ4LDYgQEAgc3RhdGljIHZvaWQgaTkxNV9k
cml2ZXJfbW9kZXNldF9yZW1vdmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAKIAlp
bnRlbF9iaW9zX2RyaXZlcl9yZW1vdmUoaTkxNSk7CiAKLQlpOTE1X3N3aXRjaGVyb29fdW5yZWdp
c3RlcihpOTE1KTsKLQogCWludGVsX3ZnYV91bnJlZ2lzdGVyKGk5MTUpOwogCiAJaW50ZWxfY3Ny
X3Vjb2RlX2ZpbmkoaTkxNSk7CkBAIC0xMzQ0LDYgKzEzMzQsMTEgQEAgc3RhdGljIHZvaWQgaTkx
NV9kcml2ZXJfcmVnaXN0ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQogCiAJ
aW50ZWxfcG93ZXJfZG9tYWluc19lbmFibGUoZGV2X3ByaXYpOwogCWludGVsX3J1bnRpbWVfcG1f
ZW5hYmxlKCZkZXZfcHJpdi0+cnVudGltZV9wbSk7CisKKwlpbnRlbF9yZWdpc3Rlcl9kc21faGFu
ZGxlcigpOworCisJaWYgKGk5MTVfc3dpdGNoZXJvb19yZWdpc3RlcihkZXZfcHJpdikpCisJCURS
TV9FUlJPUigiRmFpbGVkIHRvIHJlZ2lzdGVyIHZnYSBzd2l0Y2hlcm9vIVxuIik7CiB9CiAKIC8q
KgpAQCAtMTM1Miw2ICsxMzQ3LDEwIEBAIHN0YXRpYyB2b2lkIGk5MTVfZHJpdmVyX3JlZ2lzdGVy
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKICAqLwogc3RhdGljIHZvaWQgaTkx
NV9kcml2ZXJfdW5yZWdpc3RlcihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7
CisJaTkxNV9zd2l0Y2hlcm9vX3VucmVnaXN0ZXIoZGV2X3ByaXYpOworCisJaW50ZWxfdW5yZWdp
c3Rlcl9kc21faGFuZGxlcigpOworCiAJaW50ZWxfcnVudGltZV9wbV9kaXNhYmxlKCZkZXZfcHJp
di0+cnVudGltZV9wbSk7CiAJaW50ZWxfcG93ZXJfZG9tYWluc19kaXNhYmxlKGRldl9wcml2KTsK
IAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
