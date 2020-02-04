Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C37A151B86
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 14:42:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8C126EEB7;
	Tue,  4 Feb 2020 13:42:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E90C46EEB7
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 13:42:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 05:42:38 -0800
X-IronPort-AV: E=Sophos;i="5.70,401,1574150400"; d="scan'208";a="224297202"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 05:42:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  4 Feb 2020 15:42:20 +0200
Message-Id: <25125d5c0b23f7d76f58d3493de1ec99b8fbb07b.1580823606.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1580823606.git.jani.nikula@intel.com>
References: <cover.1580823606.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 1/9] drm/i915: register vga switcheroo later,
 unregister earlier
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
PGx1a2FzQHd1bm5lci5kZT4KQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51
eC5pbnRlbC5jb20+CkFja2VkLWJ5OiBMdWthcyBXdW5uZXIgPGx1a2FzQHd1bm5lci5kZT4KU2ln
bmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIHwgMTkgKysrKysrKysrLS0tLS0tLS0tLQogMSBm
aWxlIGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmMKaW5kZXggNTE2NTM2MjM0ZTk3Li40Yzc1NDM3ZjMzYWYgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuYwpAQCAtMjkyLDEyICsyOTIsNiBAQCBzdGF0aWMgaW50IGk5MTVfZHJpdmVy
X21vZGVzZXRfcHJvYmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJaWYgKHJldCkK
IAkJZ290byBvdXQ7CiAKLQlpbnRlbF9yZWdpc3Rlcl9kc21faGFuZGxlcigpOwotCi0JcmV0ID0g
aTkxNV9zd2l0Y2hlcm9vX3JlZ2lzdGVyKGk5MTUpOwotCWlmIChyZXQpCi0JCWdvdG8gY2xlYW51
cF92Z2FfY2xpZW50OwotCiAJaW50ZWxfcG93ZXJfZG9tYWluc19pbml0X2h3KGk5MTUsIGZhbHNl
KTsKIAogCWludGVsX2Nzcl91Y29kZV9pbml0KGk5MTUpOwpAQCAtMzQzLDggKzMzNyw2IEBAIHN0
YXRpYyBpbnQgaTkxNV9kcml2ZXJfbW9kZXNldF9wcm9iZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSkKIGNsZWFudXBfY3NyOgogCWludGVsX2Nzcl91Y29kZV9maW5pKGk5MTUpOwogCWlu
dGVsX3Bvd2VyX2RvbWFpbnNfZHJpdmVyX3JlbW92ZShpOTE1KTsKLQlpOTE1X3N3aXRjaGVyb29f
dW5yZWdpc3RlcihpOTE1KTsKLWNsZWFudXBfdmdhX2NsaWVudDoKIAlpbnRlbF92Z2FfdW5yZWdp
c3RlcihpOTE1KTsKIG91dDoKIAlyZXR1cm4gcmV0OwpAQCAtMzU4LDggKzM1MCw2IEBAIHN0YXRp
YyB2b2lkIGk5MTVfZHJpdmVyX21vZGVzZXRfcmVtb3ZlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICppOTE1KQogCiAJaW50ZWxfYmlvc19kcml2ZXJfcmVtb3ZlKGk5MTUpOwogCi0JaTkxNV9zd2l0
Y2hlcm9vX3VucmVnaXN0ZXIoaTkxNSk7Ci0KIAlpbnRlbF92Z2FfdW5yZWdpc3RlcihpOTE1KTsK
IAogCWludGVsX2Nzcl91Y29kZV9maW5pKGk5MTUpOwpAQCAtMTM2Niw2ICsxMzU2LDExIEBAIHN0
YXRpYyB2b2lkIGk5MTVfZHJpdmVyX3JlZ2lzdGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdikKIAogCWludGVsX3Bvd2VyX2RvbWFpbnNfZW5hYmxlKGRldl9wcml2KTsKIAlpbnRl
bF9ydW50aW1lX3BtX2VuYWJsZSgmZGV2X3ByaXYtPnJ1bnRpbWVfcG0pOworCisJaW50ZWxfcmVn
aXN0ZXJfZHNtX2hhbmRsZXIoKTsKKworCWlmIChpOTE1X3N3aXRjaGVyb29fcmVnaXN0ZXIoZGV2
X3ByaXYpKQorCQlkcm1fZXJyKCZkZXZfcHJpdi0+ZHJtLCAiRmFpbGVkIHRvIHJlZ2lzdGVyIHZn
YSBzd2l0Y2hlcm9vIVxuIik7CiB9CiAKIC8qKgpAQCAtMTM3NCw2ICsxMzY5LDEwIEBAIHN0YXRp
YyB2b2lkIGk5MTVfZHJpdmVyX3JlZ2lzdGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdikKICAqLwogc3RhdGljIHZvaWQgaTkxNV9kcml2ZXJfdW5yZWdpc3RlcihzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiB7CisJaTkxNV9zd2l0Y2hlcm9vX3VucmVnaXN0ZXIo
ZGV2X3ByaXYpOworCisJaW50ZWxfdW5yZWdpc3Rlcl9kc21faGFuZGxlcigpOworCiAJaW50ZWxf
cnVudGltZV9wbV9kaXNhYmxlKCZkZXZfcHJpdi0+cnVudGltZV9wbSk7CiAJaW50ZWxfcG93ZXJf
ZG9tYWluc19kaXNhYmxlKGRldl9wcml2KTsKIAotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
