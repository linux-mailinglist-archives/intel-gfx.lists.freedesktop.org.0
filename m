Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 209FACE6C7
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 17:09:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D84B6E118;
	Mon,  7 Oct 2019 15:09:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B23D6E118
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 15:09:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 08:09:50 -0700
X-IronPort-AV: E=Sophos;i="5.67,268,1566889200"; d="scan'208";a="183455652"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 08:09:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Oct 2019 18:09:26 +0300
Message-Id: <1e479d6d51b0374eec1dc103029bdcfff00c3db6.1570460714.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1570460714.git.jani.nikula@intel.com>
References: <cover.1570460714.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 01/11] drm/i915: register vga switcheroo later,
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
PGx1a2FzQHd1bm5lci5kZT4KQWNrZWQtYnk6IEx1a2FzIFd1bm5lciA8bHVrYXNAd3VubmVyLmRl
PgpTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgfCAxOSArKysrKysrKystLS0tLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAxMCBkZWxldGlvbnMoLSkKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuYwppbmRleCA5MzU0OTI0NTc2YzQuLjYzZDQ3ZDY5OTMwNSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2Rydi5jCkBAIC0yODksMTIgKzI4OSw2IEBAIHN0YXRpYyBpbnQgaTkxNV9k
cml2ZXJfbW9kZXNldF9wcm9iZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAlpZiAo
cmV0KQogCQlnb3RvIG91dDsKIAotCWludGVsX3JlZ2lzdGVyX2RzbV9oYW5kbGVyKCk7Ci0KLQly
ZXQgPSBpOTE1X3N3aXRjaGVyb29fcmVnaXN0ZXIoaTkxNSk7Ci0JaWYgKHJldCkKLQkJZ290byBj
bGVhbnVwX3ZnYV9jbGllbnQ7Ci0KIAkvKiBtdXN0IGhhcHBlbiBiZWZvcmUgaW50ZWxfcG93ZXJf
ZG9tYWluc19pbml0X2h3KCkgb24gVkxWL0NIViAqLwogCWludGVsX3VwZGF0ZV9yYXdjbGsoaTkx
NSk7CiAKQEAgLTM0Myw4ICszMzcsNiBAQCBzdGF0aWMgaW50IGk5MTVfZHJpdmVyX21vZGVzZXRf
cHJvYmUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiBjbGVhbnVwX2NzcjoKIAlpbnRl
bF9jc3JfdWNvZGVfZmluaShpOTE1KTsKIAlpbnRlbF9wb3dlcl9kb21haW5zX2RyaXZlcl9yZW1v
dmUoaTkxNSk7Ci0JaTkxNV9zd2l0Y2hlcm9vX3VucmVnaXN0ZXIoaTkxNSk7Ci1jbGVhbnVwX3Zn
YV9jbGllbnQ6CiAJaW50ZWxfdmdhX3VucmVnaXN0ZXIoaTkxNSk7CiBvdXQ6CiAJcmV0dXJuIHJl
dDsKQEAgLTM1Niw4ICszNDgsNiBAQCBzdGF0aWMgdm9pZCBpOTE1X2RyaXZlcl9tb2Rlc2V0X3Jl
bW92ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAogCWludGVsX2Jpb3NfZHJpdmVy
X3JlbW92ZShpOTE1KTsKIAotCWk5MTVfc3dpdGNoZXJvb191bnJlZ2lzdGVyKGk5MTUpOwotCiAJ
aW50ZWxfdmdhX3VucmVnaXN0ZXIoaTkxNSk7CiAKIAlpbnRlbF9jc3JfdWNvZGVfZmluaShpOTE1
KTsKQEAgLTEzNDQsNiArMTMzNCwxMSBAQCBzdGF0aWMgdm9pZCBpOTE1X2RyaXZlcl9yZWdpc3Rl
cihzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAKIAlpbnRlbF9wb3dlcl9kb21h
aW5zX2VuYWJsZShkZXZfcHJpdik7CiAJaW50ZWxfcnVudGltZV9wbV9lbmFibGUoJmRldl9wcml2
LT5ydW50aW1lX3BtKTsKKworCWludGVsX3JlZ2lzdGVyX2RzbV9oYW5kbGVyKCk7CisKKwlpZiAo
aTkxNV9zd2l0Y2hlcm9vX3JlZ2lzdGVyKGRldl9wcml2KSkKKwkJRFJNX0VSUk9SKCJGYWlsZWQg
dG8gcmVnaXN0ZXIgdmdhIHN3aXRjaGVyb28hXG4iKTsKIH0KIAogLyoqCkBAIC0xMzUyLDYgKzEz
NDcsMTAgQEAgc3RhdGljIHZvaWQgaTkxNV9kcml2ZXJfcmVnaXN0ZXIoc3RydWN0IGRybV9pOTE1
X3ByaXZhdGUgKmRldl9wcml2KQogICovCiBzdGF0aWMgdm9pZCBpOTE1X2RyaXZlcl91bnJlZ2lz
dGVyKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKKwlpOTE1X3N3aXRjaGVy
b29fdW5yZWdpc3RlcihkZXZfcHJpdik7CisKKwlpbnRlbF91bnJlZ2lzdGVyX2RzbV9oYW5kbGVy
KCk7CisKIAlpbnRlbF9ydW50aW1lX3BtX2Rpc2FibGUoJmRldl9wcml2LT5ydW50aW1lX3BtKTsK
IAlpbnRlbF9wb3dlcl9kb21haW5zX2Rpc2FibGUoZGV2X3ByaXYpOwogCi0tIAoyLjIwLjEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
