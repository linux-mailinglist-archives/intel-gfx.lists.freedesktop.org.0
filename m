Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B48358EAE
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Apr 2021 22:46:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 853066E217;
	Thu,  8 Apr 2021 20:46:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DAF06E323
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Apr 2021 20:46:50 +0000 (UTC)
IronPort-SDR: eIKGdPUTt+zVENw06mchdmARq4JpDICZFkqteSP22+dFB62HZN/mJ07+53UyexNSSS8cNk4DYA
 6z1TsrdBQ2jw==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="193744446"
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="193744446"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 13:46:49 -0700
IronPort-SDR: SNX3fkdxqdMo58f3Gx+uTWKStI+ci0mfQASlGuFCfxa93pRdCJI8X/UHSDgqTNUqaeK25eAwKC
 wtXMbNoc+J3g==
X-IronPort-AV: E=Sophos;i="5.82,207,1613462400"; d="scan'208";a="530741126"
Received: from muweizha-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.254.2.85])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2021 13:46:49 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Apr 2021 13:49:17 -0700
Message-Id: <20210408204917.254272-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210408204917.254272-1-jose.souza@intel.com>
References: <20210408204917.254272-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] Revert "drm/i915/tgl/psr: Fix glitches when
 doing frontbuffer modifications"
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyByZXZlcnRzIGNvbW1pdCA3MWMxYTQ5OTgzMjA5NjJmN2I4MzYyYjJjNWVlMzY2MTBkNDll
OGZiLgoKVGhlIHByb3BlciBmaXggaXMgV2FfMTQwMTM3MjM2MjIsIHNvIG5vdyB3ZSBjYW4gcmV2
ZXJ0IHRoaXMgV0EgYW5kCmdldCBiYWNrIHNvbWUgcG93ZXIgc2F2aW5ncy4KCkNjOiBHd2FuLWd5
ZW9uZyBNdW4gPGd3YW4tZ3llb25nLm11bkBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IEpvc8Op
IFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAxNiArLS0tLS0tLS0tLS0tLS0tCiAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDE1IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCmluZGV4IDMyZDNkNTYyNTljMi4uNmE2MWZlNDI2
ODZlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
CisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKQEAgLTExNjEs
MjEgKzExNjEsNyBAQCBzdGF0aWMgdm9pZCBwc3JfZm9yY2VfaHdfdHJhY2tpbmdfZXhpdChzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwKQogewogCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZf
cHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOwogCi0JaWYgKElTX1RJR0VSTEFLRShkZXZfcHJp
dikpCi0JCS8qCi0JCSAqIFdyaXRlcyB0byBDVVJTVVJGTElWRSBpbiBUR0wgYXJlIGNhdXNpbmcg
SU9NTVUgZXJyb3JzIGFuZAotCQkgKiB2aXN1YWwgZ2xpdGNoZXMgdGhhdCBhcmUgb2Z0ZW4gcmVw
cm9kdWNlZCB3aGVuIGV4ZWN1dGluZwotCQkgKiBDUFUgaW50ZW5zaXZlIHdvcmtsb2FkcyB3aGls
ZSBhIGVEUCA0SyBwYW5lbCBpcyBhdHRhY2hlZC4KLQkJICoKLQkJICogTWFudWFsbHkgZXhpdGlu
ZyBQU1IgY2F1c2VzIHRoZSBmcm9udGJ1ZmZlciB0byBiZSB1cGRhdGVkCi0JCSAqIHdpdGhvdXQg
Z2xpdGNoZXMgYW5kIHRoZSBJT01NVSBlcnJvcnMgYXJlIGFsc28gZ29uZSBidXQKLQkJICogdGhp
cyBjb21lcyBhdCB0aGUgY29zdCBvZiBsZXNzIHRpbWUgd2l0aCBQU1IgYWN0aXZlLgotCQkgKgot
CQkgKiBTbyB1c2luZyB0aGlzIHdvcmthcm91bmQgdW50aWwgdGhpcyBpc3N1ZSBpcyByb290IGNh
dXNlZAotCQkgKiBhbmQgYSBiZXR0ZXIgZml4IGlzIGZvdW5kLgotCQkgKi8KLQkJaW50ZWxfcHNy
X2V4aXQoaW50ZWxfZHApOwotCWVsc2UgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSA5KQor
CWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gOSkKIAkJLyoKIAkJICogRGlzcGxheSBXQSAj
MDg4NDogc2tsKwogCQkgKiBUaGlzIGRvY3VtZW50ZWQgV0EgZm9yIGJ4dCBjYW4gYmUgc2FmZWx5
IGFwcGxpZWQKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
