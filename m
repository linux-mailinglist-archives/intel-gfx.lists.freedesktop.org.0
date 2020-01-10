Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5137C137610
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2020 19:32:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2B6F6EA88;
	Fri, 10 Jan 2020 18:32:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B27C6EA87
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2020 18:32:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jan 2020 10:32:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,418,1571727600"; d="scan'208";a="304247691"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 10 Jan 2020 10:32:46 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 10 Jan 2020 20:32:46 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jan 2020 20:32:28 +0200
Message-Id: <20200110183228.8199-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200110183228.8199-1-ville.syrjala@linux.intel.com>
References: <20200110183228.8199-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/6] drm/i915: Cleanup properly if the implicit
 fence setup fails
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
J3ZlIGFscmVhZHkgcGlubmVkIHRoZSB2bWEgYW5kIGZlbmNlIGJ5IHRoZSB0aW1lIHdlIHRyeSB0
bwpkZWFsIHdpdGggaW1wbGljaXQgZmVuY2luZy4gUHJvcGVybHkgdW5waW4gdGhlIHZtYSBhbmQg
ZmVuY2UKaWYgdGhlIGZlbmNlIHNldHVwIGZhaWxzIGluc3RlYWQgb2YganVzdCBiYWlsaW5nIHN0
cmFpZ2h0IG91dApmcm9tIC5wcmVwYXJlX2ZiKCkuIEFzIGNhbiBiZSBleHBlY3RlZApkcm1fYXRv
bWljX2hlbHBlcl9wcmVwYXJlX3BsYW5lcygpIHdpbGwgbm90IGNhbGwgLmNsZWFudXBfZmIoKQpm
b3IgdGhlIHBsYW5lIHdob3NlIC5wcmVwYXJlX2ZiKCkgZmFpbGVkIHNvIHdlIG11c3QgZG8gdGhl
CmNsZWFudXAgb3Vyc2VsZi4KCnYyOiBSZWJhc2UKClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA3ICsrKysrKy0KIDEgZmlsZSBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCmluZGV4IGY3OWE2Mzc2YmJmMC4uOTZlNzEyMDRiODZm
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwpAQCAt
MTU4MjMsNyArMTU4MjMsNyBAQCBpbnRlbF9wcmVwYXJlX3BsYW5lX2ZiKHN0cnVjdCBkcm1fcGxh
bmUgKl9wbGFuZSwKIAkJCQkJCSAgICAgIGZhbHNlLCBJOTE1X0ZFTkNFX1RJTUVPVVQsCiAJCQkJ
CQkgICAgICBHRlBfS0VSTkVMKTsKIAkJaWYgKHJldCA8IDApCi0JCQlyZXR1cm4gcmV0OworCQkJ
Z290byB1bnBpbl9mYjsKIAogCQlmZW5jZSA9IGRtYV9yZXN2X2dldF9leGNsX3JjdShvYmotPmJh
c2UucmVzdik7CiAJCWlmIChmZW5jZSkgewpAQCAtMTU4NTAsNiArMTU4NTAsMTEgQEAgaW50ZWxf
cHJlcGFyZV9wbGFuZV9mYihzdHJ1Y3QgZHJtX3BsYW5lICpfcGxhbmUsCiAJfQogCiAJcmV0dXJu
IDA7CisKK3VucGluX2ZiOgorCWludGVsX3BsYW5lX3VucGluX2ZiKG5ld19wbGFuZV9zdGF0ZSk7
CisKKwlyZXR1cm4gcmV0OwogfQogCiAvKioKLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
