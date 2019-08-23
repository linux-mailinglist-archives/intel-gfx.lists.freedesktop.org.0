Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B309A463
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 02:46:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B7B86EB8E;
	Fri, 23 Aug 2019 00:46:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D7056EB8E
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 00:46:51 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 17:46:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,419,1559545200"; d="scan'208";a="330563429"
Received: from devpc.jf.intel.com ([10.7.197.51])
 by orsmga004.jf.intel.com with ESMTP; 22 Aug 2019 17:46:50 -0700
From: Madhumitha Tolakanahalli Pradeep
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Aug 2019 17:46:55 -0700
Message-Id: <20190823004655.28905-1-madhumitha.tolakanahalli.pradeep@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Enabling DSC on Pipe A for TGL
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
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RFNDIHdhcyBub3Qgc3VwcG9ydGVkIG9uIFBpcGUgQSBmb3IgcHJldmlvdXMgcGxhdGZvcm1zLiBU
aWdlcmxha2Ugb253YXJkcywKYWxsIHRoZSBwaXBlcyBzdXBwb3J0IERTQy4gSGVuY2UsIHRoZSBE
U0MgYW5kIEZFQyByZXN0cmljdGlvbiBvbgpQaXBlIEEgbmVlZHMgdG8gYmUgcmVtb3ZlZC4KCnYy
OiBDaGFuZ2VzIGluIHRoZSBsb2dpYyBhcm91bmQgcmVtb3ZpbmcgdGhlIHJlc3RyaWN0aW9uIGFy
b3VuZAogICAgUGlwZSBBIChNYW5hc2ksIEx1Y2FzKQoKQ2M6IE1hbmFzaSBOYXZhcmUgPG1hbmFz
aS5kLm5hdmFyZUBpbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1hZGh1bWl0aGEgVG9sYWthbmFo
YWxsaSBQcmFkZWVwIDxtYWRodW1pdGhhLnRvbGFrYW5haGFsbGkucHJhZGVlcEBpbnRlbC5jb20+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMjEgKysrKysr
KysrKysrKysrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgNCBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKaW5kZXggNDg4
NGM4N2M4ZWQ3Li5lMmM4ZmUyNzRjODQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMKQEAgLTE3MzksOCArMTczOSwxNCBAQCBzdGF0aWMgYm9vbCBpbnRlbF9kcF9zb3Vy
Y2Vfc3VwcG9ydHNfZmVjKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCiB7CiAJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7CiAKLQlyZXR1
cm4gSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSAmJgotCQlwaXBlX2NvbmZpZy0+Y3B1X3RyYW5z
Y29kZXIgIT0gVFJBTlNDT0RFUl9BOworCS8qIE9uIFRHTCwgRkVDIGlzIHN1cHBvcnRlZCBvbiBh
bGwgUGlwZXMgKi8KKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKKwkJcmV0dXJuIHRy
dWU7CisKKwlpZiAoSVNfR0VOKGRldl9wcml2LCAxMSkgJiYgcGlwZV9jb25maWctPmNwdV90cmFu
c2NvZGVyICE9IFRSQU5TQ09ERVJfQSkKKwkJcmV0dXJuIHRydWU7CisKKwlyZXR1cm4gZmFsc2U7
CiB9CiAKIHN0YXRpYyBib29sIGludGVsX2RwX3N1cHBvcnRzX2ZlYyhzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwLApAQCAtMTc1NSw4ICsxNzYxLDE1IEBAIHN0YXRpYyBib29sIGludGVsX2RwX3Nv
dXJjZV9zdXBwb3J0c19kc2Moc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIHsKIAlzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSBkcF90b19pOTE1KGludGVsX2RwKTsKIAotCXJl
dHVybiBJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwICYmCi0JCXBpcGVfY29uZmlnLT5jcHVfdHJh
bnNjb2RlciAhPSBUUkFOU0NPREVSX0E7CisJLyogT24gVEdMLCBEU0MgaXMgc3VwcG9ydGVkIG9u
IGFsbCBQaXBlcyAqLworCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEyKQorCQlyZXR1cm4g
dHJ1ZTsKKworCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDEwICYmCisJICAgIHBpcGVfY29u
ZmlnLT5jcHVfdHJhbnNjb2RlciAhPSBUUkFOU0NPREVSX0EpCisJCXJldHVybiB0cnVlOworCisJ
cmV0dXJuIGZhbHNlOwogfQogCiBzdGF0aWMgYm9vbCBpbnRlbF9kcF9zdXBwb3J0c19kc2Moc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCwKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
