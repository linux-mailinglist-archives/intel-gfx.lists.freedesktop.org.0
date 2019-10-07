Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B42FCE6CA
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 17:10:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 562EF6E5F2;
	Mon,  7 Oct 2019 15:10:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BE1B6E5F2
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 15:10:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 08:09:59 -0700
X-IronPort-AV: E=Sophos;i="5.67,268,1566889200"; d="scan'208";a="183455706"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 08:09:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Oct 2019 18:09:28 +0300
Message-Id: <78db9ee138d961e5dee01813269aecfa61bc1d66.1570460714.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1570460714.git.jani.nikula@intel.com>
References: <cover.1570460714.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH 03/11] drm/i915: keep power domains init/remove
 calls at the same level
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

TW92ZSBpbnRlbF9wb3dlcl9kb21haW5zX2luaXRfaHcoKSBjYWxsIG9uZSBsZXZlbCBoaWdoZXIs
IHRvIGJlIG9uIHRoZQpzYW1lIGxldmVsIGFzIGFsbCB0aGUgb3RoZXIgaW50ZWxfcG93ZXJfZG9t
YWluc18qKCkgY2FsbHMgaW4gdGhlCnByb2JlL3JlbW92ZSBwYXRocy4KClRoaXMgYWxzbyBtb3Zl
cyB0aGUgcG93ZXIgZG9tYWluIGh3IGluaXQgZWFybGllciBpbiB0aGUgc2VxdWVuY2UsIGFsb25n
CndpdGggdGhlIGRlcGVuZGVudCBpbnRlbF91cGRhdGVfcmF3Y2xrKCkgY2FsbC4gQXMgZmFyIGFz
IEkgY2FuIHRlbGwKdGhlcmUgc2hvdWxkIG5vdCBiZSBhbnkgb3RoZXIgZGVwZW5kZW5jaWVzIG9u
IHRoZSBpbml0YWxpemF0aW9uIHRoYXQncwpub3cgZG9uZSBhZnRlciB0aGVzZSBjYWxscyAodmJs
YW5rIGluaXQsIGJpb3MgaW5pdCwgdmdhIHJlZ2lzdGVyKS4KCkNjOiBJbXJlIERlYWsgPGltcmUu
ZGVha0BpbnRlbC5jb20+CkNjOiBWaWxsZSBTeXJqYWxhIDx2aWxsZS5zeXJqYWxhQGxpbnV4Lmlu
dGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNv
bT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jIHwgMTIgKysrKysrLS0tLS0t
CiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2Rydi5jCmluZGV4IDBhYmZlY2UyMGM1Ny4uMTZhYzVlODhlMWVjIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2Rydi5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZHJ2LmMKQEAgLTI4OSwxMSArMjg5LDYgQEAgc3RhdGljIGludCBpOTE1X2Ry
aXZlcl9tb2Rlc2V0X3Byb2JlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCWlmIChy
ZXQpCiAJCWdvdG8gb3V0OwogCi0JLyogbXVzdCBoYXBwZW4gYmVmb3JlIGludGVsX3Bvd2VyX2Rv
bWFpbnNfaW5pdF9odygpIG9uIFZMVi9DSFYgKi8KLQlpbnRlbF91cGRhdGVfcmF3Y2xrKGk5MTUp
OwotCi0JaW50ZWxfcG93ZXJfZG9tYWluc19pbml0X2h3KGk5MTUsIGZhbHNlKTsKLQogCWludGVs
X2Nzcl91Y29kZV9pbml0KGk5MTUpOwogCiAJcmV0ID0gaW50ZWxfaXJxX2luc3RhbGwoaTkxNSk7
CkBAIC0zMzYsNyArMzMxLDYgQEAgc3RhdGljIGludCBpOTE1X2RyaXZlcl9tb2Rlc2V0X3Byb2Jl
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQogCWludGVsX2lycV91bmluc3RhbGwoaTkx
NSk7CiBjbGVhbnVwX2NzcjoKIAlpbnRlbF9jc3JfdWNvZGVfZmluaShpOTE1KTsKLQlpbnRlbF9w
b3dlcl9kb21haW5zX2RyaXZlcl9yZW1vdmUoaTkxNSk7CiAJaW50ZWxfdmdhX3VucmVnaXN0ZXIo
aTkxNSk7CiBvdXQ6CiAJcmV0dXJuIHJldDsKQEAgLTE0OTMsNiArMTQ4NywxMSBAQCBpbnQgaTkx
NV9kcml2ZXJfcHJvYmUoc3RydWN0IHBjaV9kZXYgKnBkZXYsIGNvbnN0IHN0cnVjdCBwY2lfZGV2
aWNlX2lkICplbnQpCiAJaWYgKHJldCA8IDApCiAJCWdvdG8gb3V0X2NsZWFudXBfbW1pbzsKIAor
CS8qIG11c3QgaGFwcGVuIGJlZm9yZSBpbnRlbF9wb3dlcl9kb21haW5zX2luaXRfaHcoKSBvbiBW
TFYvQ0hWICovCisJaW50ZWxfdXBkYXRlX3Jhd2NsayhpOTE1KTsKKworCWludGVsX3Bvd2VyX2Rv
bWFpbnNfaW5pdF9odyhpOTE1LCBmYWxzZSk7CisKIAlyZXQgPSBpOTE1X2RyaXZlcl9tb2Rlc2V0
X3Byb2JlKGk5MTUpOwogCWlmIChyZXQgPCAwKQogCQlnb3RvIG91dF9jbGVhbnVwX2h3OwpAQCAt
MTUwNiw2ICsxNTA1LDcgQEAgaW50IGk5MTVfZHJpdmVyX3Byb2JlKHN0cnVjdCBwY2lfZGV2ICpw
ZGV2LCBjb25zdCBzdHJ1Y3QgcGNpX2RldmljZV9pZCAqZW50KQogCXJldHVybiAwOwogCiBvdXRf
Y2xlYW51cF9odzoKKwlpbnRlbF9wb3dlcl9kb21haW5zX2RyaXZlcl9yZW1vdmUoaTkxNSk7CiAJ
aTkxNV9kcml2ZXJfaHdfcmVtb3ZlKGk5MTUpOwogCWk5MTVfZ2d0dF9kcml2ZXJfcmVsZWFzZShp
OTE1KTsKIG91dF9jbGVhbnVwX21taW86Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
